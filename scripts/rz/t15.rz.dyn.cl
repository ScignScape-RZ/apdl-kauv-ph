
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

(ka::kc :|kcm_kcg_add_fuxe_carrier| kcg kto  "test_if_then_else") 
(ka::kc :|kcg_lambda_carrier_from_result_channel| kcg 0 1)
 
(ka::kc :|kcg_lambda_carrier_from_result_channel| kcg 0 2)
 
(ka::kc :|kcg_lambda_carrier_from_result_channel| kcg 0 3)
 
(ka::kc :|kcg_lambda_carrier_from_result_channel| kcg 0 4)

(setq kcx (ka::kc :|kcm_dissolve_to_nested_expression| kcg))
(ka::kc :|kcm_prepare_nested_defer_expression| kcx 7 0 1)
(ka::kc :|kcm_hold_deferred| 7 '(progn 
;; held ...

(ka::kc :|_kcm_hold_opaque_lisp_value| :|#hold<0-1>| 
'( equal  4  5 )
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
(ka::kc :|kcm_kcg_add_fuxe_carrier| kcg kto  "prn")
(setq kto (ka::kc :|kcm_type_object__u32|))
(ka::kc :|kcg_add_lambda_carrier_via_typed_literal| kcg kto "78")
(setq kcx (ka::kc :|kcm_dissolve_to_nested_expression| kcg))
(setq kcs (ka::kc :|kcm_promote_expression_to_statement| kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcm_leave_runtime_scope|) 
) ; _plene_block
 )) (ka::kc :|kcm_finalize_fdef| ksf "<anon>1-1") ; ... plene

(ka::kc :|kcm_prepare_nested_defer_expression| kcx 8 0 3)
(ka::kc :|kcm_hold_deferred| 8 '(progn 
;; held ...

(ka::kc :|_kcm_hold_opaque_lisp_value| :|#hold<0-3>| 
'( equal  4  4 )
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
(ka::kc :|kcm_kcg_add_fuxe_carrier| kcg kto  "prn")
(setq kto (ka::kc :|kcm_type_object__u32|))
(ka::kc :|kcg_add_lambda_carrier_via_typed_literal| kcg kto "79")
(setq kcx (ka::kc :|kcm_dissolve_to_nested_expression| kcg))
(setq kcs (ka::kc :|kcm_promote_expression_to_statement| kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcm_leave_runtime_scope|) 
) ; _plene_block
 )) (ka::kc :|kcm_finalize_fdef| ksf "<anon>1-1") ; ... plene

(ka::kc :|kcm_finalize_nested_form_group| kcx)

(ka::kc :|kcg_clear_all| kcg)

(ka::kc :|kcm_finalize_nested_form_group| kcx)

(ka::kc :|kcg_clear_all| kcg)

(setq kcs (ka::kc :|kcm_promote_expression_to_statement| kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)

;;- _file ...


)
