
(kb::write-file-start)


 ;; Identified as code statement kind: Expression

;statement_

( ; from write_statement_entry
kb::write-s0-expression :|_=_generic|  :|@%_test-arg-vec-calls|  :|^->0-1|  :|^->0-2| 
) ;implicit end form before nested...

(kb::enter-nested-form :|^<-0-1|)
( ; nested-form-body_ 
  kb::write-anon-fdef  :|_%_:fdef| 

(prin1-to-string '(
progn ; sig ...
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcg_add_empty_lambda_channel| kcg)
(setq kto (ka::kc :|kcm_type_object_from_channel_group| kcg))))

  :|^->1-1| 
) ;implicit end form before nested...

(kb::enter-nested-form :|^<-1-1|)
( ; nested-form-body_ 
 kb::write-plene-block 
;block_

;; fn body
(kb::write-enter-plebod)
(kb::write-enter-plene-block)

(kb::write-enter-scope)


 ;; Identified as code statement kind: Expression

;statement_

( ; from write_statement_entry
kb::write-s0-expression :|_=_generic|  :|@%_prn|  :|#__u32|  :|###78| 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)
(kb::write-leave-scope)

(kb::write-leave-plene-block)

;_plene_block
 ; nothing nested...
 
) ; _nested-form-body (despite parent closed) 

(kb::leave-nested-form)
 
 ; _nested-form-body (lisp form already closed) 

(kb::leave-nested-form)

(kb::enter-nested-form :|^<-0-2|)
( ; nested-form-body_ 
  kb::write-anon-fdef  :|_%_:fdef| 

(prin1-to-string '(
progn ; sig ...
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcg_add_empty_lambda_channel| kcg)
(setq kto (ka::kc :|kcm_type_object_from_channel_group| kcg))))

  :|^->1-1| 
) ;implicit end form before nested...

(kb::enter-nested-form :|^<-1-1|)
( ; nested-form-body_ 
 kb::write-plene-block 
;block_

;; fn body
(kb::write-enter-plebod)
(kb::write-enter-plene-block)

(kb::write-enter-scope)


 ;; Identified as code statement kind: Expression

;statement_

( ; from write_statement_entry
kb::write-s0-expression :|_=_generic|  :|@%_prn|  :|#__u32|  :|###79| 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)
(kb::write-leave-scope)

(kb::write-leave-plene-block)

;_plene_block
 ; nothing nested...
 
) ; _nested-form-body (despite parent closed) 

(kb::leave-nested-form)
 
 ; _nested-form-body (lisp form already closed) 

(kb::leave-nested-form)

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)

(kb::write-file-end)
