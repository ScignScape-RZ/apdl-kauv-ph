
//          Copyright Nathaniel Christen 2017.
// Distributed under the Boost Software License, Version 1.0.
//    (See accompanying file LICENSE_1_0.txt or copy at
//          http://www.boost.org/LICENSE_1_0.txt)


#include <QApplication>
#include <QGraphicsView>

#include <QList>
#include <QDebug>

#include <QMessageBox>

#include <QMenu>

#include <QGraphicsItem>

#include <QScreen>
#include <QTimer>
#include <QTime>

#include <QImage>

#include <QApplication>
#include <QDesktopWidget>

#include <QFileDialog>

#include "ScignStage-audio/scignstage-audio-dialog.h"

#include "ScignStage-audio/xpdf-bridge.h"


#include "dsmain/assessment-scores.h"
#include "dsmain/test-series-folder.h"
#include "dsmain/test-series.h"

#include "kauvir-code-model/kauvir-code-model.h"

#include "PhaonLib/phaon-runner.h"

#include "kcm-direct-eval/kcm-direct-eval.h"
#include "PhaonLib/phaon-symbol-scope.h"
#include "test-functions.h"

#include "kans.h"

#include <QThread>


USING_KANS(KCM)
#ifdef USING_KPH
USING_KANS(Phaon)
USING_KANS(PhaonLib)
#endif
USING_QSNS(ScignStage)



int main(int argc, char **argv)
{
 QApplication qapp(argc, argv);

 Test_Series_Folder tsf(SAMPLES_FOLDER);

 Test_Series ts;
 tsf.read_files(ts);

#ifdef USING_XPDF
 XPDF_Bridge xpdf_bridge(argc, argv);
 ScignStage_Audio_Dialog dlg (&xpdf_bridge, &ts);
#else
 ScignStage_Audio_Dialog dlg (nullptr, &ts);
#endif

#ifdef USING_KPH
 dlg.set_phr_init_function([&dlg](Phaon_Runner& phr)
 {
  Kauvir_Code_Model& kcm = phr.get_kcm();
  kcm.set_direct_eval_fn(&kcm_direct_eval);

  Phaon_Symbol_Scope* pss = new Phaon_Symbol_Scope;
  init_test_functions(&dlg, kcm, phr.get_table(), *pss);
  phr.get_phaon_scope_queue().push_front(pss);
 });
#endif

 QObject::connect(&dlg, &ScignStage_Audio_Dialog::canceled,
   []()
 {
   qDebug() << "Closing ...";
 });

 dlg.set_screenshot_function([&dlg, &qapp]()
 {
  QScreen* screen = QGuiApplication::primaryScreen();
  if (!screen)
    return;
  QApplication::beep();
  int target_window_id  = dlg.winId();

  QTimer::singleShot(10000, [=]
  {
   QPixmap pixmap = screen->grabWindow(target_window_id );
   QString path = SCREENSHOTS_FOLDER "/ScignStage_Audio_Dialog.png";
   qDebug() << "Saving to path: " << path;

   QFile file(path);
   if(file.open(QIODevice::WriteOnly))
   {
    pixmap.save(&file, "PNG");
   }
  });
 });

 dlg.show();

 qapp.exec();

}
