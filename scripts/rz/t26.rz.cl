
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
  :|@%_test-find|  :|#__str|  "\"abcdef\""  :|#__str|  "\"cd\"" 
 ; nothing nested...

 ; nothing nested...

 ) ; end nested assignment expression ... 
 
(kb::write-promote-type-binding-expression :|@#_x|)
(kb::write-cmd-eval)
(kb::write-statement-clear)

 ;; Identified as code statement kind: Expression

;statement_

( ; from write_statement_entry
kb::write-s0-expression :|_=_generic|  :|@%_prn|  :|@#_x| 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)

(kb::write-file-end)
