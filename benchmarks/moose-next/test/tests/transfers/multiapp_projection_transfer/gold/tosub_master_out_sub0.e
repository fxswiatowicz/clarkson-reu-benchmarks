CDF      
      
len_string     !   len_line   Q   four      	time_step          len_name   !   num_dim       	num_nodes         num_elem   	   
num_el_blk        num_node_sets         num_side_sets         num_el_in_blk1     	   num_nod_per_el1       num_side_ss1      num_side_ss2      num_side_ss3      num_side_ss4      num_nod_ns1       num_nod_ns2       num_nod_ns3       num_nod_ns4       num_nod_var       num_elem_var      num_info           api_version       @�
=   version       @�
=   floating_point_word_size            	file_size               int64_status             title         tosub_master_out_sub0.e    maximum_name_length                 &   
time_whole                            b�   	eb_status                             
h   eb_prop1               name      ID              
l   	ns_status         	                    
p   ns_prop1      	         name      ID              
�   	ss_status         
                    
�   ss_prop1      
         name      ID              
�   coordx                      �      
�   coordy                      �      0   eb_names                       $      �   ns_names      	                 �      �   ss_names      
                 �      X   
coor_names                         D      �   connect1                  	elem_type         QUAD4         �          elem_num_map                    $      �   elem_ss1                          �   side_ss1                          �   elem_ss2                          �   side_ss2                          �   elem_ss3                             side_ss3                             elem_ss4                             side_ss4                          (   node_ns1                          4   node_ns2                          D   node_ns3                          T   node_ns4                          d   vals_nod_var1                          �      b�   vals_nod_var2                          �      c(   vals_nod_var3                          �      c�   vals_nod_var4                          �      d(   vals_nod_var5                          �      d�   name_nod_var                       �      t   name_elem_var                          D         vals_elem_var1eb1                          H      e(   vals_elem_var2eb1                          H      ep   elem_var_tab                             `   info_records                      S8      h                                                                 ?�      ?�              @       @       @      @      ?�              @       @      ?�              @       @                      ?�      ?�              ?�              ?�      @       @       @       @       @      @      @      @                                          bottom                           right                            top                              left                             bottom                           left                             right                            top                                                                                                                                               	   
            	               
   	         	                                                	                                             	                  	                                                         
u_elemental                      u_nodal                          v                                x_elemental                      x_nodal                             u_elemental                      x_elemental                              ####################                                                             # Created by MOOSE #                                                             ####################                                                             ### Command Line Arguments ###                                                   ### Version Info ###                                                                                                                                              ### Input File ###                                                                                                                                                []                                                                                 block                          =                                                 coord_type                     =                                                 dimNearNullSpace               = 0                                               dimNullSpace                   = 0                                               fe_cache                       = 0                                               name                           = 'MOOSE Problem'                                 type                           = FEProblem                                       order                          = AUTO                                            active_bcs                     =                                                 active_kernels                 =                                                 inactive_bcs                   =                                                 inactive_kernels               =                                                 start                          = 0                                               long_name                      =                                                 mesh                           = 0x7f9caa86c600                                []                                                                                                                                                                [AuxVariables]                                                                                                                                                      [./u_elemental]                                                                    block                        =                                                   family                       = MONOMIAL                                          initial_condition            = 0                                                 order                        = CONSTANT                                          initial_from_file_timestep   = 2                                                 initial_from_file_var        =                                                 [../]                                                                                                                                                             [./u_nodal]                                                                        block                        =                                                   family                       = LAGRANGE                                          initial_condition            = 0                                                 order                        = FIRST                                             initial_from_file_timestep   = 2                                                 initial_from_file_var        =                                                 [../]                                                                                                                                                             [./x_elemental]                                                                    block                        =                                                   family                       = MONOMIAL                                          initial_condition            = 0                                                 order                        = CONSTANT                                          initial_from_file_timestep   = 2                                                 initial_from_file_var        =                                                 [../]                                                                                                                                                             [./x_nodal]                                                                        block                        =                                                   family                       = LAGRANGE                                          initial_condition            = 0                                                 order                        = FIRST                                             initial_from_file_timestep   = 2                                                 initial_from_file_var        =                                                 [../]                                                                          []                                                                                                                                                                [BCs]                                                                                                                                                               [./left]                                                                           boundary                     = left                                              type                         = DirichletBC                                       variable                     = v                                                 long_name                    = BCs/left                                          value                        = 0                                               [../]                                                                                                                                                             [./right]                                                                          boundary                     = right                                             type                         = DirichletBC                                       variable                     = v                                                 long_name                    = BCs/right                                         value                        = 1                                               [../]                                                                          []                                                                                                                                                                [Executioner]                                                                      l_abs_step_tol                 = -1                                              l_max_its                      = 10000                                           l_tol                          = 1e-05                                           nl_abs_step_tol                = 1e-50                                           nl_abs_tol                     = 1e-50                                           nl_max_funcs                   = 10000                                           nl_max_its                     = 50                                              nl_rel_step_tol                = 1e-50                                           nl_rel_tol                     = 1e-08                                           no_fe_reinit                   = 0                                               petsc_options                  = '-snes_mf_operator -ksp_monitor'                petsc_options_iname            = '-pc_type -pc_hypre_type'                       petsc_options_value            = 'hypre boomeramg'                               type                           = Transient                                       _fe_problem                    = 0x7f9caa86ce00                                  abort_on_solve_fail            = 0                                               dt                             = 1                                               dtmax                          = 1e+30                                           dtmin                          = 2e-14                                           end_time                       = 1e+30                                           estimate_time_error            = 0                                               file_name                      = out.csv                                         growth_factor                  = 2                                               long_name                      = Executioner                                     n_startup_steps                = 0                                               num_steps                      = 1                                               output_to_file                 = 0                                               predictor_scale                =                                                 restart_file_base              =                                                 scheme                         = backward-euler                                  ss_check_tol                   = 1e-08                                           ss_tmin                        = 0                                               start_time                     = 0                                               sync_times                     = -1.79769e+308                                   time_dt                        =                                                 time_period_ends               =                                                 time_period_starts             =                                                 time_periods                   =                                                 time_t                         =                                                 timestep_tolerance             = 2e-14                                           trans_ss_check                 = 0                                               use_AB2                        = 0                                               use_littlef                    = 0                                               use_multiapp_dt                = 0                                             []                                                                                                                                                                [Kernels]                                                                                                                                                           [./diff]                                                                           type                         = Diffusion                                         block                        =                                                   diag_save_in                 =                                                   long_name                    = Kernels/diff                                      save_in                      =                                                   variable                     = v                                               [../]                                                                          []                                                                                                                                                                [Mesh]                                                                             displacements                  =                                                 block_id                       =                                                 block_name                     =                                                 boundary_id                    =                                                 boundary_name                  =                                                 centroid_partitioner_direction =                                                 construct_side_list_from_node_list = 0                                           ghosted_boundaries             =                                                 ghosted_boundaries_inflation   =                                                 partitioner                    =                                                 patch_size                     = 40                                              second_order                   = 0                                               type                           = GeneratedMesh                                   uniform_refine                 = 0                                               dim                            = 2                                               elem_type                      =                                                 long_name                      = Mesh                                            nx                             = 3                                               ny                             = 3                                               nz                             = 1                                               xmax                           = 3                                               xmin                           = 0                                               ymax                           = 3                                               ymin                           = 0                                               zmax                           = 1                                               zmin                           = 0                                             []                                                                                                                                                                [Output]                                                                           elemental_as_nodal             = 0                                               exodus                         = 1                                               exodus_inputfile_output        = 1                                               gmv                            = 0                                               gnuplot_format                 = ps                                              hidden_variables               =                                                 interval                       = 1                                               iteration_plot_start_time      = 1.79769e+308                                    max_pps_rows_screen            = 15                                              nemesis                        = 0                                               num_restart_files              = 0                                               output_displaced               = 0                                               output_es_info                 = 1                                               output_initial                 = 1                                               output_solution_history        = 0                                               output_variables               = 'v u_nodal u_elemental x_elemental x_nodal'     perf_log                       = 1                                               postprocessor_csv              = 0                                               postprocessor_gnuplot          = 0                                               postprocessor_screen           = 1                                               print_linear_residuals         = 0                                               screen_interval                = 1                                               show_setup_log_early           = 0                                               tecplot                        = 0                                               tecplot_binary                 = 0                                               time_interval                  =                                                 vtk                            = 0                                               xda                            = 0                                               file_base                      = tosub_sub_out                                 []                                                                                                                                                                [Transfers]                                                                                                                                                         [./elemental_to_sub_elemental]                                                     type                         = MultiAppProjectionTransfer                        direction                    = to_multiapp                                       execute_on                   = timestep                                          long_name                    = Transfers/elemental_to_sub_elemental              multi_app                    = sub                                               proj_type                    = l2                                                source_variable              = x                                                 variable                     = x_elemental                                     [../]                                                                                                                                                             [./elemental_to_sub_nodal]                                                         type                         = MultiAppProjectionTransfer                        direction                    = to_multiapp                                       execute_on                   = timestep                                          long_name                    = Transfers/elemental_to_sub_nodal                  multi_app                    = sub                                               proj_type                    = l2                                                source_variable              = x                                                 variable                     = x_nodal                                         [../]                                                                                                                                                             [./elemental_tosub]                                                                type                         = MultiAppProjectionTransfer                        direction                    = to_multiapp                                       execute_on                   = timestep                                          long_name                    = Transfers/elemental_tosub                         multi_app                    = sub                                               proj_type                    = l2                                                source_variable              = u                                                 variable                     = u_elemental                                     [../]                                                                                                                                                             [./tosub]                                                                          type                         = MultiAppProjectionTransfer                        direction                    = to_multiapp                                       execute_on                   = timestep                                          long_name                    = Transfers/tosub                                   multi_app                    = sub                                               proj_type                    = l2                                                source_variable              = u                                                 variable                     = u_nodal                                         [../]                                                                          []                                                                                                                                                                [Variables]                                                                                                                                                         [./v]                                                                              block                        =                                                   family                       = LAGRANGE                                          initial_condition            = 0                                                 order                        = FIRST                                             scaling                      = 1                                                 initial_from_file_timestep   = 2                                                 initial_from_file_var        =                                                 [../]                                                                          []                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ?�      ?�UUUS�h?�q�p�?�q�p�?�UUUS� ?�UUUT�k?�UUUT��?��8��?��8��?�q�p5�?�UUUŜ?�UUUT��?��8� ?�q�pP?�UUUS�+?�UUUT�V?��8��?�q�_��?�q���Y?�q�v��?�q��o�?�UUUS��?�UUU^��?�q�x�7?�q�s�?�q�k��?�q�jx�?�UUUQ��?�q�m��?�q�d_�?�q�W˱?�UUUK�L?�q�mW�        ?�UUUUUR?�UUUUUU        ?�UUUUUR?�UUUUUR?�������?�������?�UUUUUU        ?�UUUUUV?�������?�UUUUUT        ?�UUUUUR?�������?�      @       @       ?�      @      @      @      @      @       ?�      @      @      @       ?�     @      @      ?�����KS?�+�PY�?��.C��?�����1"@	/���@	l����_@������@������?�H�����?�����@	=���A@������@ "UU{�?�����QD@	����*@������?�UUUS�h?��q�A?��8��?�UUUS��?��q�GC?��8��?�UUUS�+?��q�W�?��8��?�      @      @      ?�������@     @      ?�     @      @      