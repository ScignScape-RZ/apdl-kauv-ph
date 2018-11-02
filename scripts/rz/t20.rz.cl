
(kb::write-file-start)


 ;; Identified as code statement kind: Type Declaration


;;type decl 
( ; write_unmediated_ 
 kb::write-qreg-type-binding-statement  :|@#_fnd|  :|_#_:TYPE-DECL|  :|@__Fn_Doc*| 
 ; nothing nested...
) ; _write_unmediated 


 ;; Identified as code statement kind: Assignment

;statement_

( ; from write_statement_entry
 kb::symbol-init-via-type  :|@#_fnd| 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)

 ;; Identified as code statement kind: Type Declaration


;;type decl 
( ; write_unmediated_ 
 kb::write-qreg-type-binding-statement  :|@#_kenv|  :|_#_:TYPE-DECL|  :|@__KCM_Env*| 
 ; nothing nested...
) ; _write_unmediated 


 ;; Identified as code statement kind: Assignment

 ;;- tb_
(kb::write-s0-expression :|_=_generic|  ; for assignment ... 
  ; nested for assignment ... 
  :|@%_envv|  :|#__str|  "\"KCM_Env*\"" 
 ; nothing nested...

 ; nothing nested...

 ) ; end nested assignment expression ... 
 
(kb::write-promote-type-binding-expression :|@#_kenv|)
(kb::write-cmd-eval)
(kb::write-statement-clear)
;statement_

( ; from write_statement_entry
 kb::write-s1-expression  :|%%_init|  :|@@_fnd|  :|@#_kenv| 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)

 ;; Identified as code statement kind: Type Declaration


;;type decl 
( ; write_unmediated_ 
 kb::write-qreg-type-binding-statement  :|@#_test-fn|  :|_#_:TYPE-DECL|  :|_%_:fdef| 

(prin1-to-string '(
progn ; sig ...
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcg_add_empty_lambda_channel| kcg)
(setq kto (ka::kc :|kcm_type_object_from_channel_group| kcg))))

 
 ; nothing nested...
) ; _write_unmediated (with prin1; no block) 

;statement_

( ; from write_statement_entry
 kb::write-s1-expression  :|%%_read|  :|@@_fnd|  :|#__str|  "\"test-fn\"" 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)

(kb::write-file-end)
