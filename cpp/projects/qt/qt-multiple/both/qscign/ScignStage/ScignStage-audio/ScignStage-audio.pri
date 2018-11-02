
#           Copyright Nathaniel Christen 2018.
#  Distributed under the Boost Software License, Version 1.0.
#     (See accompanying file LICENSE_1_0.txt or copy at
#           http://www.boost.org/LICENSE_1_0.txt)



QT += widgets multimedia

#

INCLUDEPATH += $$SRC_DIR $$SRC_GROUP_DIR

INCLUDEPATH += $$DSMAIN_SRC_GROUP_DIR
INCLUDEPATH += $$XPDF_SRC_GROUP_DIR
INCLUDEPATH += $$PHAON_SRC_GROUP_DIR
INCLUDEPATH += $$QHYP_SRC_GROUP_DIR
INCLUDEPATH += $$KAUVIR_PHAON_SRC_GROUP_DIR
INCLUDEPATH += $$KAUVIR_KCM_SRC_GROUP_DIR

INCLUDEPATH += $$XPDF_SRC_GROUP_DIR/xpdf/aconf
INCLUDEPATH += $$XPDF_SRC_GROUP_DIR/xpdf/goo

DEFINES += CAON_DEBUG
DEFINES += RELAE_LABEL_NODES

DEFINES += DEFAULT_FOLDER=\\\"$$CPP_ROOT_DIR/assets\\\"
DEFINES += DEFAULT_ICON_FOLDER=\\\"$$CPP_ROOT_DIR/assets/icons\\\"

DEFINES += ABOUT_FILE_FOLDER=\\\"$$CPP_ROOT_DIR/about/about-files\\\"

DEFINES += SAMPLES_FOLDER=\\\"$$DATA_ROOT_DIR/samples\\\"



#INCLUDEPATH += $$RZ_KAUVIR_SRC_GROUP_DIR \
#  $$RZ_KAUVIR_SRC_GROUP_DIR/rz-graph-core  $$RZ_KAUVIR_SRC_GROUP_DIR/rz-graph-token  \
#  $$RELAE_SRC_GROUP_DIR  $$KAUVIR_KCM_SRC_GROUP_DIR

#INCLUDEPATH += $$SRC_ROOT_DIR/rpdf/xpdf/aconf \
#  $$SRC_ROOT_DIR/rpdf/xpdf/goo



CONFIG += no_keywords

DEFINES += USE_KANS
DEFINES += USE_RZNS


exists($$CPP_ROOT_DIR/targets/$$CHOICE_CODE/external--xpdf--xpdf) \#/
{
 message(DEFINE\'ing USING_XPDF)
 DEFINES += USING_XPDF
 LIBS += -L$$TARGETSDIR -lxpdf
}

exists($$CPP_ROOT_DIR/targets/$$CHOICE_CODE/kauvir--kauvir-phaon--kauvir-phaon) \#/
{
 message(DEFINE\'ing USING_XPDF)
 DEFINES += USING_KPH
 LIBS += -L$$TARGETSDIR -lPhaonLib -lkauvir-phaon -lkauvir-code-model
}



HEADERS += \
  $$SRC_DIR/scignstage-audio-dialog.h \
  $$SRC_DIR/nav-protocols/nav-audio-1d-panel.h \
  $$SRC_DIR/subwindows/scignstage-clickable-label.h \
  $$SRC_DIR/xpdf-bridge.h \


SOURCES += \
  $$SRC_DIR/scignstage-audio-dialog.cpp \
  $$SRC_DIR/nav-protocols/nav-audio-1d-panel.cpp \
  $$SRC_DIR/subwindows/scignstage-clickable-label.cpp \
  $$SRC_DIR/xpdf-bridge.cpp \


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


#LIBS += -L$$TARGETSDIR -lqring



#LIBS += -L$$ECL_DIR -lecl
#LIBS += -L$$CL_CXX_DIR/install/lib64 -lcl_cxx

#LIBS += -L$$TARGETSDIR -lsexpr

