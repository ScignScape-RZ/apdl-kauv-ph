
 (kb::write-file-start) 
 (kb::write-s0-expression :|_=_generic| :|@%_lr| :|^->0-1|) 
 (kb::enter-nested-form :|_%_defer| :|###12| :|^<-0-1|) 
 (kb::hold-deferred 12 ' 
  (progn 
   (kb::prepare-expression :|_%_:lc-f| :|@%_format| :|%%_t| :|#__str| "\"Found: ~a~%\"" :|#__u32| :|###77|))) 
 (kb::leave-nested-form) 
 (kb::write-promote-expression) 
 (kb::write-cmd-eval) 
 (kb::write-statement-clear) 
 (kb::write-file-end)