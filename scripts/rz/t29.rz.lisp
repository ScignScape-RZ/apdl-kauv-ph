
 (kb::write-file-start) 
 (kb::write-s0-expression :|_=_generic| :|@%_test-call| :|^->0-1|) 
 (kb::enter-nested-form :|^<-0-1|) 
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
  (kb::enter-nested-form :|_%_defer| :|###13| :|^<-0-1|) 
  (kb::hold-deferred 13 ' 
   (progn 
    (kb::prepare-expression :|_%_:lc-f| :|@%_format| :|%%_t| :|#__str| "\"Found: ~a~%\"" :|#__u32| :|###77|))) 
  (kb::leave-nested-form) 
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