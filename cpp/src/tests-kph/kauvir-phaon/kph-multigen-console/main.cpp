
//           Copyright Nathaniel Christen 2018.
//  Distributed under the Boost Software License, Version 1.0.
//     (See accompanying file LICENSE_1_0.txt or copy at
//           http://www.boost.org/LICENSE_1_0.txt)


#include "kph-generator/kph-generator.h"


#include "kauvir-phaon/kph-command-package.h"

#include "kauvir-code-model/kauvir-code-model.h"
#include "kauvir-code-model/kcm-channel-group.h"
#include "kcm-scopes/kcm-scope-system.h"


#include "PhaonLib/phaon-namespace.h"
#include "PhaonLib/phaon-class.h"
#include "PhaonLib/phaon-function.h"
#include "PhaonLib/phaon-symbol-scope.h"

#include "relae-graph/relae-caon-ptr.h"


#include "PhaonLib/phaon-channel-group-table.h"
#include "PhaonLib/phaon-runner.h"

#include "kcm-direct-eval/kcm-direct-eval.h"


#include "kans.h"


USING_KANS(Phaon)



int main(int argc, char* argv[])
{
 QVector<KPH_Command_Package*> kcps = KPH_Command_Package::parse_multi_from_file(
   DEFAULT_KPH_FOLDER "/dataset/raw-multi/t1.kph" );


 return 0;
}
