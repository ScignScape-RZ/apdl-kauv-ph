
(kb::write-file-start)


 ;; Identified as code statement kind: Type Declaration


;;type decl 
( ; write_unmediated_ 
 kb::write-qreg-type-binding-statement  :|@#_fnm|  :|_#_:TYPE-DECL|  :|@__Fn_Doc_Multi*| 
 ; nothing nested...
) ; _write_unmediated 


 ;; Identified as code statement kind: Assignment

;statement_

( ; from write_statement_entry
 kb::symbol-init-via-type  :|@#_fnm| 
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
  :|@%_envv|  :|%%__$| 
 ; nothing nested...

 ; nothing nested...

 ) ; end nested assignment expression ... 
 
(kb::write-promote-type-binding-expression :|@#_kenv|)
(kb::write-cmd-eval)
(kb::write-statement-clear)
;statement_

( ; from write_statement_entry
 kb::write-s1-expression  :|%%_init|  :|@@_fnm|  :|@#_kenv| 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)

 ;; Identified as code statement kind: Type Declaration


;;type decl 
( ; write_unmediated_ 
 kb::write-qreg-type-binding-statement  :|@#_play_sample|  :|_#_:TYPE-DECL|  :|_%_:fdef| 

(prin1-to-string '(
progn ; sig ...
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcg_add_sigma_carrier_via_type_name| kcg "ScignStage_Audio_Dialog*")
(ka::kc :|kcg_add_lambda_carrier_via_type_name| kcg "int")
(setq kto (ka::kc :|kcm_type_object_from_channel_group| kcg))))

 
 ; nothing nested...
) ; _write_unmediated (with prin1; no block) 


 ;; Identified as code statement kind: Type Declaration


;;type decl 
( ; write_unmediated_ 
 kb::write-qreg-type-binding-statement  :|@#_test_msgbox|  :|_#_:TYPE-DECL|  :|_%_:fdef| 

(prin1-to-string '(
progn ; sig ...
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcg_add_sigma_carrier_via_type_name| kcg "ScignStage_Audio_Dialog*")
(ka::kc :|kcg_add_lambda_carrier_via_type_name| kcg "QString")
(setq kto (ka::kc :|kcm_type_object_from_channel_group| kcg))))

 
 ; nothing nested...
) ; _write_unmediated (with prin1; no block) 


 ;; Identified as code statement kind: Type Declaration


;;type decl 
( ; write_unmediated_ 
 kb::write-qreg-type-binding-statement  :|@#_play_next_sample|  :|_#_:TYPE-DECL|  :|_%_:fdef| 

(prin1-to-string '(
progn ; sig ...
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcg_add_sigma_carrier_via_type_name| kcg "ScignStage_Audio_Dialog*")
(setq kto (ka::kc :|kcm_type_object_from_channel_group| kcg))))

 
 ; nothing nested...
) ; _write_unmediated (with prin1; no block) 


 ;; Identified as code statement kind: Type Declaration


;;type decl 
( ; write_unmediated_ 
 kb::write-qreg-type-binding-statement  :|@#_play_next_sample_in_peer_group|  :|_#_:TYPE-DECL|  :|_%_:fdef| 

(prin1-to-string '(
progn ; sig ...
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcg_add_sigma_carrier_via_type_name| kcg "ScignStage_Audio_Dialog*")
(setq kto (ka::kc :|kcm_type_object_from_channel_group| kcg))))

 
 ; nothing nested...
) ; _write_unmediated (with prin1; no block) 


 ;; Identified as code statement kind: Type Declaration


;;type decl 
( ; write_unmediated_ 
 kb::write-qreg-type-binding-statement  :|@#_play_previous_sample|  :|_#_:TYPE-DECL|  :|_%_:fdef| 

(prin1-to-string '(
progn ; sig ...
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcg_add_sigma_carrier_via_type_name| kcg "ScignStage_Audio_Dialog*")
(setq kto (ka::kc :|kcm_type_object_from_channel_group| kcg))))

 
 ; nothing nested...
) ; _write_unmediated (with prin1; no block) 


 ;; Identified as code statement kind: Type Declaration


;;type decl 
( ; write_unmediated_ 
 kb::write-qreg-type-binding-statement  :|@#_play_previous_sample_in_peer_group|  :|_#_:TYPE-DECL|  :|_%_:fdef| 

(prin1-to-string '(
progn ; sig ...
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcg_add_sigma_carrier_via_type_name| kcg "ScignStage_Audio_Dialog*")
(setq kto (ka::kc :|kcm_type_object_from_channel_group| kcg))))

 
 ; nothing nested...
) ; _write_unmediated (with prin1; no block) 


 ;; Identified as code statement kind: Type Declaration


;;type decl 
( ; write_unmediated_ 
 kb::write-qreg-type-binding-statement  :|@#_show_sentence_text|  :|_#_:TYPE-DECL|  :|_%_:fdef| 

(prin1-to-string '(
progn ; sig ...
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcg_add_sigma_carrier_via_type_name| kcg "ScignStage_Audio_Dialog*")
(ka::kc :|kcg_add_lambda_carrier_via_type_name| kcg "int")
(setq kto (ka::kc :|kcm_type_object_from_channel_group| kcg))))

 
 ; nothing nested...
) ; _write_unmediated (with prin1; no block) 


 ;; Identified as code statement kind: Type Declaration


;;type decl 
( ; write_unmediated_ 
 kb::write-qreg-type-binding-statement  :|@#_show_distractor_text|  :|_#_:TYPE-DECL|  :|_%_:fdef| 

(prin1-to-string '(
progn ; sig ...
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcg_add_sigma_carrier_via_type_name| kcg "ScignStage_Audio_Dialog*")
(ka::kc :|kcg_add_lambda_carrier_via_type_name| kcg "int")
(setq kto (ka::kc :|kcm_type_object_from_channel_group| kcg))))

 
 ; nothing nested...
) ; _write_unmediated (with prin1; no block) 


 ;; Identified as code statement kind: Type Declaration


;;type decl 
( ; write_unmediated_ 
 kb::write-qreg-type-binding-statement  :|@#_highlight_sample|  :|_#_:TYPE-DECL|  :|_%_:fdef| 

(prin1-to-string '(
progn ; sig ...
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcg_add_sigma_carrier_via_type_name| kcg "ScignStage_Audio_Dialog*")
(ka::kc :|kcg_add_lambda_carrier_via_type_name| kcg "int")
(setq kto (ka::kc :|kcm_type_object_from_channel_group| kcg))))

 
 ; nothing nested...
) ; _write_unmediated (with prin1; no block) 


 ;; Identified as code statement kind: Type Declaration


;;type decl 
( ; write_unmediated_ 
 kb::write-qreg-type-binding-statement  :|@#_highlight_peers|  :|_#_:TYPE-DECL|  :|_%_:fdef| 

(prin1-to-string '(
progn ; sig ...
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcg_add_sigma_carrier_via_type_name| kcg "ScignStage_Audio_Dialog*")
(ka::kc :|kcg_add_lambda_carrier_via_type_name| kcg "int")
(setq kto (ka::kc :|kcm_type_object_from_channel_group| kcg))))

 
 ; nothing nested...
) ; _write_unmediated (with prin1; no block) 

;statement_

( ; from write_statement_entry
 kb::write-s1-expression  :|%%_read|  :|@@_fnm|  :|#__str|  "\"play_sample\"" 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)
;statement_

( ; from write_statement_entry
 kb::write-s1-expression  :|%%_read|  :|@@_fnm|  :|#__str|  "\"test_msgbox\"" 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)
;statement_

( ; from write_statement_entry
 kb::write-s1-expression  :|%%_read|  :|@@_fnm|  :|#__str|  "\"play_next_sample\"" 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)
;statement_

( ; from write_statement_entry
 kb::write-s1-expression  :|%%_read|  :|@@_fnm|  :|#__str|  "\"play_next_sample_in_peer_group\"" 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)
;statement_

( ; from write_statement_entry
 kb::write-s1-expression  :|%%_read|  :|@@_fnm|  :|#__str|  "\"play_previous_sample\"" 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)
;statement_

( ; from write_statement_entry
 kb::write-s1-expression  :|%%_read|  :|@@_fnm|  :|#__str|  "\"play_previous_sample_in_peer_group\"" 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)
;statement_

( ; from write_statement_entry
 kb::write-s1-expression  :|%%_read|  :|@@_fnm|  :|#__str|  "\"show_sentence_text\"" 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)
;statement_

( ; from write_statement_entry
 kb::write-s1-expression  :|%%_read|  :|@@_fnm|  :|#__str|  "\"show_distractor_text\"" 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)
;statement_

( ; from write_statement_entry
 kb::write-s1-expression  :|%%_read|  :|@@_fnm|  :|#__str|  "\"highlight_sample\"" 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)
;statement_

( ; from write_statement_entry
 kb::write-s1-expression  :|%%_read|  :|@@_fnm|  :|#__str|  "\"highlight_peers\"" 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)
;statement_

( ; from write_statement_entry
 kb::write-s1-expression  :|%%_kph-gen-multi|  :|@@_fnm|  :|#__str|  "\"@/cpp/kph/gen-multi/t1.kph\"" 
 ; nothing nested...

);_statement

(kb::write-promote-expression)
(kb::write-cmd-eval)
(kb::write-statement-clear)

(kb::write-file-end)
