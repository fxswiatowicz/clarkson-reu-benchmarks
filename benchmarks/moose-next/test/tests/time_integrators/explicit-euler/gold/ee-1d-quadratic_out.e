CDF      
      
len_string     !   len_line   Q   four      	time_step          len_name   !   num_dim       	num_nodes      )   num_elem      
num_el_blk        num_node_sets         num_side_sets         num_el_in_blk1        num_nod_per_el1       num_side_ss1      num_side_ss2      num_nod_ns1       num_nod_ns2       num_nod_var       num_info   �   num_glo_var             api_version       @��H   version       @��H   floating_point_word_size            	file_size               title         ee-1d-quadratic_out.e      maximum_name_length                    
time_whole                            M�   	eb_status                             �   eb_prop1               name      ID              �   	ns_status         	                    �   ns_prop1      	         name      ID              �   	ss_status         
                    �   ss_prop1      
         name      ID              �   coordx                     H      �   coordy                     H      	4   coordz                     H      
|   eb_names                       $      �   ns_names      	                 D      �   ss_names      
                 D      ,   
coor_names                         d      p   connect1                  	elem_type         EDGE3         �      �   elem_num_map                    P      �   elem_ss1                             side_ss1                             elem_ss2                             side_ss2                              node_ns1                          $   node_ns2                          (   vals_nod_var1                         H      M�   name_nod_var                       $      ,   info_records                      ?H      P   name_glo_var                       $      M�   vals_glo_var                             O                                 ��      �������Ϳ�ffffff�陙������333333��ffffff��      ��333333�������Ϳ�      �ᙙ�����ٙ������������̿�333334��ffffff�ə�������      ����������333334        ��������?�������?�������?ə�����?�333330?�333334?�      ?ٙ�����?�fffffh?�      ?�������?�333334?ᙙ����?�ffffff?�������?陙����?�      ?�������?�333334?�      ?�ffffff                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        left                             right                                                                                                                                                                      	      
      
                                                                                                 !       "   #   "   $   %   $   &   '   &   (   )                           	   
                                                (u                                   ####################                                                             # Created by MOOSE #                                                             ####################                                                             ### Command Line Arguments ###                                                   -i                                                                               ee-1d-quadratic.i                                                                                                                                                 ### Input File ###                                                                                                                                                [BCs]                                                                                                                                                               [./all]                                                                            type                         = FunctionDirichletBC                               boundary                     = '0 1'                                             function                     = exact_fn                                          time_periods                 =                                                   variable                     = u                                               [../]                                                                          []                                                                                                                                                                [Executioner]                                                                      l_abs_step_tol                 = -1                                              l_max_its                      = 10000                                           l_tol                          = 1e-05                                           nl_abs_step_tol                = 1e-50                                           nl_abs_tol                     = 1e-50                                           nl_max_funcs                   = 10000                                           nl_max_its                     = 50                                              nl_rel_step_tol                = 1e-50                                           nl_rel_tol                     = 1e-08                                           no_fe_reinit                   = 0                                               petsc_options                  = -snes_mf_operator                               petsc_options_iname            =                                                 petsc_options_value            =                                                 scheme                         = explicit-euler                                  type                           = Transient                                       _mesh                          = 0x7fdea9849600                                  dt                             = 5e-05                                           dtmax                          = 1e+30                                           dtmin                          = 0                                               end_time                       = 1e+30                                           growth_factor                  = 2                                               n_startup_steps                = 0                                               num_steps                      = 20                                              predictor_scale                = 0                                               restart_file_base              =                                                 ss_check_tol                   = 1e-08                                           ss_tmin                        = 0                                               start_time                     = 0                                               sync_times                     = -1                                              time_dt                        =                                                 time_period_ends               =                                                 time_period_starts             =                                                 time_periods                   =                                                 time_t                         =                                                 trans_ss_check                 = 0                                             []                                                                                                                                                                [Functions]                                                                                                                                                         [./exact_fn]                                                                       type                         = ParsedFunction                                    vals                         =                                                   value                        = t*x*x                                             vars                         =                                                 [../]                                                                                                                                                             [./forcing_fn]                                                                     type                         = ParsedFunction                                    vals                         =                                                   value                        = x*x-2*t                                           vars                         =                                                 [../]                                                                                                                                                             [./ic]                                                                             type                         = ParsedFunction                                    vals                         =                                                   value                        = 0                                                 vars                         =                                                 [../]                                                                          []                                                                                                                                                                [Kernels]                                                                                                                                                           [./diff]                                                                           type                         = Diffusion                                         block                        =                                                   time_periods                 =                                                   variable                     = u                                               [../]                                                                                                                                                             [./ffn]                                                                            type                         = UserForcingFunction                               block                        =                                                   function                     = forcing_fn                                        time_periods                 =                                                   variable                     = u                                               [../]                                                                                                                                                             [./ie]                                                                             type                         = TimeDerivative                                    block                        =                                                   lumping                      = 0                                                 time_periods                 =                                                   variable                     = u                                               [../]                                                                          []                                                                                                                                                                [Mesh]                                                                             displacements                  =                                                 uniform_refine                 = 0                                               displacements                  =                                                 file                           = '(no file supplied)'                            ghosted_boundaries             =                                                 ghosted_boundaries_inflation   =                                                 nemesis                        = 0                                               patch_size                     = 40                                              skip_partitioning              = 0                                               type                           = GeneratedMesh                                   block_id                       =                                                 block_name                     =                                                 boundary_id                    =                                                 boundary_name                  =                                                 centroid_partitioner_direction =                                                 construct_side_list_from_node_list = 0                                           partitioner                    =                                                 second_order                   = 0                                               _dimension                     = 1                                               dim                            = 1                                               elem_type                      = EDGE3                                           nx                             = 20                                              ny                             = 1                                               nz                             = 1                                               xmax                           = 1                                               xmin                           = -1                                              ymax                           = 1                                               ymin                           = 0                                               zmax                           = 1                                               zmin                           = 0                                             []                                                                                                                                                                [Output]                                                                           elemental_as_nodal             = 0                                               exodus                         = 1                                               exodus_inputfile_output        = 1                                               file_base                      = ee-1d-quadratic_out                             gmv                            = 0                                               gnuplot_format                 = ps                                              interval                       = 1                                               iteration_plot_start_time      = 1.79769e+308                                    max_pps_rows_screen            = 10                                              nemesis                        = 0                                               num_restart_files              = 0                                               output_displaced               = 0                                               output_initial                 = 1                                               output_solution_history        = 0                                               output_variables               =                                                 perf_log                       = 0                                               postprocessor_csv              = 0                                               postprocessor_gnuplot          = 0                                               postprocessor_screen           = 1                                               print_linear_residuals         = 0                                               screen_interval                = 1                                               show_setup_log_early           = 0                                               tecplot                        = 0                                               tecplot_binary                 = 0                                               xda                            = 0                                             []                                                                                                                                                                [Postprocessors]                                                                                                                                                    [./l2_err]                                                                         type                         = ElementL2Error                                    block                        = ANY_BLOCK_ID                                      execute_on                   = timestep                                          function                     = exact_fn                                          output                       = both                                              variable                     = u                                               [../]                                                                          []                                                                                                                                                                [Variables]                                                                                                                                                         [./u]                                                                              block                        =                                                   family                       = LAGRANGE                                          initial_condition            = 0                                                 order                        = SECOND                                            scaling                      = 1                                                 initial_from_file_timestep   = 2                                                 initial_from_file_var        =                                                                                                                                    [./InitialCondition]                                                               type                       = FunctionIC                                          block                      =                                                     function                   = ic                                                  variable                   = u                                                 [../]                                                                          [../]                                                                          []                                                                               l2_err                                                                                                                                                                                                                                                                                                                                                                                      ?
6��C-?
6���??;�gfmW?��1���? �����?�j��>���.;�>�}�H~;>��֔�j�>�&��0��>�6��"A�>�,+̛�>�����C>�;�gmğ>��֔�n�>ٰ�.X1>�����Ь>�6���z>�����ӏ>��֔��<���g�  >�����L�>�����*�>������#>������'>��֔��!>��֔���>�6��#ڔ>�������>ٰ�. �>�6����>�;�gjGx>��֔�P�>�,+�d�>���.�f>�&��/��? ����uT>�}�H~ �?;�gf��?�j�h?
6���??��1�E�<��C��?6��C-?6���?;�gfR5?��1���?�����[?�j��?	��.�K?}�H~k.?�֔�۽?&��0�>�6��!�
>��,+�K�>������">�;�gm��>��֔Ϟ+>鰫.=>������>�6����>�������>��֔ªs<Ġ X  >�����t�>����>������N>�������>��֔ź>��֔���>�6��${>������M>鰫.+�>�6���<>�;�gj$�?�֔�ۏ>��,+��??	��.^�?&��/��?����.�?}�H~[G?;�gf�i?�j�+?6���?��1�M<ג��\?#�*0U2b?#�*0U�?ٺH�?!�ne7�)?*sq��?h�R�t5?D�b��5?Ov^�?O��8��?�5���?�*0X�?�! �l�>�*sq*�>�ٺ$7>�O��7��>�D�b�ˆ>�*sq+�>�*0V3&>�*sqm>�O��$��<Ȑc0t  >�*so�g4>�*sqZ,>�*so�D.>�*sqf�>�O��*�z>�O��6�>�*0[o>�*sq��>�D�b�g�?�*0S��>�ٺn?O��76?�! �%�?D�b�3?�5���?*sqj�?Ov^��?ٺ��?h�R�Wj?#�*0U�?!�ne6�'<�ܱ�:s~?*6��C-?*6��r?%;�gfa?'��1��k? ����{�?"�k�?��.mm?}�H~��?�֔��[?&��1*?
6�� Ј?�,+�n�? ������?;�gm1C>��֔��[>���.{_>�����XF>�6����>������>��֔�w><ɪ<i  >�����Y6>�����?�>�����ڦ>�����F�>��֔�S >��֔ΔY>�6��$2t? ����s>���.>�?
6��I�?;�gi��?�֔�&�?�,+Ѕ?��.ȓ?&��/�w? ������?}�H~��?%;�gf)�?"�k�?*6��r?'��1�nW<���и�?0bM���?0bM��?*���?s�?-�����?$�����!?'�����? j�΋`?"n��O=�?��:�?�_���B?bM��KW?��aQd?����3�?
���HA�>���:�? j�΋�>������>�bM��>����ӱ2>ח�9���<ȥ�H  >������B>����{>�������>�����0�>ח�9��(>���:!�>�bM���H?����Q�? j��U?bM��_?
���D'e?��:�7?��b��? j�μo?�_���?$����9_?"n��O@�?*���?�:?'����?0bM��?-����<��u�?3�*0U2b?3�*0U?/ٺΙ?1�ne7ķ?)*sqV�?,h�R���?#D�b�]?&Ov_%�?O��7	�? �5��?�*0X!�?�! ۀS?	*sq
~?ٺ#<�>�O��7�?D�b�R�>�*sq��>�*0V6�>�*sp���>�O��%�<�
�x�  >�*so�,y>�*sqAFN>�*so��>�*sq i>�O��/�>�O��5��>�*0[)�?	*sq��?D�b�~O?�*0S�c?ٺae?O��5��?�! ���?#D�b��|? �5� ?)*sq��?&Ov_,?/ٺ��?,h�R���?3�*0U?1�ne6�[<�>pףB?6�����?6����j?2�W:y�?4���k�p?-\1Y>�?0�����?&z��T-�?)�_o�? ���58?#aܓ�-8?����V?�&�U�J?\1Y6�?�W:�? ���5��?z��T�>�\1Y9�A>������>�\1Y!j�>����+�]<�>���  >�\1W�S�>�\1Yo��>�\1W�8>�\1YJ�:>����1c�? ���4��>������?\1Y;�\?z��P�?�����?�W:|E�? ���4��?�&�WN?&z��T_x?#aܓ�4?-\1Y?�?)�_o?2�W:y
�?0������?6����j?4���j�d<�&��Ĺ?:6��C.?:6��*�?5;�ge��?7��1���?0����	�?2�k[?)��.�?-}�H~�	?"�֔��?&&��1_�?6����?�,+��?������?;�gl{Z?�֔���?	��.ӥ>�����3:>�6���G>������>��֔�!�<�)el  >�����zI>�������>���� S�>�������>��֔�G�?�֔�W�>�6��$(�?�����?	��.j�?6��-?;�giT?"�֔�B??�,+�|�?)��.-�?&&��0HQ?0����8s?-}�H�?5;�ge��?2�kV'?:6��*�?7��1���<����%?=}�H˔?=}�H�6?7�K�R`A?:���Ӷ�?2�̵֔�?5N�=��r?,������?0����q�?%;�gh�?(�Pw�G?}�H�ms?!טإ8?�֔ȓ�?�K�Y�k?;�gi�j?���ِ�>��֔ə�>�}�H�`k>��֔��>�;�g\�m<�`�'p  >��֓���>��֔�M>��֔�B>��֔�>>�;�ge5�?;�gh~>�}�H��?�֔�Le?�����T?}�H}G�?�K�V[�?%;�ggݯ?!טإ��?,�����M?(�Pv\�?2�֔��?0����{�?7�K�RF/?5N�=��3?=}�H�6?:���҆{<� j�(u?@bM���?@bM���?:���?�?=����	?4����`3?7���QU?0j��Pr?2n��Og?'��:)�?+�_���~? bM��3?#��bm2?����3?���G5i?��:��?j��&�>�����_? bM���>�����-@>��9�L<��20  >������>������>������>�����g>��9�+=?��:�@? bM���?���� J?j��3? bM��BS?���C]?'��:t�?#��c&�?0j��dW?+�_��q'?4����C?2n��OsT?:���>�?7���M�?@bM���?=���i<��Acb�?B��n0?B��b?=2?�+��?@C�2��?7�|�	I?:
ءΊ?1�u����?4Fs��\@?)����b?.u6�9?"��kL?%Ξ^��?�|���?2?�4��?	����"?�u����>��|�m�?��lW>��|�E!>�����=�����   >��|�>��}M�>��|W_>��}�<>����%=?	����F?���v?�|��&?�u��u?"���?2?�0X�?)����?%Ξ^ `
?1�u���"?.u6�!?7�|�>�?4Fs��j�?=2?�+y�?:
ء�O?B��b?@C�2&v<���:�AF?C�*0U2c?C�*0U&4??ٺM�?A�ne7�:?9*sq�k?<h�R�L�?3D�b�$$?6Ov_Qe?,O��5`?0�5��?#�*0WBa?'�! ���?*sq�"?ٺ!і?O��7��?D�b���>�*sq�N?�*0VK.>�*sp�]M>�O��&i����)�  >�*sp@�>�*sq(o>�*sp%^2>�*sqL>�O��3"X?O��5G�?�*0Z�)?*sqpo?D�b��?#�*0S��?ٺO�?,O��4��?'�! ݛ�?3D�b�2%?0�5�LI?9*sq��?6Ov_b??ٺ�?<h�R�I�?C�*0U&4?A�ne7	<�jx�p$�?EL�_��?EL�_�g?A@�$x�?C8��QԺ?;CRe'X�?>� .�7?4ߋr��?7�+j�Fk?.�����+?1�qd�$r?%L�_	�?)ţ�*�?CRe#E�?!@�$��?���ѵe?ߋrCP>�CRe#Ki?L�_*^>�CRexO>����A�>  >�CRd�>�CRe>w#>�CRd/��>�CRe1f�>��!i?�����d?L�_$C?CRe&+�?ߋo�?%L�_"c?!@�$ �?.����(q?)ţ��v?4ߋr�m?1�qd�U�?;CRe'�q?7�+j�Y!?A@�$T�?>� .�:?EL�_�g?C8��Q*<�%T��x�?F�����?F�����?B�W:x�+?D���k�L?=\1Y=��?@����&6?6z��S�A?9�_o;P?0���4F%?3aܓ�9e?&����?+�&�Wr	?\1Y:V?"�W:~*?���5�T?z��S��>�\1Y9��?���	�>�\1Y��>����+����/���  >�\1X��>�\1YTl>�\1X:h�>�\1YH�>����3��?���4Z�?���R�?\1Y<�w?z��QG2?&�����?"�W:{��?0���3ڃ?+�&�XL?6z��T ?3aܓ�^�?=\1Y>;r?9�_oO�?B�W:x��?@����$�?F�����?D���j��<��9�^{?H�t�j~�?H�t�jr�?C�P��?F.	����??uMT��?A�����?8�{5f ?;��S�0?1��+��?4�G�M�?(�t�l�=?-��i�?uMP�?#�P�Ɠ?��+��x?�{5@>�uMP2�?�t�k�>>�uM)�{>��+w����<��N  >�uL�=>�uMjRh>�uLEO�>�uM`�>��+��6?��+�5E?�t�q~�?uMS�~?�{2�E?(�t�hf7?#�P��?1��+���?-��i^K?8�{5h�?4�G�gk??uMT��?;��S�F�?C�P��$?A������?H�t�jr�?F.	����<���1���?J6��C/?J6��7 ?E;�gem3?G��1�И?@������?B�k��?9��.�w?=}�H$�?2�֔���?6&��1`�?*6����?/�,+�P? ����ȭ?%;�gk`?�֔ϥ@?��.g�? ����T�?
6��ȫ>�����s�>��֔�?p��0G+�  >�����>������>����(4�? ������>��֔͑�?�֔�?
6��#��? ����2�?��.�C?*6��	/?%;�gh�?2�֔�d�?/�,+ңK?9��.��?6&��0o�?@�����?=}�H<�?E;�ge6O?B�k�f?J6��7 ?G��1��e= �w�;M?K�Q�b?K�Q��3?F��}۾�?I#d��M?A�g���?D�e2h�?;K���?5??U�=4?4����?7�!Ts�?+�Q�`F?0��wG�C?!�g�/#?&��}��?����?K���˸?�g��(?�Qϧ�>��g��>���.���sЕ  >��g�>��g� K>��g-מ?�g�^�>����$?���N?�Q��>?!�g���?K���+?+�Qˬ�?&��}��)?4��(�?0��wG�?;K���9_?7�!Sw�?A�g�??U�=3?F��}ہv?D�e2f?K�Q��3?I#d��L=c���?M}�H˕?M}�H�f?G�K�RO?J�����?B�֔�Ke?EN�=�*%?<���٬K?@���ǆ�?5;�ggi�?8�Pw�k?-}�H�/�?1טئX:?"�֔ʗ\?'�K�X�p?;�givV?����0�?�֔�Δ?}�H���>��֔���>�;�g\���jd��  >��֔<�>��֔��>��֔3��?�֔�	�>�;�gg�q?;�gg�?}�H���?"�֔��?����z�?-}�H}Q?'�K�U`�?5;�gf�4?1טئ�`?<���١�?8�Pv*?B�֔�m�?@���ǔs?G�K�Q̦?EN�=�'?M}�H�f?J����ґ=0��Z�?O!-w1��?O!-w1��?I7��a�?L.����?C�Fם�?F}����?>��F��?A�����?6i�д1u?:M����?/!-w3��?2�Z:r?#�F�?)7�� �?i�ж[�?��F��!?�F��?!-w3e�>��F�D�>�i�Ш�-��)a�  >��Fw�>��F��d>��F9RE?�F޴�>�i�д��?i�д�J?!-w:�?#�F�S?��F��?/!-w.��?)7���S?6i�г�??2�Z:>|?>��F�
�?:M���S?C�F���?A����G?I7���?F}���?O!-w1��?L.���.=�u<�M�?PbM���?PbM���?J���>��?M���˝?D�����|?G���?@j��C�?Bn��O{?7��: ��?;�_���&?0bM���?3��c��?$����l*?*���E�2?��:?�? j���[?����L?bM���>������>���9�9�����  >�����=>�����p>����?%�?����_�>���:�b?��:q)?bM���?$����v? j�̏�?0bM��M�?*���B<U?7��: q�?3��c�Z?@j��9�?;�_���?D����=?Bn��O� ?J���>cD?G��P?PbM���?M����=���#