
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
(ka::kc :|kcm_kcg_add_fuxe_carrier| kcg kto  "let_num") 
(ka::kc :|kcg_lambda_carrier_from_result_channel| kcg 0 1)

(setq kcx (ka::kc :|kcm_dissolve_to_nested_expression| kcg))
(ka::kc :|kcm_prepare_nested_expression| kcx 0 1)
(ka::kc :|_kcm_hold_opaque_lisp_value| :|#hold<0-1>| 
'( +  9  4 )
) ;_hold 

(ka::kc :|kcm_finalize_nested_form_group| kcx)

(ka::kc :|kcg_clear_all| kcg)

(setq kcs (ka::kc :|kcm_promote_type_binding_to_statement_with_expression| "x" kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcm_kcg_add_fuxe_carrier| kcg kto  "prn")
(ka::kc :|kcg_add_lambda_carrier_via_scoped_symbol| kcg "x")
(setq kcx (ka::kc :|kcm_dissolve_to_nested_expression| kcg))
(setq kcs (ka::kc :|kcm_promote_expression_to_statement| kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)

;;- _file ...


)
