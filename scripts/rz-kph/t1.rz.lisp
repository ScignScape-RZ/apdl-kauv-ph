
 (kb::write-file-start) 
 (kb::write-qreg-type-binding-statement :|@#_fnm| :|_#_:TYPE-DECL| :|@__Fn_Doc_Multi*|) 
 (kb::symbol-init-via-type :|@#_fnm|) 
 (kb::write-promote-expression) 
 (kb::write-cmd-eval) 
 (kb::write-statement-clear) 
 (kb::write-qreg-type-binding-statement :|@#_kenv| :|_#_:TYPE-DECL| :|@__KCM_Env*|) 
 (kb::write-s0-expression :|_=_generic| :|@%_envv| :|%%__$|) 
 (kb::write-promote-type-binding-expression :|@#_kenv|) 
 (kb::write-cmd-eval) 
 (kb::write-statement-clear) 
 (kb::write-s1-expression :|%%_init| :|@@_fnm| :|@#_kenv|) 
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
 (kb::write-qreg-type-binding-statement :|@#_test_msgbox| :|_#_:TYPE-DECL| :|_%_:fdef| 
  (prin1-to-string ' 
   (progn 
    (ka::kc :|kcg_clear_all| kcg) 
    (ka::kc :|kcg_add_sigma_carrier_via_type_name| kcg "ScignStage_Audio_Dialog*") 
    (ka::kc :|kcg_add_lambda_carrier_via_type_name| kcg "QString") 
    (setq kto 
     (ka::kc :|kcm_type_object_from_channel_group| kcg))))) 
 (kb::write-qreg-type-binding-statement :|@#_play_next_sample| :|_#_:TYPE-DECL| :|_%_:fdef| 
  (prin1-to-string ' 
   (progn 
    (ka::kc :|kcg_clear_all| kcg) 
    (ka::kc :|kcg_add_sigma_carrier_via_type_name| kcg "ScignStage_Audio_Dialog*") 
    (setq kto 
     (ka::kc :|kcm_type_object_from_channel_group| kcg))))) 
 (kb::write-qreg-type-binding-statement :|@#_play_next_sample_in_peer_group| :|_#_:TYPE-DECL| :|_%_:fdef| 
  (prin1-to-string ' 
   (progn 
    (ka::kc :|kcg_clear_all| kcg) 
    (ka::kc :|kcg_add_sigma_carrier_via_type_name| kcg "ScignStage_Audio_Dialog*") 
    (setq kto 
     (ka::kc :|kcm_type_object_from_channel_group| kcg))))) 
 (kb::write-qreg-type-binding-statement :|@#_play_previous_sample| :|_#_:TYPE-DECL| :|_%_:fdef| 
  (prin1-to-string ' 
   (progn 
    (ka::kc :|kcg_clear_all| kcg) 
    (ka::kc :|kcg_add_sigma_carrier_via_type_name| kcg "ScignStage_Audio_Dialog*") 
    (setq kto 
     (ka::kc :|kcm_type_object_from_channel_group| kcg))))) 
 (kb::write-qreg-type-binding-statement :|@#_play_previous_sample_in_peer_group| :|_#_:TYPE-DECL| :|_%_:fdef| 
  (prin1-to-string ' 
   (progn 
    (ka::kc :|kcg_clear_all| kcg) 
    (ka::kc :|kcg_add_sigma_carrier_via_type_name| kcg "ScignStage_Audio_Dialog*") 
    (setq kto 
     (ka::kc :|kcm_type_object_from_channel_group| kcg))))) 
 (kb::write-qreg-type-binding-statement :|@#_show_sentence_text| :|_#_:TYPE-DECL| :|_%_:fdef| 
  (prin1-to-string ' 
   (progn 
    (ka::kc :|kcg_clear_all| kcg) 
    (ka::kc :|kcg_add_sigma_carrier_via_type_name| kcg "ScignStage_Audio_Dialog*") 
    (ka::kc :|kcg_add_lambda_carrier_via_type_name| kcg "int") 
    (setq kto 
     (ka::kc :|kcm_type_object_from_channel_group| kcg))))) 
 (kb::write-qreg-type-binding-statement :|@#_show_distractor_text| :|_#_:TYPE-DECL| :|_%_:fdef| 
  (prin1-to-string ' 
   (progn 
    (ka::kc :|kcg_clear_all| kcg) 
    (ka::kc :|kcg_add_sigma_carrier_via_type_name| kcg "ScignStage_Audio_Dialog*") 
    (ka::kc :|kcg_add_lambda_carrier_via_type_name| kcg "int") 
    (setq kto 
     (ka::kc :|kcm_type_object_from_channel_group| kcg))))) 
 (kb::write-qreg-type-binding-statement :|@#_highlight_sample| :|_#_:TYPE-DECL| :|_%_:fdef| 
  (prin1-to-string ' 
   (progn 
    (ka::kc :|kcg_clear_all| kcg) 
    (ka::kc :|kcg_add_sigma_carrier_via_type_name| kcg "ScignStage_Audio_Dialog*") 
    (ka::kc :|kcg_add_lambda_carrier_via_type_name| kcg "int") 
    (setq kto 
     (ka::kc :|kcm_type_object_from_channel_group| kcg))))) 
 (kb::write-qreg-type-binding-statement :|@#_highlight_peers| :|_#_:TYPE-DECL| :|_%_:fdef| 
  (prin1-to-string ' 
   (progn 
    (ka::kc :|kcg_clear_all| kcg) 
    (ka::kc :|kcg_add_sigma_carrier_via_type_name| kcg "ScignStage_Audio_Dialog*") 
    (ka::kc :|kcg_add_lambda_carrier_via_type_name| kcg "int") 
    (setq kto 
     (ka::kc :|kcm_type_object_from_channel_group| kcg))))) 
 (kb::write-s1-expression :|%%_read| :|@@_fnm| :|#__str| "\"play_sample\"") 
 (kb::write-promote-expression) 
 (kb::write-cmd-eval) 
 (kb::write-statement-clear) 
 (kb::write-s1-expression :|%%_read| :|@@_fnm| :|#__str| "\"test_msgbox\"") 
 (kb::write-promote-expression) 
 (kb::write-cmd-eval) 
 (kb::write-statement-clear) 
 (kb::write-s1-expression :|%%_read| :|@@_fnm| :|#__str| "\"play_next_sample\"") 
 (kb::write-promote-expression) 
 (kb::write-cmd-eval) 
 (kb::write-statement-clear) 
 (kb::write-s1-expression :|%%_read| :|@@_fnm| :|#__str| "\"play_next_sample_in_peer_group\"") 
 (kb::write-promote-expression) 
 (kb::write-cmd-eval) 
 (kb::write-statement-clear) 
 (kb::write-s1-expression :|%%_read| :|@@_fnm| :|#__str| "\"play_previous_sample\"") 
 (kb::write-promote-expression) 
 (kb::write-cmd-eval) 
 (kb::write-statement-clear) 
 (kb::write-s1-expression :|%%_read| :|@@_fnm| :|#__str| "\"play_previous_sample_in_peer_group\"") 
 (kb::write-promote-expression) 
 (kb::write-cmd-eval) 
 (kb::write-statement-clear) 
 (kb::write-s1-expression :|%%_read| :|@@_fnm| :|#__str| "\"show_sentence_text\"") 
 (kb::write-promote-expression) 
 (kb::write-cmd-eval) 
 (kb::write-statement-clear) 
 (kb::write-s1-expression :|%%_read| :|@@_fnm| :|#__str| "\"highlight_sample\"") 
 (kb::write-promote-expression) 
 (kb::write-cmd-eval) 
 (kb::write-statement-clear) 
 (kb::write-s1-expression :|%%_read| :|@@_fnm| :|#__str| "\"highlight_peers\"") 
 (kb::write-promote-expression) 
 (kb::write-cmd-eval) 
 (kb::write-statement-clear) 
 (kb::write-s1-expression :|%%_kph-gen-multi| :|@@_fnm| :|#__str| "\"@/cpp/kph/gen-multi/t1.txt\"") 
 (kb::write-promote-expression) 
 (kb::write-cmd-eval) 
 (kb::write-statement-clear) 
 (kb::write-file-end)