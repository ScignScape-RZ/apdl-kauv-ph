
//           Copyright Nathaniel Christen 2018.
//  Distributed under the Boost Software License, Version 1.0.
//     (See accompanying file LICENSE_1_0.txt or copy at
//           http://www.boost.org/LICENSE_1_0.txt)


#include "kph-generator/kph-generator.h"


#include "kauvir-phaon/kph-command-package.h"

#include "kauvir-code-model/kauvir-code-model.h"
#include "kauvir-code-model/kcm-channel-group.h"
#include "kcm-runtime-eval/kcm-scopes/kcm-scope-system.h"


#include "PhaonLib/phaon-namespace.h"
#include "PhaonLib/phaon-class.h"
#include "PhaonLib/phaon-function.h"
#include "PhaonLib/phaon-symbol-scope.h"

#include "relae-graph/relae-caon-ptr.h"

#include "test-functions.h"

#include "PhaonLib/phaon-channel-group-table.h"
#include "PhaonLib/phaon-runner.h"

#include "kcm-runtime-eval/kcm-direct-eval/kcm-direct-eval.h"


#include "kans.h"


USING_KANS(Phaon)



int main(int argc, char* argv[])
{
 KPH_Generator gen (DEFAULT_KPH_FOLDER "/gen/t1.txt");


 Phaon_Runner phr;

// Phaon_Namespace phn("TestNS");
// Phaon_Class phc("Test_Class", &phn);

 Kauvir_Code_Model& kcm = phr.get_kcm();
 kcm.set_kph_generator(&gen);
 kcm.set_direct_eval_fn(&kcm_direct_eval);

 //Phaon_Symbol_Scope* pss = new Phaon_Symbol_Scope;
 Phaon_Symbol_Scope pss;
 init_test_functions(kcm, phr.get_table(), pss);
 phr.get_phaon_scope_queue().push_front(&pss);
 // scopes.phaon_scope_queue().push_front(&pss);
 //scopes.set_phaon_scope(&pss);

 KPH_Command_Package khp;
 khp.parse_from_file( DEFAULT_KPH_FOLDER "/dataset/raw/t1.kph" );

 KCM_Channel_Group kcg(kcm.channel_names());

 khp.init_channel_group(kcm, kcg);

// gen.encode(kcg);

// gen.save_kph_file();
 //
 phr.run(kcg);


 return 0;

}