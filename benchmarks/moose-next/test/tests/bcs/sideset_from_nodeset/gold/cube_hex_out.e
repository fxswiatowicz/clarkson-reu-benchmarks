CDF      
      
len_string     !   len_line   Q   four      	time_step          len_name   !   num_dim       	num_nodes         num_elem      
num_el_blk        num_node_sets         num_side_sets         num_el_in_blk1        num_nod_per_el1       num_side_ss1      
num_df_ss1        num_side_ss2      
num_df_ss2        num_side_ss3      
num_df_ss3        num_side_ss4      
num_df_ss4        num_side_ss5      
num_df_ss5        num_nod_ns1    	   num_nod_ns2    	   num_nod_ns3       num_nod_ns4    	   num_nod_ns5       num_nod_var       num_info   {         api_version       @��H   version       @��H   floating_point_word_size            	file_size               title         cube_hex_out.e     maximum_name_length                 '   
time_whole                            9P   	eb_status                             
�   eb_prop1               name      ID              
�   	ns_status         	                    
�   ns_prop1      	         name      ID              
�   	ss_status         
                    
�   ss_prop1      
         name      ID              
�   coordx                      �         coordy                      �      �   coordz                      �      �   eb_names                       $      �   ns_names      	                 �      �   ss_names      
                 �      X   
coor_names                         d          connect1                  	elem_type         HEX8                d   elem_num_map                           d   elem_ss1                          �   side_ss1                          �   dist_fact_ss1                              �   elem_ss2                          �   side_ss2                          �   dist_fact_ss2                              �   elem_ss3                          �   side_ss3                             dist_fact_ss3                                 elem_ss4                          4   side_ss4                          D   dist_fact_ss4                              T   elem_ss5                          t   side_ss5                          |   dist_fact_ss5                              �   node_ns1                    $      �   node_ns2                    $      �   node_ns3                          �   node_ns4                    $         node_ns5                          (   vals_nod_var1                          �      9X   name_nod_var                       $      @   info_records                      &�      d                                    
                              
��      ��      ��      ��                                      ��      ��                      ��      ��                      ��              ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ��      ��                      ��      ��                      ��              ��              ?�      ?�      ?�      ?�      ?�      ?�      ��      ��                      ��              ?�      ?�      ?�      ?�                      ?�      ?�                      ?�      ��      ��      ��      ��              ?�              ?�      ��      ��      ?�                      ?�      ��      ��              ?�      ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            	   
                                             
                                                                                                                                                                                                                                                                                                                                                                                                                                                    	                                                                           u                                   ####################                                                             # Created by MOOSE #                                                             ####################                                                             ### Command Line Arguments ###                                                   -i                                                                               sideset_from_nodeset_test.i                                                                                                                                       ### Input File ###                                                                                                                                                                                                                                 [Mesh]                                                                             uniform_refine                 = 0                                               file                           = cube_no_sidesets.e                              nemesis                        = 0                                               patch_size                     = 40                                              skip_partitioning              = 0                                               construct_side_list_from_node_list = 1                                           second_order                   = 0                                             []                                                                                                                                                                [Variables]                                                                        [./u]                                                                              family                       = LAGRANGE                                          initial_condition            = 0                                                 order                        = FIRST                                             scaling                      = 1                                                 initial_from_file_timestep   = 2                                               [../]                                                                          []                                                                                                                                                                [Kernels]                                                                          [./diff]                                                                           type                         = Diffusion                                         execute_on                   = residual                                          start_time                   = -1.79769e+308                                     stop_time                    = 1.79769e+308                                      variable                     = u                                               [../]                                                                          []                                                                                                                                                                [BCs]                                                                              [./left]                                                                           type                         = DirichletBC                                       boundary                     = 1                                                 execute_on                   = residual                                          value                        = 0                                                 variable                     = u                                               [../]                                                                                                                                                             [./right]                                                                          type                         = NeumannBC                                         boundary                     = 3                                                 execute_on                   = residual                                          value                        = 3                                                 variable                     = u                                               [../]                                                                          []                                                                                                                                                                [Executioner]                                                                      l_abs_step_tol                 = -1                                              l_max_its                      = 10000                                           l_tol                          = 1e-05                                           nl_abs_step_tol                = 1e-50                                           nl_abs_tol                     = 1e-50                                           nl_max_funcs                   = 10000                                           nl_max_its                     = 50                                              nl_rel_step_tol                = 1e-50                                           nl_rel_tol                     = 1e-08                                           no_fe_reinit                   = 0                                               petsc_options                  = -snes_mf_operator                               petsc_options_iname            = '-pc_type -pc_hypre_type'                       petsc_options_value            = 'hypre boomeramg'                               scheme                         = backward-euler                                  type                           = Steady                                          execute_on                     = residual                                      []                                                                                                                                                                [Output]                                                                           exodus                         = 1                                               file_base                      = cube_hex_out                                    gmv                            = 0                                               gnuplot_format                 = ps                                              interval                       = 1                                               iteration_plot_start_time      = 1.79769e+308                                    max_pps_rows_screen            = 0                                               nemesis                        = 0                                               output_displaced               = 0                                               output_initial                 = 1                                               perf_log                       = 1                                               postprocessor_csv              = 0                                               postprocessor_ensight          = 0                                               postprocessor_gnuplot          = 0                                               postprocessor_screen           = 1                                               print_linear_residuals         = 1                                               screen_interval                = 1                                               show_setup_log_early           = 0                                               tecplot                        = 0                                               tecplot_binary                 = 0                                               xda                            = 0                                             []                                                                                                                                                                [check_integrity]                                                                []                                                                                                                                                                [copy_nodal_vars]                                                                  initial_from_file_timestep     = 2                                             []                                                                                                                                                                [init_problem]                                                                   []                                                                                                                                                                [no_action]                                                                      []                                                                                                                                                                [setup_dampers]                                                                  []                                                                                                                                                                [setup_quadrature]                                                                 order                          = AUTO                                            type                           = GAUSS                                         []                                                                                                                                                                [no_action]                                                                                                                                                                                                                                                                                                       ?�      @    O@     ]?�     �?�    z@     �@     _?�    ?�     �@    ?�    s@     �?�                                                     @     �@     i?�     �?�    �@     �?�    �                        