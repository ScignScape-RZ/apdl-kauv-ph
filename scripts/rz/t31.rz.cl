
(kb::write-file-start)


 ;; Identified as code statement kind: Expression

;statement_

( ; from write_statement_entry
kb::write-s0-expression :|_=_generic|  :|@%_test-0-ss|  :|#__str|  "\"abcdef\""  :|#__str|  "\"cd\"" 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)

 ;; Identified as code statement kind: Type Declaration


;;type decl 
( ; write_unmediated_ 
 kb::write-qreg-type-binding-statement  :|@#_x2|  :|_#_:TYPE-DECL|  :|@__str| 
 ; nothing nested...
) ; _write_unmediated 


 ;; Identified as code statement kind: Assignment

 ;;- tb_
(kb::write-s0-expression :|_=_generic|  ; for assignment ... 
  ; nested for assignment ... 
  :|@%_test-s-ss|  :|#__str|  "\"abcdef\""  :|#__str|  "\"cd\"" 
 ; nothing nested...

 ; nothing nested...

 ) ; end nested assignment expression ... 
 
(kb::write-promote-type-binding-expression :|@#_x2|)
(kb::write-cmd-eval)
(kb::write-statement-clear)

 ;; Identified as code statement kind: Expression

;statement_

( ; from write_statement_entry
kb::write-s0-expression :|_=_generic|  :|@%_prs|  :|@#_x2| 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)

 ;; Identified as code statement kind: Type Declaration


;;type decl 
( ; write_unmediated_ 
 kb::write-qreg-type-binding-statement  :|@#_x3|  :|_#_:TYPE-DECL|  :|@__int| 
 ; nothing nested...
) ; _write_unmediated 


 ;; Identified as code statement kind: Assignment

 ;;- tb_
(kb::write-s0-expression :|_=_generic|  ; for assignment ... 
  ; nested for assignment ... 
  :|@%_test-i-ss|  :|#__str|  "\"abcdef\""  :|#__str|  "\"cd\"" 
 ; nothing nested...

 ; nothing nested...

 ) ; end nested assignment expression ... 
 
(kb::write-promote-type-binding-expression :|@#_x3|)
(kb::write-cmd-eval)
(kb::write-statement-clear)

 ;; Identified as code statement kind: Expression

;statement_

( ; from write_statement_entry
kb::write-s0-expression :|_=_generic|  :|@%_prn|  :|@#_x3| 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)

 ;; Identified as code statement kind: Expression

;statement_

( ; from write_statement_entry
kb::write-s0-expression :|_=_generic|  :|@%_test-0-s|  :|#__str|  "\"abcdef\"" 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)

 ;; Identified as code statement kind: Type Declaration


;;type decl 
( ; write_unmediated_ 
 kb::write-qreg-type-binding-statement  :|@#_x5|  :|_#_:TYPE-DECL|  :|@__str| 
 ; nothing nested...
) ; _write_unmediated 


 ;; Identified as code statement kind: Assignment

 ;;- tb_
(kb::write-s0-expression :|_=_generic|  ; for assignment ... 
  ; nested for assignment ... 
  :|@%_test-s-s|  :|#__str|  "\"abcdef\"" 
 ; nothing nested...

 ; nothing nested...

 ) ; end nested assignment expression ... 
 
(kb::write-promote-type-binding-expression :|@#_x5|)
(kb::write-cmd-eval)
(kb::write-statement-clear)

 ;; Identified as code statement kind: Expression

;statement_

( ; from write_statement_entry
kb::write-s0-expression :|_=_generic|  :|@%_prs|  :|@#_x5| 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)

 ;; Identified as code statement kind: Type Declaration


;;type decl 
( ; write_unmediated_ 
 kb::write-qreg-type-binding-statement  :|@#_x6|  :|_#_:TYPE-DECL|  :|@__int| 
 ; nothing nested...
) ; _write_unmediated 


 ;; Identified as code statement kind: Assignment

 ;;- tb_
(kb::write-s0-expression :|_=_generic|  ; for assignment ... 
  ; nested for assignment ... 
  :|@%_test-i-s|  :|#__str|  "\"abcdef\"" 
 ; nothing nested...

 ; nothing nested...

 ) ; end nested assignment expression ... 
 
(kb::write-promote-type-binding-expression :|@#_x6|)
(kb::write-cmd-eval)
(kb::write-statement-clear)

 ;; Identified as code statement kind: Expression

;statement_

( ; from write_statement_entry
kb::write-s0-expression :|_=_generic|  :|@%_prn|  :|@#_x6| 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)

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
;statement_

( ; from write_statement_entry
 kb::write-s1-expression  :|%%_test-0-S10-s|  :|@@_fnd|  :|#__str|  "\"abcd\"" 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)

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
;statement_

( ; from write_statement_entry
 kb::write-s1-expression  :|%%_test-0-S10|  :|@@_fnd| 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)

(kb::write-file-end)
