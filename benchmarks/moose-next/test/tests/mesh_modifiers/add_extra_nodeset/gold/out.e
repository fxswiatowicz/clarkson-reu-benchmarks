CDF      
      
len_string     !   len_line   Q   four      	time_step          len_name   !   num_dim       	num_nodes      	   num_elem      
num_el_blk        num_node_sets         num_side_sets         num_el_in_blk1        num_nod_per_el1       num_side_ss1      num_side_ss2      num_nod_ns1       num_nod_ns2       num_nod_ns3       num_nod_var       num_info   �         api_version       @�
=   version       @�
=   floating_point_word_size            	file_size               int64_status             title         out.e      maximum_name_length                    
time_whole                            ND   	eb_status                             �   eb_prop1               name      ID              �   	ns_status         	                    �   ns_prop1      	         name      ID              �   	ss_status         
                    �   ss_prop1      
         name      ID              �   coordx                      H      �   coordy                      H         eb_names                       $      X   ns_names      	                 d      |   ss_names      
                 D      �   
coor_names                         D      	$   node_num_map                    $      	h   connect1                  	elem_type         QUAD4         @      	�   elem_num_map                          	�   elem_ss1                          	�   side_ss1                          	�   elem_ss2                          	�   side_ss2                          	�   node_ns1                          	�   node_ns2                          
   node_ns3                          
   vals_nod_var1                          H      NL   name_nod_var                       $      
   info_records                      D      
<                                            ?�      ?�              ?�      ?�      ?�              ?�                      ?�      ?�              ?�      ?�      ?�      ?�                                                                           middle_node                                                                                                                                                                                                                           	                                             	                                                            	u                                   ####################                                                             # Created by MOOSE #                                                             ####################                                                             ### Command Line Arguments ###                                                   -i                                                                               extra_nodeset_test.i                                                                                                                                              ### Version Info ###                                                             Framework Information:                                                           MOOSE version:           git commit e922a41 on 2015-11-12                        PETSc Version:           3.6.1                                                   Current Time:            Mon Nov 16 15:56:34 2015                                Executable Timestamp:    Mon Nov 16 15:50:06 2015                                                                                                                                                                                                  ### Input File ###                                                                                                                                                []                                                                                 initial_from_file_timestep     = LATEST                                          initial_from_file_var          = INVALID                                         block                          = INVALID                                         coord_type                     = XYZ                                             fe_cache                       = 0                                               kernel_coverage_check          = 1                                               material_coverage_check        = 1                                               name                           = 'MOOSE Problem'                                 restart_file_base              = INVALID                                         rz_coord_axis                  = Y                                               type                           = FEProblem                                       use_legacy_uo_aux_computation  = INVALID                                         use_legacy_uo_initialization   = INVALID                                         element_order                  = AUTO                                            order                          = AUTO                                            side_order                     = AUTO                                            active_bcs                     = INVALID                                         active_kernels                 = INVALID                                         inactive_bcs                   = INVALID                                         inactive_kernels               = INVALID                                         start                          = 0                                               dimNearNullSpace               = 0                                               dimNullSpace                   = 0                                               error_on_jacobian_nonzero_reallocation = 0                                       petsc_inames                   =                                                 petsc_options                  = INVALID                                         petsc_values                   =                                                 solve                          = 1                                               use_nonlinear                  = 1                                             []                                                                                                                                                                [BCs]                                                                                                                                                               [./left]                                                                           boundary                     = 1                                                 control_tags                 = INVALID                                           implicit                     = 1                                                 type                         = DirichletBC                                       use_displaced_mesh           = 0                                                 variable                     = u                                                 diag_save_in                 = INVALID                                           save_in                      = INVALID                                           seed                         = 0                                                 value                        = 0                                               [../]                                                                                                                                                             [./middle]                                                                         boundary                     = middle_node                                       control_tags                 = INVALID                                           implicit                     = 1                                                 type                         = DirichletBC                                       use_displaced_mesh           = 0                                                 variable                     = u                                                 diag_save_in                 = INVALID                                           save_in                      = INVALID                                           seed                         = 0                                                 value                        = -1                                              [../]                                                                                                                                                             [./right]                                                                          boundary                     = 2                                                 control_tags                 = INVALID                                           implicit                     = 1                                                 type                         = DirichletBC                                       use_displaced_mesh           = 0                                                 variable                     = u                                                 diag_save_in                 = INVALID                                           save_in                      = INVALID                                           seed                         = 0                                                 value                        = 1                                               [../]                                                                          []                                                                                                                                                                [Executioner]                                                                      type                           = Steady                                          compute_initial_residual_before_preset_bcs = 0                                   control_tags                   =                                                 l_abs_step_tol                 = -1                                              l_max_its                      = 10000                                           l_tol                          = 1e-05                                           line_search                    = default                                         nl_abs_step_tol                = 1e-50                                           nl_abs_tol                     = 1e-50                                           nl_max_funcs                   = 10000                                           nl_max_its                     = 50                                              nl_rel_step_tol                = 1e-50                                           nl_rel_tol                     = 1e-08                                           no_fe_reinit                   = 0                                               petsc_options                  = INVALID                                         petsc_options_iname            = INVALID                                         petsc_options_value            = INVALID                                         restart_file_base              =                                                 solve_type                     = PJFNK                                           splitting                      = INVALID                                       []                                                                                                                                                                [Executioner]                                                                      _fe_problem                    = 0x7fc7e2830200                                []                                                                                                                                                                [Kernels]                                                                                                                                                           [./diff]                                                                           type                         = Diffusion                                         block                        = INVALID                                           control_tags                 = Kernels                                           diag_save_in                 = INVALID                                           implicit                     = 1                                                 save_in                      = INVALID                                           seed                         = 0                                                 use_displaced_mesh           = 0                                                 variable                     = u                                               [../]                                                                          []                                                                                                                                                                [Mesh]                                                                             displacements                  = INVALID                                         block_id                       = INVALID                                         block_name                     = INVALID                                         boundary_id                    = INVALID                                         boundary_name                  = INVALID                                         construct_side_list_from_node_list = 0                                           ghosted_boundaries             = INVALID                                         ghosted_boundaries_inflation   = INVALID                                         patch_size                     = 40                                              second_order                   = 0                                               skip_partitioning              = 0                                               type                           = FileMesh                                        uniform_refine                 = 0                                               centroid_partitioner_direction = INVALID                                         control_tags                   =                                                 dim                            = 3                                               distribution                   = serial                                          file                           = square.e                                        nemesis                        = 0                                               partitioner                    = default                                         patch_update_strategy          = never                                         []                                                                                                                                                                [Mesh]                                                                           []                                                                                                                                                                [MeshModifiers]                                                                                                                                                     [./middle_node]                                                                    type                         = AddExtraNodeset                                   _mesh                        = 0x7fc7e4000000                                    control_tags                 = MeshModifiers                                     coord                        = INVALID                                           depends_on                   = INVALID                                           new_boundary                 = middle_node                                       nodes                        = 2                                                 tolerance                    = 1e-06                                           [../]                                                                          []                                                                                                                                                                [Outputs]                                                                          checkpoint                     = 0                                               color                          = 1                                               console                        = 1                                               csv                            = 0                                               dofmap                         = 0                                               execute_on                     = 'INITIAL TIMESTEP_END'                          exodus                         = 1                                               file_base                      = out                                             gmv                            = 0                                               gnuplot                        = 0                                               hide                           = INVALID                                         interval                       = 1                                               nemesis                        = 0                                               output_if_base_contains        = INVALID                                         print_linear_residuals         = 1                                               print_mesh_changed_info        = 0                                               print_perf_log                 = 0                                               show                           = INVALID                                         solution_history               = 0                                               sync_times                     =                                                 tecplot                        = 0                                               vtk                            = 0                                               xda                            = 0                                               xdr                            = 0                                             []                                                                                                                                                                [Variables]                                                                                                                                                         [./u]                                                                              block                        = INVALID                                           eigen                        = 0                                                 family                       = LAGRANGE                                          initial_condition            = INVALID                                           order                        = FIRST                                             outputs                      = INVALID                                           scaling                      = 1                                                 initial_from_file_timestep   = LATEST                                            initial_from_file_var        = INVALID                                         [../]                                                                          []                                                                                                                                                                ?�              ?�   E�G��   E�G        ?�   E�G?�   E�G?�   E�G        ?�   E�G