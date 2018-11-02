
 (kb::write-file-start) 
 (kb::write-qreg-type-binding-statement :|@#_fnd| :|_#_:TYPE-DECL| :|@__Fn_Doc*|) 
 (kb::symbol-init-via-type :|@#_fnd|) 
 (kb::write-promote-expression) 
 (kb::write-cmd-eval) 
 (kb::write-statement-clear) 
 (kb::write-qreg-type-binding-statement :|@#_kenv| :|_#_:TYPE-DECL| :|@__KCM_Env*|) 
 (kb::write-s0-expression :|_=_generic| :|@%_envv| :|%%__$|) 
 (kb::write-promote-type-binding-expression :|@#_kenv|) 
 (kb::write-cmd-eval) 
 (kb::write-statement-clear) 
 (kb::write-s1-expression :|%%_init| :|@@_fnd| :|@#_kenv|) 
 (kb::write-promote-expression) 
 (kb::write-cmd-eval) 
 (kb::write-statement-clear) 
 (kb::write-qreg-type-binding-statement :|@#_play_sample| :|_#_:TYPE-DECL| :|_%_:fdef| 
  (prin1-to-string ' 
   (progn 
    (ka::kc :|kcg_clear_all| kcg) 
    (ka::kc :|kcg_add_sigma_carrier_via_type_name| kcg "ScignStage_Audio_Dialog*") 
    (ka::kc :|kcg_add_lambda_carrier_via_type_name| kcg "int") 
    (setq kto 
     (ka::kc :|kcm_type_object_from_channel_group| kcg))))) 
 (kb::write-s1-expression :|%%_kph-gen| :|@@_fnd| :|#__str| "\"play_sample\"" :|#__str| "\"3\"") 
 (kb::write-promote-expression) 
 (kb::write-cmd-eval) 
 (kb::write-statement-clear) 
 (kb::write-file-end)