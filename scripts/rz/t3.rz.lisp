
 (kb::write-file-start) 
 (kb::write-s0-expression :|_=_generic| :|@%_test-if-then-else| :|^->0-1| :|^->0-2| :|^->0-3| :|^->0-4|) 
 (kb::enter-nested-form :|_%_defer| :|###1| :|^<-0-1|) 
 (kb::hold-deferred 1 ' 
  (progn 
   (kb::prepare-expression :|_%_:lc-f| :|@%_equal| :|#__u32| :|###4| :|#__u32| :|###5|))) 
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
  (kb::write-s0-expression :|_=_generic| :|@%_prn| :|#__u32| :|###78|) 
  (kb::write-promote-expression) 
  (kb::write-cmd-eval) 
  (kb::write-statement-clear) 
  (kb::write-leave-scope) 
  (kb::write-leave-plene-block)) 
 (kb::leave-nested-form) 
 (kb::leave-nested-form) 
 (kb::enter-nested-form :|_%_defer| :|###2| :|^<-0-3|) 
 (kb::hold-deferred 2 ' 
  (progn 
   (kb::prepare-expression :|_%_:lc-f| :|@%_equal| :|#__u32| :|###4| :|#__u32| :|###4|))) 
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
  (kb::write-s0-expression :|_=_generic| :|@%_prn| :|#__u32| :|###79|) 
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