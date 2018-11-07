
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
  :  kenv_(nullptr)
{

}

Fn_Doc_Vector::Fn_Doc_Vector(const Fn_Doc_Vector& rhs)
  :  kenv_(rhs.kenv_), fns_(rhs.fns_)
{

}

Fn_Doc_Vector::~Fn_Doc_Vector()
{

}

void Fn_Doc_Vector::init(KCM_Env* kenv)
{
 kenv_ = kenv;
}


void Fn_Doc_Vector::read(QString fn)
{
 Fn_Doc* fnd = new Fn_Doc;
 fnd->init(kenv_);
 fns_.push_back({fn, fnd});
}

void Fn_Doc_Vector::kph_gen_multi(QString path)
{
 QString text;
 for(QPair<QString, Fn_Doc*> pr : fns_)
 {
  QString fn = pr.first;
  Fn_Doc* fnd = pr.second;
  fnd->kph_gen(fn, QString());
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
