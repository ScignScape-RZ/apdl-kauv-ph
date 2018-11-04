
//           Copyright Nathaniel Christen 2018.
//  Distributed under the Boost Software License, Version 1.0.
//     (See accompanying file LICENSE_1_0.txt or copy at
//           http://www.boost.org/LICENSE_1_0.txt)


#ifndef RO_INFO__H
#define RO_INFO__H


#include <QtGlobal>

#include <QString>
#include <QUrl>
#include <QMap>

#include "kans.h"
#include "accessors.h"


KANS_(DSM)

class RO_Info
{
 QUrl article_url_;
 QUrl main_repo_url_;
 QString local_article_path_;
 QString main_project_path_;
 QString main_executable_path_;
 QString root_data_folder_;
 QString root_tests_folder_;
 QStringList kai_signatures_;

public:

 RO_Info();

 ACCESSORS(QUrl ,article_url)
 ACCESSORS(QUrl ,main_repo_url)
 ACCESSORS(QString ,local_article_path)
 ACCESSORS(QString ,main_project_path)
 ACCESSORS(QString ,main_executable_path)
 ACCESSORS(QString ,root_data_folder)
 ACCESSORS(QString ,root_tests_folder)
 ACCESSORS__RGET(QStringList ,kai_signatures)


};


_KANS(DSM)

#endif // RO_INFO__H
