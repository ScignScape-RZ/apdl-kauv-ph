
//           Copyright Nathaniel Christen 2018.
//  Distributed under the Boost Software License, Version 1.0.
//     (See accompanying file LICENSE_1_0.txt or copy at
//           http://www.boost.org/LICENSE_1_0.txt)

#ifndef FN_DOC_VECTOR__H
#define FN_DOC_VECTOR__H


#include "kans.h"

#include "kauvir-type-system/kauvir-universal-class.h"

#include <QString>
#include <QObject>

KANS_CLASS_DECLARE(KCM ,Kauvir_Code_Model)
KANS_CLASS_DECLARE(KCM ,KCM_Channel_Group)
KANS_CLASS_DECLARE(KCM ,KCM_Type_Object)

USING_KANS(KCM)

class KCM_Lisp_Bridge;

KANS_CLASS_DECLARE(CMD ,KCM_Command_Package)
KANS_CLASS_DECLARE(CMD ,KCM_Command_Runtime_Router)
KANS_CLASS_DECLARE(CMD ,KCM_Scope_System)

USING_KANS(CMD)

class KCM_Env;
class Fn_Doc;

class Fn_Doc_Vector : public QObject, public Kauvir_Universal_Class
{
 Q_OBJECT

 KCM_Scope_System* scopes_;
 KCM_Env* kenv_;

 QVector<Fn_Doc*> fns_;

public:

 Fn_Doc_Vector();

 Fn_Doc_Vector(const Fn_Doc_Vector& rhs);

 ~Fn_Doc_Vector();

 ACCESSORS(KCM_Scope_System* ,scopes)

 Q_INVOKABLE void read(QString fn);
 Q_INVOKABLE void init(KCM_Env* kenv);


};


Q_DECLARE_METATYPE(Fn_Doc_Vector)
Q_DECLARE_METATYPE(Fn_Doc_Vector*)

#endif //FN_DOC_VECTOR__H
