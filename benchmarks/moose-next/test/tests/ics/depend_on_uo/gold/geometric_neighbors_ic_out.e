CDF      
      
len_string     !   len_line   Q   four      	time_step          len_name   !   num_dim       	num_nodes      Q   num_elem   @   
num_el_blk        num_node_sets         num_side_sets         num_el_in_blk1     @   num_nod_per_el1       num_side_ss1      num_side_ss2      num_side_ss3      num_side_ss4      num_nod_ns1    	   num_nod_ns2    	   num_nod_ns3    	   num_nod_ns4    	   num_elem_var      num_info   �         api_version       @�
=   version       @�
=   floating_point_word_size            	file_size               int64_status             title         geometric_neighbors_ic_out.e       maximum_name_length                     
time_whole                            V    	eb_status                             	   eb_prop1               name      ID              	   	ns_status         	                    	   ns_prop1      	         name      ID              	   	ss_status         
                    	,   ss_prop1      
         name      ID              	<   coordx                     �      	L   coordy                     �      �   eb_names                       $      \   ns_names      	                 �      �   ss_names      
                 �         
coor_names                         D      �   node_num_map                   D      �   connect1                  	elem_type         QUAD4                  elem_num_map                             elem_ss1                              side_ss1                           0   elem_ss2                           P   side_ss2                           p   elem_ss3                           �   side_ss3                           �   elem_ss4                           �   side_ss4                           �   node_ns1                    $         node_ns2                    $      4   node_ns3                    $      X   node_ns4                    $      |   name_elem_var                          $      �   vals_elem_var1eb1                                V(   elem_var_tab                             �   info_records                      >X      �                                                                 ?�      ?�      ?�      ?�              ?�      ?�      ?�      ?�              ?�      ?�      ?�      ?�              ?�      ?�      ?�      ?�              ?�      ?�      ?�      ?�              ?�      ?�      ?�      ?�              ?�      ?�      ?�      ?�              ?�      ?�      ?�      ?�              ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�                                              ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�                                      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�                                          bottom                           left                             top                              right                            bottom                           left                             top                              right                                                                                                                           	   
                                                                      !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   ;   <   =   >   ?   @   A   B   C   D   E   F   G   H   I   J   K   L   M   N   O   P   Q                                 	            
   	                              	         	   
                                                                                                                                                                            !             "   !         #   "          %   $       !   &   %   !   "   '   &   "   #   (   '   $   %   *   )   %   &   +   *   &   '   ,   +   '   (   -   ,      .   2   
   .   /   3   2   /   0   4   3   0   1   5   4   
   2   6      2   3   7   6   3   4   8   7   4   5   9   8      6   :      6   7   ;   :   7   8   <   ;   8   9   =   <      :   >      :   ;   ?   >   ;   <   @   ?   <   =   A   @      >   B      >   ?   C   B   ?   @   D   C   @   A   E   D      B   F   #   B   C   G   F   C   D   H   G   D   E   I   H   #   F   J   (   F   G   K   J   G   H   L   K   H   I   M   L   (   J   N   -   J   K   O   N   K   L   P   O   L   M   Q   P                           	   
                                                                      !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   ;   <   =   >   ?   @               !   "   #   $                                 	                                                       =   >   ?   @                           $   (   ,   0   4   8   <   @                                          .   /   0   1                        $   )   )   *   +   ,   -   N   O   P   Q   1   5   9   =   A   E   I   M   Qghost                                  ####################        ?�                              ?�                   # Created by MOOSE #                       ?�                              ?�    ####################      ?�      ?�                              ?�             ### Command Line Arguments ###                   ?�                              -i                              ?�                              ?�               geometric_neighbors_ic.i                                                                                                                                          ### Version Info ###                                                             Framework Information:                                                           MOOSE version:           git commit f647b0a on 2017-04-17                        PETSc Version:           3.7.5                                                   Current Time:            Mon Apr 17 14:42:58 2017                                Executable Timestamp:    Mon Apr 17 14:40:30 2017                                                                                                                                                                                                  ### Input File ###                                                                                                                                                []                                                                                 initial_from_file_timestep     = LATEST                                          initial_from_file_var          = INVALID                                         element_order                  = AUTO                                            order                          = AUTO                                            side_order                     = AUTO                                            type                           = GAUSS                                         []                                                                                                                                                                [Executioner]                                                                      type                           = Steady                                          compute_initial_residual_before_preset_bcs = 0                                   control_tags                   =                                                 enable                         = 1                                               l_abs_step_tol                 = -1                                              l_max_its                      = 10000                                           l_tol                          = 1e-05                                           line_search                    = default                                         nl_abs_step_tol                = 1e-50                                           nl_abs_tol                     = 1e-50                                           nl_max_funcs                   = 10000                                           nl_max_its                     = 50                                              nl_rel_step_tol                = 1e-50                                           nl_rel_tol                     = 1e-08                                           no_fe_reinit                   = 0                                               petsc_options                  = INVALID                                         petsc_options_iname            = INVALID                                         petsc_options_value            = INVALID                                         restart_file_base              =                                                 solve_type                     = INVALID                                         splitting                      = INVALID                                       []                                                                                                                                                                [Executioner]                                                                      _fe_problem                    = 0x7f8c3a848200                                  _fe_problem_base               = 0x7f8c3a848200                                []                                                                                                                                                                [ICs]                                                                                                                                                               [./ghost_ic]                                                                       type                         = GhostUserObjectIC                                 block                        = INVALID                                           boundary                     = INVALID                                           control_tags                 = ICs                                               enable                       = 1                                                 ghost_uo                     = ghost_uo                                          variable                     = ghost                                           [../]                                                                          []                                                                                                                                                                [Mesh]                                                                             displacements                  = INVALID                                         block_id                       = INVALID                                         block_name                     = INVALID                                         boundary_id                    = INVALID                                         boundary_name                  = INVALID                                         construct_side_list_from_node_list = 0                                           ghosted_boundaries             = INVALID                                         ghosted_boundaries_inflation   = INVALID                                         patch_size                     = 40                                              second_order                   = 0                                               skip_partitioning              = 0                                               type                           = GeneratedMesh                                   uniform_refine                 = 0                                               allow_renumbering              = 1                                               bias_x                         = 1                                               bias_y                         = 1                                               bias_z                         = 1                                               centroid_partitioner_direction = INVALID                                         construct_node_list_from_side_list = 1                                           control_tags                   =                                                 dim                            = 2                                               distribution                   = DEFAULT                                         elem_type                      = INVALID                                         enable                         = 1                                               gauss_lobatto_grid             = 0                                               ghost_point_neighbors          = 0                                               nemesis                        = 0                                               num_ghosted_layers             = 1                                               nx                             = 8                                               ny                             = 8                                               nz                             = 1                                               parallel_type                  = distributed                                     partitioner                    = default                                         patch_update_strategy          = never                                           xmax                           = 1                                               xmin                           = 0                                               ymax                           = 1                                               ymin                           = 0                                               zmax                           = 1                                               zmin                           = 0                                             []                                                                                                                                                                [Mesh]                                                                           []                                                                                                                                                                [Outputs]                                                                          append_date                    = 0                                               append_date_format             = INVALID                                         checkpoint                     = 0                                               color                          = 1                                               console                        = 1                                               controls                       = 0                                               csv                            = 0                                               dofmap                         = 0                                               execute_on                     = 'INITIAL TIMESTEP_END'                          exodus                         = 1                                               file_base                      = INVALID                                         gmv                            = 0                                               gnuplot                        = 0                                               hide                           = INVALID                                         interval                       = 1                                               nemesis                        = 0                                               output_if_base_contains        = INVALID                                         print_linear_residuals         = 1                                               print_mesh_changed_info        = 0                                               print_perf_log                 = 0                                               show                           = INVALID                                         solution_history               = 0                                               sync_times                     =                                                 tecplot                        = 0                                               vtk                            = 0                                               xda                            = 0                                               xdr                            = 0                                             []                                                                                                                                                                [Problem]                                                                          block                          = INVALID                                         coord_type                     = XYZ                                             fe_cache                       = 0                                               kernel_coverage_check          = 0                                               material_coverage_check        = 1                                               name                           = 'MOOSE Problem'                                 restart_file_base              = INVALID                                         rz_coord_axis                  = Y                                               type                           = FEProblem                                       library_path                   =                                                 object_names                   = INVALID                                         register_objects_from          = INVALID                                         control_tags                   =                                                 enable                         = 1                                               error_on_jacobian_nonzero_reallocation = 0                                       force_restart                  = 0                                               near_null_space_dimension      = 0                                               null_space_dimension           = 0                                               petsc_inames                   =                                                 petsc_options                  = INVALID                                         petsc_values                   =                                                 solve                          = 0                                               transpose_null_space_dimension = 0                                               use_nonlinear                  = 1                                             []                                                                                                                                                                [UserObjects]                                                                                                                                                       [./ghost_uo]                                                                       type                         = GhostUserObject                                   control_tags                 = UserObjects                                       enable                       = 1                                                 execute_on                   = INITIAL                                           rank                         = 65535                                             use_displaced_mesh           = 0                                               [../]                                                                          []                                                                                                                                                                [Variables]                                                                                                                                                         [./ghost]                                                                          block                        = INVALID                                           eigen                        = 0                                                 family                       = MONOMIAL                                          initial_condition            = INVALID                                           order                        = CONSTANT                                          outputs                      = INVALID                                           scaling                      = 1                                                 initial_from_file_timestep   = LATEST                                            initial_from_file_var        = INVALID                                         [../]                                                                          []                                                                                                                  ?�                              ?�                              ?�                              ?�                              ?�                              ?�                              ?�                              ?�      ?�                              ?�                              ?�                              ?�                              ?�                              ?�                              ?�                              ?�                              ?�                              ?�                              ?�                              ?�                              ?�                              ?�                              ?�                              ?�                              ?�      ?�                              ?�                              ?�                              ?�                              ?�                              ?�                              ?�                              ?�                              