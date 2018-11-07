
//           Copyright Nathaniel Christen 2018.
//  Distributed under the Boost Software License, Version 1.0.
//     (See accompanying file LICENSE_1_0.txt or copy at
//           http://www.boost.org/LICENSE_1_0.txt)

#include "fn-doc-multi.h"

#include "kcm-scopes/kcm-scope-system.h"

#include "kcm-env/kcm-env.h"

#include "kauvir-code-model/kcm-type-object.h"
#include "kauvir-type-system/kauvir-type-object.h"

#include "kauvir-code-model/kcm-channel-group.h"
#include "kauvir-code-model/kauvir-code-model.h"

#include "fn-doc.h"


#include <QTextStream>

#include <QDebug>

Fn_Doc_Multi::Fn_Doc_Multi()
  :  fnd_(nullptr)
{

}

Fn_Doc_Multi::Fn_Doc_Multi(const Fn_Doc_Multi& rhs)
  :  fnd_(rhs.fnd_)
{

}

Fn_Doc_Multi::~Fn_Doc_Multi()
{
 // // should be unnecessary
 // // delete fnd_;
}

void Fn_Doc_Multi::init(KCM_Env* kenv)
{
 fnd_ = new Fn_Doc;
 fnd_->init(kenv);
}


void Fn_Doc_Multi::read(QString fn)
{
 const KCM_Type_Object* kto = fnd_->get_type_object_from_symbol_name(fn);
 if(kto)
 {
  fns_.push_back({fn, kto});
 }
}

void Fn_Doc_Multi::kph_gen_multi(QString path)
{
 QString text;
 for(QPair<QString, const KCM_Type_Object*> pr : fns_)
 {
  QString fn = pr.first;
  const KCM_Type_Object* kto = pr.second;
  fnd_->kph_gen(fn, QString());
 }
}

//void Fn_Doc_Multi::kph_gen(QString fn, QString subs)
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
