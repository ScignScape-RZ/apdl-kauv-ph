
(kb::write-file-start)


 ;; Identified as code statement kind: Type Declaration


;;type decl 
( ; write_unmediated_ 
 kb::write-qreg-type-binding-statement  :|@#_x|  :|_#_:TYPE-DECL|  :|@__int| 
 ; nothing nested...
) ; _write_unmediated 


 ;; Identified as code statement kind: Assignment

 ;;- tb_
(kb::write-s0-expression :|_=_generic|  ; for assignment ... 
  ; nested for assignment ... 
  :|@%_test-find|  :|#__str|  "\"abcdef\""  :|#__str|  "\"de\"" 
 ; nothing nested...

 ; nothing nested...

 ) ; end nested assignment expression ... 
 
(kb::write-promote-type-binding-expression :|@#_x|)
(kb::write-cmd-eval)
(kb::write-statement-clear)

 ;; Identified as code statement kind: Expression

;statement_

( ; from write_statement_entry
kb::write-s0-expression :|_=_generic|  :|@%_if-t-e|  :|^->0-1|  :|^->0-2|  :|^->0-3|  :|^->0-4| 
) ;implicit end form before nested...

(kb::enter-nested-form :|_%_defer| :|###14| :|^<-0-1|)
( ; nested-form-body_ 
 kb::hold-deferred 14 '(progn (;; annotation_flag_ deferred ...
kb::prepare-expression :|_%_:lc-f| :|@%_equal|  :|@#_x|  :|#__u32|  :|###3| 
 ; nothing nested...

)) ;; ... annotation_flag_ deferred
 
) ; _nested-form-body 

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
kb::write-s0-expression :|_=_generic|  :|@%_lr|  :|^->0-1| 
) ;implicit end form before nested...

(kb::enter-nested-form :|_%_defer| :|###15| :|^<-0-1|)
( ; nested-form-body_ 
 kb::hold-deferred 15 '(progn (;; annotation_flag_ deferred ...
kb::prepare-expression :|_%_:lc-f| :|@%_format|  :|%%_t|  :|#__str|  "\"Found: ~a~%\""  :|@#_x| 
 ; nothing nested...

)) ;; ... annotation_flag_ deferred
 
) ; _nested-form-body 

(kb::leave-nested-form)

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)

 ;; Identified as code statement kind: Expression

;statement_

( ; from write_statement_entry
kb::write-s0-expression :|_=_generic|  :|@%_prs|  :|#__str|  "\"OK\"" 
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

(kb::enter-nested-form :|_%_defer| :|###16| :|^<-0-3|)
( ; nested-form-body_ 
 kb::hold-deferred 16 '(progn (;; annotation_flag_ deferred ...
kb::prepare-expression :|_%_:lc-f| :|@%_values|  :|%%_t| 
 ; nothing nested...

)) ;; ... annotation_flag_ deferred
 
) ; _nested-form-body 

(kb::leave-nested-form)

(kb::enter-nested-form :|^<-0-4|)
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

;statement_

( ; from write_statement_entry
kb::write-s0-expression :|_=_generic|  :|@%_prs|  :|#__str|  "\"Not Found\"" 
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

 ;; Identified as code statement kind: Expression

;statement_

( ; from write_statement_entry
kb::write-s0-expression :|_=_generic|  :|@%_lr|  :|^->0-1| 
) ;implicit end form before nested...

(kb::enter-nested-form :|_%_defer| :|###17| :|^<-0-1|)
( ; nested-form-body_ 
 kb::hold-deferred 17 '(progn (;; annotation_flag_ deferred ...
kb::prepare-expression :|_%_:lc-f| :|@%_format|  :|%%_t|  :|#__str|  "\"review, x = ~a~%\""  :|@#_x| 
 ; nothing nested...

)) ;; ... annotation_flag_ deferred
 
) ; _nested-form-body 

(kb::leave-nested-form)

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)

 ;; Identified as code statement kind: Expression

;statement_

( ; from write_statement_entry
kb::write-s0-expression :|_=_generic|  :|@%_prs|  :|#__str|  "\"done.\"" 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)

(kb::write-file-end)
