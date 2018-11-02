
TEMPLATE = subdirs


SUBDIRS = \
  dataset/dsmain/dsmain \
  dataset/dsmain/data-model-console \
  \ #
  external/xpdf/xpdf \
  external/xpdf/xpdf-console \
  kauvir/kauvir-kcm/kauvir-type-system \
  kauvir/kcm-runtime-eval/kcm-scopes \
  kauvir/kauvir-kcm/kauvir-code-model \
  kauvir/kauvir-runtime/kcm-command-package \
  phaon/phaon/PhaonLib \
   \ # this is only for r/z ...
  rz/rz-dynamo/rz-dynamo-generator \
  kauvir/kauvir-kcm/kcm-lisp-bridge \
   \ #
  kauvir/kauvir-runtime/kcm-command-runtime \
  \ #
  \ #
  kauvir/kauvir-phaon/kph-generator \
  \ #
  kauvir/kcm-runtime-eval/kcm-direct-eval \
  kauvir/kauvir-phaon/kauvir-phaon \
  \ #
  qscign/ScignStage/ScignStage-audio \
  \ #
  phaon/phaon/phaon-console \
  kauvir/kauvir-phaon/kauvir-phaon-console \
  kauvir/kauvir-phaon/kauvir-phaon-tcp-console \
  \ #
  dataset/dsmain/_run__dsmain-console \
  \ #
  phaon/phaon-xml/phaon-xml \
  phaon/phaon-xml/phaon-xml-console \
  \ #
  kauvir/kauvir-phaon/kph-generator-console \
  \ #
  kauvir/kcm-runtime-eval/kcm-env \
  \ #
  rz/rz-kauvir/rz-graph-core \
  rz/rz-kauvir/rz-graph-token \
  rz/rz-kauvir/rz-graph-build \
  rz/rz-kauvir/rz-graph-embed \
  rz/rz-kauvir/rz-function-def \
  rz/rz-kauvir/rz-code-elements \
  rz/rz-kauvir/rz-graph-valuer \
  rz/rz-kauvir/rz-graph-embed-run \
  rz/rz-kauvir/rz-graph-run \
  rz/rz-kauvir/rz-graph-visit \
  rz/rz-kauvir/rz-code-generators \
  rz/rz-kauvir/rz-graph-sre \
  rz/rz-kauvir/rz-graph-code \
  external/lisp/sexpr \
  rz/rz-kauvir/rz-graph-lisp-console \
  \ #
  rz/rz-dynamo/rz-dynamo-console \
  rz/rz-dynamo/rz-graph-dynamo-console \
  kauvir/kcm-runtime-eval/fn-doc \
  kauvir/kcm-runtime-eval/basic-functions \
  rz/rz-dynamo/rz-dynamo-runtime-console \
  rz/rz-dynamo/rz-graph-dynamo-runtime-console \
  rz/rz-dynamo/rz-multi-console \
  rz/rz-dynamo/rz-graph-dynamo-kph-console \



CONFIG += ordered
