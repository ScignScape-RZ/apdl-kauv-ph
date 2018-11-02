
#           Copyright Nathaniel Christen 2018.
#  Distributed under the Boost Software License, Version 1.0.
#     (See accompanying file LICENSE_1_0.txt or copy at
#           http://www.boost.org/LICENSE_1_0.txt)

include(../build-group.pri)

QT += widgets

TEMPLATE = app

INCLUDEPATH += $$SRC_DIR $$SRC_GROUP_DIR

INCLUDEPATH += $$SCIGNSTAGE_SRC_GROUP_DIR
INCLUDEPATH += $$KAUVIR_KCM_SRC_GROUP_DIR
INCLUDEPATH += $$PHAON_SRC_GROUP_DIR
INCLUDEPATH += $$QHYP_SRC_GROUP_DIR
INCLUDEPATH += $$KCM_RUNTIME_EVAL_SRC_GROUP_DIR
INCLUDEPATH += $$KAUVIR_RUNTIME_SRC_GROUP_DIR


DEFINES += CAON_DEBUG
DEFINES += RELAE_LABEL_NODES


DEFINES += SAMPLES_FOLDER=\\\"$$DATA_ROOT_DIR/samples\\\"
DEFINES += SCREENSHOTS_FOLDER=\\\"$$ROOT_DIR/screenshots\\\"


DEFINES += USE_KANS
DEFINES += USE_RZNS
DEFINES += USE_QSNS


HEADERS += \
  $$SRC_DIR/test-functions.h \


SOURCES += \
  $$SRC_DIR/main.cpp \
  $$SRC_DIR/test-functions.cpp \


LIBS += -L$$TARGETSDIR -ldsmain -lScignStage-audio \

exists($$CPP_ROOT_DIR/targets/$$CHOICE_CODE/external--xpdf--xpdf) \#/
{
 message(DEFINE\'ing USING_XPDF)
 DEFINES += USING_XPDF
}

exists($$CPP_ROOT_DIR/targets/$$CHOICE_CODE/kauvir--kauvir-phaon--kauvir-phaon) \#/
{
 message(DEFINE\'ing USING_KPH)
 DEFINES += USING_KPH
 LIBS += -L$$TARGETSDIR -lkcm-direct-eval -lkcm-scopes  -lkauvir-phaon -lPhaonLib -lkauvir-code-model
}

exists($$CPP_ROOT_DIR/targets/$$CHOICE_CODE/kauvir--kauvir-kcm--kcm-lisp-bridge)\
{
 message(DEFINE\'ing USING_ECL)
 include(../../../../find-ecl-sexp.pri)
 LIBS += -L$$ECL_DIR -lasdf
 message($$ECL_DIR)
}

message(choice: $$CPP_ROOT_DIR/targets/$$CHOICE_CODE/$$PROJECT_SET--$$PROJECT_GROUP--$$PROJECT_NAME)
mkpath($$CPP_ROOT_DIR/targets/$$CHOICE_CODE/$$PROJECT_SET--$$PROJECT_GROUP--$$PROJECT_NAME)

#LIBS += -L$$TARGETSDIR -lprague -lScignStage-audio



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

#LIBS += -L$$TARGETSDIR -lsexpr -lxpdf

