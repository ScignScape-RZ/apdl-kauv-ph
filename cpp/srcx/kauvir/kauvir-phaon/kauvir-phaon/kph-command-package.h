
//           Copyright Nathaniel Christen 2018.
//  Distributed under the Boost Software License, Version 1.0.
//     (See accompanying file LICENSE_1_0.txt or copy at
//           http://www.boost.org/LICENSE_1_0.txt)

#ifndef KPH_COMMAND_PACKAGE__H
#define KPH_COMMAND_PACKAGE__H


#include "kans.h"

#include <QString>
#include <QMap>
#include <QVector>

#include "accessors.h"

KANS_CLASS_DECLARE(KCM ,KCM_Channel_Group)
KANS_CLASS_DECLARE(KCM ,Kauvir_Code_Model)
USING_KANS(KCM)

KANS_(Phaon)

class KPH_Carrier;

class KPH_Command_Package
{
 QString fn_name_;
 int fn_code_;

 QMap<QString, int> channel_counts_;
 void check_channel_count_maximum(QString key, int max);

 QMap<int, QPair<QString, QString>> type_names_;

 QVector<KPH_Carrier*> carriers_;
 QStringList pins_;

 void parse_from_string_list(QString path, const QStringList& qsl,
   QMap<int, QString>& channel_names, int& current_expression_code);

 void parse_from_string(QString path, const QString& qs,
   QMap<int, QString>& channel_names, int& current_expression_code);

 void parse_from_file(QString path,
   QMap<int, QString>& channel_names, int& current_expression_code);

 void parse_from_file_list(QString path, const QStringList& paths,
   QMap<int, QString>& channel_names, int& current_expression_code);

public:

 KPH_Command_Package();

 void init_channel_group(Kauvir_Code_Model& kcm, KCM_Channel_Group& kcg);

 void parse_from_string_list(QString path, const QStringList& qsl);

 void parse_from_string(QString path, const QString& qs);
 void parse_from_file(QString path);

 void supply_data(QByteArray& qba) const;
 void absorb_data(const QByteArray& qba);


};


_KANS(PhaonLib)


#endif //KPH_COMMAND_PACKAGE__H
