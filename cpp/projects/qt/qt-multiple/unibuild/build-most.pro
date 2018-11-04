
TEMPLATE = subdirs


SUBDIRS = \
  dataset/dsmain/dsmain \
  dataset/dsmain/data-model-console \

SUBDIRS += \ 
  external/xpdf/xpdf \
  external/xpdf/xpdf-console \
  kauvir/kauvir-kcm/kauvir-type-system \
  kauvir/kcm-runtime-eval/kcm-scopes \
  kauvir/kauvir-kcm/kauvir-code-model \
  kauvir/kauvir-runtime/kcm-command-package \
  phaon/phaon/PhaonLib \
  kauvir/kauvir-runtime/kcm-command-runtime \
  kauvir/kcm-runtime-eval/kcm-direct-eval \
  kauvir/kauvir-phaon/kauvir-phaon \

SUBDIRS += \ 
  qscign/ScignStage/ScignStage-audio \
  
SUBDIRS += \ 
  phaon/phaon/phaon-console \
  kauvir/kauvir-phaon/kauvir-phaon-console \
  
SUBDIRS += \ 
  dataset/dsmain/_run__dsmain-console \
  
SUBDIRS += \ 
  kauvir/kauvir-phaon/kph-tcp-console \
  phaon/phaon-xml/phaon-xml \
  phaon/phaon-xml/phaon-xml-console \


CONFIG += ordered
