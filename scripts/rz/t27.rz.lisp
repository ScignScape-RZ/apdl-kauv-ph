
 (kb::write-file-start) 
 (kb::write-qreg-type-binding-statement :|@#_x| :|_#_:TYPE-DECL| :|@__int|) 
 (kb::write-s0-expression :|_=_generic| :|@%_test-find| :|#__str| "\"abcdef\"" :|#__str| "\"cd\"") 
 (kb::write-promote-type-binding-expression :|@#_x|) 
 (kb::write-cmd-eval) 
 (kb::write-statement-clear) 
 (kb::write-s0-expression :|_=_generic| :|@%_if-t-e| :|^->0-1| :|^->0-2| :|^->0-3| :|^->0-4|) 
 (kb::enter-nested-form :|_%_defer| :|###9| :|^<-0-1|) 
 (kb::hold-deferred 9 ' 
  (progn 
   (kb::prepare-expression :|_%_:lc-f| :|@%_equal| :|@#_x| :|%%_-1|))) 
 (kb::leave-nested-form) 
 (kb::enter-nested-form :|^<-0-2|) 
 (kb::write-anon-fdef :|_%_:fdef| 
  (prin1-to-string ' 
   (progn 
    (ka::kc :|kcg_clear_all| kcg) 
    (ka::kc :|kcg_add_empty_lambda_channel| kcg) 
    (setq kto 
     (ka::kc :|kcm_type_object_from_channel_group| kcg)))) :|^->1-1|) 
 (kb::enter-nested-form :|^<-1-1|) 
 (kb::write-plene-block 
  (kb::write-enter-plebod) 
  (kb::write-enter-plene-block) 
  (kb::write-enter-scope) 
  (kb::write-s0-expression :|_=_generic| :|@%_prs| :|#__str| "\"Not Found\"") 
  (kb::write-promote-expression) 
  (kb::write-cmd-eval) 
  (kb::write-statement-clear) 
  (kb::write-leave-scope) 
  (kb::write-leave-plene-block)) 
 (kb::leave-nested-form) 
 (kb::leave-nested-form) 
 (kb::enter-nested-form :|_%_defer| :|###10| :|^<-0-3|) 
 (kb::hold-deferred 10 ' 
  (progn 
   (kb::prepare-expression :|_%_:lc-f| :|@%_values| :|%%_t|))) 
 (kb::leave-nested-form) 
 (kb::enter-nested-form :|^<-0-4|) 
 (kb::write-anon-fdef :|_%_:fdef| 
  (prin1-to-string ' 
   (progn 
    (ka::kc :|kcg_clear_all| kcg) 
    (ka::kc :|kcg_add_empty_lambda_channel| kcg) 
    (setq kto 
     (ka::kc :|kcm_type_object_from_channel_group| kcg)))) :|^->1-1|) 
 (kb::enter-nested-form :|^<-1-1|) 
 (kb::write-plene-block 
  (kb::write-enter-plebod) 
  (kb::write-enter-plene-block) 
  (kb::write-enter-scope) 
  (kb::write-s0-expression :|_=_generic| :|@%_lr| :|^->0-1|) 
  (kb::enter-nested-form :|_%_defer| :|###11| :|^<-0-1|) 
  (kb::hold-deferred 11 ' 
   (progn 
    (kb::prepare-expression :|_%_:lc-f| :|@%_format| :|%%_t| :|#__str| "\"Found: ~a~%\"" :|@#_x|))) 
  (kb::leave-nested-form) 
  (kb::write-promote-expression) 
  (kb::write-cmd-eval) 
  (kb::write-statement-clear) 
  (kb::write-s0-expression :|_=_generic| :|@%_prs| :|#__str| "\"OK\"") 
  (kb::write-promote-expression) 
  (kb::write-cmd-eval) 
  (kb::write-statement-clear) 
  (kb::write-leave-scope) 
  (kb::write-leave-plene-block)) 
 (kb::leave-nested-form) 
 (kb::leave-nested-form) 
 (kb::write-promote-expression) 
 (kb::write-cmd-eval) 
 (kb::write-statement-clear) 
 (kb::write-file-end)