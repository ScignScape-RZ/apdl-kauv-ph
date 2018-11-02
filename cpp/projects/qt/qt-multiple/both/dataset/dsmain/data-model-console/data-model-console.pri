
#           Copyright Nathaniel Christen 2018.
#  Distributed under the Boost Software License, Version 1.0.
#     (See accompanying file LICENSE_1_0.txt or copy at
#           http://www.boost.org/LICENSE_1_0.txt)

include(../build-group.pri)

TEMPLATE = app

INCLUDEPATH += $$SRC_DIR $$SRC_GROUP_DIR


DEFINES += CAON_DEBUG
DEFINES += RELAE_LABEL_NODES

DEFINES += SAMPLES_FOLDER=\\\"$$DATA_ROOT_DIR/samples\\\"



CONFIG += no_keywords

DEFINES += USE_KANS
DEFINES += USE_RZNS




SOURCES += \
  $$SRC_DIR/main.cpp \


LIBS += -L$$TARGETSDIR -ldsmain


message(choice: $$CPP_ROOT_DIR/targets/$$CHOICE_CODE/$$PROJECT_SET--$$PROJECT_GROUP--$$PROJECT_NAME)
mkpath($$CPP_ROOT_DIR/targets/$$CHOICE_CODE/$$PROJECT_SET--$$PROJECT_GROUP--$$PROJECT_NAME)



#LIBS += -L$$TARGETSDIR -lkcm-lisp-bridge  \
#  -lkauvir-code-model -lkauvir-type-system -lrz-dynamo-generator

#LIBS += -L$$TARGETSDIR -lkcm-command-package -lkcm-command-runtime \
#   -lkcm-direct-eval -lfn-doc

## R/Z ...

#LIBS += -L$$TARGETSDIR  \
#   -lrz-graph-core \
#   -lrz-graph-token \
#   -lrz-graph-code \
#   -lrz-graph-visit \
#   -lrz-code-generators \
#   -lrz-graph-build \
#   -lrz-graph-valuer \
#   -lrz-graph-embed \
#   -lrz-graph-embed-run \
#   -lrz-graph-run \
#   -lrz-graph-sre \
#   -lrz-function-def \
#   -lrz-code-elements \
#   -lkcm-scopes \
#   -lbasic-functions \
#   -lkcm-env \


##LIBS += -L$$TARGETSDIR -lqring



#LIBS += -L$$ECL_DIR -lecl
#LIBS += -L$$CL_CXX_DIR/install/lib64 -lcl_cxx

#LIBS += -L$$TARGETSDIR -lsexpr

