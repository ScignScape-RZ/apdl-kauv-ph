
(kb::write-file-start)


 ;; Identified as code statement kind: Expression

;statement_

( ; from write_statement_entry
kb::write-s0-expression :|_=_generic|  :|@%_test-dfr|  :|^->0-1|  :|^->0-2| 
) ;implicit end form before nested...

(kb::enter-nested-form :|_%_defer| :|###3| :|^<-0-1|)
( ; nested-form-body_ 
 kb::hold-deferred 3 '(progn (;; annotation_flag_ deferred ...
kb::prepare-expression :|_%_:lc-f| :|@%_+|  :|#__u32|  :|###2|  :|#__u32|  :|###3| 
 ; nothing nested...

)) ;; ... annotation_flag_ deferred
 
) ; _nested-form-body 

(kb::leave-nested-form)

(kb::enter-nested-form :|_%_defer| :|###4| :|^<-0-2|)
( ; nested-form-body_ 
 kb::hold-deferred 4 '(progn (;; annotation_flag_ deferred ...
kb::prepare-expression :|_%_:lc-f| :|@%_+|  :|#__u32|  :|###5|  :|#__u32|  :|###6| 
 ; nothing nested...

)) ;; ... annotation_flag_ deferred
 
) ; _nested-form-body 

(kb::leave-nested-form)

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)

(kb::write-file-end)
