
//          Copyright Nathaniel Christen 2017.
// Distributed under the Boost Software License, Version 1.0.
//    (See accompanying file LICENSE_1_0.txt or copy at
//          http://www.boost.org/LICENSE_1_0.txt)


#ifndef SCIGNSTAGE_AUDIO_DIALOG__H
#define SCIGNSTAGE_AUDIO_DIALOG__H

#include <QObject>

#include <QMetaType>

#include <QList>

#include <QPoint>

#include <QDialog>
#include <QTableWidget>

#include <functional>

#include "accessors.h"
#include "qsns.h"

#include "nav-protocols/nav-audio-1d-panel.h"

#include <functional>

#include "kans.h"

KANS_CLASS_DECLARE(DSM ,Test_Series)
KANS_CLASS_DECLARE(DSM ,Test_Sample)
KANS_CLASS_DECLARE(DSM ,Test_Sentence)


USING_KANS(DSM)

//#include "ScignStage/nav-protocols/geometric2d/fore-geometric-2d-panel.h"
//#include "ScignStage/nav-protocols/geometric2d/series-geometric-2d-panel.h"
//#include "ScignStage/annotations/annotation-symbols-panel.h"


class QDialogButtonBox;
class QLabel;
class QLineEdit;
class QTabWidget;
class QTextEdit;
class QFrame;
class QHBoxLayout;
class QVBoxLayout;
class QSlider;
class QPlainTextEdit;
class QBoxLayout;
class QButtonGroup;
class QGroupBox;
class QScrollArea;
class QGridLayout;
class QMediaPlayer;
class QProcess;
class QTcpServer;

class ScignStage_Image_Tile;
class ScignStage_Clickable_Label;

class XPDF_Bridge;

KANS_CLASS_DECLARE(PhaonLib ,Phaon_Runner)
USING_KANS(PhaonLib)

//
QSNS_(ScignStage)
_QSNS(ScignStage)
//?namespace QScign { namespace ScignStage {



class ScignStage_Audio_Dialog : public QDialog
{

 Q_OBJECT

 QDialogButtonBox* button_box_;
 QPushButton* button_ok_;
 QPushButton* button_cancel_;
 QPushButton* button_proceed_;


 QHBoxLayout* middle_layout_;
 QVBoxLayout* main_layout_;

 QLabel* sentence_label_;

 QString current_image_file_;

 // //  "Pseudo" Toolbar ...
 QHBoxLayout* top_buttons_layout_;
//? QPushButton* updates_button_;

 QPushButton* activate_tcp_button_;

 QPushButton* take_screenshot_button_;
//? QPushButton* sonic_button_;
 QPushButton* scignstage_button_;


 QScrollArea* grid_scroll_area_;
 QFrame* main_frame_;
 QGridLayout* main_grid_layout_;


 // //
 QVBoxLayout* annotation_layout_;

 NAV_Audio1D_Panel* nav_panel_;

 void check_tile_geometric_navigate(int r, int c);

 XPDF_Bridge* xpdf_bridge_;

 QVector<QString> files_;
 //QVector<Test_Sentence*> sentences_;
 //?
 QVector<Test_Sample*>* samples_;

 void test_to_string(QString& result, bool wl);

 void smos_to_string(QString& result, bool wl);
 void nmos_to_string(QString& result, bool wl);
 void gmos_to_string(QString& result, bool wl);

 void save_to_user_select_file(QString text);

 //QMap<Test_Sample*, int> samples_map_;

 QMap<Test_Sample*, QPair<QLabel*, int> > sample_to_label_map_;

 Test_Sample* last_sample_;

 QMediaPlayer* player_;

 int current_index_;

 int max_index_;

 QWidget* last_highlight_;

 int current_volume_;

 QProcess* xpdf_process_;

 quint64 current_tcp_msecs_;

 int xpdf_port_;

 QTcpServer* tcp_server_;

 QString held_xpdf_msg_;

 Phaon_Runner* phr_;

 std::function<void(Phaon_Runner&)> phr_init_function_;
 std::function<void()> screenshot_function_;

 bool xpdf_is_ready();

 void check_qnam();
 void check_phr();

 void run_msg(QString msg, QByteArray qba);
 void run_kph(const QByteArray& qba);

 void play_file_at_current_index();

 void open_pdf_file(QString name, int page);

 void check_launch_xpdf(std::function<void()> fn,
   std::function<void()> waitfn);
 void send_xpdf_msg(QString msg);

// void check_xpdf_port(std::function<void(QString)> truefn,
//   std::function<void()> falsefn);



 QString load_about_file(QString name);

 bool ask_pdf_proceed(QString name);

 void run_smos_message(const QPoint& p, int col);
 void run_nmos_message(const QPoint& p, int col);
 void run_gmos_message(const QPoint& p, int col);

 void run_test_with_load_message(const QPoint& p, int col);
 void run_test_no_load_message(const QPoint& p, int col);

 void run_about_context_menu(const QPoint& p, int col, std::function<void()> about_fn,
    std::function<void()> copy_fn, std::function<void()> save_fn);

 void run_sample_context_menu(const QPoint& p, std::function<void()> play_fn,
    std::function<void()> copy_fn);


 void run_message_by_grid_position(const QPoint& p, int r, int c);

public:



 ScignStage_Audio_Dialog(XPDF_Bridge* xpdf_bridge,
   Test_Series* ts1, Test_Series* ts2, QWidget* parent = nullptr);

 ~ScignStage_Audio_Dialog();

 ACCESSORS__SET(std::function<void(Phaon_Runner&)>, phr_init_function)
 ACCESSORS__SET(std::function<void()> ,screenshot_function)

 // //  Kernel Application Interface
 void test_msgbox(QString msg);
 void play_sample(int index);
 Q_INVOKABLE void play_next_sample();
 Q_INVOKABLE void play_next_sample_in_peer_group();
 Q_INVOKABLE void play_previous_sample();
 Q_INVOKABLE void play_previous_sample_in_peer_group();
 void show_sentence_text(int index);
 void show_distractor_text(int index);
 void highlight_sample(int index);
 void highlight_peers(int index);
 void test_data_to_text(QString result, int test, int column);


Q_SIGNALS:
 void canceled(QDialog*);
 void accepted(QDialog*);
 void take_screenshot_requested();

public Q_SLOTS:

 void handle_xpdf_is_ready();
 void handle_take_screenshot_requested();

 void accept();
 void cancel();

 void activate_tcp_requested();
 void handle_open_file_requested(QString);

 void handle_sample_up();
 void handle_sample_down();

 void handle_peer_up();
 void handle_peer_down();

 void handle_sample_replay();
 void handle_sample_first();

 void handle_volume_change_requested(int);

};

//_QSNS(ScignStage)


#endif  // SCIGNSTAGE_AUDIO_DIALOG__H

