CDF      
      
len_string     !   len_line   Q   four      	time_step          len_name   !   num_dim       	num_nodes      	   num_elem      
num_el_blk        num_node_sets         num_el_in_blk1        num_nod_per_el1       num_el_in_blk2        num_nod_per_el2       num_nod_ns1       num_nod_ns2       num_nod_ns3       num_nod_ns4       num_nod_var       num_info   �         api_version       @��H   version       @��H   floating_point_word_size            	file_size               title         nodal_constraint_test_out.e    maximum_name_length                    
time_whole                            V   	eb_status                             �   eb_prop1               name      ID              �   	ns_status         	                    �   ns_prop1      	         name      ID              �   coordx                      H      �   coordy                      H      4   coordz                      H      |   eb_names                       D      �   ns_names      	                 �         
coor_names                         d      �   connect1      
            	elem_type         EDGE2               �   elem_num_map                          	   connect2                  	elem_type         EDGE2                	$   node_ns1                          	D   node_ns2                          	H   node_ns3                          	L   node_ns4                          	P   vals_nod_var1                          H      V   name_nod_var                       $      	T   info_records                      L�      	x                                    ?�      ?�UUUUUV?�UUUUUV        ?�(�\)?�(�\(?�(�\(?�(�\'@ z�G�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           	            	u                                   ####################                                                             # Created by MOOSE #                                                             ####################                                                             ### Command Line Arguments ###                                                   -i                                                                               nodal_constraint_test.i                                                          -ksp_monitor                                                                                                                                                      ### Input File ###                                                                                                                                                                                                                                 [Mesh]                                                                             action                         = setup_mesh                                      construct_side_list_from_node_list = 0                                           name                           = Mesh                                            parser_handle                  = 0x7fff616f70c8                                  second_order                   = 0                                               unique_id                      = 1                                               file                           = 2-lines.e                                       isObjectAction                 = 1                                               nemesis                        = 0                                               patch_size                     = 40                                              skip_partitioning              = 0                                               type                           = MooseMesh                                       _dimension                     = 1                                               uniform_refine                 = 0                                             []                                                                                                                                                                [Variables]                                                                        [./u]                                                                              action                       = add_variable                                      family                       = LAGRANGE                                          initial_condition            = 0                                                 name                         = Variables/u                                       order                        = FIRST                                             parser_handle                = 0x7fff616f70c8                                    scaling                      = 1                                                 unique_id                    = 10                                                initial_from_file_timestep   = 2                                               [../]                                                                                                                                                           [Variables]                                                                        action                         = no_action                                       name                           = Variables                                       parser_handle                  = 0x7fff616f70c8                                  unique_id                      = 22                                            []                                                                                                                                                                [Kernels]                                                                          [./diff]                                                                           action                       = add_kernel                                        isObjectAction               = 1                                                 name                         = Kernels/diff                                      parser_handle                = 0x7fff616f70c8                                    type                         = Diffusion                                         unique_id                    = 16                                                built_by_action              = add_kernel                                        execute_on                   = residual                                          start_time                   = -1.79769e+308                                     stop_time                    = 1.79769e+308                                      use_displaced_mesh           = 0                                                 variable                     = u                                               [../]                                                                                                                                                           [Kernels]                                                                          action                         = no_action                                       name                           = Kernels                                         parser_handle                  = 0x7fff616f70c8                                  unique_id                      = 22                                            []                                                                                                                                                                [BCs]                                                                              action                         = no_action                                       name                           = BCs                                             parser_handle                  = 0x7fff616f70c8                                  unique_id                      = 22                                                                                                                               [./right]                                                                          action                       = add_bc                                            isObjectAction               = 1                                                 name                         = BCs/right                                         parser_handle                = 0x7fff616f70c8                                    type                         = DirichletBC                                       unique_id                    = 21                                                boundary                     = 4                                                 built_by_action              = add_bc                                            execute_on                   = residual                                          use_displaced_mesh           = 0                                                 value                        = 3                                                 variable                     = u                                               [../]                                                                                                                                                             [./left]                                                                           action                       = add_bc                                            isObjectAction               = 1                                                 name                         = BCs/left                                          parser_handle                = 0x7fff616f70c8                                    type                         = DirichletBC                                       unique_id                    = 21                                                boundary                     = 1                                                 built_by_action              = add_bc                                            execute_on                   = residual                                          use_displaced_mesh           = 0                                                 value                        = 1                                                 variable                     = u                                               [../]                                                                          []                                                                                                                                                                [Executioner]                                                                      action                         = setup_executioner                               isObjectAction                 = 1                                               l_abs_step_tol                 = -1                                              l_max_its                      = 10000                                           l_tol                          = 1e-05                                           name                           = Executioner                                     nl_abs_step_tol                = 1e-50                                           nl_abs_tol                     = 1e-50                                           nl_max_funcs                   = 10000                                           nl_max_its                     = 50                                              nl_rel_step_tol                = 1e-50                                           nl_rel_tol                     = 1e-08                                           no_fe_reinit                   = 0                                               parser_handle                  = 0x7fff616f70c8                                  petsc_options                  = -snes_mf_operator                               scheme                         = backward-euler                                  type                           = Steady                                          unique_id                      = 4                                               _mesh                          = 0x7fa8b1c28390                                  built_by_action                = setup_executioner                             []                                                                                                                                                                [Output]                                                                           action                         = setup_output                                    elemental_as_nodal             = 0                                               exodus                         = 1                                               exodus_inputfile_output        = 1                                               file_base                      = nodal_constraint_test_out                       gmv                            = 0                                               gnuplot_format                 = ps                                              interval                       = 1                                               iteration_plot_start_time      = 1.79769e+308                                    max_pps_rows_screen            = 0                                               name                           = Output                                          nemesis                        = 0                                               output_displaced               = 0                                               output_initial                 = 1                                               output_solution_history        = 0                                               parser_handle                  = 0x7fff616f70c8                                  perf_log                       = 0                                               postprocessor_csv              = 0                                               postprocessor_gnuplot          = 0                                               postprocessor_screen           = 1                                               print_linear_residuals         = 0                                               screen_interval                = 1                                               show_setup_log_early           = 0                                               tecplot                        = 0                                               tecplot_binary                 = 0                                               unique_id                      = 7                                               xda                            = 0                                             []                                                                                                                                                                [init_problem]                                                                     action                         = init_problem                                    name                           = init_problem                                    parser_handle                  = 0x7fff616f70c8                                  unique_id                      = 44                                            []                                                                                                                                                                [copy_nodal_vars]                                                                  action                         = copy_nodal_vars                                 initial_from_file_timestep     = 2                                               name                           = copy_nodal_vars                                 parser_handle                  = 0x7fff616f70c8                                  unique_id                      = 11                                            []                                                                                                                                                                [check_integrity]                                                                  action                         = check_integrity                                 name                           = check_integrity                                 parser_handle                  = 0x7fff616f70c8                                  unique_id                      = 45                                            []                                                                                                                                                                [Constraints]                                                                      [./c1]                                                                             action                       = add_constraint                                    isObjectAction               = 1                                                 name                         = Constraints/c1                                    parser_handle                = 0x7fff616f70c8                                    type                         = EqualValueNodalConstraint                         unique_id                    = 35                                                built_by_action              = add_constraint                                    execute_on                   = residual                                          master                       = 0                                                 penalty                      = 100000                                            slave                        = 4                                                 use_displaced_mesh           = 0                                                 variable                     = u                                               [../]                                                                                                                                                           [Constraints]                                                                      action                         = no_action                                       name                           = Constraints                                     parser_handle                  = 0x7fff616f70c8                                  unique_id                      = 22                                            []                                                                                                                                                                [no_action]                                                                        action                         = no_action                                       name                           = no_action                                       parser_handle                  = 0x7fff616f70c8                                  unique_id                      = 22                                            []                                                                                                                                                                [setup_dampers]                                                                    action                         = setup_dampers                                   name                           = setup_dampers                                   parser_handle                  = 0x7fff616f70c8                                  unique_id                      = 42                                            []                                                                                                                                                                [setup_quadrature]                                                                 action                         = setup_quadrature                                name                           = setup_quadrature                                order                          = AUTO                                            parser_handle                  = 0x7fff616f70c8                                  type                           = GAUSS                                           unique_id                      = 32                                            []                                                                                                                                                                [setup_subproblem]                                                                 action                         = setup_subproblem                                coord_type                     = XYZ                                             name                           = setup_subproblem                                parser_handle                  = 0x7fff616f70c8                                  unique_id                      = 6                                             []                                                                                                                                                                [no_action]                                                                        action                         = no_action                                       name                           = no_action                                       unique_id                      = 22                                                                                                                              ?�      ?���� u~?���,T��?�US��Vw?�������@  ����@ �,J-@ P��z@  �-�@  �w