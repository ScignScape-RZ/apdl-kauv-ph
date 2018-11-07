
//           Copyright Nathaniel Christen 2018.
//  Distributed under the Boost Software License, Version 1.0.
//     (See accompanying file LICENSE_1_0.txt or copy at
//           http://www.boost.org/LICENSE_1_0.txt)

#include "fn-doc-vector.h"

#include "kcm-scopes/kcm-scope-system.h"

#include "kcm-env/kcm-env.h"

#include "kauvir-code-model/kcm-type-object.h"
#include "kauvir-type-system/kauvir-type-object.h"

#include "kauvir-code-model/kcm-channel-group.h"
#include "kauvir-code-model/kauvir-code-model.h"

#include "fn-doc.h"


#include <QTextStream>

#include <QDebug>

Fn_Doc_Vector::Fn_Doc_Vector()
  :  scopes_(nullptr), kenv_(nullptr)
{

}

Fn_Doc_Vector::Fn_Doc_Vector(const Fn_Doc_Vector& rhs)
  :  scopes_(rhs.scopes_), kenv_(rhs.kenv_), fns_(rhs.fns_)
{

}

Fn_Doc_Vector::~Fn_Doc_Vector()
{

}

void Fn_Doc_Vector::init(KCM_Env* kenv)
{
 kenv_ = kenv;
 scopes_ = kenv->scopes();
 qDebug() << "init...";
}


void Fn_Doc_Vector::read(QString fn)
{
 qDebug() << "fn: " << fn;
 const KCM_Type_Object* kto = scopes_->get_type_object_from_symbol_name(fn);
 if(kto)
 {
  if(kenv_)
  {
   kenv_->report_channel_group(kto->channel_group());
  }
 }
}

//void Fn_Doc_Vector::kph_gen(QString fn, QString subs)
//{
// qDebug() << "fn: " << fn;
// const KCM_Type_Object* kto = scopes_->get_type_object_from_symbol_name(fn);
// if(kto)
// {
//  if(kenv_)
//  {
//   kenv_->kph_gen(kto->channel_group(), subs, fn);
//  }
// }
//}
