
(kb::write-file-start)


 ;; Identified as code statement kind: Expression

;statement_

( ; from write_statement_entry
kb::write-s0-expression :|_=_generic|  :|@%_prn|  :|^->0-1| 
) ;implicit end form before nested...

(kb::enter-nested-form :|^<-0-1|)
( ; nested-form-body_ 
 kb::prepare-expression :|_%_:lc-f| :|@%_+|  :|#__u32|  :|###2|  :|#__u32|  :|###3| 
 ; nothing nested...
 
) ; _nested-form-body 

(kb::leave-nested-form)

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)

(kb::write-file-end)
