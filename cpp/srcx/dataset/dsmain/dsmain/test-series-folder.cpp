
//           Copyright Nathaniel Christen 2018.
//  Distributed under the Boost Software License, Version 1.0.
//     (See accompanying file LICENSE_1_0.txt or copy at
//           http://www.boost.org/LICENSE_1_0.txt)


#include "test-series-folder.h"

#include "test-series.h"

#include "textio.h"


#include <QDir>
#include <QDebug>

USING_KANS(DSM)

USING_KANS(TextIO)


Test_Series_Folder::Test_Series_Folder(QString ring_path)
  : ring_path_(ring_path)
{

}

void Test_Series_Folder::read_files(Test_Series& ts)
{
 QDir dir(ring_path_);
 QFileInfoList qfil = dir.entryInfoList();
 QStringList qsl;

 QStringList sm;
 QStringList nm;
 QStringList gm;

 QStringList lsm;
 QStringList lnm;
 QStringList lgm;

 QStringList ds;


 QMap<QString, int> files;

 for(QFileInfo qfi : qfil)
 {
  if(qfi.suffix() == "wav")
  {
   qsl.push_back(qfi.fileName());
  }
  else if(qfi.fileName() == "data.txt")
  {
   //QString qs = load_file(qfi.absoluteFilePath());
   //ds = qs.split('\n');
   //
   ts.parse_data(qfi.absoluteFilePath());
  }
  else if(qfi.fileName() == "smos.txt")
  {
   QString qs = load_file(qfi.absoluteFilePath());
   sm = qs.split('\n');
  }
  else if(qfi.fileName() == "nmos.txt")
  {
   QString qs = load_file(qfi.absoluteFilePath());
   nm = qs.split('\n');
  }
  else if(qfi.fileName() == "gmos.txt")
  {
   QString qs = load_file(qfi.absoluteFilePath());
   gm = qs.split('\n');
  }
  else if(qfi.fileName() == "l-smos.txt")
  {
   QString qs = load_file(qfi.absoluteFilePath());
   lsm = qs.split('\n');
  }
  else if(qfi.fileName() == "l-nmos.txt")
  {
   QString qs = load_file(qfi.absoluteFilePath());
   lnm = qs.split('\n');
  }
  else if(qfi.fileName() == "l-gmos.txt")
  {
   QString qs = load_file(qfi.absoluteFilePath());
   lgm = qs.split('\n');
  }
  else if(qfi.fileName() == "files.txt")
  {
   QString qs = load_file(qfi.absoluteFilePath());
   QStringList l = qs.split('\n');
   int c = 0;
   for(QString s : l)
   {
    files[s] = c;
    ++c;
   }
  }
 }


// QString text;


// int i = 0;
// int c = 0;

// QString held;

// for(int i = 1; i <= 205; i += 4)
// {
//  int x = i + 4;
//  QString iqs = ds[i];
//  QString xqs = i == 205?
//     "3.833-1.917-2.833":
//     ds[x];
//  QString m = iqs.mid(0, 18) + xqs.mid(18);
//  ds[i] = m;
// }

// QString text = ds.join('\n');

// for(QString qs : ds)
// {
//  if(i == 1)
//  {
//   text += QString("%1-%2-%3-%4\n").arg(qs).arg(lsm[c])
//      .arg(lnm[c]).arg(lgm[c]);
//   ++c;
//  }
//  else text += qs + '\n';
//  if(i == 2)
//    i = 0;
//  else
//    ++i;

// }

// QVector<QString> lines;
// lines.resize(sm.size());
// for(QString qs : qsl)
// {
//  int c = files.value(qs);
//  if(c)
//  {
//   lines[c-1] = qs + QString("\n%1-%2-%3\n__\n").arg(sm[c]).arg(nm[c]).arg(gm[c]);
//  }
// }
// for(QString l : lines)
// {
//  text += l;
// }

// save_file(dir.absoluteFilePath("__data.txt"), text);

}

