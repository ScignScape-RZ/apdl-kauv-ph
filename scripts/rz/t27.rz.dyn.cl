
;;- file_ ...

(let (
 (kcg)
 (kcf)
 (ksf)
 (kcs)
 (kto)
 (ckto)
 (kcb)
 (kcx)
 (oli)
 (kcm-code)
 (cmd-pkg)
 )
(setq kcg (ka::kc :|new_KCM_Channel_Group|) )
(setq kto (ka::kc :|kcm_type_object__u64|) )
(setq kcf (ka::kc :|kcm_create_and_enter_file| "<dynamic>"))

(setq kto (ka::kc :|kcm_type_object_by_qregistered_type_name| "int") )
(ka::kc :|kcm_add_type_binding| "x" kto)
(ka::kc :|kcm_kcg_add_fuxe_carrier| kcg kto  "test_find")
(setq kto (ka::kc :|kcm_type_object__str|))
(ka::kc :|kcg_add_lambda_carrier_via_typed_literal| kcg kto "abcdef")
(setq kto (ka::kc :|kcm_type_object__str|))
(ka::kc :|kcg_add_lambda_carrier_via_typed_literal| kcg kto "cd")
(setq kcx (ka::kc :|kcm_dissolve_to_nested_expression| kcg))
(setq kcs (ka::kc :|kcm_promote_type_binding_to_statement_with_expression| "x" kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcm_kcg_add_fuxe_carrier| kcg kto  "if_t_e") 
(ka::kc :|kcg_lambda_carrier_from_result_channel| kcg 0 1)
 
(ka::kc :|kcg_lambda_carrier_from_result_channel| kcg 0 2)
 
(ka::kc :|kcg_lambda_carrier_from_result_channel| kcg 0 3)
 
(ka::kc :|kcg_lambda_carrier_from_result_channel| kcg 0 4)

(setq kcx (ka::kc :|kcm_dissolve_to_nested_expression| kcg))
(ka::kc :|kcm_prepare_nested_defer_expression| kcx 9 0 1)
(ka::kc :|kcm_hold_deferred| 9 '(progn 
;; held ...

(ka::kc :|_kcm_hold_opaque_lisp_value| :|#hold<0-1>| 
'( equal  (ka::ivof "x")  -1 )
) ;_hold 

));; ... held 


(ka::kc :|kcm_prepare_nested_expression| kcx 0 2)

; fn_sig_ ...
(PROGN
 (KA::KC :|kcg_clear_all| KCG)
 (KA::KC :|kcg_add_empty_lambda_channel| KCG)
 (SETQ KTO (KA::KC :|kcm_type_object_from_channel_group| KCG)))

; _fn_sig ...

(ka::kc :|kcm_prepare_anon_fdef_expression| kto "<anon>1-1")

(ka::kc :|kcm_kcg_add_lambda_carrier_of_anon_fdef| kcg "<anon>1-1")
(ka::kc :|kcm_enter_plebod|) 
(setq ksf (lambda (|_@:bridge|) ; lambda plene_block_
(let (
 (kcg)
 (kcf)
 (ksf)
 (kcs)
 (kto)
 (ckto)
 (kcb)
 (kcx)
 (oli)
 (kcm-code)
 (cmd-pkg)
 )
(setq kcg (ka::kc :|new_KCM_Channel_Group|) )
(setq kto (ka::kc :|kcm_type_object__u64|) )
(ka::kc :|_kcm_load_bridge| :|#bridge<1>| |_@:bridge|)
(ka::kc :|kcm_enter_runtime_scope|) 
(ka::kc :|kcm_kcg_add_fuxe_carrier| kcg kto  "prs")
(setq kto (ka::kc :|kcm_type_object__str|))
(ka::kc :|kcg_add_lambda_carrier_via_typed_literal| kcg kto "Not Found")
(setq kcx (ka::kc :|kcm_dissolve_to_nested_expression| kcg))
(setq kcs (ka::kc :|kcm_promote_expression_to_statement| kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcm_leave_runtime_scope|) 
) ; _plene_block
 )) (ka::kc :|kcm_finalize_fdef| ksf "<anon>1-1") ; ... plene

(ka::kc :|kcm_prepare_nested_defer_expression| kcx 10 0 3)
(ka::kc :|kcm_hold_deferred| 10 '(progn 
;; held ...

(ka::kc :|_kcm_hold_opaque_lisp_value| :|#hold<0-3>| 
'( values  t )
) ;_hold 

));; ... held 


(ka::kc :|kcm_prepare_nested_expression| kcx 0 4)

; fn_sig_ ...
(PROGN
 (KA::KC :|kcg_clear_all| KCG)
 (KA::KC :|kcg_add_empty_lambda_channel| KCG)
 (SETQ KTO (KA::KC :|kcm_type_object_from_channel_group| KCG)))

; _fn_sig ...

(ka::kc :|kcm_prepare_anon_fdef_expression| kto "<anon>1-1")

(ka::kc :|kcm_kcg_add_lambda_carrier_of_anon_fdef| kcg "<anon>1-1")
(ka::kc :|kcm_enter_plebod|) 
(setq ksf (lambda (|_@:bridge|) ; lambda plene_block_
(let (
 (kcg)
 (kcf)
 (ksf)
 (kcs)
 (kto)
 (ckto)
 (kcb)
 (kcx)
 (oli)
 (kcm-code)
 (cmd-pkg)
 )
(setq kcg (ka::kc :|new_KCM_Channel_Group|) )
(setq kto (ka::kc :|kcm_type_object__u64|) )
(ka::kc :|_kcm_load_bridge| :|#bridge<1>| |_@:bridge|)
(ka::kc :|kcm_enter_runtime_scope|) 
(ka::kc :|kcm_kcg_add_fuxe_carrier| kcg kto  "lr") 
(ka::kc :|kcg_lambda_carrier_from_result_channel| kcg 0 1)

(setq kcx (ka::kc :|kcm_dissolve_to_nested_expression| kcg))
(ka::kc :|kcm_prepare_nested_defer_expression| kcx 11 0 1)
(ka::kc :|kcm_hold_deferred| 11 '(progn 
;; held ...

(ka::kc :|_kcm_hold_opaque_lisp_value| :|#hold<0-1>| 
'( format  t  "Found: ~a~%"  (ka::ivof "x") )
) ;_hold 

));; ... held 


(setq kcs (ka::kc :|kcm_promote_expression_to_statement| kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcm_kcg_add_fuxe_carrier| kcg kto  "prs")
(setq kto (ka::kc :|kcm_type_object__str|))
(ka::kc :|kcg_add_lambda_carrier_via_typed_literal| kcg kto "OK")
(setq kcx (ka::kc :|kcm_dissolve_to_nested_expression| kcg))
(setq kcs (ka::kc :|kcm_promote_expression_to_statement| kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcm_leave_runtime_scope|) 
) ; _plene_block
 )) (ka::kc :|kcm_finalize_fdef| ksf "<anon>1-1") ; ... plene

(setq kcs (ka::kc :|kcm_promote_expression_to_statement| kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)

;;- _file ...


)
