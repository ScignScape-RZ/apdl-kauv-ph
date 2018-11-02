
(kb::write-file-start)


 ;; Identified as code statement kind: Expression

;statement_

( ; from write_statement_entry
kb::write-s0-expression :|_=_generic|  :|@%_lr|  :|^->0-1| 
) ;implicit end form before nested...

(kb::enter-nested-form :|_%_defer| :|###12| :|^<-0-1|)
( ; nested-form-body_ 
 kb::hold-deferred 12 '(progn (;; annotation_flag_ deferred ...
kb::prepare-expression :|_%_:lc-f| :|@%_format|  :|%%_t|  :|#__str|  "\"Found: ~a~%\""  :|#__u32|  :|###77| 
 ; nothing nested...

)) ;; ... annotation_flag_ deferred
 
) ; _nested-form-body 

(kb::leave-nested-form)

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)

(kb::write-file-end)
