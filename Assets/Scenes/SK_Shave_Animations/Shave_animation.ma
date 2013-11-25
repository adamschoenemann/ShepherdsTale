//Maya ASCII 2014 scene
//Name: Shave_animation.ma
//Last modified: Thu, Nov 21, 2013 04:02:46 PM
//Codeset: 1252
requires maya "2014";
requires -nodeType "HIKSolverNode" -nodeType "HIKRetargeterNode" -nodeType "HIKCharacterNode"
		 -nodeType "HIKSkeletonGeneratorNode" -nodeType "HIKControlSetNode" -nodeType "HIKEffectorFromCharacter"
		 -nodeType "HIKSK2State" -nodeType "HIKFK2State" -nodeType "HIKState2FK" -nodeType "HIKState2SK"
		 -nodeType "HIKState2GlobalSK" -nodeType "HIKEffector2State" -nodeType "HIKState2Effector"
		 -nodeType "HIKProperty2State" -nodeType "HIKPinning2State" -nodeType "ComputeGlobal"
		 -nodeType "ComputeLocal" -nodeType "HIKCharacterStateClient" -dataType "HIKCharacter"
		 -dataType "HIKCharacterState" -dataType "HIKEffectorState" -dataType "HIKPropertySetState"
		 "mayaHIK" "1.0_HIK_2013.2";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "abcimport" -nodeType "mia_physicalsun"
		 -nodeType "mia_physicalsky" -nodeType "mia_material" -nodeType "mia_material_x" -nodeType "mia_roundcorners"
		 -nodeType "mia_exposure_simple" -nodeType "mia_portal_light" -nodeType "mia_light_surface"
		 -nodeType "mia_exposure_photographic" -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh"
		 -nodeType "mia_envblur" -nodeType "mia_ciesky" -nodeType "mia_photometric_light"
		 -nodeType "mib_texture_vector" -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate"
		 -nodeType "mib_bump_basis" -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map"
		 -nodeType "mib_bump_map2" -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1"
		 -nodeType "mib_lookup_cube6" -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical"
		 -nodeType "mib_texture_lookup" -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup"
		 -nodeType "mib_texture_checkerboard" -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere"
		 -nodeType "mib_texture_turbulence" -nodeType "mib_texture_wave" -nodeType "mib_reflect"
		 -nodeType "mib_refract" -nodeType "mib_transparency" -nodeType "mib_continue" -nodeType "mib_opacity"
		 -nodeType "mib_twosided" -nodeType "mib_refraction_index" -nodeType "mib_dielectric"
		 -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert" -nodeType "mib_illum_phong"
		 -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv" -nodeType "mib_illum_blinn"
		 -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair" -nodeType "mib_volume"
		 -nodeType "mib_color_alpha" -nodeType "mib_color_average" -nodeType "mib_color_intensity"
		 -nodeType "mib_color_interpolate" -nodeType "mib_color_mix" -nodeType "mib_color_spread"
		 -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere" -nodeType "mib_geo_cone"
		 -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square" -nodeType "mib_geo_instance"
		 -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf" -nodeType "mib_photon_basic"
		 -nodeType "mib_light_infinite" -nodeType "mib_light_point" -nodeType "mib_light_spot"
		 -nodeType "mib_light_photometric" -nodeType "mib_cie_d" -nodeType "mib_blackbody"
		 -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil" -nodeType "mib_lens_clamp"
		 -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample" -nodeType "mib_amb_occlusion"
		 -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar" -nodeType "mib_map_get_integer"
		 -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color" -nodeType "mib_map_get_transform"
		 -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array" -nodeType "mib_fg_occlusion"
		 -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection" -nodeType "mib_glossy_refraction"
		 -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "misss_physical"
		 -nodeType "misss_physical_phen" -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular"
		 -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader"
		 -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya"
		 -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d"
		 -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen"
		 -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler" -nodeType "mib_data_bool"
		 -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.9 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201307170459-880822";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -21.875143145585245 20.294551306053854 -11.378842065880207 ;
	setAttr ".r" -type "double3" -21.938352648617954 -1559.0000000020932 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".ncp" 4.367808;
	setAttr ".coi" 25.809506693580822;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.7620807869641353 7.9307664096411106 1.7092606968070312 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 4.367808;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".t" -type "double3" -0.4097444648967703 9.7096683707903857 100.92420409311394 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ncp" 4.367808;
	setAttr ".coi" 100.1;
	setAttr ".ow" 24.756560882474634;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".t" -type "double3" 100.11645125920239 20.081795889990286 -0.31850906407384383 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ncp" 4.367808;
	setAttr ".coi" 100.1;
	setAttr ".ow" 14.24274184942632;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" 0.1288918587118536 11.197534005687103 0.13295504143428039 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.8599436089586926 0.63280201067660935 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "pCubeShape1Orig" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Character1_Reference";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
createNode locator -n "Character1_ReferenceShape" -p "Character1_Reference";
	setAttr -k off ".v";
createNode joint -n "Character1_Hips" -p "Character1_Reference";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.2493458593547491 0 1;
	setAttr ".typ" 1;
	setAttr ".radi" 0.24748037578064247;
createNode joint -n "Character1_LeftUpLeg" -p "Character1_Hips";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.73501678214576882 7.732111836026216 0 1;
	setAttr ".sd" 1;
	setAttr ".typ" 2;
	setAttr ".radi" 0.24748037578064247;
createNode joint -n "Character1_LeftLeg" -p "Character1_LeftUpLeg";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.73501678214576882 4.0299171979338082 0 1;
	setAttr ".sd" 1;
	setAttr ".typ" 3;
	setAttr ".radi" 0.24748037578064247;
createNode joint -n "Character1_LeftFoot" -p "Character1_LeftLeg";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0 -3.3575628143615628 0 ;
	setAttr ".r" -type "double3" -20.749974050021351 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.93513537014877968 -0.35429061446318999 0
		 0 0.35429061446318999 0.93513537014877968 0 0.73501678214576882 0.67235438357224542 0 1;
	setAttr ".sd" 1;
	setAttr ".typ" 4;
	setAttr ".radi" 0.24748037578064247;
createNode joint -n "Character1_LeftToeBase" -p "Character1_LeftFoot";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 6.9517237533123222e-007 -0.51660020406040608 1.068679732155114 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.93513537014877968 -0.35429061446318999 0
		 0 0.35429061446318999 0.93513537014877968 0 0.73501747731814415 0.56788645949887506 1.1823868206277419 1;
	setAttr ".sd" 1;
	setAttr ".typ" 5;
	setAttr ".radi" 0.24748037578064247;
createNode joint -n "Character1_RightUpLeg" -p "Character1_Hips";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.73501678214576882 7.732111836026216 0 1;
	setAttr ".sd" 2;
	setAttr ".typ" 2;
	setAttr ".radi" 0.24748037578064247;
createNode joint -n "Character1_RightLeg" -p "Character1_RightUpLeg";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.73501700619800192 4.0299171979338082 3.6216608165573599e-005 1;
	setAttr ".sd" 2;
	setAttr ".typ" 3;
	setAttr ".radi" 0.24748037578064247;
createNode joint -n "Character1_RightFoot" -p "Character1_RightLeg";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 7.5811487865173888e-008 -3.3575628140315885 0 ;
	setAttr ".r" -type "double3" -20.749974050021351 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.93513537014877968 -0.35429061446318999 0
		 0 0.35429061446318999 0.93513537014877968 0 -0.73501693038651406 0.67235438390221969 3.6216608165573599e-005 1;
	setAttr ".sd" 2;
	setAttr ".typ" 4;
	setAttr ".radi" 0.24748037578064247;
createNode joint -n "Character1_RightToeBase" -p "Character1_RightFoot";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -8.9536832581393888e-005 -0.51660020298799192 1.0686820556658689 ;
	setAttr ".jo" -type "double3" 0 1.4622811973002512e-006 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999967 -9.0420709572715258e-009 -2.3866170952203289e-008 0
		 0 0.93513537014877968 -0.35429061446318999 0 2.5521621482894172e-008 0.35429061446318988 0.93513537014877934 0
		 -0.73510646721909545 0.56788728402975486 1.182425209653051 1;
	setAttr ".sd" 2;
	setAttr ".typ" 5;
	setAttr ".radi" 0.24748037578064247;
createNode joint -n "Character1_Spine" -p "Character1_Hips";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.8268000695095843 0 1;
	setAttr ".typ" 6;
	setAttr ".radi" 0.24748037578064247;
createNode joint -n "Character1_Spine1" -p "Character1_Spine";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 9.8717172116945182 0 1;
	setAttr ".typ" 6;
	setAttr ".radi" 0.24748037578064247;
createNode joint -n "Character1_Spine2" -p "Character1_Spine1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 10.916634353879452 0 1;
	setAttr ".typ" 6;
	setAttr ".radi" 0.24748037578064247;
createNode joint -n "Character1_LeftShoulder" -p "Character1_Spine2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -av ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.57745424950421231 1.1759618618546437 0 ;
	setAttr ".r" -type "double3" 0 17.303159366517484 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.57745424950421231 12.092596215734096 0 1;
	setAttr ".sd" 1;
	setAttr ".typ" 9;
	setAttr ".radi" 0.24748037578064247;
createNode joint -n "Character1_LeftArm" -p "Character1_LeftShoulder";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.4607323829485952 12.092607550335311 0 1;
	setAttr ".sd" 1;
	setAttr ".typ" 10;
	setAttr ".radi" 0.24748037578064247;
createNode joint -n "Character1_LeftForeArm" -p "Character1_LeftArm";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.7132546870490746 12.092607550335311 0 1;
	setAttr ".sd" 1;
	setAttr ".typ" 11;
	setAttr ".radi" 0.24748037578064247;
createNode joint -n "Character1_LeftHand" -p "Character1_LeftForeArm";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 2.2023400211329323 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.9155947081820068 12.092607550335311 0 1;
	setAttr ".sd" 1;
	setAttr ".typ" 12;
	setAttr ".radi" 0.24748037578064247;
createNode joint -n "Character1_LeftHandThumb1" -p "Character1_LeftHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0.35874399313888183 -0.065871232920597933 0.35327278913631593 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.2743387013208887 12.026736317414713 0.35327278913631593 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_LeftHandThumb2" -p "Character1_LeftHandThumb1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.20727223417795493 -0.04422469365592363 0.058360353983719859 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.4816109354988436 11.982511623758789 0.41163314312003579 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_LeftHandThumb3" -p "Character1_LeftHandThumb2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.20979244810991293 -1.088913650804102e-006 7.7065389042507704e-007 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.6914033836087565 11.982510534845138 0.41163391377392622 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_LeftHandThumb4" -p "Character1_LeftHandThumb3";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.21998911227959272 2.3923103320555583e-007 -6.7735378850297678e-007 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.9113924958883493 11.982510774076172 0.41163323642013772 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_LeftHandIndex1" -p "Character1_LeftHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0.72775537126456147 0.016476352490125024 0.28639001721928131 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.6433500794465683 12.109083902825436 0.28639001721928131 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_LeftHandIndex2" -p "Character1_LeftHandIndex1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.34834963174581368 -1.8231054390582813e-006 0.012142956178887221 ;
	setAttr ".jo" -type "double3" 0 0.00060923483500415344 0 ;
	setAttr ".bps" -type "matrix" 0.999999999943468 0 -1.0633153788466507e-005 0 0 1 0 0
		 1.0633153788466507e-005 0 0.999999999943468 0 6.991699711192382 12.109082079719997 0.29853297339816853 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_LeftHandIndex3" -p "Character1_LeftHandIndex2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.21879941857460405 -1.1384097184929942e-006 0.0076293400861537908 ;
	setAttr ".jo" -type "double3" 0 -0.015230870875103884 0 ;
	setAttr ".bps" -type "matrix" 0.9999999674375798 0 0.00025519568815807615 0 0 1 0 0
		 -0.00025519568815807615 0 0.9999999674375798 0 7.210499210878563 12.109080941310278 0.30615998695602448 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_LeftHandIndex4" -p "Character1_LeftHandIndex3";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.16144395310427306 -8.4143330525421334e-007 0.005586413383643074 ;
	setAttr ".jo" -type "double3" 0 0.18277045050124666 0 ;
	setAttr ".bps" -type "matrix" 0.99999569362300156 0 -0.0029347462329569205 0 0 1 0 0
		 0.0029347462329569205 0 0.99999569362300156 0 7.3719417330972226 12.109080099876973 0.31178759995847183 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_LeftHandMiddle1" -p "Character1_LeftHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0.72675741819830986 0.041320189721654188 0.10762792696167164 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.6423521263803167 12.133927740056965 0.10762792696167164 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_LeftHandMiddle2" -p "Character1_LeftHandMiddle1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.40118645109407947 0 2.4950559018882545e-005 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.0435385774743962 12.133927740056965 0.10765287752069053 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_LeftHandMiddle3" -p "Character1_LeftHandMiddle2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.22811393178839889 0 1.4170973797564268e-005 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.271652509262795 12.133927740056965 0.10766704849448809 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_LeftHandMiddle4" -p "Character1_LeftHandMiddle3";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.16545153354484299 0 1.0195861508355275e-005 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.437104042807638 12.133927740056965 0.10767724435599645 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_LeftHandRing1" -p "Character1_LeftHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0.73367700497732269 0.031340881791471986 -0.065430421617694814 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.6492717131593295 12.123948432126783 -0.065430421617694814 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_LeftHandRing2" -p "Character1_LeftHandRing1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.37433542015010879 0 7.3419178098221849e-009 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.0236071333094383 12.123948432126783 -0.065430414275777005 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_LeftHandRing3" -p "Character1_LeftHandRing2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.19010830860967065 0 -9.6517346476199251e-009 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.213715441919109 12.123948432126783 -0.065430423927511652 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_LeftHandRing4" -p "Character1_LeftHandRing3";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.15866357580317025 0 -6.7397155689707944e-008 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.3723790177222792 12.123948432126783 -0.065430491324667342 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_LeftHandPinky1" -p "Character1_LeftHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0.73272955935602901 -0.02582267986315756 -0.2054381179286508 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.6483242675380358 12.066784870472153 -0.2054381179286508 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_LeftHandPinky2" -p "Character1_LeftHandPinky1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.25111828203400322 3.3492344151397901e-006 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.8994425495720391 12.066788219706568 -0.2054381179286508 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_LeftHandPinky3" -p "Character1_LeftHandPinky2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.16288345690821071 2.1695779608421617e-006 -1.1796564586274982e-008 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.0623260064802498 12.066790389284529 -0.20543812972521538 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_LeftHandPinky4" -p "Character1_LeftHandPinky3";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.13748480662117402 1.8313547833770372e-006 6.5252325626152796e-008 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.1998108131014238 12.066792220639313 -0.20543806447288976 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_RightShoulder" -p "Character1_Spine2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.57745417080545269 12.092596215734096 0 1;
	setAttr ".sd" 2;
	setAttr ".typ" 9;
	setAttr ".radi" 0.24748037578064247;
createNode joint -n "Character1_RightArm" -p "Character1_RightShoulder";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.4607343495926477 12.092631951900357 0 1;
	setAttr ".sd" 2;
	setAttr ".typ" 10;
	setAttr ".radi" 0.24748037578064247;
createNode joint -n "Character1_RightForeArm" -p "Character1_RightArm";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.7132675882010657 12.092631951900357 0 1;
	setAttr ".sd" 2;
	setAttr ".typ" 11;
	setAttr ".radi" 0.24748037578064247;
createNode joint -n "Character1_RightHand" -p "Character1_RightForeArm";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -2.2023268832247131 -1.0724148324925409e-007 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -5.9155944714257789 12.092631844658873 0 1;
	setAttr ".sd" 2;
	setAttr ".typ" 12;
	setAttr ".radi" 0.24748037578064247;
createNode joint -n "Character1_RightHandThumb1" -p "Character1_RightHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" -0.35871297064884544 -0.065870869949382183 0.35330420025303799 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.2743074420746243 12.026760974709491 0.35330420025303799 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_RightHandThumb2" -p "Character1_RightHandThumb1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.20726708411133377 -0.044224652409198484 0.058378694424395305 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.4815745261859581 11.982536322300293 0.4116828946774333 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_RightHandThumb3" -p "Character1_RightHandThumb2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.20966449663096043 2.2108246930940822e-006 0.0073270949777184957 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.6912390228169185 11.982538533124986 0.41900998965515179 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_RightHandThumb4" -p "Character1_RightHandThumb3";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -0.21985494656840388 1.5096302927730676e-006 0.0076832194034535117 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.9110939693853224 11.982540042755279 0.42669320905860531 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_RightHandIndex1" -p "Character1_RightHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" -0.72773028830354214 0.016476723710679764 0.28645393975047634 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.643324759729321 12.109108568369553 0.28645393975047634 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_RightHandIndex2" -p "Character1_RightHandIndex1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.34834927042446306 -2.4748040061695065e-008 -0.012155558622063356 ;
	setAttr ".jo" -type "double3" 0 0.00060925453552654893 0 ;
	setAttr ".bps" -type "matrix" 0.99999999994346433 0 -1.0633497627446645e-005 0 0 1 0 0
		 1.0633497627446645e-005 0 0.99999999994346433 0 -6.9916740301537841 12.109108543621513 0.27429838112841298 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_RightHandIndex3" -p "Character1_RightHandIndex2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.21879919987996654 -2.4748095128757086e-008 -0.0076372728125318479 ;
	setAttr ".jo" -type "double3" 0 -0.015231363388163721 0 ;
	setAttr ".bps" -type "matrix" 0.99999996743547392 0 0.00025520394029333025 0 0 1 0 0
		 -0.00025520394029333025 0 0.99999996743547392 0 -7.2104733112323034 12.109108518873418 0.26666343491708572 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_RightHandIndex4" -p "Character1_RightHandIndex3";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -0.1614437888385698 -8.2493123443327931e-009 -0.0055922899174222218 ;
	setAttr ".jo" -type "double3" 0 0.18277636065796402 0 ;
	setAttr ".bps" -type "matrix" 0.99999569334449101 0 -0.0029348411321067419 0 0 1 0 0
		 0.0029348411321067419 0 0.99999569334449101 0 -7.3719156676391107 12.109108510624106 0.26102994409072627 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_RightHandMiddle1" -p "Character1_RightHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" -0.72674806921464707 0.04132040420463845 0.10769178069332215 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.642342540640426 12.133952248863512 0.10769178069332215 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_RightHandMiddle2" -p "Character1_RightHandMiddle1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.40094250226326622 -3.2997387933164646e-008 -0.013990787625629317 ;
	setAttr ".jo" -type "double3" 0 0.00060925453552654893 0 ;
	setAttr ".bps" -type "matrix" 0.99999999994346433 0 -1.0633497627446645e-005 0 0 1 0 0
		 1.0633497627446645e-005 0 0.99999999994346433 0 -7.0432850429036922 12.133952215866124 0.093700993067692834 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_RightHandMiddle3" -p "Character1_RightHandMiddle2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.22797513360900634 -1.6498747257287505e-008 -0.0079575622273675151 ;
	setAttr ".jo" -type "double3" 0 -0.015231363388163721 0 ;
	setAttr ".bps" -type "matrix" 0.99999996743547392 0 0.00025520394029333025 0 0 1 0 0
		 -0.00025520394029333025 0 0.99999996743547392 0 -7.2712602611165291 12.133952199367377 0.085745855013817554 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_RightHandMiddle4" -p "Character1_RightHandMiddle3";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -0.16535240153327901 -1.6498660215802374e-008 -0.0057276807609122765 ;
	setAttr ".jo" -type "double3" 0 0.18277636065796402 0 ;
	setAttr ".bps" -type "matrix" 0.99999569334449101 0 -0.0029348411321067419 0 0 1 0 0
		 0.0029348411321067419 0 0.99999569334449101 0 -7.4366111955384868 12.133952182868716 0.079975975855016229 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_RightHandRing1" -p "Character1_RightHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" -0.73368299730215547 0.031340939536894652 -0.065365899111575518 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.6492774687279343 12.123972784195768 -0.065365899111575518 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_RightHandRing2" -p "Character1_RightHandRing1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.37410780254928877 -3.2997387933164646e-008 -0.01305439777765724 ;
	setAttr ".jo" -type "double3" 0 0.00060925453552654893 0 ;
	setAttr ".bps" -type "matrix" 0.99999999994346433 0 -1.0633497627446645e-005 0 0 1 0 0
		 1.0633497627446645e-005 0 0.99999999994346433 0 -7.0233852712772231 12.12397275119838 -0.078420296889232757 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_RightHandRing3" -p "Character1_RightHandRing2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.18999264084292555 -1.6498749033644344e-008 -0.0066317681137722656 ;
	setAttr ".jo" -type "double3" 0 -0.015231363388163721 0 ;
	setAttr ".bps" -type "matrix" 0.99999996743547392 0 0.00025520394029333025 0 0 1 0 0
		 -0.00025520394029333025 0 0.99999996743547392 0 -7.2133779826282982 12.123972734699631 -0.085050044716334455 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_RightHandRing4" -p "Character1_RightHandRing3";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -0.15856851157335772 -8.2493158970464719e-009 -0.0054926921821599889 ;
	setAttr ".jo" -type "double3" 0 0.18277636065796402 0 ;
	setAttr ".bps" -type "matrix" 0.99999569334449101 0 -0.0029348411321067419 0 0 1 0 0
		 0.0029348411321067419 0 0.99999569334449101 0 -7.3719450872812597 12.123972726450315 -0.090583204028587494 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_RightHandPinky1" -p "Character1_RightHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" -0.73274782423269968 -0.025822745857938756 -0.20537358568830347 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.6483422956584786 12.066809098800935 -0.20537358568830347 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_RightHandPinky2" -p "Character1_RightHandPinky1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.25127034140128757 -5.4445682664550077e-006 -0.0087680153134092331 ;
	setAttr ".jo" -type "double3" 0 0.00060925453552654893 0 ;
	setAttr ".bps" -type "matrix" 0.99999999994346433 0 -1.0633497627446645e-005 0 0 1 0 0
		 1.0633497627446645e-005 0 0.99999999994346433 0 -6.8996126370597661 12.066803654232668 -0.2141416010017127 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_RightHandPinky3" -p "Character1_RightHandPinky2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.16298202972774245 -3.5307200754175483e-006 -0.0056889517203020656 ;
	setAttr ".jo" -type "double3" 0 -0.015231363388163721 0 ;
	setAttr ".bps" -type "matrix" 0.99999996743547392 0 0.00025520394029333025 0 0 1 0 0
		 -0.00025520394029333025 0 0.99999996743547392 0 -7.0625947272717493 12.066800123512593 -0.21982881965266671 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_RightHandPinky4" -p "Character1_RightHandPinky3";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -0.13756927962154819 -2.9862631745203316e-006 -0.0047652950973873787 ;
	setAttr ".jo" -type "double3" 0 0.18277636065796402 0 ;
	setAttr ".bps" -type "matrix" 0.99999569334449101 0 -0.0029348411321067419 0 0 1 0 0
		 0.0029348411321067419 0 0.99999569334449101 0 -7.200162786291334 12.066797137249418 -0.22462922281709724 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".radi" 0.082493458593547495;
createNode joint -n "Character1_Neck" -p "Character1_Spine2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 11.961551496064386 0 1;
	setAttr ".typ" 7;
	setAttr ".radi" 0.24748037578064247;
createNode joint -n "Character1_Head" -p "Character1_Neck";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0 1.6498691718709502 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 13.611420667935336 0 1;
	setAttr ".typ" 8;
	setAttr ".radi" 0.24748037578064247;
createNode place3dTexture -n "staff_simple:place3dTexture1";
	setAttr ".r" -type "double3" 0 0 79.930330832070979 ;
createNode transform -n "staff_simple1:Staff";
	setAttr ".s" -type "double3" 0.033708710994330454 0.033708710994330454 0.033708710994330454 ;
	setAttr ".rp" -type "double3" 1.1920928955078125e-007 -43.618424415588379 1.4036273956298828 ;
	setAttr ".sp" -type "double3" 1.1920928955078125e-007 -43.618424415588379 1.4036273956298828 ;
createNode mesh -n "staff_simple1:StaffShape" -p "staff_simple1:Staff";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 64 ".uvst[0].uvsp[0:63]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998 0.578125
		 0.97906649 0.578125 0.97906649 0.578125 0.97906649 0.578125 0.97906649 0.578125 0.97906649
		 0.578125 0.97906649 0.421875 0.97906649 0.421875 0.97906649 0.421875 0.97906649 0.421875
		 0.97906649 0.421875 0.97906649 0.421875 0.97906649 0.34375 0.84375 0.34375 0.84375
		 0.34375 0.84375 0.34375 0.84375 0.34375 0.84375 0.34375 0.84375 0.42187503 0.70843351
		 0.42187503 0.70843351 0.42187503 0.70843351 0.42187503 0.70843351 0.42187503 0.70843351
		 0.42187503 0.70843351 0.57812506 0.70843351 0.57812506 0.70843351 0.57812506 0.70843351
		 0.57812506 0.70843351 0.57812506 0.70843351 0.57812506 0.70843351 0.65625 0.84375
		 0.65625 0.84375 0.65625 0.84375 0.65625 0.84375 0.65625 0.84375 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 50 ".pt[0:49]" -type "float3"  -0.53948236 -82.486938 1.485373 
		0.53948164 -82.486938 1.485373 1.0789636 -82.486938 0.55096275 0.53948236 -82.486938 
		-0.38344875 -0.53948164 -82.486938 -0.38344893 -1.0789636 -82.486938 0.55096245 -0.53948236 
		-21.264355 1.485373 0.53948164 -21.264355 1.485373 1.0789636 -21.264355 0.55096275 
		0.53948236 -21.264355 -0.38344875 -0.53948164 -21.264355 -0.38344893 -1.0789636 -21.264355 
		0.55096245 4.6792977e-008 -82.486938 0.55096245 -0.50328183 -20.609169 2.0116432 
		-0.48275027 -22.376282 3.4575274 -0.46355188 -26.015163 -0.2612288 -0.44435364 -26.022411 
		-3.675729 -0.42515701 -22.804607 -6.3745794 -0.40595919 -19.316172 -6.6037426 0.53730714 
		-20.6031 2.0094988 0.51950127 -22.375698 3.4581392 0.50034201 -26.015579 -0.26090175 
		0.48118305 -26.02309 -3.6754148 0.46202239 -22.804869 -6.3750181 0.44286251 -19.316145 
		-6.6042328 0.018872274 -19.279726 -5.8697906 1.0594589 -21.171036 1.3111579 1.0211227 
		-23.244663 2.5409205 0.98276609 -25.341454 -0.75276375 0.94440782 -25.045477 -4.1480594 
		0.90605211 -22.412212 -5.7148976 0.86769187 -19.279745 -5.8702712 0.54102528 -21.744982 
		0.61496025 0.52049333 -24.114212 1.6231132 0.5012964 -24.666925 -1.2449483 0.48209876 
		-24.067211 -4.6210222 0.46290183 -22.01931 -5.0543523 0.4437035 -19.243309 -5.1358309 
		-0.4995628 -21.750984 0.61710685 -0.48175627 -24.114803 1.6225063 -0.46259719 -24.666449 
		-1.2452729 -0.44343877 -24.066582 -4.6213346 -0.42427745 -22.019039 -5.0539145 -0.40511844 
		-19.243362 -5.1353579 -1.0217164 -21.18305 1.3154526 -0.98338014 -23.245857 2.539716 
		-0.94502127 -25.340561 -0.7534126 -0.90666533 -25.044189 -4.1486835 -0.86830497 -22.411695 
		-5.7140274 -0.82994944 -19.279739 -5.8693056;
	setAttr -s 50 ".vt[0:49]"  1.37438035 -1.39286256 -2.38049531 -1.3743794 -1.39286256 -2.38049579
		 -2.74875927 -1.39286256 -4.7683716e-007 -1.37438011 -1.39286256 2.38049555 1.37437963 -1.39286256 2.38049579
		 2.74875951 -1.39286256 0 1.37438035 1.39286256 -2.38049531 -1.3743794 1.39286256 -2.38049579
		 -2.74875927 1.39286256 -4.7683716e-007 -1.37438011 1.39286256 2.38049555 1.37437963 1.39286256 2.38049579
		 2.74875951 1.39286256 0 0 -1.39286256 0 1.28215396 6.38649178 -7.052726746 1.22984731 15.61147881 -8.94219685
		 1.18093967 22.65739632 -1.26238036 1.13203216 22.21896935 8.81790257 1.083124638 14.47831154 14.31190586
		 1.034217 5.59109211 14.89574337 -1.36883736 6.37117958 -7.047257423 -1.32347512 15.61121559 -8.94363308
		 -1.2746644 22.65852928 -1.26321006 -1.22585368 22.22031403 8.81801701 -1.17704272 14.4789753 14.31301785
		 -1.12823176 5.59115505 14.89698124 -0.048078537 5.49836636 13.025925636 -2.69906902 7.81801796 -5.26816845
		 -2.6013999 16.008600235 -6.76913357 -2.50368118 20.9411602 -0.010152578 -2.40596247 20.18672371 8.6405983
		 -2.30824423 13.47865677 12.63132191 -2.21052575 5.49842834 13.027159691 -1.37831068 9.28016853 -3.49454761
		 -1.32600403 16.40624809 -4.59319782 -1.27709651 19.22265816 1.24373269 -1.22818899 18.15179062 8.46306324
		 -1.17928123 12.4776783 10.94851589 -1.13037348 5.4056406 11.1561079 1.27268076 9.29548073 -3.50001597
		 1.22731841 16.4065094 -4.59176159 1.17850757 19.22152328 1.24455857 1.12969685 18.15044785 8.46294403
		 1.080886126 12.47701836 10.94740391 1.032075286 5.40558147 11.15487194 2.60291266 7.84864235 -5.27910614
		 2.50524378 16.0091247559 -6.7662611 2.40752554 20.93889236 -0.0084969997 2.30980706 20.18403816 8.64036465
		 2.21208858 13.47733498 12.62909985 2.11437035 5.49830627 13.024689674;
	setAttr -s 102 ".ed[0:101]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 1 8 9 1 9 10 0 10 11 1 11 6 1 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 7 19 0
		 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 13 19 0 14 20 0 15 21 0 16 22 0 17 23 0 18 24 0
		 24 25 1 18 25 1 8 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0 19 26 1 20 27 0 21 28 1
		 22 29 1 23 30 1 24 31 0 31 25 1 9 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 26 32 1
		 27 33 0 28 34 1 29 35 0 30 36 1 31 37 0 37 25 1 10 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 32 38 1 33 39 0 34 40 0 35 41 0 36 42 1 37 43 0 43 25 1 11 44 0 44 45 0 45 46 0
		 46 47 0 47 48 0 48 49 0 38 44 1 39 45 0 40 46 1 41 47 0 42 48 1 43 49 0 49 25 1 44 13 1
		 45 14 0 46 15 1 47 16 1 48 17 1 49 18 0;
	setAttr -s 54 -ch 204 ".fc[0:53]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 41 42 -44
		mu 0 3 33 39 27
		f 3 55 56 -43
		mu 0 3 39 45 27
		f 3 68 69 -57
		mu 0 3 45 51 27
		f 3 81 82 -70
		mu 0 3 51 57 27
		f 3 94 95 -83
		mu 0 3 57 63 27
		f 3 101 43 -96
		mu 0 3 63 33 27
		f 4 6 30 -37 -25
		mu 0 4 24 23 34 28
		f 4 36 31 -38 -26
		mu 0 4 28 34 35 29
		f 4 37 32 -39 -27
		mu 0 4 29 35 36 30
		f 4 38 33 -40 -28
		mu 0 4 30 36 37 31
		f 4 39 34 -41 -29
		mu 0 4 31 37 38 32
		f 4 40 35 -42 -30
		mu 0 4 32 38 39 33
		f 4 7 44 -51 -31
		mu 0 4 23 22 40 34
		f 4 50 45 -52 -32
		mu 0 4 34 40 41 35
		f 4 51 46 -53 -33
		mu 0 4 35 41 42 36
		f 4 52 47 -54 -34
		mu 0 4 36 42 43 37
		f 4 53 48 -55 -35
		mu 0 4 37 43 44 38
		f 4 54 49 -56 -36
		mu 0 4 38 44 45 39
		f 4 8 57 -64 -45
		mu 0 4 22 21 46 40
		f 4 63 58 -65 -46
		mu 0 4 40 46 47 41
		f 4 64 59 -66 -47
		mu 0 4 41 47 48 42
		f 4 65 60 -67 -48
		mu 0 4 42 48 49 43
		f 4 66 61 -68 -49
		mu 0 4 43 49 50 44
		f 4 67 62 -69 -50
		mu 0 4 44 50 51 45
		f 4 9 70 -77 -58
		mu 0 4 21 20 52 46
		f 4 76 71 -78 -59
		mu 0 4 46 52 53 47
		f 4 77 72 -79 -60
		mu 0 4 47 53 54 48
		f 4 78 73 -80 -61
		mu 0 4 48 54 55 49
		f 4 79 74 -81 -62
		mu 0 4 49 55 56 50
		f 4 80 75 -82 -63
		mu 0 4 50 56 57 51
		f 4 10 83 -90 -71
		mu 0 4 20 25 58 52
		f 4 89 84 -91 -72
		mu 0 4 52 58 59 53
		f 4 90 85 -92 -73
		mu 0 4 53 59 60 54
		f 4 91 86 -93 -74
		mu 0 4 54 60 61 55
		f 4 92 87 -94 -75
		mu 0 4 55 61 62 56
		f 4 93 88 -95 -76
		mu 0 4 56 62 63 57
		f 4 11 24 -97 -84
		mu 0 4 25 24 28 58
		f 4 96 25 -98 -85
		mu 0 4 58 28 29 59
		f 4 97 26 -99 -86
		mu 0 4 59 29 30 60
		f 4 98 27 -100 -87
		mu 0 4 60 30 31 61
		f 4 99 28 -101 -88
		mu 0 4 61 31 32 62
		f 4 100 29 -102 -89
		mu 0 4 62 32 33 63;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "Staff_parentConstraint1" -p "staff_simple1:Staff";
	addAttr -ci true -k true -sn "w0" -ln "Character1_RightHandW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.8956020875526782 -0.3069658520926799 1.948837388029844 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".lr" -type "double3" 40.936616734891388 -12.030349794600271 36.42141012790222 ;
	setAttr ".rst" -type "double3" -7.8111966781877467 55.404090408154573 0.54520999239996115 ;
	setAttr ".rsrr" -type "double3" 89.999999999999986 0 0 ;
	setAttr -k on ".w0";
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 45 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "256";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "1";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.167";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 0\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 0\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 0\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 0\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n"
		+ "                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 0\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 0\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 0\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n"
		+ "            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 0\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n"
		+ "                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n"
		+ "                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n"
		+ "                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n"
		+ "                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n"
		+ "                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n"
		+ "\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 0\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 0\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 60 -ast 1 -aet 60 ";
	setAttr ".st" 6;
createNode hyperGraphInfo -n "nodeEditorPanel1Info";
createNode hyperView -n "hyperView1";
	setAttr ".vl" -type "double2" -259.52380952380958 -145.23809523809524 ;
	setAttr ".vh" -type "double2" 257.14285714285717 148.80952380952382 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 130 ".hyp";
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".hyp[2].nvs" 1920;
	setAttr ".hyp[3].nvs" 1920;
	setAttr ".hyp[4].nvs" 1920;
	setAttr ".hyp[5].nvs" 1920;
	setAttr ".hyp[6].nvs" 1920;
	setAttr ".hyp[7].nvs" 1920;
	setAttr ".hyp[8].nvs" 1920;
	setAttr ".hyp[9].nvs" 1920;
	setAttr ".hyp[10].nvs" 1920;
	setAttr ".hyp[11].nvs" 1920;
	setAttr ".hyp[12].nvs" 1920;
	setAttr ".hyp[13].nvs" 1920;
	setAttr ".hyp[14].nvs" 1920;
	setAttr ".hyp[15].nvs" 1920;
	setAttr ".hyp[16].nvs" 1920;
	setAttr ".hyp[17].nvs" 1920;
	setAttr ".hyp[18].nvs" 1920;
	setAttr ".hyp[19].nvs" 1920;
	setAttr ".hyp[20].nvs" 1920;
	setAttr ".hyp[21].nvs" 1920;
	setAttr ".hyp[22].nvs" 1920;
	setAttr ".hyp[23].nvs" 1920;
	setAttr ".hyp[24].nvs" 1920;
	setAttr ".hyp[25].nvs" 1920;
	setAttr ".hyp[26].nvs" 1920;
	setAttr ".hyp[27].nvs" 1920;
	setAttr ".hyp[28].nvs" 1920;
	setAttr ".hyp[29].nvs" 1920;
	setAttr ".hyp[30].nvs" 1920;
	setAttr ".hyp[31].nvs" 1920;
	setAttr ".hyp[32].nvs" 1920;
	setAttr ".hyp[33].nvs" 1920;
	setAttr ".hyp[34].nvs" 1920;
	setAttr ".hyp[35].nvs" 1920;
	setAttr ".hyp[36].nvs" 1920;
	setAttr ".hyp[37].nvs" 1920;
	setAttr ".hyp[38].nvs" 1920;
	setAttr ".hyp[39].nvs" 1920;
	setAttr ".hyp[40].nvs" 1920;
	setAttr ".hyp[41].nvs" 1920;
	setAttr ".hyp[42].nvs" 1920;
	setAttr ".hyp[43].nvs" 1920;
	setAttr ".hyp[44].nvs" 1920;
	setAttr ".hyp[45].nvs" 1920;
	setAttr ".hyp[46].nvs" 1920;
	setAttr ".hyp[47].nvs" 1920;
	setAttr ".hyp[48].nvs" 1920;
	setAttr ".hyp[49].nvs" 1920;
	setAttr ".hyp[50].nvs" 1920;
	setAttr ".hyp[51].nvs" 1920;
	setAttr ".hyp[52].nvs" 1920;
	setAttr ".hyp[53].nvs" 1920;
	setAttr ".hyp[54].nvs" 1920;
	setAttr ".hyp[55].nvs" 1920;
	setAttr ".hyp[56].nvs" 1920;
	setAttr ".hyp[57].nvs" 1920;
	setAttr ".hyp[58].nvs" 1920;
	setAttr ".hyp[59].nvs" 1920;
	setAttr ".hyp[60].nvs" 1920;
	setAttr ".hyp[61].nvs" 1920;
	setAttr ".hyp[62].nvs" 1920;
	setAttr ".hyp[63].nvs" 1920;
	setAttr ".hyp[64].nvs" 1920;
	setAttr ".hyp[65].nvs" 1920;
	setAttr ".hyp[66].nvs" 1920;
	setAttr ".hyp[67].nvs" 1920;
	setAttr ".hyp[68].nvs" 1920;
	setAttr ".hyp[69].nvs" 1920;
	setAttr ".hyp[70].nvs" 1920;
	setAttr ".hyp[71].nvs" 1920;
	setAttr ".hyp[72].nvs" 1920;
	setAttr ".hyp[73].nvs" 1920;
	setAttr ".hyp[74].nvs" 1920;
	setAttr ".hyp[75].nvs" 1920;
	setAttr ".hyp[76].nvs" 1920;
	setAttr ".hyp[77].nvs" 1920;
	setAttr ".hyp[78].nvs" 1920;
	setAttr ".hyp[79].nvs" 1920;
	setAttr ".hyp[80].nvs" 1920;
	setAttr ".hyp[81].nvs" 1920;
	setAttr ".hyp[82].nvs" 1920;
	setAttr ".hyp[83].nvs" 1920;
	setAttr ".hyp[84].nvs" 1920;
	setAttr ".hyp[85].nvs" 1920;
	setAttr ".hyp[86].nvs" 1920;
	setAttr ".hyp[87].nvs" 1920;
	setAttr ".hyp[88].nvs" 1920;
	setAttr ".hyp[89].nvs" 1920;
	setAttr ".hyp[90].nvs" 1920;
	setAttr ".hyp[91].nvs" 1920;
	setAttr ".hyp[92].nvs" 1920;
	setAttr ".hyp[93].nvs" 1920;
	setAttr ".hyp[94].nvs" 1920;
	setAttr ".hyp[95].nvs" 1920;
	setAttr ".hyp[96].nvs" 1920;
	setAttr ".hyp[97].nvs" 1920;
	setAttr ".hyp[98].nvs" 1920;
	setAttr ".hyp[99].nvs" 1920;
	setAttr ".hyp[100].nvs" 1920;
	setAttr ".hyp[101].nvs" 1920;
	setAttr ".hyp[102].nvs" 1920;
	setAttr ".hyp[103].nvs" 1920;
	setAttr ".hyp[104].nvs" 1920;
	setAttr ".hyp[105].nvs" 1920;
	setAttr ".hyp[106].nvs" 1920;
	setAttr ".hyp[107].nvs" 1920;
	setAttr ".hyp[108].nvs" 1920;
	setAttr ".hyp[109].nvs" 1920;
	setAttr ".hyp[110].nvs" 1920;
	setAttr ".hyp[111].nvs" 1920;
	setAttr ".hyp[112].nvs" 1920;
	setAttr ".hyp[113].nvs" 1920;
	setAttr ".hyp[114].nvs" 1920;
	setAttr ".hyp[115].nvs" 1920;
	setAttr ".hyp[116].nvs" 1920;
	setAttr ".hyp[117].nvs" 1920;
	setAttr ".hyp[118].nvs" 1920;
	setAttr ".hyp[119].nvs" 1920;
	setAttr ".hyp[120].nvs" 1920;
	setAttr ".hyp[121].nvs" 1920;
	setAttr ".hyp[122].nvs" 1920;
	setAttr ".hyp[123].nvs" 1920;
	setAttr ".hyp[124].nvs" 1920;
	setAttr ".hyp[125].nvs" 1920;
	setAttr ".hyp[126].nvs" 1920;
	setAttr ".hyp[127].nvs" 1920;
	setAttr ".hyp[128].nvs" 1920;
	setAttr ".hyp[129].nvs" 1920;
	setAttr ".anf" yes;
createNode polyCube -n "polyCube1";
	setAttr ".w" 4.3316207004608884;
	setAttr ".h" 6.3168131659275994;
	setAttr ".d" 2.8970064966959574;
	setAttr ".sw" 4;
	setAttr ".sh" 4;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 82 ".tk[0:81]" -type "float3"  -1.4901161e-008 3.7252903e-008
		 0.041572988 1.4901161e-008 5.2154064e-008 0.041572981 0 2.9802322e-008 0.041572958
		 0 6.7055225e-008 0.041572973 -0.38153085 1.4901161e-008 0.041573003 1.4901161e-008
		 0 0.38454998 0 -7.4505806e-009 0.38454992 0 -5.9604631e-008 0.38454998 -7.4505806e-009
		 3.7252903e-008 0.38454998 -1.8626451e-009 -3.7252903e-008 0.38454995 1.4901161e-008
		 1.4901161e-008 0.21825814 2.9802322e-008 7.4505806e-009 0.21825811 2.9802322e-008
		 -4.4703484e-008 0.21825808 7.4505806e-009 5.9604645e-008 0.21825817 0 -5.9604645e-008
		 0.21825814 -1.4901161e-008 -0.2956351 -0.06235937 0 -0.29563522 -0.062359378 1.4901161e-008
		 -0.29563498 -0.062359378 0 -0.29563504 -0.062359378 0 -0.2956351 -0.06235937 1.4901161e-008
		 -0.65696681 -0.56123537 -1.4901161e-008 -0.65696692 -0.56123537 0 -1.3363533 -0.56123531
		 7.4505806e-009 -1.1218102 -0.56123525 0 -1.12181091 -0.56123537 0 -0.64054245 -0.17668518
		 -2.9802322e-008 -0.64054203 -0.17668518 1.4901161e-008 -1.31992984 -0.1766852 0 -1.10538542
		 -0.1766852 1.8626451e-009 -1.10538626 -0.17668518 1.4901161e-008 -0.39418006 0.13511214
		 4.4703484e-008 -0.39417976 0.13511214 0 -1.073566198 0.13511212 7.4505806e-009 -0.76963055
		 0.13511214 1.8626451e-009 -0.85902321 0.13511212 -1.4901161e-008 -0.14781764 0.49887574
		 0 -0.14781755 0.49887574 0 -0.82720518 0.49887571 0 -0.27296802 0.49887574 -1.8626451e-009
		 -0.61266136 0.49887574 -2.9802322e-008 0.22993827 -0.031179726 0 0.22993831 -0.03117973
		 1.4901161e-008 0.22993825 -0.031179719 7.4505806e-009 0.14054528 -0.031179726 1.8626451e-009
		 -0.23490562 -0.031179726 1.4901161e-008 0 -0.27022433 2.9802322e-008 0 -0.27022442
		 2.9802322e-008 -4.4703484e-008 -0.27022433 7.4505806e-009 -6.7055225e-008 -0.27022439
		 0 -5.9604645e-008 -0.27022439 1.4901161e-008 0 -0.39494321 0 -7.4505806e-009 -0.39494318
		 0 -5.9604631e-008 -0.39494318 -7.4505806e-009 3.7252903e-008 -0.39494324 -1.8626451e-009
		 -3.7252903e-008 -0.39494312 -1.4901161e-008 2.2351742e-008 -0.031179737 1.4901161e-008
		 3.7252903e-008 -0.031179734 2.9802322e-008 6.7055225e-008 -0.031179741 0 4.4703484e-008
		 -0.031179748 -0.38153091 7.4505806e-009 -0.031179726 1.4901161e-008 7.4505806e-009
		 -1.8626451e-009 1.4901161e-008 -5.9604645e-008 0 2.9802322e-008 -5.9604645e-008 0
		 7.4505806e-009 -5.9604645e-008 -3.7252903e-009 -0.38153082 -7.4505806e-009 0 1.4901161e-008
		 7.4505806e-009 3.7252903e-009 1.4901161e-008 -5.9604645e-008 0 2.9802322e-008 -5.9604645e-008
		 3.7252903e-009 7.4505806e-009 -5.9604645e-008 0 -0.38153082 -7.4505806e-009 -3.7252903e-009
		 -1.8626451e-009 -3.7252903e-008 0 -1.8626451e-009 -3.7252903e-008 3.7252903e-009
		 0 -5.9604645e-008 3.7252903e-009 0 -5.9604645e-008 3.7252903e-009 -1.8626451e-009
		 -0.31205937 0.010393243 -1.8626451e-009 -0.31205937 -0.020786494 1.4901161e-008 0
		 0 1.4901161e-008 0 -3.7252903e-009 1.4901161e-008 1.4901161e-008 -1.8626451e-009
		 1.4901161e-008 1.4901161e-008 3.7252903e-009 1.4901161e-008 -0.31205925 0.010393245
		 1.4901161e-008 -0.31205925 -0.020786488;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 15 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[16:17]" "f[20:21]" "f[24:25]" "f[28:29]" "f[32:33]" "f[36:37]" "f[40:41]" "f[44:45]" "f[48:49]" "f[52:53]" "f[68:79]";
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[22:27]";
	setAttr ".ix" -type "matrix" 0.8599436089586926 0 0 0 0 0.63280201067660935 0 0 0 0 1 0
		 0.1288918587118536 14.196883674929664 0.13295504143428039 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.81233037 11.965269 0.070371121 ;
	setAttr ".rs" 2041326189;
	setAttr ".lt" -type "double3" -2.2204460492503131e-016 -5.2758201508452745e-017 
		0.54109342853094444 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.12510259636441162 11.965268618686066 -1.2412203879098969 ;
	setAttr ".cbx" -type "double3" 1.4995580999578508 11.965268769557822 1.3819626240987701 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 48 ".tk[0:47]" -type "float3"  8.9406967e-008 -0.3681547
		 -0.24431391 -0.36734876 -0.3681545 -0.24106865 -0.43737516 -0.36815453 -0.38126308
		 -0.0016241159 0 -0.083958626 -0.11396907 0 -0.24203536 -0.40306732 5.9604645e-008
		 -0.52750701 -0.0065353871 -1.1920929e-007 -0.11539268 -0.075820431 -1.1920929e-007
		 -0.24781676 -0.46308985 0 -0.52395737 -0.019497203 -0.4090606 -0.096075743 -0.19469061
		 -0.36815453 -0.21126615 -0.61897486 -0.28477815 -0.35501626 -0.050660916 -0.15787596
		 -0.049767327 -0.34507361 -0.40151834 -0.12667759 -0.90844208 -0.39173949 -0.14983219
		 -0.068698116 0.1937387 -0.017852757 -0.20281254 1.1920929e-007 -0.060685482 -0.50916153
		 1.1920929e-007 -0.069506153 -0.050472543 0.50719726 -0.0050125816 -0.18178573 0 -0.01183619
		 -0.62001675 1.1920929e-007 -0.014029148 -0.011810976 0.94756621 -0.00019524136 -0.4237403
		 0.071514606 -0.0019901781 -0.91577345 -1.1920929e-007 -0.003626718 -0.022087123 1.1920929e-007
		 -2.3841858e-007 -0.12371413 -1.1920929e-007 -0.00028682384 -0.51675642 -1.1920929e-007
		 0.23157057 -0.047326624 0 0 -0.0746319 0 -0.04182326 -0.42698529 0 0.28728384 -0.020204052
		 -5.9604645e-008 -2.3841858e-007 -0.09377338 5.9604645e-008 1.1920929e-007 -0.46975723
		 0 0.42549753 -0.0024670507 -0.36815473 0.10550761 -0.38255349 -0.36815464 0.10742725
		 -0.35618389 -0.36815453 0.49169427 -0.0044064377 -0.36815464 -0.0076757958 -0.016173834
		 -0.36815467 -0.010554328 -0.1971422 -0.36815447 -0.0093140397 -0.0020119573 -0.36815453
		 -0.025730457 -0.010733074 -0.36815467 -0.03152604 -0.19037709 -0.36815453 -0.02906559
		 -0.098588087 -1.1920929e-007 -0.20787798 -0.02910568 0 0.013446038 -0.21512574 -2.3841858e-007
		 -0.23391762 -0.13310352 0 -0.027564462 -0.26297745 0 -0.13218556 -0.22200927 1.1920929e-007
		 -0.1319311;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[22:27]";
	setAttr ".ix" -type "matrix" 0.8599436089586926 0 0 0 0 0.63280201067660935 0 0 0 0 1 0
		 0.1288918587118536 14.196883674929664 0.13295504143428039 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.81233037 11.424174 0.070371658 ;
	setAttr ".rs" 933968302;
	setAttr ".lt" -type "double3" -2.2204460492503131e-016 2.2089216366073263e-016 4.348753776699894 ;
	setAttr ".ls" -type "double3" 1 1 1.9118434082387528 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.12510259676485408 11.424174608525828 -1.2412194342355805 ;
	setAttr ".cbx" -type "double3" 1.4995580999578508 11.424174608525828 1.3819627433080597 ;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[100:101]" "e[104]" "e[107]" "e[109]" "e[113]" "e[116]" "e[119]" "e[121]" "e[124]";
	setAttr ".ix" -type "matrix" 0.8599436089586926 0 0 0 0 0.63280201067660935 0 0 0 0 1 0
		 0.1288918587118536 14.196883674929664 0.13295504143428039 1;
	setAttr ".wt" 0.08938385546207428;
	setAttr ".re" 119;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[49]" -type "float3" 0.015050665 0 0 ;
	setAttr ".tk[50]" -type "float3" 0.015050665 0 0 ;
	setAttr ".tk[52]" -type "float3" 0.015050665 0 0 ;
	setAttr ".tk[55]" -type "float3" 0.015050665 0 0 ;
	setAttr ".tk[58]" -type "float3" 0.87293839 0 0 ;
	setAttr ".tk[60]" -type "float3" 0.87293839 0 0 ;
	setAttr ".tk[61]" -type "float3" 0.87293839 0 0 ;
	setAttr ".tk[62]" -type "float3" 0.87293839 0 0 ;
	setAttr ".tk[64]" -type "float3" 0.87293839 0 0 ;
	setAttr ".tk[67]" -type "float3" 0.87293839 0 0 ;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[127:128]" "e[130]" "e[132]" "e[134]" "e[136]" "e[138]" "e[140]" "e[142]" "e[144]";
	setAttr ".ix" -type "matrix" 0.8599436089586926 0 0 0 0 0.63280201067660935 0 0 0 0 1 0
		 0.1288918587118536 14.196883674929664 0.13295504143428039 1;
	setAttr ".wt" 0.37582442164421082;
	setAttr ".re" 127;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 33 ".tk";
	setAttr ".tk[0]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[1]" -type "float3" 5.364418e-007 0 0 ;
	setAttr ".tk[2]" -type "float3" 3.8743019e-007 0 0 ;
	setAttr ".tk[5]" -type "float3" 6.9849193e-010 0 0 ;
	setAttr ".tk[33]" -type "float3" -1.15484e-007 0 0 ;
	setAttr ".tk[34]" -type "float3" -2.2351742e-007 0 0 ;
	setAttr ".tk[35]" -type "float3" 3.8743019e-007 0 0 ;
	setAttr ".tk[36]" -type "float3" 2.6077032e-008 0 0 ;
	setAttr ".tk[37]" -type "float3" 3.8743019e-007 0 0 ;
	setAttr ".tk[38]" -type "float3" 1.0803342e-007 0 0 ;
	setAttr ".tk[39]" -type "float3" 3.8743019e-007 0 0 ;
	setAttr ".tk[40]" -type "float3" 6.9849193e-010 0 0 ;
	setAttr ".tk[41]" -type "float3" 6.9849193e-010 0 0 ;
	setAttr ".tk[46]" -type "float3" -1.3411045e-007 0 0 ;
	setAttr ".tk[47]" -type "float3" 6.5565109e-007 0 0 ;
	setAttr ".tk[48]" -type "float3" 1.1920929e-007 0 0 ;
	setAttr ".tk[49]" -type "float3" 0.05271782 1.7763568e-015 0 ;
	setAttr ".tk[50]" -type "float3" 0.05271782 1.7763568e-015 0 ;
	setAttr ".tk[51]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".tk[52]" -type "float3" 0.05271782 1.7763568e-015 0 ;
	setAttr ".tk[53]" -type "float3" 0.0043749302 0 0 ;
	setAttr ".tk[54]" -type "float3" 2.0861626e-007 0 0 ;
	setAttr ".tk[55]" -type "float3" 0.05271782 1.7763568e-015 0 ;
	setAttr ".tk[68]" -type "float3" 0.014172294 -3.5527137e-015 0 ;
	setAttr ".tk[69]" -type "float3" 0.12040631 0 0 ;
	setAttr ".tk[70]" -type "float3" 0.12040631 0 0 ;
	setAttr ".tk[71]" -type "float3" 0.12040631 0 0 ;
	setAttr ".tk[72]" -type "float3" 0.12040631 0 0 ;
	setAttr ".tk[73]" -type "float3" 0.0013269673 0 0 ;
	setAttr ".tk[74]" -type "float3" -1.4901161e-007 0 0 ;
	setAttr ".tk[75]" -type "float3" -4.4703484e-008 0 0 ;
	setAttr ".tk[76]" -type "float3" 1.7136335e-007 0 0 ;
	setAttr ".tk[77]" -type "float3" 4.9173832e-007 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[38]";
	setAttr ".ix" -type "matrix" 0.8599436089586926 0 0 0 0 0.63280201067660935 0 0 0 0 1 0
		 0.1288918587118536 14.196883674929664 0.13295504143428039 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 3.5473582348698733 0 9.1940344226770776e-017 ;
	setAttr ".pvt" -type "float3" 5.1766791 15.325336 -0.0042998823 ;
	setAttr ".rs" 1819384450;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.4581871284645311 14.998733264061922 -0.47167167374897767 ;
	setAttr ".cbx" -type "double3" 1.8004511448061038 15.651937964078126 0.46307190945338439 ;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 42 ".tk[46:87]" -type "float3"  0 0 -0.19403897 0 0 -0.19403897
		 0 0 -0.19403897 0 0 -0.18325946 0 0 -0.18325946 0 0 0.22931878 0 0 0.21657936 0 0
		 0.22931878 0 0 0.22931878 0 0 0.21657936 0 1.7763568e-015 -0.322202 0 1.7763568e-015
		 -0.322202 -1.0040245056 0 -0.322202 0 1.7763568e-015 -0.322202 -0.15050662 1.7763568e-015
		 -0.322202 -0.15050662 1.7763568e-015 -0.322202 -1.0040245056 -1.7763568e-015 0.38078412
		 0 0 0.38078412 -0.15050662 0 0.38078412 0 0 0.38078412 0 0 0.38078412 -0.15050662
		 0 0.38078412 0 0 0.38078412 0 0 0.38078412 0 0 0.38078412 0 0 -0.32220194 0 0 -0.32220194
		 0 0 -0.32220194 0 0 -0.32220194 0 0 -0.32220194 0 0 0.38078412 0 0 0.38078412 0 0
		 0.38078412 0.075253323 0 0.38078412 0.075253323 0 0.38078412 0.075253323 0 -0.322202
		 0.075253323 0 -0.322202 0 0 -0.322202 0 0 -0.322202 0 0 -0.322202 0 0 0.38078412
		 0 0 0.38078412;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[167:168]" "e[170]" "e[172]";
	setAttr ".ix" -type "matrix" 0.8599436089586926 0 0 0 0 0.63280201067660935 0 0 0 0 1 0
		 0.1288918587118536 14.196883674929664 0.13295504143428039 1;
	setAttr ".wt" 0.45958739519119263;
	setAttr ".re" 172;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[88:91]" -type "float3"  -0.36121595 -0.08347863 0.12071896
		 -0.36121595 -0.08347863 0 0 -0.2289314 0 -0.060202647 -1.6321428e-007 0;
createNode polyCut -n "polyCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[38]";
	setAttr ".ix" -type "matrix" 0.8599436089586926 0 0 0 0 0.63280201067660935 0 0 0 0 1 0
		 0.1288918587118536 14.196883674929664 0.13295504143428039 1;
	setAttr ".pc" -type "double3" 4.9430603916306914 14.899199594781853 0.26331952393139202 ;
	setAttr ".ro" -type "double3" -119.41673194771248 -71.590459195277262 -142.00208843319871 ;
	setAttr ".ps" -type "double2" 1 1.1510152816772461 ;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[8]" -type "float3" 0 -1.1641532e-009 0 ;
	setAttr ".tk[11]" -type "float3" 0 -5.8207661e-011 0 ;
	setAttr ".tk[26]" -type "float3" 0 -1.7462298e-010 0 ;
	setAttr ".tk[29]" -type "float3" 0 2.3283064e-010 0 ;
	setAttr ".tk[40]" -type "float3" 0 -4.6566129e-010 0 ;
	setAttr ".tk[41]" -type "float3" 0 9.3132257e-010 0 ;
	setAttr ".tk[42]" -type "float3" 0 -1.8626451e-009 0 ;
	setAttr ".tk[43]" -type "float3" 0 0.00099671737 0 ;
	setAttr ".tk[44]" -type "float3" 0 -2.7939677e-009 0 ;
	setAttr ".tk[45]" -type "float3" 0 -2.7939677e-009 0 ;
	setAttr ".tk[88]" -type "float3" -0.056140352 -1.0100338 0.1254068 ;
	setAttr ".tk[89]" -type "float3" -0.047657136 -1.0030532 -0.072764046 ;
	setAttr ".tk[90]" -type "float3" -0.028345656 -0.077903949 0 ;
	setAttr ".tk[91]" -type "float3" -0.074073382 -0.19919653 0 ;
	setAttr ".tk[92]" -type "float3" -0.0076955594 -0.048829403 0 ;
	setAttr ".tk[93]" -type "float3" -0.00030392478 0.0090574082 0 ;
	setAttr ".tk[94]" -type "float3" -0.075253278 -0.66474885 0 ;
	setAttr ".tk[95]" -type "float3" -0.075253278 -0.66411453 0 ;
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 2 "f[38]" "f[80:88]";
createNode polyCloseBorder -n "polyCloseBorder1";
	setAttr ".ics" -type "componentList" 3 "e[41]" "e[70]" "e[78:79]";
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[79]";
	setAttr ".ix" -type "matrix" 0.8599436089586926 0 0 0 0 0.63280201067660935 0 0 0 0 1 0
		 0.1288918587118536 14.196883674929664 0.13295504143428039 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 2.2112985778414309 -9.3436369752453174e-013 2.4633073358870661e-016 ;
	setAttr ".s" -type "double3" 0.09814750642847965 1 1 ;
	setAttr ".pvt" -type "float3" 3.8406162 15.325336 -0.0042998823 ;
	setAttr ".rs" 1842523435;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.4581871284645311 14.998733264061922 -0.47167167374897767 ;
	setAttr ".cbx" -type "double3" 1.8004511448061038 15.651937964078126 0.46307190945338439 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[79]";
	setAttr ".ix" -type "matrix" 0.8599436089586926 0 0 0 0 0.63280201067660935 0 0 0 0 1 0
		 0.1288918587118536 14.196883674929664 0.13295504143428039 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.8406165 15.038644 -0.038981561 ;
	setAttr ".rs" 20333264;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.8238201750951539 14.533592056375559 -0.54103502938557435 ;
	setAttr ".cbx" -type "double3" 3.857412542426236 15.543695776923862 0.46307190945338439 ;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[88:91]" -type "float3"  0 0.075310379 0.08348693 0
		 -0.17721349 -0.31004524 0 -0.73505014 0 0 -0.73505014 -0.069363356;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[79]";
	setAttr ".ix" -type "matrix" 0.8599436089586926 0 0 0 0 0.63280201067660935 0 0 0 0 1 0
		 0.1288918587118536 14.196883674929664 0.13295504143428039 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.8406165 15.114427 -0.03898159 ;
	setAttr ".rs" 848066800;
	setAttr ".lt" -type "double3" -2.3817753325161561e-015 -3.3653635433950058e-016 
		2.3729785326219668 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.8316243050607937 14.844040077110037 -0.30776304313946534 ;
	setAttr ".cbx" -type "double3" 3.8496084124605963 15.384813484788269 0.22979986360263061 ;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[92:95]" -type "float3"  0.0040199021 -0.25107664 -0.22863173
		 0.0090751369 -0.2482141 0.23225282 -0.0090751369 0.49059275 -0.23327205 -0.0072067576
		 0.49059275 0.23327205;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 1 "f[79]";
	setAttr ".ix" -type "matrix" 0.8599436089586926 0 0 0 0 0.63280201067660935 0 0 0 0 1 0
		 0.1288918587118536 14.196883674929664 0.13295504143428039 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.0444293 15.178333 -0.054334957 ;
	setAttr ".rs" 507698458;
	setAttr ".lt" -type "double3" -1.259409243559162e-015 3.1034202985225079e-015 1.2863631863313978 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 6.0354372898691997 15.023689187568905 -0.20388552853871156 ;
	setAttr ".cbx" -type "double3" 6.0534213972690019 15.332976438728826 0.095215615536682119 ;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[44]" -type "float3" 0 -0.59520578 0 ;
	setAttr ".tk[45]" -type "float3" 0 -0.59520578 0 ;
	setAttr ".tk[56]" -type "float3" 0 1.3899157 0 ;
	setAttr ".tk[57]" -type "float3" 0 1.3899157 0 ;
	setAttr ".tk[58]" -type "float3" 0 1.3899157 0 ;
	setAttr ".tk[59]" -type "float3" 0 1.3899157 0 ;
	setAttr ".tk[60]" -type "float3" 0 1.3899157 0 ;
	setAttr ".tk[61]" -type "float3" 0 1.3899157 0 ;
	setAttr ".tk[62]" -type "float3" 0 1.3899157 0 ;
	setAttr ".tk[63]" -type "float3" 0 1.3899157 0 ;
	setAttr ".tk[64]" -type "float3" 0 1.3899157 0 ;
	setAttr ".tk[65]" -type "float3" 0 1.3899157 0 ;
	setAttr ".tk[66]" -type "float3" 0 1.3899157 0 ;
	setAttr ".tk[67]" -type "float3" 0 1.3899157 0 ;
	setAttr ".tk[96]" -type "float3" -0.19565862 -0.18290606 -0.11685915 ;
	setAttr ".tk[97]" -type "float3" -0.19565862 -0.18149357 0.11871005 ;
	setAttr ".tk[98]" -type "float3" -0.19565862 0.18290606 -0.1192309 ;
	setAttr ".tk[99]" -type "float3" -0.19565862 0.18290606 0.11923088 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 1 "f[79]";
	setAttr ".ix" -type "matrix" 0.8599436089586926 0 0 0 0 0.63280201067660935 0 0 0 0 1 0
		 0.1288918587118536 14.196883674929664 0.13295504143428039 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.3292813 15.116303 -0.069281206 ;
	setAttr ".rs" 371595608;
	setAttr ".lt" -type "double3" -1.5421691701433815e-015 2.4286128663675299e-015 1.2686420639436489 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.3202893680394938 14.961659547401526 -0.2188317806463318 ;
	setAttr ".cbx" -type "double3" 7.338273475439296 15.27094785466374 0.08026936342906188 ;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[100:103]" -type "float3"  0 -0.19366127 0 0 -0.19366127
		 0 0 -0.19366127 0 0 -0.19366127 0;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 1 "f[93]";
	setAttr ".ix" -type "matrix" 0.8599436089586926 0 0 0 0 0.63280201067660935 0 0 0 0 1 0
		 0.1288918587118536 14.196883674929664 0.13295504143428039 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.6893597 15.120547 0.24563213 ;
	setAttr ".rs" 1381375715;
	setAttr ".lt" -type "double3" 6.6613381477509392e-016 1.1258355359089478e-015 0.44151267798478933 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 6.0404460880790722 14.940771729929748 0.092240442242137899 ;
	setAttr ".cbx" -type "double3" 7.338273475439296 15.300323792577355 0.39902379801463317 ;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[96:107]" -type "float3"  -1.5890691e-008 -0.051600896
		 -3.5762787e-007 0 -0.051202174 0 5.1397365e-008 0.051600896 -3.5762787e-007 0 0.051600896
		 0 -4.3772161e-008 0.033008907 0.31241548 0 0.032753859 -0.31736302 -9.7323209e-008
		 -0.033008907 0.31875443 0 -0.033008907 -0.31875551 0 -0.22776984 0.22322562 0 -0.22704586
		 -0.22676128 0 -0.040376533 0.22775607 0 -0.040376533 -0.22775607;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[108:111]" -type "float3"  0.28923416 -0.0097443517 -0.32447964
		 0.28930473 -0.0097111259 -0.32182822 -0.017550543 -0.015918495 -0.020320749 -0.01733578
		 -0.015777769 -0.016392885;
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 0;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 1 "f[102]";
	setAttr ".ix" -type "matrix" 0.8599436089586926 0 0 0 0 0.63280201067660935 0 0 0 0 1 0
		 0.1288918587118536 14.196883674929664 0.13295504143428039 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.2741418 15.113518 0.59916991 ;
	setAttr ".rs" 353432103;
	setAttr ".lt" -type "double3" -1.1657341758564144e-015 -2.7252505807595639e-015 
		0.55423689851954183 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.2100105163844237 14.935199507920727 0.3897100358266754 ;
	setAttr ".cbx" -type "double3" 7.338273475439296 15.291836049314909 0.80862983753871154 ;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[108:109]" -type "float3"  0.32366911 -0.072492644 0.30389738
		 0.3236692 0.00074672187 0.30389717;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	setAttr ".ics" -type "componentList" 1 "f[24]";
	setAttr ".ix" -type "matrix" 0.8599436089586926 0 0 0 0 0.63280201067660935 0 0 0 0 1 0
		 0.1288918587118536 14.196883674929664 0.13295504143428039 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.53163767 7.9549594 0.14410284 ;
	setAttr ".rs" 1803666213;
	setAttr ".lt" -type "double3" 1.91672544535e-016 1.5389318102189756e-017 3.0747634754479813 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.12510259676485408 7.9549582341173464 -0.68263736674595643 ;
	setAttr ".cbx" -type "double3" 0.93817269368555978 7.9549606480654456 0.97084304382991027 ;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[101]" -type "float3" -0.048760809 0 0 ;
	setAttr ".tk[103]" -type "float3" -0.048760809 0 0 ;
	setAttr ".tk[112]" -type "float3" -0.038034443 0.13922445 0.27174008 ;
	setAttr ".tk[113]" -type "float3" -0.030339433 -0.14371568 0.27649018 ;
	setAttr ".tk[114]" -type "float3" 0.038034443 -0.13929643 0.065585047 ;
	setAttr ".tk[115]" -type "float3" 0.030448863 0.14371568 0.062838234 ;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[223:224]" "e[226]" "e[228]";
	setAttr ".ix" -type "matrix" 0.8599436089586926 0 0 0 0 0.63280201067660935 0 0 0 0 1 0
		 0.1288918587118536 14.196883674929664 0.13295504143428039 1;
	setAttr ".wt" 0.4855998158454895;
	setAttr ".dr" no;
	setAttr ".re" 226;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[58]" -type "float3" 0 0 0.3650879 ;
	setAttr ".tk[59]" -type "float3" 0 0 0.36381704 ;
	setAttr ".tk[62]" -type "float3" 0 0 -0.36252838 ;
	setAttr ".tk[63]" -type "float3" 0 0 -0.3650879 ;
	setAttr ".tk[116]" -type "float3" 0 -0.20829558 0.43460929 ;
	setAttr ".tk[117]" -type "float3" 0 -0.20829558 0.43612736 ;
	setAttr ".tk[118]" -type "float3" 0 -0.20829558 -0.43306983 ;
	setAttr ".tk[119]" -type "float3" 0 -0.20829558 -0.43612736 ;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	setAttr ".ics" -type "componentList" 1 "f[24]";
	setAttr ".ix" -type "matrix" 0.8599436089586926 0 0 0 0 0.63280201067660935 0 0 0 0 1 0
		 0.1288918587118536 14.196883674929664 0.13295504143428039 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.53163314 4.7557068 0.22465523 ;
	setAttr ".rs" 1940339751;
	setAttr ".lt" -type "double3" -4.1690297272388655e-016 7.2164496600635175e-016 1.2842832275284959 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.1250980989952786 4.7483842408643984 -0.085407140944488535 ;
	setAttr ".cbx" -type "double3" 0.93816818310182604 4.7630296639859466 0.53471758654307555 ;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[116]" -type "float3" 0 0.023143917 0.16110095 ;
	setAttr ".tk[117]" -type "float3" 0 0.023143917 0.16110095 ;
	setAttr ".tk[121]" -type "float3" 0 0.092575923 -0.17574643 ;
	setAttr ".tk[122]" -type "float3" 0 0.092575923 -0.17574643 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[245]";
	setAttr ".ix" -type "matrix" 0.8599436089586926 0 0 0 0 0.63280201067660935 0 0 0 0 1 0
		 0.1288918587118536 14.196883674929664 0.13295504143428039 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.53258342 3.464462 0.50292891 ;
	setAttr ".rs" 150281322;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.12707797615710004 3.4644607673817216 0.50155973127078246 ;
	setAttr ".cbx" -type "double3" 0.93808883783341745 3.4644631813298208 0.50429808786105346 ;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	setAttr ".ics" -type "componentList" 1 "f[118]";
	setAttr ".ix" -type "matrix" 0.8599436089586926 0 0 0 0 0.63280201067660935 0 0 0 0 1 0
		 0.1288918587118536 14.196883674929664 0.13295504143428039 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.53262305 4.1064239 0.51813865 ;
	setAttr ".rs" 884073359;
	setAttr ".lt" -type "double3" -1.0408340855860843e-017 1.3530843112619095e-015 1.8801787814594364 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.12707797615710004 3.4644607673817216 0.50155973127078246 ;
	setAttr ".cbx" -type "double3" 0.93816818310182604 4.7483866548124976 0.53471755674075316 ;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	setAttr ".ics" -type "componentList" 1 "f[116]";
	setAttr ".ix" -type "matrix" 0.8599436089586926 0 0 0 0 0.63280201067660935 0 0 0 0 1 0
		 0.1288918587118536 14.196883674929664 0.13295504143428039 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.52925414 4.1210675 -0.099937052 ;
	setAttr ".rs" 1782665050;
	setAttr ".lt" -type "double3" 6.591949208711867e-017 9.0205620750793969e-017 0.52674539244128415 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.12501885624013673 3.4791061905032681 -0.11582660982418824 ;
	setAttr ".cbx" -type "double3" 0.93348937509738905 4.763028457011897 -0.0840474993925171 ;
createNode polyTweak -n "polyTweak18";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[117]" -type "float3" 0.69095391 1.7763568e-015 0 ;
	setAttr ".tk[118]" -type "float3" 0.69095391 1.7763568e-015 0 ;
	setAttr ".tk[125]" -type "float3" 0.42805254 -3.5527137e-015 0 ;
	setAttr ".tk[126]" -type "float3" 0.53425264 -3.5527137e-015 0 ;
	setAttr ".tk[129]" -type "float3" 1.8941661 -3.5527137e-015 0 ;
	setAttr ".tk[130]" -type "float3" 0 -1.3423498 0 ;
	setAttr ".tk[131]" -type "float3" 1.8941661 -1.3423498 0 ;
	setAttr ".tk[133]" -type "float3" 1.8941661 -3.5527137e-015 0 ;
	setAttr ".tk[134]" -type "float3" 0 -1.2497737 0.014645542 ;
	setAttr ".tk[135]" -type "float3" 0.71514964 -1.2497737 0.014645542 ;
	setAttr ".tk[136]" -type "float3" 0.46620694 0 0.13180986 ;
	setAttr ".tk[137]" -type "float3" 0.22867674 3.5527137e-015 0.13180986 ;
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 0;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[248]";
	setAttr ".ix" -type "matrix" 0.8599436089586926 0 0 0 0 0.63280201067660935 0 0 0 0 1 0
		 0.1288918587118536 14.196883674929664 0.13295504143428039 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.9822404 3.4644608 0.50155973 ;
	setAttr ".rs" 639531242;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.397515984253801 3.4644607673817216 0.50155973127078246 ;
	setAttr ".cbx" -type "double3" 2.5669648801076068 3.4644607673817216 0.50155973127078246 ;
createNode polyTweak -n "polyTweak19";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[138:139]" -type "float3"  0 0.97768575 0 0 0.97768575
		 0;
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 1 "f[129]";
createNode polyTweak -n "polyTweak20";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[126]" -type "float3" 0 -0.54466492 0 ;
	setAttr ".tk[129]" -type "float3" 0 -0.54466492 0 ;
createNode deleteComponent -n "deleteComponent6";
	setAttr ".dc" -type "componentList" 1 "f[120]";
createNode polyExtrudeFace -n "polyExtrudeFace15";
	setAttr ".ics" -type "componentList" 1 "f[10]";
	setAttr ".ix" -type "matrix" 0.8599436089586926 0 0 0 0 0.63280201067660935 0 0 0 0 1 0
		 0.1288918587118536 14.196883674929664 0.13295504143428039 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 0.55636474610363251 0 ;
	setAttr ".pvt" -type "float3" 0.48680958 16.216366 0.097323999 ;
	setAttr ".rs" 422576465;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.069815366028007447 15.482873487985778 -0.22660348126698304 ;
	setAttr ".cbx" -type "double3" 0.9038037883593939 15.837130027425305 0.42125147273730468 ;
createNode polyTweak -n "polyTweak21";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[117]" -type "float3" -0.47509363 0 0 ;
	setAttr ".tk[118]" -type "float3" -0.49360269 0 0 ;
	setAttr ".tk[125]" -type "float3" 0.077005148 3.5527137e-015 0 ;
	setAttr ".tk[126]" -type "float3" 0 0.50438994 0 ;
	setAttr ".tk[128]" -type "float3" 0.050222293 0 0 ;
	setAttr ".tk[129]" -type "float3" -0.042223133 0 0 ;
	setAttr ".tk[132]" -type "float3" 0.30418721 0 0 ;
	setAttr ".tk[133]" -type "float3" -0.58388054 0 0 ;
	setAttr ".tk[134]" -type "float3" -0.18597451 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	setAttr ".ics" -type "componentList" 1 "f[10]";
	setAttr ".ix" -type "matrix" 0.8599436089586926 0 0 0 0 0.63280201067660935 0 0 0 0 1 0
		 0.1288918587118536 14.196883674929664 0.13295504143428039 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 4.0581132182342685 0 ;
	setAttr ".pvt" -type "float3" 0.48680958 20.274477 0.097323999 ;
	setAttr ".rs" 1087043203;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.069815366028007447 16.039237832081902 -0.22660348126698304 ;
	setAttr ".cbx" -type "double3" 0.9038037883593939 16.393494371521427 0.42125147273730468 ;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[271:272]" "e[274]" "e[276]";
	setAttr ".ix" -type "matrix" 0.8599436089586926 0 0 0 0 0.63280201067660935 0 0 0 0 1 0
		 0.1288918587118536 14.196883674929664 0.13295504143428039 1;
	setAttr ".wt" 0.086471974849700928;
	setAttr ".re" 272;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak22";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[136]" -type "float3" 0 0.87947005 0 ;
	setAttr ".tk[137]" -type "float3" 0 0.87947005 0 ;
	setAttr ".tk[138]" -type "float3" 0 0.60174268 0 ;
	setAttr ".tk[139]" -type "float3" 0 0.60174268 0 ;
	setAttr ".tk[141]" -type "float3" 0 0.015422061 0.016930323 ;
	setAttr ".tk[142]" -type "float3" 0 -0.3085705 0 ;
	setAttr ".tk[143]" -type "float3" -1.3877788e-017 -0.52870041 0 ;
createNode polyTweak -n "polyTweak23";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[136]" -type "float3" 0.0018877806 0 0 ;
	setAttr ".tk[140]" -type "float3" 1.3877788e-017 0.85254562 1.3224318 ;
	setAttr ".tk[141]" -type "float3" 0.65063989 0.8011359 1.3528326 ;
	setAttr ".tk[142]" -type "float3" 0.65063989 -0.27979696 -0.57761383 ;
	setAttr ".tk[143]" -type "float3" 1.3877788e-017 -0.22838727 -0.57761383 ;
	setAttr ".tk[144]" -type "float3" 0.65064013 0 1.3968151 ;
	setAttr ".tk[145]" -type "float3" 7.2643161e-008 0 1.3399308 ;
	setAttr ".tk[146]" -type "float3" 5.9604645e-008 0 -0.55168647 ;
	setAttr ".tk[147]" -type "float3" 0.65064013 0 -0.57991225 ;
createNode deleteComponent -n "deleteComponent7";
	setAttr ".dc" -type "componentList" 3 "f[131]" "f[135]" "f[137]";
createNode deleteComponent -n "deleteComponent8";
	setAttr ".dc" -type "componentList" 8 "f[40]" "f[43]" "f[46]" "f[50]" "f[53]" "f[56]" "f[65:67]" "f[75:77]";
createNode polyMirror -n "polyMirror1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 0.8599436089586926 0 0 0 0 0.63280201067660935 0 0 0 0 1 0
		 0.1288918587118536 14.196883674929664 0.13295504143428039 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" 0.069815366028007447 12.028385516164775 0.35193320801448058 ;
	setAttr ".d" 1;
	setAttr ".mm" 2;
createNode deleteComponent -n "deleteComponent9";
	setAttr ".dc" -type "componentList" 27 "e[24]" "e[27]" "e[30]" "e[33]" "e[36]" "e[41]" "e[44]" "e[47]" "e[50]" "e[53]" "e[76]" "e[86]" "e[91]" "e[96]" "e[110]" "e[112]" "e[127]" "e[129]" "e[142]" "e[144]" "e[242]" "e[247]" "e[249]" "e[254]" "e[256]" "e[258]" "e[260]";
createNode deleteComponent -n "deleteComponent10";
	setAttr ".dc" -type "componentList" 25 "e[242]" "e[249]" "e[255]" "e[261]" "e[267]" "e[275]" "e[284]" "e[290]" "e[296]" "e[302]" "e[308]" "e[316]" "e[332]" "e[358]" "e[366]" "e[375]" "e[383]" "e[402]" "e[404]" "e[412:413]" "e[510]" "e[514]" "e[519]" "e[523]" "e[526:527]";
createNode deleteComponent -n "deleteComponent11";
	setAttr ".dc" -type "componentList" 38 "vtx[0]" "vtx[3]" "vtx[6]" "vtx[9]" "vtx[12]" "vtx[15]" "vtx[18]" "vtx[21]" "vtx[24]" "vtx[27]" "vtx[30]" "vtx[33]" "vtx[44]" "vtx[50]" "vtx[70:71]" "vtx[128]" "vtx[131]" "vtx[137:138]" "vtx[140]" "vtx[143]" "vtx[147]" "vtx[150]" "vtx[153]" "vtx[156]" "vtx[164]" "vtx[166]" "vtx[169]" "vtx[172]" "vtx[175]" "vtx[178]" "vtx[205]" "vtx[209]" "vtx[213]" "vtx[217]" "vtx[273]" "vtx[275]" "vtx[277]" "vtx[279]";
createNode deleteComponent -n "deleteComponent12";
	setAttr ".dc" -type "componentList" 4 "vtx[114]" "vtx[117]" "vtx[132]" "vtx[135]";
createNode deleteComponent -n "deleteComponent13";
	setAttr ".dc" -type "componentList" 4 "vtx[48]" "vtx[62:63]" "vtx[158]" "vtx[186:187]";
createNode deleteComponent -n "deleteComponent14";
	setAttr ".dc" -type "componentList" 2 "vtx[38]" "vtx[141]";
createNode HIKCharacterNode -n "Character1";
	setAttr ".ReferenceMinRLimitx" -45;
	setAttr ".ReferenceMinRLimity" -45;
	setAttr ".ReferenceMinRLimitz" -45;
	setAttr ".ReferenceMaxRLimitx" 45;
	setAttr ".ReferenceMaxRLimity" 45;
	setAttr ".ReferenceMaxRLimitz" 45;
	setAttr ".HipsTy" 8.2493458593547491;
	setAttr ".HipsMinRLimitx" -45;
	setAttr ".HipsMinRLimity" -45;
	setAttr ".HipsMinRLimitz" -45;
	setAttr ".HipsMaxRLimitx" 45;
	setAttr ".HipsMaxRLimity" 45;
	setAttr ".HipsMaxRLimitz" 45;
	setAttr ".LeftUpLegTx" 0.73501678214576882;
	setAttr ".LeftUpLegTy" 7.732111836026216;
	setAttr ".LeftUpLegMinRLimitx" -45;
	setAttr ".LeftUpLegMinRLimity" -45;
	setAttr ".LeftUpLegMinRLimitz" -45;
	setAttr ".LeftUpLegMaxRLimitx" 45;
	setAttr ".LeftUpLegMaxRLimity" 45;
	setAttr ".LeftUpLegMaxRLimitz" 45;
	setAttr ".LeftLegTx" 0.73501678214576882;
	setAttr ".LeftLegTy" 4.0299171979338082;
	setAttr ".LeftLegMinRLimitx" -45;
	setAttr ".LeftLegMinRLimity" -45;
	setAttr ".LeftLegMinRLimitz" -45;
	setAttr ".LeftLegMaxRLimitx" 45;
	setAttr ".LeftLegMaxRLimity" 45;
	setAttr ".LeftLegMaxRLimitz" 45;
	setAttr ".LeftFootTx" 0.73501678214576882;
	setAttr ".LeftFootTy" 0.67235438357224542;
	setAttr ".LeftFootMinRLimitx" -45;
	setAttr ".LeftFootMinRLimity" -45;
	setAttr ".LeftFootMinRLimitz" -45;
	setAttr ".LeftFootMaxRLimitx" 45;
	setAttr ".LeftFootMaxRLimity" 45;
	setAttr ".LeftFootMaxRLimitz" 45;
	setAttr ".RightUpLegTx" -0.73501678214576882;
	setAttr ".RightUpLegTy" 7.732111836026216;
	setAttr ".RightUpLegMinRLimitx" -45;
	setAttr ".RightUpLegMinRLimity" -45;
	setAttr ".RightUpLegMinRLimitz" -45;
	setAttr ".RightUpLegMaxRLimitx" 45;
	setAttr ".RightUpLegMaxRLimity" 45;
	setAttr ".RightUpLegMaxRLimitz" 45;
	setAttr ".RightLegTx" -0.73501700619800192;
	setAttr ".RightLegTy" 4.0299171979338082;
	setAttr ".RightLegTz" 3.6216608165573599e-005;
	setAttr ".RightLegMinRLimitx" -45;
	setAttr ".RightLegMinRLimity" -45;
	setAttr ".RightLegMinRLimitz" -45;
	setAttr ".RightLegMaxRLimitx" 45;
	setAttr ".RightLegMaxRLimity" 45;
	setAttr ".RightLegMaxRLimitz" 45;
	setAttr ".RightFootTx" -0.73501693038651406;
	setAttr ".RightFootTy" 0.67235438390221969;
	setAttr ".RightFootTz" 3.6216608165573599e-005;
	setAttr ".RightFootMinRLimitx" -45;
	setAttr ".RightFootMinRLimity" -45;
	setAttr ".RightFootMinRLimitz" -45;
	setAttr ".RightFootMaxRLimitx" 45;
	setAttr ".RightFootMaxRLimity" 45;
	setAttr ".RightFootMaxRLimitz" 45;
	setAttr ".SpineTy" 8.8268000695095843;
	setAttr ".SpineMinRLimitx" -45;
	setAttr ".SpineMinRLimity" -45;
	setAttr ".SpineMinRLimitz" -45;
	setAttr ".SpineMaxRLimitx" 45;
	setAttr ".SpineMaxRLimity" 45;
	setAttr ".SpineMaxRLimitz" 45;
	setAttr ".LeftArmTx" 1.4607323829485952;
	setAttr ".LeftArmTy" 12.092607550335311;
	setAttr ".LeftArmMinRLimitx" -45;
	setAttr ".LeftArmMinRLimity" -45;
	setAttr ".LeftArmMinRLimitz" -45;
	setAttr ".LeftArmMaxRLimitx" 45;
	setAttr ".LeftArmMaxRLimity" 45;
	setAttr ".LeftArmMaxRLimitz" 45;
	setAttr ".LeftForeArmTx" 3.7132546870490746;
	setAttr ".LeftForeArmTy" 12.092607550335311;
	setAttr ".LeftForeArmMinRLimitx" -45;
	setAttr ".LeftForeArmMinRLimity" -45;
	setAttr ".LeftForeArmMinRLimitz" -45;
	setAttr ".LeftForeArmMaxRLimitx" 45;
	setAttr ".LeftForeArmMaxRLimity" 45;
	setAttr ".LeftForeArmMaxRLimitz" 45;
	setAttr ".LeftHandTx" 5.9155947081820068;
	setAttr ".LeftHandTy" 12.092607550335311;
	setAttr ".LeftHandMinRLimitx" -45;
	setAttr ".LeftHandMinRLimity" -45;
	setAttr ".LeftHandMinRLimitz" -45;
	setAttr ".LeftHandMaxRLimitx" 45;
	setAttr ".LeftHandMaxRLimity" 45;
	setAttr ".LeftHandMaxRLimitz" 45;
	setAttr ".RightArmTx" -1.4607343495926477;
	setAttr ".RightArmTy" 12.092631951900357;
	setAttr ".RightArmMinRLimitx" -45;
	setAttr ".RightArmMinRLimity" -45;
	setAttr ".RightArmMinRLimitz" -45;
	setAttr ".RightArmMaxRLimitx" 45;
	setAttr ".RightArmMaxRLimity" 45;
	setAttr ".RightArmMaxRLimitz" 45;
	setAttr ".RightForeArmTx" -3.7132675882010657;
	setAttr ".RightForeArmTy" 12.092631951900357;
	setAttr ".RightForeArmMinRLimitx" -45;
	setAttr ".RightForeArmMinRLimity" -45;
	setAttr ".RightForeArmMinRLimitz" -45;
	setAttr ".RightForeArmMaxRLimitx" 45;
	setAttr ".RightForeArmMaxRLimity" 45;
	setAttr ".RightForeArmMaxRLimitz" 45;
	setAttr ".RightHandTx" -5.9155944714257789;
	setAttr ".RightHandTy" 12.092631844658873;
	setAttr ".RightHandMinRLimitx" -45;
	setAttr ".RightHandMinRLimity" -45;
	setAttr ".RightHandMinRLimitz" -45;
	setAttr ".RightHandMaxRLimitx" 45;
	setAttr ".RightHandMaxRLimity" 45;
	setAttr ".RightHandMaxRLimitz" 45;
	setAttr ".HeadTy" 13.611420667935336;
	setAttr ".HeadMinRLimitx" -45;
	setAttr ".HeadMinRLimity" -45;
	setAttr ".HeadMinRLimitz" -45;
	setAttr ".HeadMaxRLimitx" 45;
	setAttr ".HeadMaxRLimity" 45;
	setAttr ".HeadMaxRLimitz" 45;
	setAttr ".LeftToeBaseTx" 0.73501747731814415;
	setAttr ".LeftToeBaseTy" 0.15575417951183934;
	setAttr ".LeftToeBaseTz" 1.068679732155114;
	setAttr ".LeftToeBaseMinRLimitx" -45;
	setAttr ".LeftToeBaseMinRLimity" -45;
	setAttr ".LeftToeBaseMinRLimitz" -45;
	setAttr ".LeftToeBaseMaxRLimitx" 45;
	setAttr ".LeftToeBaseMaxRLimity" 45;
	setAttr ".LeftToeBaseMaxRLimitz" 45;
	setAttr ".RightToeBaseTx" -0.73510646721909545;
	setAttr ".RightToeBaseTy" 0.15575418091422777;
	setAttr ".RightToeBaseTz" 1.0687182722740345;
	setAttr ".RightToeBaseSx" 0.99999999999999967;
	setAttr ".RightToeBaseSz" 0.99999999999999967;
	setAttr ".RightToeBaseJointOrienty" 1.4622811973002493e-006;
	setAttr ".RightToeBaseMinRLimitx" -45;
	setAttr ".RightToeBaseMinRLimity" -45;
	setAttr ".RightToeBaseMinRLimitz" -45;
	setAttr ".RightToeBaseMaxRLimitx" 45;
	setAttr ".RightToeBaseMaxRLimity" 45;
	setAttr ".RightToeBaseMaxRLimitz" 45;
	setAttr ".LeftShoulderTx" 0.57745424950421231;
	setAttr ".LeftShoulderTy" 12.092596215734096;
	setAttr ".LeftShoulderMinRLimitx" -45;
	setAttr ".LeftShoulderMinRLimity" -45;
	setAttr ".LeftShoulderMinRLimitz" -45;
	setAttr ".LeftShoulderMaxRLimitx" 45;
	setAttr ".LeftShoulderMaxRLimity" 45;
	setAttr ".LeftShoulderMaxRLimitz" 45;
	setAttr ".RightShoulderTx" -0.57745417080545269;
	setAttr ".RightShoulderTy" 12.092596215734096;
	setAttr ".RightShoulderMinRLimitx" -45;
	setAttr ".RightShoulderMinRLimity" -45;
	setAttr ".RightShoulderMinRLimitz" -45;
	setAttr ".RightShoulderMaxRLimitx" 45;
	setAttr ".RightShoulderMaxRLimity" 45;
	setAttr ".RightShoulderMaxRLimitz" 45;
	setAttr ".NeckTy" 11.961551496064386;
	setAttr ".NeckMinRLimitx" -45;
	setAttr ".NeckMinRLimity" -45;
	setAttr ".NeckMinRLimitz" -45;
	setAttr ".NeckMaxRLimitx" 45;
	setAttr ".NeckMaxRLimity" 45;
	setAttr ".NeckMaxRLimitz" 45;
	setAttr ".LeftFingerBaseTx" 6.6423521214307062;
	setAttr ".LeftFingerBaseTy" 12.133927731807614;
	setAttr ".LeftFingerBaseTz" 0.10762792861154084;
	setAttr ".LeftFingerBaseRy" -6.2191910648259628e-005;
	setAttr ".RightFingerBaseTx" -6.6423424894944834;
	setAttr ".RightFingerBaseTy" 12.133952248863512;
	setAttr ".RightFingerBaseTz" 0.10769177161904173;
	setAttr ".RightFingerBaseRy" -0.034907713150901909;
	setAttr ".Spine1Ty" 9.8717172116945182;
	setAttr ".Spine1MinRLimitx" -45;
	setAttr ".Spine1MinRLimity" -45;
	setAttr ".Spine1MinRLimitz" -45;
	setAttr ".Spine1MaxRLimitx" 45;
	setAttr ".Spine1MaxRLimity" 45;
	setAttr ".Spine1MaxRLimitz" 45;
	setAttr ".Spine2Ty" 10.916634353879452;
	setAttr ".Spine2MinRLimitx" -45;
	setAttr ".Spine2MinRLimity" -45;
	setAttr ".Spine2MinRLimitz" -45;
	setAttr ".Spine2MaxRLimitx" 45;
	setAttr ".Spine2MaxRLimity" 45;
	setAttr ".Spine2MaxRLimitz" 45;
	setAttr ".Spine3Ty" 9.8167215726321544;
	setAttr ".Spine4Ty" 10.146695407006341;
	setAttr ".Spine5Ty" 10.476669241380534;
	setAttr ".Spine6Ty" 10.806643075754721;
	setAttr ".Spine7Ty" 11.136616910128909;
	setAttr ".Spine8Ty" 11.466590744503105;
	setAttr ".Spine9Ty" 11.796564578877295;
	setAttr ".Neck1Ty" 12.126538413251483;
	setAttr ".Neck2Ty" 12.291525330438576;
	setAttr ".Neck3Ty" 12.456512247625671;
	setAttr ".Neck4Ty" 12.621499164812771;
	setAttr ".Neck5Ty" 12.786486081999861;
	setAttr ".Neck6Ty" 12.951472999186963;
	setAttr ".Neck7Ty" 13.116459916374049;
	setAttr ".Neck8Ty" 13.281446833561148;
	setAttr ".Neck9Ty" 13.446433750748243;
	setAttr ".LeftUpLegRollTx" 0.73501678214576882;
	setAttr ".LeftUpLegRollTy" 5.8810145169800121;
	setAttr ".LeftLegRollTx" 0.73501678214576882;
	setAttr ".LeftLegRollTy" 2.3511357907530268;
	setAttr ".RightUpLegRollTx" -0.73501689417188543;
	setAttr ".RightUpLegRollTy" 5.8810145169800121;
	setAttr ".RightUpLegRollTz" 1.81083040827868e-005;
	setAttr ".RightLegRollTx" -0.73501696829225793;
	setAttr ".RightLegRollTy" 2.3511357909180139;
	setAttr ".RightLegRollTz" 3.6216608165573599e-005;
	setAttr ".LeftArmRollTx" 2.5869935349988351;
	setAttr ".LeftArmRollTy" 12.092607550335311;
	setAttr ".LeftForeArmRollTx" 4.8144246976155411;
	setAttr ".LeftForeArmRollTy" 12.092607550335311;
	setAttr ".RightArmRollTx" -2.5870009688968563;
	setAttr ".RightArmRollTy" 12.092631951900357;
	setAttr ".RightForeArmRollTx" -4.8144310298134227;
	setAttr ".RightForeArmRollTy" 12.092631898279615;
	setAttr ".HipsTranslationTy" 8.2493458593547491;
	setAttr ".LeftHandThumb1Tx" 6.2743387013208887;
	setAttr ".LeftHandThumb1Ty" 12.026736317414713;
	setAttr ".LeftHandThumb1Tz" 0.35327278913631593;
	setAttr ".LeftHandThumb1MinRLimitx" -45;
	setAttr ".LeftHandThumb1MinRLimity" -45;
	setAttr ".LeftHandThumb1MinRLimitz" -45;
	setAttr ".LeftHandThumb1MaxRLimitx" 45;
	setAttr ".LeftHandThumb1MaxRLimity" 45;
	setAttr ".LeftHandThumb1MaxRLimitz" 45;
	setAttr ".LeftHandThumb2Tx" 6.4816109354988436;
	setAttr ".LeftHandThumb2Ty" 11.982511623758789;
	setAttr ".LeftHandThumb2Tz" 0.41163314312003579;
	setAttr ".LeftHandThumb2MinRLimitx" -45;
	setAttr ".LeftHandThumb2MinRLimity" -45;
	setAttr ".LeftHandThumb2MinRLimitz" -45;
	setAttr ".LeftHandThumb2MaxRLimitx" 45;
	setAttr ".LeftHandThumb2MaxRLimity" 45;
	setAttr ".LeftHandThumb2MaxRLimitz" 45;
	setAttr ".LeftHandThumb3Tx" 6.6914033836087565;
	setAttr ".LeftHandThumb3Ty" 11.982510534845138;
	setAttr ".LeftHandThumb3Tz" 0.41163391377392622;
	setAttr ".LeftHandThumb3MinRLimitx" -45;
	setAttr ".LeftHandThumb3MinRLimity" -45;
	setAttr ".LeftHandThumb3MinRLimitz" -45;
	setAttr ".LeftHandThumb3MaxRLimitx" 45;
	setAttr ".LeftHandThumb3MaxRLimity" 45;
	setAttr ".LeftHandThumb3MaxRLimitz" 45;
	setAttr ".LeftHandThumb4Tx" 6.9113924958883493;
	setAttr ".LeftHandThumb4Ty" 11.982510774076172;
	setAttr ".LeftHandThumb4Tz" 0.41163323642013772;
	setAttr ".LeftHandThumb4MinRLimitx" -45;
	setAttr ".LeftHandThumb4MinRLimity" -45;
	setAttr ".LeftHandThumb4MinRLimitz" -45;
	setAttr ".LeftHandThumb4MaxRLimitx" 45;
	setAttr ".LeftHandThumb4MaxRLimity" 45;
	setAttr ".LeftHandThumb4MaxRLimitz" 45;
	setAttr ".LeftHandIndex1Tx" 6.6433500794465683;
	setAttr ".LeftHandIndex1Ty" 12.109083902825436;
	setAttr ".LeftHandIndex1Tz" 0.28639001721928131;
	setAttr ".LeftHandIndex1MinRLimitx" -45;
	setAttr ".LeftHandIndex1MinRLimity" -45;
	setAttr ".LeftHandIndex1MinRLimitz" -45;
	setAttr ".LeftHandIndex1MaxRLimitx" 45;
	setAttr ".LeftHandIndex1MaxRLimity" 45;
	setAttr ".LeftHandIndex1MaxRLimitz" 45;
	setAttr ".LeftHandIndex2Tx" 6.991699711192382;
	setAttr ".LeftHandIndex2Ty" 12.109082079719997;
	setAttr ".LeftHandIndex2Tz" 0.29853297339816853;
	setAttr ".LeftHandIndex2Ry" 0.00060923483500415344;
	setAttr ".LeftHandIndex2JointOrienty" 0.00060923483500415344;
	setAttr ".LeftHandIndex2MinRLimitx" -45;
	setAttr ".LeftHandIndex2MinRLimity" -45;
	setAttr ".LeftHandIndex2MinRLimitz" -45;
	setAttr ".LeftHandIndex2MaxRLimitx" 45;
	setAttr ".LeftHandIndex2MaxRLimity" 45;
	setAttr ".LeftHandIndex2MaxRLimitz" 45;
	setAttr ".LeftHandIndex3Tx" 7.210499210878563;
	setAttr ".LeftHandIndex3Ty" 12.109080941310278;
	setAttr ".LeftHandIndex3Tz" 0.30615998695602448;
	setAttr ".LeftHandIndex3Ry" -0.014621636040099731;
	setAttr ".LeftHandIndex3JointOrienty" -0.015230870875103884;
	setAttr ".LeftHandIndex3MinRLimitx" -45;
	setAttr ".LeftHandIndex3MinRLimity" -45;
	setAttr ".LeftHandIndex3MinRLimitz" -45;
	setAttr ".LeftHandIndex3MaxRLimitx" 45;
	setAttr ".LeftHandIndex3MaxRLimity" 45;
	setAttr ".LeftHandIndex3MaxRLimitz" 45;
	setAttr ".LeftHandIndex4Tx" 7.3719417330972226;
	setAttr ".LeftHandIndex4Ty" 12.109080099876973;
	setAttr ".LeftHandIndex4Tz" 0.31178759995847183;
	setAttr ".LeftHandIndex4Ry" 0.16814881446114693;
	setAttr ".LeftHandIndex4Sx" 0.99999999999999989;
	setAttr ".LeftHandIndex4Sz" 0.99999999999999989;
	setAttr ".LeftHandIndex4JointOrienty" 0.18277045050124666;
	setAttr ".LeftHandIndex4MinRLimitx" -45;
	setAttr ".LeftHandIndex4MinRLimity" -45;
	setAttr ".LeftHandIndex4MinRLimitz" -45;
	setAttr ".LeftHandIndex4MaxRLimitx" 45;
	setAttr ".LeftHandIndex4MaxRLimity" 45;
	setAttr ".LeftHandIndex4MaxRLimitz" 45;
	setAttr ".LeftHandMiddle1Tx" 6.6423521263803167;
	setAttr ".LeftHandMiddle1Ty" 12.133927740056965;
	setAttr ".LeftHandMiddle1Tz" 0.10762792696167164;
	setAttr ".LeftHandMiddle1MinRLimitx" -45;
	setAttr ".LeftHandMiddle1MinRLimity" -45;
	setAttr ".LeftHandMiddle1MinRLimitz" -45;
	setAttr ".LeftHandMiddle1MaxRLimitx" 45;
	setAttr ".LeftHandMiddle1MaxRLimity" 45;
	setAttr ".LeftHandMiddle1MaxRLimitz" 45;
	setAttr ".LeftHandMiddle2Tx" 7.0435385774743962;
	setAttr ".LeftHandMiddle2Ty" 12.133927740056965;
	setAttr ".LeftHandMiddle2Tz" 0.10765287752069053;
	setAttr ".LeftHandMiddle2MinRLimitx" -45;
	setAttr ".LeftHandMiddle2MinRLimity" -45;
	setAttr ".LeftHandMiddle2MinRLimitz" -45;
	setAttr ".LeftHandMiddle2MaxRLimitx" 45;
	setAttr ".LeftHandMiddle2MaxRLimity" 45;
	setAttr ".LeftHandMiddle2MaxRLimitz" 45;
	setAttr ".LeftHandMiddle3Tx" 7.271652509262795;
	setAttr ".LeftHandMiddle3Ty" 12.133927740056965;
	setAttr ".LeftHandMiddle3Tz" 0.10766704849448809;
	setAttr ".LeftHandMiddle3MinRLimitx" -45;
	setAttr ".LeftHandMiddle3MinRLimity" -45;
	setAttr ".LeftHandMiddle3MinRLimitz" -45;
	setAttr ".LeftHandMiddle3MaxRLimitx" 45;
	setAttr ".LeftHandMiddle3MaxRLimity" 45;
	setAttr ".LeftHandMiddle3MaxRLimitz" 45;
	setAttr ".LeftHandMiddle4Tx" 7.437104042807638;
	setAttr ".LeftHandMiddle4Ty" 12.133927740056965;
	setAttr ".LeftHandMiddle4Tz" 0.10767724435599645;
	setAttr ".LeftHandMiddle4MinRLimitx" -45;
	setAttr ".LeftHandMiddle4MinRLimity" -45;
	setAttr ".LeftHandMiddle4MinRLimitz" -45;
	setAttr ".LeftHandMiddle4MaxRLimitx" 45;
	setAttr ".LeftHandMiddle4MaxRLimity" 45;
	setAttr ".LeftHandMiddle4MaxRLimitz" 45;
	setAttr ".LeftHandRing1Tx" 6.6492717131593295;
	setAttr ".LeftHandRing1Ty" 12.123948432126783;
	setAttr ".LeftHandRing1Tz" -0.065430421617694814;
	setAttr ".LeftHandRing1MinRLimitx" -45;
	setAttr ".LeftHandRing1MinRLimity" -45;
	setAttr ".LeftHandRing1MinRLimitz" -45;
	setAttr ".LeftHandRing1MaxRLimitx" 45;
	setAttr ".LeftHandRing1MaxRLimity" 45;
	setAttr ".LeftHandRing1MaxRLimitz" 45;
	setAttr ".LeftHandRing2Tx" 7.0236071333094383;
	setAttr ".LeftHandRing2Ty" 12.123948432126783;
	setAttr ".LeftHandRing2Tz" -0.065430414275777005;
	setAttr ".LeftHandRing2MinRLimitx" -45;
	setAttr ".LeftHandRing2MinRLimity" -45;
	setAttr ".LeftHandRing2MinRLimitz" -45;
	setAttr ".LeftHandRing2MaxRLimitx" 45;
	setAttr ".LeftHandRing2MaxRLimity" 45;
	setAttr ".LeftHandRing2MaxRLimitz" 45;
	setAttr ".LeftHandRing3Tx" 7.213715441919109;
	setAttr ".LeftHandRing3Ty" 12.123948432126783;
	setAttr ".LeftHandRing3Tz" -0.065430423927511652;
	setAttr ".LeftHandRing3MinRLimitx" -45;
	setAttr ".LeftHandRing3MinRLimity" -45;
	setAttr ".LeftHandRing3MinRLimitz" -45;
	setAttr ".LeftHandRing3MaxRLimitx" 45;
	setAttr ".LeftHandRing3MaxRLimity" 45;
	setAttr ".LeftHandRing3MaxRLimitz" 45;
	setAttr ".LeftHandRing4Tx" 7.3723790177222792;
	setAttr ".LeftHandRing4Ty" 12.123948432126783;
	setAttr ".LeftHandRing4Tz" -0.065430491324667342;
	setAttr ".LeftHandRing4MinRLimitx" -45;
	setAttr ".LeftHandRing4MinRLimity" -45;
	setAttr ".LeftHandRing4MinRLimitz" -45;
	setAttr ".LeftHandRing4MaxRLimitx" 45;
	setAttr ".LeftHandRing4MaxRLimity" 45;
	setAttr ".LeftHandRing4MaxRLimitz" 45;
	setAttr ".LeftHandPinky1Tx" 6.6483242675380358;
	setAttr ".LeftHandPinky1Ty" 12.066784870472153;
	setAttr ".LeftHandPinky1Tz" -0.2054381179286508;
	setAttr ".LeftHandPinky1MinRLimitx" -45;
	setAttr ".LeftHandPinky1MinRLimity" -45;
	setAttr ".LeftHandPinky1MinRLimitz" -45;
	setAttr ".LeftHandPinky1MaxRLimitx" 45;
	setAttr ".LeftHandPinky1MaxRLimity" 45;
	setAttr ".LeftHandPinky1MaxRLimitz" 45;
	setAttr ".LeftHandPinky2Tx" 6.8994425495720391;
	setAttr ".LeftHandPinky2Ty" 12.066788219706568;
	setAttr ".LeftHandPinky2Tz" -0.2054381179286508;
	setAttr ".LeftHandPinky2MinRLimitx" -45;
	setAttr ".LeftHandPinky2MinRLimity" -45;
	setAttr ".LeftHandPinky2MinRLimitz" -45;
	setAttr ".LeftHandPinky2MaxRLimitx" 45;
	setAttr ".LeftHandPinky2MaxRLimity" 45;
	setAttr ".LeftHandPinky2MaxRLimitz" 45;
	setAttr ".LeftHandPinky3Tx" 7.0623260064802498;
	setAttr ".LeftHandPinky3Ty" 12.066790389284529;
	setAttr ".LeftHandPinky3Tz" -0.20543812972521538;
	setAttr ".LeftHandPinky3MinRLimitx" -45;
	setAttr ".LeftHandPinky3MinRLimity" -45;
	setAttr ".LeftHandPinky3MinRLimitz" -45;
	setAttr ".LeftHandPinky3MaxRLimitx" 45;
	setAttr ".LeftHandPinky3MaxRLimity" 45;
	setAttr ".LeftHandPinky3MaxRLimitz" 45;
	setAttr ".LeftHandPinky4Tx" 7.1998108131014238;
	setAttr ".LeftHandPinky4Ty" 12.066792220639313;
	setAttr ".LeftHandPinky4Tz" -0.20543806447288976;
	setAttr ".LeftHandPinky4MinRLimitx" -45;
	setAttr ".LeftHandPinky4MinRLimity" -45;
	setAttr ".LeftHandPinky4MinRLimitz" -45;
	setAttr ".LeftHandPinky4MaxRLimitx" 45;
	setAttr ".LeftHandPinky4MaxRLimity" 45;
	setAttr ".LeftHandPinky4MaxRLimitz" 45;
	setAttr ".LeftHandExtraFinger1Tx" 6.6483242675380358;
	setAttr ".LeftHandExtraFinger1Ty" 12.109083902825436;
	setAttr ".LeftHandExtraFinger1Tz" -0.37042503511574587;
	setAttr ".LeftHandExtraFinger1Ry" -0.03490658477808721;
	setAttr ".LeftHandExtraFinger1Rz" -5.2244860362123464e-006;
	setAttr ".LeftHandExtraFinger2Tx" 6.8169490909784907;
	setAttr ".LeftHandExtraFinger2Ty" 12.109082079720002;
	setAttr ".LeftHandExtraFinger2Tz" -0.37042503511574587;
	setAttr ".LeftHandExtraFinger2Ry" -0.03490658477808721;
	setAttr ".LeftHandExtraFinger2Rz" -5.2244860362123464e-006;
	setAttr ".LeftHandExtraFinger3Tx" 6.979832547886704;
	setAttr ".LeftHandExtraFinger3Ty" 12.109080941310269;
	setAttr ".LeftHandExtraFinger3Tz" -0.37042504691231048;
	setAttr ".LeftHandExtraFinger3Ry" -0.03490658477808721;
	setAttr ".LeftHandExtraFinger3Rz" -5.2244860362123464e-006;
	setAttr ".LeftHandExtraFinger4Tx" 7.1173173545078781;
	setAttr ".LeftHandExtraFinger4Ty" 12.109080099876993;
	setAttr ".LeftHandExtraFinger4Tz" -0.37042498165998461;
	setAttr ".LeftHandExtraFinger4Ry" -0.03490658477808721;
	setAttr ".LeftHandExtraFinger4Rz" -5.2244860362123464e-006;
	setAttr ".RightHandThumb1Tx" -6.2743074420746243;
	setAttr ".RightHandThumb1Ty" 12.026760974709491;
	setAttr ".RightHandThumb1Tz" 0.35330420025303799;
	setAttr ".RightHandThumb1MinRLimitx" -45;
	setAttr ".RightHandThumb1MinRLimity" -45;
	setAttr ".RightHandThumb1MinRLimitz" -45;
	setAttr ".RightHandThumb1MaxRLimitx" 45;
	setAttr ".RightHandThumb1MaxRLimity" 45;
	setAttr ".RightHandThumb1MaxRLimitz" 45;
	setAttr ".RightHandThumb2Tx" -6.4815745261859581;
	setAttr ".RightHandThumb2Ty" 11.982536322300293;
	setAttr ".RightHandThumb2Tz" 0.4116828946774333;
	setAttr ".RightHandThumb2MinRLimitx" -45;
	setAttr ".RightHandThumb2MinRLimity" -45;
	setAttr ".RightHandThumb2MinRLimitz" -45;
	setAttr ".RightHandThumb2MaxRLimitx" 45;
	setAttr ".RightHandThumb2MaxRLimity" 45;
	setAttr ".RightHandThumb2MaxRLimitz" 45;
	setAttr ".RightHandThumb3Tx" -6.6912390228169185;
	setAttr ".RightHandThumb3Ty" 11.982538533124986;
	setAttr ".RightHandThumb3Tz" 0.41900998965515179;
	setAttr ".RightHandThumb3MinRLimitx" -45;
	setAttr ".RightHandThumb3MinRLimity" -45;
	setAttr ".RightHandThumb3MinRLimitz" -45;
	setAttr ".RightHandThumb3MaxRLimitx" 45;
	setAttr ".RightHandThumb3MaxRLimity" 45;
	setAttr ".RightHandThumb3MaxRLimitz" 45;
	setAttr ".RightHandThumb4Tx" -6.9110939693853224;
	setAttr ".RightHandThumb4Ty" 11.982540042755279;
	setAttr ".RightHandThumb4Tz" 0.42669320905860531;
	setAttr ".RightHandThumb4MinRLimitx" -45;
	setAttr ".RightHandThumb4MinRLimity" -45;
	setAttr ".RightHandThumb4MinRLimitz" -45;
	setAttr ".RightHandThumb4MaxRLimitx" 45;
	setAttr ".RightHandThumb4MaxRLimity" 45;
	setAttr ".RightHandThumb4MaxRLimitz" 45;
	setAttr ".RightHandIndex1Tx" -6.643324759729321;
	setAttr ".RightHandIndex1Ty" 12.109108568369553;
	setAttr ".RightHandIndex1Tz" 0.28645393975047634;
	setAttr ".RightHandIndex1MinRLimitx" -45;
	setAttr ".RightHandIndex1MinRLimity" -45;
	setAttr ".RightHandIndex1MinRLimitz" -45;
	setAttr ".RightHandIndex1MaxRLimitx" 45;
	setAttr ".RightHandIndex1MaxRLimity" 45;
	setAttr ".RightHandIndex1MaxRLimitz" 45;
	setAttr ".RightHandIndex2Tx" -6.9916740301537841;
	setAttr ".RightHandIndex2Ty" 12.109108543621513;
	setAttr ".RightHandIndex2Tz" 0.27429838112841298;
	setAttr ".RightHandIndex2Ry" 0.0006092545355265485;
	setAttr ".RightHandIndex2Sx" 0.99999999999999989;
	setAttr ".RightHandIndex2Sz" 0.99999999999999989;
	setAttr ".RightHandIndex2JointOrienty" 0.00060925453552654839;
	setAttr ".RightHandIndex2MinRLimitx" -45;
	setAttr ".RightHandIndex2MinRLimity" -45;
	setAttr ".RightHandIndex2MinRLimitz" -45;
	setAttr ".RightHandIndex2MaxRLimitx" 45;
	setAttr ".RightHandIndex2MaxRLimity" 45;
	setAttr ".RightHandIndex2MaxRLimitz" 45;
	setAttr ".RightHandIndex3Tx" -7.2104733112323034;
	setAttr ".RightHandIndex3Ty" 12.109108518873418;
	setAttr ".RightHandIndex3Tz" 0.26666343491708572;
	setAttr ".RightHandIndex3Ry" -0.014622108852637159;
	setAttr ".RightHandIndex3JointOrienty" -0.015231363388163706;
	setAttr ".RightHandIndex3MinRLimitx" -45;
	setAttr ".RightHandIndex3MinRLimity" -45;
	setAttr ".RightHandIndex3MinRLimitz" -45;
	setAttr ".RightHandIndex3MaxRLimitx" 45;
	setAttr ".RightHandIndex3MaxRLimity" 45;
	setAttr ".RightHandIndex3MaxRLimitz" 45;
	setAttr ".RightHandIndex4Tx" -7.3719156676391107;
	setAttr ".RightHandIndex4Ty" 12.109108510624106;
	setAttr ".RightHandIndex4Tz" 0.26102994409072627;
	setAttr ".RightHandIndex4Ry" 0.16815425180532706;
	setAttr ".RightHandIndex4JointOrienty" 0.18277636065796429;
	setAttr ".RightHandIndex4MinRLimitx" -45;
	setAttr ".RightHandIndex4MinRLimity" -45;
	setAttr ".RightHandIndex4MinRLimitz" -45;
	setAttr ".RightHandIndex4MaxRLimitx" 45;
	setAttr ".RightHandIndex4MaxRLimity" 45;
	setAttr ".RightHandIndex4MaxRLimitz" 45;
	setAttr ".RightHandMiddle1Tx" -6.642342540640426;
	setAttr ".RightHandMiddle1Ty" 12.133952248863512;
	setAttr ".RightHandMiddle1Tz" 0.10769178069332215;
	setAttr ".RightHandMiddle1MinRLimitx" -45;
	setAttr ".RightHandMiddle1MinRLimity" -45;
	setAttr ".RightHandMiddle1MinRLimitz" -45;
	setAttr ".RightHandMiddle1MaxRLimitx" 45;
	setAttr ".RightHandMiddle1MaxRLimity" 45;
	setAttr ".RightHandMiddle1MaxRLimitz" 45;
	setAttr ".RightHandMiddle2Tx" -7.0432850429036922;
	setAttr ".RightHandMiddle2Ty" 12.133952215866124;
	setAttr ".RightHandMiddle2Tz" 0.093700993067692834;
	setAttr ".RightHandMiddle2Ry" 0.0006092545355265485;
	setAttr ".RightHandMiddle2Sx" 0.99999999999999989;
	setAttr ".RightHandMiddle2Sz" 0.99999999999999989;
	setAttr ".RightHandMiddle2JointOrienty" 0.00060925453552654839;
	setAttr ".RightHandMiddle2MinRLimitx" -45;
	setAttr ".RightHandMiddle2MinRLimity" -45;
	setAttr ".RightHandMiddle2MinRLimitz" -45;
	setAttr ".RightHandMiddle2MaxRLimitx" 45;
	setAttr ".RightHandMiddle2MaxRLimity" 45;
	setAttr ".RightHandMiddle2MaxRLimitz" 45;
	setAttr ".RightHandMiddle3Tx" -7.2712602611165291;
	setAttr ".RightHandMiddle3Ty" 12.133952199367377;
	setAttr ".RightHandMiddle3Tz" 0.085745855013817554;
	setAttr ".RightHandMiddle3Ry" -0.014622108852637159;
	setAttr ".RightHandMiddle3JointOrienty" -0.015231363388163706;
	setAttr ".RightHandMiddle3MinRLimitx" -45;
	setAttr ".RightHandMiddle3MinRLimity" -45;
	setAttr ".RightHandMiddle3MinRLimitz" -45;
	setAttr ".RightHandMiddle3MaxRLimitx" 45;
	setAttr ".RightHandMiddle3MaxRLimity" 45;
	setAttr ".RightHandMiddle3MaxRLimitz" 45;
	setAttr ".RightHandMiddle4Tx" -7.4366111955384868;
	setAttr ".RightHandMiddle4Ty" 12.133952182868716;
	setAttr ".RightHandMiddle4Tz" 0.079975975855016229;
	setAttr ".RightHandMiddle4Ry" 0.16815425180532706;
	setAttr ".RightHandMiddle4JointOrienty" 0.18277636065796429;
	setAttr ".RightHandMiddle4MinRLimitx" -45;
	setAttr ".RightHandMiddle4MinRLimity" -45;
	setAttr ".RightHandMiddle4MinRLimitz" -45;
	setAttr ".RightHandMiddle4MaxRLimitx" 45;
	setAttr ".RightHandMiddle4MaxRLimity" 45;
	setAttr ".RightHandMiddle4MaxRLimitz" 45;
	setAttr ".RightHandRing1Tx" -6.6492774687279343;
	setAttr ".RightHandRing1Ty" 12.123972784195768;
	setAttr ".RightHandRing1Tz" -0.065365899111575518;
	setAttr ".RightHandRing1MinRLimitx" -45;
	setAttr ".RightHandRing1MinRLimity" -45;
	setAttr ".RightHandRing1MinRLimitz" -45;
	setAttr ".RightHandRing1MaxRLimitx" 45;
	setAttr ".RightHandRing1MaxRLimity" 45;
	setAttr ".RightHandRing1MaxRLimitz" 45;
	setAttr ".RightHandRing2Tx" -7.0233852712772231;
	setAttr ".RightHandRing2Ty" 12.12397275119838;
	setAttr ".RightHandRing2Tz" -0.078420296889232757;
	setAttr ".RightHandRing2Ry" 0.0006092545355265485;
	setAttr ".RightHandRing2Sx" 0.99999999999999989;
	setAttr ".RightHandRing2Sz" 0.99999999999999989;
	setAttr ".RightHandRing2JointOrienty" 0.00060925453552654839;
	setAttr ".RightHandRing2MinRLimitx" -45;
	setAttr ".RightHandRing2MinRLimity" -45;
	setAttr ".RightHandRing2MinRLimitz" -45;
	setAttr ".RightHandRing2MaxRLimitx" 45;
	setAttr ".RightHandRing2MaxRLimity" 45;
	setAttr ".RightHandRing2MaxRLimitz" 45;
	setAttr ".RightHandRing3Tx" -7.2133779826282982;
	setAttr ".RightHandRing3Ty" 12.123972734699631;
	setAttr ".RightHandRing3Tz" -0.085050044716334455;
	setAttr ".RightHandRing3Ry" -0.014622108852637159;
	setAttr ".RightHandRing3JointOrienty" -0.015231363388163706;
	setAttr ".RightHandRing3MinRLimitx" -45;
	setAttr ".RightHandRing3MinRLimity" -45;
	setAttr ".RightHandRing3MinRLimitz" -45;
	setAttr ".RightHandRing3MaxRLimitx" 45;
	setAttr ".RightHandRing3MaxRLimity" 45;
	setAttr ".RightHandRing3MaxRLimitz" 45;
	setAttr ".RightHandRing4Tx" -7.3719450872812597;
	setAttr ".RightHandRing4Ty" 12.123972726450315;
	setAttr ".RightHandRing4Tz" -0.090583204028587494;
	setAttr ".RightHandRing4Ry" 0.16815425180532706;
	setAttr ".RightHandRing4JointOrienty" 0.18277636065796429;
	setAttr ".RightHandRing4MinRLimitx" -45;
	setAttr ".RightHandRing4MinRLimity" -45;
	setAttr ".RightHandRing4MinRLimitz" -45;
	setAttr ".RightHandRing4MaxRLimitx" 45;
	setAttr ".RightHandRing4MaxRLimity" 45;
	setAttr ".RightHandRing4MaxRLimitz" 45;
	setAttr ".RightHandPinky1Tx" -6.6483422956584786;
	setAttr ".RightHandPinky1Ty" 12.066809098800935;
	setAttr ".RightHandPinky1Tz" -0.20537358568830347;
	setAttr ".RightHandPinky1MinRLimitx" -45;
	setAttr ".RightHandPinky1MinRLimity" -45;
	setAttr ".RightHandPinky1MinRLimitz" -45;
	setAttr ".RightHandPinky1MaxRLimitx" 45;
	setAttr ".RightHandPinky1MaxRLimity" 45;
	setAttr ".RightHandPinky1MaxRLimitz" 45;
	setAttr ".RightHandPinky2Tx" -6.8996126370597661;
	setAttr ".RightHandPinky2Ty" 12.066803654232668;
	setAttr ".RightHandPinky2Tz" -0.2141416010017127;
	setAttr ".RightHandPinky2Ry" 0.0006092545355265485;
	setAttr ".RightHandPinky2Sx" 0.99999999999999989;
	setAttr ".RightHandPinky2Sz" 0.99999999999999989;
	setAttr ".RightHandPinky2JointOrienty" 0.00060925453552654839;
	setAttr ".RightHandPinky2MinRLimitx" -45;
	setAttr ".RightHandPinky2MinRLimity" -45;
	setAttr ".RightHandPinky2MinRLimitz" -45;
	setAttr ".RightHandPinky2MaxRLimitx" 45;
	setAttr ".RightHandPinky2MaxRLimity" 45;
	setAttr ".RightHandPinky2MaxRLimitz" 45;
	setAttr ".RightHandPinky3Tx" -7.0625947272717493;
	setAttr ".RightHandPinky3Ty" 12.066800123512593;
	setAttr ".RightHandPinky3Tz" -0.21982881965266671;
	setAttr ".RightHandPinky3Ry" -0.014622108852637159;
	setAttr ".RightHandPinky3JointOrienty" -0.015231363388163706;
	setAttr ".RightHandPinky3MinRLimitx" -45;
	setAttr ".RightHandPinky3MinRLimity" -45;
	setAttr ".RightHandPinky3MinRLimitz" -45;
	setAttr ".RightHandPinky3MaxRLimitx" 45;
	setAttr ".RightHandPinky3MaxRLimity" 45;
	setAttr ".RightHandPinky3MaxRLimitz" 45;
	setAttr ".RightHandPinky4Tx" -7.200162786291334;
	setAttr ".RightHandPinky4Ty" 12.066797137249418;
	setAttr ".RightHandPinky4Tz" -0.22462922281709724;
	setAttr ".RightHandPinky4Ry" 0.16815425180532706;
	setAttr ".RightHandPinky4JointOrienty" 0.18277636065796429;
	setAttr ".RightHandPinky4MinRLimitx" -45;
	setAttr ".RightHandPinky4MinRLimity" -45;
	setAttr ".RightHandPinky4MinRLimitz" -45;
	setAttr ".RightHandPinky4MaxRLimitx" 45;
	setAttr ".RightHandPinky4MaxRLimity" 45;
	setAttr ".RightHandPinky4MaxRLimitz" 45;
	setAttr ".RightHandExtraFinger1Tx" -6.6483422956584786;
	setAttr ".RightHandExtraFinger1Ty" 12.109108568369553;
	setAttr ".RightHandExtraFinger1Tz" -0.37036050287539829;
	setAttr ".RightHandExtraFinger1Ry" -0.034907713534874346;
	setAttr ".RightHandExtraFinger2Tx" -6.8171191784662213;
	setAttr ".RightHandExtraFinger2Ty" 12.10910854362152;
	setAttr ".RightHandExtraFinger2Tz" -0.37912851818880761;
	setAttr ".RightHandExtraFinger2Ry" -0.034907713150901909;
	setAttr ".RightHandExtraFinger3Tx" -6.9801012686782027;
	setAttr ".RightHandExtraFinger3Ty" 12.10910851887348;
	setAttr ".RightHandExtraFinger3Tz" -0.38481573683976172;
	setAttr ".RightHandExtraFinger3Ry" -0.034907713150901909;
	setAttr ".RightHandExtraFinger4Tx" -7.1176693276977918;
	setAttr ".RightHandExtraFinger4Ty" 12.109108510624129;
	setAttr ".RightHandExtraFinger4Tz" -0.38961614000419226;
	setAttr ".RightHandExtraFinger4Ry" -0.034907713150901909;
	setAttr ".LeftFootThumb1Tx" 0.51015787551419345;
	setAttr ".LeftFootThumb1Ty" 0.41240536248858073;
	setAttr ".LeftFootThumb1Tz" 0.1592225390220865;
	setAttr ".LeftFootThumb2Tx" 0.37546152870163541;
	setAttr ".LeftFootThumb2Ty" 0.21979420218019602;
	setAttr ".LeftFootThumb2Tz" 0.29631136046082696;
	setAttr ".LeftFootThumb3Tx" 0.28558795584209029;
	setAttr ".LeftFootThumb3Ty" 0.15575415732109887;
	setAttr ".LeftFootThumb3Tz" 0.5279698548443662;
	setAttr ".LeftFootThumb4Tx" 0.28558795674951831;
	setAttr ".LeftFootThumb4Ty" 0.15575415484629507;
	setAttr ".LeftFootThumb4Tz" 0.79995522713027323;
	setAttr ".LeftFootIndex1Tx" 0.58657138455880087;
	setAttr ".LeftFootIndex1Ty" 0.1557541764595812;
	setAttr ".LeftFootIndex1Tz" 1.068679732155114;
	setAttr ".LeftFootIndex2Tx" 0.58657138513625484;
	setAttr ".LeftFootIndex2Ty" 0.15575417505719241;
	setAttr ".LeftFootIndex2Tz" 1.2233555073501698;
	setAttr ".LeftFootIndex3Tx" 0.5865713856312158;
	setAttr ".LeftFootIndex3Ty" 0.15575417365480357;
	setAttr ".LeftFootIndex3Tz" 1.3828497601089267;
	setAttr ".LeftFootIndex4Tx" 0.58657138620867011;
	setAttr ".LeftFootIndex4Ty" 0.15575417216992138;
	setAttr ".LeftFootIndex4Tz" 1.5550566722538497;
	setAttr ".LeftFootMiddle1Tx" 0.73557142262496256;
	setAttr ".LeftFootMiddle1Ty" 0.15575418025428028;
	setAttr ".LeftFootMiddle1Tz" 1.068679732155114;
	setAttr ".LeftFootMiddle2Tx" 0.73557142311992318;
	setAttr ".LeftFootMiddle2Ty" 0.15575417893438501;
	setAttr ".LeftFootMiddle2Tz" 1.2232625372223345;
	setAttr ".LeftFootMiddle3Tx" 0.7355714236148837;
	setAttr ".LeftFootMiddle3Ty" 0.15575417761448962;
	setAttr ".LeftFootMiddle3Tz" 1.3734923579890708;
	setAttr ".LeftFootMiddle4Tx" 0.73557142410984444;
	setAttr ".LeftFootMiddle4Ty" 0.15575417621210089;
	setAttr ".LeftFootMiddle4Tz" 1.5315390666823727;
	setAttr ".LeftFootRing1Tx" 0.88465190913687897;
	setAttr ".LeftFootRing1Ty" 0.15575418421396633;
	setAttr ".LeftFootRing1Tz" 1.068679732155114;
	setAttr ".LeftFootRing2Tx" 0.88465190913687897;
	setAttr ".LeftFootRing2Ty" 0.155754182894071;
	setAttr ".LeftFootRing2Tz" 1.2137635647784477;
	setAttr ".LeftFootRing3Tx" 0.88465190996181375;
	setAttr ".LeftFootRing3Ty" 0.15575418165666916;
	setAttr ".LeftFootRing3Tz" 1.3588466211383357;
	setAttr ".LeftFootRing4Tx" 0.88465191078674854;
	setAttr ".LeftFootRing4Ty" 0.15575418033677382;
	setAttr ".LeftFootRing4Tz" 1.5075555174333941;
	setAttr ".LeftFootPinky1Tx" 1.0336262636071492;
	setAttr ".LeftFootPinky1Ty" 0.15575418800866545;
	setAttr ".LeftFootPinky1Tz" 1.068679732155114;
	setAttr ".LeftFootPinky2Tx" 1.0336262644320837;
	setAttr ".LeftFootPinky2Ty" 0.15575418677126354;
	setAttr ".LeftFootPinky2Tz" 1.2027254071108886;
	setAttr ".LeftFootPinky3Tx" 1.0336262644320837;
	setAttr ".LeftFootPinky3Ty" 0.15575418569884866;
	setAttr ".LeftFootPinky3Tz" 1.3317413412303072;
	setAttr ".LeftFootPinky4Tx" 1.0336262652570183;
	setAttr ".LeftFootPinky4Ty" 0.1557541843789533;
	setAttr ".LeftFootPinky4Tz" 1.4734318491559275;
	setAttr ".LeftFootExtraFinger1Tx" 0.41956948355448864;
	setAttr ".LeftFootExtraFinger1Ty" 0.15575418776118508;
	setAttr ".LeftFootExtraFinger1Tz" 1.068679732155114;
	setAttr ".LeftFootExtraFinger2Tx" 0.41956948404944927;
	setAttr ".LeftFootExtraFinger2Ty" 0.15575418627630278;
	setAttr ".LeftFootExtraFinger2Tz" 1.232783468599965;
	setAttr ".LeftFootExtraFinger3Tx" 0.41956948462690347;
	setAttr ".LeftFootExtraFinger3Ty" 0.15575418479142059;
	setAttr ".LeftFootExtraFinger3Tz" 1.4017145622044;
	setAttr ".LeftFootExtraFinger4Tx" 0.4195694852043575;
	setAttr ".LeftFootExtraFinger4Ty" 0.15575418322404477;
	setAttr ".LeftFootExtraFinger4Tz" 1.5739242667528965;
	setAttr ".RightFootThumb1Tx" -0.50980957526303217;
	setAttr ".RightFootThumb1Ty" 0.41240539004139593;
	setAttr ".RightFootThumb1Tz" 0.15922253102022105;
	setAttr ".RightFootThumb2Tx" -0.37534523511575896;
	setAttr ".RightFootThumb2Ty" 0.21979423814734397;
	setAttr ".RightFootThumb2Tz" 0.29631135311890927;
	setAttr ".RightFootThumb3Tx" -0.28542736557876591;
	setAttr ".RightFootThumb3Ty" 0.15575419444315519;
	setAttr ".RightFootThumb3Tz" 0.52796984783242251;
	setAttr ".RightFootThumb4Tx" -0.28542736557876591;
	setAttr ".RightFootThumb4Ty" 0.15575419229832532;
	setAttr ".RightFootThumb4Tz" 0.79995522011832909;
	setAttr ".RightFootIndex1Tx" -0.58652848928022749;
	setAttr ".RightFootIndex1Ty" 0.15575418842113273;
	setAttr ".RightFootIndex1Tz" 1.0686797107068151;
	setAttr ".RightFootIndex2Tx" -0.58652848928022749;
	setAttr ".RightFootIndex2Ty" 0.15575418726622425;
	setAttr ".RightFootIndex2Tz" 1.2233554859018707;
	setAttr ".RightFootIndex3Tx" -0.58652848928022749;
	setAttr ".RightFootIndex3Ty" 0.15575418611131592;
	setAttr ".RightFootIndex3Tz" 1.3828497386606278;
	setAttr ".RightFootIndex4Tx" -0.58652848928022749;
	setAttr ".RightFootIndex4Ty" 0.15575418479142059;
	setAttr ".RightFootIndex4Tz" 1.5550566508055503;
	setAttr ".RightFootMiddle1Tx" -0.73584165065444396;
	setAttr ".RightFootMiddle1Ty" 0.15575418371900565;
	setAttr ".RightFootMiddle1Tz" 1.068679709881881;
	setAttr ".RightFootMiddle2Tx" -0.73584165065444396;
	setAttr ".RightFootMiddle2Ty" 0.15575418256409723;
	setAttr ".RightFootMiddle2Tz" 1.2232625149491008;
	setAttr ".RightFootMiddle3Tx" -0.73584165065444396;
	setAttr ".RightFootMiddle3Ty" 0.15575418140918884;
	setAttr ".RightFootMiddle3Tz" 1.3734923357158371;
	setAttr ".RightFootMiddle4Tx" -0.73584165065444396;
	setAttr ".RightFootMiddle4Ty" 0.15575418017178691;
	setAttr ".RightFootMiddle4Tz" 1.5315390444091381;
	setAttr ".RightFootRing1Tx" -0.88432987612282954;
	setAttr ".RightFootRing1Ty" 0.15575418008929337;
	setAttr ".RightFootRing1Tz" 1.0686797090569462;
	setAttr ".RightFootRing2Tx" -0.88432987612282954;
	setAttr ".RightFootRing2Ty" 0.15575417893438501;
	setAttr ".RightFootRing2Tz" 1.2137635425052142;
	setAttr ".RightFootRing3Tx" -0.88432987612282954;
	setAttr ".RightFootRing3Ty" 0.15575417786197004;
	setAttr ".RightFootRing3Tz" 1.3588465988651022;
	setAttr ".RightFootRing4Tx" -0.88432987612282954;
	setAttr ".RightFootRing4Ty" 0.15575417670706163;
	setAttr ".RightFootRing4Tz" 1.50755549516016;
	setAttr ".RightFootPinky1Tx" -1.0336430411267579;
	setAttr ".RightFootPinky1Ty" 0.15575417530467275;
	setAttr ".RightFootPinky1Tz" 1.0686797090569462;
	setAttr ".RightFootPinky2Tx" -1.0336430411267579;
	setAttr ".RightFootPinky2Ty" 0.1557541743147513;
	setAttr ".RightFootPinky2Tz" 1.2027253840127206;
	setAttr ".RightFootPinky3Tx" -1.0336430411267579;
	setAttr ".RightFootPinky3Ty" 0.15575417332482977;
	setAttr ".RightFootPinky3Tz" 1.3317413189570741;
	setAttr ".RightFootPinky4Tx" -1.0336430411267579;
	setAttr ".RightFootPinky4Ty" 0.15575417225241489;
	setAttr ".RightFootPinky4Tz" 1.4734318260577597;
	setAttr ".RightFootExtraFinger1Tx" -0.41989170448863716;
	setAttr ".RightFootExtraFinger1Ty" 0.15575417720202234;
	setAttr ".RightFootExtraFinger1Tz" 1.0686797107068151;
	setAttr ".RightFootExtraFinger2Tx" -0.41989170448863716;
	setAttr ".RightFootExtraFinger2Ty" 0.15575417596462049;
	setAttr ".RightFootExtraFinger2Tz" 1.2327834479765998;
	setAttr ".RightFootExtraFinger3Tx" -0.41989170448863716;
	setAttr ".RightFootExtraFinger3Ty" 0.15575417472721859;
	setAttr ".RightFootExtraFinger3Tz" 1.4017145407561009;
	setAttr ".RightFootExtraFinger4Tx" -0.41989170448863716;
	setAttr ".RightFootExtraFinger4Ty" 0.15575417340732334;
	setAttr ".RightFootExtraFinger4Tz" 1.5739242461295317;
	setAttr ".LeftInHandThumbTx" 5.915594713131612;
	setAttr ".LeftInHandThumbTy" 12.092607550335311;
	setAttr ".LeftInHandIndexTx" 5.915594713131612;
	setAttr ".LeftInHandIndexTy" 12.092607550335311;
	setAttr ".LeftInHandMiddleTx" 5.915594713131612;
	setAttr ".LeftInHandMiddleTy" 12.092607550335311;
	setAttr ".LeftInHandRingTx" 5.915594713131612;
	setAttr ".LeftInHandRingTy" 12.092607550335311;
	setAttr ".LeftInHandPinkyTx" 5.915594713131612;
	setAttr ".LeftInHandPinkyTy" 12.092607550335311;
	setAttr ".LeftInHandExtraFingerTx" 5.915594713131612;
	setAttr ".LeftInHandExtraFingerTy" 12.092607550335311;
	setAttr ".RightInHandThumbTx" -5.9155944895743398;
	setAttr ".RightInHandThumbTy" 12.092631844658873;
	setAttr ".RightInHandIndexTx" -5.9155944895743398;
	setAttr ".RightInHandIndexTy" 12.092631844658873;
	setAttr ".RightInHandMiddleTx" -5.9155944895743398;
	setAttr ".RightInHandMiddleTy" 12.092631844658873;
	setAttr ".RightInHandRingTx" -5.9155944895743398;
	setAttr ".RightInHandRingTy" 12.092631844658873;
	setAttr ".RightInHandPinkyTx" -5.9155944895743398;
	setAttr ".RightInHandPinkyTy" 12.092631844658873;
	setAttr ".RightInHandExtraFingerTx" -5.9155944895743398;
	setAttr ".RightInHandExtraFingerTy" 12.092631844658873;
	setAttr ".LeftInFootThumbTx" 0.73501678214576882;
	setAttr ".LeftInFootThumbTy" 0.67235437557038003;
	setAttr ".LeftInFootIndexTx" 0.73501678214576882;
	setAttr ".LeftInFootIndexTy" 0.67235438357224531;
	setAttr ".LeftInFootMiddleTx" 0.73501678214576882;
	setAttr ".LeftInFootMiddleTy" 0.67235438357224531;
	setAttr ".LeftInFootRingTx" 0.73501678214576882;
	setAttr ".LeftInFootRingTy" 0.67235438357224531;
	setAttr ".LeftInFootPinkyTx" 0.73501678214576882;
	setAttr ".LeftInFootPinkyTy" 0.67235438357224531;
	setAttr ".LeftInFootExtraFingerTx" 0.73501678214576882;
	setAttr ".LeftInFootExtraFingerTy" 0.67235438357224531;
	setAttr ".RightInFootThumbTx" -0.73501693038651406;
	setAttr ".RightInFootThumbTy" 0.67235438736694431;
	setAttr ".RightInFootThumbTz" 3.6199861993479122e-005;
	setAttr ".RightInFootIndexTx" -0.73501693211887631;
	setAttr ".RightInFootIndexTy" 0.6723543874494381;
	setAttr ".RightInFootIndexTz" 3.6199861993479122e-005;
	setAttr ".RightInFootMiddleTx" -0.73501693211887631;
	setAttr ".RightInFootMiddleTy" 0.6723543874494381;
	setAttr ".RightInFootMiddleTz" 3.6199861993479122e-005;
	setAttr ".RightInFootRingTx" -0.73501693211887631;
	setAttr ".RightInFootRingTy" 0.6723543874494381;
	setAttr ".RightInFootRingTz" 3.6199861993479122e-005;
	setAttr ".RightInFootPinkyTx" -0.73501693211887631;
	setAttr ".RightInFootPinkyTy" 0.6723543874494381;
	setAttr ".RightInFootPinkyTz" 3.6199861993479122e-005;
	setAttr ".RightInFootExtraFingerTx" -0.73501693211887631;
	setAttr ".RightInFootExtraFingerTy" 0.6723543874494381;
	setAttr ".RightInFootExtraFingerTz" 3.6199861993479122e-005;
	setAttr ".LeftShoulderExtraTx" 1.0190932965517137;
	setAttr ".LeftShoulderExtraTy" 12.092607550335311;
	setAttr ".RightShoulderExtraTx" -1.01909426019905;
	setAttr ".RightShoulderExtraTy" 12.092631951900357;
createNode HIKProperty2State -n "HIKproperties1";
createNode HIKSkeletonGeneratorNode -n "HIKSkeletonGeneratorNode1";
	setAttr ".ihi" 0;
	setAttr ".WantIndexFinger" yes;
	setAttr ".WantMiddleFinger" yes;
	setAttr ".WantRingFinger" yes;
	setAttr ".WantPinkyFinger" yes;
	setAttr ".WantThumb" yes;
	setAttr ".WantToeBase" yes;
	setAttr ".HipsTy" 8.2493458593547491;
	setAttr ".LeftUpLegTx" 0.73501678214576882;
	setAttr ".LeftUpLegTy" 7.732111836026216;
	setAttr ".LeftLegTx" 0.73501678214576882;
	setAttr ".LeftLegTy" 4.0299171979338082;
	setAttr ".LeftFootTx" 0.73501678214576882;
	setAttr ".LeftFootTy" 0.67235438357224553;
	setAttr ".RightUpLegTx" -0.73501678214576882;
	setAttr ".RightUpLegTy" 7.732111836026216;
	setAttr ".RightLegTx" -0.73501700619800192;
	setAttr ".RightLegTy" 4.0299171979338082;
	setAttr ".RightLegTz" 3.6216608165573599e-005;
	setAttr ".RightFootTx" -0.73501693038651406;
	setAttr ".RightFootTy" 0.6723543839022198;
	setAttr ".RightFootTz" 3.6216608165573599e-005;
	setAttr ".SpineTy" 8.8268000695095843;
	setAttr ".LeftArmTx" 1.4607323829485952;
	setAttr ".LeftArmTy" 12.092607550335311;
	setAttr ".LeftForeArmTx" 3.7132546870490746;
	setAttr ".LeftForeArmTy" 12.092607550335311;
	setAttr ".LeftHandTx" 5.9155947081820068;
	setAttr ".LeftHandTy" 12.092607550335311;
	setAttr ".RightArmTx" -1.4607343495926477;
	setAttr ".RightArmTy" 12.092631951900357;
	setAttr ".RightForeArmTx" -3.7132675882010657;
	setAttr ".RightForeArmTy" 12.092631951900357;
	setAttr ".RightHandTx" -5.9155944714257789;
	setAttr ".RightHandTy" 12.092631844658873;
	setAttr ".HeadTy" 13.611420667935336;
	setAttr ".LeftToeBaseTx" 0.73501747731814415;
	setAttr ".LeftToeBaseTy" 0.15575417951183931;
	setAttr ".LeftToeBaseTz" 1.068679732155114;
	setAttr ".RightToeBaseTx" -0.73510646721909545;
	setAttr ".RightToeBaseTy" 0.15575418091422782;
	setAttr ".RightToeBaseTz" 1.0687182722740345;
	setAttr ".LeftShoulderTx" 0.57745424950421231;
	setAttr ".LeftShoulderTy" 12.092596215734096;
	setAttr ".RightShoulderTx" -0.57745417080545269;
	setAttr ".RightShoulderTy" 12.092596215734096;
	setAttr ".NeckTy" 11.961551496064386;
	setAttr ".LeftFingerBaseTx" 6.6423521214307062;
	setAttr ".LeftFingerBaseTy" 12.133927731807614;
	setAttr ".LeftFingerBaseTz" 0.10762792861154084;
	setAttr ".LeftFingerBaseRy" -0.0035633340000000005;
	setAttr ".RightFingerBaseTx" -6.6423424894944834;
	setAttr ".RightFingerBaseTy" 12.133952248863512;
	setAttr ".RightFingerBaseTz" 0.10769177161904173;
	setAttr ".RightFingerBaseRy" -2.0000646359999998;
	setAttr ".Spine1Ty" 9.8717172116945182;
	setAttr ".Spine2Ty" 10.916634353879452;
	setAttr ".Spine3Ty" 9.8167215726321544;
	setAttr ".Spine4Ty" 10.146695407006341;
	setAttr ".Spine5Ty" 10.476669241380534;
	setAttr ".Spine6Ty" 10.806643075754721;
	setAttr ".Spine7Ty" 11.136616910128909;
	setAttr ".Spine8Ty" 11.466590744503105;
	setAttr ".Spine9Ty" 11.796564578877295;
	setAttr ".Neck1Ty" 12.126538413251483;
	setAttr ".Neck2Ty" 12.291525330438576;
	setAttr ".Neck3Ty" 12.456512247625671;
	setAttr ".Neck4Ty" 12.621499164812771;
	setAttr ".Neck5Ty" 12.786486081999861;
	setAttr ".Neck6Ty" 12.951472999186963;
	setAttr ".Neck7Ty" 13.116459916374049;
	setAttr ".Neck8Ty" 13.281446833561148;
	setAttr ".Neck9Ty" 13.446433750748243;
	setAttr ".LeftUpLegRollTx" 0.73501678214576882;
	setAttr ".LeftUpLegRollTy" 5.8810145169800121;
	setAttr ".LeftLegRollTx" 0.73501678214576882;
	setAttr ".LeftLegRollTy" 2.3511357907530268;
	setAttr ".RightUpLegRollTx" -0.73501689417188543;
	setAttr ".RightUpLegRollTy" 5.8810145169800121;
	setAttr ".RightUpLegRollTz" 1.81083040827868e-005;
	setAttr ".RightLegRollTx" -0.73501696829225793;
	setAttr ".RightLegRollTy" 2.3511357909180139;
	setAttr ".RightLegRollTz" 3.6216608165573599e-005;
	setAttr ".LeftArmRollTx" 2.5869935349988351;
	setAttr ".LeftArmRollTy" 12.092607550335311;
	setAttr ".LeftForeArmRollTx" 4.8144246976155411;
	setAttr ".LeftForeArmRollTy" 12.092607550335311;
	setAttr ".RightArmRollTx" -2.5870009688968563;
	setAttr ".RightArmRollTy" 12.092631951900357;
	setAttr ".RightForeArmRollTx" -4.8144310298134227;
	setAttr ".RightForeArmRollTy" 12.092631898279615;
	setAttr ".HipsTranslationTy" 8.2493458593547491;
	setAttr ".LeftHandThumb1Tx" 6.2743387013208887;
	setAttr ".LeftHandThumb1Ty" 12.026736317414713;
	setAttr ".LeftHandThumb1Tz" 0.35327278913631593;
	setAttr ".LeftHandThumb2Tx" 6.4816109354988436;
	setAttr ".LeftHandThumb2Ty" 11.982511623758789;
	setAttr ".LeftHandThumb2Tz" 0.41163314312003579;
	setAttr ".LeftHandThumb3Tx" 6.6914033836087565;
	setAttr ".LeftHandThumb3Ty" 11.982510534845138;
	setAttr ".LeftHandThumb3Tz" 0.41163391377392622;
	setAttr ".LeftHandThumb4Tx" 6.9113924958883493;
	setAttr ".LeftHandThumb4Ty" 11.982510774076172;
	setAttr ".LeftHandThumb4Tz" 0.41163323642013772;
	setAttr ".LeftHandIndex1Tx" 6.6433500794465683;
	setAttr ".LeftHandIndex1Ty" 12.109083902825436;
	setAttr ".LeftHandIndex1Tz" 0.28639001721928131;
	setAttr ".LeftHandIndex2Tx" 6.991699711192382;
	setAttr ".LeftHandIndex2Ty" 12.109082079719997;
	setAttr ".LeftHandIndex2Tz" 0.29853297339816853;
	setAttr ".LeftHandIndex3Tx" 7.2104992108785639;
	setAttr ".LeftHandIndex3Ty" 12.109080941310276;
	setAttr ".LeftHandIndex3Tz" 0.30615998695602448;
	setAttr ".LeftHandIndex4Tx" 7.3719417330972226;
	setAttr ".LeftHandIndex4Ty" 12.109080099876973;
	setAttr ".LeftHandIndex4Tz" 0.31178759995847183;
	setAttr ".LeftHandMiddle1Tx" 6.6423521263803167;
	setAttr ".LeftHandMiddle1Ty" 12.133927740056965;
	setAttr ".LeftHandMiddle1Tz" 0.10762792696167164;
	setAttr ".LeftHandMiddle2Tx" 7.0435385774743962;
	setAttr ".LeftHandMiddle2Ty" 12.133927740056965;
	setAttr ".LeftHandMiddle2Tz" 0.10765287752069053;
	setAttr ".LeftHandMiddle3Tx" 7.271652509262795;
	setAttr ".LeftHandMiddle3Ty" 12.133927740056965;
	setAttr ".LeftHandMiddle3Tz" 0.10766704849448809;
	setAttr ".LeftHandMiddle4Tx" 7.437104042807638;
	setAttr ".LeftHandMiddle4Ty" 12.133927740056965;
	setAttr ".LeftHandMiddle4Tz" 0.10767724435599645;
	setAttr ".LeftHandRing1Tx" 6.6492717131593295;
	setAttr ".LeftHandRing1Ty" 12.123948432126783;
	setAttr ".LeftHandRing1Tz" -0.065430421617694814;
	setAttr ".LeftHandRing2Tx" 7.0236071333094383;
	setAttr ".LeftHandRing2Ty" 12.123948432126783;
	setAttr ".LeftHandRing2Tz" -0.065430414275777005;
	setAttr ".LeftHandRing3Tx" 7.213715441919109;
	setAttr ".LeftHandRing3Ty" 12.123948432126783;
	setAttr ".LeftHandRing3Tz" -0.065430423927511652;
	setAttr ".LeftHandRing4Tx" 7.3723790177222792;
	setAttr ".LeftHandRing4Ty" 12.123948432126783;
	setAttr ".LeftHandRing4Tz" -0.065430491324667342;
	setAttr ".LeftHandPinky1Tx" 6.6483242675380358;
	setAttr ".LeftHandPinky1Ty" 12.066784870472153;
	setAttr ".LeftHandPinky1Tz" -0.2054381179286508;
	setAttr ".LeftHandPinky2Tx" 6.8994425495720391;
	setAttr ".LeftHandPinky2Ty" 12.066788219706568;
	setAttr ".LeftHandPinky2Tz" -0.2054381179286508;
	setAttr ".LeftHandPinky3Tx" 7.0623260064802498;
	setAttr ".LeftHandPinky3Ty" 12.066790389284529;
	setAttr ".LeftHandPinky3Tz" -0.20543812972521538;
	setAttr ".LeftHandPinky4Tx" 7.1998108131014238;
	setAttr ".LeftHandPinky4Ty" 12.066792220639313;
	setAttr ".LeftHandPinky4Tz" -0.20543806447288976;
	setAttr ".LeftHandExtraFinger1Tx" 6.6483242675380358;
	setAttr ".LeftHandExtraFinger1Ty" 12.109083902825436;
	setAttr ".LeftHandExtraFinger1Tz" -0.37042503511574587;
	setAttr ".LeftHandExtraFinger1Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger1Rz" -0.00029934100000000001;
	setAttr ".LeftHandExtraFinger2Tx" 6.8169490909784907;
	setAttr ".LeftHandExtraFinger2Ty" 12.109082079720002;
	setAttr ".LeftHandExtraFinger2Tz" -0.37042503511574587;
	setAttr ".LeftHandExtraFinger2Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger2Rz" -0.00029934100000000001;
	setAttr ".LeftHandExtraFinger3Tx" 6.979832547886704;
	setAttr ".LeftHandExtraFinger3Ty" 12.109080941310269;
	setAttr ".LeftHandExtraFinger3Tz" -0.37042504691231048;
	setAttr ".LeftHandExtraFinger3Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger3Rz" -0.00029934100000000001;
	setAttr ".LeftHandExtraFinger4Tx" 7.1173173545078781;
	setAttr ".LeftHandExtraFinger4Ty" 12.109080099876993;
	setAttr ".LeftHandExtraFinger4Tz" -0.37042498165998461;
	setAttr ".LeftHandExtraFinger4Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger4Rz" -0.00029934100000000001;
	setAttr ".RightHandThumb1Tx" -6.2743074420746243;
	setAttr ".RightHandThumb1Ty" 12.026760974709491;
	setAttr ".RightHandThumb1Tz" 0.35330420025303799;
	setAttr ".RightHandThumb2Tx" -6.4815745261859581;
	setAttr ".RightHandThumb2Ty" 11.982536322300293;
	setAttr ".RightHandThumb2Tz" 0.4116828946774333;
	setAttr ".RightHandThumb3Tx" -6.6912390228169185;
	setAttr ".RightHandThumb3Ty" 11.982538533124986;
	setAttr ".RightHandThumb3Tz" 0.41900998965515179;
	setAttr ".RightHandThumb4Tx" -6.9110939693853224;
	setAttr ".RightHandThumb4Ty" 11.982540042755279;
	setAttr ".RightHandThumb4Tz" 0.42669320905860531;
	setAttr ".RightHandIndex1Tx" -6.643324759729321;
	setAttr ".RightHandIndex1Ty" 12.109108568369553;
	setAttr ".RightHandIndex1Tz" 0.28645393975047634;
	setAttr ".RightHandIndex2Tx" -6.9916740301537841;
	setAttr ".RightHandIndex2Ty" 12.109108543621513;
	setAttr ".RightHandIndex2Tz" 0.27429838112841298;
	setAttr ".RightHandIndex3Tx" -7.2104733112323025;
	setAttr ".RightHandIndex3Ty" 12.10910851887342;
	setAttr ".RightHandIndex3Tz" 0.26666343491708572;
	setAttr ".RightHandIndex4Tx" -7.3719156676391107;
	setAttr ".RightHandIndex4Ty" 12.109108510624107;
	setAttr ".RightHandIndex4Tz" 0.26102994409072627;
	setAttr ".RightHandMiddle1Tx" -6.642342540640426;
	setAttr ".RightHandMiddle1Ty" 12.133952248863512;
	setAttr ".RightHandMiddle1Tz" 0.10769178069332215;
	setAttr ".RightHandMiddle2Tx" -7.0432850429036922;
	setAttr ".RightHandMiddle2Ty" 12.133952215866124;
	setAttr ".RightHandMiddle2Tz" 0.093700993067692834;
	setAttr ".RightHandMiddle3Tx" -7.2712602611165282;
	setAttr ".RightHandMiddle3Ty" 12.13395219936738;
	setAttr ".RightHandMiddle3Tz" 0.08574585501381754;
	setAttr ".RightHandMiddle4Tx" -7.4366111955384859;
	setAttr ".RightHandMiddle4Ty" 12.133952182868716;
	setAttr ".RightHandMiddle4Tz" 0.079975975855016229;
	setAttr ".RightHandRing1Tx" -6.6492774687279343;
	setAttr ".RightHandRing1Ty" 12.123972784195768;
	setAttr ".RightHandRing1Tz" -0.065365899111575518;
	setAttr ".RightHandRing2Tx" -7.0233852712772231;
	setAttr ".RightHandRing2Ty" 12.12397275119838;
	setAttr ".RightHandRing2Tz" -0.078420296889232757;
	setAttr ".RightHandRing3Tx" -7.2133779826282982;
	setAttr ".RightHandRing3Ty" 12.123972734699633;
	setAttr ".RightHandRing3Tz" -0.085050044716334469;
	setAttr ".RightHandRing4Tx" -7.3719450872812589;
	setAttr ".RightHandRing4Ty" 12.123972726450315;
	setAttr ".RightHandRing4Tz" -0.090583204028587508;
	setAttr ".RightHandPinky1Tx" -6.6483422956584786;
	setAttr ".RightHandPinky1Ty" 12.066809098800935;
	setAttr ".RightHandPinky1Tz" -0.20537358568830347;
	setAttr ".RightHandPinky2Tx" -6.8996126370597661;
	setAttr ".RightHandPinky2Ty" 12.066803654232668;
	setAttr ".RightHandPinky2Tz" -0.2141416010017127;
	setAttr ".RightHandPinky3Tx" -7.0625947272717493;
	setAttr ".RightHandPinky3Ty" 12.066800123512596;
	setAttr ".RightHandPinky3Tz" -0.21982881965266671;
	setAttr ".RightHandPinky4Tx" -7.200162786291334;
	setAttr ".RightHandPinky4Ty" 12.06679713724942;
	setAttr ".RightHandPinky4Tz" -0.22462922281709724;
	setAttr ".RightHandExtraFinger1Tx" -6.6483422956584786;
	setAttr ".RightHandExtraFinger1Ty" 12.109108568369553;
	setAttr ".RightHandExtraFinger1Tz" -0.37036050287539829;
	setAttr ".RightHandExtraFinger1Ry" -2.0000646579999999;
	setAttr ".RightHandExtraFinger2Tx" -6.8171191784662213;
	setAttr ".RightHandExtraFinger2Ty" 12.10910854362152;
	setAttr ".RightHandExtraFinger2Tz" -0.37912851818880761;
	setAttr ".RightHandExtraFinger2Ry" -2.0000646359999998;
	setAttr ".RightHandExtraFinger3Tx" -6.9801012686782027;
	setAttr ".RightHandExtraFinger3Ty" 12.10910851887348;
	setAttr ".RightHandExtraFinger3Tz" -0.38481573683976172;
	setAttr ".RightHandExtraFinger3Ry" -2.0000646359999998;
	setAttr ".RightHandExtraFinger4Tx" -7.1176693276977918;
	setAttr ".RightHandExtraFinger4Ty" 12.109108510624129;
	setAttr ".RightHandExtraFinger4Tz" -0.38961614000419226;
	setAttr ".RightHandExtraFinger4Ry" -2.0000646359999998;
	setAttr ".LeftFootThumb1Tx" 0.51015787551419345;
	setAttr ".LeftFootThumb1Ty" 0.41240536248858073;
	setAttr ".LeftFootThumb1Tz" 0.1592225390220865;
	setAttr ".LeftFootThumb2Tx" 0.37546152870163541;
	setAttr ".LeftFootThumb2Ty" 0.21979420218019602;
	setAttr ".LeftFootThumb2Tz" 0.29631136046082696;
	setAttr ".LeftFootThumb3Tx" 0.28558795584209029;
	setAttr ".LeftFootThumb3Ty" 0.15575415732109887;
	setAttr ".LeftFootThumb3Tz" 0.5279698548443662;
	setAttr ".LeftFootThumb4Tx" 0.28558795674951831;
	setAttr ".LeftFootThumb4Ty" 0.15575415484629507;
	setAttr ".LeftFootThumb4Tz" 0.79995522713027323;
	setAttr ".LeftFootIndex1Tx" 0.58657138455880087;
	setAttr ".LeftFootIndex1Ty" 0.1557541764595812;
	setAttr ".LeftFootIndex1Tz" 1.068679732155114;
	setAttr ".LeftFootIndex2Tx" 0.58657138513625484;
	setAttr ".LeftFootIndex2Ty" 0.15575417505719241;
	setAttr ".LeftFootIndex2Tz" 1.2233555073501698;
	setAttr ".LeftFootIndex3Tx" 0.5865713856312158;
	setAttr ".LeftFootIndex3Ty" 0.15575417365480357;
	setAttr ".LeftFootIndex3Tz" 1.3828497601089267;
	setAttr ".LeftFootIndex4Tx" 0.58657138620867011;
	setAttr ".LeftFootIndex4Ty" 0.15575417216992138;
	setAttr ".LeftFootIndex4Tz" 1.5550566722538497;
	setAttr ".LeftFootMiddle1Tx" 0.73557142262496256;
	setAttr ".LeftFootMiddle1Ty" 0.15575418025428028;
	setAttr ".LeftFootMiddle1Tz" 1.068679732155114;
	setAttr ".LeftFootMiddle2Tx" 0.73557142311992318;
	setAttr ".LeftFootMiddle2Ty" 0.15575417893438501;
	setAttr ".LeftFootMiddle2Tz" 1.2232625372223345;
	setAttr ".LeftFootMiddle3Tx" 0.7355714236148837;
	setAttr ".LeftFootMiddle3Ty" 0.15575417761448962;
	setAttr ".LeftFootMiddle3Tz" 1.3734923579890708;
	setAttr ".LeftFootMiddle4Tx" 0.73557142410984444;
	setAttr ".LeftFootMiddle4Ty" 0.15575417621210089;
	setAttr ".LeftFootMiddle4Tz" 1.5315390666823727;
	setAttr ".LeftFootRing1Tx" 0.88465190913687897;
	setAttr ".LeftFootRing1Ty" 0.15575418421396633;
	setAttr ".LeftFootRing1Tz" 1.068679732155114;
	setAttr ".LeftFootRing2Tx" 0.88465190913687897;
	setAttr ".LeftFootRing2Ty" 0.155754182894071;
	setAttr ".LeftFootRing2Tz" 1.2137635647784477;
	setAttr ".LeftFootRing3Tx" 0.88465190996181375;
	setAttr ".LeftFootRing3Ty" 0.15575418165666916;
	setAttr ".LeftFootRing3Tz" 1.3588466211383357;
	setAttr ".LeftFootRing4Tx" 0.88465191078674854;
	setAttr ".LeftFootRing4Ty" 0.15575418033677382;
	setAttr ".LeftFootRing4Tz" 1.5075555174333941;
	setAttr ".LeftFootPinky1Tx" 1.0336262636071492;
	setAttr ".LeftFootPinky1Ty" 0.15575418800866545;
	setAttr ".LeftFootPinky1Tz" 1.068679732155114;
	setAttr ".LeftFootPinky2Tx" 1.0336262644320837;
	setAttr ".LeftFootPinky2Ty" 0.15575418677126354;
	setAttr ".LeftFootPinky2Tz" 1.2027254071108886;
	setAttr ".LeftFootPinky3Tx" 1.0336262644320837;
	setAttr ".LeftFootPinky3Ty" 0.15575418569884866;
	setAttr ".LeftFootPinky3Tz" 1.3317413412303072;
	setAttr ".LeftFootPinky4Tx" 1.0336262652570183;
	setAttr ".LeftFootPinky4Ty" 0.1557541843789533;
	setAttr ".LeftFootPinky4Tz" 1.4734318491559275;
	setAttr ".LeftFootExtraFinger1Tx" 0.41956948355448864;
	setAttr ".LeftFootExtraFinger1Ty" 0.15575418776118508;
	setAttr ".LeftFootExtraFinger1Tz" 1.068679732155114;
	setAttr ".LeftFootExtraFinger2Tx" 0.41956948404944927;
	setAttr ".LeftFootExtraFinger2Ty" 0.15575418627630278;
	setAttr ".LeftFootExtraFinger2Tz" 1.232783468599965;
	setAttr ".LeftFootExtraFinger3Tx" 0.41956948462690347;
	setAttr ".LeftFootExtraFinger3Ty" 0.15575418479142059;
	setAttr ".LeftFootExtraFinger3Tz" 1.4017145622044;
	setAttr ".LeftFootExtraFinger4Tx" 0.4195694852043575;
	setAttr ".LeftFootExtraFinger4Ty" 0.15575418322404477;
	setAttr ".LeftFootExtraFinger4Tz" 1.5739242667528965;
	setAttr ".RightFootThumb1Tx" -0.50980957526303217;
	setAttr ".RightFootThumb1Ty" 0.41240539004139593;
	setAttr ".RightFootThumb1Tz" 0.15922253102022105;
	setAttr ".RightFootThumb2Tx" -0.37534523511575896;
	setAttr ".RightFootThumb2Ty" 0.21979423814734397;
	setAttr ".RightFootThumb2Tz" 0.29631135311890927;
	setAttr ".RightFootThumb3Tx" -0.28542736557876591;
	setAttr ".RightFootThumb3Ty" 0.15575419444315519;
	setAttr ".RightFootThumb3Tz" 0.52796984783242251;
	setAttr ".RightFootThumb4Tx" -0.28542736557876591;
	setAttr ".RightFootThumb4Ty" 0.15575419229832532;
	setAttr ".RightFootThumb4Tz" 0.79995522011832909;
	setAttr ".RightFootIndex1Tx" -0.58652848928022749;
	setAttr ".RightFootIndex1Ty" 0.15575418842113273;
	setAttr ".RightFootIndex1Tz" 1.0686797107068151;
	setAttr ".RightFootIndex2Tx" -0.58652848928022749;
	setAttr ".RightFootIndex2Ty" 0.15575418726622425;
	setAttr ".RightFootIndex2Tz" 1.2233554859018707;
	setAttr ".RightFootIndex3Tx" -0.58652848928022749;
	setAttr ".RightFootIndex3Ty" 0.15575418611131592;
	setAttr ".RightFootIndex3Tz" 1.3828497386606278;
	setAttr ".RightFootIndex4Tx" -0.58652848928022749;
	setAttr ".RightFootIndex4Ty" 0.15575418479142059;
	setAttr ".RightFootIndex4Tz" 1.5550566508055503;
	setAttr ".RightFootMiddle1Tx" -0.73584165065444396;
	setAttr ".RightFootMiddle1Ty" 0.15575418371900565;
	setAttr ".RightFootMiddle1Tz" 1.068679709881881;
	setAttr ".RightFootMiddle2Tx" -0.73584165065444396;
	setAttr ".RightFootMiddle2Ty" 0.15575418256409723;
	setAttr ".RightFootMiddle2Tz" 1.2232625149491008;
	setAttr ".RightFootMiddle3Tx" -0.73584165065444396;
	setAttr ".RightFootMiddle3Ty" 0.15575418140918884;
	setAttr ".RightFootMiddle3Tz" 1.3734923357158371;
	setAttr ".RightFootMiddle4Tx" -0.73584165065444396;
	setAttr ".RightFootMiddle4Ty" 0.15575418017178691;
	setAttr ".RightFootMiddle4Tz" 1.5315390444091381;
	setAttr ".RightFootRing1Tx" -0.88432987612282954;
	setAttr ".RightFootRing1Ty" 0.15575418008929337;
	setAttr ".RightFootRing1Tz" 1.0686797090569462;
	setAttr ".RightFootRing2Tx" -0.88432987612282954;
	setAttr ".RightFootRing2Ty" 0.15575417893438501;
	setAttr ".RightFootRing2Tz" 1.2137635425052142;
	setAttr ".RightFootRing3Tx" -0.88432987612282954;
	setAttr ".RightFootRing3Ty" 0.15575417786197004;
	setAttr ".RightFootRing3Tz" 1.3588465988651022;
	setAttr ".RightFootRing4Tx" -0.88432987612282954;
	setAttr ".RightFootRing4Ty" 0.15575417670706163;
	setAttr ".RightFootRing4Tz" 1.50755549516016;
	setAttr ".RightFootPinky1Tx" -1.0336430411267579;
	setAttr ".RightFootPinky1Ty" 0.15575417530467275;
	setAttr ".RightFootPinky1Tz" 1.0686797090569462;
	setAttr ".RightFootPinky2Tx" -1.0336430411267579;
	setAttr ".RightFootPinky2Ty" 0.1557541743147513;
	setAttr ".RightFootPinky2Tz" 1.2027253840127206;
	setAttr ".RightFootPinky3Tx" -1.0336430411267579;
	setAttr ".RightFootPinky3Ty" 0.15575417332482977;
	setAttr ".RightFootPinky3Tz" 1.3317413189570741;
	setAttr ".RightFootPinky4Tx" -1.0336430411267579;
	setAttr ".RightFootPinky4Ty" 0.15575417225241489;
	setAttr ".RightFootPinky4Tz" 1.4734318260577597;
	setAttr ".RightFootExtraFinger1Tx" -0.41989170448863716;
	setAttr ".RightFootExtraFinger1Ty" 0.15575417720202234;
	setAttr ".RightFootExtraFinger1Tz" 1.0686797107068151;
	setAttr ".RightFootExtraFinger2Tx" -0.41989170448863716;
	setAttr ".RightFootExtraFinger2Ty" 0.15575417596462049;
	setAttr ".RightFootExtraFinger2Tz" 1.2327834479765998;
	setAttr ".RightFootExtraFinger3Tx" -0.41989170448863716;
	setAttr ".RightFootExtraFinger3Ty" 0.15575417472721859;
	setAttr ".RightFootExtraFinger3Tz" 1.4017145407561009;
	setAttr ".RightFootExtraFinger4Tx" -0.41989170448863716;
	setAttr ".RightFootExtraFinger4Ty" 0.15575417340732334;
	setAttr ".RightFootExtraFinger4Tz" 1.5739242461295317;
	setAttr ".LeftInHandThumbTx" 5.915594713131612;
	setAttr ".LeftInHandThumbTy" 12.092607550335311;
	setAttr ".LeftInHandIndexTx" 5.915594713131612;
	setAttr ".LeftInHandIndexTy" 12.092607550335311;
	setAttr ".LeftInHandMiddleTx" 5.915594713131612;
	setAttr ".LeftInHandMiddleTy" 12.092607550335311;
	setAttr ".LeftInHandRingTx" 5.915594713131612;
	setAttr ".LeftInHandRingTy" 12.092607550335311;
	setAttr ".LeftInHandPinkyTx" 5.915594713131612;
	setAttr ".LeftInHandPinkyTy" 12.092607550335311;
	setAttr ".LeftInHandExtraFingerTx" 5.915594713131612;
	setAttr ".LeftInHandExtraFingerTy" 12.092607550335311;
	setAttr ".RightInHandThumbTx" -5.9155944895743398;
	setAttr ".RightInHandThumbTy" 12.092631844658873;
	setAttr ".RightInHandIndexTx" -5.9155944895743398;
	setAttr ".RightInHandIndexTy" 12.092631844658873;
	setAttr ".RightInHandMiddleTx" -5.9155944895743398;
	setAttr ".RightInHandMiddleTy" 12.092631844658873;
	setAttr ".RightInHandRingTx" -5.9155944895743398;
	setAttr ".RightInHandRingTy" 12.092631844658873;
	setAttr ".RightInHandPinkyTx" -5.9155944895743398;
	setAttr ".RightInHandPinkyTy" 12.092631844658873;
	setAttr ".RightInHandExtraFingerTx" -5.9155944895743398;
	setAttr ".RightInHandExtraFingerTy" 12.092631844658873;
	setAttr ".LeftInFootThumbTx" 0.73501678214576882;
	setAttr ".LeftInFootThumbTy" 0.67235437557038003;
	setAttr ".LeftInFootIndexTx" 0.73501678214576882;
	setAttr ".LeftInFootIndexTy" 0.67235438357224531;
	setAttr ".LeftInFootMiddleTx" 0.73501678214576882;
	setAttr ".LeftInFootMiddleTy" 0.67235438357224531;
	setAttr ".LeftInFootRingTx" 0.73501678214576882;
	setAttr ".LeftInFootRingTy" 0.67235438357224531;
	setAttr ".LeftInFootPinkyTx" 0.73501678214576882;
	setAttr ".LeftInFootPinkyTy" 0.67235438357224531;
	setAttr ".LeftInFootExtraFingerTx" 0.73501678214576882;
	setAttr ".LeftInFootExtraFingerTy" 0.67235438357224531;
	setAttr ".RightInFootThumbTx" -0.73501693038651406;
	setAttr ".RightInFootThumbTy" 0.67235438736694431;
	setAttr ".RightInFootThumbTz" 3.6199861993479122e-005;
	setAttr ".RightInFootIndexTx" -0.73501693211887631;
	setAttr ".RightInFootIndexTy" 0.6723543874494381;
	setAttr ".RightInFootIndexTz" 3.6199861993479122e-005;
	setAttr ".RightInFootMiddleTx" -0.73501693211887631;
	setAttr ".RightInFootMiddleTy" 0.6723543874494381;
	setAttr ".RightInFootMiddleTz" 3.6199861993479122e-005;
	setAttr ".RightInFootRingTx" -0.73501693211887631;
	setAttr ".RightInFootRingTy" 0.6723543874494381;
	setAttr ".RightInFootRingTz" 3.6199861993479122e-005;
	setAttr ".RightInFootPinkyTx" -0.73501693211887631;
	setAttr ".RightInFootPinkyTy" 0.6723543874494381;
	setAttr ".RightInFootPinkyTz" 3.6199861993479122e-005;
	setAttr ".RightInFootExtraFingerTx" -0.73501693211887631;
	setAttr ".RightInFootExtraFingerTy" 0.6723543874494381;
	setAttr ".RightInFootExtraFingerTz" 3.6199861993479122e-005;
	setAttr ".LeftShoulderExtraTx" 1.0190932965517137;
	setAttr ".LeftShoulderExtraTy" 12.092607550335311;
	setAttr ".RightShoulderExtraTx" -1.01909426019905;
	setAttr ".RightShoulderExtraTy" 12.092631951900357;
createNode skinCluster -n "skinCluster1";
	setAttr -s 228 ".wl";
	setAttr -s 5 ".wl[0].w";
	setAttr ".wl[0].w[0]" 0.30248059853155462;
	setAttr ".wl[0].w[1]" 0.15831731655422743;
	setAttr ".wl[0].w[5]" 0.059041177654632945;
	setAttr ".wl[0].w[9]" 0.3072516323428538;
	setAttr ".wl[0].w[10]" 0.17290927491673122;
	setAttr -s 5 ".wl[1].w";
	setAttr ".wl[1].w[0]" 0.26478188000271757;
	setAttr ".wl[1].w[1]" 0.24157699767346061;
	setAttr ".wl[1].w[9]" 0.26799568565765525;
	setAttr ".wl[1].w[10]" 0.16974805621081052;
	setAttr ".wl[1].w[11]" 0.055897380455356083;
	setAttr -s 5 ".wl[2].w";
	setAttr ".wl[2].w[0]" 0.12870053274235072;
	setAttr ".wl[2].w[9]" 0.26800872527120201;
	setAttr ".wl[2].w[10]" 0.28286852558412406;
	setAttr ".wl[2].w[11]" 0.22058274854662854;
	setAttr ".wl[2].w[12]" 0.099839467855694711;
	setAttr -s 5 ".wl[3].w[9:13]"  0.22841380948404688 0.23872710020760415 
		0.19489298158304211 0.16797472484102377 0.16999138388428317;
	setAttr -s 5 ".wl[4].w";
	setAttr ".wl[4].w[10]" 0.18834763085016779;
	setAttr ".wl[4].w[11]" 0.25300597386647666;
	setAttr ".wl[4].w[12]" 0.22106959694634282;
	setAttr ".wl[4].w[13]" 0.19395764337596461;
	setAttr ".wl[4].w[60]" 0.14361915496104827;
	setAttr -s 5 ".wl[5].w";
	setAttr ".wl[5].w[10]" 0.10543302191015477;
	setAttr ".wl[5].w[11]" 0.17091160492739052;
	setAttr ".wl[5].w[12]" 0.31742280556636487;
	setAttr ".wl[5].w[13]" 0.32202168439997131;
	setAttr ".wl[5].w[60]" 0.084210883196118538;
	setAttr -s 5 ".wl[6].w";
	setAttr ".wl[6].w[10]" 0.089888603051514498;
	setAttr ".wl[6].w[11]" 0.26572534010360443;
	setAttr ".wl[6].w[12]" 0.28927245033623628;
	setAttr ".wl[6].w[13]" 0.20836875456006712;
	setAttr ".wl[6].w[60]" 0.14674485194857775;
	setAttr -s 5 ".wl[7].w";
	setAttr ".wl[7].w[10]" 0.040413298107033209;
	setAttr ".wl[7].w[11]" 0.15542752752233435;
	setAttr ".wl[7].w[12]" 0.37135753488146306;
	setAttr ".wl[7].w[13]" 0.37135611060118923;
	setAttr ".wl[7].w[60]" 0.061445528887980189;
	setAttr -s 5 ".wl[8].w";
	setAttr ".wl[8].w[11]" 0.3332510768266288;
	setAttr ".wl[8].w[12]" 0.36201765930311763;
	setAttr ".wl[8].w[13]" 0.14238182154032397;
	setAttr ".wl[8].w[36]" 0.035395562394532558;
	setAttr ".wl[8].w[60]" 0.12695387993539703;
	setAttr -s 5 ".wl[9].w";
	setAttr ".wl[9].w[10]" 0.015690270416129883;
	setAttr ".wl[9].w[11]" 0.1777792190618443;
	setAttr ".wl[9].w[12]" 0.40750056000760476;
	setAttr ".wl[9].w[13]" 0.34896784895488608;
	setAttr ".wl[9].w[60]" 0.050062101559534916;
	setAttr -s 5 ".wl[10].w";
	setAttr ".wl[10].w[11]" 0.38166950597997945;
	setAttr ".wl[10].w[12]" 0.38166950597997945;
	setAttr ".wl[10].w[13]" 0.026937515816844764;
	setAttr ".wl[10].w[36]" 0.015114677813468895;
	setAttr ".wl[10].w[60]" 0.19460879440972748;
	setAttr -s 5 ".wl[11].w";
	setAttr ".wl[11].w[11]" 0.02834200361726447;
	setAttr ".wl[11].w[12]" 0.46725774522786173;
	setAttr ".wl[11].w[13]" 0.4944702309722484;
	setAttr ".wl[11].w[60]" 0.0068385441822454932;
	setAttr ".wl[11].w[61]" 0.0030914760003798131;
	setAttr -s 5 ".wl[12].w";
	setAttr ".wl[12].w[11]" 0.26503950701364692;
	setAttr ".wl[12].w[12]" 0.26503950701364692;
	setAttr ".wl[12].w[13]" 0.030927208569366035;
	setAttr ".wl[12].w[60]" 0.40247968059131228;
	setAttr ".wl[12].w[61]" 0.036514096812027927;
	setAttr -s 5 ".wl[13].w";
	setAttr ".wl[13].w[11]" 0.047900141591336182;
	setAttr ".wl[13].w[12]" 0.46622958291507138;
	setAttr ".wl[13].w[13]" 0.46621316827189724;
	setAttr ".wl[13].w[60]" 0.013152524450109783;
	setAttr ".wl[13].w[61]" 0.0065045827715852758;
	setAttr -s 5 ".wl[14].w";
	setAttr ".wl[14].w[11]" 0.17079962393437464;
	setAttr ".wl[14].w[12]" 0.17375765524771306;
	setAttr ".wl[14].w[13]" 0.093864580696634378;
	setAttr ".wl[14].w[60]" 0.34353059819449128;
	setAttr ".wl[14].w[61]" 0.21804754192678677;
	setAttr -s 5 ".wl[15].w";
	setAttr ".wl[15].w[11]" 0.19086654690936508;
	setAttr ".wl[15].w[12]" 0.33814364133933089;
	setAttr ".wl[15].w[13]" 0.30342416442932313;
	setAttr ".wl[15].w[60]" 0.10550175890148336;
	setAttr ".wl[15].w[61]" 0.062063888420497516;
	setAttr -s 5 ".wl[16].w";
	setAttr ".wl[16].w[11]" 0.26223265558496645;
	setAttr ".wl[16].w[12]" 0.30386871272846155;
	setAttr ".wl[16].w[13]" 0.23430773625151224;
	setAttr ".wl[16].w[36]" 0.059172591700957011;
	setAttr ".wl[16].w[60]" 0.14041830373410277;
	setAttr -s 5 ".wl[17].w";
	setAttr ".wl[17].w[10]" 0.025722717652605597;
	setAttr ".wl[17].w[11]" 0.13020740149390642;
	setAttr ".wl[17].w[12]" 0.39614927487240947;
	setAttr ".wl[17].w[13]" 0.4008957456053972;
	setAttr ".wl[17].w[60]" 0.047024860375681293;
	setAttr -s 5 ".wl[18].w";
	setAttr ".wl[18].w[10]" 0.18926641279997974;
	setAttr ".wl[18].w[11]" 0.24914152578345705;
	setAttr ".wl[18].w[12]" 0.22000950833740379;
	setAttr ".wl[18].w[13]" 0.19484532694576703;
	setAttr ".wl[18].w[60]" 0.1467372261333923;
	setAttr -s 5 ".wl[19].w";
	setAttr ".wl[19].w[10]" 0.10395174509017853;
	setAttr ".wl[19].w[11]" 0.16776424366556666;
	setAttr ".wl[19].w[12]" 0.31886535158976165;
	setAttr ".wl[19].w[13]" 0.32575223642785212;
	setAttr ".wl[19].w[60]" 0.083666423226641057;
	setAttr -s 5 ".wl[20].w";
	setAttr ".wl[20].w[0]" 0.12839274404938081;
	setAttr ".wl[20].w[9]" 0.26788550063535937;
	setAttr ".wl[20].w[10]" 0.28278721882145536;
	setAttr ".wl[20].w[11]" 0.22035243102617028;
	setAttr ".wl[20].w[12]" 0.10058210546763421;
	setAttr -s 5 ".wl[21].w[9:13]"  0.23727441112069339 0.24955729740490651 
		0.19787667193996303 0.15716382436246207 0.15812779517197512;
	setAttr -s 5 ".wl[22].w";
	setAttr ".wl[22].w[0]" 0.315522274755837;
	setAttr ".wl[22].w[1]" 0.14734049920874351;
	setAttr ".wl[22].w[5]" 0.050808139670378005;
	setAttr ".wl[22].w[9]" 0.32144865946486434;
	setAttr ".wl[22].w[10]" 0.16488042690017715;
	setAttr -s 5 ".wl[23].w";
	setAttr ".wl[23].w[0]" 0.26827902839698764;
	setAttr ".wl[23].w[1]" 0.25853742290285037;
	setAttr ".wl[23].w[9]" 0.27233102343674431;
	setAttr ".wl[23].w[10]" 0.15654685938714366;
	setAttr ".wl[23].w[11]" 0.04430566587627402;
	setAttr -s 5 ".wl[24].w";
	setAttr ".wl[24].w[0]" 0.28630173550951055;
	setAttr ".wl[24].w[1]" 0.28424314302525011;
	setAttr ".wl[24].w[9]" 0.25303916392038855;
	setAttr ".wl[24].w[10]" 0.1393335090960611;
	setAttr ".wl[24].w[11]" 0.03708244844878951;
	setAttr -s 5 ".wl[25].w";
	setAttr ".wl[25].w[0]" 0.28240910193504382;
	setAttr ".wl[25].w[1]" 0.28075440907775179;
	setAttr ".wl[25].w[9]" 0.25087182761794058;
	setAttr ".wl[25].w[10]" 0.1447631655316082;
	setAttr ".wl[25].w[11]" 0.041201495837655616;
	setAttr -s 5 ".wl[26].w[9:13]"  0.20195245789111646 0.21301057825843678 
		0.16947544132912487 0.19745915899564451 0.2181023635256775;
	setAttr -s 5 ".wl[27].w[9:13]"  0.19350161611784239 0.20330116518523625 
		0.16513975544602541 0.20542682639945034 0.23263063685144555;
	setAttr -s 5 ".wl[28].w";
	setAttr ".wl[28].w[10]" 0.04399884588842895;
	setAttr ".wl[28].w[11]" 0.089391630417556892;
	setAttr ".wl[28].w[12]" 0.37500706639681736;
	setAttr ".wl[28].w[13]" 0.45757256842199479;
	setAttr ".wl[28].w[60]" 0.034029888875202162;
	setAttr -s 5 ".wl[29].w";
	setAttr ".wl[29].w[10]" 0.040609511377815787;
	setAttr ".wl[29].w[11]" 0.081806348510732055;
	setAttr ".wl[29].w[12]" 0.36370138206841701;
	setAttr ".wl[29].w[13]" 0.48194017486313773;
	setAttr ".wl[29].w[60]" 0.031942583179897448;
	setAttr -s 5 ".wl[30].w";
	setAttr ".wl[30].w[10]" 0.0075353615051714463;
	setAttr ".wl[30].w[11]" 0.032275032450552132;
	setAttr ".wl[30].w[12]" 0.38621241103538312;
	setAttr ".wl[30].w[13]" 0.56467385551549676;
	setAttr ".wl[30].w[60]" 0.0093033394933966715;
	setAttr -s 5 ".wl[31].w";
	setAttr ".wl[31].w[10]" 0.00711384317884599;
	setAttr ".wl[31].w[11]" 0.02983921115190696;
	setAttr ".wl[31].w[12]" 0.36695189011666995;
	setAttr ".wl[31].w[13]" 0.5873698902242751;
	setAttr ".wl[31].w[60]" 0.0087251653283021216;
	setAttr -s 5 ".wl[32].w";
	setAttr ".wl[32].w[0]" 0.31905332998055974;
	setAttr ".wl[32].w[1]" 0.27969718308944541;
	setAttr ".wl[32].w[5]" 0.081881341886668416;
	setAttr ".wl[32].w[9]" 0.23743689698363121;
	setAttr ".wl[32].w[10]" 0.081931248059695164;
	setAttr -s 5 ".wl[33].w";
	setAttr ".wl[33].w[0]" 0.37769197963065976;
	setAttr ".wl[33].w[1]" 0.37769197963065976;
	setAttr ".wl[33].w[5]" 0.04035646981335704;
	setAttr ".wl[33].w[9]" 0.1466659624306379;
	setAttr ".wl[33].w[10]" 0.057593608494685505;
	setAttr -s 5 ".wl[34].w";
	setAttr ".wl[34].w[0]" 0.41645388484458362;
	setAttr ".wl[34].w[1]" 0.41645388484458362;
	setAttr ".wl[34].w[5]" 0.02400390076127161;
	setAttr ".wl[34].w[9]" 0.10546962594634489;
	setAttr ".wl[34].w[10]" 0.037618703603216334;
	setAttr -s 5 ".wl[35].w";
	setAttr ".wl[35].w[0]" 0.39808303161919784;
	setAttr ".wl[35].w[1]" 0.39808303161919784;
	setAttr ".wl[35].w[5]" 0.031740375593429314;
	setAttr ".wl[35].w[9]" 0.12364063997817978;
	setAttr ".wl[35].w[10]" 0.048452921189995259;
	setAttr -s 5 ".wl[36].w";
	setAttr ".wl[36].w[0]" 0.302981178217608;
	setAttr ".wl[36].w[1]" 0.27404658840194801;
	setAttr ".wl[36].w[5]" 0.093187376915309483;
	setAttr ".wl[36].w[9]" 0.23566572686775406;
	setAttr ".wl[36].w[10]" 0.094119129597380433;
	setAttr -s 5 ".wl[37].w";
	setAttr ".wl[37].w[0]" 0.33817969774914786;
	setAttr ".wl[37].w[1]" 0.33817969774914786;
	setAttr ".wl[37].w[5]" 0.06241336858820544;
	setAttr ".wl[37].w[9]" 0.1786888111228204;
	setAttr ".wl[37].w[10]" 0.08253842479067848;
	setAttr -s 5 ".wl[38].w";
	setAttr ".wl[38].w[0]" 0.028975542393406065;
	setAttr ".wl[38].w[1]" 0.4952550559866728;
	setAttr ".wl[38].w[2]" 0.27239184015499657;
	setAttr ".wl[38].w[5]" 0.11749923732285068;
	setAttr ".wl[38].w[6]" 0.085878324142073748;
	setAttr -s 5 ".wl[39].w";
	setAttr ".wl[39].w[0]" 0.00031174117548370248;
	setAttr ".wl[39].w[1]" 0.97669168365167347;
	setAttr ".wl[39].w[2]" 0.019316814526567746;
	setAttr ".wl[39].w[5]" 0.0023079065977328842;
	setAttr ".wl[39].w[6]" 0.0013718540485421846;
	setAttr -s 5 ".wl[40].w";
	setAttr ".wl[40].w[0]" 0.0012843872978420014;
	setAttr ".wl[40].w[1]" 0.8511485757738334;
	setAttr ".wl[40].w[2]" 0.060515684909408111;
	setAttr ".wl[40].w[5]" 0.065903520764014997;
	setAttr ".wl[40].w[6]" 0.021147831254901571;
	setAttr -s 5 ".wl[41].w";
	setAttr ".wl[41].w[0]" 0.04037006391672459;
	setAttr ".wl[41].w[1]" 0.53187807207925308;
	setAttr ".wl[41].w[2]" 0.31847409890701195;
	setAttr ".wl[41].w[5]" 0.059730369734712921;
	setAttr ".wl[41].w[6]" 0.049547395362297492;
	setAttr -s 5 ".wl[42].w";
	setAttr ".wl[42].w[0]" 0.031868330147615767;
	setAttr ".wl[42].w[1]" 0.57687060358738373;
	setAttr ".wl[42].w[2]" 0.31107801756658571;
	setAttr ".wl[42].w[5]" 0.043893678994663149;
	setAttr ".wl[42].w[6]" 0.036289369703751573;
	setAttr -s 5 ".wl[43].w";
	setAttr ".wl[43].w[0]" 0.0021942401851402999;
	setAttr ".wl[43].w[1]" 0.88362099359727275;
	setAttr ".wl[43].w[2]" 0.090803645351648241;
	setAttr ".wl[43].w[5]" 0.01444103709958122;
	setAttr ".wl[43].w[6]" 0.008940083766357642;
	setAttr -s 5 ".wl[44].w";
	setAttr ".wl[44].w[0]" 0.0034502595278965175;
	setAttr ".wl[44].w[1]" 0.71199309035989011;
	setAttr ".wl[44].w[2]" 0.11523902356291041;
	setAttr ".wl[44].w[5]" 0.12243684418199048;
	setAttr ".wl[44].w[6]" 0.046880782367312523;
	setAttr -s 5 ".wl[45].w";
	setAttr ".wl[45].w[0]" 0.039597176663013461;
	setAttr ".wl[45].w[1]" 0.5417191775453043;
	setAttr ".wl[45].w[2]" 0.32055028043064571;
	setAttr ".wl[45].w[5]" 0.053474140536372318;
	setAttr ".wl[45].w[6]" 0.044659224824664251;
	setAttr -s 5 ".wl[46].w";
	setAttr ".wl[46].w[0]" 0.037610217728935157;
	setAttr ".wl[46].w[1]" 0.45049302896194904;
	setAttr ".wl[46].w[2]" 0.27775212117693215;
	setAttr ".wl[46].w[5]" 0.1332030730568059;
	setAttr ".wl[46].w[6]" 0.1009415590753778;
	setAttr -s 5 ".wl[47].w";
	setAttr ".wl[47].w[0]" 0.055324030726479873;
	setAttr ".wl[47].w[1]" 0.47257576653650046;
	setAttr ".wl[47].w[2]" 0.32080137377410228;
	setAttr ".wl[47].w[5]" 0.08208850659103413;
	setAttr ".wl[47].w[6]" 0.069210322371883154;
	setAttr -s 5 ".wl[48].w";
	setAttr ".wl[48].w[0]" 0.32527090879223802;
	setAttr ".wl[48].w[1]" 0.32025087432041921;
	setAttr ".wl[48].w[5]" 0.11147595556299045;
	setAttr ".wl[48].w[9]" 0.17699496967451669;
	setAttr ".wl[48].w[10]" 0.066007291649835723;
	setAttr -s 5 ".wl[49].w";
	setAttr ".wl[49].w[0]" 0.36922453470550509;
	setAttr ".wl[49].w[1]" 0.36922453470550509;
	setAttr ".wl[49].w[5]" 0.068394466171962626;
	setAttr ".wl[49].w[9]" 0.13408169919455895;
	setAttr ".wl[49].w[10]" 0.05907476522246826;
	setAttr -s 5 ".wl[50].w";
	setAttr ".wl[50].w[0]" 0.42668670225508876;
	setAttr ".wl[50].w[1]" 0.42668670225508876;
	setAttr ".wl[50].w[5]" 0.033505477724078567;
	setAttr ".wl[50].w[9]" 0.082051100135663593;
	setAttr ".wl[50].w[10]" 0.031070017630080275;
	setAttr -s 5 ".wl[51].w";
	setAttr ".wl[51].w[0]" 0.44736946585074738;
	setAttr ".wl[51].w[1]" 0.44736946585074738;
	setAttr ".wl[51].w[5]" 0.022937014107814364;
	setAttr ".wl[51].w[9]" 0.061231767917484525;
	setAttr ".wl[51].w[10]" 0.021092286273206379;
	setAttr -s 5 ".wl[52].w";
	setAttr ".wl[52].w[0]" 0.41212511912630295;
	setAttr ".wl[52].w[1]" 0.41212511912630295;
	setAttr ".wl[52].w[5]" 0.042079858180226012;
	setAttr ".wl[52].w[9]" 0.097000348209957399;
	setAttr ".wl[52].w[10]" 0.036669555357210726;
	setAttr -s 5 ".wl[53].w";
	setAttr ".wl[53].w[0]" 0.34514050792632139;
	setAttr ".wl[53].w[1]" 0.33663117264011239;
	setAttr ".wl[53].w[5]" 0.098278852139147374;
	setAttr ".wl[53].w[9]" 0.16638002257860535;
	setAttr ".wl[53].w[10]" 0.053569444715813631;
	setAttr -s 5 ".wl[54].w";
	setAttr ".wl[54].w[0]" 0.23189860455095787;
	setAttr ".wl[54].w[1]" 0.48845621188552324;
	setAttr ".wl[54].w[2]" 0.052848730954353343;
	setAttr ".wl[54].w[5]" 0.16679128352743347;
	setAttr ".wl[54].w[9]" 0.060005169081732028;
	setAttr -s 5 ".wl[55].w";
	setAttr ".wl[55].w[0]" 0.26902100732086565;
	setAttr ".wl[55].w[1]" 0.51481732213298459;
	setAttr ".wl[55].w[2]" 0.068928881709094988;
	setAttr ".wl[55].w[5]" 0.089036082549240128;
	setAttr ".wl[55].w[9]" 0.058196706287814787;
	setAttr -s 5 ".wl[56].w";
	setAttr ".wl[56].w[0]" 0.24747000647660133;
	setAttr ".wl[56].w[1]" 0.61422178580946429;
	setAttr ".wl[56].w[2]" 0.047361874995460733;
	setAttr ".wl[56].w[5]" 0.054256655167823506;
	setAttr ".wl[56].w[9]" 0.036689677550650043;
	setAttr -s 5 ".wl[57].w";
	setAttr ".wl[57].w[0]" 0.22559111418661373;
	setAttr ".wl[57].w[1]" 0.6664243986844125;
	setAttr ".wl[57].w[2]" 0.036911697102167219;
	setAttr ".wl[57].w[5]" 0.042825165774929105;
	setAttr ".wl[57].w[9]" 0.028247624251877389;
	setAttr -s 5 ".wl[58].w";
	setAttr ".wl[58].w[0]" 0.24955942172512779;
	setAttr ".wl[58].w[1]" 0.59823438994347433;
	setAttr ".wl[58].w[2]" 0.04944301091843048;
	setAttr ".wl[58].w[5]" 0.062689282450089881;
	setAttr ".wl[58].w[9]" 0.04007389496287754;
	setAttr -s 5 ".wl[59].w";
	setAttr ".wl[59].w[0]" 0.2176748398969531;
	setAttr ".wl[59].w[1]" 0.54010743376716697;
	setAttr ".wl[59].w[2]" 0.041671809815687307;
	setAttr ".wl[59].w[5]" 0.15241045960227559;
	setAttr ".wl[59].w[9]" 0.048135456917916951;
	setAttr -s 5 ".wl[60].w[12:16]"  0.0023576729005042292 0.47869567513730404 
		0.51292110813017122 0.0038161448496912775 0.0022093989823291512;
	setAttr -s 5 ".wl[61].w[12:16]"  0.0033086825496583942 0.48238228776580078 
		0.50670612250484992 0.0051563214171745694 0.0024465857625162609;
	setAttr -s 5 ".wl[62].w[12:16]"  0.0036076453728903293 0.47406872250308613 
		0.5122528858530937 0.0062540418632590113 0.0038167044076707775;
	setAttr -s 5 ".wl[63].w[12:16]"  0.0046265599756148126 0.47596134180218452 
		0.50764630998122495 0.007870252489971764 0.0038955357510039512;
	setAttr -s 5 ".wl[64].w[12:16]"  0.00030624937874854774 0.44671239209885044 
		0.55219023487614649 0.00051494915287505832 0.00027617449337940457;
	setAttr -s 5 ".wl[65].w[12:16]"  0.00050870148403210917 0.46148958440396565 
		0.53676340282480683 0.00083696904119250309 0.00040134224600301593;
	setAttr -s 5 ".wl[66].w[12:16]"  0.0002213298994225 0.42484070176406724 
		0.57433407416293869 0.00039046080933668618 0.00021343336423490717;
	setAttr -s 5 ".wl[67].w[12:16]"  0.00039417676894888481 0.44478715064913271 
		0.55379687585057169 0.00068767113544279039 0.00033412559590391796;
	setAttr -s 5 ".wl[68].w";
	setAttr ".wl[68].w[14]" 0.28077410151395038;
	setAttr ".wl[68].w[15]" 0.67012669530826197;
	setAttr ".wl[68].w[16]" 0.032627107314065713;
	setAttr ".wl[68].w[17]" 0.0080767868013710623;
	setAttr ".wl[68].w[24]" 0.0083953090623509318;
	setAttr -s 5 ".wl[69].w";
	setAttr ".wl[69].w[14]" 0.32995231761121013;
	setAttr ".wl[69].w[15]" 0.61853712524959459;
	setAttr ".wl[69].w[16]" 0.016489809541813574;
	setAttr ".wl[69].w[28]" 0.017643294071230733;
	setAttr ".wl[69].w[32]" 0.017377453526151023;
	setAttr -s 5 ".wl[70].w";
	setAttr ".wl[70].w[14]" 0.001223400876129026;
	setAttr ".wl[70].w[15]" 0.9986777534742205;
	setAttr ".wl[70].w[16]" 7.779509504302454e-005;
	setAttr ".wl[70].w[17]" 1.2600141595491432e-005;
	setAttr ".wl[70].w[24]" 8.450413011867379e-006;
	setAttr -s 5 ".wl[71].w";
	setAttr ".wl[71].w[14]" 0.15364314688068451;
	setAttr ".wl[71].w[15]" 0.83338497926152078;
	setAttr ".wl[71].w[16]" 0.0044349229990453464;
	setAttr ".wl[71].w[28]" 0.0039828873872334121;
	setAttr ".wl[71].w[32]" 0.0045540634715160013;
	setAttr -s 5 ".wl[72].w";
	setAttr ".wl[72].w[21]" 0.20094506951432345;
	setAttr ".wl[72].w[22]" 0.36423873399648937;
	setAttr ".wl[72].w[23]" 0.33148971901683;
	setAttr ".wl[72].w[25]" 0.050261611560241642;
	setAttr ".wl[72].w[26]" 0.053064865912115546;
	setAttr -s 5 ".wl[73].w";
	setAttr ".wl[73].w[29]" 0.12158032846487002;
	setAttr ".wl[73].w[30]" 0.12569604684790583;
	setAttr ".wl[73].w[33]" 0.18364013872921719;
	setAttr ".wl[73].w[34]" 0.28454174297900364;
	setAttr ".wl[73].w[35]" 0.28454174297900342;
	setAttr -s 5 ".wl[74].w";
	setAttr ".wl[74].w[21]" 0.17790559128697458;
	setAttr ".wl[74].w[22]" 0.38827354000492859;
	setAttr ".wl[74].w[23]" 0.36878371563844925;
	setAttr ".wl[74].w[25]" 0.031355926287265842;
	setAttr ".wl[74].w[26]" 0.033681226782381724;
	setAttr -s 5 ".wl[75].w";
	setAttr ".wl[75].w[30]" 0.089385181482795187;
	setAttr ".wl[75].w[31]" 0.085298536028415112;
	setAttr ".wl[75].w[33]" 0.1812708173887016;
	setAttr ".wl[75].w[34]" 0.32202273255004404;
	setAttr ".wl[75].w[35]" 0.32202273255004404;
	setAttr -s 5 ".wl[76].w";
	setAttr ".wl[76].w[22]" 0.19062702250567887;
	setAttr ".wl[76].w[23]" 0.19062702250567887;
	setAttr ".wl[76].w[26]" 0.22763583855315153;
	setAttr ".wl[76].w[27]" 0.22763583855315153;
	setAttr ".wl[76].w[30]" 0.1634742778823392;
	setAttr -s 5 ".wl[77].w";
	setAttr ".wl[77].w[26]" 0.21250041923138621;
	setAttr ".wl[77].w[27]" 0.21250041923138621;
	setAttr ".wl[77].w[30]" 0.21568587065945874;
	setAttr ".wl[77].w[31]" 0.21568587065945863;
	setAttr ".wl[77].w[34]" 0.14362742021831021;
	setAttr -s 5 ".wl[78].w";
	setAttr ".wl[78].w[22]" 0.19267289834037934;
	setAttr ".wl[78].w[23]" 0.19267289834037934;
	setAttr ".wl[78].w[26]" 0.22553215555538775;
	setAttr ".wl[78].w[27]" 0.22553215555538797;
	setAttr ".wl[78].w[30]" 0.16358989220846548;
	setAttr -s 5 ".wl[79].w";
	setAttr ".wl[79].w[26]" 0.21137386668487407;
	setAttr ".wl[79].w[27]" 0.21137386668487407;
	setAttr ".wl[79].w[30]" 0.21501606742105675;
	setAttr ".wl[79].w[31]" 0.21501606742105675;
	setAttr ".wl[79].w[34]" 0.14722013178813842;
	setAttr -s 5 ".wl[80].w";
	setAttr ".wl[80].w[15]" 0.0098988431673050527;
	setAttr ".wl[80].w[16]" 0.48476587818037348;
	setAttr ".wl[80].w[17]" 0.48476587818037348;
	setAttr ".wl[80].w[18]" 0.014570721651325348;
	setAttr ".wl[80].w[20]" 0.0059986788206226665;
	setAttr -s 5 ".wl[81].w";
	setAttr ".wl[81].w[15]" 0.22889797443061274;
	setAttr ".wl[81].w[16]" 0.23660290436138018;
	setAttr ".wl[81].w[17]" 0.22468353124773069;
	setAttr ".wl[81].w[18]" 0.1057841791922241;
	setAttr ".wl[81].w[20]" 0.20403141076805234;
	setAttr -s 5 ".wl[82].w";
	setAttr ".wl[82].w[18]" 0.22765351740717546;
	setAttr ".wl[82].w[19]" 0.22765351740717568;
	setAttr ".wl[82].w[21]" 0.18787492974086575;
	setAttr ".wl[82].w[22]" 0.18906109743339392;
	setAttr ".wl[82].w[23]" 0.16775693801138908;
	setAttr -s 5 ".wl[83].w";
	setAttr ".wl[83].w[18]" 0.1624228877843954;
	setAttr ".wl[83].w[20]" 0.16359056442919037;
	setAttr ".wl[83].w[21]" 0.23493685636784181;
	setAttr ".wl[83].w[22]" 0.23541491106053472;
	setAttr ".wl[83].w[23]" 0.20363478035803778;
	setAttr -s 5 ".wl[84].w";
	setAttr ".wl[84].w[21]" 0.14857437485224037;
	setAttr ".wl[84].w[22]" 0.28308456094160306;
	setAttr ".wl[84].w[23]" 0.28308456094160306;
	setAttr ".wl[84].w[26]" 0.1426282516322768;
	setAttr ".wl[84].w[27]" 0.1426282516322768;
	setAttr -s 5 ".wl[85].w";
	setAttr ".wl[85].w[21]" 0.14811263352443843;
	setAttr ".wl[85].w[22]" 0.28057083526999954;
	setAttr ".wl[85].w[23]" 0.28057083526999932;
	setAttr ".wl[85].w[26]" 0.14537284796778141;
	setAttr ".wl[85].w[27]" 0.14537284796778141;
	setAttr -s 5 ".wl[86].w";
	setAttr ".wl[86].w[21]" 0.17703703917623684;
	setAttr ".wl[86].w[22]" 0.27376068105111595;
	setAttr ".wl[86].w[23]" 0.27376068105111595;
	setAttr ".wl[86].w[26]" 0.13772079936076562;
	setAttr ".wl[86].w[27]" 0.13772079936076562;
	setAttr -s 5 ".wl[87].w";
	setAttr ".wl[87].w[21]" 0.1772071538435899;
	setAttr ".wl[87].w[22]" 0.27540730316083839;
	setAttr ".wl[87].w[23]" 0.27540730316083828;
	setAttr ".wl[87].w[26]" 0.13598911991736676;
	setAttr ".wl[87].w[27]" 0.13598911991736676;
	setAttr -s 5 ".wl[88].w";
	setAttr ".wl[88].w[2]" 0.92270428411453709;
	setAttr ".wl[88].w[3]" 0.022227570972663847;
	setAttr ".wl[88].w[4]" 0.0041940952666484231;
	setAttr ".wl[88].w[6]" 0.041893062941519822;
	setAttr ".wl[88].w[7]" 0.0089809867046309298;
	setAttr -s 5 ".wl[89].w";
	setAttr ".wl[89].w[2]" 0.98161106379455865;
	setAttr ".wl[89].w[3]" 0.012991606845170704;
	setAttr ".wl[89].w[4]" 0.0023199752545284887;
	setAttr ".wl[89].w[6]" 0.0019825686187333446;
	setAttr ".wl[89].w[7]" 0.0010947854870086448;
	setAttr -s 5 ".wl[90].w";
	setAttr ".wl[90].w[2]" 0.86219877866436623;
	setAttr ".wl[90].w[3]" 0.079262773205380443;
	setAttr ".wl[90].w[4]" 0.040089859206598522;
	setAttr ".wl[90].w[6]" 0.011344269742744779;
	setAttr ".wl[90].w[7]" 0.0071043191809100001;
	setAttr -s 5 ".wl[91].w";
	setAttr ".wl[91].w[2]" 0.73237967437364715;
	setAttr ".wl[91].w[3]" 0.084073286970641106;
	setAttr ".wl[91].w[4]" 0.043923951176358764;
	setAttr ".wl[91].w[6]" 0.10491723401690702;
	setAttr ".wl[91].w[7]" 0.034705853462446007;
	setAttr -s 5 ".wl[92].w";
	setAttr ".wl[92].w[1]" 0.18167588335336091;
	setAttr ".wl[92].w[2]" 0.79716285277765364;
	setAttr ".wl[92].w[3]" 0.0017881345998921805;
	setAttr ".wl[92].w[5]" 0.0085281250402182186;
	setAttr ".wl[92].w[6]" 0.010845004228875044;
	setAttr -s 5 ".wl[93].w";
	setAttr ".wl[93].w[1]" 0.15567870262218372;
	setAttr ".wl[93].w[2]" 0.83299679466138365;
	setAttr ".wl[93].w[3]" 0.00081181698889473935;
	setAttr ".wl[93].w[5]" 0.0047117210069506808;
	setAttr ".wl[93].w[6]" 0.0058009647205872058;
	setAttr -s 5 ".wl[94].w";
	setAttr ".wl[94].w[1]" 0.20927498629399674;
	setAttr ".wl[94].w[2]" 0.66281489550550443;
	setAttr ".wl[94].w[3]" 0.0017566019908541607;
	setAttr ".wl[94].w[5]" 0.048422169069152761;
	setAttr ".wl[94].w[6]" 0.077731347140491902;
	setAttr -s 5 ".wl[95].w";
	setAttr ".wl[95].w[1]" 0.2075039387063064;
	setAttr ".wl[95].w[2]" 0.63080666723137802;
	setAttr ".wl[95].w[3]" 0.0029357723275433715;
	setAttr ".wl[95].w[5]" 0.059287481205926175;
	setAttr ".wl[95].w[6]" 0.099466140528846073;
	setAttr -s 5 ".wl[96].w";
	setAttr ".wl[96].w[2]" 0.46752039484877544;
	setAttr ".wl[96].w[3]" 0.46752039484877544;
	setAttr ".wl[96].w[4]" 0.0088778383106803901;
	setAttr ".wl[96].w[6]" 0.028040685995884346;
	setAttr ".wl[96].w[7]" 0.028040685995884346;
	setAttr -s 5 ".wl[97].w";
	setAttr ".wl[97].w[2]" 0.48386217538443926;
	setAttr ".wl[97].w[3]" 0.48386217538443904;
	setAttr ".wl[97].w[4]" 0.022440646627102611;
	setAttr ".wl[97].w[6]" 0.0049175013020095228;
	setAttr ".wl[97].w[7]" 0.0049175013020095228;
	setAttr -s 5 ".wl[98].w";
	setAttr ".wl[98].w[2]" 0.23962641083208255;
	setAttr ".wl[98].w[3]" 0.59104641980643768;
	setAttr ".wl[98].w[4]" 0.15736101537500974;
	setAttr ".wl[98].w[6]" 0.0056406040103893912;
	setAttr ".wl[98].w[7]" 0.0063255499760805998;
	setAttr -s 5 ".wl[99].w";
	setAttr ".wl[99].w[2]" 0.15272402575094132;
	setAttr ".wl[99].w[3]" 0.70425055891647581;
	setAttr ".wl[99].w[4]" 0.084891065522884973;
	setAttr ".wl[99].w[6]" 0.022511596201519636;
	setAttr ".wl[99].w[7]" 0.035622753608178272;
	setAttr -s 5 ".wl[100].w";
	setAttr ".wl[100].w[2]" 0.029678250877562925;
	setAttr ".wl[100].w[3]" 0.34168132493196074;
	setAttr ".wl[100].w[4]" 0.34168132493196074;
	setAttr ".wl[100].w[7]" 0.14347954962925774;
	setAttr ".wl[100].w[8]" 0.14347954962925774;
	setAttr -s 5 ".wl[101].w";
	setAttr ".wl[101].w[2]" 0.10993409414890476;
	setAttr ".wl[101].w[3]" 0.38534909461408406;
	setAttr ".wl[101].w[4]" 0.38534909461408395;
	setAttr ".wl[101].w[7]" 0.05968385831146366;
	setAttr ".wl[101].w[8]" 0.05968385831146366;
	setAttr -s 5 ".wl[102].w";
	setAttr ".wl[102].w[2]" 0.026512447649057112;
	setAttr ".wl[102].w[3]" 0.33680020582932196;
	setAttr ".wl[102].w[4]" 0.33680020582932174;
	setAttr ".wl[102].w[7]" 0.14994357034614963;
	setAttr ".wl[102].w[8]" 0.14994357034614963;
	setAttr -s 5 ".wl[103].w";
	setAttr ".wl[103].w[2]" 0.10899487788966805;
	setAttr ".wl[103].w[3]" 0.3866775579749277;
	setAttr ".wl[103].w[4]" 0.38667755797492748;
	setAttr ".wl[103].w[7]" 0.058825003080238469;
	setAttr ".wl[103].w[8]" 0.058825003080238469;
	setAttr -s 5 ".wl[104].w";
	setAttr ".wl[104].w[2]" 0.57719109163239823;
	setAttr ".wl[104].w[3]" 0.3706288057497612;
	setAttr ".wl[104].w[4]" 0.0078983831878603698;
	setAttr ".wl[104].w[6]" 0.023214409153033546;
	setAttr ".wl[104].w[7]" 0.021067310276946586;
	setAttr -s 5 ".wl[105].w";
	setAttr ".wl[105].w[2]" 0.57946697443728423;
	setAttr ".wl[105].w[3]" 0.3918365657447328;
	setAttr ".wl[105].w[4]" 0.010069860486890195;
	setAttr ".wl[105].w[6]" 0.0095683056207480025;
	setAttr ".wl[105].w[7]" 0.009058293710344844;
	setAttr -s 5 ".wl[106].w";
	setAttr ".wl[106].w[2]" 0.48649359138489856;
	setAttr ".wl[106].w[3]" 0.48649359138489856;
	setAttr ".wl[106].w[4]" 0.012209837662879057;
	setAttr ".wl[106].w[6]" 0.0074014897836619025;
	setAttr ".wl[106].w[7]" 0.0074014897836619025;
	setAttr -s 5 ".wl[107].w";
	setAttr ".wl[107].w[2]" 0.47594315562896872;
	setAttr ".wl[107].w[3]" 0.47594315562896861;
	setAttr ".wl[107].w[4]" 0.0072181489779480062;
	setAttr ".wl[107].w[6]" 0.020447769882057362;
	setAttr ".wl[107].w[7]" 0.020447769882057362;
	setAttr -s 5 ".wl[108].w";
	setAttr ".wl[108].w[11]" 0.037426165703199461;
	setAttr ".wl[108].w[12]" 0.037426165703199461;
	setAttr ".wl[108].w[13]" 0.017286930633804948;
	setAttr ".wl[108].w[60]" 0.51882440633832494;
	setAttr ".wl[108].w[61]" 0.38903633162147128;
	setAttr -s 5 ".wl[109].w";
	setAttr ".wl[109].w[11]" 0.026042972538434243;
	setAttr ".wl[109].w[12]" 0.026042972538434243;
	setAttr ".wl[109].w[13]" 0.012221131906855977;
	setAttr ".wl[109].w[60]" 0.52847387147962521;
	setAttr ".wl[109].w[61]" 0.40721905153665033;
	setAttr -s 5 ".wl[110].w";
	setAttr ".wl[110].w[11]" 0.11801325667623247;
	setAttr ".wl[110].w[12]" 0.12112049998161802;
	setAttr ".wl[110].w[13]" 0.12077512912436816;
	setAttr ".wl[110].w[60]" 0.32004555710889071;
	setAttr ".wl[110].w[61]" 0.32004555710889071;
	setAttr -s 5 ".wl[111].w";
	setAttr ".wl[111].w[11]" 0.1043701496246576;
	setAttr ".wl[111].w[12]" 0.11123431654268524;
	setAttr ".wl[111].w[13]" 0.11123437783665616;
	setAttr ".wl[111].w[60]" 0.33658057799800051;
	setAttr ".wl[111].w[61]" 0.33658057799800051;
	setAttr -s 5 ".wl[112].w";
	setAttr ".wl[112].w[11]" 0.13455253736875955;
	setAttr ".wl[112].w[12]" 0.15350059339306604;
	setAttr ".wl[112].w[13]" 0.15124090260473552;
	setAttr ".wl[112].w[60]" 0.28035298331671926;
	setAttr ".wl[112].w[61]" 0.28035298331671948;
	setAttr -s 5 ".wl[113].w";
	setAttr ".wl[113].w[11]" 0.10553087018455266;
	setAttr ".wl[113].w[12]" 0.14990601721797714;
	setAttr ".wl[113].w[13]" 0.14990650704741679;
	setAttr ".wl[113].w[60]" 0.29732830277502675;
	setAttr ".wl[113].w[61]" 0.29732830277502675;
	setAttr -s 5 ".wl[114].w";
	setAttr ".wl[114].w[0]" 0.31231545199447819;
	setAttr ".wl[114].w[1]" 0.060200572707204074;
	setAttr ".wl[114].w[5]" 0.13824119485819578;
	setAttr ".wl[114].w[9]" 0.31765109074465686;
	setAttr ".wl[114].w[10]" 0.17159168969546496;
	setAttr -s 5 ".wl[115].w";
	setAttr ".wl[115].w[0]" 0.12597942441466461;
	setAttr ".wl[115].w[9]" 0.27314097247358471;
	setAttr ".wl[115].w[10]" 0.2893345520754802;
	setAttr ".wl[115].w[11]" 0.22206393868941107;
	setAttr ".wl[115].w[36]" 0.08948111234685939;
	setAttr -s 5 ".wl[116].w";
	setAttr ".wl[116].w[0]" 0.27723518806803255;
	setAttr ".wl[116].w[1]" 0.052590371975341943;
	setAttr ".wl[116].w[5]" 0.21952324356287758;
	setAttr ".wl[116].w[9]" 0.28100164234627056;
	setAttr ".wl[116].w[10]" 0.16964955404747734;
	setAttr -s 5 ".wl[117].w";
	setAttr ".wl[117].w[9]" 0.24271771139670062;
	setAttr ".wl[117].w[10]" 0.25480234076690894;
	setAttr ".wl[117].w[11]" 0.20349333688152285;
	setAttr ".wl[117].w[36]" 0.14944126066118121;
	setAttr ".wl[117].w[37]" 0.14954535029368629;
	setAttr -s 5 ".wl[118].w";
	setAttr ".wl[118].w[10]" 0.20562368400536413;
	setAttr ".wl[118].w[11]" 0.26732582223371237;
	setAttr ".wl[118].w[36]" 0.20681465946222707;
	setAttr ".wl[118].w[37]" 0.166586045970294;
	setAttr ".wl[118].w[60]" 0.15364978832840248;
	setAttr -s 5 ".wl[119].w";
	setAttr ".wl[119].w[10]" 0.12015736128687163;
	setAttr ".wl[119].w[11]" 0.19190336822963699;
	setAttr ".wl[119].w[36]" 0.29710677229614008;
	setAttr ".wl[119].w[37]" 0.29709385757218926;
	setAttr ".wl[119].w[60]" 0.093738640615161795;
	setAttr -s 5 ".wl[120].w";
	setAttr ".wl[120].w[10]" 0.099977607007328051;
	setAttr ".wl[120].w[11]" 0.28141341817646776;
	setAttr ".wl[120].w[36]" 0.27781296969947106;
	setAttr ".wl[120].w[37]" 0.17045162417576751;
	setAttr ".wl[120].w[60]" 0.1703443809409656;
	setAttr -s 5 ".wl[121].w";
	setAttr ".wl[121].w[10]" 0.046368357456000084;
	setAttr ".wl[121].w[11]" 0.18358374768356661;
	setAttr ".wl[121].w[36]" 0.35293897862420648;
	setAttr ".wl[121].w[37]" 0.34324918578173608;
	setAttr ".wl[121].w[60]" 0.073859730454490832;
	setAttr -s 5 ".wl[122].w";
	setAttr ".wl[122].w[11]" 0.34418722560394804;
	setAttr ".wl[122].w[12]" 0.045285017695975337;
	setAttr ".wl[122].w[36]" 0.34599424506717441;
	setAttr ".wl[122].w[37]" 0.10038993819525596;
	setAttr ".wl[122].w[60]" 0.16414357343764624;
	setAttr -s 5 ".wl[123].w";
	setAttr ".wl[123].w[11]" 0.2325457534728817;
	setAttr ".wl[123].w[12]" 0.019886626922884208;
	setAttr ".wl[123].w[36]" 0.40039370260214324;
	setAttr ".wl[123].w[37]" 0.28015132547427796;
	setAttr ".wl[123].w[60]" 0.067022591527812786;
	setAttr -s 5 ".wl[124].w";
	setAttr ".wl[124].w[11]" 0.29448330282228508;
	setAttr ".wl[124].w[12]" 0.021421769329560941;
	setAttr ".wl[124].w[36]" 0.29448330282228508;
	setAttr ".wl[124].w[37]" 0.016375905225741682;
	setAttr ".wl[124].w[60]" 0.37323571980012715;
	setAttr -s 5 ".wl[125].w";
	setAttr ".wl[125].w[11]" 0.04279705811446944;
	setAttr ".wl[125].w[36]" 0.47548133046236213;
	setAttr ".wl[125].w[37]" 0.4686015128725135;
	setAttr ".wl[125].w[60]" 0.0093738786820922911;
	setAttr ".wl[125].w[61]" 0.0037462198685625607;
	setAttr -s 5 ".wl[126].w";
	setAttr ".wl[126].w[11]" 0.11668619902859294;
	setAttr ".wl[126].w[36]" 0.11859845947133039;
	setAttr ".wl[126].w[37]" 0.11769690297971033;
	setAttr ".wl[126].w[60]" 0.32350921926018317;
	setAttr ".wl[126].w[61]" 0.32350921926018317;
	setAttr -s 5 ".wl[127].w";
	setAttr ".wl[127].w[11]" 0.10211290611726113;
	setAttr ".wl[127].w[36]" 0.10685828887929759;
	setAttr ".wl[127].w[37]" 0.10669345127460383;
	setAttr ".wl[127].w[60]" 0.34216767686441873;
	setAttr ".wl[127].w[61]" 0.34216767686441873;
	setAttr -s 5 ".wl[128].w";
	setAttr ".wl[128].w[11]" 0.075479505705364297;
	setAttr ".wl[128].w[36]" 0.4721678811741139;
	setAttr ".wl[128].w[37]" 0.42403728491207199;
	setAttr ".wl[128].w[60]" 0.01970935879337361;
	setAttr ".wl[128].w[61]" 0.0086059694150762648;
	setAttr -s 5 ".wl[129].w";
	setAttr ".wl[129].w[11]" 0.14740216599977893;
	setAttr ".wl[129].w[12]" 0.015890761595704156;
	setAttr ".wl[129].w[36]" 0.14740216599977893;
	setAttr ".wl[129].w[60]" 0.65995686091563721;
	setAttr ".wl[129].w[61]" 0.029348045489100732;
	setAttr -s 5 ".wl[130].w";
	setAttr ".wl[130].w[11]" 0.14677289113034511;
	setAttr ".wl[130].w[36]" 0.14677289113034511;
	setAttr ".wl[130].w[37]" 0.064906436999819586;
	setAttr ".wl[130].w[60]" 0.40322085690651116;
	setAttr ".wl[130].w[61]" 0.23832692383297904;
	setAttr -s 5 ".wl[131].w";
	setAttr ".wl[131].w[11]" 0.22125030139364738;
	setAttr ".wl[131].w[36]" 0.31855548943050743;
	setAttr ".wl[131].w[37]" 0.24832411044796901;
	setAttr ".wl[131].w[60]" 0.13731218783436133;
	setAttr ".wl[131].w[61]" 0.074557910893514795;
	setAttr -s 5 ".wl[132].w";
	setAttr ".wl[132].w[11]" 0.27666146877121905;
	setAttr ".wl[132].w[12]" 0.070167029939543976;
	setAttr ".wl[132].w[36]" 0.29365089160427471;
	setAttr ".wl[132].w[37]" 0.19543358008163339;
	setAttr ".wl[132].w[60]" 0.16408702960332891;
	setAttr -s 5 ".wl[133].w";
	setAttr ".wl[133].w[10]" 0.029005805545553143;
	setAttr ".wl[133].w[11]" 0.15731623709048931;
	setAttr ".wl[133].w[36]" 0.37939446628746409;
	setAttr ".wl[133].w[37]" 0.37766444332096905;
	setAttr ".wl[133].w[60]" 0.056619047755524371;
	setAttr -s 5 ".wl[134].w";
	setAttr ".wl[134].w[10]" 0.20549427124831374;
	setAttr ".wl[134].w[11]" 0.26208380033127165;
	setAttr ".wl[134].w[36]" 0.20681034798814574;
	setAttr ".wl[134].w[37]" 0.16910035419353725;
	setAttr ".wl[134].w[60]" 0.15651122623873159;
	setAttr -s 5 ".wl[135].w";
	setAttr ".wl[135].w[10]" 0.1180830770758247;
	setAttr ".wl[135].w[11]" 0.18779707036983914;
	setAttr ".wl[135].w[36]" 0.30052271679171244;
	setAttr ".wl[135].w[37]" 0.30065982355108134;
	setAttr ".wl[135].w[60]" 0.092937312211542444;
	setAttr -s 5 ".wl[136].w";
	setAttr ".wl[136].w[0]" 0.12561141154571165;
	setAttr ".wl[136].w[9]" 0.27315874957879505;
	setAttr ".wl[136].w[10]" 0.28943225134618017;
	setAttr ".wl[136].w[11]" 0.22187484232357893;
	setAttr ".wl[136].w[36]" 0.089922745205734206;
	setAttr -s 5 ".wl[137].w";
	setAttr ".wl[137].w[9]" 0.25274298872002976;
	setAttr ".wl[137].w[10]" 0.26732713345001985;
	setAttr ".wl[137].w[11]" 0.20651898863791862;
	setAttr ".wl[137].w[36]" 0.1367098805366703;
	setAttr ".wl[137].w[37]" 0.1367010086553615;
	setAttr -s 5 ".wl[138].w";
	setAttr ".wl[138].w[0]" 0.32727992038137432;
	setAttr ".wl[138].w[1]" 0.051174881496559237;
	setAttr ".wl[138].w[5]" 0.12531978901756419;
	setAttr ".wl[138].w[9]" 0.33403226346776654;
	setAttr ".wl[138].w[10]" 0.16219314563673573;
	setAttr -s 5 ".wl[139].w";
	setAttr ".wl[139].w[0]" 0.28546374619948994;
	setAttr ".wl[139].w[5]" 0.23018518822775291;
	setAttr ".wl[139].w[9]" 0.29047865855681076;
	setAttr ".wl[139].w[10]" 0.15459594697084181;
	setAttr ".wl[139].w[11]" 0.039276460045104759;
	setAttr -s 5 ".wl[140].w";
	setAttr ".wl[140].w[0]" 0.02672827471055057;
	setAttr ".wl[140].w[1]" 0.15679928143423452;
	setAttr ".wl[140].w[2]" 0.10814409868807572;
	setAttr ".wl[140].w[5]" 0.4570086642397857;
	setAttr ".wl[140].w[6]" 0.25131968092735341;
	setAttr -s 5 ".wl[141].w";
	setAttr ".wl[141].w[0]" 0.00017566122785545943;
	setAttr ".wl[141].w[1]" 0.0018036937819798041;
	setAttr ".wl[141].w[2]" 0.00098758195342114712;
	setAttr ".wl[141].w[5]" 0.98542693310688811;
	setAttr ".wl[141].w[6]" 0.011606129929855442;
	setAttr -s 5 ".wl[142].w";
	setAttr ".wl[142].w[0]" 0.0019793940655371384;
	setAttr ".wl[142].w[1]" 0.15990210086779116;
	setAttr ".wl[142].w[2]" 0.042200458585342264;
	setAttr ".wl[142].w[5]" 0.71650304063116099;
	setAttr ".wl[142].w[6]" 0.079415005850168585;
	setAttr -s 5 ".wl[143].w";
	setAttr ".wl[143].w[0]" 0.034993203886165399;
	setAttr ".wl[143].w[1]" 0.058014323675063456;
	setAttr ".wl[143].w[2]" 0.047342242795896487;
	setAttr ".wl[143].w[5]" 0.54891681289282823;
	setAttr ".wl[143].w[6]" 0.31073341675004645;
	setAttr -s 5 ".wl[144].w";
	setAttr ".wl[144].w[0]" 0.025741016061570209;
	setAttr ".wl[144].w[1]" 0.039798463849911869;
	setAttr ".wl[144].w[2]" 0.032318050813633731;
	setAttr ".wl[144].w[5]" 0.60526686289696441;
	setAttr ".wl[144].w[6]" 0.29687560637791971;
	setAttr -s 5 ".wl[145].w";
	setAttr ".wl[145].w[2]" 0.080531334361759119;
	setAttr ".wl[145].w[3]" 0.080531334361759119;
	setAttr ".wl[145].w[6]" 0.41222999760268492;
	setAttr ".wl[145].w[7]" 0.41222999760268492;
	setAttr ".wl[145].w[8]" 0.014477336071111997;
	setAttr -s 5 ".wl[146].w";
	setAttr ".wl[146].w[2]" 0.0027806479075131725;
	setAttr ".wl[146].w[3]" 0.0027806479075131725;
	setAttr ".wl[146].w[6]" 0.49156633567942287;
	setAttr ".wl[146].w[7]" 0.49156633567942309;
	setAttr ".wl[146].w[8]" 0.011306032826127552;
	setAttr -s 5 ".wl[147].w";
	setAttr ".wl[147].w[2]" 0.0035576293750992031;
	setAttr ".wl[147].w[3]" 0.0040541829295956287;
	setAttr ".wl[147].w[6]" 0.19410691339694522;
	setAttr ".wl[147].w[7]" 0.68358460902781104;
	setAttr ".wl[147].w[8]" 0.11469666527054886;
	setAttr -s 5 ".wl[148].w";
	setAttr ".wl[148].w[2]" 0.056417618441086101;
	setAttr ".wl[148].w[3]" 0.098965946569792546;
	setAttr ".wl[148].w[6]" 0.17801216931010827;
	setAttr ".wl[148].w[7]" 0.55765615592809692;
	setAttr ".wl[148].w[8]" 0.10894810975091622;
	setAttr -s 5 ".wl[149].w";
	setAttr ".wl[149].w[0]" 0.033535441076831936;
	setAttr ".wl[149].w[1]" 0.050458166774384784;
	setAttr ".wl[149].w[2]" 0.041469093632063067;
	setAttr ".wl[149].w[5]" 0.56299149248271152;
	setAttr ".wl[149].w[6]" 0.31154580603400878;
	setAttr -s 5 ".wl[150].w";
	setAttr ".wl[150].w[0]" 0.0018427671626208748;
	setAttr ".wl[150].w[1]" 0.016307251925524777;
	setAttr ".wl[150].w[2]" 0.0094212286084808909;
	setAttr ".wl[150].w[5]" 0.89219520113740813;
	setAttr ".wl[150].w[6]" 0.080233551165965367;
	setAttr -s 5 ".wl[151].w";
	setAttr ".wl[151].w[0]" 0.0040691938890885125;
	setAttr ".wl[151].w[1]" 0.20764483739838127;
	setAttr ".wl[151].w[2]" 0.069491505876742549;
	setAttr ".wl[151].w[5]" 0.5991333418870517;
	setAttr ".wl[151].w[6]" 0.11966112094873596;
	setAttr -s 5 ".wl[152].w";
	setAttr ".wl[152].w[0]" 0.034659976740659258;
	setAttr ".wl[152].w[1]" 0.16928761735542736;
	setAttr ".wl[152].w[2]" 0.12265582482029595;
	setAttr ".wl[152].w[5]" 0.41674363615885268;
	setAttr ".wl[152].w[6]" 0.2566529449247647;
	setAttr -s 5 ".wl[153].w";
	setAttr ".wl[153].w[0]" 0.05055486280569272;
	setAttr ".wl[153].w[1]" 0.083064665254748593;
	setAttr ".wl[153].w[2]" 0.069117223337585285;
	setAttr ".wl[153].w[5]" 0.4804635963307306;
	setAttr ".wl[153].w[6]" 0.31679965227124279;
	setAttr -s 5 ".wl[154].w";
	setAttr ".wl[154].w[0]" 0.27823936835569979;
	setAttr ".wl[154].w[5]" 0.26404197944362712;
	setAttr ".wl[154].w[9]" 0.28375398775217031;
	setAttr ".wl[154].w[10]" 0.14111118660992561;
	setAttr ".wl[154].w[11]" 0.032853477838577214;
	setAttr -s 5 ".wl[155].w";
	setAttr ".wl[155].w[9]" 0.22305238013566106;
	setAttr ".wl[155].w[10]" 0.23711854833247603;
	setAttr ".wl[155].w[11]" 0.18083106516259725;
	setAttr ".wl[155].w[36]" 0.17523492038228558;
	setAttr ".wl[155].w[37]" 0.1837630859869801;
	setAttr -s 5 ".wl[156].w";
	setAttr ".wl[156].w[0]" 0.27365494191216566;
	setAttr ".wl[156].w[5]" 0.26308093999939225;
	setAttr ".wl[156].w[9]" 0.2785050131857118;
	setAttr ".wl[156].w[10]" 0.14751838782657903;
	setAttr ".wl[156].w[11]" 0.037240717076151196;
	setAttr -s 5 ".wl[157].w";
	setAttr ".wl[157].w[9]" 0.21359527263151978;
	setAttr ".wl[157].w[10]" 0.22596886097996163;
	setAttr ".wl[157].w[11]" 0.17653344618234065;
	setAttr ".wl[157].w[36]" 0.18560772406088435;
	setAttr ".wl[157].w[37]" 0.1982946961452936;
	setAttr -s 5 ".wl[158].w";
	setAttr ".wl[158].w[10]" 0.05279150688454802;
	setAttr ".wl[158].w[11]" 0.10914165458907431;
	setAttr ".wl[158].w[36]" 0.38478032371708293;
	setAttr ".wl[158].w[37]" 0.4139091363860305;
	setAttr ".wl[158].w[60]" 0.039377378423264338;
	setAttr -s 5 ".wl[159].w";
	setAttr ".wl[159].w[10]" 0.048148589118116494;
	setAttr ".wl[159].w[11]" 0.098607921696904619;
	setAttr ".wl[159].w[36]" 0.38196058072211198;
	setAttr ".wl[159].w[37]" 0.43463530050080501;
	setAttr ".wl[159].w[60]" 0.03664760796206195;
	setAttr -s 5 ".wl[160].w";
	setAttr ".wl[160].w[10]" 0.0086408067804256174;
	setAttr ".wl[160].w[11]" 0.041123365816310348;
	setAttr ".wl[160].w[36]" 0.4417018678511821;
	setAttr ".wl[160].w[37]" 0.49752403504221271;
	setAttr ".wl[160].w[60]" 0.011009924509869245;
	setAttr -s 5 ".wl[161].w";
	setAttr ".wl[161].w[10]" 0.0080724069629385387;
	setAttr ".wl[161].w[11]" 0.037579134181764222;
	setAttr ".wl[161].w[36]" 0.43063900132021293;
	setAttr ".wl[161].w[37]" 0.51350551918582599;
	setAttr ".wl[161].w[60]" 0.010203938349258188;
	setAttr -s 5 ".wl[162].w";
	setAttr ".wl[162].w[0]" 0.31837472899957209;
	setAttr ".wl[162].w[1]" 0.090441336571646158;
	setAttr ".wl[162].w[5]" 0.25547427460794608;
	setAttr ".wl[162].w[9]" 0.25327986128211766;
	setAttr ".wl[162].w[10]" 0.082429798538718013;
	setAttr -s 5 ".wl[163].w";
	setAttr ".wl[163].w[0]" 0.37393311824074882;
	setAttr ".wl[163].w[1]" 0.040808213394148043;
	setAttr ".wl[163].w[5]" 0.37393311824074882;
	setAttr ".wl[163].w[9]" 0.15574104923820964;
	setAttr ".wl[163].w[10]" 0.055584500886144583;
	setAttr -s 5 ".wl[164].w";
	setAttr ".wl[164].w[0]" 0.41934563297369476;
	setAttr ".wl[164].w[1]" 0.021979112321655409;
	setAttr ".wl[164].w[5]" 0.41934563297369476;
	setAttr ".wl[164].w[9]" 0.10614074962561781;
	setAttr ".wl[164].w[10]" 0.033188872105337323;
	setAttr -s 5 ".wl[165].w";
	setAttr ".wl[165].w[0]" 0.39876797691386118;
	setAttr ".wl[165].w[1]" 0.0304421635224086;
	setAttr ".wl[165].w[5]" 0.39876797691386107;
	setAttr ".wl[165].w[9]" 0.12723580439173693;
	setAttr ".wl[165].w[10]" 0.044786078258132259;
	setAttr -s 5 ".wl[166].w";
	setAttr ".wl[166].w[0]" 0.30107904450607986;
	setAttr ".wl[166].w[1]" 0.10193181765465195;
	setAttr ".wl[166].w[5]" 0.25396214596724609;
	setAttr ".wl[166].w[9]" 0.24818290193299897;
	setAttr ".wl[166].w[10]" 0.09484408993902313;
	setAttr -s 5 ".wl[167].w";
	setAttr ".wl[167].w[0]" 0.33153594414259319;
	setAttr ".wl[167].w[1]" 0.065278749433141658;
	setAttr ".wl[167].w[5]" 0.33149231167900689;
	setAttr ".wl[167].w[9]" 0.18933602782616049;
	setAttr ".wl[167].w[10]" 0.082356966919097913;
	setAttr -s 5 ".wl[168].w";
	setAttr ".wl[168].w[0]" 0.33940384320429962;
	setAttr ".wl[168].w[1]" 0.11197409650760785;
	setAttr ".wl[168].w[5]" 0.31718930652851685;
	setAttr ".wl[168].w[9]" 0.1770184767866203;
	setAttr ".wl[168].w[10]" 0.054414276972955429;
	setAttr -s 5 ".wl[169].w";
	setAttr ".wl[169].w[0]" 0.41375498234973235;
	setAttr ".wl[169].w[1]" 0.041878648929327453;
	setAttr ".wl[169].w[5]" 0.41375498234973257;
	setAttr ".wl[169].w[9]" 0.096774842945477141;
	setAttr ".wl[169].w[10]" 0.033836543425730441;
	setAttr -s 5 ".wl[170].w";
	setAttr ".wl[170].w[0]" 0.45407990440236334;
	setAttr ".wl[170].w[1]" 0.019979950809714733;
	setAttr ".wl[170].w[5]" 0.45407990440236334;
	setAttr ".wl[170].w[9]" 0.05484478617914585;
	setAttr ".wl[170].w[10]" 0.017015454206412761;
	setAttr -s 5 ".wl[171].w";
	setAttr ".wl[171].w[0]" 0.43137835523793433;
	setAttr ".wl[171].w[1]" 0.031532188834746039;
	setAttr ".wl[171].w[5]" 0.43137835523793433;
	setAttr ".wl[171].w[9]" 0.078452493435704485;
	setAttr ".wl[171].w[10]" 0.027258607253680893;
	setAttr -s 5 ".wl[172].w";
	setAttr ".wl[172].w[0]" 0.31875380666864123;
	setAttr ".wl[172].w[1]" 0.12435216173576076;
	setAttr ".wl[172].w[5]" 0.30428407396515095;
	setAttr ".wl[172].w[9]" 0.18577599918349222;
	setAttr ".wl[172].w[10]" 0.066833958446954986;
	setAttr -s 5 ".wl[173].w";
	setAttr ".wl[173].w[0]" 0.36679905117089312;
	setAttr ".wl[173].w[1]" 0.071187921949723634;
	setAttr ".wl[173].w[5]" 0.36679905117089334;
	setAttr ".wl[173].w[9]" 0.13762771404850929;
	setAttr ".wl[173].w[10]" 0.057586261659980494;
	setAttr -s 5 ".wl[174].w";
	setAttr ".wl[174].w[0]" 0.2249248373402509;
	setAttr ".wl[174].w[1]" 0.1900710861832228;
	setAttr ".wl[174].w[5]" 0.47238387554026068;
	setAttr ".wl[174].w[6]" 0.051436513180655369;
	setAttr ".wl[174].w[9]" 0.061183687755610172;
	setAttr -s 5 ".wl[175].w";
	setAttr ".wl[175].w[0]" 0.26309946671447726;
	setAttr ".wl[175].w[1]" 0.091770032559779821;
	setAttr ".wl[175].w[5]" 0.52537466505553776;
	setAttr ".wl[175].w[6]" 0.063902058738262157;
	setAttr ".wl[175].w[9]" 0.055853776931942975;
	setAttr -s 5 ".wl[176].w";
	setAttr ".wl[176].w[0]" 0.23255682006584416;
	setAttr ".wl[176].w[1]" 0.051590430952637899;
	setAttr ".wl[176].w[5]" 0.6433536408374616;
	setAttr ".wl[176].w[6]" 0.040247220337707057;
	setAttr ".wl[176].w[9]" 0.032251887806349341;
	setAttr -s 5 ".wl[177].w";
	setAttr ".wl[177].w[0]" 0.20367543732398924;
	setAttr ".wl[177].w[1]" 0.038606442283042837;
	setAttr ".wl[177].w[5]" 0.7048490347712254;
	setAttr ".wl[177].w[6]" 0.029490201958051219;
	setAttr ".wl[177].w[9]" 0.023378883663691306;
	setAttr -s 5 ".wl[178].w";
	setAttr ".wl[178].w[0]" 0.23761217244555743;
	setAttr ".wl[178].w[1]" 0.06184441276908486;
	setAttr ".wl[178].w[5]" 0.62083556033544307;
	setAttr ".wl[178].w[6]" 0.0433004213855629;
	setAttr ".wl[178].w[9]" 0.036407433064351707;
	setAttr -s 5 ".wl[179].w";
	setAttr ".wl[179].w[0]" 0.21106222502124661;
	setAttr ".wl[179].w[1]" 0.17839242645911108;
	setAttr ".wl[179].w[5]" 0.52051958046895763;
	setAttr ".wl[179].w[6]" 0.040645780903890427;
	setAttr ".wl[179].w[9]" 0.049379987146794195;
	setAttr -s 5 ".wl[180].w";
	setAttr ".wl[180].w[46]" 0.19317212232622899;
	setAttr ".wl[180].w[47]" 0.19317212232622899;
	setAttr ".wl[180].w[50]" 0.22957977062768908;
	setAttr ".wl[180].w[51]" 0.22957977062768886;
	setAttr ".wl[180].w[54]" 0.15449621409216413;
	setAttr -s 5 ".wl[181].w";
	setAttr ".wl[181].w[50]" 0.21213196167535195;
	setAttr ".wl[181].w[51]" 0.21213196167535195;
	setAttr ".wl[181].w[54]" 0.21835226513767672;
	setAttr ".wl[181].w[55]" 0.21835226513767694;
	setAttr ".wl[181].w[58]" 0.13903154637394236;
	setAttr -s 5 ".wl[182].w";
	setAttr ".wl[182].w[46]" 0.19560684770949621;
	setAttr ".wl[182].w[47]" 0.19560684770949621;
	setAttr ".wl[182].w[50]" 0.22694938499568229;
	setAttr ".wl[182].w[51]" 0.22694938499568251;
	setAttr ".wl[182].w[54]" 0.15488753458964269;
	setAttr -s 5 ".wl[183].w";
	setAttr ".wl[183].w[50]" 0.21082085496811379;
	setAttr ".wl[183].w[51]" 0.21082085496811379;
	setAttr ".wl[183].w[54]" 0.21749880848467362;
	setAttr ".wl[183].w[55]" 0.21749880848467362;
	setAttr ".wl[183].w[58]" 0.14336067309442518;
	setAttr -s 5 ".wl[184].w[36:40]"  0.0028596664293536879 0.49672141850948287 
		0.49577882060114142 0.0029111866578111004 0.0017289078022108835;
	setAttr -s 5 ".wl[185].w[36:40]"  0.0040454637793714788 0.49584257489008682 
		0.49413884937268798 0.003993250071550874 0.0019798618863027286;
	setAttr -s 5 ".wl[186].w[36:40]"  0.0043303613536661168 0.49394855658516768 
		0.49398682257477394 0.0047675316874140469 0.0029667277989781815;
	setAttr -s 5 ".wl[187].w[36:40]"  0.0055737840357088127 0.49262178639810267 
		0.49262360518189485 0.0060607040984522985 0.0031201202858414565;
	setAttr -s 5 ".wl[188].w[36:40]"  0.00035147935849370448 0.50051221136832491 
		0.49857248983248514 0.00036250783969631181 0.00020131160100005313;
	setAttr -s 5 ".wl[189].w[36:40]"  0.0005998274874578132 0.50050761685253831 
		0.49797961748174518 0.00060784356446511533 0.00030509461379364992;
	setAttr -s 5 ".wl[190].w[36:40]"  0.00024385979222070304 0.49971938370954144 
		0.49962474905314935 0.00026326898021910065 0.00014873846486947688;
	setAttr -s 5 ".wl[191].w[36:40]"  0.00044945533256905289 0.49949647555145371 
		0.4993274639465245 0.00048180770044371448 0.00024479746900911702;
	setAttr -s 5 ".wl[192].w";
	setAttr ".wl[192].w[38]" 0.48301596306511929;
	setAttr ".wl[192].w[39]" 0.49236273572319589;
	setAttr ".wl[192].w[40]" 0.016272349418068544;
	setAttr ".wl[192].w[41]" 0.0044523131654871763;
	setAttr ".wl[192].w[48]" 0.0038966386281290011;
	setAttr -s 5 ".wl[193].w";
	setAttr ".wl[193].w[38]" 0.48239131414561026;
	setAttr ".wl[193].w[39]" 0.48740183105316454;
	setAttr ".wl[193].w[40]" 0.01231728286977158;
	setAttr ".wl[193].w[52]" 0.0089879080190045819;
	setAttr ".wl[193].w[56]" 0.0089016639124490041;
	setAttr -s 5 ".wl[194].w";
	setAttr ".wl[194].w[38]" 0.22020083321062953;
	setAttr ".wl[194].w[39]" 0.77898601506120202;
	setAttr ".wl[194].w[40]" 0.00060314776432520128;
	setAttr ".wl[194].w[41]" 0.00012838178950049274;
	setAttr ".wl[194].w[48]" 8.1622174342761892e-005;
	setAttr -s 5 ".wl[195].w";
	setAttr ".wl[195].w[38]" 0.46212781025853855;
	setAttr ".wl[195].w[39]" 0.52802660680022806;
	setAttr ".wl[195].w[40]" 0.0043277616856362356;
	setAttr ".wl[195].w[52]" 0.002634897317861679;
	setAttr ".wl[195].w[56]" 0.002882923937735391;
	setAttr -s 5 ".wl[196].w";
	setAttr ".wl[196].w[44]" 0.11766785477112258;
	setAttr ".wl[196].w[45]" 0.35731373524415694;
	setAttr ".wl[196].w[46]" 0.34518032712833968;
	setAttr ".wl[196].w[47]" 0.11685689169654807;
	setAttr ".wl[196].w[49]" 0.06298119115983275;
	setAttr -s 5 ".wl[197].w";
	setAttr ".wl[197].w[53]" 0.10732494678901509;
	setAttr ".wl[197].w[56]" 0.13111202484247164;
	setAttr ".wl[197].w[57]" 0.24002895767967869;
	setAttr ".wl[197].w[58]" 0.26522590524595835;
	setAttr ".wl[197].w[59]" 0.25630816544287632;
	setAttr -s 5 ".wl[198].w";
	setAttr ".wl[198].w[39]" 0.20751801194875438;
	setAttr ".wl[198].w[40]" 0.592190067200555;
	setAttr ".wl[198].w[41]" 0.18404456112505649;
	setAttr ".wl[198].w[42]" 0.0091707947621146209;
	setAttr ".wl[198].w[44]" 0.0070765649635194661;
	setAttr -s 5 ".wl[199].w";
	setAttr ".wl[199].w[39]" 0.32625992809833088;
	setAttr ".wl[199].w[40]" 0.33456050457044112;
	setAttr ".wl[199].w[41]" 0.18521602320905789;
	setAttr ".wl[199].w[42]" 0.056746216250861188;
	setAttr ".wl[199].w[44]" 0.097217327871308809;
	setAttr -s 5 ".wl[200].w[41:45]"  0.11326589664332605 0.33950493405908161 
		0.33950493405908183 0.102148433352894 0.10557580188561635;
	setAttr -s 5 ".wl[201].w[42:46]"  0.25373148751334362 0.25373148751334362 
		0.1698344372300799 0.17377887059411587 0.14892371714911698;
	setAttr -s 5 ".wl[202].w";
	setAttr ".wl[202].w[53]" 0.066630805825035347;
	setAttr ".wl[202].w[56]" 0.11128371574907062;
	setAttr ".wl[202].w[57]" 0.24425213307779625;
	setAttr ".wl[202].w[58]" 0.29187918176692351;
	setAttr ".wl[202].w[59]" 0.2859541635811742;
	setAttr -s 5 ".wl[203].w";
	setAttr ".wl[203].w[42]" 0.098268272148896191;
	setAttr ".wl[203].w[43]" 0.098268272148896191;
	setAttr ".wl[203].w[45]" 0.34396993870427334;
	setAttr ".wl[203].w[46]" 0.33992095580772047;
	setAttr ".wl[203].w[47]" 0.11957256119021385;
	setAttr -s 5 ".wl[204].w";
	setAttr ".wl[204].w[45]" 0.16927732024911077;
	setAttr ".wl[204].w[46]" 0.28445188558205564;
	setAttr ".wl[204].w[47]" 0.28445188558205564;
	setAttr ".wl[204].w[50]" 0.13090945429338893;
	setAttr ".wl[204].w[51]" 0.13090945429338893;
	setAttr -s 5 ".wl[205].w";
	setAttr ".wl[205].w[45]" 0.1690167024482413;
	setAttr ".wl[205].w[46]" 0.28170191327483979;
	setAttr ".wl[205].w[47]" 0.28170191327483979;
	setAttr ".wl[205].w[50]" 0.13378973550103954;
	setAttr ".wl[205].w[51]" 0.13378973550103954;
	setAttr -s 5 ".wl[206].w";
	setAttr ".wl[206].w[45]" 0.19945508022750899;
	setAttr ".wl[206].w[46]" 0.26689143269179844;
	setAttr ".wl[206].w[47]" 0.26689143269179821;
	setAttr ".wl[206].w[50]" 0.13338102719444725;
	setAttr ".wl[206].w[51]" 0.13338102719444725;
	setAttr -s 5 ".wl[207].w";
	setAttr ".wl[207].w[42]" 0.14080032235128637;
	setAttr ".wl[207].w[43]" 0.14080032235128637;
	setAttr ".wl[207].w[45]" 0.19457004499747552;
	setAttr ".wl[207].w[46]" 0.26191465514997586;
	setAttr ".wl[207].w[47]" 0.26191465514997586;
	setAttr -s 5 ".wl[208].w";
	setAttr ".wl[208].w[1]" 0.0047350710693653793;
	setAttr ".wl[208].w[2]" 0.0060332401748867176;
	setAttr ".wl[208].w[5]" 0.13326604750396295;
	setAttr ".wl[208].w[6]" 0.85534881266763307;
	setAttr ".wl[208].w[7]" 0.00061682858415191839;
	setAttr -s 5 ".wl[209].w";
	setAttr ".wl[209].w[1]" 0.087421436353070106;
	setAttr ".wl[209].w[2]" 0.15311474503568728;
	setAttr ".wl[209].w[5]" 0.21058468455917387;
	setAttr ".wl[209].w[6]" 0.54658661799676489;
	setAttr ".wl[209].w[7]" 0.0022925160553038709;
	setAttr -s 5 ".wl[210].w";
	setAttr ".wl[210].w[1]" 0.009190860625467227;
	setAttr ".wl[210].w[2]" 0.012135027987004962;
	setAttr ".wl[210].w[5]" 0.16488889255819031;
	setAttr ".wl[210].w[6]" 0.81230270538113281;
	setAttr ".wl[210].w[7]" 0.0014825134482046999;
	setAttr -s 5 ".wl[211].w";
	setAttr ".wl[211].w[1]" 0.09491046887224272;
	setAttr ".wl[211].w[2]" 0.17325997139591709;
	setAttr ".wl[211].w[5]" 0.20244657404088431;
	setAttr ".wl[211].w[6]" 0.52587089610845961;
	setAttr ".wl[211].w[7]" 0.0035120895824963024;
	setAttr -s 5 ".wl[212].w";
	setAttr ".wl[212].w[2]" 0.010050894143670391;
	setAttr ".wl[212].w[3]" 0.0059054099561820297;
	setAttr ".wl[212].w[6]" 0.89535271546167838;
	setAttr ".wl[212].w[7]" 0.059629492880164225;
	setAttr ".wl[212].w[8]" 0.0290614875583051;
	setAttr -s 5 ".wl[213].w";
	setAttr ".wl[213].w[2]" 0.00051585135439155734;
	setAttr ".wl[213].w[3]" 0.00026163166011484415;
	setAttr ".wl[213].w[6]" 0.99592520809058738;
	setAttr ".wl[213].w[7]" 0.0028302870808138729;
	setAttr ".wl[213].w[8]" 0.00046702181409226325;
	setAttr -s 5 ".wl[214].w";
	setAttr ".wl[214].w[2]" 0.1352703745551212;
	setAttr ".wl[214].w[3]" 0.022247712593647703;
	setAttr ".wl[214].w[6]" 0.79622535191752553;
	setAttr ".wl[214].w[7]" 0.0383548429842595;
	setAttr ".wl[214].w[8]" 0.0079017179494460174;
	setAttr -s 5 ".wl[215].w";
	setAttr ".wl[215].w[2]" 0.19108999154260556;
	setAttr ".wl[215].w[3]" 0.053864714022525267;
	setAttr ".wl[215].w[6]" 0.61310011949760745;
	setAttr ".wl[215].w[7]" 0.091917581290610853;
	setAttr ".wl[215].w[8]" 0.050027593646650895;
	setAttr -s 5 ".wl[216].w";
	setAttr ".wl[216].w[2]" 0.038920065304457893;
	setAttr ".wl[216].w[3]" 0.034787918678026393;
	setAttr ".wl[216].w[6]" 0.5470705410658202;
	setAttr ".wl[216].w[7]" 0.36972354303082966;
	setAttr ".wl[216].w[8]" 0.0094979319208658066;
	setAttr -s 5 ".wl[217].w";
	setAttr ".wl[217].w[2]" 0.0095388845404056587;
	setAttr ".wl[217].w[3]" 0.0089544726772259192;
	setAttr ".wl[217].w[6]" 0.59507799083702428;
	setAttr ".wl[217].w[7]" 0.37862357848544742;
	setAttr ".wl[217].w[8]" 0.0078050734598966625;
	setAttr -s 5 ".wl[218].w";
	setAttr ".wl[218].w[2]" 0.0061197490130003957;
	setAttr ".wl[218].w[3]" 0.0061197490130003957;
	setAttr ".wl[218].w[6]" 0.48979405823355743;
	setAttr ".wl[218].w[7]" 0.48979405823355765;
	setAttr ".wl[218].w[8]" 0.0081723855068839835;
	setAttr -s 5 ".wl[219].w";
	setAttr ".wl[219].w[2]" 0.038864239969351268;
	setAttr ".wl[219].w[3]" 0.038864239969351268;
	setAttr ".wl[219].w[6]" 0.45639348091731063;
	setAttr ".wl[219].w[7]" 0.45639348091731063;
	setAttr ".wl[219].w[8]" 0.009484558226676286;
	setAttr -s 5 ".wl[220].w";
	setAttr ".wl[220].w[3]" 0.17424217616250903;
	setAttr ".wl[220].w[4]" 0.17424217616250903;
	setAttr ".wl[220].w[6]" 0.029285398934730516;
	setAttr ".wl[220].w[7]" 0.31111512437012573;
	setAttr ".wl[220].w[8]" 0.31111512437012573;
	setAttr -s 5 ".wl[221].w";
	setAttr ".wl[221].w[3]" 0.057225301560923265;
	setAttr ".wl[221].w[4]" 0.057225301560923265;
	setAttr ".wl[221].w[6]" 0.10114084027942158;
	setAttr ".wl[221].w[7]" 0.39220427829936594;
	setAttr ".wl[221].w[8]" 0.39220427829936594;
	setAttr -s 5 ".wl[222].w";
	setAttr ".wl[222].w[3]" 0.18428355788073722;
	setAttr ".wl[222].w[4]" 0.18428355788073722;
	setAttr ".wl[222].w[6]" 0.026180213251933392;
	setAttr ".wl[222].w[7]" 0.30262633549329609;
	setAttr ".wl[222].w[8]" 0.30262633549329609;
	setAttr -s 5 ".wl[223].w";
	setAttr ".wl[223].w[3]" 0.056191715416127962;
	setAttr ".wl[223].w[4]" 0.056191715416127962;
	setAttr ".wl[223].w[6]" 0.10003168819569262;
	setAttr ".wl[223].w[7]" 0.3937924404860258;
	setAttr ".wl[223].w[8]" 0.3937924404860258;
	setAttr -s 5 ".wl[224].w";
	setAttr ".wl[224].w[11]" 0.019643754289971872;
	setAttr ".wl[224].w[12]" 0.0080409582219490711;
	setAttr ".wl[224].w[36]" 0.019643754289971872;
	setAttr ".wl[224].w[60]" 0.57019172616072644;
	setAttr ".wl[224].w[61]" 0.3824798070373806;
	setAttr -s 5 ".wl[225].w";
	setAttr ".wl[225].w[11]" 0.011125353913620314;
	setAttr ".wl[225].w[12]" 0.0044670841993235018;
	setAttr ".wl[225].w[36]" 0.011125353913620314;
	setAttr ".wl[225].w[60]" 0.58250961964468007;
	setAttr ".wl[225].w[61]" 0.39077258832875589;
	setAttr -s 5 ".wl[226].w";
	setAttr ".wl[226].w[11]" 0.12979388781689227;
	setAttr ".wl[226].w[36]" 0.14105217970211298;
	setAttr ".wl[226].w[37]" 0.13559592129462059;
	setAttr ".wl[226].w[60]" 0.29677900559318715;
	setAttr ".wl[226].w[61]" 0.29677900559318704;
	setAttr -s 5 ".wl[227].w";
	setAttr ".wl[227].w[11]" 0.096179541128286958;
	setAttr ".wl[227].w[36]" 0.12415373271062284;
	setAttr ".wl[227].w[37]" 0.12302268452717947;
	setAttr ".wl[227].w[60]" 0.32832202081695538;
	setAttr ".wl[227].w[61]" 0.32832202081695538;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -8.2493458593547491 0 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.73501678214576882 -7.732111836026216 0 1;
	setAttr ".pm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.73501678214576882 -4.0299171979338082 0 1;
	setAttr ".pm[3]" -type "matrix" 1 0 0 0 0 0.9351353701487799 0.35429061446319005 0
		 0 -0.35429061446319005 0.9351353701487799 0 -0.73501678214576882 -0.62874236535298644 -0.23820884769283021 1;
	setAttr ".pm[4]" -type "matrix" 1 0 0 0 0 0.9351353701487799 0.35429061446319005 0
		 0 -0.35429061446319005 0.9351353701487799 0 -0.73501747731814426 -0.11214216129258028 -1.3068885798479444 1;
	setAttr ".pm[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.73501678214576882 -7.732111836026216 0 1;
	setAttr ".pm[6]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.73501700619800192 -4.0299171979338082 -3.6216608165573599e-005 1;
	setAttr ".pm[7]" -type "matrix" 1 0 0 0 0 0.9351353701487799 0.35429061446319005 0
		 0 -0.35429061446319005 0.9351353701487799 0 0.73501693038651417 -0.62872953445719626 -0.23824271524101945 1;
	setAttr ".pm[8]" -type "matrix" 0.99999999999999978 -1.6543612251060557e-024 2.5521621482894175e-008 0
		 -9.0420709572715275e-009 0.93513537014877979 0.35429061446318993 0 -2.3866170952203296e-008 -0.35429061446319005 0.93513537014877957 0
		 0.73510650057393467 -0.11212933146920429 -1.3069247521457787 1;
	setAttr ".pm[9]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -8.8268000695095843 0 1;
	setAttr ".pm[10]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -9.8717172116945182 0 1;
	setAttr ".pm[11]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -10.916634353879452 0 1;
	setAttr ".pm[12]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.57745424950421231 -12.092596215734096 0 1;
	setAttr ".pm[13]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.4607323829485952 -12.092607550335311 0 1;
	setAttr ".pm[14]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.7132546870490746 -12.092607550335311 0 1;
	setAttr ".pm[15]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -5.9155947081820068 -12.092607550335311 0 1;
	setAttr ".pm[16]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.2743387013208887 -12.026736317414713 -0.35327278913631593 1;
	setAttr ".pm[17]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.4816109354988436 -11.982511623758789 -0.41163314312003579 1;
	setAttr ".pm[18]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.6914033836087565 -11.982510534845138 -0.41163391377392622 1;
	setAttr ".pm[19]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.9113924958883493 -11.982510774076172 -0.41163323642013772 1;
	setAttr ".pm[20]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.6433500794465683 -12.109083902825436 -0.28639001721928131 1;
	setAttr ".pm[21]" -type "matrix" 0.999999999943468 0 1.0633153788466507e-005 0 0 1 0 0
		 -1.0633153788466507e-005 0 0.999999999943468 0 -6.9916965364501102 -12.109082079719995 -0.29860731719956374 1;
	setAttr ".pm[22]" -type "matrix" 0.9999999674375798 0 -0.00025519568815807615 0 0 1 0 0
		 0.00025519568815807615 0 0.9999999674375798 0 -7.2105771067958155 -12.109080941310278 -0.30431988867863091 1;
	setAttr ".pm[23]" -type "matrix" 0.99999569362300178 0 0.0029347462329569213 0 0 1 0 0
		 -0.0029347462329569213 0 0.99999569362300178 0 -7.3709949692524503 -12.109080099876975 -0.33342103551430802 1;
	setAttr ".pm[24]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.6423521263803167 -12.133927740056965 -0.10762792696167164 1;
	setAttr ".pm[25]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -7.0435385774743962 -12.133927740056965 -0.10765287752069053 1;
	setAttr ".pm[26]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -7.271652509262795 -12.133927740056965 -0.10766704849448809 1;
	setAttr ".pm[27]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -7.437104042807638 -12.133927740056965 -0.10767724435599645 1;
	setAttr ".pm[28]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.6492717131593295 -12.123948432126783 0.065430421617694814 1;
	setAttr ".pm[29]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -7.0236071333094383 -12.123948432126783 0.065430414275777005 1;
	setAttr ".pm[30]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -7.213715441919109 -12.123948432126783 0.065430423927511652 1;
	setAttr ".pm[31]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -7.3723790177222792 -12.123948432126783 0.065430491324667342 1;
	setAttr ".pm[32]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.6483242675380358 -12.066784870472153 0.2054381179286508 1;
	setAttr ".pm[33]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.8994425495720391 -12.066788219706568 0.2054381179286508 1;
	setAttr ".pm[34]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -7.0623260064802498 -12.066790389284529 0.20543812972521538 1;
	setAttr ".pm[35]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -7.1998108131014238 -12.066792220639313 0.20543806447288976 1;
	setAttr ".pm[36]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.57745417080545269 -12.092596215734096 0 1;
	setAttr ".pm[37]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.4607343495926477 -12.092631951900357 0 1;
	setAttr ".pm[38]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.7132675882010657 -12.092631951900357 0 1;
	setAttr ".pm[39]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.9155944714257789 -12.092631844658873 0 1;
	setAttr ".pm[40]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.2743074420746243 -12.026760974709491 -0.35330420025303799 1;
	setAttr ".pm[41]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.4815745261859581 -11.982536322300293 -0.4116828946774333 1;
	setAttr ".pm[42]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.6912390228169185 -11.982538533124986 -0.41900998965515179 1;
	setAttr ".pm[43]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.9110939693853224 -11.982540042755279 -0.42669320905860531 1;
	setAttr ".pm[44]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.643324759729321 -12.109108568369553 -0.28645393975047634 1;
	setAttr ".pm[45]" -type "matrix" 0.99999999994346456 0 1.0633497627446646e-005 0
		 0 1 0 0 -1.0633497627446646e-005 0 0.99999999994346456 0 6.9916769465096911 -12.109108543621515 -0.27422403516369387 1;
	setAttr ".pm[46]" -type "matrix" 0.99999996743547392 0 -0.00025520394029333025 0
		 0 1 0 0 0.00025520394029333025 0 0.99999996743547392 0 7.2104050228673344 -12.10910851887342 -0.26850356743372372 1;
	setAttr ".pm[47]" -type "matrix" 0.99999569334449101 0 0.0029348411321067419 0 0 1 0 0
		 -0.0029348411321067419 0 0.99999569334449101 0 7.3726500007545175 -12.109108510624106 -0.23939341860087013 1;
	setAttr ".pm[48]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.642342540640426 -12.133952248863512 -0.10769178069332215 1;
	setAttr ".pm[49]" -type "matrix" 0.99999999994346456 0 1.0633497627446646e-005 0
		 0 1 0 0 -1.0633497627446646e-005 0 0.99999999994346456 0 7.0432860388747844 -12.133952215866127 -0.093626098307602254 1;
	setAttr ".pm[50]" -type "matrix" 0.99999996743547392 0 -0.00025520394029333025 0
		 0 1 0 0 0.00025520394029333025 0 0.99999996743547392 0 7.2712381416513212 -12.133952199367377 -0.087601506491079673 1;
	setAttr ".pm[51]" -type "matrix" 0.99999569334449101 0 0.0029348411321067419 0 0 1 0 0
		 -0.0029348411321067419 0 0.99999569334449101 0 7.4368138853994328 -12.133952182868718 -0.05815035900588738 1;
	setAttr ".pm[52]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.6492774687279343 -12.123972784195768 0.065365899111575518 1;
	setAttr ".pm[53]" -type "matrix" 0.99999999994346456 0 1.0633497627446646e-005 0
		 0 1 0 0 -1.0633497627446646e-005 0 0.99999999994346456 0 7.0233844369981124 -12.123972751198382 0.078494980035418008 1;
	setAttr ".pm[54]" -type "matrix" 0.99999996743547392 0 -0.00025520394029333025 0
		 0 1 0 0 0.00025520394029333025 0 0.99999996743547392 0 7.2133994528345964 -12.123972734699631 0.083209159462728166 1;
	setAttr ".pm[55]" -type "matrix" 0.99999569334449101 0 0.0029348411321067419 0 0 1 0 0
		 -0.0029348411321067419 0 0.99999569334449101 0 7.3716474915402763 -12.123972726450315 0.11221830158371811 1;
	setAttr ".pm[56]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.6483422956584786 -12.066809098800935 0.20537358568830347 1;
	setAttr ".pm[57]" -type "matrix" 0.99999999994346456 0 1.0633497627446646e-005 0
		 0 1 0 0 -1.0633497627446646e-005 0 0.99999999994346456 0 6.8996103595954876 -12.066803654232672 0.21421496800421258 1;
	setAttr ".pm[58]" -type "matrix" 0.99999996743547392 0 -0.00025520394029333025 0
		 0 1 0 0 0.00025520394029333025 0 0.99999996743547392 0 7.0626505984626649 -12.066800123512595 0.21802641049095073 1;
	setAttr ".pm[59]" -type "matrix" 0.99999569334449101 0 0.0029348411321067419 0 0 1 0 0
		 -0.0029348411321067419 0 0.99999569334449101 0 7.199472526588008 -12.06679713724942 0.24575958931948941 1;
	setAttr ".pm[60]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -11.961551496064386 0 1;
	setAttr ".pm[61]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -13.611420667935336 0 1;
	setAttr ".gm" -type "matrix" 0.8599436089586926 0 0 0 0 0.63280201067660935 0 0 0 0 1 0
		 0.1288918587118536 11.197534005687103 0.13295504143428039 1;
	setAttr -s 62 ".ma";
	setAttr -s 62 ".dpf[0:61]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4;
	setAttr -s 62 ".lw";
	setAttr -s 62 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 0;
	setAttr ".ucm" yes;
	setAttr -s 62 ".ifcl";
	setAttr -s 62 ".ifcl";
createNode tweak -n "tweak1";
	setAttr -s 39 ".vl[0].vt";
	setAttr ".vl[0].vt[10]" -type "float3" -0.40557203 0 0 ;
	setAttr ".vl[0].vt[12]" -type "float3" -0.41456008 0 0 ;
	setAttr ".vl[0].vt[38]" -type "float3" 0.17414731 -1.7763568e-015 0 ;
	setAttr ".vl[0].vt[40]" -type "float3" 0.17414743 -9.5367432e-007 -9.5367432e-007 ;
	setAttr ".vl[0].vt[44]" -type "float3" 0.17414716 -3.3378601e-006 -8.9406967e-008 ;
	setAttr ".vl[0].vt[46]" -type "float3" 0.17414731 -1.7763568e-015 0 ;
	setAttr ".vl[0].vt[88]" -type "float3" 0.17414737 -4.7683716e-007 0 ;
	setAttr ".vl[0].vt[91]" -type "float3" 0.17414749 -4.7683716e-007 2.9802322e-008 ;
	setAttr ".vl[0].vt[94]" -type "float3" 0.17414755 1.3113022e-006 1.1920929e-007 ;
	setAttr ".vl[0].vt[95]" -type "float3" 0.17414743 4.7683716e-007 3.8743019e-007 ;
	setAttr ".vl[0].vt[96]" -type "float3" 0.17414722 1.4305115e-006 -3.5762787e-007 ;
	setAttr ".vl[0].vt[99]" -type "float3" 0.17414746 4.7683716e-007 5.9604645e-008 ;
	setAttr ".vl[0].vt[100]" -type "float3" 0.17414722 -2.3841858e-007 5.9604645e-007 ;
	setAttr ".vl[0].vt[102]" -type "float3" 0.17414767 1.9073486e-006 -9.5367432e-007 ;
	setAttr ".vl[0].vt[104]" -type "float3" 0.1741474 -1.1920929e-006 -8.3446503e-007 ;
	setAttr ".vl[0].vt[107]" -type "float3" 0.17414725 3.3378601e-006 -8.3446503e-007 ;
	setAttr ".vl[0].vt[108]" -type "float3" -0.37589329 -0.41862711 0 ;
	setAttr ".vl[0].vt[109]" -type "float3" -0.38422364 -0.41862711 0 ;
	setAttr ".vl[0].vt[110]" -type "float3" -0.23721415 0 0 ;
	setAttr ".vl[0].vt[112]" -type "float3" -0.23721413 0 0 ;
	setAttr ".vl[0].vt[124]" -type "float3" 0.405572 0 0 ;
	setAttr ".vl[0].vt[126]" -type "float3" 0.23721397 0 0 ;
	setAttr ".vl[0].vt[129]" -type "float3" 0.41456008 0 0 ;
	setAttr ".vl[0].vt[142]" -type "float3" -0.20581034 -9.5367432e-007 -9.5367432e-007 ;
	setAttr ".vl[0].vt[145]" -type "float3" -0.20581043 1.4305115e-006 -3.5762787e-007 ;
	setAttr ".vl[0].vt[148]" -type "float3" -0.20581058 4.7683716e-007 5.9604645e-008 ;
	setAttr ".vl[0].vt[151]" -type "float3" -0.20581047 -3.3378601e-006 -8.9406967e-008 ;
	setAttr ".vl[0].vt[209]" -type "float3" -0.20581053 1.3113022e-006 1.1920929e-007 ;
	setAttr ".vl[0].vt[211]" -type "float3" -0.20581043 4.7683716e-007 3.8743019e-007 ;
	setAttr ".vl[0].vt[214]" -type "float3" -0.20581043 -4.7683716e-007 0 ;
	setAttr ".vl[0].vt[215]" -type "float3" -0.20581061 -4.7683716e-007 2.9802322e-008 ;
	setAttr ".vl[0].vt[216]" -type "float3" -0.20581046 -3.5527137e-015 0 ;
	setAttr ".vl[0].vt[219]" -type "float3" -0.20581043 -3.5527137e-015 0 ;
	setAttr ".vl[0].vt[220]" -type "float3" -0.20581058 -2.3841858e-007 5.9604645e-007 ;
	setAttr ".vl[0].vt[222]" -type "float3" -0.20581049 1.9073486e-006 -9.5367432e-007 ;
	setAttr ".vl[0].vt[224]" -type "float3" 0.37589324 -0.41862711 0 ;
	setAttr ".vl[0].vt[225]" -type "float3" 0.38422364 -0.41862711 0 ;
	setAttr ".vl[0].vt[226]" -type "float3" 0.23721413 0 0 ;
createNode objectSet -n "skinCluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	setAttr -s 63 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 63 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 8.2493458593547491 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.73501678214576882 -0.51723402332853308
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -3.7021946380924078
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -0.3621553668762551 0 0 0 0 -3.3575628143615628
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.9517237533123222e-007
		 -0.51660020406040608 1.068679732155114 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.73501678214576882 -0.51723402332853308
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.2405223309984734e-007
		 -3.7021946380924078 3.6216608165573599e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 -0.3621553668762551 0 0 0 7.5811487865173888e-008
		 -3.3575628140315885 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 -8.9536832581393888e-005
		 -0.51660020298799192 1.0686820556658689 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1.2760810741447084e-008 0 0.99999999999999989 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0.57745421015483522
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 1.0449171421849339
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 1.0449171421849339
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.57745424950421231 1.1759618618546437
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.88327813344438288 1.1334601214940676e-005
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2525223041004794 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2023400211329323 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.35874399313888183 -0.065871232920597933
		 0.35327278913631593 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.20727223417795493 -0.04422469365592363
		 0.058360353983719859 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.20979244810991293 -1.088913650804102e-006
		 7.7065389042507704e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.21998911227959272 2.3923103320555583e-007
		 -6.7735378850297678e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.72775537126456147 0.016476352490125024
		 0.28639001721928131 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.34834963174581368 -1.8231054390582813e-006
		 0.012142956178887221 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 5.3165768943083923e-006 0 0.99999999998586697 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.21879941857460405 -1.1384097184929942e-006
		 0.0076293400861537908 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.00013291442196698664 0 0.99999999116687821 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.16144395310427306 -8.4143330525421334e-007
		 0.005586413383643074 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.0015949723920477344 0 0.99999872803072531 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.72675741819830986 0.041320189721654188
		 0.10762792696167164 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.40118645109407947 0
		 2.4950559018882545e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.22811393178839889 0
		 1.4170973797564268e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.16545153354484299 0
		 1.0195861508355275e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.73367700497732269 0.031340881791471986
		 -0.065430421617694814 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.37433542015010879 0
		 7.3419178098221849e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.19010830860967065 0
		 -9.6517346476199251e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.15866357580317025 0
		 -6.7397155689707944e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.73272955935602901 -0.02582267986315756
		 -0.2054381179286508 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.25111828203400322 3.3492344151397901e-006
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.16288345690821071 2.1695779608421617e-006
		 -1.1796564586274982e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.13748480662117402 1.8313547833770372e-006
		 6.5252325626152796e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.57745417080545269
		 1.1759618618546437 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.883280178787195 3.5736166260846858e-005
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.252533238608418 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.2023268832247131 -1.0724148324925409e-007
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.35871297064884544
		 -0.065870869949382183 0.35330420025303799 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.20726708411133377
		 -0.044224652409198484 0.058378694424395305 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.20966449663096043
		 2.2108246930940822e-006 0.0073270949777184957 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.21985494656840388
		 1.5096302927730676e-006 0.0076832194034535117 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.72773028830354214
		 0.016476723710679764 0.28645393975047634 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.34834927042446306
		 -2.4748040061695065e-008 -0.012155558622063356 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 5.3167488137984685e-006 0 0.99999999998586608 1 1 1 yes;
	setAttr ".xm[47]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.21879919987996654
		 -2.4748095128757086e-008 -0.0076372728125318479 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 -0.00013291871995420017 0 0.99999999116630689 1 1 1 yes;
	setAttr ".xm[48]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.1614437888385698 -8.2493123443327931e-009
		 -0.0055922899174222218 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.0015950239678291448 0 0.99999872794846201 1
		 1 1 yes;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.72674806921464707
		 0.04132040420463845 0.10769178069332215 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.40094250226326622
		 -3.2997387933164646e-008 -0.013990787625629317 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 5.3167488137984685e-006 0 0.99999999998586608 1 1 1 yes;
	setAttr ".xm[51]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.22797513360900634
		 -1.6498747257287505e-008 -0.0079575622273675151 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 -0.00013291871995420017 0 0.99999999116630689 1 1 1 yes;
	setAttr ".xm[52]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.16535240153327901
		 -1.6498660215802374e-008 -0.0057276807609122765 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.0015950239678291448 0 0.99999872794846201 1 1 1 yes;
	setAttr ".xm[53]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.73368299730215547
		 0.031340939536894652 -0.065365899111575518 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[54]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.37410780254928877
		 -3.2997387933164646e-008 -0.01305439777765724 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 5.3167488137984685e-006 0 0.99999999998586608 1 1 1 yes;
	setAttr ".xm[55]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.18999264084292555
		 -1.6498749033644344e-008 -0.0066317681137722656 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 -0.00013291871995420017 0 0.99999999116630689 1 1 1 yes;
	setAttr ".xm[56]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.15856851157335772
		 -8.2493158970464719e-009 -0.0054926921821599889 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.0015950239678291448 0 0.99999872794846201 1 1 1 yes;
	setAttr ".xm[57]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.73274782423269968
		 -0.025822745857938756 -0.20537358568830347 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[58]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.25127034140128757
		 -5.4445682664550077e-006 -0.0087680153134092331 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 5.3167488137984685e-006 0 0.99999999998586608 1 1 1 yes;
	setAttr ".xm[59]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.16298202972774245
		 -3.5307200754175483e-006 -0.0056889517203020656 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 -0.00013291871995420017 0 0.99999999116630689 1 1 1 yes;
	setAttr ".xm[60]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.13756927962154819
		 -2.9862631745203316e-006 -0.0047652950973873787 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.0015950239678291448 0 0.99999872794846201 1 1 1 yes;
	setAttr ".xm[61]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 1.0449171421849339
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[62]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 1.6498691718709502
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 63 ".m";
	setAttr -s 63 ".p";
	setAttr -s 63 ".g[0:62]" yes no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no;
	setAttr ".bp" yes;
createNode shadingEngine -n "staff_simple:lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "staff_simple:materialInfo1";
createNode blinn -n "staff_simple:blinn1";
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 0;
	setAttr ".ec" 0;
	setAttr ".sro" 0;
createNode wood -n "staff_simple:wood1";
	setAttr ".vc" -type "float3" 0.73699999 0.50082618 0.224785 ;
	setAttr ".ls" 0.37086957693099976;
	setAttr ".gs" 0.016521738842129707;
createNode shadingEngine -n "staff_simple1:lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "staff_simple1:materialInfo1";
createNode blinn -n "staff_simple1:blinn1";
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 0;
	setAttr ".ec" 0;
	setAttr ".sro" 0;
createNode wood -n "staff_simple1:wood1";
	setAttr ".vc" -type "float3" 0.73699999 0.50082618 0.224785 ;
	setAttr ".ls" 0.37086957693099976;
	setAttr ".gs" 0.016521738842129707;
createNode displayLayer -n "layer1";
	setAttr ".do" 1;
createNode animCurveTA -n "Character1_RightArm_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 6.6546116625544061 8 -20.007773264161493
		 11 -17.330447798497939 14 -20.007773264161493 16 -6.120423397794168 18 0.43874574578852182
		 20 126.55562654426801 24 126.55562654426801 32 -11.997536502452478 36 40.939413097135606
		 40 35.72780475344323 44 46.728407715730683 48 8.4098519828466038 52 -46.677769335270789
		 56 -46.677769335270789 60 0;
createNode animCurveTA -n "Character1_RightArm_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 2.0557967926618317 8 -31.803609325194646
		 11 -33.223029826459467 14 -31.803609325194646 16 19.104834550854342 18 41.393049024912848
		 20 67.148249718013801 24 67.148249718013801 32 1.8405765780918981 36 -17.038381939554604
		 40 -27.166190027793935 44 3.0167839767047027 48 49.866057897279141 52 21.662212965951323
		 56 21.662212965951323 60 0;
createNode animCurveTA -n "Character1_RightArm_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 75.067651482691403 8 29.924496896955223
		 11 24.945996364058004 14 29.924496896955223 16 57.411857513042406 18 76.744936973077188
		 20 210.93834190480675 24 210.93834190480675 32 67.403267107925387 36 6.0883278491774711
		 40 19.828591953727727 44 71.12148640626522 48 21.346288990458152 52 -60.403927686680333
		 56 -60.403927686680333 60 77.580508894973804;
createNode animCurveTU -n "Character1_RightArm_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 8 1 11 1 14 1 16 1 18 1 20 1 24 1 32 1
		 36 1 40 1 44 1 48 1 52 1 56 1 60 1;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5;
createNode animCurveTL -n "Character1_RightArm_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 -0.883280178787195 8 -0.883280178787195
		 11 -0.883280178787195 14 -0.883280178787195 16 -0.883280178787195 18 -0.883280178787195
		 20 -0.883280178787195 24 -0.883280178787195 32 -0.883280178787195 36 -0.883280178787195
		 40 -0.883280178787195 44 -0.883280178787195 48 -0.883280178787195 52 -0.883280178787195
		 56 -0.883280178787195 60 -0.883280178787195;
createNode animCurveTL -n "Character1_RightArm_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 3.5736166260846858e-005 8 3.5736166260846858e-005
		 11 3.5736166260846858e-005 14 3.5736166260846858e-005 16 3.5736166260846858e-005
		 18 3.5736166260846858e-005 20 3.5736166260846858e-005 24 3.5736166260846858e-005
		 32 3.5736166260846858e-005 36 3.5736166260846858e-005 40 3.5736166260846858e-005
		 44 3.5736166260846858e-005 48 3.5736166260846858e-005 52 3.5736166260846858e-005
		 56 3.5736166260846858e-005 60 3.5736166260846858e-005;
createNode animCurveTL -n "Character1_RightArm_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 8 0 11 0 14 0 16 0 18 0 20 0 24 0 32 0
		 36 0 40 0 44 0 48 0 52 0 56 0 60 0;
createNode animCurveTU -n "Character1_RightArm_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 8 1 11 1 14 1 16 1 18 1 20 1 24 1 32 1
		 36 1 40 1 44 1 48 1 52 1 56 1 60 1;
createNode animCurveTU -n "Character1_RightArm_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 8 1 11 1 14 1 16 1 18 1 20 1 24 1 32 1
		 36 1 40 1 44 1 48 1 52 1 56 1 60 1;
createNode animCurveTU -n "Character1_RightArm_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 8 1 11 1 14 1 16 1 18 1 20 1 24 1 32 1
		 36 1 40 1 44 1 48 1 52 1 56 1 60 1;
createNode animCurveTA -n "Character1_RightShoulder_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0.29533185711450188 8 -0.74721935237766335
		 16 -0.74721935237766335 20 -0.6941177132547709 24 -0.6941177132547709 35 -0.84316705079320053
		 48 -0.73721964937011941;
createNode animCurveTA -n "Character1_RightShoulder_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -7.2257931541143625 8 -21.750406161341711
		 16 -21.750406161341711 20 -0.96231726781257876 24 -0.96231726781257876 35 -34.601624795692842
		 48 19.711201468911081;
createNode animCurveTA -n "Character1_RightShoulder_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -2.346713852793834 8 -5.9380348679981951
		 16 -5.9380348679981951 20 -6.2032828704678042 24 -6.2032828704678042 35 -5.7361107831018252
		 48 -6.463602116924057;
createNode animCurveTU -n "Character1_RightShoulder_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 8 1 16 1 20 1 24 1 35 1 48 1;
	setAttr -s 7 ".kot[0:6]"  5 5 5 5 5 5 5;
createNode animCurveTL -n "Character1_RightShoulder_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -0.57745417080545269 8 -0.57745417080545269
		 16 -0.57745417080545269 20 -0.57745417080545269 24 -0.57745417080545269 35 -0.57745417080545269
		 48 -0.57745417080545269;
createNode animCurveTL -n "Character1_RightShoulder_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1.1759618618546437 8 1.1759618618546437
		 16 1.1759618618546437 20 1.1759618618546437 24 1.1759618618546437 35 1.1759618618546437
		 48 1.1759618618546437;
createNode animCurveTL -n "Character1_RightShoulder_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 8 0 16 0 20 0 24 0 35 0 48 0;
createNode animCurveTU -n "Character1_RightShoulder_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 8 1 16 1 20 1 24 1 35 1 48 1;
createNode animCurveTU -n "Character1_RightShoulder_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 8 1 16 1 20 1 24 1 35 1 48 1;
createNode animCurveTU -n "Character1_RightShoulder_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 8 1 16 1 20 1 24 1 35 1 48 1;
createNode animCurveTA -n "Character1_RightForeArm_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 10 -111.49102700148364 14 -111.49102700148364
		 16 -202.25071747214534 18 -301.06209812740764 20 -340.29564490013041 24 -340.29564490013041
		 32 -340.29564490013041 36 -470.40144882303866 38 -533.2481220925464 48 -478.3413671870149
		 52 -453.15260940304466 56 -453.15260940304466 60 -453.15260940304466;
createNode animCurveTA -n "Character1_RightForeArm_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 10 22.05557548176489 14 22.05557548176489
		 16 61.3348882232753 18 77.757800334462232 20 57.40330432339146 24 57.40330432339146
		 32 57.40330432339146 36 5.7035063066490013 38 -12.265636066067353 48 10.944451441018989
		 52 9.9066848220805959 56 9.9066848220805959 60 9.9066848220805959;
createNode animCurveTA -n "Character1_RightForeArm_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 10 -136.35713012850175 14 -136.35713012850175
		 16 -169.27130495656141 18 -271.17177280846153 20 -312.73418645008377 24 -312.73418645008377
		 32 -312.73418645008377 36 -422.39493276343956 38 -471.54497507971462 48 -453.3316486086415
		 52 -385.40943486863176 56 -385.40943486863176 60 -385.40943486863176;
createNode animCurveTU -n "Character1_RightForeArm_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 1 10 1 14 1 16 1 18 1 20 1 24 1 32 1 36 1
		 38 1 48 1 52 1 56 1 60 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5;
createNode animCurveTL -n "Character1_RightForeArm_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 -2.252533238608418 10 -2.252533238608418
		 14 -2.252533238608418 16 -2.252533238608418 18 -2.252533238608418 20 -2.252533238608418
		 24 -2.252533238608418 32 -2.252533238608418 36 -2.252533238608418 38 -2.252533238608418
		 48 -2.252533238608418 52 -2.252533238608418 56 -2.252533238608418 60 -2.252533238608418;
createNode animCurveTL -n "Character1_RightForeArm_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 10 0 14 0 16 0 18 0 20 0 24 0 32 0 36 0
		 38 0 48 0 52 0 56 0 60 0;
createNode animCurveTL -n "Character1_RightForeArm_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 10 0 14 0 16 0 18 0 20 0 24 0 32 0 36 0
		 38 0 48 0 52 0 56 0 60 0;
createNode animCurveTU -n "Character1_RightForeArm_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 1 10 1 14 1 16 1 18 1 20 1 24 1 32 1 36 1
		 38 1 48 1 52 1 56 1 60 1;
createNode animCurveTU -n "Character1_RightForeArm_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 1 10 1 14 1 16 1 18 1 20 1 24 1 32 1 36 1
		 38 1 48 1 52 1 56 1 60 1;
createNode animCurveTU -n "Character1_RightForeArm_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 1 10 1 14 1 16 1 18 1 20 1 24 1 32 1 36 1
		 38 1 48 1 52 1 56 1 60 1;
createNode animCurveTA -n "Character1_RightUpLeg_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 10 -38.328673685126851 15 -57.147132828503921
		 18 -38.328673685126851 20 -15.386091065956691 24 -15.386091065956691 32 -50.038256082230824
		 42 15.157100365359451;
createNode animCurveTA -n "Character1_RightUpLeg_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 10 -7.2748510102338146 15 -7.2748510102338324
		 18 -7.2748510102338146 20 -4.9093805196455538 24 -4.9093805196455538 32 -17.065724841925498
		 42 -4.1568538136672233;
createNode animCurveTA -n "Character1_RightUpLeg_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 10 -9.1000829208015617 15 -9.1000829208015688
		 18 -9.1000829208015617 20 -0.18569932241604642 24 -0.18569932241604642 32 -10.170292695781709
		 42 -10.556511234677865;
createNode animCurveTU -n "Character1_RightUpLeg_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 10 1 15 1 18 1 20 1 24 1 32 1 42 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTL -n "Character1_RightUpLeg_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -0.73501678214576882 10 -0.73501678214576882
		 15 -0.73501678214576882 18 -0.73501678214576882 20 -0.73501678214576882 24 -0.73501678214576882
		 32 -0.73501678214576882 42 -0.73501678214576882;
createNode animCurveTL -n "Character1_RightUpLeg_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -0.51723402332853308 10 -0.51723402332853308
		 15 -0.51723402332853308 18 -0.51723402332853308 20 -0.51723402332853308 24 -0.51723402332853308
		 32 -0.51723402332853308 42 -0.51723402332853308;
createNode animCurveTL -n "Character1_RightUpLeg_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 10 0 15 0 18 0 20 0 24 0 32 0 42 0;
createNode animCurveTU -n "Character1_RightUpLeg_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 10 1 15 1 18 1 20 1 24 1 32 1 42 1;
createNode animCurveTU -n "Character1_RightUpLeg_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 10 1 15 1 18 1 20 1 24 1 32 1 42 1;
createNode animCurveTU -n "Character1_RightUpLeg_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 10 1 15 1 18 1 20 1 24 1 32 1 42 1;
createNode animCurveTA -n "Character1_RightLeg_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 10 48.59009246169304 14 48.59009246169304
		 18 48.59009246169304 20 19.206438626640015 24 19.206438626640015 32 57.460634495887817
		 42 -3.27757071261223;
createNode animCurveTA -n "Character1_RightLeg_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 10 0 14 0 18 0 20 0 24 0 32 0 42 -2.1340532817426503;
createNode animCurveTA -n "Character1_RightLeg_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 10 0 14 0 18 0 20 0 24 0 32 0 42 12.416994166907608;
createNode animCurveTU -n "Character1_RightLeg_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 10 1 14 1 18 1 20 1 24 1 32 1 42 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTL -n "Character1_RightLeg_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -2.2405223309984734e-007 10 -2.2405223309984734e-007
		 14 -2.2405223309984734e-007 18 -2.2405223309984734e-007 20 -2.2405223309984734e-007
		 24 -2.2405223309984734e-007 32 -2.2405223309984734e-007 42 -2.2405223309984734e-007;
createNode animCurveTL -n "Character1_RightLeg_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -3.7021946380924078 10 -3.7021946380924078
		 14 -3.7021946380924078 18 -3.7021946380924078 20 -3.7021946380924078 24 -3.7021946380924078
		 32 -3.7021946380924078 42 -3.7021946380924078;
createNode animCurveTL -n "Character1_RightLeg_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 3.6216608165573599e-005 10 3.6216608165573599e-005
		 14 3.6216608165573599e-005 18 3.6216608165573599e-005 20 3.6216608165573599e-005
		 24 3.6216608165573599e-005 32 3.6216608165573599e-005 42 3.6216608165573599e-005;
createNode animCurveTU -n "Character1_RightLeg_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 10 1 14 1 18 1 20 1 24 1 32 1 42 1;
createNode animCurveTU -n "Character1_RightLeg_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 10 1 14 1 18 1 20 1 24 1 32 1 42 1;
createNode animCurveTU -n "Character1_RightLeg_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 10 1 14 1 18 1 20 1 24 1 32 1 42 1;
createNode animCurveTA -n "Character1_Spine2_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 5 -0.73388704612247935 14 -0.73388704612247935
		 20 -0.73862367579241417 24 -0.73862367579241417 32 -0.76186734326888894 38 -0.9918441015949403
		 42 -0.9918441015949403 52 -23.524441360148543 56 -23.524441360148543 60 0;
createNode animCurveTA -n "Character1_Spine2_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -9.0412140423055956 5 -11.385815489197592
		 14 -11.385815489197592 20 13.08536020113568 24 13.08536020113568 32 -19.210009293932877
		 38 -43.499817443977165 42 -43.499817443977165 52 14.252605395264796 56 14.252605395264796
		 60 0;
createNode animCurveTA -n "Character1_Spine2_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 5 0.40884225201988011 14 0.40884225201988011
		 20 0.09671959175782488 24 0.09671959175782488 32 0.51464620283710005 38 0.94672859990773961
		 42 0.94672859990773961 52 -2.3535603800230049 56 -2.3535603800230049 60 0;
createNode animCurveTU -n "Character1_Spine2_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1 5 1 14 1 20 1 24 1 32 1 38 1 42 1 52 1
		 56 1 60 1;
	setAttr -s 11 ".kot[0:10]"  5 5 5 5 5 5 5 5 
		5 5 5;
createNode animCurveTL -n "Character1_Spine2_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 5 0 14 0 20 0 24 0 32 0 38 0 42 0 52 0
		 56 0 60 0;
createNode animCurveTL -n "Character1_Spine2_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1.0449171421849339 5 1.0449171421849339
		 14 1.0449171421849339 20 1.0449171421849339 24 1.0449171421849339 32 1.0449171421849339
		 38 1.0449171421849339 42 1.0449171421849339 52 1.0449171421849339 56 1.0449171421849339
		 60 1.0449171421849339;
createNode animCurveTL -n "Character1_Spine2_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 5 0 14 0 20 0 24 0 32 0 38 0 42 0 52 0
		 56 0 60 0;
createNode animCurveTU -n "Character1_Spine2_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1 5 1 14 1 20 1 24 1 32 1 38 1 42 1 52 1
		 56 1 60 1;
createNode animCurveTU -n "Character1_Spine2_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1 5 1 14 1 20 1 24 1 32 1 38 1 42 1 52 1
		 56 1 60 1;
createNode animCurveTU -n "Character1_Spine2_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1 5 1 14 1 20 1 24 1 32 1 38 1 42 1 52 1
		 56 1 60 1;
createNode animCurveTA -n "Character1_LeftArm_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 10 0 14 0 20 2.0133846991310839e-016
		 36 2.0133846991310839e-016 38 3.0625764204309911e-016 52 -4.4331807066011342 56 -4.4331807066011342
		 60 22.12929757004002;
createNode animCurveTA -n "Character1_LeftArm_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 10 -29.309988763137479 14 -29.309988763137479
		 20 9.1354093412662234 36 9.1354093412662234 38 -2.8229765075813091 52 10.698727009298848
		 56 10.698727009298848 60 -3.1141866656382087;
createNode animCurveTA -n "Character1_LeftArm_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -74.55025428430902 10 -18.285067442025635
		 14 -18.285067442025635 20 -18.285067442025696 36 -18.285067442025696 38 -18.285067442025692
		 52 -40.951300550331545 56 -40.951300550331545 60 -71.068579697172154;
createNode animCurveTU -n "Character1_LeftArm_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 10 1 14 1 20 1 36 1 38 1 52 1 56 1 60 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTL -n "Character1_LeftArm_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0.88327813344438288 10 0.88327813344438288
		 14 0.88327813344438288 20 0.88327813344438288 36 0.88327813344438288 38 0.88327813344438288
		 52 0.88327813344438288 56 0.88327813344438288 60 0.88327813344438288;
createNode animCurveTL -n "Character1_LeftArm_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1.1334601214940676e-005 10 1.1334601214940676e-005
		 14 1.1334601214940676e-005 20 1.1334601214940676e-005 36 1.1334601214940676e-005
		 38 1.1334601214940676e-005 52 1.1334601214940676e-005 56 1.1334601214940676e-005
		 60 1.1334601214940676e-005;
createNode animCurveTL -n "Character1_LeftArm_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 10 0 14 0 20 0 36 0 38 0 52 0 56 0 60 0;
createNode animCurveTU -n "Character1_LeftArm_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 10 1 14 1 20 1 36 1 38 1 52 1 56 1 60 1;
createNode animCurveTU -n "Character1_LeftArm_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 10 1 14 1 20 1 36 1 38 1 52 1 56 1 60 1;
createNode animCurveTU -n "Character1_LeftArm_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 10 1 14 1 20 1 36 1 38 1 52 1 56 1 60 1;
createNode animCurveTA -n "Character1_LeftForeArm_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 27.027179950119841 10 24.497134234867083
		 36 24.497134234867083 38 24.497134234867083 52 138.68111545710158 60 0;
createNode animCurveTA -n "Character1_LeftForeArm_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -48.384054382578739 10 -52.205411953050636
		 36 -52.205411953050636 38 -52.205411953050636 52 -67.364382564995779 60 0;
createNode animCurveTA -n "Character1_LeftForeArm_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -34.307108260582545 10 -18.882292333487818
		 36 -18.882292333487818 38 -18.882292333487818 52 -140.02421263798772 60 0;
createNode animCurveTU -n "Character1_LeftForeArm_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 10 1 36 1 38 1 52 1 60 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTL -n "Character1_LeftForeArm_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 2.2525223041004794 10 2.2525223041004794
		 36 2.2525223041004794 38 2.2525223041004794 52 2.2525223041004794 60 2.2525223041004794;
createNode animCurveTL -n "Character1_LeftForeArm_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 36 0 38 0 52 0 60 0;
createNode animCurveTL -n "Character1_LeftForeArm_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 36 0 38 0 52 0 60 0;
createNode animCurveTU -n "Character1_LeftForeArm_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 10 1 36 1 38 1 52 1 60 1;
createNode animCurveTU -n "Character1_LeftForeArm_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 10 1 36 1 38 1 52 1 60 1;
createNode animCurveTU -n "Character1_LeftForeArm_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 10 1 36 1 38 1 52 1 60 1;
createNode animCurveTA -n "Character1_Spine1_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 14 -6.0043315626441096 20 7.4722714629339695
		 24 7.4722714629339695 38 -7.7583588970758912 56 -12.4999910472711 60 0;
createNode animCurveTA -n "Character1_Spine1_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 14 -11.468639398457313 20 0 24 0 38 0
		 56 0 60 0;
createNode animCurveTA -n "Character1_Spine1_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 14 1.0355481407968561 20 0 24 0 38 0
		 56 0 60 0;
createNode animCurveTU -n "Character1_Spine1_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 14 1 20 1 24 1 38 1 56 1 60 1;
	setAttr -s 7 ".kot[0:6]"  5 5 5 5 5 5 5;
createNode animCurveTL -n "Character1_Spine1_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 14 0 20 0 24 0 38 0 56 0 60 0;
createNode animCurveTL -n "Character1_Spine1_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1.0449171421849339 14 1.0449171421849339
		 20 1.0449171421849339 24 1.0449171421849339 38 1.0449171421849339 56 1.0449171421849339
		 60 1.0449171421849339;
createNode animCurveTL -n "Character1_Spine1_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 14 0 20 0 24 0 38 0 56 0 60 0;
createNode animCurveTU -n "Character1_Spine1_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 14 1 20 1 24 1 38 1 56 1 60 1;
createNode animCurveTU -n "Character1_Spine1_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 14 1 20 1 24 1 38 1 56 1 60 1;
createNode animCurveTU -n "Character1_Spine1_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 14 1 20 1 24 1 38 1 56 1 60 1;
createNode animCurveTA -n "Character1_Spine_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 14 0 20 9.195586694081948 38 -0.70297774897731913
		 60 0;
createNode animCurveTA -n "Character1_Spine_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 14 -16.180917121873073 20 12.70832804324823
		 38 12.708328043248219 60 0;
createNode animCurveTA -n "Character1_Spine_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 14 0 20 2.0033818816539464 38 2.0033818816539464
		 60 0;
createNode animCurveTU -n "Character1_Spine_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 14 1 20 1 38 1 60 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTL -n "Character1_Spine_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 14 0 20 0 38 0 60 0;
createNode animCurveTL -n "Character1_Spine_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.57745421015483522 14 0.57745421015483522
		 20 0.57745421015483522 38 0.57745421015483522 60 0.57745421015483522;
createNode animCurveTL -n "Character1_Spine_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 14 0 20 0 38 0 60 0;
createNode animCurveTU -n "Character1_Spine_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 14 1 20 1 38 1 60 1;
createNode animCurveTU -n "Character1_Spine_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 14 1 20 1 38 1 60 1;
createNode animCurveTU -n "Character1_Spine_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 14 1 20 1 38 1 60 1;
createNode animCurveTA -n "Character1_Neck_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 10 27.984538762105373 20 24.23141601324339
		 24 24.23141601324339 32 -0.32645623662414092;
createNode animCurveTA -n "Character1_Neck_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 10 0 20 -65.31410989570881 24 -65.31410989570881
		 32 3.3332470276816606;
createNode animCurveTA -n "Character1_Neck_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 10 0 20 -32.276425260820631 24 -32.276425260820631
		 32 -9.4539628796973183;
createNode animCurveTU -n "Character1_Neck_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 24 1 32 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTL -n "Character1_Neck_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 10 0 20 0 24 0 32 0;
createNode animCurveTL -n "Character1_Neck_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1.0449171421849339 10 1.0449171421849339
		 20 1.0449171421849339 24 1.0449171421849339 32 1.0449171421849339;
createNode animCurveTL -n "Character1_Neck_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 10 0 20 0 24 0 32 0;
createNode animCurveTU -n "Character1_Neck_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 24 1 32 1;
createNode animCurveTU -n "Character1_Neck_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 24 1 32 1;
createNode animCurveTU -n "Character1_Neck_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 20 1 24 1 32 1;
createNode animCurveTA -n "Character1_Hips_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 14 0 20 0 24 0 42 0 56 0 60 0;
createNode animCurveTA -n "Character1_Hips_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 14 0 20 0 24 0 42 0 56 0 60 0;
createNode animCurveTA -n "Character1_Hips_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 14 0 20 0 24 0 42 0 56 0 60 0;
createNode animCurveTU -n "Character1_Hips_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 14 1 20 1 24 1 42 1 56 1 60 1;
	setAttr -s 7 ".kot[0:6]"  5 5 5 5 5 5 5;
createNode animCurveTL -n "Character1_Hips_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 14 0 20 0 24 0 42 0 56 0 60 0;
createNode animCurveTL -n "Character1_Hips_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 8.2493458593547491 14 8.2493458593547491
		 20 8.2493458593547491 24 8.2493458593547491 42 8.2493458593547491 56 8.2493458593547491
		 60 8.2493458593547491;
createNode animCurveTL -n "Character1_Hips_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 14 0 20 1.2763061992210778 24 1.2763061992210778
		 42 -0.67922082877704293 56 -0.67922082877704293 60 -0.67922082877704293;
createNode animCurveTU -n "Character1_Hips_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 14 1 20 1 24 1 42 1 56 1 60 1;
createNode animCurveTU -n "Character1_Hips_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 14 1 20 1 24 1 42 1 56 1 60 1;
createNode animCurveTU -n "Character1_Hips_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 14 1 20 1 24 1 42 1 56 1 60 1;
createNode animCurveTA -n "Character1_LeftUpLeg_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 20 0 42 -17.700410512259481 56 -17.700410512259481
		 60 0;
createNode animCurveTA -n "Character1_LeftUpLeg_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 20 0 42 0 56 0 60 0;
createNode animCurveTA -n "Character1_LeftUpLeg_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 20 0 42 0 56 0 60 0;
createNode animCurveTU -n "Character1_LeftUpLeg_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 20 1 42 1 56 1 60 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTL -n "Character1_LeftUpLeg_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.73501678214576882 20 0.73501678214576882
		 42 0.73501678214576882 56 0.73501678214576882 60 0.73501678214576882;
createNode animCurveTL -n "Character1_LeftUpLeg_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.51723402332853308 20 -0.51723402332853308
		 42 -0.51723402332853308 56 -0.51723402332853308 60 -0.51723402332853308;
createNode animCurveTL -n "Character1_LeftUpLeg_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 20 0 42 0 56 0 60 0;
createNode animCurveTU -n "Character1_LeftUpLeg_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 20 1 42 1 56 1 60 1;
createNode animCurveTU -n "Character1_LeftUpLeg_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 20 1 42 1 56 1 60 1;
createNode animCurveTU -n "Character1_LeftUpLeg_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 20 1 42 1 56 1 60 1;
createNode animCurveTA -n "Character1_LeftLeg_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 20 17.359547791060926 42 17.804817338741049;
createNode animCurveTA -n "Character1_LeftLeg_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 20 0 42 0;
createNode animCurveTA -n "Character1_LeftLeg_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 20 0 42 0;
createNode animCurveTU -n "Character1_LeftLeg_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 20 1 42 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Character1_LeftLeg_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 20 0 42 0;
createNode animCurveTL -n "Character1_LeftLeg_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -3.7021946380924078 15 -3.7021946380924078
		 20 -3.7021946380924078 42 -3.7021946380924078;
createNode animCurveTL -n "Character1_LeftLeg_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 20 0 42 0;
createNode animCurveTU -n "Character1_LeftLeg_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 20 1 42 1;
createNode animCurveTU -n "Character1_LeftLeg_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 20 1 42 1;
createNode animCurveTU -n "Character1_LeftLeg_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 20 1 42 1;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 34;
	setAttr ".unw" 34;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".s";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av ".w";
	setAttr -av ".h";
	setAttr -av ".pa" 1;
	setAttr -k on ".al";
	setAttr -av ".dar";
	setAttr -k on ".ldar";
	setAttr -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :defaultObjectSet;
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".rp";
	setAttr -k on ".cai";
	setAttr -k on ".coi";
	setAttr -cb on ".bc";
	setAttr -av -k on ".bcb";
	setAttr -av -k on ".bcg";
	setAttr -av -k on ".bcr";
	setAttr -k on ".ei";
	setAttr -k on ".ex";
	setAttr -av -k on ".es";
	setAttr -av -k on ".ef";
	setAttr -av -k on ".bf";
	setAttr -k on ".fii";
	setAttr -av -k on ".sf";
	setAttr -k on ".gr";
	setAttr -k on ".li";
	setAttr -k on ".ls";
	setAttr -k on ".mb";
	setAttr -k on ".ti";
	setAttr -k on ".txt";
	setAttr -k on ".mpr";
	setAttr -k on ".wzd";
	setAttr ".fn" -type "string" "im";
	setAttr -k on ".if";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
	setAttr -k on ".as";
	setAttr -k on ".ds";
	setAttr -k on ".lm";
	setAttr -k on ".fir";
	setAttr -k on ".aap";
	setAttr -k on ".gh";
	setAttr -cb on ".sd";
connectAttr "layer1.di" "pCube1.do";
connectAttr "skinCluster1.og[0]" "pCubeShape1.i";
connectAttr "skinCluster1GroupId.id" "pCubeShape1.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupId2.id" "pCubeShape1.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "pCubeShape1.iog.og[1].gco";
connectAttr "tweak1.vl[0].vt[0]" "pCubeShape1.twl";
connectAttr "deleteComponent14.og" "pCubeShape1Orig.i";
connectAttr "Character1_Hips_scaleX.o" "Character1_Hips.sx";
connectAttr "Character1_Hips_scaleY.o" "Character1_Hips.sy";
connectAttr "Character1_Hips_scaleZ.o" "Character1_Hips.sz";
connectAttr "Character1_Hips_rotateX.o" "Character1_Hips.rx";
connectAttr "Character1_Hips_rotateY.o" "Character1_Hips.ry";
connectAttr "Character1_Hips_rotateZ.o" "Character1_Hips.rz";
connectAttr "Character1_Hips_visibility.o" "Character1_Hips.v";
connectAttr "Character1_Hips_translateX.o" "Character1_Hips.tx";
connectAttr "Character1_Hips_translateY.o" "Character1_Hips.ty";
connectAttr "Character1_Hips_translateZ.o" "Character1_Hips.tz";
connectAttr "Character1_Hips.s" "Character1_LeftUpLeg.is";
connectAttr "Character1_LeftUpLeg_scaleX.o" "Character1_LeftUpLeg.sx";
connectAttr "Character1_LeftUpLeg_scaleY.o" "Character1_LeftUpLeg.sy";
connectAttr "Character1_LeftUpLeg_scaleZ.o" "Character1_LeftUpLeg.sz";
connectAttr "Character1_LeftUpLeg_rotateX.o" "Character1_LeftUpLeg.rx";
connectAttr "Character1_LeftUpLeg_rotateY.o" "Character1_LeftUpLeg.ry";
connectAttr "Character1_LeftUpLeg_rotateZ.o" "Character1_LeftUpLeg.rz";
connectAttr "Character1_LeftUpLeg_visibility.o" "Character1_LeftUpLeg.v";
connectAttr "Character1_LeftUpLeg_translateX.o" "Character1_LeftUpLeg.tx";
connectAttr "Character1_LeftUpLeg_translateY.o" "Character1_LeftUpLeg.ty";
connectAttr "Character1_LeftUpLeg_translateZ.o" "Character1_LeftUpLeg.tz";
connectAttr "Character1_LeftUpLeg.s" "Character1_LeftLeg.is";
connectAttr "Character1_LeftLeg_scaleX.o" "Character1_LeftLeg.sx";
connectAttr "Character1_LeftLeg_scaleY.o" "Character1_LeftLeg.sy";
connectAttr "Character1_LeftLeg_scaleZ.o" "Character1_LeftLeg.sz";
connectAttr "Character1_LeftLeg_rotateX.o" "Character1_LeftLeg.rx";
connectAttr "Character1_LeftLeg_rotateY.o" "Character1_LeftLeg.ry";
connectAttr "Character1_LeftLeg_rotateZ.o" "Character1_LeftLeg.rz";
connectAttr "Character1_LeftLeg_visibility.o" "Character1_LeftLeg.v";
connectAttr "Character1_LeftLeg_translateX.o" "Character1_LeftLeg.tx";
connectAttr "Character1_LeftLeg_translateY.o" "Character1_LeftLeg.ty";
connectAttr "Character1_LeftLeg_translateZ.o" "Character1_LeftLeg.tz";
connectAttr "Character1_LeftLeg.s" "Character1_LeftFoot.is";
connectAttr "Character1_LeftFoot.s" "Character1_LeftToeBase.is";
connectAttr "Character1_Hips.s" "Character1_RightUpLeg.is";
connectAttr "Character1_RightUpLeg_scaleX.o" "Character1_RightUpLeg.sx";
connectAttr "Character1_RightUpLeg_scaleY.o" "Character1_RightUpLeg.sy";
connectAttr "Character1_RightUpLeg_scaleZ.o" "Character1_RightUpLeg.sz";
connectAttr "Character1_RightUpLeg_rotateX.o" "Character1_RightUpLeg.rx";
connectAttr "Character1_RightUpLeg_rotateY.o" "Character1_RightUpLeg.ry";
connectAttr "Character1_RightUpLeg_rotateZ.o" "Character1_RightUpLeg.rz";
connectAttr "Character1_RightUpLeg_visibility.o" "Character1_RightUpLeg.v";
connectAttr "Character1_RightUpLeg_translateX.o" "Character1_RightUpLeg.tx";
connectAttr "Character1_RightUpLeg_translateY.o" "Character1_RightUpLeg.ty";
connectAttr "Character1_RightUpLeg_translateZ.o" "Character1_RightUpLeg.tz";
connectAttr "Character1_RightUpLeg.s" "Character1_RightLeg.is";
connectAttr "Character1_RightLeg_scaleX.o" "Character1_RightLeg.sx";
connectAttr "Character1_RightLeg_scaleY.o" "Character1_RightLeg.sy";
connectAttr "Character1_RightLeg_scaleZ.o" "Character1_RightLeg.sz";
connectAttr "Character1_RightLeg_rotateX.o" "Character1_RightLeg.rx";
connectAttr "Character1_RightLeg_rotateY.o" "Character1_RightLeg.ry";
connectAttr "Character1_RightLeg_rotateZ.o" "Character1_RightLeg.rz";
connectAttr "Character1_RightLeg_visibility.o" "Character1_RightLeg.v";
connectAttr "Character1_RightLeg_translateX.o" "Character1_RightLeg.tx";
connectAttr "Character1_RightLeg_translateY.o" "Character1_RightLeg.ty";
connectAttr "Character1_RightLeg_translateZ.o" "Character1_RightLeg.tz";
connectAttr "Character1_RightLeg.s" "Character1_RightFoot.is";
connectAttr "Character1_RightFoot.s" "Character1_RightToeBase.is";
connectAttr "Character1_Hips.s" "Character1_Spine.is";
connectAttr "Character1_Spine_scaleX.o" "Character1_Spine.sx";
connectAttr "Character1_Spine_scaleY.o" "Character1_Spine.sy";
connectAttr "Character1_Spine_scaleZ.o" "Character1_Spine.sz";
connectAttr "Character1_Spine_rotateX.o" "Character1_Spine.rx";
connectAttr "Character1_Spine_rotateY.o" "Character1_Spine.ry";
connectAttr "Character1_Spine_rotateZ.o" "Character1_Spine.rz";
connectAttr "Character1_Spine_visibility.o" "Character1_Spine.v";
connectAttr "Character1_Spine_translateX.o" "Character1_Spine.tx";
connectAttr "Character1_Spine_translateY.o" "Character1_Spine.ty";
connectAttr "Character1_Spine_translateZ.o" "Character1_Spine.tz";
connectAttr "Character1_Spine1_rotateX.o" "Character1_Spine1.rx";
connectAttr "Character1_Spine1_rotateY.o" "Character1_Spine1.ry";
connectAttr "Character1_Spine1_rotateZ.o" "Character1_Spine1.rz";
connectAttr "Character1_Spine1_translateY.o" "Character1_Spine1.ty";
connectAttr "Character1_Spine1_translateX.o" "Character1_Spine1.tx";
connectAttr "Character1_Spine1_translateZ.o" "Character1_Spine1.tz";
connectAttr "Character1_Spine.s" "Character1_Spine1.is";
connectAttr "Character1_Spine1_scaleX.o" "Character1_Spine1.sx";
connectAttr "Character1_Spine1_scaleY.o" "Character1_Spine1.sy";
connectAttr "Character1_Spine1_scaleZ.o" "Character1_Spine1.sz";
connectAttr "Character1_Spine1_visibility.o" "Character1_Spine1.v";
connectAttr "Character1_Spine1.s" "Character1_Spine2.is";
connectAttr "Character1_Spine2_scaleX.o" "Character1_Spine2.sx";
connectAttr "Character1_Spine2_scaleY.o" "Character1_Spine2.sy";
connectAttr "Character1_Spine2_scaleZ.o" "Character1_Spine2.sz";
connectAttr "Character1_Spine2_rotateX.o" "Character1_Spine2.rx";
connectAttr "Character1_Spine2_rotateY.o" "Character1_Spine2.ry";
connectAttr "Character1_Spine2_rotateZ.o" "Character1_Spine2.rz";
connectAttr "Character1_Spine2_visibility.o" "Character1_Spine2.v";
connectAttr "Character1_Spine2_translateX.o" "Character1_Spine2.tx";
connectAttr "Character1_Spine2_translateY.o" "Character1_Spine2.ty";
connectAttr "Character1_Spine2_translateZ.o" "Character1_Spine2.tz";
connectAttr "Character1_Spine2.s" "Character1_LeftShoulder.is";
connectAttr "Character1_LeftShoulder.s" "Character1_LeftArm.is";
connectAttr "Character1_LeftArm_scaleX.o" "Character1_LeftArm.sx";
connectAttr "Character1_LeftArm_scaleY.o" "Character1_LeftArm.sy";
connectAttr "Character1_LeftArm_scaleZ.o" "Character1_LeftArm.sz";
connectAttr "Character1_LeftArm_rotateX.o" "Character1_LeftArm.rx";
connectAttr "Character1_LeftArm_rotateY.o" "Character1_LeftArm.ry";
connectAttr "Character1_LeftArm_rotateZ.o" "Character1_LeftArm.rz";
connectAttr "Character1_LeftArm_visibility.o" "Character1_LeftArm.v";
connectAttr "Character1_LeftArm_translateX.o" "Character1_LeftArm.tx";
connectAttr "Character1_LeftArm_translateY.o" "Character1_LeftArm.ty";
connectAttr "Character1_LeftArm_translateZ.o" "Character1_LeftArm.tz";
connectAttr "Character1_LeftArm.s" "Character1_LeftForeArm.is";
connectAttr "Character1_LeftForeArm_scaleX.o" "Character1_LeftForeArm.sx";
connectAttr "Character1_LeftForeArm_scaleY.o" "Character1_LeftForeArm.sy";
connectAttr "Character1_LeftForeArm_scaleZ.o" "Character1_LeftForeArm.sz";
connectAttr "Character1_LeftForeArm_rotateX.o" "Character1_LeftForeArm.rx";
connectAttr "Character1_LeftForeArm_rotateY.o" "Character1_LeftForeArm.ry";
connectAttr "Character1_LeftForeArm_rotateZ.o" "Character1_LeftForeArm.rz";
connectAttr "Character1_LeftForeArm_visibility.o" "Character1_LeftForeArm.v";
connectAttr "Character1_LeftForeArm_translateX.o" "Character1_LeftForeArm.tx";
connectAttr "Character1_LeftForeArm_translateY.o" "Character1_LeftForeArm.ty";
connectAttr "Character1_LeftForeArm_translateZ.o" "Character1_LeftForeArm.tz";
connectAttr "Character1_LeftForeArm.s" "Character1_LeftHand.is";
connectAttr "Character1_LeftHand.s" "Character1_LeftHandThumb1.is";
connectAttr "Character1_LeftHandThumb1.s" "Character1_LeftHandThumb2.is";
connectAttr "Character1_LeftHandThumb2.s" "Character1_LeftHandThumb3.is";
connectAttr "Character1_LeftHandThumb3.s" "Character1_LeftHandThumb4.is";
connectAttr "Character1_LeftHand.s" "Character1_LeftHandIndex1.is";
connectAttr "Character1_LeftHandIndex1.s" "Character1_LeftHandIndex2.is";
connectAttr "Character1_LeftHandIndex2.s" "Character1_LeftHandIndex3.is";
connectAttr "Character1_LeftHandIndex3.s" "Character1_LeftHandIndex4.is";
connectAttr "Character1_LeftHand.s" "Character1_LeftHandMiddle1.is";
connectAttr "Character1_LeftHandMiddle1.s" "Character1_LeftHandMiddle2.is";
connectAttr "Character1_LeftHandMiddle2.s" "Character1_LeftHandMiddle3.is";
connectAttr "Character1_LeftHandMiddle3.s" "Character1_LeftHandMiddle4.is";
connectAttr "Character1_LeftHand.s" "Character1_LeftHandRing1.is";
connectAttr "Character1_LeftHandRing1.s" "Character1_LeftHandRing2.is";
connectAttr "Character1_LeftHandRing2.s" "Character1_LeftHandRing3.is";
connectAttr "Character1_LeftHandRing3.s" "Character1_LeftHandRing4.is";
connectAttr "Character1_LeftHand.s" "Character1_LeftHandPinky1.is";
connectAttr "Character1_LeftHandPinky1.s" "Character1_LeftHandPinky2.is";
connectAttr "Character1_LeftHandPinky2.s" "Character1_LeftHandPinky3.is";
connectAttr "Character1_LeftHandPinky3.s" "Character1_LeftHandPinky4.is";
connectAttr "Character1_Spine2.s" "Character1_RightShoulder.is";
connectAttr "Character1_RightShoulder_scaleX.o" "Character1_RightShoulder.sx";
connectAttr "Character1_RightShoulder_scaleY.o" "Character1_RightShoulder.sy";
connectAttr "Character1_RightShoulder_scaleZ.o" "Character1_RightShoulder.sz";
connectAttr "Character1_RightShoulder_rotateX.o" "Character1_RightShoulder.rx";
connectAttr "Character1_RightShoulder_rotateY.o" "Character1_RightShoulder.ry";
connectAttr "Character1_RightShoulder_rotateZ.o" "Character1_RightShoulder.rz";
connectAttr "Character1_RightShoulder_visibility.o" "Character1_RightShoulder.v"
		;
connectAttr "Character1_RightShoulder_translateX.o" "Character1_RightShoulder.tx"
		;
connectAttr "Character1_RightShoulder_translateY.o" "Character1_RightShoulder.ty"
		;
connectAttr "Character1_RightShoulder_translateZ.o" "Character1_RightShoulder.tz"
		;
connectAttr "Character1_RightShoulder.s" "Character1_RightArm.is";
connectAttr "Character1_RightArm_scaleX.o" "Character1_RightArm.sx";
connectAttr "Character1_RightArm_scaleY.o" "Character1_RightArm.sy";
connectAttr "Character1_RightArm_scaleZ.o" "Character1_RightArm.sz";
connectAttr "Character1_RightArm_rotateX.o" "Character1_RightArm.rx";
connectAttr "Character1_RightArm_rotateY.o" "Character1_RightArm.ry";
connectAttr "Character1_RightArm_rotateZ.o" "Character1_RightArm.rz";
connectAttr "Character1_RightArm_visibility.o" "Character1_RightArm.v";
connectAttr "Character1_RightArm_translateX.o" "Character1_RightArm.tx";
connectAttr "Character1_RightArm_translateY.o" "Character1_RightArm.ty";
connectAttr "Character1_RightArm_translateZ.o" "Character1_RightArm.tz";
connectAttr "Character1_RightArm.s" "Character1_RightForeArm.is";
connectAttr "Character1_RightForeArm_scaleX.o" "Character1_RightForeArm.sx";
connectAttr "Character1_RightForeArm_scaleY.o" "Character1_RightForeArm.sy";
connectAttr "Character1_RightForeArm_scaleZ.o" "Character1_RightForeArm.sz";
connectAttr "Character1_RightForeArm_rotateX.o" "Character1_RightForeArm.rx";
connectAttr "Character1_RightForeArm_rotateY.o" "Character1_RightForeArm.ry";
connectAttr "Character1_RightForeArm_rotateZ.o" "Character1_RightForeArm.rz";
connectAttr "Character1_RightForeArm_visibility.o" "Character1_RightForeArm.v";
connectAttr "Character1_RightForeArm_translateX.o" "Character1_RightForeArm.tx";
connectAttr "Character1_RightForeArm_translateY.o" "Character1_RightForeArm.ty";
connectAttr "Character1_RightForeArm_translateZ.o" "Character1_RightForeArm.tz";
connectAttr "Character1_RightForeArm.s" "Character1_RightHand.is";
connectAttr "Character1_RightHand.s" "Character1_RightHandThumb1.is";
connectAttr "Character1_RightHandThumb1.s" "Character1_RightHandThumb2.is";
connectAttr "Character1_RightHandThumb2.s" "Character1_RightHandThumb3.is";
connectAttr "Character1_RightHandThumb3.s" "Character1_RightHandThumb4.is";
connectAttr "Character1_RightHand.s" "Character1_RightHandIndex1.is";
connectAttr "Character1_RightHandIndex1.s" "Character1_RightHandIndex2.is";
connectAttr "Character1_RightHandIndex2.s" "Character1_RightHandIndex3.is";
connectAttr "Character1_RightHandIndex3.s" "Character1_RightHandIndex4.is";
connectAttr "Character1_RightHand.s" "Character1_RightHandMiddle1.is";
connectAttr "Character1_RightHandMiddle1.s" "Character1_RightHandMiddle2.is";
connectAttr "Character1_RightHandMiddle2.s" "Character1_RightHandMiddle3.is";
connectAttr "Character1_RightHandMiddle3.s" "Character1_RightHandMiddle4.is";
connectAttr "Character1_RightHand.s" "Character1_RightHandRing1.is";
connectAttr "Character1_RightHandRing1.s" "Character1_RightHandRing2.is";
connectAttr "Character1_RightHandRing2.s" "Character1_RightHandRing3.is";
connectAttr "Character1_RightHandRing3.s" "Character1_RightHandRing4.is";
connectAttr "Character1_RightHand.s" "Character1_RightHandPinky1.is";
connectAttr "Character1_RightHandPinky1.s" "Character1_RightHandPinky2.is";
connectAttr "Character1_RightHandPinky2.s" "Character1_RightHandPinky3.is";
connectAttr "Character1_RightHandPinky3.s" "Character1_RightHandPinky4.is";
connectAttr "Character1_Spine2.s" "Character1_Neck.is";
connectAttr "Character1_Neck_scaleX.o" "Character1_Neck.sx";
connectAttr "Character1_Neck_scaleY.o" "Character1_Neck.sy";
connectAttr "Character1_Neck_scaleZ.o" "Character1_Neck.sz";
connectAttr "Character1_Neck_rotateX.o" "Character1_Neck.rx";
connectAttr "Character1_Neck_rotateY.o" "Character1_Neck.ry";
connectAttr "Character1_Neck_rotateZ.o" "Character1_Neck.rz";
connectAttr "Character1_Neck_visibility.o" "Character1_Neck.v";
connectAttr "Character1_Neck_translateX.o" "Character1_Neck.tx";
connectAttr "Character1_Neck_translateY.o" "Character1_Neck.ty";
connectAttr "Character1_Neck_translateZ.o" "Character1_Neck.tz";
connectAttr "Character1_Neck.s" "Character1_Head.is";
connectAttr "Staff_parentConstraint1.ctx" "staff_simple1:Staff.tx";
connectAttr "Staff_parentConstraint1.cty" "staff_simple1:Staff.ty";
connectAttr "Staff_parentConstraint1.ctz" "staff_simple1:Staff.tz";
connectAttr "Staff_parentConstraint1.crx" "staff_simple1:Staff.rx";
connectAttr "Staff_parentConstraint1.cry" "staff_simple1:Staff.ry";
connectAttr "Staff_parentConstraint1.crz" "staff_simple1:Staff.rz";
connectAttr "staff_simple1:Staff.ro" "Staff_parentConstraint1.cro";
connectAttr "staff_simple1:Staff.pim" "Staff_parentConstraint1.cpim";
connectAttr "staff_simple1:Staff.rp" "Staff_parentConstraint1.crp";
connectAttr "staff_simple1:Staff.rpt" "Staff_parentConstraint1.crt";
connectAttr "Character1_RightHand.t" "Staff_parentConstraint1.tg[0].tt";
connectAttr "Character1_RightHand.rp" "Staff_parentConstraint1.tg[0].trp";
connectAttr "Character1_RightHand.rpt" "Staff_parentConstraint1.tg[0].trt";
connectAttr "Character1_RightHand.r" "Staff_parentConstraint1.tg[0].tr";
connectAttr "Character1_RightHand.ro" "Staff_parentConstraint1.tg[0].tro";
connectAttr "Character1_RightHand.s" "Staff_parentConstraint1.tg[0].ts";
connectAttr "Character1_RightHand.pm" "Staff_parentConstraint1.tg[0].tpm";
connectAttr "Character1_RightHand.jo" "Staff_parentConstraint1.tg[0].tjo";
connectAttr "Staff_parentConstraint1.w0" "Staff_parentConstraint1.tg[0].tw";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "staff_simple:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "staff_simple1:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "staff_simple:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "staff_simple1:lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "hyperView1.msg" "nodeEditorPanel1Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "deleteComponent1.ig";
connectAttr "polyTweak2.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "deleteComponent1.og" "polyTweak2.ip";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyTweak3.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polySplitRing2.ip";
connectAttr "pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "polySplitRing1.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polySplitRing2.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polySplitRing3.ip";
connectAttr "pCubeShape1.wm" "polySplitRing3.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyCut1.ip";
connectAttr "pCubeShape1.wm" "polyCut1.mp";
connectAttr "polySplitRing3.out" "polyTweak7.ip";
connectAttr "polyCut1.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyTweak8.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak12.ip";
connectAttr "polyExtrudeFace9.out" "polyTweak13.ip";
connectAttr "polyTweak13.out" "deleteComponent3.ig";
connectAttr "polyTweak14.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace10.mp";
connectAttr "deleteComponent3.og" "polyTweak14.ip";
connectAttr "polyTweak15.out" "polyExtrudeFace11.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polySplitRing4.ip";
connectAttr "pCubeShape1.wm" "polySplitRing4.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polyExtrudeFace12.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace12.mp";
connectAttr "polySplitRing4.out" "polyTweak17.ip";
connectAttr "polyExtrudeFace12.out" "polyExtrudeEdge1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "polyExtrudeFace13.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace13.out" "polyExtrudeFace14.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak18.ip";
connectAttr "polyTweak18.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polyExtrudeEdge2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge2.out" "polyTweak19.ip";
connectAttr "polyTweak19.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "polyTweak20.ip";
connectAttr "polyTweak20.out" "deleteComponent6.ig";
connectAttr "polyTweak21.out" "polyExtrudeFace15.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace15.mp";
connectAttr "deleteComponent6.og" "polyTweak21.ip";
connectAttr "polyExtrudeFace15.out" "polyExtrudeFace16.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace16.mp";
connectAttr "polyTweak22.out" "polySplitRing5.ip";
connectAttr "pCubeShape1.wm" "polySplitRing5.mp";
connectAttr "polyExtrudeFace16.out" "polyTweak22.ip";
connectAttr "polySplitRing5.out" "polyTweak23.ip";
connectAttr "polyTweak23.out" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "polyMirror1.ip";
connectAttr "pCubeShape1.wm" "polyMirror1.mp";
connectAttr "polyMirror1.out" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "deleteComponent14.ig";
connectAttr "HIKproperties1.msg" "Character1.propertyState";
connectAttr "HIKSkeletonGeneratorNode1.CharacterNode" "Character1.SkeletonGenerator"
		;
connectAttr "Character1_Reference.ch" "Character1.Reference";
connectAttr "Character1_Hips.ch" "Character1.Hips";
connectAttr "Character1_LeftUpLeg.ch" "Character1.LeftUpLeg";
connectAttr "Character1_LeftLeg.ch" "Character1.LeftLeg";
connectAttr "Character1_LeftFoot.ch" "Character1.LeftFoot";
connectAttr "Character1_RightUpLeg.ch" "Character1.RightUpLeg";
connectAttr "Character1_RightLeg.ch" "Character1.RightLeg";
connectAttr "Character1_RightFoot.ch" "Character1.RightFoot";
connectAttr "Character1_Spine.ch" "Character1.Spine";
connectAttr "Character1_LeftArm.ch" "Character1.LeftArm";
connectAttr "Character1_LeftForeArm.ch" "Character1.LeftForeArm";
connectAttr "Character1_LeftHand.ch" "Character1.LeftHand";
connectAttr "Character1_RightArm.ch" "Character1.RightArm";
connectAttr "Character1_RightForeArm.ch" "Character1.RightForeArm";
connectAttr "Character1_RightHand.ch" "Character1.RightHand";
connectAttr "Character1_Head.ch" "Character1.Head";
connectAttr "Character1_LeftToeBase.ch" "Character1.LeftToeBase";
connectAttr "Character1_RightToeBase.ch" "Character1.RightToeBase";
connectAttr "Character1_LeftShoulder.ch" "Character1.LeftShoulder";
connectAttr "Character1_RightShoulder.ch" "Character1.RightShoulder";
connectAttr "Character1_Neck.ch" "Character1.Neck";
connectAttr "Character1_Spine1.ch" "Character1.Spine1";
connectAttr "Character1_Spine2.ch" "Character1.Spine2";
connectAttr "Character1_LeftHandThumb1.ch" "Character1.LeftHandThumb1";
connectAttr "Character1_LeftHandThumb2.ch" "Character1.LeftHandThumb2";
connectAttr "Character1_LeftHandThumb3.ch" "Character1.LeftHandThumb3";
connectAttr "Character1_LeftHandThumb4.ch" "Character1.LeftHandThumb4";
connectAttr "Character1_LeftHandIndex1.ch" "Character1.LeftHandIndex1";
connectAttr "Character1_LeftHandIndex2.ch" "Character1.LeftHandIndex2";
connectAttr "Character1_LeftHandIndex3.ch" "Character1.LeftHandIndex3";
connectAttr "Character1_LeftHandIndex4.ch" "Character1.LeftHandIndex4";
connectAttr "Character1_LeftHandMiddle1.ch" "Character1.LeftHandMiddle1";
connectAttr "Character1_LeftHandMiddle2.ch" "Character1.LeftHandMiddle2";
connectAttr "Character1_LeftHandMiddle3.ch" "Character1.LeftHandMiddle3";
connectAttr "Character1_LeftHandMiddle4.ch" "Character1.LeftHandMiddle4";
connectAttr "Character1_LeftHandRing1.ch" "Character1.LeftHandRing1";
connectAttr "Character1_LeftHandRing2.ch" "Character1.LeftHandRing2";
connectAttr "Character1_LeftHandRing3.ch" "Character1.LeftHandRing3";
connectAttr "Character1_LeftHandRing4.ch" "Character1.LeftHandRing4";
connectAttr "Character1_LeftHandPinky1.ch" "Character1.LeftHandPinky1";
connectAttr "Character1_LeftHandPinky2.ch" "Character1.LeftHandPinky2";
connectAttr "Character1_LeftHandPinky3.ch" "Character1.LeftHandPinky3";
connectAttr "Character1_LeftHandPinky4.ch" "Character1.LeftHandPinky4";
connectAttr "Character1_RightHandThumb1.ch" "Character1.RightHandThumb1";
connectAttr "Character1_RightHandThumb2.ch" "Character1.RightHandThumb2";
connectAttr "Character1_RightHandThumb3.ch" "Character1.RightHandThumb3";
connectAttr "Character1_RightHandThumb4.ch" "Character1.RightHandThumb4";
connectAttr "Character1_RightHandIndex1.ch" "Character1.RightHandIndex1";
connectAttr "Character1_RightHandIndex2.ch" "Character1.RightHandIndex2";
connectAttr "Character1_RightHandIndex3.ch" "Character1.RightHandIndex3";
connectAttr "Character1_RightHandIndex4.ch" "Character1.RightHandIndex4";
connectAttr "Character1_RightHandMiddle1.ch" "Character1.RightHandMiddle1";
connectAttr "Character1_RightHandMiddle2.ch" "Character1.RightHandMiddle2";
connectAttr "Character1_RightHandMiddle3.ch" "Character1.RightHandMiddle3";
connectAttr "Character1_RightHandMiddle4.ch" "Character1.RightHandMiddle4";
connectAttr "Character1_RightHandRing1.ch" "Character1.RightHandRing1";
connectAttr "Character1_RightHandRing2.ch" "Character1.RightHandRing2";
connectAttr "Character1_RightHandRing3.ch" "Character1.RightHandRing3";
connectAttr "Character1_RightHandRing4.ch" "Character1.RightHandRing4";
connectAttr "Character1_RightHandPinky1.ch" "Character1.RightHandPinky1";
connectAttr "Character1_RightHandPinky2.ch" "Character1.RightHandPinky2";
connectAttr "Character1_RightHandPinky3.ch" "Character1.RightHandPinky3";
connectAttr "Character1_RightHandPinky4.ch" "Character1.RightHandPinky4";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Character1_Hips.wm" "skinCluster1.ma[0]";
connectAttr "Character1_LeftUpLeg.wm" "skinCluster1.ma[1]";
connectAttr "Character1_LeftLeg.wm" "skinCluster1.ma[2]";
connectAttr "Character1_LeftFoot.wm" "skinCluster1.ma[3]";
connectAttr "Character1_LeftToeBase.wm" "skinCluster1.ma[4]";
connectAttr "Character1_RightUpLeg.wm" "skinCluster1.ma[5]";
connectAttr "Character1_RightLeg.wm" "skinCluster1.ma[6]";
connectAttr "Character1_RightFoot.wm" "skinCluster1.ma[7]";
connectAttr "Character1_RightToeBase.wm" "skinCluster1.ma[8]";
connectAttr "Character1_Spine.wm" "skinCluster1.ma[9]";
connectAttr "Character1_Spine1.wm" "skinCluster1.ma[10]";
connectAttr "Character1_Spine2.wm" "skinCluster1.ma[11]";
connectAttr "Character1_LeftShoulder.wm" "skinCluster1.ma[12]";
connectAttr "Character1_LeftArm.wm" "skinCluster1.ma[13]";
connectAttr "Character1_LeftForeArm.wm" "skinCluster1.ma[14]";
connectAttr "Character1_LeftHand.wm" "skinCluster1.ma[15]";
connectAttr "Character1_LeftHandThumb1.wm" "skinCluster1.ma[16]";
connectAttr "Character1_LeftHandThumb2.wm" "skinCluster1.ma[17]";
connectAttr "Character1_LeftHandThumb3.wm" "skinCluster1.ma[18]";
connectAttr "Character1_LeftHandThumb4.wm" "skinCluster1.ma[19]";
connectAttr "Character1_LeftHandIndex1.wm" "skinCluster1.ma[20]";
connectAttr "Character1_LeftHandIndex2.wm" "skinCluster1.ma[21]";
connectAttr "Character1_LeftHandIndex3.wm" "skinCluster1.ma[22]";
connectAttr "Character1_LeftHandIndex4.wm" "skinCluster1.ma[23]";
connectAttr "Character1_LeftHandMiddle1.wm" "skinCluster1.ma[24]";
connectAttr "Character1_LeftHandMiddle2.wm" "skinCluster1.ma[25]";
connectAttr "Character1_LeftHandMiddle3.wm" "skinCluster1.ma[26]";
connectAttr "Character1_LeftHandMiddle4.wm" "skinCluster1.ma[27]";
connectAttr "Character1_LeftHandRing1.wm" "skinCluster1.ma[28]";
connectAttr "Character1_LeftHandRing2.wm" "skinCluster1.ma[29]";
connectAttr "Character1_LeftHandRing3.wm" "skinCluster1.ma[30]";
connectAttr "Character1_LeftHandRing4.wm" "skinCluster1.ma[31]";
connectAttr "Character1_LeftHandPinky1.wm" "skinCluster1.ma[32]";
connectAttr "Character1_LeftHandPinky2.wm" "skinCluster1.ma[33]";
connectAttr "Character1_LeftHandPinky3.wm" "skinCluster1.ma[34]";
connectAttr "Character1_LeftHandPinky4.wm" "skinCluster1.ma[35]";
connectAttr "Character1_RightShoulder.wm" "skinCluster1.ma[36]";
connectAttr "Character1_RightArm.wm" "skinCluster1.ma[37]";
connectAttr "Character1_RightForeArm.wm" "skinCluster1.ma[38]";
connectAttr "Character1_RightHand.wm" "skinCluster1.ma[39]";
connectAttr "Character1_RightHandThumb1.wm" "skinCluster1.ma[40]";
connectAttr "Character1_RightHandThumb2.wm" "skinCluster1.ma[41]";
connectAttr "Character1_RightHandThumb3.wm" "skinCluster1.ma[42]";
connectAttr "Character1_RightHandThumb4.wm" "skinCluster1.ma[43]";
connectAttr "Character1_RightHandIndex1.wm" "skinCluster1.ma[44]";
connectAttr "Character1_RightHandIndex2.wm" "skinCluster1.ma[45]";
connectAttr "Character1_RightHandIndex3.wm" "skinCluster1.ma[46]";
connectAttr "Character1_RightHandIndex4.wm" "skinCluster1.ma[47]";
connectAttr "Character1_RightHandMiddle1.wm" "skinCluster1.ma[48]";
connectAttr "Character1_RightHandMiddle2.wm" "skinCluster1.ma[49]";
connectAttr "Character1_RightHandMiddle3.wm" "skinCluster1.ma[50]";
connectAttr "Character1_RightHandMiddle4.wm" "skinCluster1.ma[51]";
connectAttr "Character1_RightHandRing1.wm" "skinCluster1.ma[52]";
connectAttr "Character1_RightHandRing2.wm" "skinCluster1.ma[53]";
connectAttr "Character1_RightHandRing3.wm" "skinCluster1.ma[54]";
connectAttr "Character1_RightHandRing4.wm" "skinCluster1.ma[55]";
connectAttr "Character1_RightHandPinky1.wm" "skinCluster1.ma[56]";
connectAttr "Character1_RightHandPinky2.wm" "skinCluster1.ma[57]";
connectAttr "Character1_RightHandPinky3.wm" "skinCluster1.ma[58]";
connectAttr "Character1_RightHandPinky4.wm" "skinCluster1.ma[59]";
connectAttr "Character1_Neck.wm" "skinCluster1.ma[60]";
connectAttr "Character1_Head.wm" "skinCluster1.ma[61]";
connectAttr "Character1_Hips.liw" "skinCluster1.lw[0]";
connectAttr "Character1_LeftUpLeg.liw" "skinCluster1.lw[1]";
connectAttr "Character1_LeftLeg.liw" "skinCluster1.lw[2]";
connectAttr "Character1_LeftFoot.liw" "skinCluster1.lw[3]";
connectAttr "Character1_LeftToeBase.liw" "skinCluster1.lw[4]";
connectAttr "Character1_RightUpLeg.liw" "skinCluster1.lw[5]";
connectAttr "Character1_RightLeg.liw" "skinCluster1.lw[6]";
connectAttr "Character1_RightFoot.liw" "skinCluster1.lw[7]";
connectAttr "Character1_RightToeBase.liw" "skinCluster1.lw[8]";
connectAttr "Character1_Spine.liw" "skinCluster1.lw[9]";
connectAttr "Character1_Spine1.liw" "skinCluster1.lw[10]";
connectAttr "Character1_Spine2.liw" "skinCluster1.lw[11]";
connectAttr "Character1_LeftShoulder.liw" "skinCluster1.lw[12]";
connectAttr "Character1_LeftArm.liw" "skinCluster1.lw[13]";
connectAttr "Character1_LeftForeArm.liw" "skinCluster1.lw[14]";
connectAttr "Character1_LeftHand.liw" "skinCluster1.lw[15]";
connectAttr "Character1_LeftHandThumb1.liw" "skinCluster1.lw[16]";
connectAttr "Character1_LeftHandThumb2.liw" "skinCluster1.lw[17]";
connectAttr "Character1_LeftHandThumb3.liw" "skinCluster1.lw[18]";
connectAttr "Character1_LeftHandThumb4.liw" "skinCluster1.lw[19]";
connectAttr "Character1_LeftHandIndex1.liw" "skinCluster1.lw[20]";
connectAttr "Character1_LeftHandIndex2.liw" "skinCluster1.lw[21]";
connectAttr "Character1_LeftHandIndex3.liw" "skinCluster1.lw[22]";
connectAttr "Character1_LeftHandIndex4.liw" "skinCluster1.lw[23]";
connectAttr "Character1_LeftHandMiddle1.liw" "skinCluster1.lw[24]";
connectAttr "Character1_LeftHandMiddle2.liw" "skinCluster1.lw[25]";
connectAttr "Character1_LeftHandMiddle3.liw" "skinCluster1.lw[26]";
connectAttr "Character1_LeftHandMiddle4.liw" "skinCluster1.lw[27]";
connectAttr "Character1_LeftHandRing1.liw" "skinCluster1.lw[28]";
connectAttr "Character1_LeftHandRing2.liw" "skinCluster1.lw[29]";
connectAttr "Character1_LeftHandRing3.liw" "skinCluster1.lw[30]";
connectAttr "Character1_LeftHandRing4.liw" "skinCluster1.lw[31]";
connectAttr "Character1_LeftHandPinky1.liw" "skinCluster1.lw[32]";
connectAttr "Character1_LeftHandPinky2.liw" "skinCluster1.lw[33]";
connectAttr "Character1_LeftHandPinky3.liw" "skinCluster1.lw[34]";
connectAttr "Character1_LeftHandPinky4.liw" "skinCluster1.lw[35]";
connectAttr "Character1_RightShoulder.liw" "skinCluster1.lw[36]";
connectAttr "Character1_RightArm.liw" "skinCluster1.lw[37]";
connectAttr "Character1_RightForeArm.liw" "skinCluster1.lw[38]";
connectAttr "Character1_RightHand.liw" "skinCluster1.lw[39]";
connectAttr "Character1_RightHandThumb1.liw" "skinCluster1.lw[40]";
connectAttr "Character1_RightHandThumb2.liw" "skinCluster1.lw[41]";
connectAttr "Character1_RightHandThumb3.liw" "skinCluster1.lw[42]";
connectAttr "Character1_RightHandThumb4.liw" "skinCluster1.lw[43]";
connectAttr "Character1_RightHandIndex1.liw" "skinCluster1.lw[44]";
connectAttr "Character1_RightHandIndex2.liw" "skinCluster1.lw[45]";
connectAttr "Character1_RightHandIndex3.liw" "skinCluster1.lw[46]";
connectAttr "Character1_RightHandIndex4.liw" "skinCluster1.lw[47]";
connectAttr "Character1_RightHandMiddle1.liw" "skinCluster1.lw[48]";
connectAttr "Character1_RightHandMiddle2.liw" "skinCluster1.lw[49]";
connectAttr "Character1_RightHandMiddle3.liw" "skinCluster1.lw[50]";
connectAttr "Character1_RightHandMiddle4.liw" "skinCluster1.lw[51]";
connectAttr "Character1_RightHandRing1.liw" "skinCluster1.lw[52]";
connectAttr "Character1_RightHandRing2.liw" "skinCluster1.lw[53]";
connectAttr "Character1_RightHandRing3.liw" "skinCluster1.lw[54]";
connectAttr "Character1_RightHandRing4.liw" "skinCluster1.lw[55]";
connectAttr "Character1_RightHandPinky1.liw" "skinCluster1.lw[56]";
connectAttr "Character1_RightHandPinky2.liw" "skinCluster1.lw[57]";
connectAttr "Character1_RightHandPinky3.liw" "skinCluster1.lw[58]";
connectAttr "Character1_RightHandPinky4.liw" "skinCluster1.lw[59]";
connectAttr "Character1_Neck.liw" "skinCluster1.lw[60]";
connectAttr "Character1_Head.liw" "skinCluster1.lw[61]";
connectAttr "Character1_Hips.obcc" "skinCluster1.ifcl[0]";
connectAttr "Character1_LeftUpLeg.obcc" "skinCluster1.ifcl[1]";
connectAttr "Character1_LeftLeg.obcc" "skinCluster1.ifcl[2]";
connectAttr "Character1_LeftFoot.obcc" "skinCluster1.ifcl[3]";
connectAttr "Character1_LeftToeBase.obcc" "skinCluster1.ifcl[4]";
connectAttr "Character1_RightUpLeg.obcc" "skinCluster1.ifcl[5]";
connectAttr "Character1_RightLeg.obcc" "skinCluster1.ifcl[6]";
connectAttr "Character1_RightFoot.obcc" "skinCluster1.ifcl[7]";
connectAttr "Character1_RightToeBase.obcc" "skinCluster1.ifcl[8]";
connectAttr "Character1_Spine.obcc" "skinCluster1.ifcl[9]";
connectAttr "Character1_Spine1.obcc" "skinCluster1.ifcl[10]";
connectAttr "Character1_Spine2.obcc" "skinCluster1.ifcl[11]";
connectAttr "Character1_LeftShoulder.obcc" "skinCluster1.ifcl[12]";
connectAttr "Character1_LeftArm.obcc" "skinCluster1.ifcl[13]";
connectAttr "Character1_LeftForeArm.obcc" "skinCluster1.ifcl[14]";
connectAttr "Character1_LeftHand.obcc" "skinCluster1.ifcl[15]";
connectAttr "Character1_LeftHandThumb1.obcc" "skinCluster1.ifcl[16]";
connectAttr "Character1_LeftHandThumb2.obcc" "skinCluster1.ifcl[17]";
connectAttr "Character1_LeftHandThumb3.obcc" "skinCluster1.ifcl[18]";
connectAttr "Character1_LeftHandThumb4.obcc" "skinCluster1.ifcl[19]";
connectAttr "Character1_LeftHandIndex1.obcc" "skinCluster1.ifcl[20]";
connectAttr "Character1_LeftHandIndex2.obcc" "skinCluster1.ifcl[21]";
connectAttr "Character1_LeftHandIndex3.obcc" "skinCluster1.ifcl[22]";
connectAttr "Character1_LeftHandIndex4.obcc" "skinCluster1.ifcl[23]";
connectAttr "Character1_LeftHandMiddle1.obcc" "skinCluster1.ifcl[24]";
connectAttr "Character1_LeftHandMiddle2.obcc" "skinCluster1.ifcl[25]";
connectAttr "Character1_LeftHandMiddle3.obcc" "skinCluster1.ifcl[26]";
connectAttr "Character1_LeftHandMiddle4.obcc" "skinCluster1.ifcl[27]";
connectAttr "Character1_LeftHandRing1.obcc" "skinCluster1.ifcl[28]";
connectAttr "Character1_LeftHandRing2.obcc" "skinCluster1.ifcl[29]";
connectAttr "Character1_LeftHandRing3.obcc" "skinCluster1.ifcl[30]";
connectAttr "Character1_LeftHandRing4.obcc" "skinCluster1.ifcl[31]";
connectAttr "Character1_LeftHandPinky1.obcc" "skinCluster1.ifcl[32]";
connectAttr "Character1_LeftHandPinky2.obcc" "skinCluster1.ifcl[33]";
connectAttr "Character1_LeftHandPinky3.obcc" "skinCluster1.ifcl[34]";
connectAttr "Character1_LeftHandPinky4.obcc" "skinCluster1.ifcl[35]";
connectAttr "Character1_RightShoulder.obcc" "skinCluster1.ifcl[36]";
connectAttr "Character1_RightArm.obcc" "skinCluster1.ifcl[37]";
connectAttr "Character1_RightForeArm.obcc" "skinCluster1.ifcl[38]";
connectAttr "Character1_RightHand.obcc" "skinCluster1.ifcl[39]";
connectAttr "Character1_RightHandThumb1.obcc" "skinCluster1.ifcl[40]";
connectAttr "Character1_RightHandThumb2.obcc" "skinCluster1.ifcl[41]";
connectAttr "Character1_RightHandThumb3.obcc" "skinCluster1.ifcl[42]";
connectAttr "Character1_RightHandThumb4.obcc" "skinCluster1.ifcl[43]";
connectAttr "Character1_RightHandIndex1.obcc" "skinCluster1.ifcl[44]";
connectAttr "Character1_RightHandIndex2.obcc" "skinCluster1.ifcl[45]";
connectAttr "Character1_RightHandIndex3.obcc" "skinCluster1.ifcl[46]";
connectAttr "Character1_RightHandIndex4.obcc" "skinCluster1.ifcl[47]";
connectAttr "Character1_RightHandMiddle1.obcc" "skinCluster1.ifcl[48]";
connectAttr "Character1_RightHandMiddle2.obcc" "skinCluster1.ifcl[49]";
connectAttr "Character1_RightHandMiddle3.obcc" "skinCluster1.ifcl[50]";
connectAttr "Character1_RightHandMiddle4.obcc" "skinCluster1.ifcl[51]";
connectAttr "Character1_RightHandRing1.obcc" "skinCluster1.ifcl[52]";
connectAttr "Character1_RightHandRing2.obcc" "skinCluster1.ifcl[53]";
connectAttr "Character1_RightHandRing3.obcc" "skinCluster1.ifcl[54]";
connectAttr "Character1_RightHandRing4.obcc" "skinCluster1.ifcl[55]";
connectAttr "Character1_RightHandPinky1.obcc" "skinCluster1.ifcl[56]";
connectAttr "Character1_RightHandPinky2.obcc" "skinCluster1.ifcl[57]";
connectAttr "Character1_RightHandPinky3.obcc" "skinCluster1.ifcl[58]";
connectAttr "Character1_RightHandPinky4.obcc" "skinCluster1.ifcl[59]";
connectAttr "Character1_Neck.obcc" "skinCluster1.ifcl[60]";
connectAttr "Character1_Head.obcc" "skinCluster1.ifcl[61]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "pCubeShape1.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "pCubeShape1.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "pCubeShape1Orig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "Character1_Reference.msg" "bindPose1.m[0]";
connectAttr "Character1_Hips.msg" "bindPose1.m[1]";
connectAttr "Character1_LeftUpLeg.msg" "bindPose1.m[2]";
connectAttr "Character1_LeftLeg.msg" "bindPose1.m[3]";
connectAttr "Character1_LeftFoot.msg" "bindPose1.m[4]";
connectAttr "Character1_LeftToeBase.msg" "bindPose1.m[5]";
connectAttr "Character1_RightUpLeg.msg" "bindPose1.m[6]";
connectAttr "Character1_RightLeg.msg" "bindPose1.m[7]";
connectAttr "Character1_RightFoot.msg" "bindPose1.m[8]";
connectAttr "Character1_RightToeBase.msg" "bindPose1.m[9]";
connectAttr "Character1_Spine.msg" "bindPose1.m[10]";
connectAttr "Character1_Spine1.msg" "bindPose1.m[11]";
connectAttr "Character1_Spine2.msg" "bindPose1.m[12]";
connectAttr "Character1_LeftShoulder.msg" "bindPose1.m[13]";
connectAttr "Character1_LeftArm.msg" "bindPose1.m[14]";
connectAttr "Character1_LeftForeArm.msg" "bindPose1.m[15]";
connectAttr "Character1_LeftHand.msg" "bindPose1.m[16]";
connectAttr "Character1_LeftHandThumb1.msg" "bindPose1.m[17]";
connectAttr "Character1_LeftHandThumb2.msg" "bindPose1.m[18]";
connectAttr "Character1_LeftHandThumb3.msg" "bindPose1.m[19]";
connectAttr "Character1_LeftHandThumb4.msg" "bindPose1.m[20]";
connectAttr "Character1_LeftHandIndex1.msg" "bindPose1.m[21]";
connectAttr "Character1_LeftHandIndex2.msg" "bindPose1.m[22]";
connectAttr "Character1_LeftHandIndex3.msg" "bindPose1.m[23]";
connectAttr "Character1_LeftHandIndex4.msg" "bindPose1.m[24]";
connectAttr "Character1_LeftHandMiddle1.msg" "bindPose1.m[25]";
connectAttr "Character1_LeftHandMiddle2.msg" "bindPose1.m[26]";
connectAttr "Character1_LeftHandMiddle3.msg" "bindPose1.m[27]";
connectAttr "Character1_LeftHandMiddle4.msg" "bindPose1.m[28]";
connectAttr "Character1_LeftHandRing1.msg" "bindPose1.m[29]";
connectAttr "Character1_LeftHandRing2.msg" "bindPose1.m[30]";
connectAttr "Character1_LeftHandRing3.msg" "bindPose1.m[31]";
connectAttr "Character1_LeftHandRing4.msg" "bindPose1.m[32]";
connectAttr "Character1_LeftHandPinky1.msg" "bindPose1.m[33]";
connectAttr "Character1_LeftHandPinky2.msg" "bindPose1.m[34]";
connectAttr "Character1_LeftHandPinky3.msg" "bindPose1.m[35]";
connectAttr "Character1_LeftHandPinky4.msg" "bindPose1.m[36]";
connectAttr "Character1_RightShoulder.msg" "bindPose1.m[37]";
connectAttr "Character1_RightArm.msg" "bindPose1.m[38]";
connectAttr "Character1_RightForeArm.msg" "bindPose1.m[39]";
connectAttr "Character1_RightHand.msg" "bindPose1.m[40]";
connectAttr "Character1_RightHandThumb1.msg" "bindPose1.m[41]";
connectAttr "Character1_RightHandThumb2.msg" "bindPose1.m[42]";
connectAttr "Character1_RightHandThumb3.msg" "bindPose1.m[43]";
connectAttr "Character1_RightHandThumb4.msg" "bindPose1.m[44]";
connectAttr "Character1_RightHandIndex1.msg" "bindPose1.m[45]";
connectAttr "Character1_RightHandIndex2.msg" "bindPose1.m[46]";
connectAttr "Character1_RightHandIndex3.msg" "bindPose1.m[47]";
connectAttr "Character1_RightHandIndex4.msg" "bindPose1.m[48]";
connectAttr "Character1_RightHandMiddle1.msg" "bindPose1.m[49]";
connectAttr "Character1_RightHandMiddle2.msg" "bindPose1.m[50]";
connectAttr "Character1_RightHandMiddle3.msg" "bindPose1.m[51]";
connectAttr "Character1_RightHandMiddle4.msg" "bindPose1.m[52]";
connectAttr "Character1_RightHandRing1.msg" "bindPose1.m[53]";
connectAttr "Character1_RightHandRing2.msg" "bindPose1.m[54]";
connectAttr "Character1_RightHandRing3.msg" "bindPose1.m[55]";
connectAttr "Character1_RightHandRing4.msg" "bindPose1.m[56]";
connectAttr "Character1_RightHandPinky1.msg" "bindPose1.m[57]";
connectAttr "Character1_RightHandPinky2.msg" "bindPose1.m[58]";
connectAttr "Character1_RightHandPinky3.msg" "bindPose1.m[59]";
connectAttr "Character1_RightHandPinky4.msg" "bindPose1.m[60]";
connectAttr "Character1_Neck.msg" "bindPose1.m[61]";
connectAttr "Character1_Head.msg" "bindPose1.m[62]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[1]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[1]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[16]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[16]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.m[27]" "bindPose1.p[28]";
connectAttr "bindPose1.m[16]" "bindPose1.p[29]";
connectAttr "bindPose1.m[29]" "bindPose1.p[30]";
connectAttr "bindPose1.m[30]" "bindPose1.p[31]";
connectAttr "bindPose1.m[31]" "bindPose1.p[32]";
connectAttr "bindPose1.m[16]" "bindPose1.p[33]";
connectAttr "bindPose1.m[33]" "bindPose1.p[34]";
connectAttr "bindPose1.m[34]" "bindPose1.p[35]";
connectAttr "bindPose1.m[35]" "bindPose1.p[36]";
connectAttr "bindPose1.m[12]" "bindPose1.p[37]";
connectAttr "bindPose1.m[37]" "bindPose1.p[38]";
connectAttr "bindPose1.m[38]" "bindPose1.p[39]";
connectAttr "bindPose1.m[39]" "bindPose1.p[40]";
connectAttr "bindPose1.m[40]" "bindPose1.p[41]";
connectAttr "bindPose1.m[41]" "bindPose1.p[42]";
connectAttr "bindPose1.m[42]" "bindPose1.p[43]";
connectAttr "bindPose1.m[43]" "bindPose1.p[44]";
connectAttr "bindPose1.m[40]" "bindPose1.p[45]";
connectAttr "bindPose1.m[45]" "bindPose1.p[46]";
connectAttr "bindPose1.m[46]" "bindPose1.p[47]";
connectAttr "bindPose1.m[47]" "bindPose1.p[48]";
connectAttr "bindPose1.m[40]" "bindPose1.p[49]";
connectAttr "bindPose1.m[49]" "bindPose1.p[50]";
connectAttr "bindPose1.m[50]" "bindPose1.p[51]";
connectAttr "bindPose1.m[51]" "bindPose1.p[52]";
connectAttr "bindPose1.m[40]" "bindPose1.p[53]";
connectAttr "bindPose1.m[53]" "bindPose1.p[54]";
connectAttr "bindPose1.m[54]" "bindPose1.p[55]";
connectAttr "bindPose1.m[55]" "bindPose1.p[56]";
connectAttr "bindPose1.m[40]" "bindPose1.p[57]";
connectAttr "bindPose1.m[57]" "bindPose1.p[58]";
connectAttr "bindPose1.m[58]" "bindPose1.p[59]";
connectAttr "bindPose1.m[59]" "bindPose1.p[60]";
connectAttr "bindPose1.m[12]" "bindPose1.p[61]";
connectAttr "bindPose1.m[61]" "bindPose1.p[62]";
connectAttr "Character1_Hips.bps" "bindPose1.wm[1]";
connectAttr "Character1_LeftUpLeg.bps" "bindPose1.wm[2]";
connectAttr "Character1_LeftLeg.bps" "bindPose1.wm[3]";
connectAttr "Character1_LeftFoot.bps" "bindPose1.wm[4]";
connectAttr "Character1_LeftToeBase.bps" "bindPose1.wm[5]";
connectAttr "Character1_RightUpLeg.bps" "bindPose1.wm[6]";
connectAttr "Character1_RightLeg.bps" "bindPose1.wm[7]";
connectAttr "Character1_RightFoot.bps" "bindPose1.wm[8]";
connectAttr "Character1_RightToeBase.bps" "bindPose1.wm[9]";
connectAttr "Character1_Spine.bps" "bindPose1.wm[10]";
connectAttr "Character1_Spine1.bps" "bindPose1.wm[11]";
connectAttr "Character1_Spine2.bps" "bindPose1.wm[12]";
connectAttr "Character1_LeftShoulder.bps" "bindPose1.wm[13]";
connectAttr "Character1_LeftArm.bps" "bindPose1.wm[14]";
connectAttr "Character1_LeftForeArm.bps" "bindPose1.wm[15]";
connectAttr "Character1_LeftHand.bps" "bindPose1.wm[16]";
connectAttr "Character1_LeftHandThumb1.bps" "bindPose1.wm[17]";
connectAttr "Character1_LeftHandThumb2.bps" "bindPose1.wm[18]";
connectAttr "Character1_LeftHandThumb3.bps" "bindPose1.wm[19]";
connectAttr "Character1_LeftHandThumb4.bps" "bindPose1.wm[20]";
connectAttr "Character1_LeftHandIndex1.bps" "bindPose1.wm[21]";
connectAttr "Character1_LeftHandIndex2.bps" "bindPose1.wm[22]";
connectAttr "Character1_LeftHandIndex3.bps" "bindPose1.wm[23]";
connectAttr "Character1_LeftHandIndex4.bps" "bindPose1.wm[24]";
connectAttr "Character1_LeftHandMiddle1.bps" "bindPose1.wm[25]";
connectAttr "Character1_LeftHandMiddle2.bps" "bindPose1.wm[26]";
connectAttr "Character1_LeftHandMiddle3.bps" "bindPose1.wm[27]";
connectAttr "Character1_LeftHandMiddle4.bps" "bindPose1.wm[28]";
connectAttr "Character1_LeftHandRing1.bps" "bindPose1.wm[29]";
connectAttr "Character1_LeftHandRing2.bps" "bindPose1.wm[30]";
connectAttr "Character1_LeftHandRing3.bps" "bindPose1.wm[31]";
connectAttr "Character1_LeftHandRing4.bps" "bindPose1.wm[32]";
connectAttr "Character1_LeftHandPinky1.bps" "bindPose1.wm[33]";
connectAttr "Character1_LeftHandPinky2.bps" "bindPose1.wm[34]";
connectAttr "Character1_LeftHandPinky3.bps" "bindPose1.wm[35]";
connectAttr "Character1_LeftHandPinky4.bps" "bindPose1.wm[36]";
connectAttr "Character1_RightShoulder.bps" "bindPose1.wm[37]";
connectAttr "Character1_RightArm.bps" "bindPose1.wm[38]";
connectAttr "Character1_RightForeArm.bps" "bindPose1.wm[39]";
connectAttr "Character1_RightHand.bps" "bindPose1.wm[40]";
connectAttr "Character1_RightHandThumb1.bps" "bindPose1.wm[41]";
connectAttr "Character1_RightHandThumb2.bps" "bindPose1.wm[42]";
connectAttr "Character1_RightHandThumb3.bps" "bindPose1.wm[43]";
connectAttr "Character1_RightHandThumb4.bps" "bindPose1.wm[44]";
connectAttr "Character1_RightHandIndex1.bps" "bindPose1.wm[45]";
connectAttr "Character1_RightHandIndex2.bps" "bindPose1.wm[46]";
connectAttr "Character1_RightHandIndex3.bps" "bindPose1.wm[47]";
connectAttr "Character1_RightHandIndex4.bps" "bindPose1.wm[48]";
connectAttr "Character1_RightHandMiddle1.bps" "bindPose1.wm[49]";
connectAttr "Character1_RightHandMiddle2.bps" "bindPose1.wm[50]";
connectAttr "Character1_RightHandMiddle3.bps" "bindPose1.wm[51]";
connectAttr "Character1_RightHandMiddle4.bps" "bindPose1.wm[52]";
connectAttr "Character1_RightHandRing1.bps" "bindPose1.wm[53]";
connectAttr "Character1_RightHandRing2.bps" "bindPose1.wm[54]";
connectAttr "Character1_RightHandRing3.bps" "bindPose1.wm[55]";
connectAttr "Character1_RightHandRing4.bps" "bindPose1.wm[56]";
connectAttr "Character1_RightHandPinky1.bps" "bindPose1.wm[57]";
connectAttr "Character1_RightHandPinky2.bps" "bindPose1.wm[58]";
connectAttr "Character1_RightHandPinky3.bps" "bindPose1.wm[59]";
connectAttr "Character1_RightHandPinky4.bps" "bindPose1.wm[60]";
connectAttr "Character1_Neck.bps" "bindPose1.wm[61]";
connectAttr "Character1_Head.bps" "bindPose1.wm[62]";
connectAttr "staff_simple:blinn1.oc" "staff_simple:lambert2SG.ss";
connectAttr "staff_simple:lambert2SG.msg" "staff_simple:materialInfo1.sg";
connectAttr "staff_simple:blinn1.msg" "staff_simple:materialInfo1.m";
connectAttr "staff_simple:wood1.msg" "staff_simple:materialInfo1.t" -na;
connectAttr "staff_simple:wood1.oc" "staff_simple:blinn1.c";
connectAttr "staff_simple:place3dTexture1.wim" "staff_simple:wood1.pm";
connectAttr "staff_simple1:blinn1.oc" "staff_simple1:lambert2SG.ss";
connectAttr "staff_simple1:StaffShape.iog" "staff_simple1:lambert2SG.dsm" -na;
connectAttr "staff_simple1:lambert2SG.msg" "staff_simple1:materialInfo1.sg";
connectAttr "staff_simple1:blinn1.msg" "staff_simple1:materialInfo1.m";
connectAttr "staff_simple1:wood1.msg" "staff_simple1:materialInfo1.t" -na;
connectAttr "staff_simple1:wood1.oc" "staff_simple1:blinn1.c";
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr "staff_simple:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "staff_simple1:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "staff_simple:blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "staff_simple1:blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "staff_simple:wood1.msg" ":defaultTextureList1.tx" -na;
connectAttr "staff_simple1:wood1.msg" ":defaultTextureList1.tx" -na;
connectAttr "staff_simple:place3dTexture1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Shave_animation.ma
