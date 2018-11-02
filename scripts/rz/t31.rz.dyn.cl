
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

(ka::kc :|kcm_kcg_add_fuxe_carrier| kcg kto  "test_0_ss")
(setq kto (ka::kc :|kcm_type_object__str|))
(ka::kc :|kcg_add_lambda_carrier_via_typed_literal| kcg kto "abcdef")
(setq kto (ka::kc :|kcm_type_object__str|))
(ka::kc :|kcg_add_lambda_carrier_via_typed_literal| kcg kto "cd")
(setq kcx (ka::kc :|kcm_dissolve_to_nested_expression| kcg))
(setq kcs (ka::kc :|kcm_promote_expression_to_statement| kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)
(setq kto (ka::kc :|kcm_type_object_by_qregistered_type_name| "str") )
(ka::kc :|kcm_add_type_binding| "x2" kto)
(ka::kc :|kcm_kcg_add_fuxe_carrier| kcg kto  "test_s_ss")
(setq kto (ka::kc :|kcm_type_object__str|))
(ka::kc :|kcg_add_lambda_carrier_via_typed_literal| kcg kto "abcdef")
(setq kto (ka::kc :|kcm_type_object__str|))
(ka::kc :|kcg_add_lambda_carrier_via_typed_literal| kcg kto "cd")
(setq kcx (ka::kc :|kcm_dissolve_to_nested_expression| kcg))
(setq kcs (ka::kc :|kcm_promote_type_binding_to_statement_with_expression| "x2" kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcm_kcg_add_fuxe_carrier| kcg kto  "prs")
(ka::kc :|kcg_add_lambda_carrier_via_scoped_symbol| kcg "x2")
(setq kcx (ka::kc :|kcm_dissolve_to_nested_expression| kcg))
(setq kcs (ka::kc :|kcm_promote_expression_to_statement| kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)
(setq kto (ka::kc :|kcm_type_object_by_qregistered_type_name| "int") )
(ka::kc :|kcm_add_type_binding| "x3" kto)
(ka::kc :|kcm_kcg_add_fuxe_carrier| kcg kto  "test_i_ss")
(setq kto (ka::kc :|kcm_type_object__str|))
(ka::kc :|kcg_add_lambda_carrier_via_typed_literal| kcg kto "abcdef")
(setq kto (ka::kc :|kcm_type_object__str|))
(ka::kc :|kcg_add_lambda_carrier_via_typed_literal| kcg kto "cd")
(setq kcx (ka::kc :|kcm_dissolve_to_nested_expression| kcg))
(setq kcs (ka::kc :|kcm_promote_type_binding_to_statement_with_expression| "x3" kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcm_kcg_add_fuxe_carrier| kcg kto  "prn")
(ka::kc :|kcg_add_lambda_carrier_via_scoped_symbol| kcg "x3")
(setq kcx (ka::kc :|kcm_dissolve_to_nested_expression| kcg))
(setq kcs (ka::kc :|kcm_promote_expression_to_statement| kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcm_kcg_add_fuxe_carrier| kcg kto  "test_0_s")
(setq kto (ka::kc :|kcm_type_object__str|))
(ka::kc :|kcg_add_lambda_carrier_via_typed_literal| kcg kto "abcdef")
(setq kcx (ka::kc :|kcm_dissolve_to_nested_expression| kcg))
(setq kcs (ka::kc :|kcm_promote_expression_to_statement| kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)
(setq kto (ka::kc :|kcm_type_object_by_qregistered_type_name| "str") )
(ka::kc :|kcm_add_type_binding| "x5" kto)
(ka::kc :|kcm_kcg_add_fuxe_carrier| kcg kto  "test_s_s")
(setq kto (ka::kc :|kcm_type_object__str|))
(ka::kc :|kcg_add_lambda_carrier_via_typed_literal| kcg kto "abcdef")
(setq kcx (ka::kc :|kcm_dissolve_to_nested_expression| kcg))
(setq kcs (ka::kc :|kcm_promote_type_binding_to_statement_with_expression| "x5" kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcm_kcg_add_fuxe_carrier| kcg kto  "prs")
(ka::kc :|kcg_add_lambda_carrier_via_scoped_symbol| kcg "x5")
(setq kcx (ka::kc :|kcm_dissolve_to_nested_expression| kcg))
(setq kcs (ka::kc :|kcm_promote_expression_to_statement| kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)
(setq kto (ka::kc :|kcm_type_object_by_qregistered_type_name| "int") )
(ka::kc :|kcm_add_type_binding| "x6" kto)
(ka::kc :|kcm_kcg_add_fuxe_carrier| kcg kto  "test_i_s")
(setq kto (ka::kc :|kcm_type_object__str|))
(ka::kc :|kcg_add_lambda_carrier_via_typed_literal| kcg kto "abcdef")
(setq kcx (ka::kc :|kcm_dissolve_to_nested_expression| kcg))
(setq kcs (ka::kc :|kcm_promote_type_binding_to_statement_with_expression| "x6" kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcm_kcg_add_fuxe_carrier| kcg kto  "prn")
(ka::kc :|kcg_add_lambda_carrier_via_scoped_symbol| kcg "x6")
(setq kcx (ka::kc :|kcm_dissolve_to_nested_expression| kcg))
(setq kcs (ka::kc :|kcm_promote_expression_to_statement| kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)
(setq kto (ka::kc :|kcm_type_object_by_qregistered_type_name| "Fn_Doc*") )
(ka::kc :|kcm_add_type_binding| "fnd" kto)
(setq kcx (ka::kc :|kcm_promote_type_binding_to_statement_via_type_default_literal__let| kcg "fnd"))
(setq kcs (ka::kc :|kcm_promote_expression_to_statement| kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)
(setq kto (ka::kc :|kcm_type_object_by_qregistered_type_name| "KCM_Env*") )
(ka::kc :|kcm_add_type_binding| "kenv" kto)
(ka::kc :|kcm_kcg_add_fuxe_carrier| kcg kto  "envv")
(setq kto (ka::kc :|kcm_type_object__str|))
(ka::kc :|kcg_add_lambda_carrier_via_typed_literal| kcg kto "KCM_Env*")
(setq kcx (ka::kc :|kcm_dissolve_to_nested_expression| kcg))
(setq kcs (ka::kc :|kcm_promote_type_binding_to_statement_with_expression| "kenv" kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcm_kcg_add_fuxe_carrier| kcg kto  "init")
(ka::kc :|kcg_add_sigma_carrier_via_symbol| kcg "fnd")
(ka::kc :|kcg_add_lambda_carrier_via_scoped_symbol| kcg "kenv")
(setq kcx (ka::kc :|kcm_dissolve_to_nested_expression| kcg))
(setq kcs (ka::kc :|kcm_promote_expression_to_statement| kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcm_kcg_add_fuxe_carrier| kcg kto  "test_0_S10_s")
(ka::kc :|kcg_add_sigma_carrier_via_symbol| kcg "fnd")
(setq kto (ka::kc :|kcm_type_object__str|))
(ka::kc :|kcg_add_lambda_carrier_via_typed_literal| kcg kto "abcd")
(setq kcx (ka::kc :|kcm_dissolve_to_nested_expression| kcg))
(setq kcs (ka::kc :|kcm_promote_expression_to_statement| kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)
(setq kto (ka::kc :|kcm_type_object_by_qregistered_type_name| "Fn_Doc*") )
(ka::kc :|kcm_add_type_binding| "fnd" kto)
(setq kcx (ka::kc :|kcm_promote_type_binding_to_statement_via_type_default_literal__let| kcg "fnd"))
(setq kcs (ka::kc :|kcm_promote_expression_to_statement| kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)
(setq kto (ka::kc :|kcm_type_object_by_qregistered_type_name| "KCM_Env*") )
(ka::kc :|kcm_add_type_binding| "kenv" kto)
(ka::kc :|kcm_kcg_add_fuxe_carrier| kcg kto  "envv")
(setq kto (ka::kc :|kcm_type_object__str|))
(ka::kc :|kcg_add_lambda_carrier_via_typed_literal| kcg kto "KCM_Env*")
(setq kcx (ka::kc :|kcm_dissolve_to_nested_expression| kcg))
(setq kcs (ka::kc :|kcm_promote_type_binding_to_statement_with_expression| "kenv" kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcm_kcg_add_fuxe_carrier| kcg kto  "init")
(ka::kc :|kcg_add_sigma_carrier_via_symbol| kcg "fnd")
(ka::kc :|kcg_add_lambda_carrier_via_scoped_symbol| kcg "kenv")
(setq kcx (ka::kc :|kcm_dissolve_to_nested_expression| kcg))
(setq kcs (ka::kc :|kcm_promote_expression_to_statement| kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)
(ka::kc :|kcm_kcg_add_fuxe_carrier| kcg kto  "test_0_S10")
(ka::kc :|kcg_add_sigma_carrier_via_symbol| kcg "fnd")
(setq kcx (ka::kc :|kcm_dissolve_to_nested_expression| kcg))
(setq kcs (ka::kc :|kcm_promote_expression_to_statement| kcx))
(setq cmd-pkg (ka::kc :|kcm_statement_to_command_package| kcs))
(ka::kc :|kcm_direct_eval| cmd-pkg)
(ka::kc :|kcg_clear_all| kcg)

;;- _file ...


)