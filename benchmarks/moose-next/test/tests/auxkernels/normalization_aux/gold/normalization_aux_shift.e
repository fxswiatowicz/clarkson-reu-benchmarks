CDF      
      
len_string     !   len_line   Q   four      	time_step          len_name   !   num_dim       	num_nodes      	   num_elem      
num_el_blk        num_node_sets         num_side_sets         num_el_in_blk1        num_nod_per_el1       num_side_ss1      num_side_ss2      num_side_ss3      num_side_ss4      num_nod_ns1       num_nod_ns2       num_nod_ns3       num_nod_ns4       num_nod_var       num_glo_var       num_info  ,         api_version       @�
=   version       @�
=   floating_point_word_size            	file_size               int64_status             title         normalization_aux_shift.e      maximum_name_length                 "   
time_whole                            l8   	eb_status                             	x   eb_prop1               name      ID              	|   	ns_status         	                    	�   ns_prop1      	         name      ID              	�   	ss_status         
                    	�   ss_prop1      
         name      ID              	�   coordx                      H      	�   coordy                      H      
   eb_names                       $      
P   ns_names      	                 �      
t   ss_names      
                 �      
�   
coor_names                         D      |   node_num_map                    $      �   connect1                  	elem_type         QUAD4         @      �   elem_num_map                          $   elem_ss1                          4   side_ss1                          <   elem_ss2                          D   side_ss2                          L   elem_ss3                          T   side_ss3                          \   elem_ss4                          d   side_ss4                          l   node_ns1                          t   node_ns2                          �   node_ns3                          �   node_ns4                          �   vals_nod_var1                          H      l@   vals_nod_var2                          H      l�   name_nod_var                       D      �   name_glo_var                       d      �   vals_glo_var                             l�   info_records                      ^�      L                                                                 ?�      ?�              ?�      ?�      ?�              ?�                      ?�      ?�              ?�      ?�      ?�      ?�                                          right                            top                              left                             bottom                           top                              left                             right                            bottom                                                                                                                          	                                             	                                                                        	         	                  u                                u_normalized                       u0                               u_normalized_norm                unorm                             ####################                                                             # Created by MOOSE #�                                                            ####################                                                             ### Command Line Arguments ###                                                    -i normalization_aux.i Outputs/file_base=normalization_aux_shift AuxKernels/... normalization_auxkernel/normal_factor=1.0 AuxKernels/normalization_auxkernel/... shift=u0### Version Info ###                                                     Framework Information:                                                           MOOSE Version:           git commit ff0f642c1f on 2018-02-27                     LibMesh Version:         ab2cf97250f90e88b1da3c9fb40931cf46af7ba9                PETSc Version:           3.7.6                                                   Current Time:            Thu Oct 25 12:59:18 2018                                Executable Timestamp:    Thu Oct 25 12:21:03 2018                                                                                                                                                                                                  ### Input File ###                                                                                                                                                []                                                                                 inactive                       =                                                 element_order                  = AUTO                                            order                          = AUTO                                            side_order                     = AUTO                                            type                           = GAUSS                                         []                                                                                                                                                                [AuxKernels]                                                                                                                                                        [./normalization_auxkernel]                                                        inactive                     =                                                   isObjectAction               = 1                                                 type                         = NormalizationAux                                  block                        = INVALID                                           boundary                     = INVALID                                           control_tags                 = AuxKernels                                        enable                       = 1                                                 execute_on                   = TIMESTEP_END                                      normal_factor                = 1                                                 normalization                = INVALID                                           seed                         = 0                                                 shift                        = u0                                                source_variable              = u                                                 use_displaced_mesh           = 0                                                 variable                     = u_normalized                                    [../]                                                                          []                                                                                                                                                                [AuxVariables]                                                                                                                                                      [./u_normalized]                                                                   block                        = INVALID                                           family                       = LAGRANGE                                          inactive                     =                                                   initial_condition            = INVALID                                           order                        = FIRST                                             outputs                      = INVALID                                           initial_from_file_timestep   = LATEST                                            initial_from_file_var        = INVALID                                         [../]                                                                          []                                                                                                                                                                [BCs]                                                                                                                                                               [./left_u]                                                                         boundary                     = left                                              control_tags                 = INVALID                                           enable                       = 1                                                 extra_matrix_tags            = INVALID                                           extra_vector_tags            = INVALID                                           implicit                     = 1                                                 inactive                     =                                                   isObjectAction               = 1                                                 matrix_tags                  = system                                            type                         = DirichletBC                                       use_displaced_mesh           = 0                                                 variable                     = u                                                 vector_tags                  = nontime                                           diag_save_in                 = INVALID                                           save_in                      = INVALID                                           seed                         = 0                                                 value                        = 1                                               [../]                                                                                                                                                             [./right_u]                                                                        boundary                     = right                                             control_tags                 = INVALID                                           enable                       = 1                                                 extra_matrix_tags            = INVALID                                           extra_vector_tags            = INVALID                                           implicit                     = 1                                                 inactive                     =                                                   isObjectAction               = 1                                                 matrix_tags                  = system                                            type                         = DirichletBC                                       use_displaced_mesh           = 0                                                 variable                     = u                                                 vector_tags                  = nontime                                           diag_save_in                 = INVALID                                           save_in                      = INVALID                                           seed                         = 0                                                 value                        = 2                                               [../]                                                                          []                                                                                                                                                                [Executioner]                                                                      inactive                       =                                                 isObjectAction                 = 1                                               type                           = Steady                                          compute_initial_residual_before_preset_bcs = 0                                   contact_line_search_allowed_lambda_cuts = 2                                      contact_line_search_ltol       = INVALID                                         control_tags                   =                                                 enable                         = 1                                               l_abs_step_tol                 = -1                                              l_max_its                      = 10000                                           l_tol                          = 1e-05                                           line_search                    = default                                         line_search_package            = petsc                                           mffd_type                      = wp                                              nl_abs_step_tol                = 1e-50                                           nl_abs_tol                     = 1e-50                                           nl_max_funcs                   = 10000                                           nl_max_its                     = 50                                              nl_rel_step_tol                = 1e-50                                           nl_rel_tol                     = 1e-08                                           no_fe_reinit                   = 0                                               petsc_options                  = INVALID                                         petsc_options_iname            = INVALID                                         petsc_options_value            = INVALID                                         restart_file_base              =                                                 snesmf_reuse_base              = 1                                               solve_type                     = INVALID                                         splitting                      = INVALID                                       []                                                                                                                                                                [Kernels]                                                                                                                                                           [./diff_u]                                                                         inactive                     =                                                   isObjectAction               = 1                                                 type                         = Diffusion                                         block                        = INVALID                                           control_tags                 = Kernels                                           diag_save_in                 = INVALID                                           enable                       = 1                                                 extra_matrix_tags            = INVALID                                           extra_vector_tags            = INVALID                                           implicit                     = 1                                                 matrix_tags                  = system                                            save_in                      = INVALID                                           seed                         = 0                                                 use_displaced_mesh           = 0                                                 variable                     = u                                                 vector_tags                  = nontime                                         [../]                                                                          []                                                                                                                                                                [Mesh]                                                                             inactive                       =                                                 displacements                  = INVALID                                         block_id                       = INVALID                                         block_name                     = INVALID                                         boundary_id                    = INVALID                                         boundary_name                  = INVALID                                         construct_side_list_from_node_list = 0                                           ghosted_boundaries             = INVALID                                         ghosted_boundaries_inflation   = INVALID                                         isObjectAction                 = 1                                               second_order                   = 0                                               skip_partitioning              = 0                                               type                           = GeneratedMesh                                   uniform_refine                 = 0                                               allow_renumbering              = 1                                               bias_x                         = 1                                               bias_y                         = 1                                               bias_z                         = 1                                               centroid_partitioner_direction = INVALID                                         construct_node_list_from_side_list = 1                                           control_tags                   =                                                 dim                            = 2                                               elem_type                      = INVALID                                         enable                         = 1                                               gauss_lobatto_grid             = 0                                               ghosting_patch_size            = INVALID                                         max_leaf_size                  = 10                                              nemesis                        = 0                                               nx                             = 2                                               ny                             = 2                                               nz                             = 1                                               parallel_type                  = DEFAULT                                         partitioner                    = default                                         patch_size                     = 40                                              patch_update_strategy          = never                                           xmax                           = 1                                               xmin                           = 0                                               ymax                           = 1                                               ymin                           = 0                                               zmax                           = 1                                               zmin                           = 0                                             []                                                                                                                                                                [Mesh]                                                                           []                                                                                                                                                                [Outputs]                                                                          append_date                    = 0                                               append_date_format             = INVALID                                         checkpoint                     = 0                                               color                          = 1                                               console                        = 1                                               controls                       = 0                                               csv                            = 0                                               dofmap                         = 0                                               execute_on                     = 'INITIAL TIMESTEP_END'                          exodus                         = 1                                               file_base                      = normalization_aux_shift                         gmv                            = 0                                               gnuplot                        = 0                                               hide                           = INVALID                                         inactive                       =                                                 interval                       = 1                                               nemesis                        = 0                                               output_if_base_contains        = INVALID                                         perf_graph                     = 0                                               print_linear_residuals         = 1                                               print_mesh_changed_info        = 0                                               print_perf_log                 = 0                                               show                           = INVALID                                         solution_history               = 0                                               sync_times                     =                                                 tecplot                        = 0                                               vtk                            = 0                                               xda                            = 0                                               xdr                            = 0                                             []                                                                                                                                                                [Postprocessors]                                                                                                                                                    [./u0]                                                                             inactive                     =                                                   isObjectAction               = 1                                                 type                         = PointValue                                        allow_duplicate_execution_on_initial = 0                                         control_tags                 = Postprocessors                                    enable                       = 1                                                 execute_on                   = 'INITIAL TIMESTEP_END'                            force_preaux                 = 0                                                 outputs                      = INVALID                                           point                        = '(x,y,z)=(       0,        0,        0)'          use_displaced_mesh           = 0                                                 variable                     = u                                               [../]                                                                                                                                                             [./u_normalized_norm]                                                              inactive                     =                                                   isObjectAction               = 1                                                 type                         = ElementIntegralVariablePostprocessor              allow_duplicate_execution_on_initial = 0                                         block                        = INVALID                                           control_tags                 = Postprocessors                                    enable                       = 1                                                 execute_on                   = 'INITIAL TIMESTEP_END'                            implicit                     = 1                                                 outputs                      = INVALID                                           seed                         = 0                                                 use_displaced_mesh           = 0                                                 variable                     = u_normalized                                    [../]                                                                                                                                                             [./unorm]                                                                          inactive                     =                                                   isObjectAction               = 1                                                 type                         = ElementIntegralVariablePostprocessor              allow_duplicate_execution_on_initial = 0                                         block                        = INVALID                                           control_tags                 = Postprocessors                                    enable                       = 1                                                 execute_on                   = 'INITIAL TIMESTEP_END'                            implicit                     = 1                                                 outputs                      = INVALID                                           seed                         = 0                                                 use_displaced_mesh           = 0                                                 variable                     = u                                               [../]                                                                          []                                                                                                                                                                [Variables]                                                                                                                                                         [./u]                                                                              block                        = INVALID                                           eigen                        = 0                                                 family                       = LAGRANGE                                          inactive                     =                                                   initial_condition            = 1                                                 order                        = FIRST                                             outputs                      = INVALID                                           scaling                      = 1                                                 initial_from_file_timestep   = LATEST                                            initial_from_file_var        = INVALID                                         [../]                                                                          []                                                                                       ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�                                                                              ?�              ?�      ?�      ?�      ?�������?�      ?�      @       @       ?�      ?�      @               ?�������?�              ?�      ?�      ?�              ?�      ?�      ?�      ?�      