
 (kb::write-file-start) 
 (kb::write-s0-expression :|_=_generic| :|@%_test-dfr| :|^->0-1| :|^->0-2|) 
 (kb::enter-nested-form :|_%_defer| :|###3| :|^<-0-1|) 
 (kb::hold-deferred 3 ' 
  (progn 
   (kb::prepare-expression :|_%_:lc-f| :|@%_+| :|#__u32| :|###2| :|#__u32| :|###3|))) 
 (kb::leave-nested-form) 
 (kb::enter-nested-form :|_%_defer| :|###4| :|^<-0-2|) 
 (kb::hold-deferred 4 ' 
  (progn 
   (kb::prepare-expression :|_%_:lc-f| :|@%_+| :|#__u32| :|###5| :|#__u32| :|###6|))) 
 (kb::leave-nested-form) 
 (kb::write-promote-expression) 
 (kb::write-cmd-eval) 
 (kb::write-statement-clear) 
 (kb::write-file-end)