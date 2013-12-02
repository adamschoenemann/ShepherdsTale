//Maya ASCII 2014 scene
//Name: CASTLE.ma
//Last modified: Thu, Nov 28, 2013 10:33:18 AM
//Codeset: 1252
requires maya "2014";
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
createNode transform -n "pCylinder1";
createNode transform -n "transform1" -p "pCylinder1";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape1" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt[221:241]" -type "float3"  -4.2925472 17.725359 1.3947235 
		-3.6514599 17.725359 2.6529715 -1.4541642e-006 17.725359 5.816657e-006 -2.6529875 
		17.725359 3.6514237 -1.3947746 17.725344 4.2924662 -1.4541642e-006 17.725344 4.5134292 
		1.3947746 17.725344 4.2925129 2.6529849 17.725359 3.6514931 3.6514218 17.725359 2.652983 
		4.292511 17.725344 1.394747 4.5134563 17.725359 1.7449973e-005 4.2925458 17.725359 
		-1.3947119 3.6514578 17.725359 -2.6528671 2.6529403 17.725359 -3.6514006 1.3947833 
		17.725359 -4.2925367 5.3804069e-005 17.725344 -4.5134292 -1.3947227 17.725344 -4.292501 
		-2.6529639 17.725344 -3.6514361 -3.6514897 17.725359 -2.6529598 -4.2925458 17.725359 
		-1.394747 -4.5134563 17.725359 -5.8166574e-006;
createNode transform -n "pSphere3";
	setAttr ".t" -type "double3" 0 178.24196803873883 0 ;
	setAttr ".s" -type "double3" 0.16952658211447755 0.16952658211447755 0.16952658211447755 ;
createNode transform -n "transform2" -p "pSphere3";
	setAttr ".v" no;
createNode mesh -n "pSphereShape3" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Castle";
createNode transform -n "Tarvern_Small" -p "Castle";
	setAttr ".t" -type "double3" 4.8087302218811487 30.383092430462618 -10.108765139599001 ;
	setAttr ".r" -type "double3" 0 -39.796415001636333 0 ;
	setAttr ".s" -type "double3" 0.013315518013274706 0.013315518013274706 0.013315518013274706 ;
createNode mesh -n "Tarvern_SmallShape" -p "Tarvern_Small";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 55 ".uvst[0].uvsp[0:54]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.50234884 0.25 0.50234884 0.5 0.50234884 0.75 0.50234884
		 0 0.50234884 1 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.71812153 0.25 0.625 0.34312153
		 0.71812153 0.25 0.50234884 0.34312153 0.28187847 0.25 0.375 0.34312153 0.28187847
		 0 0.375 0.90687847 0.50234884 0.90687847 0.625 0.90687847 0.71812153 0 0.71812153
		 0 0.79273844 0.25 0.625 0.41773844 0.79273844 0.25 0.50234878 0.41773844 0.20726155
		 0.25 0.375 0.41773844 0.20726155 0 0.375 0.83226156 0.50234884 0.83226156 0.625 0.83226156
		 0.79273844 0 0.79273844 0 0.625 0 0.71812153 0 0.71812153 0.25 0.625 0.25 0.79273844
		 0.25 0.79273844 0 0.875 0 0.875 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  -230.43438721 -490.92089844 392.42749023
		 230.43438721 -490.92089844 392.42749023 -230.43438721 490.92089844 392.42749023 230.43438721 490.92089844 392.42749023
		 -230.43438721 490.92089844 -172.98706055 230.43438721 490.92089844 -172.98706055
		 -230.43438721 -490.92089844 -172.98706055 230.43438721 -490.92089844 -172.98706055
		 4.33007813 888.65197754 392.42749023 4.33007813 888.65197754 -172.98706055 4.33007813 -490.92089844 -172.98706055
		 4.33007813 -490.92089844 392.42749023 230.43438721 294.50610352 -86.57006836 230.43438721 294.50610352 306.010498047
		 230.43438721 411.59460449 -86.57006836 230.43438721 411.59460449 306.010498047 230.43438721 411.59460449 159.77978516
		 230.43438721 490.92089844 181.81835938 4.33007813 888.65197754 181.81835938 -230.43438721 490.92089844 181.81835938
		 -230.43438721 -490.92089844 181.81835938 4.33007813 -490.92089844 181.81835938 230.43438721 -490.92089844 181.81835938
		 230.43438721 294.50610352 159.77978516 230.43438721 411.59460449 42.60717773 230.43438721 490.92089844 13.060546875
		 4.33007813 888.65197754 13.060546875 -230.43438721 490.92089844 13.060546875 -230.43438721 -490.92089844 13.060546875
		 4.33007813 -490.92089844 13.060546875 230.43438721 -490.92089844 13.060546875 230.43438721 294.50610352 42.60693359
		 -179.45513916 294.50610352 159.77978516 -179.45513916 294.50610352 306.010498047
		 -179.45513916 411.59460449 159.77978516 -179.45513916 411.59460449 306.010498047
		 -179.45513916 294.50610352 42.60693359 -179.45513916 411.59460449 42.60717773 -179.45513916 294.50610352 -86.57006836
		 -179.45513916 411.59460449 -86.57006836;
	setAttr -s 76 ".ed[0:75]"  0 11 0 2 8 0 4 9 0 6 10 0 0 2 0 1 3 0 2 19 0
		 3 17 0 4 6 0 5 7 0 6 28 0 7 30 0 8 3 0 9 5 0 8 18 1 10 7 0 9 10 1 11 1 0 10 29 1
		 11 8 1 7 12 0 1 13 0 12 31 0 5 14 0 14 12 0 3 15 0 15 16 0 13 15 0 16 24 0 17 25 0
		 16 17 1 18 26 1 17 18 1 19 27 0 18 19 1 20 0 0 19 20 1 21 11 1 20 21 1 22 1 0 21 22 1
		 23 13 0 22 23 1 23 16 0 24 14 0 25 5 0 24 25 1 26 9 1 25 26 1 27 4 0 26 27 1 28 20 0
		 27 28 1 29 21 1 28 29 1 30 22 0 29 30 1 31 23 0 30 31 1 31 24 0 23 32 0 13 33 0 32 33 0
		 16 34 0 32 34 0 15 35 0 35 34 0 33 35 0 31 36 0 24 37 0 36 37 0 12 38 0 38 36 0 14 39 0
		 39 38 0 37 39 0;
	setAttr -s 38 -ch 152 ".fc[0:37]" -type "polyFaces" 
		f 4 0 19 -2 -5
		mu 0 4 0 17 14 2
		f 4 1 14 34 -7
		mu 0 4 2 14 26 28
		f 4 2 16 -4 -9
		mu 0 4 4 15 16 6
		f 4 38 37 -1 -36
		mu 0 4 30 31 18 8
		f 4 -63 64 -67 -68
		mu 0 4 47 48 49 50
		f 4 35 4 6 36
		mu 0 4 29 0 2 27
		f 4 12 7 32 -15
		mu 0 4 14 3 24 26
		f 4 -17 13 9 -16
		mu 0 4 16 15 5 7
		f 4 -38 40 39 -18
		mu 0 4 18 31 32 9
		f 4 -20 17 5 -13
		mu 0 4 14 17 1 3
		f 4 -40 42 41 -22
		mu 0 4 1 33 34 19
		f 4 -10 23 24 -21
		mu 0 4 10 11 21 20
		f 4 -8 25 26 30
		mu 0 4 25 3 22 23
		f 4 -6 21 27 -26
		mu 0 4 3 1 19 22
		f 4 -30 -31 28 46
		mu 0 4 37 25 23 35
		f 4 -33 29 48 -32
		mu 0 4 26 24 36 38
		f 4 -35 31 50 -34
		mu 0 4 28 26 38 40
		f 4 51 -37 33 52
		mu 0 4 41 29 27 39
		f 4 54 53 -39 -52
		mu 0 4 42 43 31 30
		f 4 -41 -54 56 55
		mu 0 4 32 31 43 44
		f 4 -43 -56 58 57
		mu 0 4 34 33 45 46
		f 4 -44 -58 59 -29
		mu 0 4 23 34 46 35
		f 4 -46 -47 44 -24
		mu 0 4 11 37 35 21
		f 4 -49 45 -14 -48
		mu 0 4 38 36 5 15
		f 4 -51 47 -3 -50
		mu 0 4 40 38 15 4
		f 4 10 -53 49 8
		mu 0 4 12 41 39 13
		f 4 3 18 -55 -11
		mu 0 4 6 16 43 42
		f 4 -57 -19 15 11
		mu 0 4 44 43 16 7
		f 4 -59 -12 20 22
		mu 0 4 46 45 10 20
		f 4 -71 -73 -75 -76
		mu 0 4 51 52 53 54
		f 4 -42 60 62 -62
		mu 0 4 19 34 48 47
		f 4 43 63 -65 -61
		mu 0 4 34 23 49 48
		f 4 -27 65 66 -64
		mu 0 4 23 22 50 49
		f 4 -28 61 67 -66
		mu 0 4 22 19 47 50
		f 4 -60 68 70 -70
		mu 0 4 35 46 52 51
		f 4 -23 71 72 -69
		mu 0 4 46 20 53 52
		f 4 -25 73 74 -72
		mu 0 4 20 21 54 53
		f 4 -45 69 75 -74
		mu 0 4 21 35 51 54;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tavern_Big" -p "Castle";
	setAttr ".t" -type "double3" -17.673585422883377 36.981262913017702 -20.701808040032745 ;
	setAttr ".r" -type "double3" 0 -41.694878726039256 0 ;
	setAttr ".s" -type "double3" 0.024390427916941102 0.024390427916941102 0.024390427916941102 ;
createNode mesh -n "Tavern_BigShape" -p "Tavern_Big";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 55 ".uvst[0].uvsp[0:54]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.50234884 0.25 0.50234884 0.5 0.50234884 0.75 0.50234884
		 0 0.50234884 1 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.71812153 0.25 0.625 0.34312153
		 0.71812153 0.25 0.50234884 0.34312153 0.28187847 0.25 0.375 0.34312153 0.28187847
		 0 0.375 0.90687847 0.50234884 0.90687847 0.625 0.90687847 0.71812153 0 0.71812153
		 0 0.79273844 0.25 0.625 0.41773844 0.79273844 0.25 0.50234878 0.41773844 0.20726155
		 0.25 0.375 0.41773844 0.20726155 0 0.375 0.83226156 0.50234884 0.83226156 0.625 0.83226156
		 0.79273844 0 0.79273844 0 0.625 0 0.71812153 0 0.71812153 0.25 0.625 0.25 0.79273844
		 0.25 0.79273844 0 0.875 0 0.875 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  -230.43438721 -490.92089844 392.42749023
		 230.43438721 -490.92089844 392.42749023 -230.43438721 490.92089844 392.42749023 230.43438721 490.92089844 392.42749023
		 -230.43438721 490.92089844 -172.98706055 230.43438721 490.92089844 -172.98706055
		 -230.43438721 -490.92089844 -172.98706055 230.43438721 -490.92089844 -172.98706055
		 4.33007813 888.65197754 392.42749023 4.33007813 888.65197754 -172.98706055 4.33007813 -490.92089844 -172.98706055
		 4.33007813 -490.92089844 392.42749023 230.43438721 294.50610352 -86.57006836 230.43438721 294.50610352 306.010498047
		 230.43438721 411.59460449 -86.57006836 230.43438721 411.59460449 306.010498047 230.43438721 411.59460449 159.77978516
		 230.43438721 490.92089844 181.81835938 4.33007813 888.65197754 181.81835938 -230.43438721 490.92089844 181.81835938
		 -230.43438721 -490.92089844 181.81835938 4.33007813 -490.92089844 181.81835938 230.43438721 -490.92089844 181.81835938
		 230.43438721 294.50610352 159.77978516 230.43438721 411.59460449 42.60717773 230.43438721 490.92089844 13.060546875
		 4.33007813 888.65197754 13.060546875 -230.43438721 490.92089844 13.060546875 -230.43438721 -490.92089844 13.060546875
		 4.33007813 -490.92089844 13.060546875 230.43438721 -490.92089844 13.060546875 230.43438721 294.50610352 42.60693359
		 -179.45513916 294.50610352 159.77978516 -179.45513916 294.50610352 306.010498047
		 -179.45513916 411.59460449 159.77978516 -179.45513916 411.59460449 306.010498047
		 -179.45513916 294.50610352 42.60693359 -179.45513916 411.59460449 42.60717773 -179.45513916 294.50610352 -86.57006836
		 -179.45513916 411.59460449 -86.57006836;
	setAttr -s 76 ".ed[0:75]"  0 11 0 2 8 0 4 9 0 6 10 0 0 2 0 1 3 0 2 19 0
		 3 17 0 4 6 0 5 7 0 6 28 0 7 30 0 8 3 0 9 5 0 8 18 1 10 7 0 9 10 1 11 1 0 10 29 1
		 11 8 1 7 12 0 1 13 0 12 31 0 5 14 0 14 12 0 3 15 0 15 16 0 13 15 0 16 24 0 17 25 0
		 16 17 1 18 26 1 17 18 1 19 27 0 18 19 1 20 0 0 19 20 1 21 11 1 20 21 1 22 1 0 21 22 1
		 23 13 0 22 23 1 23 16 0 24 14 0 25 5 0 24 25 1 26 9 1 25 26 1 27 4 0 26 27 1 28 20 0
		 27 28 1 29 21 1 28 29 1 30 22 0 29 30 1 31 23 0 30 31 1 31 24 0 23 32 0 13 33 0 32 33 0
		 16 34 0 32 34 0 15 35 0 35 34 0 33 35 0 31 36 0 24 37 0 36 37 0 12 38 0 38 36 0 14 39 0
		 39 38 0 37 39 0;
	setAttr -s 38 -ch 152 ".fc[0:37]" -type "polyFaces" 
		f 4 0 19 -2 -5
		mu 0 4 0 17 14 2
		f 4 1 14 34 -7
		mu 0 4 2 14 26 28
		f 4 2 16 -4 -9
		mu 0 4 4 15 16 6
		f 4 38 37 -1 -36
		mu 0 4 30 31 18 8
		f 4 -63 64 -67 -68
		mu 0 4 47 48 49 50
		f 4 35 4 6 36
		mu 0 4 29 0 2 27
		f 4 12 7 32 -15
		mu 0 4 14 3 24 26
		f 4 -17 13 9 -16
		mu 0 4 16 15 5 7
		f 4 -38 40 39 -18
		mu 0 4 18 31 32 9
		f 4 -20 17 5 -13
		mu 0 4 14 17 1 3
		f 4 -40 42 41 -22
		mu 0 4 1 33 34 19
		f 4 -10 23 24 -21
		mu 0 4 10 11 21 20
		f 4 -8 25 26 30
		mu 0 4 25 3 22 23
		f 4 -6 21 27 -26
		mu 0 4 3 1 19 22
		f 4 -30 -31 28 46
		mu 0 4 37 25 23 35
		f 4 -33 29 48 -32
		mu 0 4 26 24 36 38
		f 4 -35 31 50 -34
		mu 0 4 28 26 38 40
		f 4 51 -37 33 52
		mu 0 4 41 29 27 39
		f 4 54 53 -39 -52
		mu 0 4 42 43 31 30
		f 4 -41 -54 56 55
		mu 0 4 32 31 43 44
		f 4 -43 -56 58 57
		mu 0 4 34 33 45 46
		f 4 -44 -58 59 -29
		mu 0 4 23 34 46 35
		f 4 -46 -47 44 -24
		mu 0 4 11 37 35 21
		f 4 -49 45 -14 -48
		mu 0 4 38 36 5 15
		f 4 -51 47 -3 -50
		mu 0 4 40 38 15 4
		f 4 10 -53 49 8
		mu 0 4 12 41 39 13
		f 4 3 18 -55 -11
		mu 0 4 6 16 43 42
		f 4 -57 -19 15 11
		mu 0 4 44 43 16 7
		f 4 -59 -12 20 22
		mu 0 4 46 45 10 20
		f 4 -71 -73 -75 -76
		mu 0 4 51 52 53 54
		f 4 -42 60 62 -62
		mu 0 4 19 34 48 47
		f 4 43 63 -65 -61
		mu 0 4 34 23 49 48
		f 4 -27 65 66 -64
		mu 0 4 23 22 50 49
		f 4 -28 61 67 -66
		mu 0 4 22 19 47 50
		f 4 -60 68 70 -70
		mu 0 4 35 46 52 51
		f 4 -23 71 72 -69
		mu 0 4 46 20 53 52
		f 4 -25 73 74 -72
		mu 0 4 20 21 54 53
		f 4 -45 69 75 -74
		mu 0 4 21 35 51 54;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tower_big" -p "Castle";
	setAttr ".t" -type "double3" -9.606644482272543 61.391801529192982 -1.3259349714587643 ;
	setAttr ".r" -type "double3" 10.391194630775031 0 0 ;
	setAttr ".s" -type "double3" 0.29797576382790208 0.29797576382790208 0.29797576382790208 ;
createNode mesh -n "Tower_bigShape" -p "Tower_big";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 662 ".pt";
	setAttr ".pt[0]" -type "float3" 14.73928 -2.0800138 -0.59617364 ;
	setAttr ".pt[1]" -type "float3" 14.739689 -2.0508566 -0.59525669 ;
	setAttr ".pt[2]" -type "float3" 14.746007 -1.9861517 -0.59452879 ;
	setAttr ".pt[3]" -type "float3" 14.757616 -1.8922335 -0.59405923 ;
	setAttr ".pt[4]" -type "float3" 14.773378 -1.7782961 -0.59389782 ;
	setAttr ".pt[5]" -type "float3" 14.791754 -1.6554921 -0.59405923 ;
	setAttr ".pt[6]" -type "float3" 14.810942 -1.5358423 -0.59452879 ;
	setAttr ".pt[7]" -type "float3" 14.829067 -1.4310589 -0.59525669 ;
	setAttr ".pt[8]" -type "float3" 14.84435 -1.3513982 -0.59617364 ;
	setAttr ".pt[9]" -type "float3" 14.855297 -1.3046592 -0.59719193 ;
	setAttr ".pt[10]" -type "float3" 14.860838 -1.2954161 -0.59820926 ;
	setAttr ".pt[11]" -type "float3" 14.86043 -1.3245739 -0.5991267 ;
	setAttr ".pt[12]" -type "float3" 14.854111 -1.3892784 -0.59985518 ;
	setAttr ".pt[13]" -type "float3" 14.842501 -1.4831958 -0.60032189 ;
	setAttr ".pt[14]" -type "float3" 14.826738 -1.5971334 -0.60048413 ;
	setAttr ".pt[15]" -type "float3" 14.808362 -1.7199373 -0.60032189 ;
	setAttr ".pt[16]" -type "float3" 14.789175 -1.8395875 -0.59985518 ;
	setAttr ".pt[17]" -type "float3" 14.77105 -1.944371 -0.5991267 ;
	setAttr ".pt[18]" -type "float3" 14.755769 -2.0240316 -0.59820926 ;
	setAttr ".pt[19]" -type "float3" 14.74482 -2.0707707 -0.59719193 ;
	setAttr ".pt[20]" -type "float3" 14.769476 -2.4763277 -0.6172936 ;
	setAttr ".pt[21]" -type "float3" 14.770282 -2.4187295 -0.61548018 ;
	setAttr ".pt[22]" -type "float3" 14.782765 -2.2909141 -0.61404276 ;
	setAttr ".pt[23]" -type "float3" 14.805696 -2.105391 -0.61311793 ;
	setAttr ".pt[24]" -type "float3" 14.836837 -1.8803219 -0.61279976 ;
	setAttr ".pt[25]" -type "float3" 14.873133 -1.637737 -0.61311793 ;
	setAttr ".pt[26]" -type "float3" 14.911038 -1.4013838 -0.61404276 ;
	setAttr ".pt[27]" -type "float3" 14.946837 -1.1943965 -0.61548018 ;
	setAttr ".pt[28]" -type "float3" 14.977029 -1.0370375 -0.6172936 ;
	setAttr ".pt[29]" -type "float3" 14.998653 -0.9447099 -0.61930418 ;
	setAttr ".pt[30]" -type "float3" 15.0096 -0.92645109 -0.62131393 ;
	setAttr ".pt[31]" -type "float3" 15.008792 -0.98404849 -0.62312531 ;
	setAttr ".pt[32]" -type "float3" 14.996311 -1.1118648 -0.62456548 ;
	setAttr ".pt[33]" -type "float3" 14.973378 -1.2973869 -0.62548721 ;
	setAttr ".pt[34]" -type "float3" 14.942241 -1.5224564 -0.62580693 ;
	setAttr ".pt[35]" -type "float3" 14.905942 -1.7650408 -0.62548721 ;
	setAttr ".pt[36]" -type "float3" 14.868037 -2.0013945 -0.62456548 ;
	setAttr ".pt[37]" -type "float3" 14.832237 -2.2083814 -0.62312531 ;
	setAttr ".pt[38]" -type "float3" 14.802048 -2.365741 -0.62131393 ;
	setAttr ".pt[39]" -type "float3" 14.780422 -2.4580688 -0.61930418 ;
	setAttr ".pt[40]" -type "float3" 14.859836 -2.8623025 -0.65260017 ;
	setAttr ".pt[41]" -type "float3" 14.861024 -2.777683 -0.64993525 ;
	setAttr ".pt[42]" -type "float3" 14.87936 -2.5899026 -0.64782071 ;
	setAttr ".pt[43]" -type "float3" 14.91305 -2.3173428 -0.64646232 ;
	setAttr ".pt[44]" -type "float3" 14.958798 -1.9866836 -0.6459955 ;
	setAttr ".pt[45]" -type "float3" 15.012126 -1.6302918 -0.64646232 ;
	setAttr ".pt[46]" -type "float3" 15.067812 -1.2830546 -0.64782071 ;
	setAttr ".pt[47]" -type "float3" 15.120407 -0.97896075 -0.64993525 ;
	setAttr ".pt[48]" -type "float3" 15.16476 -0.7477774 -0.65260017 ;
	setAttr ".pt[49]" -type "float3" 15.196533 -0.61213434 -0.65555084 ;
	setAttr ".pt[50]" -type "float3" 15.212614 -0.5853101 -0.65850425 ;
	setAttr ".pt[51]" -type "float3" 15.211427 -0.66992927 -0.66116714 ;
	setAttr ".pt[52]" -type "float3" 15.19309 -0.85770988 -0.66328287 ;
	setAttr ".pt[53]" -type "float3" 15.1594 -1.1302688 -0.66463697 ;
	setAttr ".pt[54]" -type "float3" 15.113651 -1.4609282 -0.66510701 ;
	setAttr ".pt[55]" -type "float3" 15.060325 -1.8173192 -0.66463697 ;
	setAttr ".pt[56]" -type "float3" 15.004638 -2.1645575 -0.66328287 ;
	setAttr ".pt[57]" -type "float3" 14.952044 -2.4686508 -0.66116714 ;
	setAttr ".pt[58]" -type "float3" 14.907689 -2.6998343 -0.65850425 ;
	setAttr ".pt[59]" -type "float3" 14.875916 -2.8354766 -0.65555084 ;
	setAttr ".pt[60]" -type "float3" 15.008129 -3.2284327 -0.70122004 ;
	setAttr ".pt[61]" -type "float3" 15.009666 -3.118876 -0.69777191 ;
	setAttr ".pt[62]" -type "float3" 15.033405 -2.8757551 -0.6950345 ;
	setAttr ".pt[63]" -type "float3" 15.077025 -2.5228696 -0.69327676 ;
	setAttr ".pt[64]" -type "float3" 15.136257 -2.0947623 -0.69267094 ;
	setAttr ".pt[65]" -type "float3" 15.2053 -1.6333394 -0.69327676 ;
	setAttr ".pt[66]" -type "float3" 15.277398 -1.183768 -0.6950345 ;
	setAttr ".pt[67]" -type "float3" 15.345492 -0.79005527 -0.69777191 ;
	setAttr ".pt[68]" -type "float3" 15.402919 -0.49074036 -0.70122004 ;
	setAttr ".pt[69]" -type "float3" 15.444056 -0.31512311 -0.70504367 ;
	setAttr ".pt[70]" -type "float3" 15.464873 -0.280393 -0.70886731 ;
	setAttr ".pt[71]" -type "float3" 15.463337 -0.38994983 -0.71231568 ;
	setAttr ".pt[72]" -type "float3" 15.439599 -0.63307047 -0.71505105 ;
	setAttr ".pt[73]" -type "float3" 15.395977 -0.98595524 -0.7168082 ;
	setAttr ".pt[74]" -type "float3" 15.336747 -1.4140629 -0.7174145 ;
	setAttr ".pt[75]" -type "float3" 15.267703 -1.8754851 -0.7168082 ;
	setAttr ".pt[76]" -type "float3" 15.195605 -2.325057 -0.71505105 ;
	setAttr ".pt[77]" -type "float3" 15.127512 -2.7187693 -0.71231568 ;
	setAttr ".pt[78]" -type "float3" 15.070085 -3.0180843 -0.70886731 ;
	setAttr ".pt[79]" -type "float3" 15.028949 -3.1937022 -0.70504367 ;
	setAttr ".pt[80]" -type "float3" 15.210707 -3.5657043 -0.76196003 ;
	setAttr ".pt[81]" -type "float3" 15.212552 -3.433907 -0.7578125 ;
	setAttr ".pt[82]" -type "float3" 15.241113 -3.141432 -0.7545172 ;
	setAttr ".pt[83]" -type "float3" 15.293588 -2.7169108 -0.75240624 ;
	setAttr ".pt[84]" -type "float3" 15.364843 -2.2018967 -0.7516762 ;
	setAttr ".pt[85]" -type "float3" 15.447901 -1.6468041 -0.75240624 ;
	setAttr ".pt[86]" -type "float3" 15.534636 -1.1059682 -0.7545172 ;
	setAttr ".pt[87]" -type "float3" 15.616554 -0.63233161 -0.7578125 ;
	setAttr ".pt[88]" -type "float3" 15.685637 -0.272255 -0.76196003 ;
	setAttr ".pt[89]" -type "float3" 15.735122 -0.060986355 -0.76655734 ;
	setAttr ".pt[90]" -type "float3" 15.760167 -0.019206524 -0.77115953 ;
	setAttr ".pt[91]" -type "float3" 15.75832 -0.15100382 -0.77530622 ;
	setAttr ".pt[92]" -type "float3" 15.729763 -0.44347844 -0.77859843 ;
	setAttr ".pt[93]" -type "float3" 15.677285 -0.86799955 -0.78071332 ;
	setAttr ".pt[94]" -type "float3" 15.60603 -1.3830132 -0.78144228 ;
	setAttr ".pt[95]" -type "float3" 15.522972 -1.9381056 -0.78071332 ;
	setAttr ".pt[96]" -type "float3" 15.436237 -2.4789414 -0.77859819 ;
	setAttr ".pt[97]" -type "float3" 15.354321 -2.9525783 -0.77530622 ;
	setAttr ".pt[98]" -type "float3" 15.285238 -3.3126552 -0.77115953 ;
	setAttr ".pt[99]" -type "float3" 15.235751 -3.5239224 -0.76655734 ;
	setAttr ".pt[100]" -type "float3" 15.46258 -3.8658125 -0.83332312 ;
	setAttr ".pt[101]" -type "float3" 15.464692 -3.7150197 -0.82857668 ;
	setAttr ".pt[102]" -type "float3" 15.497369 -3.380393 -0.82480836 ;
	setAttr ".pt[103]" -type "float3" 15.557406 -2.8946879 -0.82239056 ;
	setAttr ".pt[104]" -type "float3" 15.638932 -2.3054492 -0.82155657 ;
	setAttr ".pt[105]" -type "float3" 15.733961 -1.6703551 -0.82239246 ;
	setAttr ".pt[106]" -type "float3" 15.833196 -1.0515726 -0.82480836 ;
	setAttr ".pt[107]" -type "float3" 15.926919 -0.50967354 -0.82857668 ;
	setAttr ".pt[108]" -type "float3" 16.005959 -0.097702011 -0.83332312 ;
	setAttr ".pt[109]" -type "float3" 16.062578 0.14401491 -0.83858442 ;
	setAttr ".pt[110]" -type "float3" 16.091232 0.19181646 -0.84384835 ;
	setAttr ".pt[111]" -type "float3" 16.089117 0.041024297 -0.84859335 ;
	setAttr ".pt[112]" -type "float3" 16.056442 -0.29360244 -0.85236073 ;
	setAttr ".pt[113]" -type "float3" 15.996405 -0.77930683 -0.85477757 ;
	setAttr ".pt[114]" -type "float3" 15.91488 -1.3685455 -0.85561025 ;
	setAttr ".pt[115]" -type "float3" 15.81985 -2.0036395 -0.85477757 ;
	setAttr ".pt[116]" -type "float3" 15.720616 -2.6224217 -0.85236073 ;
	setAttr ".pt[117]" -type "float3" 15.626892 -3.1643209 -0.84859335 ;
	setAttr ".pt[118]" -type "float3" 15.547853 -3.5762928 -0.84384835 ;
	setAttr ".pt[119]" -type "float3" 15.491235 -3.8180094 -0.83858442 ;
	setAttr ".pt[120]" -type "float3" 15.757547 -4.1213679 -0.91355526 ;
	setAttr ".pt[121]" -type "float3" 15.759874 -3.9552925 -0.90832448 ;
	setAttr ".pt[122]" -type "float3" 15.795862 -3.5867538 -0.90417671 ;
	setAttr ".pt[123]" -type "float3" 15.861984 -3.0518246 -0.90151227 ;
	setAttr ".pt[124]" -type "float3" 15.951771 -2.4028697 -0.90059614 ;
	setAttr ".pt[125]" -type "float3" 16.056433 -1.7034118 -0.90151227 ;
	setAttr ".pt[126]" -type "float3" 16.165724 -1.0219196 -0.90417671 ;
	setAttr ".pt[127]" -type "float3" 16.268946 -0.42510188 -0.90832448 ;
	setAttr ".pt[128]" -type "float3" 16.355995 0.02862069 -0.91355526 ;
	setAttr ".pt[129]" -type "float3" 16.418352 0.29483432 -0.91934919 ;
	setAttr ".pt[130]" -type "float3" 16.449911 0.34748137 -0.92514265 ;
	setAttr ".pt[131]" -type "float3" 16.447582 0.18140653 -0.93036914 ;
	setAttr ".pt[132]" -type "float3" 16.411596 -0.18713225 -0.93451583 ;
	setAttr ".pt[133]" -type "float3" 16.345474 -0.7220614 -0.93718255 ;
	setAttr ".pt[134]" -type "float3" 16.255688 -1.371016 -0.93809986 ;
	setAttr ".pt[135]" -type "float3" 16.151028 -2.0704739 -0.93718255 ;
	setAttr ".pt[136]" -type "float3" 16.041737 -2.7519655 -0.93451583 ;
	setAttr ".pt[137]" -type "float3" 15.938512 -3.348783 -0.93036914 ;
	setAttr ".pt[138]" -type "float3" 15.851464 -3.8025062 -0.92514265 ;
	setAttr ".pt[139]" -type "float3" 15.789106 -4.0687199 -0.91934919 ;
	setAttr ".pt[140]" -type "float3" 16.088346 -4.326076 -1.0006717 ;
	setAttr ".pt[141]" -type "float3" 16.090832 -4.148809 -0.9950937 ;
	setAttr ".pt[142]" -type "float3" 16.129244 -3.7554317 -0.99066484 ;
	setAttr ".pt[143]" -type "float3" 16.199821 -3.1844511 -0.98782074 ;
	setAttr ".pt[144]" -type "float3" 16.29566 -2.4917591 -0.98684144 ;
	setAttr ".pt[145]" -type "float3" 16.407375 -1.7451608 -0.98782074 ;
	setAttr ".pt[146]" -type "float3" 16.524031 -1.0177388 -0.99066484 ;
	setAttr ".pt[147]" -type "float3" 16.634211 -0.3806985 -0.9950937 ;
	setAttr ".pt[148]" -type "float3" 16.727127 0.10360351 -1.0006717 ;
	setAttr ".pt[149]" -type "float3" 16.793686 0.38775873 -1.0068581 ;
	setAttr ".pt[150]" -type "float3" 16.827372 0.44395339 -1.0130438 ;
	setAttr ".pt[151]" -type "float3" 16.824886 0.26668587 -1.0186236 ;
	setAttr ".pt[152]" -type "float3" 16.786472 -0.12669063 -1.023051 ;
	setAttr ".pt[153]" -type "float3" 16.715895 -0.69767153 -1.0258963 ;
	setAttr ".pt[154]" -type "float3" 16.620058 -1.3903637 -1.0268762 ;
	setAttr ".pt[155]" -type "float3" 16.508343 -2.1369615 -1.0258973 ;
	setAttr ".pt[156]" -type "float3" 16.391685 -2.8643825 -1.023051 ;
	setAttr ".pt[157]" -type "float3" 16.281507 -3.5014231 -1.0186236 ;
	setAttr ".pt[158]" -type "float3" 16.188593 -3.9857249 -1.0130438 ;
	setAttr ".pt[159]" -type "float3" 16.12203 -4.2698798 -1.0068581 ;
	setAttr ".pt[160]" -type "float3" 16.446831 -4.4748993 -1.0925397 ;
	setAttr ".pt[161]" -type "float3" 16.449409 -4.290803 -1.0867418 ;
	setAttr ".pt[162]" -type "float3" 16.489302 -3.8822742 -1.0821424 ;
	setAttr ".pt[163]" -type "float3" 16.562599 -3.2893019 -1.0791918 ;
	setAttr ".pt[164]" -type "float3" 16.662127 -2.5699291 -1.078174 ;
	setAttr ".pt[165]" -type "float3" 16.778147 -1.7945745 -1.0791918 ;
	setAttr ".pt[166]" -type "float3" 16.899298 -1.0391338 -1.0821424 ;
	setAttr ".pt[167]" -type "float3" 17.013721 -0.37755653 -1.0867418 ;
	setAttr ".pt[168]" -type "float3" 17.110214 0.12539849 -1.0925397 ;
	setAttr ".pt[169]" -type "float3" 17.179337 0.42049897 -1.0989617 ;
	setAttr ".pt[170]" -type "float3" 17.214323 0.47885796 -1.1053848 ;
	setAttr ".pt[171]" -type "float3" 17.211739 0.29476243 -1.1111823 ;
	setAttr ".pt[172]" -type "float3" 17.171848 -0.11376609 -1.1157811 ;
	setAttr ".pt[173]" -type "float3" 17.098553 -0.70673877 -1.118731 ;
	setAttr ".pt[174]" -type "float3" 16.999022 -1.4261104 -1.1197482 ;
	setAttr ".pt[175]" -type "float3" 16.883005 -2.2014654 -1.118731 ;
	setAttr ".pt[176]" -type "float3" 16.761854 -2.9569056 -1.1157811 ;
	setAttr ".pt[177]" -type "float3" 16.64743 -3.6184833 -1.1111833 ;
	setAttr ".pt[178]" -type "float3" 16.550934 -4.121438 -1.1053848 ;
	setAttr ".pt[179]" -type "float3" 16.481815 -4.4165392 -1.0989617 ;
	setAttr ".pt[180]" -type "float3" 16.824173 -4.5641694 -1.1868846 ;
	setAttr ".pt[181]" -type "float3" 16.826786 -4.3777804 -1.1810223 ;
	setAttr ".pt[182]" -type "float3" 16.867174 -3.964159 -1.1763657 ;
	setAttr ".pt[183]" -type "float3" 16.941387 -3.3637948 -1.1733758 ;
	setAttr ".pt[184]" -type "float3" 17.042154 -2.6354549 -1.1723446 ;
	setAttr ".pt[185]" -type "float3" 17.159618 -1.8504355 -1.1733758 ;
	setAttr ".pt[186]" -type "float3" 17.282278 -1.0855787 -1.1763657 ;
	setAttr ".pt[187]" -type "float3" 17.398129 -0.41575456 -1.1810223 ;
	setAttr ".pt[188]" -type "float3" 17.495827 0.093470961 -1.1868846 ;
	setAttr ".pt[189]" -type "float3" 17.565811 0.39224958 -1.1933901 ;
	setAttr ".pt[190]" -type "float3" 17.601229 0.45133513 -1.1998967 ;
	setAttr ".pt[191]" -type "float3" 17.598618 0.26494572 -1.2057618 ;
	setAttr ".pt[192]" -type "float3" 17.558229 -0.14867526 -1.2104172 ;
	setAttr ".pt[193]" -type "float3" 17.484018 -0.74903941 -1.2134072 ;
	setAttr ".pt[194]" -type "float3" 17.383249 -1.4773788 -1.2144387 ;
	setAttr ".pt[195]" -type "float3" 17.265783 -2.262398 -1.2134072 ;
	setAttr ".pt[196]" -type "float3" 17.143124 -3.0272543 -1.2104162 ;
	setAttr ".pt[197]" -type "float3" 17.027275 -3.6970789 -1.2057618 ;
	setAttr ".pt[198]" -type "float3" 16.929577 -4.2063036 -1.1998967 ;
	setAttr ".pt[199]" -type "float3" 16.859592 -4.5050826 -1.1933901 ;
	setAttr ".pt[200]" -type "float3" 17.211082 -4.5916924 -1.2813952 ;
	setAttr ".pt[201]" -type "float3" 17.213663 -4.4075975 -1.2756027 ;
	setAttr ".pt[202]" -type "float3" 17.253555 -3.9990683 -1.2710022 ;
	setAttr ".pt[203]" -type "float3" 17.326851 -3.406095 -1.268049 ;
	setAttr ".pt[204]" -type "float3" 17.42638 -2.6867225 -1.2670325 ;
	setAttr ".pt[205]" -type "float3" 17.542398 -1.9113675 -1.268049 ;
	setAttr ".pt[206]" -type "float3" 17.663549 -1.1559278 -1.2710022 ;
	setAttr ".pt[207]" -type "float3" 17.777971 -0.49435061 -1.2756027 ;
	setAttr ".pt[208]" -type "float3" 17.874468 0.0086053312 -1.2813952 ;
	setAttr ".pt[209]" -type "float3" 17.943588 0.30370566 -1.2878201 ;
	setAttr ".pt[210]" -type "float3" 17.978573 0.36206436 -1.2942444 ;
	setAttr ".pt[211]" -type "float3" 17.975992 0.17796898 -1.300038 ;
	setAttr ".pt[212]" -type "float3" 17.936102 -0.23055938 -1.3046361 ;
	setAttr ".pt[213]" -type "float3" 17.862803 -0.82353228 -1.30759 ;
	setAttr ".pt[214]" -type "float3" 17.763275 -1.5429044 -1.3086067 ;
	setAttr ".pt[215]" -type "float3" 17.647257 -2.318259 -1.30759 ;
	setAttr ".pt[216]" -type "float3" 17.526108 -3.0736988 -1.3046366 ;
	setAttr ".pt[217]" -type "float3" 17.411682 -3.7352762 -1.300038 ;
	setAttr ".pt[218]" -type "float3" 17.315187 -4.2382312 -1.2942444 ;
	setAttr ".pt[219]" -type "float3" 17.246067 -4.5333319 -1.2878201 ;
	setAttr ".pt[220]" -type "float3" 17.598032 -4.5567875 -1.3737371 ;
	setAttr ".pt[221]" -type "float3" 17.600517 -4.3795204 -1.3681579 ;
	setAttr ".pt[222]" -type "float3" 17.638929 -3.9861436 -1.3637316 ;
	setAttr ".pt[223]" -type "float3" 17.709507 -3.4151623 -1.3608866 ;
	setAttr ".pt[224]" -type "float3" 17.805344 -2.72247 -1.3599063 ;
	setAttr ".pt[225]" -type "float3" 17.917059 -1.9758719 -1.3608866 ;
	setAttr ".pt[226]" -type "float3" 18.033718 -1.2484505 -1.3637316 ;
	setAttr ".pt[227]" -type "float3" 18.143896 -0.61140954 -1.3681579 ;
	setAttr ".pt[228]" -type "float3" 18.236811 -0.12710765 -1.3737371 ;
	setAttr ".pt[229]" -type "float3" 18.303371 0.15704778 -1.3799217 ;
	setAttr ".pt[230]" -type "float3" 18.337057 0.2132424 -1.3861065 ;
	setAttr ".pt[231]" -type "float3" 18.334572 0.035974711 -1.3916894 ;
	setAttr ".pt[232]" -type "float3" 18.296162 -0.35740235 -1.396116 ;
	setAttr ".pt[233]" -type "float3" 18.225582 -0.92838311 -1.3989624 ;
	setAttr ".pt[234]" -type "float3" 18.129744 -1.6210741 -1.3999374 ;
	setAttr ".pt[235]" -type "float3" 18.018028 -2.3676727 -1.3989624 ;
	setAttr ".pt[236]" -type "float3" 17.901373 -3.0950944 -1.3961179 ;
	setAttr ".pt[237]" -type "float3" 17.791193 -3.7321341 -1.3916881 ;
	setAttr ".pt[238]" -type "float3" 17.698277 -4.2164359 -1.3861065 ;
	setAttr ".pt[239]" -type "float3" 17.631718 -4.5005913 -1.3799217 ;
	setAttr ".pt[240]" -type "float3" 17.975492 -4.4603152 -1.4616389 ;
	setAttr ".pt[241]" -type "float3" 17.977819 -4.29424 -1.456409 ;
	setAttr ".pt[242]" -type "float3" 18.013805 -3.9257011 -1.4522612 ;
	setAttr ".pt[243]" -type "float3" 18.079929 -3.3907723 -1.4495969 ;
	setAttr ".pt[244]" -type "float3" 18.169714 -2.741817 -1.4486806 ;
	setAttr ".pt[245]" -type "float3" 18.274376 -2.0423594 -1.4495969 ;
	setAttr ".pt[246]" -type "float3" 18.383667 -1.3608673 -1.4522631 ;
	setAttr ".pt[247]" -type "float3" 18.486889 -0.76404893 -1.456409 ;
	setAttr ".pt[248]" -type "float3" 18.57394 -0.31032702 -1.4616389 ;
	setAttr ".pt[249]" -type "float3" 18.636295 -0.044112816 -1.4674337 ;
	setAttr ".pt[250]" -type "float3" 18.667854 0.0085333586 -1.4732282 ;
	setAttr ".pt[251]" -type "float3" 18.665527 -0.15754203 -1.478457 ;
	setAttr ".pt[252]" -type "float3" 18.629541 -0.52608025 -1.4826035 ;
	setAttr ".pt[253]" -type "float3" 18.563419 -1.0610094 -1.48527 ;
	setAttr ".pt[254]" -type "float3" 18.473631 -1.7099639 -1.4861871 ;
	setAttr ".pt[255]" -type "float3" 18.368969 -2.4094217 -1.48527 ;
	setAttr ".pt[256]" -type "float3" 18.25968 -3.0909128 -1.4826035 ;
	setAttr ".pt[257]" -type "float3" 18.156458 -3.6877308 -1.478457 ;
	setAttr ".pt[258]" -type "float3" 18.069407 -4.1414537 -1.4732282 ;
	setAttr ".pt[259]" -type "float3" 18.007053 -4.4076676 -1.4674337 ;
	setAttr ".pt[260]" -type "float3" 18.334173 -4.3046513 -1.5429329 ;
	setAttr ".pt[261]" -type "float3" 18.336285 -4.1538591 -1.5381886 ;
	setAttr ".pt[262]" -type "float3" 18.368959 -3.8192317 -1.5344222 ;
	setAttr ".pt[263]" -type "float3" 18.428999 -3.3335268 -1.5320035 ;
	setAttr ".pt[264]" -type "float3" 18.510525 -2.744288 -1.5311697 ;
	setAttr ".pt[265]" -type "float3" 18.605553 -2.1091936 -1.5320035 ;
	setAttr ".pt[266]" -type "float3" 18.704788 -1.4904115 -1.5344222 ;
	setAttr ".pt[267]" -type "float3" 18.798513 -0.94851238 -1.5381886 ;
	setAttr ".pt[268]" -type "float3" 18.87755 -0.53654051 -1.5429329 ;
	setAttr ".pt[269]" -type "float3" 18.93417 -0.29482365 -1.5481966 ;
	setAttr ".pt[270]" -type "float3" 18.962824 -0.24702211 -1.5534607 ;
	setAttr ".pt[271]" -type "float3" 18.960709 -0.39781463 -1.5582057 ;
	setAttr ".pt[272]" -type "float3" 18.928036 -0.73244083 -1.561972 ;
	setAttr ".pt[273]" -type "float3" 18.867996 -1.2181455 -1.564391 ;
	setAttr ".pt[274]" -type "float3" 18.786472 -1.8073845 -1.5652233 ;
	setAttr ".pt[275]" -type "float3" 18.691442 -2.4424784 -1.564391 ;
	setAttr ".pt[276]" -type "float3" 18.592209 -3.0612602 -1.561972 ;
	setAttr ".pt[277]" -type "float3" 18.498484 -3.6031592 -1.5582057 ;
	setAttr ".pt[278]" -type "float3" 18.419445 -4.0151315 -1.5534607 ;
	setAttr ".pt[279]" -type "float3" 18.362827 -4.2568479 -1.5481966 ;
	setAttr ".pt[280]" -type "float3" 18.665236 -4.0936279 -1.6156256 ;
	setAttr ".pt[281]" -type "float3" 18.667082 -3.9618297 -1.6114732 ;
	setAttr ".pt[282]" -type "float3" 18.695641 -3.6693559 -1.608182 ;
	setAttr ".pt[283]" -type "float3" 18.748117 -3.2448342 -1.606069 ;
	setAttr ".pt[284]" -type "float3" 18.819372 -2.72982 -1.6053391 ;
	setAttr ".pt[285]" -type "float3" 18.902431 -2.1747277 -1.606069 ;
	setAttr ".pt[286]" -type "float3" 18.989164 -1.6338918 -1.608182 ;
	setAttr ".pt[287]" -type "float3" 19.071081 -1.1602546 -1.6114732 ;
	setAttr ".pt[288]" -type "float3" 19.140167 -0.80017918 -1.6156256 ;
	setAttr ".pt[289]" -type "float3" 19.189653 -0.58891016 -1.6202224 ;
	setAttr ".pt[290]" -type "float3" 19.214699 -0.54712963 -1.6248209 ;
	setAttr ".pt[291]" -type "float3" 19.212851 -0.67892706 -1.6289687 ;
	setAttr ".pt[292]" -type "float3" 19.184292 -0.97140187 -1.6322637 ;
	setAttr ".pt[293]" -type "float3" 19.131813 -1.3959234 -1.6343801 ;
	setAttr ".pt[294]" -type "float3" 19.060562 -1.9109368 -1.6351036 ;
	setAttr ".pt[295]" -type "float3" 18.977501 -2.4660301 -1.6343801 ;
	setAttr ".pt[296]" -type "float3" 18.890766 -3.0068645 -1.6322637 ;
	setAttr ".pt[297]" -type "float3" 18.808851 -3.4805019 -1.6289687 ;
	setAttr ".pt[298]" -type "float3" 18.739767 -3.8405778 -1.6248209 ;
	setAttr ".pt[299]" -type "float3" 18.690281 -4.051846 -1.6202224 ;
	setAttr ".pt[300]" -type "float3" 18.960529 -3.8324413 -1.6779162 ;
	setAttr ".pt[301]" -type "float3" 18.962067 -3.7228844 -1.6744673 ;
	setAttr ".pt[302]" -type "float3" 18.985804 -3.479764 -1.6717311 ;
	setAttr ".pt[303]" -type "float3" 19.029425 -3.1268783 -1.6699718 ;
	setAttr ".pt[304]" -type "float3" 19.088655 -2.6987712 -1.6693693 ;
	setAttr ".pt[305]" -type "float3" 19.157701 -2.2373481 -1.6699718 ;
	setAttr ".pt[306]" -type "float3" 19.229797 -1.7877768 -1.6717311 ;
	setAttr ".pt[307]" -type "float3" 19.297892 -1.3940639 -1.6744673 ;
	setAttr ".pt[308]" -type "float3" 19.355318 -1.0947492 -1.6779162 ;
	setAttr ".pt[309]" -type "float3" 19.396454 -0.9191314 -1.6817385 ;
	setAttr ".pt[310]" -type "float3" 19.417271 -0.88440108 -1.6855605 ;
	setAttr ".pt[311]" -type "float3" 19.415737 -0.99395841 -1.6890104 ;
	setAttr ".pt[312]" -type "float3" 19.391996 -1.2370787 -1.6917443 ;
	setAttr ".pt[313]" -type "float3" 19.348377 -1.5899643 -1.6935039 ;
	setAttr ".pt[314]" -type "float3" 19.289146 -2.0180709 -1.6941096 ;
	setAttr ".pt[315]" -type "float3" 19.220102 -2.4794939 -1.6935039 ;
	setAttr ".pt[316]" -type "float3" 19.148005 -2.9290648 -1.6917443 ;
	setAttr ".pt[317]" -type "float3" 19.07991 -3.322778 -1.6890104 ;
	setAttr ".pt[318]" -type "float3" 19.022486 -3.6220927 -1.6855605 ;
	setAttr ".pt[319]" -type "float3" 18.98135 -3.7977104 -1.6817385 ;
	setAttr ".pt[320]" -type "float3" 19.21279 -3.5275238 -1.7282786 ;
	setAttr ".pt[321]" -type "float3" 19.213976 -3.4429045 -1.7256134 ;
	setAttr ".pt[322]" -type "float3" 19.232311 -3.2551243 -1.7234989 ;
	setAttr ".pt[323]" -type "float3" 19.266003 -2.9825644 -1.7221423 ;
	setAttr ".pt[324]" -type "float3" 19.311752 -2.6519051 -1.7216747 ;
	setAttr ".pt[325]" -type "float3" 19.36508 -2.2955136 -1.7221423 ;
	setAttr ".pt[326]" -type "float3" 19.420765 -1.9482762 -1.7234989 ;
	setAttr ".pt[327]" -type "float3" 19.47336 -1.6441824 -1.7256134 ;
	setAttr ".pt[328]" -type "float3" 19.517712 -1.4129989 -1.7282786 ;
	setAttr ".pt[329]" -type "float3" 19.549486 -1.2773561 -1.7312298 ;
	setAttr ".pt[330]" -type "float3" 19.565569 -1.250532 -1.7341821 ;
	setAttr ".pt[331]" -type "float3" 19.564381 -1.3351508 -1.7368449 ;
	setAttr ".pt[332]" -type "float3" 19.546045 -1.5229313 -1.7389603 ;
	setAttr ".pt[333]" -type "float3" 19.512354 -1.7954905 -1.7403162 ;
	setAttr ".pt[334]" -type "float3" 19.466606 -2.1261499 -1.7407846 ;
	setAttr ".pt[335]" -type "float3" 19.413279 -2.4825406 -1.7403162 ;
	setAttr ".pt[336]" -type "float3" 19.357592 -2.8297789 -1.7389603 ;
	setAttr ".pt[337]" -type "float3" 19.304996 -3.1338725 -1.7368449 ;
	setAttr ".pt[338]" -type "float3" 19.260641 -3.3650556 -1.7341821 ;
	setAttr ".pt[339]" -type "float3" 19.22887 -3.5006983 -1.7312298 ;
	setAttr ".pt[340]" -type "float3" 19.415804 -3.1863828 -1.7654682 ;
	setAttr ".pt[341]" -type "float3" 19.416613 -3.1287854 -1.7636567 ;
	setAttr ".pt[342]" -type "float3" 19.429092 -3.0009689 -1.7622169 ;
	setAttr ".pt[343]" -type "float3" 19.452024 -2.8154459 -1.7612927 ;
	setAttr ".pt[344]" -type "float3" 19.483164 -2.5903769 -1.760974 ;
	setAttr ".pt[345]" -type "float3" 19.519463 -2.3477921 -1.7612927 ;
	setAttr ".pt[346]" -type "float3" 19.557365 -2.1114388 -1.7622169 ;
	setAttr ".pt[347]" -type "float3" 19.593166 -1.9044521 -1.7636567 ;
	setAttr ".pt[348]" -type "float3" 19.623356 -1.7470925 -1.7654682 ;
	setAttr ".pt[349]" -type "float3" 19.644981 -1.6547645 -1.7674766 ;
	setAttr ".pt[350]" -type "float3" 19.655926 -1.6365055 -1.7694863 ;
	setAttr ".pt[351]" -type "float3" 19.655121 -1.6941037 -1.7713003 ;
	setAttr ".pt[352]" -type "float3" 19.642639 -1.8219203 -1.7727427 ;
	setAttr ".pt[353]" -type "float3" 19.619703 -2.0074422 -1.7736645 ;
	setAttr ".pt[354]" -type "float3" 19.588566 -2.2325122 -1.773985 ;
	setAttr ".pt[355]" -type "float3" 19.552269 -2.475096 -1.7736645 ;
	setAttr ".pt[356]" -type "float3" 19.514364 -2.7114501 -1.7727427 ;
	setAttr ".pt[357]" -type "float3" 19.478565 -2.9184365 -1.7713003 ;
	setAttr ".pt[358]" -type "float3" 19.448374 -3.0757954 -1.7694863 ;
	setAttr ".pt[359]" -type "float3" 19.42675 -3.1681232 -1.7674766 ;
	setAttr ".pt[360]" -type "float3" 19.564564 -2.8174176 -1.7885737 ;
	setAttr ".pt[361]" -type "float3" 19.564972 -2.78826 -1.7876552 ;
	setAttr ".pt[362]" -type "float3" 19.571293 -2.7235556 -1.7869277 ;
	setAttr ".pt[363]" -type "float3" 19.582903 -2.6296375 -1.7864569 ;
	setAttr ".pt[364]" -type "float3" 19.598667 -2.5157001 -1.786298 ;
	setAttr ".pt[365]" -type "float3" 19.617039 -2.3928957 -1.7864569 ;
	setAttr ".pt[366]" -type "float3" 19.636229 -2.2732463 -1.7869277 ;
	setAttr ".pt[367]" -type "float3" 19.654352 -2.1684623 -1.7876552 ;
	setAttr ".pt[368]" -type "float3" 19.669634 -2.0888021 -1.7885737 ;
	setAttr ".pt[369]" -type "float3" 19.680584 -2.0420628 -1.7895904 ;
	setAttr ".pt[370]" -type "float3" 19.686125 -2.0328193 -1.7906057 ;
	setAttr ".pt[371]" -type "float3" 19.685715 -2.0619769 -1.7915231 ;
	setAttr ".pt[372]" -type "float3" 19.679398 -2.1266823 -1.7922543 ;
	setAttr ".pt[373]" -type "float3" 19.667788 -2.2205999 -1.7927214 ;
	setAttr ".pt[374]" -type "float3" 19.652025 -2.3345375 -1.7928838 ;
	setAttr ".pt[375]" -type "float3" 19.633648 -2.4573412 -1.7927214 ;
	setAttr ".pt[376]" -type "float3" 19.614462 -2.5769913 -1.7922543 ;
	setAttr ".pt[377]" -type "float3" 19.596336 -2.6817737 -1.7915231 ;
	setAttr ".pt[378]" -type "float3" 19.581055 -2.7614348 -1.7906057 ;
	setAttr ".pt[379]" -type "float3" 19.570107 -2.8081744 -1.7895904 ;
	setAttr ".pt[380]" -type "float3" 14.769984 -1.6831186 -0.5897584 ;
	setAttr ".pt[381]" -type "float3" 19.655418 -2.4297149 -1.7970231 ;
	setAttr ".pt[402]" -type "float3" -20.030439 -0.78139305 7.8559427 ;
	setAttr ".pt[403]" -type "float3" -20.025944 -0.46072569 7.8660364 ;
	setAttr ".pt[404]" -type "float3" -19.956457 0.2508691 7.8740458 ;
	setAttr ".pt[405]" -type "float3" -19.828785 1.28374 7.8791904 ;
	setAttr ".pt[406]" -type "float3" -19.65542 2.5367775 7.8809614 ;
	setAttr ".pt[407]" -type "float3" -19.453335 3.8873291 7.8791904 ;
	setAttr ".pt[408]" -type "float3" -19.24231 5.2031903 7.8740458 ;
	setAttr ".pt[409]" -type "float3" -19.043005 6.3555589 7.8660431 ;
	setAttr ".pt[410]" -type "float3" -18.874924 7.2316313 7.8559427 ;
	setAttr ".pt[411]" -type "float3" -18.75452 7.7456527 7.8447528 ;
	setAttr ".pt[412]" -type "float3" -18.693586 7.8473053 7.8335648 ;
	setAttr ".pt[413]" -type "float3" -18.69808 7.526638 7.8234706 ;
	setAttr ".pt[414]" -type "float3" -18.767565 6.8150434 7.8154602 ;
	setAttr ".pt[415]" -type "float3" -18.895237 5.7821746 7.810318 ;
	setAttr ".pt[416]" -type "float3" -19.068604 4.5291367 7.8085456 ;
	setAttr ".pt[417]" -type "float3" -19.270687 3.1785855 7.810318 ;
	setAttr ".pt[418]" -type "float3" -19.481714 1.8627237 7.8154593 ;
	setAttr ".pt[419]" -type "float3" -19.681019 0.71035516 7.8234706 ;
	setAttr ".pt[420]" -type "float3" -19.8491 -0.16571742 7.8335643 ;
	setAttr ".pt[421]" -type "float3" -19.969501 -0.67973703 7.8447528 ;
	setAttr ".pt[423]" -type "float3" -19.374037 -2.6057627 7.633625 ;
	setAttr ".pt[424]" -type "float3" -19.367786 -2.1599169 7.6476583 ;
	setAttr ".pt[425]" -type "float3" -19.271177 -1.1705387 7.6587963 ;
	setAttr ".pt[426]" -type "float3" -19.093666 0.26553074 7.6659474 ;
	setAttr ".pt[427]" -type "float3" -18.852625 2.0077133 7.6684103 ;
	setAttr ".pt[428]" -type "float3" -18.571653 3.8854761 7.6659474 ;
	setAttr ".pt[429]" -type "float3" -18.278252 5.7150092 7.6587963 ;
	setAttr ".pt[430]" -type "float3" -18.001141 7.3172245 7.6476583 ;
	setAttr ".pt[431]" -type "float3" -17.767447 8.5352869 7.633625 ;
	setAttr ".pt[432]" -type "float3" -17.600044 9.2499657 7.6180677 ;
	setAttr ".pt[433]" -type "float3" -17.51532 9.3912983 7.60251 ;
	setAttr ".pt[434]" -type "float3" -17.52157 8.9454546 7.5884757 ;
	setAttr ".pt[435]" -type "float3" -17.618177 7.9560771 7.5773392 ;
	setAttr ".pt[436]" -type "float3" -17.795692 6.5200081 7.5701876 ;
	setAttr ".pt[437]" -type "float3" -18.036736 4.7778254 7.5677247 ;
	setAttr ".pt[438]" -type "float3" -18.317705 2.9000633 7.5701876 ;
	setAttr ".pt[439]" -type "float3" -18.611109 1.0705305 7.5773392 ;
	setAttr ".pt[440]" -type "float3" -18.888218 -0.53168476 7.5884757 ;
	setAttr ".pt[441]" -type "float3" -19.121914 -1.7497468 7.60251 ;
	setAttr ".pt[442]" -type "float3" -19.289312 -2.4644241 7.6180677 ;
	setAttr ".pt[443]" -type "float3" -19.001846 -2.6626418 7.5416503 ;
	setAttr ".pt[444]" -type "float3" -18.995596 -2.2167957 7.5556846 ;
	setAttr ".pt[445]" -type "float3" -18.898987 -1.2274172 7.566823 ;
	setAttr ".pt[446]" -type "float3" -18.721474 0.20865259 7.5739727 ;
	setAttr ".pt[447]" -type "float3" -18.480434 1.9508357 7.5764365 ;
	setAttr ".pt[448]" -type "float3" -18.199461 3.8285978 7.5739727 ;
	setAttr ".pt[449]" -type "float3" -17.906059 5.6581302 7.566823 ;
	setAttr ".pt[450]" -type "float3" -17.628946 7.2603459 7.5556846 ;
	setAttr ".pt[451]" -type "float3" -17.395254 8.4784069 7.5416503 ;
	setAttr ".pt[452]" -type "float3" -17.227852 9.1930866 7.5260935 ;
	setAttr ".pt[453]" -type "float3" -17.143129 9.3344212 7.5105362 ;
	setAttr ".pt[454]" -type "float3" -17.14938 8.8885746 7.4965014 ;
	setAttr ".pt[455]" -type "float3" -17.245987 7.8991995 7.4853649 ;
	setAttr ".pt[456]" -type "float3" -17.423502 6.46313 7.4782143 ;
	setAttr ".pt[457]" -type "float3" -17.664539 4.7209468 7.47575 ;
	setAttr ".pt[458]" -type "float3" -17.945513 2.8431845 7.4782143 ;
	setAttr ".pt[459]" -type "float3" -18.238916 1.0136523 7.4853654 ;
	setAttr ".pt[460]" -type "float3" -18.516026 -0.5885635 7.4965014 ;
	setAttr ".pt[461]" -type "float3" -18.74972 -1.8066255 7.5105362 ;
	setAttr ".pt[462]" -type "float3" -18.917122 -2.5213025 7.5260935 ;
	setAttr ".pt[463]" -type "float3" -18.67798 -2.4150898 7.4719748 ;
	setAttr ".pt[464]" -type "float3" -18.672031 -1.990811 7.4853296 ;
	setAttr ".pt[465]" -type "float3" -18.580095 -1.0492936 7.4959283 ;
	setAttr ".pt[466]" -type "float3" -18.411169 0.31730759 7.5027342 ;
	setAttr ".pt[467]" -type "float3" -18.181787 1.9752131 7.5050783 ;
	setAttr ".pt[468]" -type "float3" -17.914408 3.7621398 7.5027342 ;
	setAttr ".pt[469]" -type "float3" -17.635199 5.50317 7.4959283 ;
	setAttr ".pt[470]" -type "float3" -17.371494 7.0278792 7.4853296 ;
	setAttr ".pt[471]" -type "float3" -17.149105 8.1870193 7.4719748 ;
	setAttr ".pt[472]" -type "float3" -16.989801 8.8671246 7.4571705 ;
	setAttr ".pt[473]" -type "float3" -16.909176 9.0016232 7.4423656 ;
	setAttr ".pt[474]" -type "float3" -16.915125 8.5773439 7.4290109 ;
	setAttr ".pt[475]" -type "float3" -17.007059 7.6358285 7.4184122 ;
	setAttr ".pt[476]" -type "float3" -17.175985 6.269228 7.4116077 ;
	setAttr ".pt[477]" -type "float3" -17.405365 4.6113224 7.4092622 ;
	setAttr ".pt[478]" -type "float3" -17.672747 2.8243952 7.4116077 ;
	setAttr ".pt[479]" -type "float3" -17.951954 1.0833645 7.4184113 ;
	setAttr ".pt[480]" -type "float3" -18.21566 -0.4413439 7.4290109 ;
	setAttr ".pt[481]" -type "float3" -18.438049 -1.6004826 7.4423656 ;
	setAttr ".pt[482]" -type "float3" -18.597355 -2.2805877 7.4571705 ;
	setAttr ".pt[483]" -type "float3" -7.9603353 -4.0529761 4.8234887 ;
	setAttr ".pt[484]" -type "float3" -7.9543877 -3.6286957 4.8368444 ;
	setAttr ".pt[485]" -type "float3" -7.862452 -2.6871767 4.8474431 ;
	setAttr ".pt[486]" -type "float3" -7.6935215 -1.320575 4.8542461 ;
	setAttr ".pt[487]" -type "float3" -7.4641418 0.33733165 4.8565912 ;
	setAttr ".pt[488]" -type "float3" -7.1967602 2.1242611 4.8542466 ;
	setAttr ".pt[489]" -type "float3" -6.9175544 3.8652959 4.8474431 ;
	setAttr ".pt[490]" -type "float3" -6.6538467 5.3900108 4.8368444 ;
	setAttr ".pt[491]" -type "float3" -6.4314561 6.5491476 4.8234878 ;
	setAttr ".pt[492]" -type "float3" -6.2721553 7.2292557 4.8086848 ;
	setAttr ".pt[493]" -type "float3" -6.1915307 7.3637533 4.7938809 ;
	setAttr ".pt[494]" -type "float3" -6.1974792 6.9394689 4.7805243 ;
	setAttr ".pt[495]" -type "float3" -6.289413 5.9979582 4.7699256 ;
	setAttr ".pt[496]" -type "float3" -6.4583402 4.6313567 4.7631211 ;
	setAttr ".pt[497]" -type "float3" -6.6877165 2.9734454 4.7607751 ;
	setAttr ".pt[498]" -type "float3" -6.9550977 1.1865152 4.7631197 ;
	setAttr ".pt[499]" -type "float3" -7.2343059 -0.55451638 4.7699246 ;
	setAttr ".pt[500]" -type "float3" -7.4980159 -2.079226 4.7805252 ;
	setAttr ".pt[501]" -type "float3" -7.7204065 -3.2383687 4.7938805 ;
	setAttr ".pt[502]" -type "float3" -7.8797097 -3.9184744 4.8086848 ;
	setAttr ".pt[503]" -type "float3" -7.7442532 -6.3145351 4.6923909 ;
	setAttr ".pt[504]" -type "float3" -7.7360373 -5.7284479 4.7108383 ;
	setAttr ".pt[505]" -type "float3" -7.6090403 -4.4278641 4.7254801 ;
	setAttr ".pt[506]" -type "float3" -7.3756871 -2.5400836 4.7348785 ;
	setAttr ".pt[507]" -type "float3" -7.0588279 -0.24990083 4.7381177 ;
	setAttr ".pt[508]" -type "float3" -6.6894751 2.2185104 4.7348785 ;
	setAttr ".pt[509]" -type "float3" -6.3037891 4.6235218 4.7254801 ;
	setAttr ".pt[510]" -type "float3" -5.9395123 6.7297134 4.7108378 ;
	setAttr ".pt[511]" -type "float3" -5.6323075 8.3309097 4.6923895 ;
	setAttr ".pt[512]" -type "float3" -5.4122539 9.2703896 4.6719403 ;
	setAttr ".pt[513]" -type "float3" -5.3008823 9.4561796 4.6514893 ;
	setAttr ".pt[514]" -type "float3" -5.3090992 8.8700867 4.6330409 ;
	setAttr ".pt[515]" -type "float3" -5.4360933 7.5695148 4.6184001 ;
	setAttr ".pt[516]" -type "float3" -5.6694422 5.681735 4.6089993 ;
	setAttr ".pt[517]" -type "float3" -5.9862981 3.391546 4.6057601 ;
	setAttr ".pt[518]" -type "float3" -6.3556509 0.92313457 4.6089988 ;
	setAttr ".pt[519]" -type "float3" -6.7413406 -1.4818708 4.6183982 ;
	setAttr ".pt[520]" -type "float3" -7.1056199 -3.5880573 4.6330414 ;
	setAttr ".pt[521]" -type "float3" -7.4128232 -5.1892619 4.6514893 ;
	setAttr ".pt[522]" -type "float3" -7.6328802 -6.1287403 4.6719403 ;
	setAttr ".pt[523]" -type "float3" -6.9678035 -6.4331923 4.5005193 ;
	setAttr ".pt[524]" -type "float3" -6.9595881 -5.847106 4.5189667 ;
	setAttr ".pt[525]" -type "float3" -6.8325911 -4.5465207 4.5336075 ;
	setAttr ".pt[526]" -type "float3" -6.599237 -2.658741 4.5430069 ;
	setAttr ".pt[527]" -type "float3" -6.2823787 -0.36855781 4.5462465 ;
	setAttr ".pt[528]" -type "float3" -5.9130268 2.099853 4.5430064 ;
	setAttr ".pt[529]" -type "float3" -5.5273395 4.5048642 4.5336075 ;
	setAttr ".pt[530]" -type "float3" -5.1630626 6.6110559 4.5189667 ;
	setAttr ".pt[531]" -type "float3" -4.8558583 8.2122517 4.5005174 ;
	setAttr ".pt[532]" -type "float3" -4.6358051 9.1517315 4.4800682 ;
	setAttr ".pt[533]" -type "float3" -4.5244327 9.3375206 4.4596171 ;
	setAttr ".pt[534]" -type "float3" -4.53265 8.7514286 4.4411697 ;
	setAttr ".pt[535]" -type "float3" -4.6596432 7.4508572 4.426528 ;
	setAttr ".pt[536]" -type "float3" -4.892993 5.5630774 4.4171281 ;
	setAttr ".pt[537]" -type "float3" -5.2098484 3.2728896 4.413888 ;
	setAttr ".pt[538]" -type "float3" -5.5792017 0.80447733 4.4171267 ;
	setAttr ".pt[539]" -type "float3" -5.964891 -1.6005282 4.426527 ;
	setAttr ".pt[540]" -type "float3" -6.3291712 -3.7067156 4.4411688 ;
	setAttr ".pt[541]" -type "float3" -6.636374 -5.30792 4.4596171 ;
	setAttr ".pt[542]" -type "float3" -6.856431 -6.2473984 4.4800682 ;
	setAttr ".pt[543]" -type "float3" -6.6810918 -6.0149908 4.4457755 ;
	setAttr ".pt[544]" -type "float3" -6.6733465 -5.4624505 4.4631691 ;
	setAttr ".pt[545]" -type "float3" -6.5536175 -4.2363057 4.4769721 ;
	setAttr ".pt[546]" -type "float3" -6.3336191 -2.4565763 4.4858327 ;
	setAttr ".pt[547]" -type "float3" -6.0348983 -0.29747629 4.4888868 ;
	setAttr ".pt[548]" -type "float3" -5.6866856 2.0296524 4.4858327 ;
	setAttr ".pt[549]" -type "float3" -5.3230739 4.297008 4.4769721 ;
	setAttr ".pt[550]" -type "float3" -4.9796476 6.28265 4.4631691 ;
	setAttr ".pt[551]" -type "float3" -4.6900258 7.7921977 4.445775 ;
	setAttr ".pt[552]" -type "float3" -4.4825673 8.6779051 4.426496 ;
	setAttr ".pt[553]" -type "float3" -4.3775702 8.8530598 4.4072165 ;
	setAttr ".pt[554]" -type "float3" -4.3853168 8.3005161 4.3898244 ;
	setAttr ".pt[555]" -type "float3" -4.5050421 7.0743837 4.3760214 ;
	setAttr ".pt[556]" -type "float3" -4.7250357 5.2946529 4.3671589 ;
	setAttr ".pt[557]" -type "float3" -5.0237556 3.1355474 4.3641052 ;
	setAttr ".pt[558]" -type "float3" -5.3719673 0.8084197 4.3671584 ;
	setAttr ".pt[559]" -type "float3" -5.7355814 -1.4589325 4.37602 ;
	setAttr ".pt[560]" -type "float3" -6.079011 -3.4445677 4.3898239 ;
	setAttr ".pt[561]" -type "float3" -6.3686309 -4.9541249 4.407217 ;
	setAttr ".pt[562]" -type "float3" -6.5760922 -5.8398314 4.426496 ;
	setAttr ".pt[563]" -type "float3" 2.7753713 -2.8860443 2.2684307 ;
	setAttr ".pt[564]" -type "float3" 2.7784607 -2.6656165 2.2753685 ;
	setAttr ".pt[565]" -type "float3" 2.8262255 -2.1764586 2.2808759 ;
	setAttr ".pt[566]" -type "float3" 2.9139938 -1.466452 2.2844105 ;
	setAttr ".pt[567]" -type "float3" 3.0331657 -0.60510051 2.2856269 ;
	setAttr ".pt[568]" -type "float3" 3.1720824 0.32328647 2.2844105 ;
	setAttr ".pt[569]" -type "float3" 3.3171384 1.2278267 2.2808754 ;
	setAttr ".pt[570]" -type "float3" 3.4541454 2.0199788 2.275368 ;
	setAttr ".pt[571]" -type "float3" 3.5696898 2.6221976 2.268429 ;
	setAttr ".pt[572]" -type "float3" 3.6524506 2.9755464 2.2607391 ;
	setAttr ".pt[573]" -type "float3" 3.6943383 3.0454187 2.2530465 ;
	setAttr ".pt[574]" -type "float3" 3.6912477 2.8249874 2.2461095 ;
	setAttr ".pt[575]" -type "float3" 3.6434858 2.3358343 2.2406025 ;
	setAttr ".pt[576]" -type "float3" 3.5557206 1.6258273 2.2370682 ;
	setAttr ".pt[577]" -type "float3" 3.4365513 0.76447397 2.2358472 ;
	setAttr ".pt[578]" -type "float3" 3.2976356 -0.16391332 2.2370658 ;
	setAttr ".pt[579]" -type "float3" 3.1525755 -1.0684513 2.2406008 ;
	setAttr ".pt[580]" -type "float3" 3.0155652 -1.8606001 2.2461085 ;
	setAttr ".pt[581]" -type "float3" 2.9000239 -2.4628239 2.2530465 ;
	setAttr ".pt[582]" -type "float3" 2.8172586 -2.8161716 2.2607391 ;
	setAttr ".pt[583]" -type "float3" 6.8814015 -2.2311113 1.2984848 ;
	setAttr ".pt[584]" -type "float3" 6.8831835 -2.1037972 1.3024929 ;
	setAttr ".pt[585]" -type "float3" 6.9107728 -1.8212678 1.3056726 ;
	setAttr ".pt[586]" -type "float3" 6.9614682 -1.4111735 1.3077133 ;
	setAttr ".pt[587]" -type "float3" 7.0303016 -0.91366434 1.3084173 ;
	setAttr ".pt[588]" -type "float3" 7.110539 -0.37743318 1.3077133 ;
	setAttr ".pt[589]" -type "float3" 7.1943207 0.1450198 1.3056726 ;
	setAttr ".pt[590]" -type "float3" 7.2734528 0.60254973 1.3024919 ;
	setAttr ".pt[591]" -type "float3" 7.3401909 0.95038521 1.2984837 ;
	setAttr ".pt[592]" -type "float3" 7.3879919 1.1544795 1.2940414 ;
	setAttr ".pt[593]" -type "float3" 7.4121857 1.1948371 1.2895994 ;
	setAttr ".pt[594]" -type "float3" 7.4104018 1.0675185 1.2855908 ;
	setAttr ".pt[595]" -type "float3" 7.3828144 0.78498763 1.2824107 ;
	setAttr ".pt[596]" -type "float3" 7.3321223 0.37490028 1.2803695 ;
	setAttr ".pt[597]" -type "float3" 7.2632937 -0.12260827 1.2796655 ;
	setAttr ".pt[598]" -type "float3" 7.1830564 -0.65883923 1.2803681 ;
	setAttr ".pt[599]" -type "float3" 7.0992708 -1.181294 1.282409 ;
	setAttr ".pt[600]" -type "float3" 7.0201325 -1.6388321 1.2855908 ;
	setAttr ".pt[601]" -type "float3" 6.9533978 -1.9866667 1.2895985 ;
	setAttr ".pt[602]" -type "float3" 6.9055948 -2.1907535 1.2940418 ;
	setAttr ".pt[603]" -type "float3" 15.510553 -2.21293 -0.78729081 ;
	setAttr ".pt[604]" -type "float3" 15.510976 -2.1826801 -0.78633881 ;
	setAttr ".pt[605]" -type "float3" 15.57361 -1.8059288 -0.78834701 ;
	setAttr ".pt[606]" -type "float3" 15.51753 -2.1155529 -0.78558373 ;
	setAttr ".pt[607]" -type "float3" 15.529575 -2.0181146 -0.78510034 ;
	setAttr ".pt[608]" -type "float3" 15.54593 -1.8999041 -0.78493011 ;
	setAttr ".pt[609]" -type "float3" 15.564995 -1.7724936 -0.78509843 ;
	setAttr ".pt[610]" -type "float3" 15.584903 -1.6483611 -0.78558469 ;
	setAttr ".pt[611]" -type "float3" 15.603703 -1.539657 -0.78633881 ;
	setAttr ".pt[612]" -type "float3" 15.619558 -1.4570107 -0.78729177 ;
	setAttr ".pt[613]" -type "float3" 15.630917 -1.408516 -0.78834701 ;
	setAttr ".pt[614]" -type "float3" 15.636666 -1.3989267 -0.7894001 ;
	setAttr ".pt[615]" -type "float3" 15.636242 -1.4291791 -0.79035473 ;
	setAttr ".pt[616]" -type "float3" 15.629686 -1.4963081 -0.79111075 ;
	setAttr ".pt[617]" -type "float3" 15.617643 -1.5937405 -0.79159641 ;
	setAttr ".pt[618]" -type "float3" 15.60129 -1.7119478 -0.79176307 ;
	setAttr ".pt[619]" -type "float3" 15.582224 -1.8393588 -0.79159641 ;
	setAttr ".pt[620]" -type "float3" 15.562317 -1.9634955 -0.7911098 ;
	setAttr ".pt[621]" -type "float3" 15.543516 -2.072206 -0.79035664 ;
	setAttr ".pt[622]" -type "float3" 15.527659 -2.1548488 -0.78940105 ;
	setAttr ".pt[623]" -type "float3" 15.5163 -2.2033408 -0.78834701 ;
	setAttr ".pt[624]" -type "float3" 6.6529155 0 -10.604786 ;
	setAttr ".pt[625]" -type "float3" 6.6529155 0 -10.604786 ;
	setAttr ".pt[626]" -type "float3" 6.6529155 0 -10.604786 ;
	setAttr ".pt[627]" -type "float3" 6.6529155 0 -10.604786 ;
	setAttr ".pt[628]" -type "float3" 6.6529155 0 -10.604786 ;
	setAttr ".pt[629]" -type "float3" 6.6529155 0 -10.604786 ;
	setAttr ".pt[630]" -type "float3" 6.6529155 0 -10.604786 ;
	setAttr ".pt[631]" -type "float3" 6.6529155 0 -10.604786 ;
	setAttr ".pt[632]" -type "float3" 6.6529155 0 -10.604786 ;
	setAttr ".pt[633]" -type "float3" 6.6529155 0 -10.604786 ;
	setAttr ".pt[634]" -type "float3" 6.6529155 0 -10.604786 ;
	setAttr ".pt[635]" -type "float3" 6.6529155 0 -10.604786 ;
	setAttr ".pt[636]" -type "float3" 6.6529155 0 -10.604786 ;
	setAttr ".pt[637]" -type "float3" 6.6529155 0 -10.604786 ;
	setAttr ".pt[638]" -type "float3" 6.6529155 0 -10.604786 ;
	setAttr ".pt[639]" -type "float3" 6.6529155 0 -10.604786 ;
	setAttr ".pt[640]" -type "float3" 6.6529155 0 -10.604786 ;
	setAttr ".pt[641]" -type "float3" 6.6529155 0 -10.604786 ;
	setAttr ".pt[642]" -type "float3" 6.6529155 0 -10.604786 ;
	setAttr ".pt[643]" -type "float3" 6.6529155 0 -10.604786 ;
	setAttr ".pt[644]" -type "float3" 9.5367432e-007 0 0 ;
	setAttr ".pt[645]" -type "float3" 0 0 -1.5258789e-005 ;
	setAttr ".pt[646]" -type "float3" 1.9073486e-006 1.9073486e-006 0 ;
	setAttr ".pt[647]" -type "float3" 1.9073486e-006 5.7220459e-006 -7.6293945e-006 ;
	setAttr ".pt[648]" -type "float3" 9.5367432e-007 0 0 ;
	setAttr ".pt[649]" -type "float3" 0 0 -7.6293945e-006 ;
	setAttr ".pt[650]" -type "float3" -9.5367432e-007 3.8146973e-006 7.6293945e-006 ;
	setAttr ".pt[651]" -type "float3" 0 0 3.8146973e-006 ;
	setAttr ".pt[652]" -type "float3" 0 3.8146973e-006 7.6293945e-006 ;
	setAttr ".pt[653]" -type "float3" 0 -3.8146973e-006 0 ;
	setAttr ".pt[654]" -type "float3" 0 0 -3.8146973e-006 ;
	setAttr ".pt[656]" -type "float3" 1.4305115e-006 3.8146973e-006 0 ;
	setAttr ".pt[657]" -type "float3" 1.9073486e-006 -3.8146973e-006 1.1444092e-005 ;
	setAttr ".pt[658]" -type "float3" -9.5367432e-007 -3.8146973e-006 -3.8146973e-006 ;
	setAttr ".pt[659]" -type "float3" -4.7683716e-007 -7.6293945e-006 -3.8146973e-006 ;
	setAttr ".pt[660]" -type "float3" 0 7.6293945e-006 0 ;
	setAttr ".pt[661]" -type "float3" 0 0 -3.8146973e-006 ;
	setAttr ".pt[662]" -type "float3" 0 7.6293945e-006 3.8146973e-006 ;
	setAttr ".pt[663]" -type "float3" 0 -3.8146973e-006 -7.6293945e-006 ;
	setAttr ".pt[664]" -type "float3" -8.8245392 -1.0979643 -17.768284 ;
	setAttr ".pt[665]" -type "float3" -8.8245392 -1.7300894 -17.864822 ;
	setAttr ".pt[666]" -type "float3" -8.8245392 -1.9479069 -17.898085 ;
	setAttr ".pt[667]" -type "float3" -8.8245392 -1.7300878 -17.864834 ;
	setAttr ".pt[668]" -type "float3" -8.8245392 -1.0979687 -17.768278 ;
	setAttr ".pt[669]" -type "float3" -8.8245392 -0.1134091 -17.617926 ;
	setAttr ".pt[670]" -type "float3" -8.8245392 1.1272043 -17.428467 ;
	setAttr ".pt[671]" -type "float3" -8.8245392 2.5024395 -17.218449 ;
	setAttr ".pt[672]" -type "float3" -8.8245392 3.877671 -17.008427 ;
	setAttr ".pt[673]" -type "float3" -8.8245392 5.1182847 -16.818966 ;
	setAttr ".pt[674]" -type "float3" -8.8245392 6.1028461 -16.66861 ;
	setAttr ".pt[675]" -type "float3" -8.8245392 6.7349701 -16.572073 ;
	setAttr ".pt[676]" -type "float3" -8.8245392 6.9527826 -16.538809 ;
	setAttr ".pt[677]" -type "float3" -8.8245392 6.7349691 -16.572071 ;
	setAttr ".pt[678]" -type "float3" -8.8245392 6.1028442 -16.668606 ;
	setAttr ".pt[679]" -type "float3" -8.8245392 5.1182828 -16.818966 ;
	setAttr ".pt[680]" -type "float3" -8.8245392 3.8776703 -17.008423 ;
	setAttr ".pt[681]" -type "float3" -8.8245392 2.5024376 -17.218443 ;
	setAttr ".pt[682]" -type "float3" -8.8245392 1.1272101 -17.428469 ;
	setAttr ".pt[683]" -type "float3" -8.8245392 -0.11340852 -17.617929 ;
createNode transform -n "Tower_Small" -p "Castle";
	setAttr ".t" -type "double3" 0.063879857151846409 53.5548172502969 -21.969237001786283 ;
	setAttr ".r" -type "double3" 0 -17.545708314739777 0 ;
	setAttr ".s" -type "double3" 0.39676095043239878 0.39676095043239878 0.39676095043239878 ;
createNode mesh -n "Tower_SmallShape" -p "Tower_Small";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -49.958351 0 ;
	setAttr ".pt[1]" -type "float3" 0 -49.958351 0 ;
	setAttr ".pt[6]" -type "float3" 0 -49.958351 0 ;
	setAttr ".pt[7]" -type "float3" 0 -49.958351 0 ;
	setAttr ".pt[28]" -type "float3" 8.4372196 0 -6.2810764 ;
	setAttr ".pt[29]" -type "float3" -8.4372196 0 -6.2810764 ;
	setAttr ".pt[30]" -type "float3" -8.4372196 0 6.2810764 ;
	setAttr ".pt[31]" -type "float3" 8.4372196 0 6.2810764 ;
createNode transform -n "Tavern_Mid" -p "Castle";
	setAttr ".t" -type "double3" 2.6484117218128631 36.981262913017702 -27.140310820650228 ;
	setAttr ".r" -type "double3" 0 26.704099521032163 0 ;
	setAttr ".s" -type "double3" 0.01909805774953427 0.01909805774953427 0.01909805774953427 ;
createNode mesh -n "Tavern_MidShape" -p "Tavern_Mid";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Castle_Fundament" -p "Castle";
	setAttr ".t" -type "double3" -9.606644482272543 23.420429490218858 -18.452978844427093 ;
	setAttr ".s" -type "double3" 15.571577228996311 15.571577228996311 42.196246433727566 ;
createNode mesh -n "Castle_FundamentShape" -p "Castle_Fundament";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[1080]" -type "float3"  0 -1.1920929e-007 0;
	setAttr ".dc" yes;
createNode transform -n "SheepHead" -p "Castle";
	setAttr ".t" -type "double3" -153.413800314702 30.846091081248822 -162.75422819981947 ;
	setAttr ".s" -type "double3" 0.15400441279100804 0.15400441279100804 0.15400441279100804 ;
createNode transform -n "pointLight1" -p "SheepHead";
	setAttr ".t" -type "double3" 1113.1991325137944 2.6243410401944494 930.10258494478296 ;
createNode pointLight -n "pointLightShape1" -p "pointLight1";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0 0 ;
	setAttr ".urs" no;
	setAttr ".dms" yes;
	setAttr ".us" no;
createNode transform -n "pointLight2" -p "SheepHead";
	setAttr ".t" -type "double3" 1113.3956267699948 2.9970238278245724 946.04011692653592 ;
	setAttr ".r" -type "double3" 0 91.742162824239713 0 ;
createNode pointLight -n "pointLightShape2" -p "pointLight2";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0 0 ;
	setAttr ".in" 2;
	setAttr ".urs" no;
	setAttr ".dms" yes;
createNode transform -n "pSphere6" -p "SheepHead";
	setAttr ".t" -type "double3" 1082.8076375229791 0 937.11589290873246 ;
createNode mesh -n "pSphereShape6" -p "pSphere6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 309 ".pt";
	setAttr ".pt[0]" -type "float3" 2.0078206 -4.1658964 -0.20389286 ;
	setAttr ".pt[1]" -type "float3" 1.9141006 -4.1658964 -0.38782778 ;
	setAttr ".pt[2]" -type "float3" 1.7681289 -4.1658964 -0.53379959 ;
	setAttr ".pt[3]" -type "float3" 5.0472469 -4.1658964 -0.62751901 ;
	setAttr ".pt[4]" -type "float3" 1.3803043 -4.1658959 -0.65981269 ;
	setAttr ".pt[5]" -type "float3" 1.1764064 -4.1658959 -0.62751925 ;
	setAttr ".pt[6]" -type "float3" 0.99247223 -4.1658959 -0.53379941 ;
	setAttr ".pt[7]" -type "float3" 0.84650004 -4.1658959 -0.38782763 ;
	setAttr ".pt[8]" -type "float3" 0.75278085 -4.1658959 -0.20389269 ;
	setAttr ".pt[9]" -type "float3" 0.72048813 -4.1658959 7.2416827e-007 ;
	setAttr ".pt[10]" -type "float3" 0.75278085 -4.1658959 0.20389406 ;
	setAttr ".pt[11]" -type "float3" 0.84650004 -4.1658959 0.38782901 ;
	setAttr ".pt[12]" -type "float3" 0.99247223 -4.1658959 0.53380096 ;
	setAttr ".pt[13]" -type "float3" 1.1764065 -4.1658959 0.62751985 ;
	setAttr ".pt[14]" -type "float3" 1.3803043 -4.1658959 0.6598137 ;
	setAttr ".pt[15]" -type "float3" 5.0472469 -4.1658964 0.62752014 ;
	setAttr ".pt[16]" -type "float3" 1.7681289 -4.1658964 0.53380066 ;
	setAttr ".pt[17]" -type "float3" 1.9141006 -4.1658964 0.3878291 ;
	setAttr ".pt[18]" -type "float3" 2.0078204 -4.1658964 0.20389411 ;
	setAttr ".pt[19]" -type "float3" 2.0401139 -4.1658964 7.2416816e-007 ;
	setAttr ".pt[20]" -type "float3" 2.6198881 -4.0113883 -0.40276587 ;
	setAttr ".pt[21]" -type "float3" 2.4347575 -4.0113883 -0.76610684 ;
	setAttr ".pt[22]" -type "float3" 2.1464081 -4.0113883 -1.054456 ;
	setAttr ".pt[23]" -type "float3" 5.246119 -4.0113883 -1.2395873 ;
	setAttr ".pt[24]" -type "float3" 1.3803043 -4.0113888 -1.3033797 ;
	setAttr ".pt[25]" -type "float3" 0.97753394 -4.0113888 -1.2395875 ;
	setAttr ".pt[26]" -type "float3" 0.61419284 -4.0113888 -1.0544559 ;
	setAttr ".pt[27]" -type "float3" 0.32584447 -4.0113888 -0.76610655 ;
	setAttr ".pt[28]" -type "float3" 0.14071293 -4.0113888 -0.40276578 ;
	setAttr ".pt[29]" -type "float3" 0.076921031 -4.0113888 7.2416827e-007 ;
	setAttr ".pt[30]" -type "float3" 0.14071293 -4.0113888 0.40276727 ;
	setAttr ".pt[31]" -type "float3" 0.32584447 -4.0113888 0.76610786 ;
	setAttr ".pt[32]" -type "float3" 0.61419284 -4.0113888 1.0544565 ;
	setAttr ".pt[33]" -type "float3" 0.97753364 -4.0113888 1.2395879 ;
	setAttr ".pt[34]" -type "float3" 1.3803043 -4.0113888 1.3033795 ;
	setAttr ".pt[35]" -type "float3" 5.246119 -4.0113883 1.2395881 ;
	setAttr ".pt[36]" -type "float3" 2.1464078 -4.0113883 1.0544566 ;
	setAttr ".pt[37]" -type "float3" 2.4347563 -4.0113883 0.76610804 ;
	setAttr ".pt[38]" -type "float3" 2.6198881 -4.0113883 0.40276703 ;
	setAttr ".pt[39]" -type "float3" 2.6836793 -4.0113883 7.2416816e-007 ;
	setAttr ".pt[42]" -type "float3" 2.5058224 -3.7581077 -1.5491483 ;
	setAttr ".pt[43]" -type "float3" 5.4350743 -3.7581077 -1.8211323 ;
	setAttr ".pt[44]" -type "float3" 1.3803043 -3.7581067 -1.9148525 ;
	setAttr ".pt[45]" -type "float3" 0.78857881 -3.7581067 -1.8211328 ;
	setAttr ".pt[46]" -type "float3" 0.25477836 -3.7581067 -1.5491478 ;
	setAttr ".pt[47]" -type "float3" -0.16884771 -3.7581067 -1.1255217 ;
	setAttr ".pt[48]" -type "float3" -0.44083226 -3.7581067 -0.591721 ;
	setAttr ".pt[49]" -type "float3" -0.53455234 -3.7581067 7.2416827e-007 ;
	setAttr ".pt[50]" -type "float3" -0.44083226 -3.7581067 0.59172279 ;
	setAttr ".pt[51]" -type "float3" -0.16884771 -3.7581067 1.1255226 ;
	setAttr ".pt[52]" -type "float3" 0.25477865 -3.7581067 1.5491482 ;
	setAttr ".pt[53]" -type "float3" 0.78857881 -3.7581067 1.8211337 ;
	setAttr ".pt[54]" -type "float3" 1.3803043 -3.7581067 1.9148532 ;
	setAttr ".pt[55]" -type "float3" 5.4350743 -3.7581077 1.821134 ;
	setAttr ".pt[56]" -type "float3" 2.5058224 -3.7581077 1.5491486 ;
	setAttr ".pt[62]" -type "float3" 2.8375242 -3.4122906 -2.0056944 ;
	setAttr ".pt[63]" -type "float3" 5.6094604 -3.4122906 -2.3578355 ;
	setAttr ".pt[64]" -type "float3" 1.3803043 -3.4122901 -2.4791751 ;
	setAttr ".pt[65]" -type "float3" 0.61419284 -3.4122901 -2.3578358 ;
	setAttr ".pt[66]" -type "float3" -0.076922089 -3.4122901 -2.0056942 ;
	setAttr ".pt[67]" -type "float3" -0.62539464 -3.4122901 -1.457222 ;
	setAttr ".pt[68]" -type "float3" -0.97753549 -3.4122901 -0.76610667 ;
	setAttr ".pt[69]" -type "float3" -1.0988743 -3.4122901 7.2416827e-007 ;
	setAttr ".pt[70]" -type "float3" -0.97753549 -3.4122901 0.76610786 ;
	setAttr ".pt[71]" -type "float3" -0.62539434 -3.4122901 1.4572231 ;
	setAttr ".pt[72]" -type "float3" -0.076922089 -3.4122901 2.0056968 ;
	setAttr ".pt[73]" -type "float3" 0.61419284 -3.4122901 2.3578358 ;
	setAttr ".pt[74]" -type "float3" 1.3803043 -3.4122901 2.4791763 ;
	setAttr ".pt[75]" -type "float3" 5.6094604 -3.4122906 2.357836 ;
	setAttr ".pt[76]" -type "float3" 2.8375232 -3.4122906 2.0056956 ;
	setAttr ".pt[83]" -type "float3" 5.7649817 -2.9824512 -2.8364806 ;
	setAttr ".pt[84]" -type "float3" 1.3803043 -2.9824514 -2.9824536 ;
	setAttr ".pt[85]" -type "float3" 0.45867199 -2.9824514 -2.8364806 ;
	setAttr ".pt[86]" -type "float3" -0.37274098 -2.9824514 -2.4128547 ;
	setAttr ".pt[87]" -type "float3" -1.032554 -2.9824514 -1.7530411 ;
	setAttr ".pt[88]" -type "float3" -1.4561802 -2.9824514 -0.92162764 ;
	setAttr ".pt[89]" -type "float3" -1.6021515 -2.9824514 7.2416827e-007 ;
	setAttr ".pt[90]" -type "float3" -1.4561802 -2.9824514 0.92162895 ;
	setAttr ".pt[91]" -type "float3" -1.032554 -2.9824514 1.753042 ;
	setAttr ".pt[92]" -type "float3" -0.37274098 -2.9824514 2.4128554 ;
	setAttr ".pt[93]" -type "float3" 0.45867231 -2.9824514 2.8364801 ;
	setAttr ".pt[94]" -type "float3" 1.3803043 -2.9824514 2.9824536 ;
	setAttr ".pt[95]" -type "float3" 5.7649808 -2.9824512 2.8364806 ;
	setAttr ".pt[100]" -type "float3" 0 2.9316101 0 ;
	setAttr ".pt[103]" -type "float3" 5.8978105 -2.4791746 -3.2452824 ;
	setAttr ".pt[104]" -type "float3" 1.3803043 -2.4791749 -3.4122925 ;
	setAttr ".pt[105]" -type "float3" 0.32584447 -2.4791749 -3.2452834 ;
	setAttr ".pt[106]" -type "float3" -0.62539464 -2.4791749 -2.7606022 ;
	setAttr ".pt[107]" -type "float3" -1.3803021 -2.4791749 -2.0056939 ;
	setAttr ".pt[108]" -type "float3" -1.8649822 -2.4791749 -1.0544556 ;
	setAttr ".pt[109]" -type "float3" -2.031991 -2.4791749 7.2416827e-007 ;
	setAttr ".pt[110]" -type "float3" -1.8649822 -2.4791749 1.0544565 ;
	setAttr ".pt[111]" -type "float3" -1.3803011 -2.4791749 2.0056965 ;
	setAttr ".pt[112]" -type "float3" -0.62539434 -2.4791749 2.7606027 ;
	setAttr ".pt[113]" -type "float3" 0.32584447 -2.4791749 3.2452836 ;
	setAttr ".pt[114]" -type "float3" 1.3803043 -2.4791749 3.4122925 ;
	setAttr ".pt[115]" -type "float3" 5.8978095 -2.4791746 3.2452822 ;
	setAttr ".pt[118]" -type "float3" 0 2.9316101 0 ;
	setAttr ".pt[119]" -type "float3" 0 2.9316101 0 ;
	setAttr ".pt[120]" -type "float3" 0 2.9316101 0 ;
	setAttr ".pt[123]" -type "float3" 6.0046725 -1.9148518 -3.5741756 ;
	setAttr ".pt[124]" -type "float3" 1.3803043 -1.9148521 -3.7581091 ;
	setAttr ".pt[125]" -type "float3" 0.21898063 -1.9148521 -3.5741744 ;
	setAttr ".pt[126]" -type "float3" -0.82866091 -1.9148521 -3.0403733 ;
	setAttr ".pt[127]" -type "float3" -1.6600736 -1.9148521 -2.2089598 ;
	setAttr ".pt[128]" -type "float3" -2.1938739 -1.9148521 -1.1613189 ;
	setAttr ".pt[129]" -type "float3" -2.3778086 -1.9148521 7.2416827e-007 ;
	setAttr ".pt[130]" -type "float3" -2.1938739 -1.9148521 1.1613201 ;
	setAttr ".pt[131]" -type "float3" -1.6600736 -1.9148521 2.208962 ;
	setAttr ".pt[132]" -type "float3" -0.82866091 -1.9148521 3.0403759 ;
	setAttr ".pt[133]" -type "float3" 0.21898063 -1.9148521 3.5741744 ;
	setAttr ".pt[134]" -type "float3" 1.3803043 -1.9148521 3.7581091 ;
	setAttr ".pt[135]" -type "float3" 6.0046725 -1.9148518 3.5741756 ;
	setAttr ".pt[138]" -type "float3" 0 2.9316101 0 ;
	setAttr ".pt[139]" -type "float3" 0 2.9316101 0 ;
	setAttr ".pt[143]" -type "float3" 6.0829406 -1.3033793 -3.8150594 ;
	setAttr ".pt[144]" -type "float3" 1.3803043 -1.3033797 -4.0113921 ;
	setAttr ".pt[145]" -type "float3" 0.14071253 -1.3033797 -3.8150589 ;
	setAttr ".pt[146]" -type "float3" -0.97753549 -1.3033797 -3.2452834 ;
	setAttr ".pt[147]" -type "float3" -1.8649822 -1.3033797 -2.357836 ;
	setAttr ".pt[148]" -type "float3" -2.4347575 -1.3033797 -1.2395871 ;
	setAttr ".pt[149]" -type "float3" -2.6310897 -1.3033797 7.2416827e-007 ;
	setAttr ".pt[150]" -type "float3" -2.4347575 -1.3033797 1.2395879 ;
	setAttr ".pt[151]" -type "float3" -1.8649822 -1.3033797 2.357836 ;
	setAttr ".pt[152]" -type "float3" -0.97753549 -1.3033797 3.2452836 ;
	setAttr ".pt[153]" -type "float3" 0.14071293 -1.3033797 3.8150589 ;
	setAttr ".pt[154]" -type "float3" 1.3803043 -1.3033797 4.0113921 ;
	setAttr ".pt[155]" -type "float3" 6.0829406 -1.3033793 3.8150594 ;
	setAttr ".pt[163]" -type "float3" 6.1306863 -0.65981263 -3.962003 ;
	setAttr ".pt[164]" -type "float3" 1.3803043 -0.65981269 -4.1658988 ;
	setAttr ".pt[165]" -type "float3" 0.09296754 -0.65981269 -3.9620042 ;
	setAttr ".pt[166]" -type "float3" -1.0683525 -0.65981269 -3.3702817 ;
	setAttr ".pt[167]" -type "float3" -1.9899808 -0.65981269 -2.4486518 ;
	setAttr ".pt[168]" -type "float3" -2.5817013 -0.65981269 -1.2873315 ;
	setAttr ".pt[169]" -type "float3" -2.7855966 -0.65981269 7.2416827e-007 ;
	setAttr ".pt[170]" -type "float3" -2.5817013 -0.65981269 1.287334 ;
	setAttr ".pt[171]" -type "float3" -1.9899808 -0.65981269 2.4486532 ;
	setAttr ".pt[172]" -type "float3" -1.0683519 -0.65981269 3.3702826 ;
	setAttr ".pt[173]" -type "float3" 0.092967756 -0.65981269 3.9620042 ;
	setAttr ".pt[174]" -type "float3" 1.3803024 -0.65981269 4.1658978 ;
	setAttr ".pt[175]" -type "float3" 6.1306853 -0.65981263 3.9620028 ;
	setAttr ".pt[183]" -type "float3" 6.1467338 0 -4.0113907 ;
	setAttr ".pt[184]" -type "float3" 1.3803043 0 -4.2178254 ;
	setAttr ".pt[185]" -type "float3" 0.076920345 0 -4.0113902 ;
	setAttr ".pt[186]" -type "float3" -1.098875 0 -3.4122901 ;
	setAttr ".pt[187]" -type "float3" -2.0319915 0 -2.4791749 ;
	setAttr ".pt[188]" -type "float3" -2.6310897 0 -1.3033791 ;
	setAttr ".pt[189]" -type "float3" -2.8375242 0 7.2416827e-007 ;
	setAttr ".pt[190]" -type "float3" -2.6310897 0 1.3033793 ;
	setAttr ".pt[191]" -type "float3" -2.031991 0 2.479176 ;
	setAttr ".pt[192]" -type "float3" -1.0988743 0 3.4122925 ;
	setAttr ".pt[193]" -type "float3" 0.076921031 0 4.0113921 ;
	setAttr ".pt[194]" -type "float3" 1.3803024 0 4.2178254 ;
	setAttr ".pt[195]" -type "float3" 6.1467319 0 4.0113888 ;
	setAttr ".pt[203]" -type "float3" 6.1306863 0.65981263 -3.962003 ;
	setAttr ".pt[204]" -type "float3" 1.3803043 0.65981269 -4.1658988 ;
	setAttr ".pt[205]" -type "float3" 0.09296754 0.65981269 -3.9620042 ;
	setAttr ".pt[206]" -type "float3" -1.0683525 0.65981269 -3.3702817 ;
	setAttr ".pt[207]" -type "float3" -1.9899808 0.65981269 -2.4486518 ;
	setAttr ".pt[208]" -type "float3" -2.5817013 0.65981269 -1.2873315 ;
	setAttr ".pt[209]" -type "float3" -2.7855966 0.65981269 7.2416827e-007 ;
	setAttr ".pt[210]" -type "float3" -2.5817013 0.65981269 1.287334 ;
	setAttr ".pt[211]" -type "float3" -1.9899808 0.65981269 2.4486532 ;
	setAttr ".pt[212]" -type "float3" -1.0683519 0.65981269 3.3702826 ;
	setAttr ".pt[213]" -type "float3" 0.092967756 0.65981269 3.9620042 ;
	setAttr ".pt[214]" -type "float3" 1.3803024 0.65981269 4.1658978 ;
	setAttr ".pt[215]" -type "float3" 6.1306853 0.65981263 3.9620028 ;
	setAttr ".pt[223]" -type "float3" 6.0829406 1.3033793 -3.8150594 ;
	setAttr ".pt[224]" -type "float3" 1.3803043 1.3033797 -4.0113921 ;
	setAttr ".pt[225]" -type "float3" 0.14071253 1.3033797 -3.8150589 ;
	setAttr ".pt[226]" -type "float3" -0.97753549 1.3033797 -3.2452834 ;
	setAttr ".pt[227]" -type "float3" -1.8649822 1.3033797 -2.357836 ;
	setAttr ".pt[228]" -type "float3" -2.4347575 1.3033797 -1.2395871 ;
	setAttr ".pt[229]" -type "float3" -2.6310897 1.3033797 7.2416827e-007 ;
	setAttr ".pt[230]" -type "float3" -2.4347575 1.3033797 1.2395879 ;
	setAttr ".pt[231]" -type "float3" -1.8649822 1.3033797 2.357836 ;
	setAttr ".pt[232]" -type "float3" -0.97753549 1.3033797 3.2452836 ;
	setAttr ".pt[233]" -type "float3" 0.14071293 1.3033797 3.8150589 ;
	setAttr ".pt[234]" -type "float3" 1.3803043 1.3033797 4.0113921 ;
	setAttr ".pt[235]" -type "float3" 6.0829406 1.3033793 3.8150594 ;
	setAttr ".pt[243]" -type "float3" 6.0046725 1.9148518 -3.5741756 ;
	setAttr ".pt[244]" -type "float3" 1.3803043 1.9148521 -3.7581091 ;
	setAttr ".pt[245]" -type "float3" 0.21898063 1.9148521 -3.5741744 ;
	setAttr ".pt[246]" -type "float3" -0.82866091 1.9148521 -3.0403733 ;
	setAttr ".pt[247]" -type "float3" -1.6600736 1.9148521 -2.2089598 ;
	setAttr ".pt[248]" -type "float3" -2.1938739 1.9148521 -1.1613189 ;
	setAttr ".pt[249]" -type "float3" -2.3778086 1.9148521 7.2416827e-007 ;
	setAttr ".pt[250]" -type "float3" -2.1938739 1.9148521 1.1613201 ;
	setAttr ".pt[251]" -type "float3" -1.6600736 1.9148521 2.208962 ;
	setAttr ".pt[252]" -type "float3" -0.82866091 1.9148521 3.0403759 ;
	setAttr ".pt[253]" -type "float3" 0.21898063 1.9148521 3.5741744 ;
	setAttr ".pt[254]" -type "float3" 1.3803043 1.9148521 3.7581091 ;
	setAttr ".pt[255]" -type "float3" 6.0046725 1.9148518 3.5741756 ;
	setAttr ".pt[263]" -type "float3" 5.8978105 2.4791746 -3.2452824 ;
	setAttr ".pt[264]" -type "float3" 1.3803043 2.4791749 -3.4122925 ;
	setAttr ".pt[265]" -type "float3" 0.32584447 2.4791749 -3.2452834 ;
	setAttr ".pt[266]" -type "float3" -0.62539464 2.4791749 -2.7606022 ;
	setAttr ".pt[267]" -type "float3" -1.3803021 2.4791749 -2.0056939 ;
	setAttr ".pt[268]" -type "float3" -1.8649822 2.4791749 -1.0544556 ;
	setAttr ".pt[269]" -type "float3" -2.031991 2.4791749 7.2416827e-007 ;
	setAttr ".pt[270]" -type "float3" -1.8649822 2.4791749 1.0544565 ;
	setAttr ".pt[271]" -type "float3" -1.3803011 2.4791749 2.0056965 ;
	setAttr ".pt[272]" -type "float3" -0.62539434 2.4791749 2.7606027 ;
	setAttr ".pt[273]" -type "float3" 0.32584447 2.4791749 3.2452836 ;
	setAttr ".pt[274]" -type "float3" 1.3803043 2.4791749 3.4122925 ;
	setAttr ".pt[275]" -type "float3" 5.8978095 2.4791746 3.2452822 ;
	setAttr ".pt[283]" -type "float3" 5.7649817 2.9824512 -2.8364806 ;
	setAttr ".pt[284]" -type "float3" 1.3803043 2.9824514 -2.9824536 ;
	setAttr ".pt[285]" -type "float3" 0.45867199 2.9824514 -2.8364806 ;
	setAttr ".pt[286]" -type "float3" -0.37274098 2.9824514 -2.4128547 ;
	setAttr ".pt[287]" -type "float3" -1.032554 2.9824514 -1.7530411 ;
	setAttr ".pt[288]" -type "float3" -1.4561802 2.9824514 -0.92162764 ;
	setAttr ".pt[289]" -type "float3" -1.6021515 2.9824514 7.2416827e-007 ;
	setAttr ".pt[290]" -type "float3" -1.4561802 2.9824514 0.92162895 ;
	setAttr ".pt[291]" -type "float3" -1.032554 2.9824514 1.753042 ;
	setAttr ".pt[292]" -type "float3" -0.37274098 2.9824514 2.4128554 ;
	setAttr ".pt[293]" -type "float3" 0.45867231 2.9824514 2.8364801 ;
	setAttr ".pt[294]" -type "float3" 1.3803043 2.9824514 2.9824536 ;
	setAttr ".pt[295]" -type "float3" 5.7649808 2.9824512 2.8364806 ;
	setAttr ".pt[300]" -type "float3" 6.1174827 -1.1853 -1.4309976 ;
	setAttr ".pt[301]" -type "float3" 5.7490687 0 0 ;
	setAttr ".pt[302]" -type "float3" 8.5865955 3.4122906 -2.0056944 ;
	setAttr ".pt[303]" -type "float3" 5.6094604 3.4122906 -2.3578355 ;
	setAttr ".pt[304]" -type "float3" 1.3803043 3.4122901 -2.4791751 ;
	setAttr ".pt[305]" -type "float3" 0.61419284 3.4122901 -2.3578358 ;
	setAttr ".pt[306]" -type "float3" -0.076922089 3.4122901 -2.0056942 ;
	setAttr ".pt[307]" -type "float3" -0.62539464 3.4122901 -1.457222 ;
	setAttr ".pt[308]" -type "float3" -0.97753549 3.4122901 -0.76610667 ;
	setAttr ".pt[309]" -type "float3" -1.0988743 3.4122901 7.2416827e-007 ;
	setAttr ".pt[310]" -type "float3" -0.97753549 3.4122901 0.76610786 ;
	setAttr ".pt[311]" -type "float3" -0.62539434 3.4122901 1.4572231 ;
	setAttr ".pt[312]" -type "float3" -0.076922089 3.4122901 2.0056968 ;
	setAttr ".pt[313]" -type "float3" 0.61419284 3.4122901 2.3578358 ;
	setAttr ".pt[314]" -type "float3" 1.3803043 3.4122901 2.4791763 ;
	setAttr ".pt[315]" -type "float3" 5.6094604 3.4122906 2.357836 ;
	setAttr ".pt[316]" -type "float3" 8.5865936 3.4122906 2.0056956 ;
	setAttr ".pt[317]" -type "float3" 5.7490687 0 0 ;
	setAttr ".pt[318]" -type "float3" 6.1174827 -1.1853 -1.4309976 ;
	setAttr ".pt[319]" -type "float3" 6.1174827 -1.1853 -1.4309976 ;
	setAttr ".pt[320]" -type "float3" 13.407472 0 0 ;
	setAttr ".pt[321]" -type "float3" 14.665936 0 0 ;
	setAttr ".pt[322]" -type "float3" 15.219829 3.7581077 -1.5491483 ;
	setAttr ".pt[323]" -type "float3" 5.4350743 3.7581077 -1.8211323 ;
	setAttr ".pt[324]" -type "float3" 1.3803043 3.7581067 -1.9148525 ;
	setAttr ".pt[325]" -type "float3" 0.78857881 3.7581067 -1.8211328 ;
	setAttr ".pt[326]" -type "float3" 0.25477836 3.7581067 -1.5491478 ;
	setAttr ".pt[327]" -type "float3" -0.16884771 3.7581067 -1.1255217 ;
	setAttr ".pt[328]" -type "float3" -0.44083226 3.7581067 -0.591721 ;
	setAttr ".pt[329]" -type "float3" -0.53455234 3.7581067 7.2416827e-007 ;
	setAttr ".pt[330]" -type "float3" -0.44083226 3.7581067 0.59172279 ;
	setAttr ".pt[331]" -type "float3" -0.16884771 3.7581067 1.1255226 ;
	setAttr ".pt[332]" -type "float3" 0.25477865 3.7581067 1.5491482 ;
	setAttr ".pt[333]" -type "float3" 0.78857881 3.7581067 1.8211337 ;
	setAttr ".pt[334]" -type "float3" 1.3803043 3.7581067 1.9148532 ;
	setAttr ".pt[335]" -type "float3" 5.4350743 3.7581077 1.821134 ;
	setAttr ".pt[336]" -type "float3" 15.219829 3.7581077 1.5491486 ;
	setAttr ".pt[337]" -type "float3" 14.665936 0 0 ;
	setAttr ".pt[338]" -type "float3" 13.407472 0 0 ;
	setAttr ".pt[339]" -type "float3" 13.407472 0 0 ;
	setAttr ".pt[340]" -type "float3" 12.241452 4.0113883 -0.40276587 ;
	setAttr ".pt[341]" -type "float3" 12.056321 4.0113883 -0.76610684 ;
	setAttr ".pt[342]" -type "float3" 6.6370125 4.0113883 -1.054456 ;
	setAttr ".pt[343]" -type "float3" 5.246119 4.0113883 -1.2395873 ;
	setAttr ".pt[344]" -type "float3" 1.3803043 4.0113888 -1.3033797 ;
	setAttr ".pt[345]" -type "float3" 0.97753394 4.0113888 -1.2395875 ;
	setAttr ".pt[346]" -type "float3" 0.61419284 4.0113888 -1.0544559 ;
	setAttr ".pt[347]" -type "float3" 0.32584447 4.0113888 -0.76610655 ;
	setAttr ".pt[348]" -type "float3" 0.14071293 4.0113888 -0.40276578 ;
	setAttr ".pt[349]" -type "float3" 0.076921031 4.0113888 7.2416827e-007 ;
	setAttr ".pt[350]" -type "float3" 0.14071293 4.0113888 0.40276727 ;
	setAttr ".pt[351]" -type "float3" 0.32584447 4.0113888 0.76610786 ;
	setAttr ".pt[352]" -type "float3" 0.61419284 4.0113888 1.0544565 ;
	setAttr ".pt[353]" -type "float3" 0.97753364 4.0113888 1.2395879 ;
	setAttr ".pt[354]" -type "float3" 1.3803043 4.0113888 1.3033795 ;
	setAttr ".pt[355]" -type "float3" 5.246119 4.0113883 1.2395881 ;
	setAttr ".pt[356]" -type "float3" 6.637012 4.0113883 1.0544566 ;
	setAttr ".pt[357]" -type "float3" 12.05632 4.0113883 0.76610804 ;
	setAttr ".pt[358]" -type "float3" 12.241452 4.0113883 0.40276703 ;
	setAttr ".pt[359]" -type "float3" 12.305243 4.0113883 7.2416816e-007 ;
	setAttr ".pt[360]" -type "float3" 2.0078206 4.1658964 -0.20389286 ;
	setAttr ".pt[361]" -type "float3" 1.9141006 4.1658964 -0.38782778 ;
	setAttr ".pt[362]" -type "float3" 1.7681289 4.1658964 -0.53379959 ;
	setAttr ".pt[363]" -type "float3" 5.0472469 4.1658964 -0.62751901 ;
	setAttr ".pt[364]" -type "float3" 1.3803043 4.1658959 -0.65981269 ;
	setAttr ".pt[365]" -type "float3" 1.1764064 4.1658959 -0.62751925 ;
	setAttr ".pt[366]" -type "float3" 0.99247223 4.1658959 -0.53379941 ;
	setAttr ".pt[367]" -type "float3" 0.84650004 4.1658959 -0.38782763 ;
	setAttr ".pt[368]" -type "float3" 0.75278085 4.1658959 -0.20389269 ;
	setAttr ".pt[369]" -type "float3" 0.72048813 4.1658959 7.2416827e-007 ;
	setAttr ".pt[370]" -type "float3" 0.75278085 4.1658959 0.20389406 ;
	setAttr ".pt[371]" -type "float3" 0.84650004 4.1658959 0.38782901 ;
	setAttr ".pt[372]" -type "float3" 0.99247223 4.1658959 0.53380096 ;
	setAttr ".pt[373]" -type "float3" 1.1764065 4.1658959 0.62751985 ;
	setAttr ".pt[374]" -type "float3" 1.3803043 4.1658959 0.6598137 ;
	setAttr ".pt[375]" -type "float3" 5.0472469 4.1658964 0.62752014 ;
	setAttr ".pt[376]" -type "float3" 1.7681289 4.1658964 0.53380066 ;
	setAttr ".pt[377]" -type "float3" 1.9141006 4.1658964 0.3878291 ;
	setAttr ".pt[378]" -type "float3" 2.0078204 4.1658964 0.20389411 ;
	setAttr ".pt[379]" -type "float3" 2.0401139 4.1658964 7.2416816e-007 ;
	setAttr ".pt[380]" -type "float3" 4.8433576 -4.217824 7.2416827e-007 ;
	setAttr ".pt[381]" -type "float3" 4.8433576 4.217824 7.2416827e-007 ;
	setAttr ".pt[396]" -type "float3" -3.075501 6.2132006 3.6286185 ;
	setAttr ".pt[397]" -type "float3" 1.9523104 5.5454931 8.222764 ;
	setAttr ".pt[398]" -type "float3" 3.0755017 2.4272151 6.6768241 ;
	setAttr ".pt[399]" -type "float3" -1.0958982 2.4272151 2.5054266 ;
	setAttr ".pt[400]" -type "float3" 2.1348257 6.3473854 -5.0598841 ;
	setAttr ".pt[401]" -type "float3" -3.3630216 7.077517 -0.036244154 ;
	setAttr ".pt[402]" -type "float3" -1.1983508 2.9375844 1.1919501 ;
	setAttr ".pt[403]" -type "float3" 3.3630202 2.9375844 -3.3694165 ;
createNode transform -n "group1";
createNode transform -n "Castle_Ground" -p "group1";
	setAttr ".t" -type "double3" -9.106644482272543 6.4999999999999858 -29.765600390169737 ;
	setAttr ".s" -type "double3" 7.7312865721974049 1.6658077746727915 18.318355346797738 ;
createNode mesh -n "Castle_GroundShape" -p "Castle_Ground";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[19]" -type "float3" 0 9.872385 -0.51958352 ;
	setAttr ".pt[35]" -type "float3" 0 7.9065428 -0.3403559 ;
	setAttr ".pt[70]" -type "float3" 0 10.514973 0 ;
	setAttr ".pt[83]" -type "float3" 0 8.0624838 0 ;
	setAttr ".pt[107]" -type "float3" 0 12.68748 0 ;
	setAttr ".pt[119]" -type "float3" 0 13.686051 -1.110223e-016 ;
	setAttr ".pt[131]" -type "float3" 0 8.0664482 0 ;
	setAttr ".pt[155]" -type "float3" 0 10.488724 0.30795929 ;
	setAttr ".pt[263]" -type "float3" 0 -9.5367432e-007 0 ;
	setAttr ".pt[264]" -type "float3" 0 0 -0.5195834 ;
	setAttr ".dr" 1;
createNode transform -n "Castle_Ground_Path" -p "group1";
	setAttr ".t" -type "double3" 72.556225320176836 5.1445933394463914 -13.677023971007729 ;
	setAttr ".r" -type "double3" 0 -4.1198833309620575 0 ;
	setAttr ".s" -type "double3" 8.932842029089997 1 1 ;
createNode mesh -n "Castle_Ground_PathShape" -p "Castle_Ground_Path";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Spikes" -p "group1";
createNode transform -n "pCube3" -p "Spikes";
	setAttr ".t" -type "double3" -23.392119431845472 -1.7969504655682591 33.666789961580889 ;
	setAttr ".r" -type "double3" 8.8017332404477777 0 0 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 37 ".pt";
	setAttr ".pt[0]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[1]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[6]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[7]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[10]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[11]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[21]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[22]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[27]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[28]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[31]" -type "float3" -1.6322985 -2.6337576 0.4752 ;
	setAttr ".pt[34]" -type "float3" 0 0 -3.2177401 ;
	setAttr ".pt[36]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[37]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[38]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[39]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[40]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[42]" -type "float3" 0 0 -3.2177401 ;
	setAttr ".pt[44]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[45]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[46]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[47]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[48]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[51]" -type "float3" 3.2066307 2.5841737 -2.8688309 ;
	setAttr ".pt[52]" -type "float3" 0 -5.4462242 -0.95916474 ;
	setAttr ".pt[54]" -type "float3" 2.7453134 0 0 ;
	setAttr ".pt[55]" -type "float3" 1.745862 -2.6244471 2.7081213 ;
	setAttr ".pt[56]" -type "float3" -1.6322985 0 0 ;
	setAttr ".pt[57]" -type "float3" 0 -2.6244471 2.7081213 ;
	setAttr ".pt[58]" -type "float3" 0.56734204 0 0 ;
	setAttr ".pt[59]" -type "float3" 0 1.7568703 1.120211 ;
	setAttr ".pt[60]" -type "float3" -1.8676908 0 0 ;
	setAttr ".pt[61]" -type "float3" 0 1.7568703 1.120211 ;
	setAttr ".pt[62]" -type "float3" 0.56734204 0 3.6705213 ;
	setAttr ".pt[63]" -type "float3" 2.7092581 -2.5314372 8.0273542 ;
	setAttr ".pt[64]" -type "float3" -1.8676908 0 3.6705213 ;
	setAttr ".pt[65]" -type "float3" -2.6343534 0 4.8263035 ;
createNode transform -n "pCube4" -p "Spikes";
	setAttr ".t" -type "double3" -22.068551406354302 7.8098068191533807 11.20438335957158 ;
	setAttr ".r" -type "double3" 0 59.529775123482658 0 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[2]" -type "float3" 0 -7.6961632 0 ;
	setAttr ".pt[3]" -type "float3" 0 -7.3985968 0 ;
	setAttr ".pt[4]" -type "float3" 0 -7.9521828 0 ;
	setAttr ".pt[5]" -type "float3" 0 -7.6961632 0 ;
	setAttr ".pt[13]" -type "float3" 0 25.439535 -4.7371902 ;
createNode transform -n "pCube6" -p "Spikes";
	setAttr ".t" -type "double3" -1.1336693836555014 -0.97465551599993194 30.798499555341394 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 122.90686662670501 0 ;
	setAttr -av ".ry";
createNode mesh -n "pCubeShape6" -p "pCube6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.36923963 0.74423969 0.25 0.25576037 0.25 0.375
		 0.36923963 0.25576037 0 0.375 0.88076037 0.625 0.88076037 0.74423963 0 0.51456308
		 0.25 0.51456308 0.36923963 0.51456308 0.5 0.51456308 0.75 0.51456308 0.88076037 0.51456308
		 0 0.51456308 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt";
	setAttr ".pt[0]" -type "float3" -7.4606987e-014 10.194686 1.4921397e-013 ;
	setAttr ".pt[1]" -type "float3" 7.4606987e-014 10.194686 1.4921397e-013 ;
	setAttr ".pt[2]" -type "float3" 0 -7.6961632 0 ;
	setAttr ".pt[3]" -type "float3" 0 -7.3985968 0 ;
	setAttr ".pt[4]" -type "float3" 0 -7.9521828 0 ;
	setAttr ".pt[5]" -type "float3" 0 -7.6961632 0 ;
	setAttr ".pt[6]" -type "float3" -7.4606987e-014 10.194686 -1.4921397e-013 ;
	setAttr ".pt[7]" -type "float3" 7.4606987e-014 10.194686 -1.4921397e-013 ;
	setAttr ".pt[10]" -type "float3" -7.4606987e-014 10.194686 4.6629367e-015 ;
	setAttr ".pt[11]" -type "float3" 7.4606987e-014 10.194686 4.6629367e-015 ;
	setAttr ".pt[13]" -type "float3" 0 25.439535 -4.7371902 ;
	setAttr ".pt[15]" -type "float3" 9.3258734e-015 10.194686 -1.4921397e-013 ;
	setAttr ".pt[16]" -type "float3" 9.3258734e-015 10.194686 4.6629367e-015 ;
	setAttr ".pt[17]" -type "float3" 9.3258734e-015 10.194686 1.4921397e-013 ;
	setAttr -s 18 ".vt[0:17]"  -5.57954359 -7.80980682 6.22579622 5.57954359 -7.80980682 6.22579622
		 -5.57954359 7.80980682 6.22579622 5.57954359 7.80980682 6.22579622 -5.57954359 7.80980682 -6.22579622
		 5.57954359 7.80980682 -6.22579622 -5.57954359 -7.80980682 -6.22579622 5.57954359 -7.80980682 -6.22579622
		 5.57954407 7.8098073 0.28690314 -5.57954407 7.8098073 0.28690314 -5.57954359 -7.80980682 0.28690338
		 5.57954359 -7.80980682 0.28690338 0.65004206 7.80980682 6.22579622 0.65004206 7.8098073 0.28690314
		 0.65004206 7.80980682 -6.22579622 0.65004206 -7.80980682 -6.22579622 0.65004206 -7.80980682 0.28690338
		 0.65004206 -7.80980682 6.22579622;
	setAttr -s 32 ".ed[0:31]"  0 17 0 2 12 0 4 14 0 6 15 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 13 1 10 0 0 9 10 1 11 1 0 10 16 1 11 8 1
		 12 3 0 13 9 1 12 13 1 14 5 0 13 14 1 15 7 0 14 15 1 16 11 1 15 16 1 17 1 0 16 17 1
		 17 12 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 0 31 -2 -5
		mu 0 4 0 27 22 2
		f 4 1 22 21 -7
		mu 0 4 2 22 23 17
		f 4 2 26 -4 -9
		mu 0 4 4 24 25 6
		f 4 18 30 -1 -16
		mu 0 4 19 26 28 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -22 24 -3 -14
		mu 0 4 17 23 24 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 28 -19 -11
		mu 0 4 6 25 26 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 20 7 14 -23
		mu 0 4 22 3 14 23
		f 4 -25 -15 12 -24
		mu 0 4 24 23 14 5
		f 4 -27 23 9 -26
		mu 0 4 25 24 5 7
		f 4 -29 25 11 -28
		mu 0 4 26 25 7 20
		f 4 -31 27 17 -30
		mu 0 4 28 26 20 9
		f 4 -32 29 5 -21
		mu 0 4 22 27 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube7" -p "Spikes";
	setAttr ".t" -type "double3" -25.370727873675847 8.9128101892311076 17.292152738111639 ;
	setAttr ".r" -type "double3" 0 59.529775123482658 0 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[22:25]" -type "float3"  8.919095 0 -5.6843419e-014 
		0 11.187946 0 3.5310023 -26.796051 -3.7120972 8.6524706 -12.489447 -1.2434498e-013;
createNode mesh -n "polySurfaceShape1" -p "pCube7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.36923963 0.74423969 0.25 0.25576037 0.25 0.375
		 0.36923963 0.25576037 0 0.375 0.88076037 0.625 0.88076037 0.74423963 0 0.51456308
		 0.25 0.51456308 0.36923963 0.51456308 0.5 0.51456308 0.75 0.51456308 0.88076037 0.51456308
		 0 0.51456308 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[2]" -type "float3" 0 -7.6961632 0 ;
	setAttr ".pt[3]" -type "float3" 0 -7.3985968 0 ;
	setAttr ".pt[4]" -type "float3" 0 -7.9521828 0 ;
	setAttr ".pt[5]" -type "float3" 0 -7.6961632 0 ;
	setAttr ".pt[13]" -type "float3" 0 25.439535 -4.7371902 ;
	setAttr -s 18 ".vt[0:17]"  -5.57954359 -7.80980682 6.22579622 5.57954359 -7.80980682 6.22579622
		 -5.57954359 7.80980682 6.22579622 5.57954359 7.80980682 6.22579622 -5.57954359 7.80980682 -6.22579622
		 5.57954359 7.80980682 -6.22579622 -5.57954359 -7.80980682 -6.22579622 5.57954359 -7.80980682 -6.22579622
		 5.57954407 7.8098073 0.28690314 -5.57954407 7.8098073 0.28690314 -5.57954359 -7.80980682 0.28690338
		 5.57954359 -7.80980682 0.28690338 0.65004206 7.80980682 6.22579622 0.65004206 7.8098073 0.28690314
		 0.65004206 7.80980682 -6.22579622 0.65004206 -7.80980682 -6.22579622 0.65004206 -7.80980682 0.28690338
		 0.65004206 -7.80980682 6.22579622;
	setAttr -s 32 ".ed[0:31]"  0 17 0 2 12 0 4 14 0 6 15 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 13 1 10 0 0 9 10 1 11 1 0 10 16 1 11 8 1
		 12 3 0 13 9 1 12 13 1 14 5 0 13 14 1 15 7 0 14 15 1 16 11 1 15 16 1 17 1 0 16 17 1
		 17 12 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 0 31 -2 -5
		mu 0 4 0 27 22 2
		f 4 1 22 21 -7
		mu 0 4 2 22 23 17
		f 4 2 26 -4 -9
		mu 0 4 4 24 25 6
		f 4 18 30 -1 -16
		mu 0 4 19 26 28 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -22 24 -3 -14
		mu 0 4 17 23 24 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 28 -19 -11
		mu 0 4 6 25 26 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 20 7 14 -23
		mu 0 4 22 3 14 23
		f 4 -25 -15 12 -24
		mu 0 4 24 23 14 5
		f 4 -27 23 9 -26
		mu 0 4 25 24 5 7
		f 4 -29 25 11 -28
		mu 0 4 26 25 7 20
		f 4 -31 27 17 -30
		mu 0 4 28 26 20 9
		f 4 -32 29 5 -21
		mu 0 4 22 27 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8" -p "Spikes";
	setAttr ".t" -type "double3" -5.5527889973020024 8.9128101892311093 35.756741758681414 ;
	setAttr ".r" -type "double3" 0 133.96878374504581 0 ;
	setAttr ".s" -type "double3" 0.8642603984569126 0.8642603984569126 0.8642603984569126 ;
createNode mesh -n "pCubeShape8" -p "pCube8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 37 ".uvst[0].uvsp[0:36]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.36923963 0.74423969 0.25 0.25576037 0.25 0.375
		 0.36923963 0.25576037 0 0.375 0.88076037 0.625 0.88076037 0.74423963 0 0.51456308
		 0.25 0.51456308 0.36923963 0.51456308 0.5 0.51456308 0.75 0.51456308 0.88076037 0.51456308
		 0 0.51456308 1 0.51456308 0.25 0.625 0.25 0.625 0.36923963 0.51456308 0.36923963
		 0.375 0.25 0.51456308 0.25 0.51456308 0.36923963 0.375 0.36923963;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[22:25]" -type "float3"  8.919095 0 -5.6843419e-014 
		0 11.187946 0 3.5310023 -26.796051 -3.7120972 8.6524706 -12.489447 -1.2434498e-013;
	setAttr -s 26 ".vt[0:25]"  -5.57954216 -7.80980682 6.22579575 5.57954597 -7.80980682 6.22579575
		 -5.57954216 0.11364365 6.22579575 5.57954597 0.41120911 6.22579575 -5.57954407 -0.14237595 -6.22579861
		 5.57954407 0.11364365 -6.2257967 -5.57954407 -7.80980682 -6.22579861 5.57954407 -7.80980682 -6.2257967
		 5.57954597 7.80980682 0.28690338 -5.57954407 7.80980682 0.28690338 -5.57954216 -7.80980682 0.28690338
		 5.57954597 -7.80980682 0.28690338 0.65004349 7.80980682 6.22579575 0.65004539 33.24934387 -4.45028687
		 0.65004158 7.80980682 -6.22579765 0.65004158 -7.80980682 -6.22579765 0.65004158 -7.80980682 0.28690338
		 0.65004349 -7.80980682 6.22579575 6.99671555 12.40338898 6.23574638 11.92621613 17.20145416 11.49376678
		 11.92621422 10.47521973 5.55487061 3.68506241 15.032722473 0.81768036 -14.39125252 4.74830246 15.46882629
		 -8.16166306 12.44446564 15.46882629 -8.16166115 37.88400269 4.79274178 -14.39125252 12.44446564 9.52993393;
	setAttr -s 48 ".ed[0:47]"  0 17 0 2 12 0 4 14 0 6 15 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 13 1 10 0 0 9 10 1 11 1 0 10 16 1 11 8 1
		 12 3 0 13 9 1 12 13 0 14 5 0 13 14 1 15 7 0 14 15 1 16 11 1 15 16 1 17 1 0 16 17 1
		 17 12 1 12 18 0 3 19 0 18 19 0 8 20 1 19 20 0 13 21 0 20 21 0 18 21 0 2 22 0 12 23 0
		 22 23 0 13 24 0 23 24 0 9 25 1 24 25 0 22 25 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 31 -2 -5
		mu 0 4 0 27 22 2
		f 4 42 44 46 -48
		mu 0 4 33 34 35 36
		f 4 2 26 -4 -9
		mu 0 4 4 24 25 6
		f 4 18 30 -1 -16
		mu 0 4 19 26 28 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -22 24 -3 -14
		mu 0 4 17 23 24 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 28 -19 -11
		mu 0 4 6 25 26 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 34 36 38 -40
		mu 0 4 29 30 31 32
		f 4 -25 -15 12 -24
		mu 0 4 24 23 14 5
		f 4 -27 23 9 -26
		mu 0 4 25 24 5 7
		f 4 -29 25 11 -28
		mu 0 4 26 25 7 20
		f 4 -31 27 17 -30
		mu 0 4 28 26 20 9
		f 4 -32 29 5 -21
		mu 0 4 22 27 1 3
		f 4 20 33 -35 -33
		mu 0 4 22 3 30 29
		f 4 7 35 -37 -34
		mu 0 4 3 14 31 30
		f 4 14 37 -39 -36
		mu 0 4 14 23 32 31
		f 4 -23 32 39 -38
		mu 0 4 23 22 29 32
		f 4 1 41 -43 -41
		mu 0 4 2 22 34 33
		f 4 22 43 -45 -42
		mu 0 4 22 23 35 34
		f 4 21 45 -47 -44
		mu 0 4 23 17 36 35
		f 4 -7 40 47 -46
		mu 0 4 17 2 33 36;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "pCube8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.36923963 0.74423969 0.25 0.25576037 0.25 0.375
		 0.36923963 0.25576037 0 0.375 0.88076037 0.625 0.88076037 0.74423963 0 0.51456308
		 0.25 0.51456308 0.36923963 0.51456308 0.5 0.51456308 0.75 0.51456308 0.88076037 0.51456308
		 0 0.51456308 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[2]" -type "float3" 0 -7.6961632 0 ;
	setAttr ".pt[3]" -type "float3" 0 -7.3985968 0 ;
	setAttr ".pt[4]" -type "float3" 0 -7.9521828 0 ;
	setAttr ".pt[5]" -type "float3" 0 -7.6961632 0 ;
	setAttr ".pt[13]" -type "float3" 0 25.439535 -4.7371902 ;
	setAttr -s 18 ".vt[0:17]"  -5.57954359 -7.80980682 6.22579622 5.57954359 -7.80980682 6.22579622
		 -5.57954359 7.80980682 6.22579622 5.57954359 7.80980682 6.22579622 -5.57954359 7.80980682 -6.22579622
		 5.57954359 7.80980682 -6.22579622 -5.57954359 -7.80980682 -6.22579622 5.57954359 -7.80980682 -6.22579622
		 5.57954407 7.8098073 0.28690314 -5.57954407 7.8098073 0.28690314 -5.57954359 -7.80980682 0.28690338
		 5.57954359 -7.80980682 0.28690338 0.65004206 7.80980682 6.22579622 0.65004206 7.8098073 0.28690314
		 0.65004206 7.80980682 -6.22579622 0.65004206 -7.80980682 -6.22579622 0.65004206 -7.80980682 0.28690338
		 0.65004206 -7.80980682 6.22579622;
	setAttr -s 32 ".ed[0:31]"  0 17 0 2 12 0 4 14 0 6 15 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 13 1 10 0 0 9 10 1 11 1 0 10 16 1 11 8 1
		 12 3 0 13 9 1 12 13 1 14 5 0 13 14 1 15 7 0 14 15 1 16 11 1 15 16 1 17 1 0 16 17 1
		 17 12 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 0 31 -2 -5
		mu 0 4 0 27 22 2
		f 4 1 22 21 -7
		mu 0 4 2 22 23 17
		f 4 2 26 -4 -9
		mu 0 4 4 24 25 6
		f 4 18 30 -1 -16
		mu 0 4 19 26 28 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -22 24 -3 -14
		mu 0 4 17 23 24 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 28 -19 -11
		mu 0 4 6 25 26 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 20 7 14 -23
		mu 0 4 22 3 14 23
		f 4 -25 -15 12 -24
		mu 0 4 24 23 14 5
		f 4 -27 23 9 -26
		mu 0 4 25 24 5 7
		f 4 -29 25 11 -28
		mu 0 4 26 25 7 20
		f 4 -31 27 17 -30
		mu 0 4 28 26 20 9
		f 4 -32 29 5 -21
		mu 0 4 22 27 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9" -p "Spikes";
	setAttr ".t" -type "double3" 7.8567780063231965 -2.4830291374175864 27.681917397782158 ;
	setAttr ".r" -type "double3" 137.44923793334493 -58.795839621803445 -141.43084616971416 ;
	setAttr ".s" -type "double3" 0.74892433567301397 0.74892433567301397 0.74892433567301397 ;
createNode mesh -n "pCubeShape9" -p "pCube9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 88 ".uvst[0].uvsp[0:87]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.375 0.75 0.25 0.25 0.25 0.375 0.375 0.25 0
		 0.375 0.875 0.625 0.875 0.75 0 0.25 0.125 0.375 0.125 0.625 0.125 0.75 0.125 0.625
		 0.625 0.875 0.125 0.125 0.125 0.375 0.625 0.625 0.4375 0.8125 0.25 0.1875 0.25 0.375
		 0.4375 0.1875 0.125 0.1875 0 0.375 0.8125 0.625 0.8125 0.8125 0 0.8125 0.125 0.625
		 0.3125 0.6875 0.25 0.3125 0.25 0.375 0.3125 0.3125 0.125 0.3125 0 0.375 0.9375 0.625
		 0.9375 0.6875 0 0.6875 0.125 0.5 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5 0.5
		 0.625 0.5 0.75 0.5 0.8125 0.5 0.875 0.5 0.9375 0.5 0 0.5 1 0.5 0.125 0.42817828 0.5
		 0.42817828 0.625 0.42817828 0.75 0.42817828 0.8125 0.42817828 0.875 0.42817828 0.9375
		 0.42817828 0 0.42817828 1 0.42817828 0.125 0.42817828 0.25 0.42817828 0.3125 0.42817828
		 0.375 0.42817828 0.4375 0.42817828 0.375 0.42817828 0.3125 0.5 0.3125 0.5 0.375 0.42817828
		 0.375 0.42817828 0.3125 0.5 0.3125 0.5 0.375 0.42817828 0.375 0.42817828 0.3125 0.5
		 0.3125 0.5 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 37 ".pt";
	setAttr ".pt[0]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[1]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[6]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[7]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[10]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[11]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[21]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[22]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[27]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[28]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[31]" -type "float3" -1.6322985 -2.6337576 0.4752 ;
	setAttr ".pt[34]" -type "float3" 0 0 -3.2177401 ;
	setAttr ".pt[36]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[37]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[38]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[39]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[40]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[42]" -type "float3" 0 0 -3.2177401 ;
	setAttr ".pt[44]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[45]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[46]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[47]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[48]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[51]" -type "float3" 3.2066307 2.5841737 -2.8688309 ;
	setAttr ".pt[52]" -type "float3" 0 -5.4462242 -0.95916474 ;
	setAttr ".pt[54]" -type "float3" 2.7453134 0 0 ;
	setAttr ".pt[55]" -type "float3" 1.745862 -2.6244471 2.7081213 ;
	setAttr ".pt[56]" -type "float3" -1.6322985 0 0 ;
	setAttr ".pt[57]" -type "float3" 0 -2.6244471 2.7081213 ;
	setAttr ".pt[58]" -type "float3" 0.56734204 0 0 ;
	setAttr ".pt[59]" -type "float3" 0 1.7568703 1.120211 ;
	setAttr ".pt[60]" -type "float3" -1.8676908 0 0 ;
	setAttr ".pt[61]" -type "float3" 0 1.7568703 1.120211 ;
	setAttr ".pt[62]" -type "float3" 0.56734204 0 3.6705213 ;
	setAttr ".pt[63]" -type "float3" 2.7092581 -2.5314372 8.0273542 ;
	setAttr ".pt[64]" -type "float3" -1.8676908 0 3.6705213 ;
	setAttr ".pt[65]" -type "float3" -2.6343534 0 4.8263035 ;
	setAttr -s 66 ".vt[0:65]"  -12.67523193 -9.13315678 7.56183624 5.20424652 -9.13315678 7.56183624
		 -12.67523193 9.13315678 7.56183624 5.20424652 9.13315678 7.56183624 -12.67523575 9.13315487 -7.56183624
		 5.20424652 9.13315678 -7.56183624 -12.67523193 -9.13315678 -7.56183624 5.20424652 -9.13315678 -7.56183624
		 5.20424652 9.13315678 0 -12.67523193 9.13315296 0 -12.67523193 -9.13315678 0 5.20424652 -9.13315678 0
		 -12.67523193 0 0 -12.67523193 0 7.56183624 5.20424652 0 7.56183624 5.20424652 0 0
		 5.20424652 0 -7.56183624 -12.67523193 0 -7.56183624 5.20424652 9.13315678 -3.78091812
		 -12.67523575 9.13315296 -3.78091812 -12.67523193 0 -3.78091812 -12.67523193 -9.13315678 -3.78091812
		 5.20424652 -9.13315678 -3.78091812 5.20424652 0 -3.78091812 5.20424652 9.13315678 3.78091812
		 -12.67523193 9.13315296 3.78091812 -12.67523193 0 3.78091812 -12.67523193 -9.13315678 3.78091812
		 5.20424652 -9.13315678 3.78091812 5.20424652 0 3.78091812 0 9.13315678 7.56183624
		 0 56.10921478 2.125 0 48.63190079 0 -3.8146973e-006 33.17241287 -2.13418198 -3.8146973e-006 9.13315487 -7.56183624
		 0 0 -7.56183624 0 -9.13315678 -7.56183624 0 -9.13315678 -3.78091812 0 -9.13315678 0
		 0 -9.13315678 3.78091812 0 -9.13315678 7.56183624 0 0 7.56183624 -7.2828598 9.13315487 -7.56183624
		 -7.28285599 0 -7.56183624 -7.28285599 -9.13315678 -7.56183624 -7.28285599 -9.13315678 -3.78091812
		 -7.28285599 -9.13315678 0 -7.28285599 -9.13315678 3.78091812 -7.28285599 -9.13315678 7.56183624
		 -7.28285599 0 7.56183624 -7.28285599 9.13315678 7.56183624 -7.28285599 56.10921478 2.125
		 -7.28285599 48.63190079 0 -7.2828598 33.17241287 -2.13418198 -7.28285599 59.31574249 -9.15795135
		 -7.28285599 57.5799942 -7.72276688 0 59.31574249 -9.15795135 0 57.5799942 -7.72276688
		 -7.28285599 55.23929596 -14.088127136 -7.28285599 53.50354385 -12.65294266 0 55.23929596 -14.088127136
		 0 53.50354385 -12.65294266 -7.28285599 52.99628448 -16.80088806 -7.28285599 51.26053238 -15.36570358
		 0 52.99628448 -16.80088806 0 51.26053238 -15.36570358;
	setAttr -s 128 ".ed[0:127]"  0 48 0 2 50 0 4 42 0 6 44 0 0 13 0 1 14 0
		 2 25 0 3 24 0 4 17 0 5 16 0 6 21 0 7 22 0 8 18 0 9 19 0 8 32 1 10 27 0 9 12 1 11 28 0
		 10 46 1 11 15 1 12 10 1 13 2 0 12 26 1 14 3 0 13 49 1 15 8 1 14 29 1 16 7 0 15 23 1
		 17 6 0 16 35 1 17 20 1 18 5 0 19 4 0 18 33 1 20 12 1 19 20 1 21 10 0 20 21 1 22 11 0
		 21 45 1 23 16 1 22 23 1 23 18 1 24 8 0 25 9 0 24 31 1 26 13 1 25 26 1 27 0 0 26 27 1
		 28 1 0 27 47 1 29 15 1 28 29 1 29 24 1 30 3 0 31 51 0 30 31 1 32 52 0 31 32 1 33 53 1
		 32 33 1 34 5 0 33 34 1 35 43 1 34 35 1 36 7 0 35 36 1 37 22 1 36 37 1 38 11 1 37 38 1
		 39 28 1 38 39 1 40 1 0 39 40 1 41 14 1 40 41 1 41 30 1 42 34 0 43 17 1 42 43 1 44 36 0
		 43 44 1 45 37 1 44 45 1 46 38 1 45 46 1 47 39 1 46 47 1 48 40 0 47 48 1 49 41 1 48 49 1
		 50 30 0 49 50 1 51 25 1 50 51 1 52 9 1 51 52 1 53 19 1 52 53 1 53 42 1 51 54 0 52 55 0
		 54 55 1 31 56 0 56 54 0 32 57 0 56 57 1 57 55 0 54 58 0 55 59 0 58 59 1 56 60 0 60 58 1
		 57 61 0 60 61 1 61 59 1 58 62 0 59 63 0 62 63 0 60 64 0 64 62 0 61 65 0 64 65 0 65 63 0;
	setAttr -s 64 -ch 256 ".fc[0:63]" -type "polyFaces" 
		f 4 24 96 -2 -22
		mu 0 4 23 71 72 2
		f 4 1 98 97 -7
		mu 0 4 2 72 73 43
		f 4 2 82 81 -9
		mu 0 4 4 63 64 29
		f 4 52 92 -1 -50
		mu 0 4 46 68 70 8
		f 4 26 55 -8 -24
		mu 0 4 24 49 41 3
		f 4 47 21 6 48
		mu 0 4 44 23 2 42
		f 4 -100 102 101 -14
		mu 0 4 17 74 75 33
		f 4 35 -17 13 36
		mu 0 4 34 22 16 32
		f 4 40 88 -19 -38
		mu 0 4 36 66 67 19
		f 4 -26 28 43 -13
		mu 0 4 15 25 39 31
		f 4 49 4 -48 50
		mu 0 4 45 0 23 44
		f 4 0 94 -25 -5
		mu 0 4 0 69 71 23
		f 4 -52 54 -27 -6
		mu 0 4 1 48 49 24
		f 4 -29 -20 -40 42
		mu 0 4 39 25 21 38
		f 4 -82 84 -4 -30
		mu 0 4 29 64 65 6
		f 4 37 -21 -36 38
		mu 0 4 35 18 22 34
		f 4 -102 103 -3 -34
		mu 0 4 33 75 63 4
		f 4 31 -37 33 8
		mu 0 4 28 34 32 13
		f 4 10 -39 -32 29
		mu 0 4 12 35 34 28
		f 4 3 86 -41 -11
		mu 0 4 6 65 66 36
		f 4 -42 -43 -12 -28
		mu 0 4 27 39 38 10
		f 4 -44 41 -10 -33
		mu 0 4 31 39 27 11
		f 4 -98 100 99 -46
		mu 0 4 43 73 74 17
		f 4 22 -49 45 16
		mu 0 4 22 44 42 16
		f 4 15 -51 -23 20
		mu 0 4 18 45 44 22
		f 4 18 90 -53 -16
		mu 0 4 19 67 68 46
		f 4 -55 -18 19 -54
		mu 0 4 49 48 21 25
		f 4 -56 53 25 -45
		mu 0 4 41 49 25 15
		f 4 56 7 46 -59
		mu 0 4 50 3 40 51
		f 4 -61 -47 44 14
		mu 0 4 52 51 40 14
		f 4 -63 -15 12 34
		mu 0 4 53 52 14 30
		f 4 -65 -35 32 -64
		mu 0 4 54 53 30 5
		f 4 -67 63 9 30
		mu 0 4 55 54 5 26
		f 4 -69 -31 27 -68
		mu 0 4 56 55 26 7
		f 4 -71 67 11 -70
		mu 0 4 57 56 7 37
		f 4 -73 69 39 -72
		mu 0 4 58 57 37 20
		f 4 -75 71 17 -74
		mu 0 4 59 58 20 47
		f 4 -77 73 51 -76
		mu 0 4 61 59 47 9
		f 4 -79 75 5 -78
		mu 0 4 62 60 1 24
		f 4 -80 77 23 -57
		mu 0 4 50 62 24 3
		f 4 80 66 65 -83
		mu 0 4 63 54 55 64
		f 4 -85 -66 68 -84
		mu 0 4 65 64 55 56
		f 4 -87 83 70 -86
		mu 0 4 66 65 56 57
		f 4 -89 85 72 -88
		mu 0 4 67 66 57 58
		f 4 -91 87 74 -90
		mu 0 4 68 67 58 59
		f 4 -93 89 76 -92
		mu 0 4 70 68 59 61
		f 4 -95 91 78 -94
		mu 0 4 71 69 60 62
		f 4 -97 93 79 -96
		mu 0 4 72 71 62 50
		f 4 -99 95 58 57
		mu 0 4 73 72 50 51
		f 4 -123 -125 126 127
		mu 0 4 84 85 86 87
		f 4 -103 -60 62 61
		mu 0 4 75 74 52 53
		f 4 -104 -62 64 -81
		mu 0 4 63 75 53 54
		f 4 -101 104 106 -106
		mu 0 4 74 73 77 76
		f 4 -58 107 108 -105
		mu 0 4 73 51 78 77
		f 4 60 109 -111 -108
		mu 0 4 51 52 79 78
		f 4 59 105 -112 -110
		mu 0 4 52 74 76 79
		f 4 -107 112 114 -114
		mu 0 4 76 77 81 80
		f 4 -109 115 116 -113
		mu 0 4 77 78 82 81
		f 4 110 117 -119 -116
		mu 0 4 78 79 83 82
		f 4 111 113 -120 -118
		mu 0 4 79 76 80 83
		f 4 -115 120 122 -122
		mu 0 4 80 81 85 84
		f 4 -117 123 124 -121
		mu 0 4 81 82 86 85
		f 4 118 125 -127 -124
		mu 0 4 82 83 87 86
		f 4 119 121 -128 -126
		mu 0 4 83 80 84 87;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube10" -p "Spikes";
	setAttr ".t" -type "double3" -21.726983508835715 7.8098068191533807 5.4101105605691941 ;
createNode mesh -n "pCubeShape10" -p "pCube10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[18]" -type "float3" -2.0908196 0 0 ;
	setAttr ".pt[20]" -type "float3" 0 -5.4822211 2.3834152 ;
	setAttr ".pt[22]" -type "float3" -2.7880414 -4.4072175 -0.037332475 ;
	setAttr ".pt[23]" -type "float3" 0 0 5.6693983 ;
	setAttr ".pt[24]" -type "float3" -0.92354691 -7.9302588 4.1038861 ;
	setAttr ".pt[25]" -type "float3" 0 -4.7956262 1.8696797 ;
createNode mesh -n "polySurfaceShape2" -p "pCube10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.36923963 0.74423969 0.25 0.25576037 0.25 0.375
		 0.36923963 0.25576037 0 0.375 0.88076037 0.625 0.88076037 0.74423963 0 0.51456308
		 0.25 0.51456308 0.36923963 0.51456308 0.5 0.51456308 0.75 0.51456308 0.88076037 0.51456308
		 0 0.51456308 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[4]" -type "float3" -4.7683716e-007 12.433598 0 ;
	setAttr ".pt[9]" -type "float3" 0 12.433598 0 ;
	setAttr ".pt[13]" -type "float3" 0 12.433598 0 ;
	setAttr ".pt[14]" -type "float3" 0 12.433598 0 ;
	setAttr -s 18 ".vt[0:17]"  -5.57954359 -7.80980682 6.22579622 5.57954359 -7.80980682 6.22579622
		 -5.57954359 7.80980682 6.22579622 5.57954359 7.80980682 6.22579622 -5.57954359 7.80980682 -6.22579622
		 5.57954359 7.80980682 -6.22579622 -5.57954359 -7.80980682 -6.22579622 5.57954359 -7.80980682 -6.22579622
		 5.57954407 7.8098073 0.28690314 -5.57954407 7.8098073 0.28690314 -5.57954359 -7.80980682 0.28690338
		 5.57954359 -7.80980682 0.28690338 0.65004206 7.80980682 6.22579622 0.65004206 7.8098073 0.28690314
		 0.65004206 7.80980682 -6.22579622 0.65004206 -7.80980682 -6.22579622 0.65004206 -7.80980682 0.28690338
		 0.65004206 -7.80980682 6.22579622;
	setAttr -s 32 ".ed[0:31]"  0 17 0 2 12 0 4 14 0 6 15 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 13 1 10 0 0 9 10 1 11 1 0 10 16 1 11 8 1
		 12 3 0 13 9 1 12 13 1 14 5 0 13 14 1 15 7 0 14 15 1 16 11 1 15 16 1 17 1 0 16 17 1
		 17 12 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 0 31 -2 -5
		mu 0 4 0 27 22 2
		f 4 1 22 21 -7
		mu 0 4 2 22 23 17
		f 4 2 26 -4 -9
		mu 0 4 4 24 25 6
		f 4 18 30 -1 -16
		mu 0 4 19 26 28 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -22 24 -3 -14
		mu 0 4 17 23 24 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 28 -19 -11
		mu 0 4 6 25 26 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 20 7 14 -23
		mu 0 4 22 3 14 23
		f 4 -25 -15 12 -24
		mu 0 4 24 23 14 5
		f 4 -27 23 9 -26
		mu 0 4 25 24 5 7
		f 4 -29 25 11 -28
		mu 0 4 26 25 7 20
		f 4 -31 27 17 -30
		mu 0 4 28 26 20 9
		f 4 -32 29 5 -21
		mu 0 4 22 27 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11" -p "Spikes";
	setAttr ".t" -type "double3" -6.6230401589210146 11.274325854749835 17.736400220171504 ;
	setAttr ".r" -type "double3" -42.865570299160225 3.1805546814635176e-015 31.812609899220273 ;
createNode mesh -n "pCubeShape11" -p "pCube11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.36923963 0.74423969 0.25 0.25576037 0.25 0.375
		 0.36923963 0.25576037 0 0.375 0.88076037 0.625 0.88076037 0.74423963 0 0.51456308
		 0.25 0.51456308 0.36923963 0.51456308 0.5 0.51456308 0.75 0.51456308 0.88076037 0.51456308
		 0 0.51456308 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.57954359 -7.80980682 6.22579622 5.57954359 -7.80980682 6.22579622
		 -5.57954359 7.80980682 6.22579622 5.57954359 7.80980682 6.22579622 -5.57954359 7.80980682 -6.22579622
		 5.57954359 7.80980682 -6.22579622 -5.57954359 -7.80980682 -6.22579622 5.57954359 -7.80980682 -6.22579622
		 5.57954407 7.8098073 0.28690314 -5.57954407 7.8098073 0.28690314 -5.57954359 -7.80980682 0.28690338
		 5.57954359 -7.80980682 0.28690338 0.65004206 7.80980682 6.22579622 0.65004206 7.8098073 0.28690314
		 0.65004206 7.80980682 -6.22579622 0.65004206 -7.80980682 -6.22579622 0.65004206 -7.80980682 0.28690338
		 0.65004206 -7.80980682 6.22579622;
	setAttr -s 32 ".ed[0:31]"  0 17 0 2 12 0 4 14 0 6 15 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 13 1 10 0 0 9 10 1 11 1 0 10 16 1 11 8 1
		 12 3 0 13 9 1 12 13 1 14 5 0 13 14 1 15 7 0 14 15 1 16 11 1 15 16 1 17 1 0 16 17 1
		 17 12 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 0 31 -2 -5
		mu 0 4 0 27 22 2
		f 4 1 22 21 -7
		mu 0 4 2 22 23 17
		f 4 2 26 -4 -9
		mu 0 4 4 24 25 6
		f 4 18 30 -1 -16
		mu 0 4 19 26 28 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -22 24 -3 -14
		mu 0 4 17 23 24 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 28 -19 -11
		mu 0 4 6 25 26 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 20 7 14 -23
		mu 0 4 22 3 14 23
		f 4 -25 -15 12 -24
		mu 0 4 24 23 14 5
		f 4 -27 23 9 -26
		mu 0 4 25 24 5 7
		f 4 -29 25 11 -28
		mu 0 4 26 25 7 20
		f 4 -31 27 17 -30
		mu 0 4 28 26 20 9
		f 4 -32 29 5 -21
		mu 0 4 22 27 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube12" -p "Spikes";
	setAttr ".t" -type "double3" -2.278004434258861 9.3463101776139457 5.0503282732614707 ;
	setAttr ".r" -type "double3" -21.071726210520882 -147.01057942162484 0 ;
createNode mesh -n "pCubeShape12" -p "pCube12";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 37 ".uvst[0].uvsp[0:36]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.36923963 0.74423969 0.25 0.25576037 0.25 0.375
		 0.36923963 0.25576037 0 0.375 0.88076037 0.625 0.88076037 0.74423963 0 0.51456308
		 0.25 0.51456308 0.36923963 0.51456308 0.5 0.51456308 0.75 0.51456308 0.88076037 0.51456308
		 0 0.51456308 1 0.375 0.36923963 0.51456308 0.36923963 0.51456308 0.5 0.375 0.5 0.375
		 0.36923963 0.51456308 0.36923963 0.51456308 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[18]" -type "float3" -2.0908196 0 0 ;
	setAttr ".pt[20]" -type "float3" 0 -5.4822211 2.3834152 ;
	setAttr ".pt[22]" -type "float3" -2.7880414 -4.4072175 -0.037332475 ;
	setAttr ".pt[23]" -type "float3" 0 0 5.6693983 ;
	setAttr ".pt[24]" -type "float3" -0.92354691 -7.9302588 4.1038861 ;
	setAttr ".pt[25]" -type "float3" 0 -4.7956262 1.8696797 ;
	setAttr -s 26 ".vt[0:25]"  -5.57954359 -7.80980682 6.22579956 5.57954359 -7.80980682 6.22579956
		 -5.57954359 7.80980682 6.22579956 5.57954359 7.80980682 6.22579956 -5.57954407 20.24340439 -6.22579956
		 5.57954359 7.80980682 -6.22579956 -5.57954359 -7.80980682 -6.22579956 5.57954359 -7.80980682 -6.22579956
		 5.57954407 7.80980682 0.28690338 -5.57954407 20.24340439 0.28690338 -5.57954359 -7.80980682 0.28690338
		 5.57954359 -7.80980682 0.28690338 0.650042 7.80980682 6.22579956 0.650042 20.24340439 0.28690338
		 0.650042 20.24340439 -6.22579956 0.650042 -7.80980682 -6.22579956 0.650042 -7.80980682 0.28690338
		 0.650042 -7.80980682 6.22579956 0.650042 30.46277618 0.28690338 -5.57954407 30.46277618 0.28690338
		 0.650042 30.46277618 -6.22579956 -5.57954407 30.46277618 -6.22579956 0.650042 39.46936035 0.28690338
		 -5.57954407 39.46936035 0.28690338 0.650042 39.46936035 -6.22579956 -5.57954407 39.46936035 -6.22579956;
	setAttr -s 48 ".ed[0:47]"  0 17 0 2 12 0 4 14 1 6 15 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 1 8 13 1 10 0 0 9 10 1 11 1 0 10 16 1 11 8 1
		 12 3 0 13 9 1 12 13 1 14 5 0 13 14 1 15 7 0 14 15 1 16 11 1 15 16 1 17 1 0 16 17 1
		 17 12 1 13 18 0 9 19 0 18 19 1 14 20 0 18 20 1 4 21 0 21 20 1 19 21 1 18 22 0 19 23 0
		 22 23 0 20 24 0 22 24 0 21 25 0 25 24 0 23 25 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 31 -2 -5
		mu 0 4 0 27 22 2
		f 4 1 22 21 -7
		mu 0 4 2 22 23 17
		f 4 2 26 -4 -9
		mu 0 4 4 24 25 6
		f 4 18 30 -1 -16
		mu 0 4 19 26 28 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -43 44 -47 -48
		mu 0 4 33 34 35 36
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 28 -19 -11
		mu 0 4 6 25 26 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 20 7 14 -23
		mu 0 4 22 3 14 23
		f 4 -25 -15 12 -24
		mu 0 4 24 23 14 5
		f 4 -27 23 9 -26
		mu 0 4 25 24 5 7
		f 4 -29 25 11 -28
		mu 0 4 26 25 7 20
		f 4 -31 27 17 -30
		mu 0 4 28 26 20 9
		f 4 -32 29 5 -21
		mu 0 4 22 27 1 3
		f 4 -22 32 34 -34
		mu 0 4 17 23 30 29
		f 4 24 35 -37 -33
		mu 0 4 23 24 31 30
		f 4 -3 37 38 -36
		mu 0 4 24 4 32 31
		f 4 -14 33 39 -38
		mu 0 4 4 17 29 32
		f 4 -35 40 42 -42
		mu 0 4 29 30 34 33
		f 4 36 43 -45 -41
		mu 0 4 30 31 35 34
		f 4 -39 45 46 -44
		mu 0 4 31 32 36 35
		f 4 -40 41 47 -46
		mu 0 4 32 29 33 36;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "pCube12";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.36923963 0.74423969 0.25 0.25576037 0.25 0.375
		 0.36923963 0.25576037 0 0.375 0.88076037 0.625 0.88076037 0.74423963 0 0.51456308
		 0.25 0.51456308 0.36923963 0.51456308 0.5 0.51456308 0.75 0.51456308 0.88076037 0.51456308
		 0 0.51456308 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[4]" -type "float3" -4.7683716e-007 12.433598 0 ;
	setAttr ".pt[9]" -type "float3" 0 12.433598 0 ;
	setAttr ".pt[13]" -type "float3" 0 12.433598 0 ;
	setAttr ".pt[14]" -type "float3" 0 12.433598 0 ;
	setAttr -s 18 ".vt[0:17]"  -5.57954359 -7.80980682 6.22579622 5.57954359 -7.80980682 6.22579622
		 -5.57954359 7.80980682 6.22579622 5.57954359 7.80980682 6.22579622 -5.57954359 7.80980682 -6.22579622
		 5.57954359 7.80980682 -6.22579622 -5.57954359 -7.80980682 -6.22579622 5.57954359 -7.80980682 -6.22579622
		 5.57954407 7.8098073 0.28690314 -5.57954407 7.8098073 0.28690314 -5.57954359 -7.80980682 0.28690338
		 5.57954359 -7.80980682 0.28690338 0.65004206 7.80980682 6.22579622 0.65004206 7.8098073 0.28690314
		 0.65004206 7.80980682 -6.22579622 0.65004206 -7.80980682 -6.22579622 0.65004206 -7.80980682 0.28690338
		 0.65004206 -7.80980682 6.22579622;
	setAttr -s 32 ".ed[0:31]"  0 17 0 2 12 0 4 14 0 6 15 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 13 1 10 0 0 9 10 1 11 1 0 10 16 1 11 8 1
		 12 3 0 13 9 1 12 13 1 14 5 0 13 14 1 15 7 0 14 15 1 16 11 1 15 16 1 17 1 0 16 17 1
		 17 12 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 0 31 -2 -5
		mu 0 4 0 27 22 2
		f 4 1 22 21 -7
		mu 0 4 2 22 23 17
		f 4 2 26 -4 -9
		mu 0 4 4 24 25 6
		f 4 18 30 -1 -16
		mu 0 4 19 26 28 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -22 24 -3 -14
		mu 0 4 17 23 24 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 28 -19 -11
		mu 0 4 6 25 26 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 20 7 14 -23
		mu 0 4 22 3 14 23
		f 4 -25 -15 12 -24
		mu 0 4 24 23 14 5
		f 4 -27 23 9 -26
		mu 0 4 25 24 5 7
		f 4 -29 25 11 -28
		mu 0 4 26 25 7 20
		f 4 -31 27 17 -30
		mu 0 4 28 26 20 9
		f 4 -32 29 5 -21
		mu 0 4 22 27 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube13" -p "Spikes";
	setAttr ".t" -type "double3" -30.732717420912167 5.0828494942440017 -95.133389816102152 ;
	setAttr ".r" -type "double3" 195.83052260269568 -10.619740444053832 -187.04686910548699 ;
	setAttr ".s" -type "double3" 0.61233652146060935 0.61233652146060935 0.61233652146060935 ;
createNode mesh -n "pCubeShape13" -p "pCube13";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 88 ".uvst[0].uvsp[0:87]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.375 0.75 0.25 0.25 0.25 0.375 0.375 0.25 0
		 0.375 0.875 0.625 0.875 0.75 0 0.25 0.125 0.375 0.125 0.625 0.125 0.75 0.125 0.625
		 0.625 0.875 0.125 0.125 0.125 0.375 0.625 0.625 0.4375 0.8125 0.25 0.1875 0.25 0.375
		 0.4375 0.1875 0.125 0.1875 0 0.375 0.8125 0.625 0.8125 0.8125 0 0.8125 0.125 0.625
		 0.3125 0.6875 0.25 0.3125 0.25 0.375 0.3125 0.3125 0.125 0.3125 0 0.375 0.9375 0.625
		 0.9375 0.6875 0 0.6875 0.125 0.5 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5 0.5
		 0.625 0.5 0.75 0.5 0.8125 0.5 0.875 0.5 0.9375 0.5 0 0.5 1 0.5 0.125 0.42817828 0.5
		 0.42817828 0.625 0.42817828 0.75 0.42817828 0.8125 0.42817828 0.875 0.42817828 0.9375
		 0.42817828 0 0.42817828 1 0.42817828 0.125 0.42817828 0.25 0.42817828 0.3125 0.42817828
		 0.375 0.42817828 0.4375 0.42817828 0.375 0.42817828 0.3125 0.5 0.3125 0.5 0.375 0.42817828
		 0.375 0.42817828 0.3125 0.5 0.3125 0.5 0.375 0.42817828 0.375 0.42817828 0.3125 0.5
		 0.3125 0.5 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 37 ".pt";
	setAttr ".pt[0]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[1]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[6]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[7]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[10]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[11]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[21]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[22]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[27]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[28]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[31]" -type "float3" -1.6322985 -2.6337576 0.4752 ;
	setAttr ".pt[34]" -type "float3" 0 0 -3.2177401 ;
	setAttr ".pt[36]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[37]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[38]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[39]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[40]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[42]" -type "float3" 0 0 -3.2177401 ;
	setAttr ".pt[44]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[45]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[46]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[47]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[48]" -type "float3" 0 13.980674 0 ;
	setAttr ".pt[51]" -type "float3" 3.2066307 2.5841737 -2.8688309 ;
	setAttr ".pt[52]" -type "float3" 0 -5.4462242 -0.95916474 ;
	setAttr ".pt[54]" -type "float3" 2.7453134 0 0 ;
	setAttr ".pt[55]" -type "float3" 1.745862 -2.6244471 2.7081213 ;
	setAttr ".pt[56]" -type "float3" -1.6322985 0 0 ;
	setAttr ".pt[57]" -type "float3" 0 -2.6244471 2.7081213 ;
	setAttr ".pt[58]" -type "float3" 0.56734204 0 0 ;
	setAttr ".pt[59]" -type "float3" 0 1.7568703 1.120211 ;
	setAttr ".pt[60]" -type "float3" -1.8676908 0 0 ;
	setAttr ".pt[61]" -type "float3" 0 1.7568703 1.120211 ;
	setAttr ".pt[62]" -type "float3" 0.56734204 0 3.6705213 ;
	setAttr ".pt[63]" -type "float3" 2.7092581 -2.5314372 8.0273542 ;
	setAttr ".pt[64]" -type "float3" -1.8676908 0 3.6705213 ;
	setAttr ".pt[65]" -type "float3" -2.6343534 0 4.8263035 ;
	setAttr -s 66 ".vt[0:65]"  -12.67523193 -9.13315678 7.56183624 5.20424652 -9.13315678 7.56183624
		 -12.67523193 9.13315678 7.56183624 5.20424652 9.13315678 7.56183624 -12.67523575 9.13315487 -7.56183624
		 5.20424652 9.13315678 -7.56183624 -12.67523193 -9.13315678 -7.56183624 5.20424652 -9.13315678 -7.56183624
		 5.20424652 9.13315678 0 -12.67523193 9.13315296 0 -12.67523193 -9.13315678 0 5.20424652 -9.13315678 0
		 -12.67523193 0 0 -12.67523193 0 7.56183624 5.20424652 0 7.56183624 5.20424652 0 0
		 5.20424652 0 -7.56183624 -12.67523193 0 -7.56183624 5.20424652 9.13315678 -3.78091812
		 -12.67523575 9.13315296 -3.78091812 -12.67523193 0 -3.78091812 -12.67523193 -9.13315678 -3.78091812
		 5.20424652 -9.13315678 -3.78091812 5.20424652 0 -3.78091812 5.20424652 9.13315678 3.78091812
		 -12.67523193 9.13315296 3.78091812 -12.67523193 0 3.78091812 -12.67523193 -9.13315678 3.78091812
		 5.20424652 -9.13315678 3.78091812 5.20424652 0 3.78091812 0 9.13315678 7.56183624
		 0 56.10921478 2.125 0 48.63190079 0 -3.8146973e-006 33.17241287 -2.13418198 -3.8146973e-006 9.13315487 -7.56183624
		 0 0 -7.56183624 0 -9.13315678 -7.56183624 0 -9.13315678 -3.78091812 0 -9.13315678 0
		 0 -9.13315678 3.78091812 0 -9.13315678 7.56183624 0 0 7.56183624 -7.2828598 9.13315487 -7.56183624
		 -7.28285599 0 -7.56183624 -7.28285599 -9.13315678 -7.56183624 -7.28285599 -9.13315678 -3.78091812
		 -7.28285599 -9.13315678 0 -7.28285599 -9.13315678 3.78091812 -7.28285599 -9.13315678 7.56183624
		 -7.28285599 0 7.56183624 -7.28285599 9.13315678 7.56183624 -7.28285599 56.10921478 2.125
		 -7.28285599 48.63190079 0 -7.2828598 33.17241287 -2.13418198 -7.28285599 59.31574249 -9.15795135
		 -7.28285599 57.5799942 -7.72276688 0 59.31574249 -9.15795135 0 57.5799942 -7.72276688
		 -7.28285599 55.23929596 -14.088127136 -7.28285599 53.50354385 -12.65294266 0 55.23929596 -14.088127136
		 0 53.50354385 -12.65294266 -7.28285599 52.99628448 -16.80088806 -7.28285599 51.26053238 -15.36570358
		 0 52.99628448 -16.80088806 0 51.26053238 -15.36570358;
	setAttr -s 128 ".ed[0:127]"  0 48 0 2 50 0 4 42 0 6 44 0 0 13 0 1 14 0
		 2 25 0 3 24 0 4 17 0 5 16 0 6 21 0 7 22 0 8 18 0 9 19 0 8 32 1 10 27 0 9 12 1 11 28 0
		 10 46 1 11 15 1 12 10 1 13 2 0 12 26 1 14 3 0 13 49 1 15 8 1 14 29 1 16 7 0 15 23 1
		 17 6 0 16 35 1 17 20 1 18 5 0 19 4 0 18 33 1 20 12 1 19 20 1 21 10 0 20 21 1 22 11 0
		 21 45 1 23 16 1 22 23 1 23 18 1 24 8 0 25 9 0 24 31 1 26 13 1 25 26 1 27 0 0 26 27 1
		 28 1 0 27 47 1 29 15 1 28 29 1 29 24 1 30 3 0 31 51 0 30 31 1 32 52 0 31 32 1 33 53 1
		 32 33 1 34 5 0 33 34 1 35 43 1 34 35 1 36 7 0 35 36 1 37 22 1 36 37 1 38 11 1 37 38 1
		 39 28 1 38 39 1 40 1 0 39 40 1 41 14 1 40 41 1 41 30 1 42 34 0 43 17 1 42 43 1 44 36 0
		 43 44 1 45 37 1 44 45 1 46 38 1 45 46 1 47 39 1 46 47 1 48 40 0 47 48 1 49 41 1 48 49 1
		 50 30 0 49 50 1 51 25 1 50 51 1 52 9 1 51 52 1 53 19 1 52 53 1 53 42 1 51 54 0 52 55 0
		 54 55 1 31 56 0 56 54 0 32 57 0 56 57 1 57 55 0 54 58 0 55 59 0 58 59 1 56 60 0 60 58 1
		 57 61 0 60 61 1 61 59 1 58 62 0 59 63 0 62 63 0 60 64 0 64 62 0 61 65 0 64 65 0 65 63 0;
	setAttr -s 64 -ch 256 ".fc[0:63]" -type "polyFaces" 
		f 4 24 96 -2 -22
		mu 0 4 23 71 72 2
		f 4 1 98 97 -7
		mu 0 4 2 72 73 43
		f 4 2 82 81 -9
		mu 0 4 4 63 64 29
		f 4 52 92 -1 -50
		mu 0 4 46 68 70 8
		f 4 26 55 -8 -24
		mu 0 4 24 49 41 3
		f 4 47 21 6 48
		mu 0 4 44 23 2 42
		f 4 -100 102 101 -14
		mu 0 4 17 74 75 33
		f 4 35 -17 13 36
		mu 0 4 34 22 16 32
		f 4 40 88 -19 -38
		mu 0 4 36 66 67 19
		f 4 -26 28 43 -13
		mu 0 4 15 25 39 31
		f 4 49 4 -48 50
		mu 0 4 45 0 23 44
		f 4 0 94 -25 -5
		mu 0 4 0 69 71 23
		f 4 -52 54 -27 -6
		mu 0 4 1 48 49 24
		f 4 -29 -20 -40 42
		mu 0 4 39 25 21 38
		f 4 -82 84 -4 -30
		mu 0 4 29 64 65 6
		f 4 37 -21 -36 38
		mu 0 4 35 18 22 34
		f 4 -102 103 -3 -34
		mu 0 4 33 75 63 4
		f 4 31 -37 33 8
		mu 0 4 28 34 32 13
		f 4 10 -39 -32 29
		mu 0 4 12 35 34 28
		f 4 3 86 -41 -11
		mu 0 4 6 65 66 36
		f 4 -42 -43 -12 -28
		mu 0 4 27 39 38 10
		f 4 -44 41 -10 -33
		mu 0 4 31 39 27 11
		f 4 -98 100 99 -46
		mu 0 4 43 73 74 17
		f 4 22 -49 45 16
		mu 0 4 22 44 42 16
		f 4 15 -51 -23 20
		mu 0 4 18 45 44 22
		f 4 18 90 -53 -16
		mu 0 4 19 67 68 46
		f 4 -55 -18 19 -54
		mu 0 4 49 48 21 25
		f 4 -56 53 25 -45
		mu 0 4 41 49 25 15
		f 4 56 7 46 -59
		mu 0 4 50 3 40 51
		f 4 -61 -47 44 14
		mu 0 4 52 51 40 14
		f 4 -63 -15 12 34
		mu 0 4 53 52 14 30
		f 4 -65 -35 32 -64
		mu 0 4 54 53 30 5
		f 4 -67 63 9 30
		mu 0 4 55 54 5 26
		f 4 -69 -31 27 -68
		mu 0 4 56 55 26 7
		f 4 -71 67 11 -70
		mu 0 4 57 56 7 37
		f 4 -73 69 39 -72
		mu 0 4 58 57 37 20
		f 4 -75 71 17 -74
		mu 0 4 59 58 20 47
		f 4 -77 73 51 -76
		mu 0 4 61 59 47 9
		f 4 -79 75 5 -78
		mu 0 4 62 60 1 24
		f 4 -80 77 23 -57
		mu 0 4 50 62 24 3
		f 4 80 66 65 -83
		mu 0 4 63 54 55 64
		f 4 -85 -66 68 -84
		mu 0 4 65 64 55 56
		f 4 -87 83 70 -86
		mu 0 4 66 65 56 57
		f 4 -89 85 72 -88
		mu 0 4 67 66 57 58
		f 4 -91 87 74 -90
		mu 0 4 68 67 58 59
		f 4 -93 89 76 -92
		mu 0 4 70 68 59 61
		f 4 -95 91 78 -94
		mu 0 4 71 69 60 62
		f 4 -97 93 79 -96
		mu 0 4 72 71 62 50
		f 4 -99 95 58 57
		mu 0 4 73 72 50 51
		f 4 -123 -125 126 127
		mu 0 4 84 85 86 87
		f 4 -103 -60 62 61
		mu 0 4 75 74 52 53
		f 4 -104 -62 64 -81
		mu 0 4 63 75 53 54
		f 4 -101 104 106 -106
		mu 0 4 74 73 77 76
		f 4 -58 107 108 -105
		mu 0 4 73 51 78 77
		f 4 60 109 -111 -108
		mu 0 4 51 52 79 78
		f 4 59 105 -112 -110
		mu 0 4 52 74 76 79
		f 4 -107 112 114 -114
		mu 0 4 76 77 81 80
		f 4 -109 115 116 -113
		mu 0 4 77 78 82 81
		f 4 110 117 -119 -116
		mu 0 4 78 79 83 82
		f 4 111 113 -120 -118
		mu 0 4 79 76 80 83
		f 4 -115 120 122 -122
		mu 0 4 80 81 85 84
		f 4 -117 123 124 -121
		mu 0 4 81 82 86 85
		f 4 118 125 -127 -124
		mu 0 4 82 83 87 86
		f 4 119 121 -128 -126
		mu 0 4 83 80 84 87;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere1" -p "Spikes";
	setAttr ".t" -type "double3" -35.231958662809589 0 77.559125222192421 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube14" -p "Spikes";
	setAttr ".t" -type "double3" -9.389019851181132 11.312370528887026 3.5829137127257127 ;
	setAttr ".r" -type "double3" -160.56709310457856 -155.01532242230456 159.67617851742682 ;
	setAttr ".s" -type "double3" 0.60185372510669222 0.60185372510669222 0.60185372510669222 ;
createNode mesh -n "pCubeShape14" -p "pCube14";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 37 ".uvst[0].uvsp[0:36]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.36923963 0.74423969 0.25 0.25576037 0.25 0.375
		 0.36923963 0.25576037 0 0.375 0.88076037 0.625 0.88076037 0.74423963 0 0.51456308
		 0.25 0.51456308 0.36923963 0.51456308 0.5 0.51456308 0.75 0.51456308 0.88076037 0.51456308
		 0 0.51456308 1 0.375 0.36923963 0.51456308 0.36923963 0.51456308 0.5 0.375 0.5 0.375
		 0.36923963 0.51456308 0.36923963 0.51456308 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[18]" -type "float3" -2.0908196 0 0 ;
	setAttr ".pt[20]" -type "float3" 0 -5.4822211 2.3834152 ;
	setAttr ".pt[22]" -type "float3" -2.7880414 -4.4072175 -0.037332475 ;
	setAttr ".pt[23]" -type "float3" 0 0 5.6693983 ;
	setAttr ".pt[24]" -type "float3" -0.92354691 -7.9302588 4.1038861 ;
	setAttr ".pt[25]" -type "float3" 0 -4.7956262 1.8696797 ;
	setAttr -s 26 ".vt[0:25]"  -5.57954359 -7.80980682 6.22579956 5.57954359 -7.80980682 6.22579956
		 -5.57954359 7.80980682 6.22579956 5.57954359 7.80980682 6.22579956 -5.57954407 20.24340439 -6.22579956
		 5.57954359 7.80980682 -6.22579956 -5.57954359 -7.80980682 -6.22579956 5.57954359 -7.80980682 -6.22579956
		 5.57954407 7.80980682 0.28690338 -5.57954407 20.24340439 0.28690338 -5.57954359 -7.80980682 0.28690338
		 5.57954359 -7.80980682 0.28690338 0.650042 7.80980682 6.22579956 0.650042 20.24340439 0.28690338
		 0.650042 20.24340439 -6.22579956 0.650042 -7.80980682 -6.22579956 0.650042 -7.80980682 0.28690338
		 0.650042 -7.80980682 6.22579956 0.650042 30.46277618 0.28690338 -5.57954407 30.46277618 0.28690338
		 0.650042 30.46277618 -6.22579956 -5.57954407 30.46277618 -6.22579956 0.650042 39.46936035 0.28690338
		 -5.57954407 39.46936035 0.28690338 0.650042 39.46936035 -6.22579956 -5.57954407 39.46936035 -6.22579956;
	setAttr -s 48 ".ed[0:47]"  0 17 0 2 12 0 4 14 1 6 15 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 1 8 13 1 10 0 0 9 10 1 11 1 0 10 16 1 11 8 1
		 12 3 0 13 9 1 12 13 1 14 5 0 13 14 1 15 7 0 14 15 1 16 11 1 15 16 1 17 1 0 16 17 1
		 17 12 1 13 18 0 9 19 0 18 19 1 14 20 0 18 20 1 4 21 0 21 20 1 19 21 1 18 22 0 19 23 0
		 22 23 0 20 24 0 22 24 0 21 25 0 25 24 0 23 25 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 31 -2 -5
		mu 0 4 0 27 22 2
		f 4 1 22 21 -7
		mu 0 4 2 22 23 17
		f 4 2 26 -4 -9
		mu 0 4 4 24 25 6
		f 4 18 30 -1 -16
		mu 0 4 19 26 28 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -43 44 -47 -48
		mu 0 4 33 34 35 36
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 28 -19 -11
		mu 0 4 6 25 26 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 20 7 14 -23
		mu 0 4 22 3 14 23
		f 4 -25 -15 12 -24
		mu 0 4 24 23 14 5
		f 4 -27 23 9 -26
		mu 0 4 25 24 5 7
		f 4 -29 25 11 -28
		mu 0 4 26 25 7 20
		f 4 -31 27 17 -30
		mu 0 4 28 26 20 9
		f 4 -32 29 5 -21
		mu 0 4 22 27 1 3
		f 4 -22 32 34 -34
		mu 0 4 17 23 30 29
		f 4 24 35 -37 -33
		mu 0 4 23 24 31 30
		f 4 -3 37 38 -36
		mu 0 4 24 4 32 31
		f 4 -14 33 39 -38
		mu 0 4 4 17 29 32
		f 4 -35 40 42 -42
		mu 0 4 29 30 34 33
		f 4 36 43 -45 -41
		mu 0 4 30 31 35 34
		f 4 -39 45 46 -44
		mu 0 4 31 32 36 35
		f 4 -40 41 47 -46
		mu 0 4 32 29 33 36;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "pCube14";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.36923963 0.74423969 0.25 0.25576037 0.25 0.375
		 0.36923963 0.25576037 0 0.375 0.88076037 0.625 0.88076037 0.74423963 0 0.51456308
		 0.25 0.51456308 0.36923963 0.51456308 0.5 0.51456308 0.75 0.51456308 0.88076037 0.51456308
		 0 0.51456308 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[4]" -type "float3" -4.7683716e-007 12.433598 0 ;
	setAttr ".pt[9]" -type "float3" 0 12.433598 0 ;
	setAttr ".pt[13]" -type "float3" 0 12.433598 0 ;
	setAttr ".pt[14]" -type "float3" 0 12.433598 0 ;
	setAttr -s 18 ".vt[0:17]"  -5.57954359 -7.80980682 6.22579622 5.57954359 -7.80980682 6.22579622
		 -5.57954359 7.80980682 6.22579622 5.57954359 7.80980682 6.22579622 -5.57954359 7.80980682 -6.22579622
		 5.57954359 7.80980682 -6.22579622 -5.57954359 -7.80980682 -6.22579622 5.57954359 -7.80980682 -6.22579622
		 5.57954407 7.8098073 0.28690314 -5.57954407 7.8098073 0.28690314 -5.57954359 -7.80980682 0.28690338
		 5.57954359 -7.80980682 0.28690338 0.65004206 7.80980682 6.22579622 0.65004206 7.8098073 0.28690314
		 0.65004206 7.80980682 -6.22579622 0.65004206 -7.80980682 -6.22579622 0.65004206 -7.80980682 0.28690338
		 0.65004206 -7.80980682 6.22579622;
	setAttr -s 32 ".ed[0:31]"  0 17 0 2 12 0 4 14 0 6 15 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 13 1 10 0 0 9 10 1 11 1 0 10 16 1 11 8 1
		 12 3 0 13 9 1 12 13 1 14 5 0 13 14 1 15 7 0 14 15 1 16 11 1 15 16 1 17 1 0 16 17 1
		 17 12 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 0 31 -2 -5
		mu 0 4 0 27 22 2
		f 4 1 22 21 -7
		mu 0 4 2 22 23 17
		f 4 2 26 -4 -9
		mu 0 4 4 24 25 6
		f 4 18 30 -1 -16
		mu 0 4 19 26 28 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -22 24 -3 -14
		mu 0 4 17 23 24 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 28 -19 -11
		mu 0 4 6 25 26 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 20 7 14 -23
		mu 0 4 22 3 14 23
		f 4 -25 -15 12 -24
		mu 0 4 24 23 14 5
		f 4 -27 23 9 -26
		mu 0 4 25 24 5 7
		f 4 -29 25 11 -28
		mu 0 4 26 25 7 20
		f 4 -31 27 17 -30
		mu 0 4 28 26 20 9
		f 4 -32 29 5 -21
		mu 0 4 22 27 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube15" -p "Spikes";
	setAttr ".t" -type "double3" 12.900373421525273 8.9128101892311058 17.837159298534203 ;
	setAttr ".r" -type "double3" 0 -38.795029509299226 0 ;
	setAttr ".s" -type "double3" 0.79414241515971795 0.79414241515971795 0.79414241515971795 ;
createNode mesh -n "pCubeShape15" -p "pCube15";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 37 ".uvst[0].uvsp[0:36]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.36923963 0.74423969 0.25 0.25576037 0.25 0.375
		 0.36923963 0.25576037 0 0.375 0.88076037 0.625 0.88076037 0.74423963 0 0.51456308
		 0.25 0.51456308 0.36923963 0.51456308 0.5 0.51456308 0.75 0.51456308 0.88076037 0.51456308
		 0 0.51456308 1 0.51456308 0.25 0.625 0.25 0.625 0.36923963 0.51456308 0.36923963
		 0.375 0.25 0.51456308 0.25 0.51456308 0.36923963 0.375 0.36923963;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[22:25]" -type "float3"  8.919095 0 -5.6843419e-014 
		0 11.187946 0 3.5310023 -26.796051 -3.7120972 8.6524706 -12.489447 -1.2434498e-013;
	setAttr -s 26 ".vt[0:25]"  -5.57954216 -7.80980682 6.22579575 5.57954597 -7.80980682 6.22579575
		 -5.57954216 0.11364365 6.22579575 5.57954597 0.41120911 6.22579575 -5.57954407 -0.14237595 -6.22579861
		 5.57954407 0.11364365 -6.2257967 -5.57954407 -7.80980682 -6.22579861 5.57954407 -7.80980682 -6.2257967
		 5.57954597 7.80980682 0.28690338 -5.57954407 7.80980682 0.28690338 -5.57954216 -7.80980682 0.28690338
		 5.57954597 -7.80980682 0.28690338 0.65004349 7.80980682 6.22579575 0.65004539 33.24934387 -4.45028687
		 0.65004158 7.80980682 -6.22579765 0.65004158 -7.80980682 -6.22579765 0.65004158 -7.80980682 0.28690338
		 0.65004349 -7.80980682 6.22579575 6.99671555 12.40338898 6.23574638 11.92621613 17.20145416 11.49376678
		 11.92621422 10.47521973 5.55487061 3.68506241 15.032722473 0.81768036 -14.39125252 4.74830246 15.46882629
		 -8.16166306 12.44446564 15.46882629 -8.16166115 37.88400269 4.79274178 -14.39125252 12.44446564 9.52993393;
	setAttr -s 48 ".ed[0:47]"  0 17 0 2 12 0 4 14 0 6 15 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 13 1 10 0 0 9 10 1 11 1 0 10 16 1 11 8 1
		 12 3 0 13 9 1 12 13 0 14 5 0 13 14 1 15 7 0 14 15 1 16 11 1 15 16 1 17 1 0 16 17 1
		 17 12 1 12 18 0 3 19 0 18 19 0 8 20 1 19 20 0 13 21 0 20 21 0 18 21 0 2 22 0 12 23 0
		 22 23 0 13 24 0 23 24 0 9 25 1 24 25 0 22 25 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 31 -2 -5
		mu 0 4 0 27 22 2
		f 4 42 44 46 -48
		mu 0 4 33 34 35 36
		f 4 2 26 -4 -9
		mu 0 4 4 24 25 6
		f 4 18 30 -1 -16
		mu 0 4 19 26 28 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -22 24 -3 -14
		mu 0 4 17 23 24 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 28 -19 -11
		mu 0 4 6 25 26 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 34 36 38 -40
		mu 0 4 29 30 31 32
		f 4 -25 -15 12 -24
		mu 0 4 24 23 14 5
		f 4 -27 23 9 -26
		mu 0 4 25 24 5 7
		f 4 -29 25 11 -28
		mu 0 4 26 25 7 20
		f 4 -31 27 17 -30
		mu 0 4 28 26 20 9
		f 4 -32 29 5 -21
		mu 0 4 22 27 1 3
		f 4 20 33 -35 -33
		mu 0 4 22 3 30 29
		f 4 7 35 -37 -34
		mu 0 4 3 14 31 30
		f 4 14 37 -39 -36
		mu 0 4 14 23 32 31
		f 4 -23 32 39 -38
		mu 0 4 23 22 29 32
		f 4 1 41 -43 -41
		mu 0 4 2 22 34 33
		f 4 22 43 -45 -42
		mu 0 4 22 23 35 34
		f 4 21 45 -47 -44
		mu 0 4 23 17 36 35
		f 4 -7 40 47 -46
		mu 0 4 17 2 33 36;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "pCube15";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.36923963 0.74423969 0.25 0.25576037 0.25 0.375
		 0.36923963 0.25576037 0 0.375 0.88076037 0.625 0.88076037 0.74423963 0 0.51456308
		 0.25 0.51456308 0.36923963 0.51456308 0.5 0.51456308 0.75 0.51456308 0.88076037 0.51456308
		 0 0.51456308 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[2]" -type "float3" 0 -7.6961632 0 ;
	setAttr ".pt[3]" -type "float3" 0 -7.3985968 0 ;
	setAttr ".pt[4]" -type "float3" 0 -7.9521828 0 ;
	setAttr ".pt[5]" -type "float3" 0 -7.6961632 0 ;
	setAttr ".pt[13]" -type "float3" 0 25.439535 -4.7371902 ;
	setAttr -s 18 ".vt[0:17]"  -5.57954359 -7.80980682 6.22579622 5.57954359 -7.80980682 6.22579622
		 -5.57954359 7.80980682 6.22579622 5.57954359 7.80980682 6.22579622 -5.57954359 7.80980682 -6.22579622
		 5.57954359 7.80980682 -6.22579622 -5.57954359 -7.80980682 -6.22579622 5.57954359 -7.80980682 -6.22579622
		 5.57954407 7.8098073 0.28690314 -5.57954407 7.8098073 0.28690314 -5.57954359 -7.80980682 0.28690338
		 5.57954359 -7.80980682 0.28690338 0.65004206 7.80980682 6.22579622 0.65004206 7.8098073 0.28690314
		 0.65004206 7.80980682 -6.22579622 0.65004206 -7.80980682 -6.22579622 0.65004206 -7.80980682 0.28690338
		 0.65004206 -7.80980682 6.22579622;
	setAttr -s 32 ".ed[0:31]"  0 17 0 2 12 0 4 14 0 6 15 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 13 1 10 0 0 9 10 1 11 1 0 10 16 1 11 8 1
		 12 3 0 13 9 1 12 13 1 14 5 0 13 14 1 15 7 0 14 15 1 16 11 1 15 16 1 17 1 0 16 17 1
		 17 12 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 0 31 -2 -5
		mu 0 4 0 27 22 2
		f 4 1 22 21 -7
		mu 0 4 2 22 23 17
		f 4 2 26 -4 -9
		mu 0 4 4 24 25 6
		f 4 18 30 -1 -16
		mu 0 4 19 26 28 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -22 24 -3 -14
		mu 0 4 17 23 24 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 28 -19 -11
		mu 0 4 6 25 26 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 20 7 14 -23
		mu 0 4 22 3 14 23
		f 4 -25 -15 12 -24
		mu 0 4 24 23 14 5
		f 4 -27 23 9 -26
		mu 0 4 25 24 5 7
		f 4 -29 25 11 -28
		mu 0 4 26 25 7 20
		f 4 -31 27 17 -30
		mu 0 4 28 26 20 9
		f 4 -32 29 5 -21
		mu 0 4 22 27 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube16" -p "Spikes";
	setAttr ".t" -type "double3" 13.900975440974776 11.824206285703127 -68.098935925465426 ;
	setAttr ".r" -type "double3" -3.5176801349404769 9.6666028736001568 -84.24846205359097 ;
	setAttr ".s" -type "double3" 0.53405119963531056 0.53405119963531056 0.53405119963531056 ;
createNode mesh -n "pCubeShape16" -p "pCube16";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 37 ".uvst[0].uvsp[0:36]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.36923963 0.74423969 0.25 0.25576037 0.25 0.375
		 0.36923963 0.25576037 0 0.375 0.88076037 0.625 0.88076037 0.74423963 0 0.51456308
		 0.25 0.51456308 0.36923963 0.51456308 0.5 0.51456308 0.75 0.51456308 0.88076037 0.51456308
		 0 0.51456308 1 0.51456308 0.25 0.625 0.25 0.625 0.36923963 0.51456308 0.36923963
		 0.375 0.25 0.51456308 0.25 0.51456308 0.36923963 0.375 0.36923963;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[22:25]" -type "float3"  8.919095 0 -5.6843419e-014 
		0 11.187946 0 3.5310023 -26.796051 -3.7120972 8.6524706 -12.489447 -1.2434498e-013;
	setAttr -s 26 ".vt[0:25]"  -5.57954216 -7.80980682 6.22579575 5.57954597 -7.80980682 6.22579575
		 -5.57954216 0.11364365 6.22579575 5.57954597 0.41120911 6.22579575 -5.57954407 -0.14237595 -6.22579861
		 5.57954407 0.11364365 -6.2257967 -5.57954407 -7.80980682 -6.22579861 5.57954407 -7.80980682 -6.2257967
		 5.57954597 7.80980682 0.28690338 -5.57954407 7.80980682 0.28690338 -5.57954216 -7.80980682 0.28690338
		 5.57954597 -7.80980682 0.28690338 0.65004349 7.80980682 6.22579575 0.65004539 33.24934387 -4.45028687
		 0.65004158 7.80980682 -6.22579765 0.65004158 -7.80980682 -6.22579765 0.65004158 -7.80980682 0.28690338
		 0.65004349 -7.80980682 6.22579575 6.99671555 12.40338898 6.23574638 11.92621613 17.20145416 11.49376678
		 11.92621422 10.47521973 5.55487061 3.68506241 15.032722473 0.81768036 -14.39125252 4.74830246 15.46882629
		 -8.16166306 12.44446564 15.46882629 -8.16166115 37.88400269 4.79274178 -14.39125252 12.44446564 9.52993393;
	setAttr -s 48 ".ed[0:47]"  0 17 0 2 12 0 4 14 0 6 15 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 13 1 10 0 0 9 10 1 11 1 0 10 16 1 11 8 1
		 12 3 0 13 9 1 12 13 0 14 5 0 13 14 1 15 7 0 14 15 1 16 11 1 15 16 1 17 1 0 16 17 1
		 17 12 1 12 18 0 3 19 0 18 19 0 8 20 1 19 20 0 13 21 0 20 21 0 18 21 0 2 22 0 12 23 0
		 22 23 0 13 24 0 23 24 0 9 25 1 24 25 0 22 25 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 31 -2 -5
		mu 0 4 0 27 22 2
		f 4 42 44 46 -48
		mu 0 4 33 34 35 36
		f 4 2 26 -4 -9
		mu 0 4 4 24 25 6
		f 4 18 30 -1 -16
		mu 0 4 19 26 28 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -22 24 -3 -14
		mu 0 4 17 23 24 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 28 -19 -11
		mu 0 4 6 25 26 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 34 36 38 -40
		mu 0 4 29 30 31 32
		f 4 -25 -15 12 -24
		mu 0 4 24 23 14 5
		f 4 -27 23 9 -26
		mu 0 4 25 24 5 7
		f 4 -29 25 11 -28
		mu 0 4 26 25 7 20
		f 4 -31 27 17 -30
		mu 0 4 28 26 20 9
		f 4 -32 29 5 -21
		mu 0 4 22 27 1 3
		f 4 20 33 -35 -33
		mu 0 4 22 3 30 29
		f 4 7 35 -37 -34
		mu 0 4 3 14 31 30
		f 4 14 37 -39 -36
		mu 0 4 14 23 32 31
		f 4 -23 32 39 -38
		mu 0 4 23 22 29 32
		f 4 1 41 -43 -41
		mu 0 4 2 22 34 33
		f 4 22 43 -45 -42
		mu 0 4 22 23 35 34
		f 4 21 45 -47 -44
		mu 0 4 23 17 36 35
		f 4 -7 40 47 -46
		mu 0 4 17 2 33 36;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "pCube16";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.36923963 0.74423969 0.25 0.25576037 0.25 0.375
		 0.36923963 0.25576037 0 0.375 0.88076037 0.625 0.88076037 0.74423963 0 0.51456308
		 0.25 0.51456308 0.36923963 0.51456308 0.5 0.51456308 0.75 0.51456308 0.88076037 0.51456308
		 0 0.51456308 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[2]" -type "float3" 0 -7.6961632 0 ;
	setAttr ".pt[3]" -type "float3" 0 -7.3985968 0 ;
	setAttr ".pt[4]" -type "float3" 0 -7.9521828 0 ;
	setAttr ".pt[5]" -type "float3" 0 -7.6961632 0 ;
	setAttr ".pt[13]" -type "float3" 0 25.439535 -4.7371902 ;
	setAttr -s 18 ".vt[0:17]"  -5.57954359 -7.80980682 6.22579622 5.57954359 -7.80980682 6.22579622
		 -5.57954359 7.80980682 6.22579622 5.57954359 7.80980682 6.22579622 -5.57954359 7.80980682 -6.22579622
		 5.57954359 7.80980682 -6.22579622 -5.57954359 -7.80980682 -6.22579622 5.57954359 -7.80980682 -6.22579622
		 5.57954407 7.8098073 0.28690314 -5.57954407 7.8098073 0.28690314 -5.57954359 -7.80980682 0.28690338
		 5.57954359 -7.80980682 0.28690338 0.65004206 7.80980682 6.22579622 0.65004206 7.8098073 0.28690314
		 0.65004206 7.80980682 -6.22579622 0.65004206 -7.80980682 -6.22579622 0.65004206 -7.80980682 0.28690338
		 0.65004206 -7.80980682 6.22579622;
	setAttr -s 32 ".ed[0:31]"  0 17 0 2 12 0 4 14 0 6 15 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 13 1 10 0 0 9 10 1 11 1 0 10 16 1 11 8 1
		 12 3 0 13 9 1 12 13 1 14 5 0 13 14 1 15 7 0 14 15 1 16 11 1 15 16 1 17 1 0 16 17 1
		 17 12 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 0 31 -2 -5
		mu 0 4 0 27 22 2
		f 4 1 22 21 -7
		mu 0 4 2 22 23 17
		f 4 2 26 -4 -9
		mu 0 4 4 24 25 6
		f 4 18 30 -1 -16
		mu 0 4 19 26 28 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -22 24 -3 -14
		mu 0 4 17 23 24 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 28 -19 -11
		mu 0 4 6 25 26 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 20 7 14 -23
		mu 0 4 22 3 14 23
		f 4 -25 -15 12 -24
		mu 0 4 24 23 14 5
		f 4 -27 23 9 -26
		mu 0 4 25 24 5 7
		f 4 -29 25 11 -28
		mu 0 4 26 25 7 20
		f 4 -31 27 17 -30
		mu 0 4 28 26 20 9
		f 4 -32 29 5 -21
		mu 0 4 22 27 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube17" -p "Spikes";
	setAttr ".t" -type "double3" 15.665058748307644 14.710982008283528 -49.15910828276742 ;
	setAttr ".r" -type "double3" -9.8444811616457901 3.4064898910599792 6.7016885508363373 ;
	setAttr ".s" -type "double3" 0.26759889309584328 0.26759889309584328 0.26759889309584328 ;
createNode mesh -n "pCubeShape17" -p "pCube17";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 37 ".uvst[0].uvsp[0:36]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.36923963 0.74423969 0.25 0.25576037 0.25 0.375
		 0.36923963 0.25576037 0 0.375 0.88076037 0.625 0.88076037 0.74423963 0 0.51456308
		 0.25 0.51456308 0.36923963 0.51456308 0.5 0.51456308 0.75 0.51456308 0.88076037 0.51456308
		 0 0.51456308 1 0.51456308 0.25 0.625 0.25 0.625 0.36923963 0.51456308 0.36923963
		 0.375 0.25 0.51456308 0.25 0.51456308 0.36923963 0.375 0.36923963;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[22:25]" -type "float3"  8.919095 0 -5.6843419e-014 
		0 11.187946 0 3.5310023 -26.796051 -3.7120972 8.6524706 -12.489447 -1.2434498e-013;
	setAttr -s 26 ".vt[0:25]"  -5.57954216 -7.80980682 6.22579575 5.57954597 -7.80980682 6.22579575
		 -5.57954216 0.11364365 6.22579575 5.57954597 0.41120911 6.22579575 -5.57954407 -0.14237595 -6.22579861
		 5.57954407 0.11364365 -6.2257967 -5.57954407 -7.80980682 -6.22579861 5.57954407 -7.80980682 -6.2257967
		 5.57954597 7.80980682 0.28690338 -5.57954407 7.80980682 0.28690338 -5.57954216 -7.80980682 0.28690338
		 5.57954597 -7.80980682 0.28690338 0.65004349 7.80980682 6.22579575 0.65004539 33.24934387 -4.45028687
		 0.65004158 7.80980682 -6.22579765 0.65004158 -7.80980682 -6.22579765 0.65004158 -7.80980682 0.28690338
		 0.65004349 -7.80980682 6.22579575 6.99671555 12.40338898 6.23574638 11.92621613 17.20145416 11.49376678
		 11.92621422 10.47521973 5.55487061 3.68506241 15.032722473 0.81768036 -14.39125252 4.74830246 15.46882629
		 -8.16166306 12.44446564 15.46882629 -8.16166115 37.88400269 4.79274178 -14.39125252 12.44446564 9.52993393;
	setAttr -s 48 ".ed[0:47]"  0 17 0 2 12 0 4 14 0 6 15 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 13 1 10 0 0 9 10 1 11 1 0 10 16 1 11 8 1
		 12 3 0 13 9 1 12 13 0 14 5 0 13 14 1 15 7 0 14 15 1 16 11 1 15 16 1 17 1 0 16 17 1
		 17 12 1 12 18 0 3 19 0 18 19 0 8 20 1 19 20 0 13 21 0 20 21 0 18 21 0 2 22 0 12 23 0
		 22 23 0 13 24 0 23 24 0 9 25 1 24 25 0 22 25 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 31 -2 -5
		mu 0 4 0 27 22 2
		f 4 42 44 46 -48
		mu 0 4 33 34 35 36
		f 4 2 26 -4 -9
		mu 0 4 4 24 25 6
		f 4 18 30 -1 -16
		mu 0 4 19 26 28 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -22 24 -3 -14
		mu 0 4 17 23 24 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 28 -19 -11
		mu 0 4 6 25 26 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 34 36 38 -40
		mu 0 4 29 30 31 32
		f 4 -25 -15 12 -24
		mu 0 4 24 23 14 5
		f 4 -27 23 9 -26
		mu 0 4 25 24 5 7
		f 4 -29 25 11 -28
		mu 0 4 26 25 7 20
		f 4 -31 27 17 -30
		mu 0 4 28 26 20 9
		f 4 -32 29 5 -21
		mu 0 4 22 27 1 3
		f 4 20 33 -35 -33
		mu 0 4 22 3 30 29
		f 4 7 35 -37 -34
		mu 0 4 3 14 31 30
		f 4 14 37 -39 -36
		mu 0 4 14 23 32 31
		f 4 -23 32 39 -38
		mu 0 4 23 22 29 32
		f 4 1 41 -43 -41
		mu 0 4 2 22 34 33
		f 4 22 43 -45 -42
		mu 0 4 22 23 35 34
		f 4 21 45 -47 -44
		mu 0 4 23 17 36 35
		f 4 -7 40 47 -46
		mu 0 4 17 2 33 36;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "pCube17";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.36923963 0.74423969 0.25 0.25576037 0.25 0.375
		 0.36923963 0.25576037 0 0.375 0.88076037 0.625 0.88076037 0.74423963 0 0.51456308
		 0.25 0.51456308 0.36923963 0.51456308 0.5 0.51456308 0.75 0.51456308 0.88076037 0.51456308
		 0 0.51456308 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[2]" -type "float3" 0 -7.6961632 0 ;
	setAttr ".pt[3]" -type "float3" 0 -7.3985968 0 ;
	setAttr ".pt[4]" -type "float3" 0 -7.9521828 0 ;
	setAttr ".pt[5]" -type "float3" 0 -7.6961632 0 ;
	setAttr ".pt[13]" -type "float3" 0 25.439535 -4.7371902 ;
	setAttr -s 18 ".vt[0:17]"  -5.57954359 -7.80980682 6.22579622 5.57954359 -7.80980682 6.22579622
		 -5.57954359 7.80980682 6.22579622 5.57954359 7.80980682 6.22579622 -5.57954359 7.80980682 -6.22579622
		 5.57954359 7.80980682 -6.22579622 -5.57954359 -7.80980682 -6.22579622 5.57954359 -7.80980682 -6.22579622
		 5.57954407 7.8098073 0.28690314 -5.57954407 7.8098073 0.28690314 -5.57954359 -7.80980682 0.28690338
		 5.57954359 -7.80980682 0.28690338 0.65004206 7.80980682 6.22579622 0.65004206 7.8098073 0.28690314
		 0.65004206 7.80980682 -6.22579622 0.65004206 -7.80980682 -6.22579622 0.65004206 -7.80980682 0.28690338
		 0.65004206 -7.80980682 6.22579622;
	setAttr -s 32 ".ed[0:31]"  0 17 0 2 12 0 4 14 0 6 15 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 13 1 10 0 0 9 10 1 11 1 0 10 16 1 11 8 1
		 12 3 0 13 9 1 12 13 1 14 5 0 13 14 1 15 7 0 14 15 1 16 11 1 15 16 1 17 1 0 16 17 1
		 17 12 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 0 31 -2 -5
		mu 0 4 0 27 22 2
		f 4 1 22 21 -7
		mu 0 4 2 22 23 17
		f 4 2 26 -4 -9
		mu 0 4 4 24 25 6
		f 4 18 30 -1 -16
		mu 0 4 19 26 28 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -22 24 -3 -14
		mu 0 4 17 23 24 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 28 -19 -11
		mu 0 4 6 25 26 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 20 7 14 -23
		mu 0 4 22 3 14 23
		f 4 -25 -15 12 -24
		mu 0 4 24 23 14 5
		f 4 -27 23 9 -26
		mu 0 4 25 24 5 7
		f 4 -29 25 11 -28
		mu 0 4 26 25 7 20
		f 4 -31 27 17 -30
		mu 0 4 28 26 20 9
		f 4 -32 29 5 -21
		mu 0 4 22 27 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube18" -p "Spikes";
	setAttr ".t" -type "double3" 13.322962377300854 15.494829119933907 -86.700187032552392 ;
	setAttr ".r" -type "double3" -20.040970502215174 60.129965327484278 -10.260855530408614 ;
	setAttr ".s" -type "double3" 0.26759889309584328 0.26759889309584328 0.26759889309584328 ;
createNode mesh -n "pCubeShape18" -p "pCube18";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 37 ".uvst[0].uvsp[0:36]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.36923963 0.74423969 0.25 0.25576037 0.25 0.375
		 0.36923963 0.25576037 0 0.375 0.88076037 0.625 0.88076037 0.74423963 0 0.51456308
		 0.25 0.51456308 0.36923963 0.51456308 0.5 0.51456308 0.75 0.51456308 0.88076037 0.51456308
		 0 0.51456308 1 0.51456308 0.25 0.625 0.25 0.625 0.36923963 0.51456308 0.36923963
		 0.375 0.25 0.51456308 0.25 0.51456308 0.36923963 0.375 0.36923963;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[22:25]" -type "float3"  8.919095 0 -5.6843419e-014 
		0 11.187946 0 3.5310023 -26.796051 -3.7120972 8.6524706 -12.489447 -1.2434498e-013;
	setAttr -s 26 ".vt[0:25]"  -5.57954216 -7.80980682 6.22579575 5.57954597 -7.80980682 6.22579575
		 -5.57954216 0.11364365 6.22579575 5.57954597 0.41120911 6.22579575 -5.57954407 -0.14237595 -6.22579861
		 5.57954407 0.11364365 -6.2257967 -5.57954407 -7.80980682 -6.22579861 5.57954407 -7.80980682 -6.2257967
		 5.57954597 7.80980682 0.28690338 -5.57954407 7.80980682 0.28690338 -5.57954216 -7.80980682 0.28690338
		 5.57954597 -7.80980682 0.28690338 0.65004349 7.80980682 6.22579575 0.65004539 33.24934387 -4.45028687
		 0.65004158 7.80980682 -6.22579765 0.65004158 -7.80980682 -6.22579765 0.65004158 -7.80980682 0.28690338
		 0.65004349 -7.80980682 6.22579575 6.99671555 12.40338898 6.23574638 11.92621613 17.20145416 11.49376678
		 11.92621422 10.47521973 5.55487061 3.68506241 15.032722473 0.81768036 -14.39125252 4.74830246 15.46882629
		 -8.16166306 12.44446564 15.46882629 -8.16166115 37.88400269 4.79274178 -14.39125252 12.44446564 9.52993393;
	setAttr -s 48 ".ed[0:47]"  0 17 0 2 12 0 4 14 0 6 15 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 13 1 10 0 0 9 10 1 11 1 0 10 16 1 11 8 1
		 12 3 0 13 9 1 12 13 0 14 5 0 13 14 1 15 7 0 14 15 1 16 11 1 15 16 1 17 1 0 16 17 1
		 17 12 1 12 18 0 3 19 0 18 19 0 8 20 1 19 20 0 13 21 0 20 21 0 18 21 0 2 22 0 12 23 0
		 22 23 0 13 24 0 23 24 0 9 25 1 24 25 0 22 25 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 31 -2 -5
		mu 0 4 0 27 22 2
		f 4 42 44 46 -48
		mu 0 4 33 34 35 36
		f 4 2 26 -4 -9
		mu 0 4 4 24 25 6
		f 4 18 30 -1 -16
		mu 0 4 19 26 28 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -22 24 -3 -14
		mu 0 4 17 23 24 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 28 -19 -11
		mu 0 4 6 25 26 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 34 36 38 -40
		mu 0 4 29 30 31 32
		f 4 -25 -15 12 -24
		mu 0 4 24 23 14 5
		f 4 -27 23 9 -26
		mu 0 4 25 24 5 7
		f 4 -29 25 11 -28
		mu 0 4 26 25 7 20
		f 4 -31 27 17 -30
		mu 0 4 28 26 20 9
		f 4 -32 29 5 -21
		mu 0 4 22 27 1 3
		f 4 20 33 -35 -33
		mu 0 4 22 3 30 29
		f 4 7 35 -37 -34
		mu 0 4 3 14 31 30
		f 4 14 37 -39 -36
		mu 0 4 14 23 32 31
		f 4 -23 32 39 -38
		mu 0 4 23 22 29 32
		f 4 1 41 -43 -41
		mu 0 4 2 22 34 33
		f 4 22 43 -45 -42
		mu 0 4 22 23 35 34
		f 4 21 45 -47 -44
		mu 0 4 23 17 36 35
		f 4 -7 40 47 -46
		mu 0 4 17 2 33 36;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "pCube18";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.36923963 0.74423969 0.25 0.25576037 0.25 0.375
		 0.36923963 0.25576037 0 0.375 0.88076037 0.625 0.88076037 0.74423963 0 0.51456308
		 0.25 0.51456308 0.36923963 0.51456308 0.5 0.51456308 0.75 0.51456308 0.88076037 0.51456308
		 0 0.51456308 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[2]" -type "float3" 0 -7.6961632 0 ;
	setAttr ".pt[3]" -type "float3" 0 -7.3985968 0 ;
	setAttr ".pt[4]" -type "float3" 0 -7.9521828 0 ;
	setAttr ".pt[5]" -type "float3" 0 -7.6961632 0 ;
	setAttr ".pt[13]" -type "float3" 0 25.439535 -4.7371902 ;
	setAttr -s 18 ".vt[0:17]"  -5.57954359 -7.80980682 6.22579622 5.57954359 -7.80980682 6.22579622
		 -5.57954359 7.80980682 6.22579622 5.57954359 7.80980682 6.22579622 -5.57954359 7.80980682 -6.22579622
		 5.57954359 7.80980682 -6.22579622 -5.57954359 -7.80980682 -6.22579622 5.57954359 -7.80980682 -6.22579622
		 5.57954407 7.8098073 0.28690314 -5.57954407 7.8098073 0.28690314 -5.57954359 -7.80980682 0.28690338
		 5.57954359 -7.80980682 0.28690338 0.65004206 7.80980682 6.22579622 0.65004206 7.8098073 0.28690314
		 0.65004206 7.80980682 -6.22579622 0.65004206 -7.80980682 -6.22579622 0.65004206 -7.80980682 0.28690338
		 0.65004206 -7.80980682 6.22579622;
	setAttr -s 32 ".ed[0:31]"  0 17 0 2 12 0 4 14 0 6 15 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 13 1 10 0 0 9 10 1 11 1 0 10 16 1 11 8 1
		 12 3 0 13 9 1 12 13 1 14 5 0 13 14 1 15 7 0 14 15 1 16 11 1 15 16 1 17 1 0 16 17 1
		 17 12 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 0 31 -2 -5
		mu 0 4 0 27 22 2
		f 4 1 22 21 -7
		mu 0 4 2 22 23 17
		f 4 2 26 -4 -9
		mu 0 4 4 24 25 6
		f 4 18 30 -1 -16
		mu 0 4 19 26 28 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -22 24 -3 -14
		mu 0 4 17 23 24 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 28 -19 -11
		mu 0 4 6 25 26 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 20 7 14 -23
		mu 0 4 22 3 14 23
		f 4 -25 -15 12 -24
		mu 0 4 24 23 14 5
		f 4 -27 23 9 -26
		mu 0 4 25 24 5 7
		f 4 -29 25 11 -28
		mu 0 4 26 25 7 20
		f 4 -31 27 17 -30
		mu 0 4 28 26 20 9
		f 4 -32 29 5 -21
		mu 0 4 22 27 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube19" -p "Spikes";
	setAttr ".t" -type "double3" 1.380148999364792 7.3177804946270077 -97.542941434543977 ;
	setAttr ".r" -type "double3" -137.35858101209703 -116.434881668557 128.64288693476712 ;
	setAttr ".s" -type "double3" 0.77739717954048448 0.77739717954048448 0.77739717954048448 ;
createNode mesh -n "pCubeShape19" -p "pCube19";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 37 ".uvst[0].uvsp[0:36]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.36923963 0.74423969 0.25 0.25576037 0.25 0.375
		 0.36923963 0.25576037 0 0.375 0.88076037 0.625 0.88076037 0.74423963 0 0.51456308
		 0.25 0.51456308 0.36923963 0.51456308 0.5 0.51456308 0.75 0.51456308 0.88076037 0.51456308
		 0 0.51456308 1 0.375 0.36923963 0.51456308 0.36923963 0.51456308 0.5 0.375 0.5 0.375
		 0.36923963 0.51456308 0.36923963 0.51456308 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[18]" -type "float3" -2.0908196 0 0 ;
	setAttr ".pt[20]" -type "float3" 0 -5.4822211 2.3834152 ;
	setAttr ".pt[22]" -type "float3" -2.7880414 -4.4072175 -0.037332475 ;
	setAttr ".pt[23]" -type "float3" 0 0 5.6693983 ;
	setAttr ".pt[24]" -type "float3" -0.92354691 -7.9302588 4.1038861 ;
	setAttr ".pt[25]" -type "float3" 0 -4.7956262 1.8696797 ;
	setAttr -s 26 ".vt[0:25]"  -5.57954359 -7.80980682 6.22579956 5.57954359 -7.80980682 6.22579956
		 -5.57954359 7.80980682 6.22579956 5.57954359 7.80980682 6.22579956 -5.57954407 20.24340439 -6.22579956
		 5.57954359 7.80980682 -6.22579956 -5.57954359 -7.80980682 -6.22579956 5.57954359 -7.80980682 -6.22579956
		 5.57954407 7.80980682 0.28690338 -5.57954407 20.24340439 0.28690338 -5.57954359 -7.80980682 0.28690338
		 5.57954359 -7.80980682 0.28690338 0.650042 7.80980682 6.22579956 0.650042 20.24340439 0.28690338
		 0.650042 20.24340439 -6.22579956 0.650042 -7.80980682 -6.22579956 0.650042 -7.80980682 0.28690338
		 0.650042 -7.80980682 6.22579956 0.650042 30.46277618 0.28690338 -5.57954407 30.46277618 0.28690338
		 0.650042 30.46277618 -6.22579956 -5.57954407 30.46277618 -6.22579956 0.650042 39.46936035 0.28690338
		 -5.57954407 39.46936035 0.28690338 0.650042 39.46936035 -6.22579956 -5.57954407 39.46936035 -6.22579956;
	setAttr -s 48 ".ed[0:47]"  0 17 0 2 12 0 4 14 1 6 15 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 1 8 13 1 10 0 0 9 10 1 11 1 0 10 16 1 11 8 1
		 12 3 0 13 9 1 12 13 1 14 5 0 13 14 1 15 7 0 14 15 1 16 11 1 15 16 1 17 1 0 16 17 1
		 17 12 1 13 18 0 9 19 0 18 19 1 14 20 0 18 20 1 4 21 0 21 20 1 19 21 1 18 22 0 19 23 0
		 22 23 0 20 24 0 22 24 0 21 25 0 25 24 0 23 25 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 31 -2 -5
		mu 0 4 0 27 22 2
		f 4 1 22 21 -7
		mu 0 4 2 22 23 17
		f 4 2 26 -4 -9
		mu 0 4 4 24 25 6
		f 4 18 30 -1 -16
		mu 0 4 19 26 28 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -43 44 -47 -48
		mu 0 4 33 34 35 36
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 28 -19 -11
		mu 0 4 6 25 26 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 20 7 14 -23
		mu 0 4 22 3 14 23
		f 4 -25 -15 12 -24
		mu 0 4 24 23 14 5
		f 4 -27 23 9 -26
		mu 0 4 25 24 5 7
		f 4 -29 25 11 -28
		mu 0 4 26 25 7 20
		f 4 -31 27 17 -30
		mu 0 4 28 26 20 9
		f 4 -32 29 5 -21
		mu 0 4 22 27 1 3
		f 4 -22 32 34 -34
		mu 0 4 17 23 30 29
		f 4 24 35 -37 -33
		mu 0 4 23 24 31 30
		f 4 -3 37 38 -36
		mu 0 4 24 4 32 31
		f 4 -14 33 39 -38
		mu 0 4 4 17 29 32
		f 4 -35 40 42 -42
		mu 0 4 29 30 34 33
		f 4 36 43 -45 -41
		mu 0 4 30 31 35 34
		f 4 -39 45 46 -44
		mu 0 4 31 32 36 35
		f 4 -40 41 47 -46
		mu 0 4 32 29 33 36;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "pCube19";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.36923963 0.74423969 0.25 0.25576037 0.25 0.375
		 0.36923963 0.25576037 0 0.375 0.88076037 0.625 0.88076037 0.74423963 0 0.51456308
		 0.25 0.51456308 0.36923963 0.51456308 0.5 0.51456308 0.75 0.51456308 0.88076037 0.51456308
		 0 0.51456308 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[4]" -type "float3" -4.7683716e-007 12.433598 0 ;
	setAttr ".pt[9]" -type "float3" 0 12.433598 0 ;
	setAttr ".pt[13]" -type "float3" 0 12.433598 0 ;
	setAttr ".pt[14]" -type "float3" 0 12.433598 0 ;
	setAttr -s 18 ".vt[0:17]"  -5.57954359 -7.80980682 6.22579622 5.57954359 -7.80980682 6.22579622
		 -5.57954359 7.80980682 6.22579622 5.57954359 7.80980682 6.22579622 -5.57954359 7.80980682 -6.22579622
		 5.57954359 7.80980682 -6.22579622 -5.57954359 -7.80980682 -6.22579622 5.57954359 -7.80980682 -6.22579622
		 5.57954407 7.8098073 0.28690314 -5.57954407 7.8098073 0.28690314 -5.57954359 -7.80980682 0.28690338
		 5.57954359 -7.80980682 0.28690338 0.65004206 7.80980682 6.22579622 0.65004206 7.8098073 0.28690314
		 0.65004206 7.80980682 -6.22579622 0.65004206 -7.80980682 -6.22579622 0.65004206 -7.80980682 0.28690338
		 0.65004206 -7.80980682 6.22579622;
	setAttr -s 32 ".ed[0:31]"  0 17 0 2 12 0 4 14 0 6 15 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 13 1 10 0 0 9 10 1 11 1 0 10 16 1 11 8 1
		 12 3 0 13 9 1 12 13 1 14 5 0 13 14 1 15 7 0 14 15 1 16 11 1 15 16 1 17 1 0 16 17 1
		 17 12 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 0 31 -2 -5
		mu 0 4 0 27 22 2
		f 4 1 22 21 -7
		mu 0 4 2 22 23 17
		f 4 2 26 -4 -9
		mu 0 4 4 24 25 6
		f 4 18 30 -1 -16
		mu 0 4 19 26 28 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -22 24 -3 -14
		mu 0 4 17 23 24 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 28 -19 -11
		mu 0 4 6 25 26 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 20 7 14 -23
		mu 0 4 22 3 14 23
		f 4 -25 -15 12 -24
		mu 0 4 24 23 14 5
		f 4 -27 23 9 -26
		mu 0 4 25 24 5 7
		f 4 -29 25 11 -28
		mu 0 4 26 25 7 20
		f 4 -31 27 17 -30
		mu 0 4 28 26 20 9
		f 4 -32 29 5 -21
		mu 0 4 22 27 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube20" -p "Spikes";
	setAttr ".t" -type "double3" 15.22305130435069 6.5605248027310967 -51.557991894011579 ;
	setAttr ".r" -type "double3" -37.307606960244087 33.238901508802051 11.169380075631363 ;
	setAttr ".s" -type "double3" 0.56207259976420199 0.56207259976420199 0.56207259976420199 ;
createNode mesh -n "pCubeShape20" -p "pCube20";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.36923963 0.74423969 0.25 0.25576037 0.25 0.375
		 0.36923963 0.25576037 0 0.375 0.88076037 0.625 0.88076037 0.74423963 0 0.51456308
		 0.25 0.51456308 0.36923963 0.51456308 0.5 0.51456308 0.75 0.51456308 0.88076037 0.51456308
		 0 0.51456308 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.57954359 -7.80980682 6.22579622 5.57954359 -7.80980682 6.22579622
		 -5.57954359 7.80980682 6.22579622 5.57954359 7.80980682 6.22579622 -5.57954359 7.80980682 -6.22579622
		 5.57954359 7.80980682 -6.22579622 -5.57954359 -7.80980682 -6.22579622 5.57954359 -7.80980682 -6.22579622
		 5.57954407 7.8098073 0.28690314 -5.57954407 7.8098073 0.28690314 -5.57954359 -7.80980682 0.28690338
		 5.57954359 -7.80980682 0.28690338 0.65004206 7.80980682 6.22579622 0.65004206 7.8098073 0.28690314
		 0.65004206 7.80980682 -6.22579622 0.65004206 -7.80980682 -6.22579622 0.65004206 -7.80980682 0.28690338
		 0.65004206 -7.80980682 6.22579622;
	setAttr -s 32 ".ed[0:31]"  0 17 0 2 12 0 4 14 0 6 15 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 13 1 10 0 0 9 10 1 11 1 0 10 16 1 11 8 1
		 12 3 0 13 9 1 12 13 1 14 5 0 13 14 1 15 7 0 14 15 1 16 11 1 15 16 1 17 1 0 16 17 1
		 17 12 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 0 31 -2 -5
		mu 0 4 0 27 22 2
		f 4 1 22 21 -7
		mu 0 4 2 22 23 17
		f 4 2 26 -4 -9
		mu 0 4 4 24 25 6
		f 4 18 30 -1 -16
		mu 0 4 19 26 28 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -22 24 -3 -14
		mu 0 4 17 23 24 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 28 -19 -11
		mu 0 4 6 25 26 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 20 7 14 -23
		mu 0 4 22 3 14 23
		f 4 -25 -15 12 -24
		mu 0 4 24 23 14 5
		f 4 -27 23 9 -26
		mu 0 4 25 24 5 7
		f 4 -29 25 11 -28
		mu 0 4 26 25 7 20
		f 4 -31 27 17 -30
		mu 0 4 28 26 20 9
		f 4 -32 29 5 -21
		mu 0 4 22 27 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube21" -p "Spikes";
	setAttr ".t" -type "double3" 16.185618522184967 2.0050478908528033 33.234531980263085 ;
	setAttr ".r" -type "double3" -53.852055099473979 121.48572065955864 -128.46396062938203 ;
	setAttr ".s" -type "double3" 0.16114674135303067 0.16114674135303067 0.16114674135303067 ;
createNode mesh -n "pCubeShape21" -p "pCube21";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 37 ".uvst[0].uvsp[0:36]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.36923963 0.74423969 0.25 0.25576037 0.25 0.375
		 0.36923963 0.25576037 0 0.375 0.88076037 0.625 0.88076037 0.74423963 0 0.51456308
		 0.25 0.51456308 0.36923963 0.51456308 0.5 0.51456308 0.75 0.51456308 0.88076037 0.51456308
		 0 0.51456308 1 0.51456308 0.25 0.625 0.25 0.625 0.36923963 0.51456308 0.36923963
		 0.375 0.25 0.51456308 0.25 0.51456308 0.36923963 0.375 0.36923963;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[22:25]" -type "float3"  8.919095 0 -5.6843419e-014 
		0 11.187946 0 3.5310023 -26.796051 -3.7120972 8.6524706 -12.489447 -1.2434498e-013;
	setAttr -s 26 ".vt[0:25]"  -5.57954216 -7.80980682 6.22579575 5.57954597 -7.80980682 6.22579575
		 -5.57954216 0.11364365 6.22579575 5.57954597 0.41120911 6.22579575 -5.57954407 -0.14237595 -6.22579861
		 5.57954407 0.11364365 -6.2257967 -5.57954407 -7.80980682 -6.22579861 5.57954407 -7.80980682 -6.2257967
		 5.57954597 7.80980682 0.28690338 -5.57954407 7.80980682 0.28690338 -5.57954216 -7.80980682 0.28690338
		 5.57954597 -7.80980682 0.28690338 0.65004349 7.80980682 6.22579575 0.65004539 33.24934387 -4.45028687
		 0.65004158 7.80980682 -6.22579765 0.65004158 -7.80980682 -6.22579765 0.65004158 -7.80980682 0.28690338
		 0.65004349 -7.80980682 6.22579575 6.99671555 12.40338898 6.23574638 11.92621613 17.20145416 11.49376678
		 11.92621422 10.47521973 5.55487061 3.68506241 15.032722473 0.81768036 -14.39125252 4.74830246 15.46882629
		 -8.16166306 12.44446564 15.46882629 -8.16166115 37.88400269 4.79274178 -14.39125252 12.44446564 9.52993393;
	setAttr -s 48 ".ed[0:47]"  0 17 0 2 12 0 4 14 0 6 15 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 13 1 10 0 0 9 10 1 11 1 0 10 16 1 11 8 1
		 12 3 0 13 9 1 12 13 0 14 5 0 13 14 1 15 7 0 14 15 1 16 11 1 15 16 1 17 1 0 16 17 1
		 17 12 1 12 18 0 3 19 0 18 19 0 8 20 1 19 20 0 13 21 0 20 21 0 18 21 0 2 22 0 12 23 0
		 22 23 0 13 24 0 23 24 0 9 25 1 24 25 0 22 25 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 31 -2 -5
		mu 0 4 0 27 22 2
		f 4 42 44 46 -48
		mu 0 4 33 34 35 36
		f 4 2 26 -4 -9
		mu 0 4 4 24 25 6
		f 4 18 30 -1 -16
		mu 0 4 19 26 28 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -22 24 -3 -14
		mu 0 4 17 23 24 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 28 -19 -11
		mu 0 4 6 25 26 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 34 36 38 -40
		mu 0 4 29 30 31 32
		f 4 -25 -15 12 -24
		mu 0 4 24 23 14 5
		f 4 -27 23 9 -26
		mu 0 4 25 24 5 7
		f 4 -29 25 11 -28
		mu 0 4 26 25 7 20
		f 4 -31 27 17 -30
		mu 0 4 28 26 20 9
		f 4 -32 29 5 -21
		mu 0 4 22 27 1 3
		f 4 20 33 -35 -33
		mu 0 4 22 3 30 29
		f 4 7 35 -37 -34
		mu 0 4 3 14 31 30
		f 4 14 37 -39 -36
		mu 0 4 14 23 32 31
		f 4 -23 32 39 -38
		mu 0 4 23 22 29 32
		f 4 1 41 -43 -41
		mu 0 4 2 22 34 33
		f 4 22 43 -45 -42
		mu 0 4 22 23 35 34
		f 4 21 45 -47 -44
		mu 0 4 23 17 36 35
		f 4 -7 40 47 -46
		mu 0 4 17 2 33 36;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "pCube21";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.36923963 0.74423969 0.25 0.25576037 0.25 0.375
		 0.36923963 0.25576037 0 0.375 0.88076037 0.625 0.88076037 0.74423963 0 0.51456308
		 0.25 0.51456308 0.36923963 0.51456308 0.5 0.51456308 0.75 0.51456308 0.88076037 0.51456308
		 0 0.51456308 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[2]" -type "float3" 0 -7.6961632 0 ;
	setAttr ".pt[3]" -type "float3" 0 -7.3985968 0 ;
	setAttr ".pt[4]" -type "float3" 0 -7.9521828 0 ;
	setAttr ".pt[5]" -type "float3" 0 -7.6961632 0 ;
	setAttr ".pt[13]" -type "float3" 0 25.439535 -4.7371902 ;
	setAttr -s 18 ".vt[0:17]"  -5.57954359 -7.80980682 6.22579622 5.57954359 -7.80980682 6.22579622
		 -5.57954359 7.80980682 6.22579622 5.57954359 7.80980682 6.22579622 -5.57954359 7.80980682 -6.22579622
		 5.57954359 7.80980682 -6.22579622 -5.57954359 -7.80980682 -6.22579622 5.57954359 -7.80980682 -6.22579622
		 5.57954407 7.8098073 0.28690314 -5.57954407 7.8098073 0.28690314 -5.57954359 -7.80980682 0.28690338
		 5.57954359 -7.80980682 0.28690338 0.65004206 7.80980682 6.22579622 0.65004206 7.8098073 0.28690314
		 0.65004206 7.80980682 -6.22579622 0.65004206 -7.80980682 -6.22579622 0.65004206 -7.80980682 0.28690338
		 0.65004206 -7.80980682 6.22579622;
	setAttr -s 32 ".ed[0:31]"  0 17 0 2 12 0 4 14 0 6 15 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 13 1 10 0 0 9 10 1 11 1 0 10 16 1 11 8 1
		 12 3 0 13 9 1 12 13 1 14 5 0 13 14 1 15 7 0 14 15 1 16 11 1 15 16 1 17 1 0 16 17 1
		 17 12 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 0 31 -2 -5
		mu 0 4 0 27 22 2
		f 4 1 22 21 -7
		mu 0 4 2 22 23 17
		f 4 2 26 -4 -9
		mu 0 4 4 24 25 6
		f 4 18 30 -1 -16
		mu 0 4 19 26 28 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -22 24 -3 -14
		mu 0 4 17 23 24 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 28 -19 -11
		mu 0 4 6 25 26 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 20 7 14 -23
		mu 0 4 22 3 14 23
		f 4 -25 -15 12 -24
		mu 0 4 24 23 14 5
		f 4 -27 23 9 -26
		mu 0 4 25 24 5 7
		f 4 -29 25 11 -28
		mu 0 4 26 25 7 20
		f 4 -31 27 17 -30
		mu 0 4 28 26 20 9
		f 4 -32 29 5 -21
		mu 0 4 22 27 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode materialInfo -n "materialInfo5";
createNode shadingEngine -n "lambert6SG";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
createNode lambert -n "CASTLE";
	setAttr ".dc" 0.73279350996017456;
	setAttr ".tcf" 0.63967609405517578;
	setAttr ".trsd" 0.93117409944534302;
createNode fractal -n "fractal3";
	setAttr ".ag" 0.94736844301223755;
	setAttr ".a" 0.65019011497497559;
	setAttr ".ra" 0.42205321788787842;
	setAttr ".lmx" 14.068441390991211;
	setAttr ".fr" 6.4068441390991211;
createNode place2dTexture -n "place2dTexture5";
	setAttr ".c" -type "float2" 2 2 ;
	setAttr ".re" -type "float2" 5 5 ;
	setAttr ".of" -type "float2" 100 0 ;
createNode polySplitRing -n "polySplitRing34";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[1320:1321]" "e[1323]" "e[1325]" "e[1327]" "e[1329]" "e[1331]" "e[1333]" "e[1335]" "e[1337]" "e[1339]" "e[1341]" "e[1343]" "e[1345]" "e[1347]" "e[1349]" "e[1351]" "e[1353]" "e[1355]" "e[1357]";
	setAttr ".ix" -type "matrix" 0.29797576382790208 0 0 0 0 0.29797576382790208 0 0
		 0 0 0.29797576382790208 0 0 78.218200878596377 32.315319710704429 1;
	setAttr ".wt" 0.52481615543365479;
	setAttr ".dr" no;
	setAttr ".re" 1320;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing33";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[1280:1281]" "e[1283]" "e[1285]" "e[1287]" "e[1289]" "e[1291]" "e[1293]" "e[1295]" "e[1297]" "e[1299]" "e[1301]" "e[1303]" "e[1305]" "e[1307]" "e[1309]" "e[1311]" "e[1313]" "e[1315]" "e[1317]";
	setAttr ".ix" -type "matrix" 0.29797576382790208 0 0 0 0 0.29797576382790208 0 0
		 0 0 0.29797576382790208 0 0 78.218200878596377 32.315319710704429 1;
	setAttr ".wt" 0.16871637105941772;
	setAttr ".re" 1280;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing32";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[820:839]";
	setAttr ".ix" -type "matrix" 0.29797576382790208 0 0 0 0 0.29797576382790208 0 0
		 0 0 0.29797576382790208 0 0 78.218200878596377 32.315319710704429 1;
	setAttr ".wt" 0.35043731331825256;
	setAttr ".dr" no;
	setAttr ".re" 836;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak27";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk";
	setAttr ".tk[382]" -type "float3" 0 -66.197784 0 ;
	setAttr ".tk[383]" -type "float3" 0 -66.197784 0 ;
	setAttr ".tk[384]" -type "float3" 0 -66.197784 0 ;
	setAttr ".tk[385]" -type "float3" 0 -66.197784 0 ;
	setAttr ".tk[386]" -type "float3" 0 -66.197784 0 ;
	setAttr ".tk[387]" -type "float3" 0 -66.197784 0 ;
	setAttr ".tk[388]" -type "float3" 0 -66.197784 0 ;
	setAttr ".tk[389]" -type "float3" 0 -66.197784 0 ;
	setAttr ".tk[390]" -type "float3" 0 -66.197784 0 ;
	setAttr ".tk[391]" -type "float3" 0 -66.197784 0 ;
	setAttr ".tk[392]" -type "float3" 0 -66.197784 0 ;
	setAttr ".tk[393]" -type "float3" 0 -66.197784 0 ;
	setAttr ".tk[394]" -type "float3" 0 -66.197784 0 ;
	setAttr ".tk[395]" -type "float3" 0 -66.197784 0 ;
	setAttr ".tk[396]" -type "float3" 0 -66.197784 0 ;
	setAttr ".tk[397]" -type "float3" 0 -66.197784 0 ;
	setAttr ".tk[398]" -type "float3" 0 -66.197784 0 ;
	setAttr ".tk[399]" -type "float3" 0 -66.197784 0 ;
	setAttr ".tk[400]" -type "float3" 0 -66.197784 0 ;
	setAttr ".tk[401]" -type "float3" 0 -66.197784 0 ;
	setAttr ".tk[422]" -type "float3" 0 -66.197784 0 ;
createNode polyUnite -n "polyUnite1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:399]";
createNode polySphere -n "polySphere3";
	setAttr ".r" 51.123543508383477;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:259]";
createNode polyExtrudeFace -n "polyExtrudeFace36";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -36.856645144604869 48.474414913365557 144.09924061415614 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -36.856647 191.00243 144.09923 ;
	setAttr ".rs" 43161;
	setAttr ".lt" -type "double3" 7.1054273576010019e-015 2.2382703329659748e-014 12.173090334004069 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -42.776703395032115 191.00241479129525 138.17916472075404 ;
	setAttr ".cbx" -type "double3" -30.936590708874888 191.00243005008431 150.01928598998012 ;
createNode polyTweak -n "polyTweak26";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[201:221]" -type "float3"  -4.11763048 4.1331627e-006
		 1.33787489 -3.5026691 4.1331627e-006 2.54484749 -8.0568429e-007 4.1331627e-006 0
		 -2.54485154 4.1331627e-006 3.50265741 -1.33791208 -4.1331623e-006 4.11760759 -8.0568429e-007
		 -4.1331623e-006 4.32954264 1.33791077 -4.1331623e-006 4.11762714 2.54484892 4.1331627e-006
		 3.50266433 3.5026567 4.1331627e-006 2.54481554 4.11762047 -4.1331623e-006 1.33789349
		 4.32953739 4.1331627e-006 0 4.11762762 4.1331627e-006 -1.33790064 3.50266433 4.1331627e-006
		 -2.54482222 2.54483724 4.1331627e-006 -3.50267839 1.33791208 4.1331627e-006 -4.11764097
		 1.3696636e-005 -4.1331623e-006 -4.32954264 -1.33789766 -4.1331623e-006 -4.11761427
		 -2.54484344 -4.1331623e-006 -3.50265837 -3.50267291 4.1331627e-006 -2.54482889 -4.1176281
		 4.1331627e-006 -1.33788157 -4.32953739 4.1331627e-006 -1.9550323e-005;
createNode polyExtrudeFace -n "polyExtrudeFace35";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -36.856645144604869 48.474414913365557 144.09924061415614 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -36.856647 177.12282 144.09923 ;
	setAttr ".rs" 42300;
	setAttr ".lt" -type "double3" 0 3.0818914138734362e-015 13.879605023116738 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -47.106239833020396 177.12280663699838 133.84962780592861 ;
	setAttr ".cbx" -type "double3" -26.607052363537974 177.12282189578744 154.34882290480556 ;
createNode polyTweak -n "polyTweak25";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[181:201]" -type "float3"  -14.68663979 31.095445633
		 4.77196503 -12.49319553 31.095445633 9.076802254 -5.7321523e-007 31.095445633 -9.1714437e-006
		 -9.076834679 31.095445633 12.49317741 -4.77197838 31.095438004 14.6866045 -5.7321523e-007
		 31.095438004 15.44243431 4.77197742 31.095438004 14.68662739 9.076833725 31.095445633
		 12.49318504 12.493186 31.095445633 9.076761246 14.68662643 31.095438004 4.77196503
		 15.44242191 31.095445633 -9.1714437e-006 14.68662643 31.095445633 -4.77198267 12.493186
		 31.095445633 -9.076795578 9.076833725 31.095445633 -12.49323654 4.77197742 31.095445633
		 -14.68665504 1.7196458e-006 31.095438004 -15.44243431 -4.77197647 31.095438004 -14.68662739
		 -9.076833725 31.095438004 -12.49320316 -12.49318886 31.095445633 -9.076862335 -14.68662643
		 31.095445633 -4.77197647 -15.44242191 31.095445633 -9.1714437e-006;
createNode polyExtrudeFace -n "polyExtrudeFace34";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -36.856645144604869 48.474414913365557 144.09924061415614 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -36.856644 146.02737 144.09923 ;
	setAttr ".rs" 53526;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -62.548659838818736 146.02736291141244 118.40719540236415 ;
	setAttr ".cbx" -type "double3" -11.164630450391002 146.0273781702015 169.79125530837001 ;
createNode polyTweak -n "polyTweak24";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[161:181]" -type "float3"  -1.48345923 0.76916409 0.48200431
		 -1.26190531 0.76916409 0.91682446 0 0.76916409 -8.733607e-007 -0.9168281 0.76916409
		 1.26190305 -0.48200512 0.76916325 1.48345685 0 0.76916325 1.55980098 0.48200512 0.76916325
		 1.48345804 0.91682798 0.76916409 1.26190412 1.26190412 0.76916409 0.91682088 1.48345804
		 0.76916325 0.48200431 1.55980051 0.76916409 -8.733607e-007 1.48345804 0.76916409
		 -0.48200607 1.26190412 0.76916409 -0.91682374 0.91682786 0.76916409 -1.26190937 0.48200512
		 0.76916409 -1.48346138 2.1834018e-007 0.76916325 -1.55980098 -0.48200503 0.76916325
		 -1.48345804 -0.91682774 0.76916325 -1.2619065 -1.26190495 0.76916409 -0.91683042
		 -1.48345816 0.76916409 -0.48200512 -1.55980051 0.76916409 -8.733607e-007;
createNode polyExtrudeFace -n "polyExtrudeFace33";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -36.856645144604869 48.474414913365557 144.09924061415614 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -36.856644 145.25819 144.09923 ;
	setAttr ".rs" 48160;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -64.108460940503306 145.25819024295541 116.84739430067958 ;
	setAttr ".cbx" -type "double3" -9.6048293487064313 145.25820550174447 171.35105641005458 ;
createNode polyTweak -n "polyTweak23";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[141:161]" -type "float3"  0 2.75484228 0 0 2.75484228
		 0 0 2.75484228 0 0 2.75484228 0 0 2.75484228 0 0 2.75484228 0 0 2.75484228 0 0 2.75484228
		 0 0 2.75484228 0 0 2.75484228 0 0 2.75484228 0 0 2.75484228 0 0 2.75484228 0 0 2.75484228
		 0 0 2.75484228 0 0 2.75484228 0 0 2.75484228 0 0 2.75484228 0 0 2.75484228 0 0 2.75484228
		 0 0 2.75484228 0;
createNode polyExtrudeFace -n "polyExtrudeFace32";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -36.856645144604869 48.474414913365557 144.09924061415614 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -36.856647 142.50336 144.09923 ;
	setAttr ".rs" 36117;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -64.108464755200572 142.50334557742806 116.84739811537685 ;
	setAttr ".cbx" -type "double3" -9.6048293487064313 142.50336083621713 171.35106022475185 ;
createNode polyTweak -n "polyTweak22";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[121:141]" -type "float3"  7.15545988 -2.4766819e-006
		 -2.32494664 6.086800098 -2.4766819e-006 -4.42230177 7.274034e-007 -2.4766819e-006
		 4.3644241e-006 4.42231798 -2.4766819e-006 -6.086789608 2.3249526 2.4766816e-006 -7.15545511
		 7.274034e-007 2.4766816e-006 -7.52370167 -2.32495189 2.4766816e-006 -7.15546131 -4.42231703
		 -2.4766819e-006 -6.086794376 -6.086792469 -2.4766819e-006 -4.42228651 -7.15545607
		 2.4766816e-006 -2.32494664 -7.5236969 -2.4766819e-006 4.3644241e-006 -7.15545607
		 -2.4766819e-006 2.32495594 -6.086792469 -2.4766819e-006 4.42229605 -4.42231512 -2.4766819e-006
		 6.086814404 -2.32495189 -2.4766819e-006 7.15547848 -7.274034e-007 2.4766816e-006
		 7.52370167 2.32495189 2.4766816e-006 7.15546036 4.42231655 2.4766816e-006 6.086806297
		 6.0867939 -2.4766819e-006 4.42232943 7.15545607 -2.4766819e-006 2.32495022 7.5236969
		 -2.4766819e-006 4.3644241e-006;
createNode polyExtrudeFace -n "polyExtrudeFace31";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -36.856645144604869 48.474414913365557 144.09924061415614 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -36.856647 140.54001 144.09923 ;
	setAttr ".rs" 52629;
	setAttr ".lt" -type "double3" 1.9785952729198455e-015 -3.8895790207367151e-014 1.9633340963667978 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -56.584767855786509 140.53999718875619 124.37109882948818 ;
	setAttr ".cbx" -type "double3" -17.128526248120494 140.54001244754525 163.82735951064052 ;
createNode polyExtrudeFace -n "polyExtrudeFace30";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -36.856645144604869 48.474414913365557 144.09924061415614 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -36.856647 102.51366 144.09924 ;
	setAttr ".rs" 51534;
	setAttr ".lt" -type "double3" -5.541526710162864e-016 6.6270841353639753e-014 38.026344043241771 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -56.584737338208384 102.51365670413705 124.37114460585536 ;
	setAttr ".cbx" -type "double3" -17.128556765698619 102.51367196292611 163.82733662245693 ;
createNode polyTweak -n "polyTweak21";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[81:101]" -type "float3"  -0.95376366 3.7653629e-007
		 0.30989674 -0.81131971 3.7653629e-007 0.58945769 -9.2266767e-008 -3.7653629e-007
		 0 -0.58945835 3.7653629e-007 0.81131977 -0.30989647 3.7653629e-007 0.95376301 -9.2266767e-008
		 3.7653629e-007 1.0028460026 0.30989626 3.7653629e-007 0.95376301 0.58945799 3.7653629e-007
		 0.81131977 0.81131911 3.7653629e-007 0.58945769 0.95376295 3.7653629e-007 0.30989674
		 1.0028457642 3.7653629e-007 0 0.95376295 3.7653629e-007 -0.30989674 0.81131911 3.7653629e-007
		 -0.58945769 0.58945799 3.7653629e-007 -0.81132019 0.30989626 3.7653629e-007 -0.95376301
		 -9.2266767e-008 3.7653629e-007 -1.0028460026 -0.30989647 3.7653629e-007 -0.95376301
		 -0.58945793 3.7653629e-007 -0.81131864 -0.81131923 3.7653629e-007 -0.58945769 -0.95376283
		 3.7653629e-007 -0.30989602 -1.0028457642 3.7653629e-007 0;
createNode polyExtrudeFace -n "polyExtrudeFace29";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -36.856645144604869 48.474414913365557 144.09924061415614 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -36.856647 101.52409 144.09924 ;
	setAttr ".rs" 60117;
	setAttr ".lt" -type "double3" -4.072393061775603e-015 2.8641440577879461e-014 0.98958111389189241 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -57.587583102368541 101.52407845706674 123.36829884169521 ;
	setAttr ".cbx" -type "double3" -16.125711001538463 101.5240937158558 164.83018238661708 ;
createNode polyExtrudeFace -n "polyExtrudeFace28";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -36.856645144604869 48.474414913365557 144.09924061415614 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -36.856647 100.20354 144.09924 ;
	setAttr ".rs" 34150;
	setAttr ".lt" -type "double3" -1.4514449534706311e-016 1.4660951231787186e-016 1.3205410900870127 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -57.587583102368541 100.2035370752308 123.36830074904384 ;
	setAttr ".cbx" -type "double3" -16.125711001538463 100.2035485193226 164.83018047926845 ;
createNode polyTweak -n "polyTweak20";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[41:61]" -type "float3"  5.5356636 1.98656487 -1.7986474
		 4.70891476 1.98656487 -3.42122531 7.4456693e-007 1.9865675 0 3.42122769 1.98656487
		 -4.70891476 1.79864597 1.98656487 -5.53565788 7.4456693e-007 1.98656487 -5.82053947
		 -1.79864466 1.98656487 -5.53565788 -3.42122459 1.98656487 -4.70891476 -4.7089119
		 1.98656487 -3.42122531 -5.53565788 1.98656487 -1.7986474 -5.82053852 1.98656487 0
		 -5.53565788 1.98656487 1.7986474 -4.7089119 1.98656487 3.42122531 -3.42122459 1.98656487
		 4.70891476 -1.79864466 1.98656487 5.53565788 7.4456693e-007 1.98656487 5.82053947
		 1.79864597 1.98656487 5.53565788 3.42122459 1.98656487 4.70891094 4.70891237 1.98656487
		 3.42122531 5.53565788 1.98656487 1.79864144 5.82053852 1.98656487 0;
createNode polyExtrudeFace -n "polyExtrudeFace27";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -36.856645144604869 48.474414913365557 144.09924061415614 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -36.856647 96.94883 144.09924 ;
	setAttr ".rs" 59785;
	setAttr ".lt" -type "double3" 0 -1.521545866053518e-014 1.2681471204474783 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -51.767046488904185 96.948829738805017 129.18883640883388 ;
	setAttr ".cbx" -type "double3" -21.946247615002818 96.948829738805017 159.00964005110683 ;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".r" 14.910397696891014;
	setAttr ".h" 96.948829826731114;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode polyExtrudeFace -n "polyExtrudeFace26";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 38.794283768205801 20.498421363790943 205.12953224060212 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 38.794285 54.718349 205.12953 ;
	setAttr ".rs" 39986;
	setAttr ".lt" -type "double3" -7.1054273576010019e-015 4.1084024098681496e-015 18.502599562170246 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 30.049972435503165 54.718350105246017 198.54356422302399 ;
	setAttr ".cbx" -type "double3" 47.538597008257071 54.718350105246017 211.71550025818024 ;
createNode polyTweak -n "polyTweak19";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[24:27]" -type "float3"  1.19882846 -0.65533894 -0.9029237
		 -1.19882846 -0.65533894 -0.9029237 -1.19882846 -0.65533894 0.9029237 1.19882846 -0.65533894
		 0.9029237;
createNode polyExtrudeFace -n "polyExtrudeFace25";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 38.794283768205801 20.498421363790943 205.12953224060212 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 38.794285 53.550812 205.12953 ;
	setAttr ".rs" 64216;
	setAttr ".lt" -type "double3" 0 4.047589543379746e-016 1.822872275931374 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 28.851143738298575 53.550812416037033 197.64064254638825 ;
	setAttr ".cbx" -type "double3" 48.737423798113028 53.550812416037033 212.61842193481598 ;
createNode polyTweak -n "polyTweak18";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[20:23]" -type "float3"  -1.3205241 0 0.99458098 1.3205241
		 0 0.99458098 1.3205241 0 -0.99458098 -1.3205241 0 -0.99458098;
createNode polyExtrudeFace -n "polyExtrudeFace24";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 38.794283768205801 20.498421363790943 205.12953224060212 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 38.794285 52.633842 205.12953 ;
	setAttr ".rs" 64064;
	setAttr ".lt" -type "double3" -7.1054273576010019e-015 2.8625317926393999e-014 0.91697114666997948 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 30.171667953996817 52.633843116720627 198.63522376892243 ;
	setAttr ".cbx" -type "double3" 47.416899582414786 52.633843116720627 211.6238407122818 ;
createNode polyExtrudeFace -n "polyExtrudeFace23";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 38.794283768205801 20.498421363790943 205.12953224060212 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 38.794285 42.935165 205.12953 ;
	setAttr ".rs" 35432;
	setAttr ".lt" -type "double3" 0 3.0575247745985202e-014 9.6986743555795627 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 30.171667953996817 42.935164146383713 198.63523139831696 ;
	setAttr ".cbx" -type "double3" 47.416899582414786 42.935164146383713 211.62383308288727 ;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  0.9547956 0.70915824 -0.71912396
		 -0.9547956 0.70915824 -0.71912396 -0.9547956 0.70915824 0.71912396 0.9547956 0.70915824
		 0.71912396;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 38.794283768205801 20.498421363790943 205.12953224060212 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 38.794285 42.226006 205.12953 ;
	setAttr ".rs" 51251;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 29.21687307026879 42.226004295309494 197.91610851165925 ;
	setAttr ".cbx" -type "double3" 48.371694466142813 42.226004295309494 212.34295596954499 ;
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  -2.32284093 1.22916281 1.74949527
		 2.32284093 1.22916281 1.74949527 2.32284093 1.22916281 -1.74949527 -2.32284093 1.22916281
		 -1.74949527;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 38.794283768205801 20.498421363790943 205.12953224060212 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 38.794285 40.996841 205.12953 ;
	setAttr ".rs" 55857;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 31.539712807207266 40.99684207912297 199.66559972641144 ;
	setAttr ".cbx" -type "double3" 46.048854729204336 40.99684207912297 210.59346475479279 ;
createNode polyCube -n "polyCube6";
	setAttr ".w" 14.509142128130719;
	setAttr ".h" 40.996842727581885;
	setAttr ".d" 10.927865024534128;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	setAttr ".ics" -type "componentList" 2 "f[4]" "f[29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -514.63855068875728 490.9208838717114 3415.8621647022514 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -284.20416 843.97125 3525.5823 ;
	setAttr ".rs" 36201;
	setAttr ".lt" -type "double3" -9.1013750696479489e-014 -5.0196985649109024e-014 
		-409.88949372225625 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -284.20416348172603 785.42698738733634 3329.2920200489311 ;
	setAttr ".cbx" -type "double3" -284.20416348172603 902.51551888147696 3721.8727237842827 ;
createNode polySplitRing -n "polySplitRing31";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[10:11]" "e[18]" "e[22]" "e[28:29]" "e[31]" "e[33]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -514.63855068875728 490.9208838717114 3415.8621647022514 1;
	setAttr ".wt" 0.47563514113426208;
	setAttr ".re" 28;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing30";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[6:7]" "e[10:11]" "e[14]" "e[18]" "e[22]" "e[26]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -514.63855068875728 490.9208838717114 3415.8621647022514 1;
	setAttr ".wt" 0.37248608469963074;
	setAttr ".re" 26;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  0 785.42700195 86.41691589
		 0 785.42700195 -86.41692352 0 -79.32626343 86.41691589 0 -79.32626343 -86.41692352;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -514.63855068875728 490.9208838717114 3415.8621647022514 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -284.20416 490.9209 3525.5823 ;
	setAttr ".rs" 62175;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -284.20416348172603 -1.4565788603704277e-005 3242.8750431202202 ;
	setAttr ".cbx" -type "double3" -284.20416348172603 981.84178230921134 3808.2895328663139 ;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[8:9]" -type "float3"  0 397.73104858 0 0 397.73104858
		 0;
createNode polySplitRing -n "polySplitRing29";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -514.63855068875728 490.9208838717114 3415.8621647022514 1;
	setAttr ".wt" 0.50939542055130005;
	setAttr ".dr" no;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[0:3]" -type "float3"  0 0 219.44023132 0 0 219.44023132
		 0 0 219.44023132 0 0 219.44023132;
createNode polyCube -n "polyCube5";
	setAttr ".w" 460.86878806303503;
	setAttr ".h" 981.84176774342279;
	setAttr ".d" 345.97425159656268;
	setAttr ".cuv" 4;
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 5 "f[618:620]" "f[633:635]" "f[648:650]" "f[663:665]" "f[1488:1495]";
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 6 "f[680:682]" "f[695:697]" "f[710:712]" "f[725:727]" "f[740:742]" "f[755:757]";
createNode polyExtrudeFace -n "polyExtrudeFace11";
	setAttr ".ics" -type "componentList" 25 "f[226]" "f[228]" "f[230]" "f[232]" "f[234]" "f[236]" "f[254]" "f[268]" "f[284]" "f[298]" "f[314]" "f[328]" "f[344]" "f[358]" "f[374]" "f[388]" "f[404]" "f[418]" "f[436]" "f[438]" "f[440]" "f[442]" "f[444]" "f[446]" "f[470]";
	setAttr ".ix" -type "matrix" 528.69433847466314 0 0 0 0 528.69433847466314 0 0 0 0 1432.6690396430351 0
		 -325.16786909895626 160.71954352520595 -0.053842252231383725 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -325.16791 389.82043 -0.053756859 ;
	setAttr ".rs" 44325;
	setAttr ".lt" -type "double3" 0 9.282809093274325e-015 41.806055573421702 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1118.2093137856746 354.57417001357243 -716.38836207374891 ;
	setAttr ".cbx" -type "double3" 467.87351256248547 425.06671276253752 716.28084835674463 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 209 ".tk";
	setAttr ".tk[13]" -type "float3" 0.028603766 7.4505806e-009 0.070267439 ;
	setAttr ".tk[27]" -type "float3" 0.028603766 -7.4505806e-009 0.070267439 ;
	setAttr ".tk[41]" -type "float3" 0.028603766 -3.7252903e-009 0.070267439 ;
	setAttr ".tk[55]" -type "float3" 0.028603766 -1.4901161e-008 0.070267439 ;
	setAttr ".tk[69]" -type "float3" 0.028603766 -1.1175871e-008 0.070267439 ;
	setAttr ".tk[83]" -type "float3" 0.028603766 3.7252903e-009 0.070267439 ;
	setAttr ".tk[97]" -type "float3" 0.028603766 7.4505806e-009 0.070267439 ;
	setAttr ".tk[111]" -type "float3" 0.028603766 3.7252903e-009 0.070267439 ;
	setAttr ".tk[125]" -type "float3" 0.028603766 1.8626451e-009 0.070267439 ;
	setAttr ".tk[139]" -type "float3" 0.028603766 1.6298145e-009 0.070267439 ;
	setAttr ".tk[153]" -type "float3" 0.028603766 -2.3283064e-010 0.070267439 ;
	setAttr ".tk[167]" -type "float3" 0.028603766 -1.8626451e-009 0.070267439 ;
	setAttr ".tk[181]" -type "float3" 0.028603766 9.3132257e-010 0.070267439 ;
	setAttr ".tk[195]" -type "float3" 0.028603766 6.519258e-009 0.070267439 ;
	setAttr ".tk[209]" -type "float3" 0.028603766 -1.8626451e-009 0.070267439 ;
	setAttr ".tk[223]" -type "float3" 0.028603766 9.3132257e-009 0.070267439 ;
	setAttr ".tk[457]" -type "float3" 0.028603766 9.3132257e-009 -0.070267439 ;
	setAttr ".tk[471]" -type "float3" 0.028603766 -1.8626451e-009 -0.070267439 ;
	setAttr ".tk[485]" -type "float3" 0.028603766 -4.6566129e-009 -0.070267439 ;
	setAttr ".tk[499]" -type "float3" 0.028603766 9.3132257e-010 -0.070267439 ;
	setAttr ".tk[513]" -type "float3" 0.028603766 -1.8626451e-009 -0.070267439 ;
	setAttr ".tk[527]" -type "float3" 0.028603766 -2.3283064e-010 -0.070267439 ;
	setAttr ".tk[541]" -type "float3" 0.028603766 1.6298145e-009 -0.070267439 ;
	setAttr ".tk[555]" -type "float3" 0.028603766 -2.7939677e-009 -0.070267439 ;
	setAttr ".tk[569]" -type "float3" 0.028603766 3.7252903e-009 -0.070267439 ;
	setAttr ".tk[583]" -type "float3" 0.028603766 0 -0.070267439 ;
	setAttr ".tk[597]" -type "float3" 0.028603766 3.7252903e-009 -0.070267439 ;
	setAttr ".tk[611]" -type "float3" 0.028603766 -1.1175871e-008 -0.070267439 ;
	setAttr ".tk[625]" -type "float3" 0.028603766 -7.4505806e-009 -0.070267439 ;
	setAttr ".tk[639]" -type "float3" 0.028603766 -3.7252903e-009 -0.070267439 ;
	setAttr ".tk[653]" -type "float3" 0.028603766 -7.4505806e-009 -0.070267439 ;
	setAttr ".tk[667]" -type "float3" 0.028603766 7.4505806e-009 -0.070267439 ;
	setAttr ".tk[706]" -type "float3" 9.3132257e-010 0 0 ;
	setAttr ".tk[707]" -type "float3" -3.7252903e-008 0 -1.1175871e-008 ;
	setAttr ".tk[719]" -type "float3" -2.2351742e-008 0 -1.1175871e-008 ;
	setAttr ".tk[1083]" -type "float3" 0.028603766 -7.4505806e-009 0.070267439 ;
	setAttr ".tk[1104]" -type "float3" 0.028603766 -7.4505806e-009 -0.070267439 ;
	setAttr ".tk[1418]" -type "float3" -5.9604645e-008 4.6566129e-010 -2.0489097e-008 ;
	setAttr ".tk[1420]" -type "float3" -5.9604645e-008 -2.3283064e-010 -2.0489097e-008 ;
	setAttr ".tk[1644]" -type "float3" 0.1161468 7.4505806e-009 0.060995884 ;
	setAttr ".tk[1645]" -type "float3" 0.11394855 7.4505806e-009 0.064543948 ;
	setAttr ".tk[1646]" -type "float3" 0.10768849 7.4505806e-009 0.067551851 ;
	setAttr ".tk[1647]" -type "float3" 0.098320454 7.4505806e-009 0.06956169 ;
	setAttr ".tk[1648]" -type "float3" 0.087268941 7.4505806e-009 0.070267431 ;
	setAttr ".tk[1649]" -type "float3" 0.1161468 -7.4505806e-009 0.060995884 ;
	setAttr ".tk[1650]" -type "float3" 0.11394855 -7.4505806e-009 0.064543948 ;
	setAttr ".tk[1651]" -type "float3" 0.10768849 -7.4505806e-009 0.067551851 ;
	setAttr ".tk[1652]" -type "float3" 0.098320454 -7.4505806e-009 0.06956169 ;
	setAttr ".tk[1653]" -type "float3" 0.087268941 -7.4505806e-009 0.070267431 ;
	setAttr ".tk[1659]" -type "float3" 0.1161468 -3.7252903e-009 0.060995884 ;
	setAttr ".tk[1660]" -type "float3" 0.11394855 -3.7252903e-009 0.064543948 ;
	setAttr ".tk[1661]" -type "float3" 0.10768849 -3.7252903e-009 0.067551851 ;
	setAttr ".tk[1662]" -type "float3" 0.098320454 -3.7252903e-009 0.06956169 ;
	setAttr ".tk[1663]" -type "float3" 0.087268941 -3.7252903e-009 0.070267431 ;
	setAttr ".tk[1669]" -type "float3" 0.1161468 -1.4901161e-008 0.060995884 ;
	setAttr ".tk[1670]" -type "float3" 0.11394855 -1.4901161e-008 0.064543948 ;
	setAttr ".tk[1671]" -type "float3" 0.10768849 -1.4901161e-008 0.067551851 ;
	setAttr ".tk[1672]" -type "float3" 0.098320454 -1.4901161e-008 0.06956169 ;
	setAttr ".tk[1673]" -type "float3" 0.087268941 -1.4901161e-008 0.070267431 ;
	setAttr ".tk[1679]" -type "float3" 0.1161468 -1.1175871e-008 0.060995884 ;
	setAttr ".tk[1680]" -type "float3" 0.11394855 -1.1175871e-008 0.064543948 ;
	setAttr ".tk[1681]" -type "float3" 0.10768849 -1.1175871e-008 0.067551851 ;
	setAttr ".tk[1682]" -type "float3" 0.098320454 -1.1175871e-008 0.06956169 ;
	setAttr ".tk[1683]" -type "float3" 0.087268941 -1.1175871e-008 0.070267431 ;
	setAttr ".tk[1689]" -type "float3" 0.1161468 3.7252903e-009 0.060995884 ;
	setAttr ".tk[1690]" -type "float3" 0.11394855 3.7252903e-009 0.064543948 ;
	setAttr ".tk[1691]" -type "float3" 0.10768849 3.7252903e-009 0.067551851 ;
	setAttr ".tk[1692]" -type "float3" 0.098320454 3.7252903e-009 0.06956169 ;
	setAttr ".tk[1693]" -type "float3" 0.087268941 3.7252903e-009 0.070267431 ;
	setAttr ".tk[1699]" -type "float3" 0.1161468 7.4505806e-009 0.060995884 ;
	setAttr ".tk[1700]" -type "float3" 0.11394855 7.4505806e-009 0.064543948 ;
	setAttr ".tk[1701]" -type "float3" 0.10768849 7.4505806e-009 0.067551851 ;
	setAttr ".tk[1702]" -type "float3" 0.098320454 7.4505806e-009 0.06956169 ;
	setAttr ".tk[1703]" -type "float3" 0.087268941 7.4505806e-009 0.070267431 ;
	setAttr ".tk[1709]" -type "float3" 0.1161468 3.7252903e-009 0.060995884 ;
	setAttr ".tk[1710]" -type "float3" 0.11394855 3.7252903e-009 0.064543948 ;
	setAttr ".tk[1711]" -type "float3" 0.10768849 3.7252903e-009 0.067551851 ;
	setAttr ".tk[1712]" -type "float3" 0.098320454 3.7252903e-009 0.06956169 ;
	setAttr ".tk[1713]" -type "float3" 0.087268941 3.7252903e-009 0.070267431 ;
	setAttr ".tk[1719]" -type "float3" 0.1161468 1.8626451e-009 0.060995884 ;
	setAttr ".tk[1720]" -type "float3" 0.11394855 1.8626451e-009 0.064543948 ;
	setAttr ".tk[1721]" -type "float3" 0.10768849 1.8626451e-009 0.067551851 ;
	setAttr ".tk[1722]" -type "float3" 0.098320454 1.8626451e-009 0.06956169 ;
	setAttr ".tk[1723]" -type "float3" 0.087268941 1.8626451e-009 0.070267431 ;
	setAttr ".tk[1729]" -type "float3" 0.1161468 1.6298145e-009 0.060995884 ;
	setAttr ".tk[1730]" -type "float3" 0.11394855 1.6298145e-009 0.064543948 ;
	setAttr ".tk[1731]" -type "float3" 0.10768849 1.6298145e-009 0.067551851 ;
	setAttr ".tk[1732]" -type "float3" 0.098320454 1.6298145e-009 0.06956169 ;
	setAttr ".tk[1733]" -type "float3" 0.087268941 1.6298145e-009 0.070267431 ;
	setAttr ".tk[1739]" -type "float3" 0.1161468 -2.3283064e-010 0.060995884 ;
	setAttr ".tk[1740]" -type "float3" 0.11394855 -2.3283064e-010 0.064543948 ;
	setAttr ".tk[1741]" -type "float3" 0.10768849 -2.3283064e-010 0.067551851 ;
	setAttr ".tk[1742]" -type "float3" 0.098320454 -2.3283064e-010 0.06956169 ;
	setAttr ".tk[1743]" -type "float3" 0.087268941 -2.3283064e-010 0.070267431 ;
	setAttr ".tk[1749]" -type "float3" 0.1161468 -1.8626451e-009 0.060995884 ;
	setAttr ".tk[1750]" -type "float3" 0.11394855 -1.8626451e-009 0.064543948 ;
	setAttr ".tk[1751]" -type "float3" 0.10768849 -1.8626451e-009 0.067551851 ;
	setAttr ".tk[1752]" -type "float3" 0.098320454 -1.8626451e-009 0.06956169 ;
	setAttr ".tk[1753]" -type "float3" 0.087268941 -1.8626451e-009 0.070267431 ;
	setAttr ".tk[1759]" -type "float3" 0.1161468 9.3132257e-010 0.060995884 ;
	setAttr ".tk[1760]" -type "float3" 0.11394855 9.3132257e-010 0.064543948 ;
	setAttr ".tk[1761]" -type "float3" 0.10768849 9.3132257e-010 0.067551851 ;
	setAttr ".tk[1762]" -type "float3" 0.098320454 9.3132257e-010 0.06956169 ;
	setAttr ".tk[1763]" -type "float3" 0.087268941 9.3132257e-010 0.070267431 ;
	setAttr ".tk[1769]" -type "float3" 0.1161468 6.519258e-009 0.060995884 ;
	setAttr ".tk[1770]" -type "float3" 0.11394855 6.519258e-009 0.064543948 ;
	setAttr ".tk[1771]" -type "float3" 0.10768849 6.519258e-009 0.067551851 ;
	setAttr ".tk[1772]" -type "float3" 0.098320454 6.519258e-009 0.06956169 ;
	setAttr ".tk[1773]" -type "float3" 0.087268941 6.519258e-009 0.070267431 ;
	setAttr ".tk[1779]" -type "float3" 0.1161468 -1.8626451e-009 0.060995884 ;
	setAttr ".tk[1780]" -type "float3" 0.11394855 -1.8626451e-009 0.064543948 ;
	setAttr ".tk[1781]" -type "float3" 0.10768849 -1.8626451e-009 0.067551851 ;
	setAttr ".tk[1782]" -type "float3" 0.098320454 -1.8626451e-009 0.06956169 ;
	setAttr ".tk[1783]" -type "float3" 0.087268941 -1.8626451e-009 0.070267431 ;
	setAttr ".tk[1789]" -type "float3" 0.11394855 9.3132257e-009 0.064543948 ;
	setAttr ".tk[1790]" -type "float3" 0.10768849 9.3132257e-009 0.067551851 ;
	setAttr ".tk[1791]" -type "float3" 0.098320454 9.3132257e-009 0.06956169 ;
	setAttr ".tk[1792]" -type "float3" 0.087268941 9.3132257e-009 0.070267431 ;
	setAttr ".tk[1793]" -type "float3" 0.1161468 9.3132257e-009 0.060995884 ;
	setAttr ".tk[1804]" -type "float3" 0.098320454 9.3132257e-009 -0.069561675 ;
	setAttr ".tk[1805]" -type "float3" 0.10768849 9.3132257e-009 -0.067551851 ;
	setAttr ".tk[1806]" -type "float3" 0.11394855 9.3132257e-009 -0.064543948 ;
	setAttr ".tk[1807]" -type "float3" 0.1161468 9.3132257e-009 -0.060995884 ;
	setAttr ".tk[1808]" -type "float3" 0.087268941 9.3132257e-009 -0.070267431 ;
	setAttr ".tk[1809]" -type "float3" 0.1161468 -1.8626451e-009 -0.060995884 ;
	setAttr ".tk[1810]" -type "float3" 0.11394855 -1.8626451e-009 -0.064543948 ;
	setAttr ".tk[1811]" -type "float3" 0.10768849 -1.8626451e-009 -0.067551851 ;
	setAttr ".tk[1812]" -type "float3" 0.098320454 -1.8626451e-009 -0.069561675 ;
	setAttr ".tk[1813]" -type "float3" 0.087268941 -1.8626451e-009 -0.070267431 ;
	setAttr ".tk[1819]" -type "float3" 0.1161468 6.519258e-009 -0.060995884 ;
	setAttr ".tk[1820]" -type "float3" 0.11394855 2.7939677e-009 -0.064543948 ;
	setAttr ".tk[1821]" -type "float3" 0.10768849 2.7939677e-009 -0.067551851 ;
	setAttr ".tk[1822]" -type "float3" 0.098320454 -4.6566129e-009 -0.069561675 ;
	setAttr ".tk[1823]" -type "float3" 0.087268941 -4.6566129e-009 -0.070267431 ;
	setAttr ".tk[1829]" -type "float3" 0.1161468 9.3132257e-010 -0.060995884 ;
	setAttr ".tk[1830]" -type "float3" 0.11394855 9.3132257e-010 -0.064543948 ;
	setAttr ".tk[1831]" -type "float3" 0.10768849 9.3132257e-010 -0.067551851 ;
	setAttr ".tk[1832]" -type "float3" 0.098320454 9.3132257e-010 -0.069561675 ;
	setAttr ".tk[1833]" -type "float3" 0.087268941 9.3132257e-010 -0.070267431 ;
	setAttr ".tk[1839]" -type "float3" 0.1161468 -1.8626451e-009 -0.060995884 ;
	setAttr ".tk[1840]" -type "float3" 0.11394855 -1.8626451e-009 -0.064543948 ;
	setAttr ".tk[1841]" -type "float3" 0.10768849 -1.8626451e-009 -0.067551851 ;
	setAttr ".tk[1842]" -type "float3" 0.098320454 -1.8626451e-009 -0.069561675 ;
	setAttr ".tk[1843]" -type "float3" 0.087268941 -1.8626451e-009 -0.070267431 ;
	setAttr ".tk[1849]" -type "float3" 0.1161468 -2.3283064e-010 -0.060995884 ;
	setAttr ".tk[1850]" -type "float3" 0.11394855 -2.3283064e-010 -0.064543948 ;
	setAttr ".tk[1851]" -type "float3" 0.10768849 -2.3283064e-010 -0.067551851 ;
	setAttr ".tk[1852]" -type "float3" 0.098320454 -2.3283064e-010 -0.069561675 ;
	setAttr ".tk[1853]" -type "float3" 0.087268941 -2.3283064e-010 -0.070267431 ;
	setAttr ".tk[1859]" -type "float3" 0.1161468 1.6298145e-009 -0.060995884 ;
	setAttr ".tk[1860]" -type "float3" 0.11394855 1.6298145e-009 -0.064543948 ;
	setAttr ".tk[1861]" -type "float3" 0.10768849 1.6298145e-009 -0.067551851 ;
	setAttr ".tk[1862]" -type "float3" 0.098320454 1.6298145e-009 -0.069561675 ;
	setAttr ".tk[1863]" -type "float3" 0.087268941 1.6298145e-009 -0.070267431 ;
	setAttr ".tk[1869]" -type "float3" 0.1161468 1.8626451e-009 -0.060995884 ;
	setAttr ".tk[1870]" -type "float3" 0.11394855 2.7939677e-009 -0.064543948 ;
	setAttr ".tk[1871]" -type "float3" 0.10768849 9.3132257e-010 -0.067551851 ;
	setAttr ".tk[1872]" -type "float3" 0.098320454 -3.7252903e-009 -0.069561675 ;
	setAttr ".tk[1873]" -type "float3" 0.087268941 -2.7939677e-009 -0.070267431 ;
	setAttr ".tk[1879]" -type "float3" 0.1161468 3.7252903e-009 -0.060995884 ;
	setAttr ".tk[1880]" -type "float3" 0.11394855 3.7252903e-009 -0.064543948 ;
	setAttr ".tk[1881]" -type "float3" 0.10768849 3.7252903e-009 -0.067551851 ;
	setAttr ".tk[1882]" -type "float3" 0.098320454 3.7252903e-009 -0.069561675 ;
	setAttr ".tk[1883]" -type "float3" 0.087268941 3.7252903e-009 -0.070267431 ;
	setAttr ".tk[1889]" -type "float3" 0.1161468 7.4505806e-009 -0.060995884 ;
	setAttr ".tk[1890]" -type "float3" 0.11394855 -3.7252903e-009 -0.064543948 ;
	setAttr ".tk[1891]" -type "float3" 0.10768849 -1.8626451e-009 -0.067551851 ;
	setAttr ".tk[1892]" -type "float3" 0.098320454 0 -0.069561675 ;
	setAttr ".tk[1893]" -type "float3" 0.087268941 0 -0.070267431 ;
	setAttr ".tk[1899]" -type "float3" 0.1161468 3.7252903e-009 -0.060995884 ;
	setAttr ".tk[1900]" -type "float3" 0.11394855 5.5879354e-009 -0.064543948 ;
	setAttr ".tk[1901]" -type "float3" 0.10768849 5.5879354e-009 -0.067551851 ;
	setAttr ".tk[1902]" -type "float3" 0.098320454 3.7252903e-009 -0.069561675 ;
	setAttr ".tk[1903]" -type "float3" 0.087268941 3.7252903e-009 -0.070267431 ;
	setAttr ".tk[1909]" -type "float3" 0.1161468 -1.1175871e-008 -0.060995884 ;
	setAttr ".tk[1910]" -type "float3" 0.11394855 -1.1175871e-008 -0.064543948 ;
	setAttr ".tk[1911]" -type "float3" 0.10768849 -1.1175871e-008 -0.067551851 ;
	setAttr ".tk[1912]" -type "float3" 0.098320454 -1.1175871e-008 -0.069561675 ;
	setAttr ".tk[1913]" -type "float3" 0.087268941 -1.1175871e-008 -0.070267431 ;
	setAttr ".tk[1919]" -type "float3" 0.1161468 -1.4901161e-008 -0.060995884 ;
	setAttr ".tk[1920]" -type "float3" 0.11394855 -7.4505806e-009 -0.064543948 ;
	setAttr ".tk[1921]" -type "float3" 0.10768849 -7.4505806e-009 -0.067551851 ;
	setAttr ".tk[1922]" -type "float3" 0.098320454 -7.4505806e-009 -0.069561675 ;
	setAttr ".tk[1923]" -type "float3" 0.087268941 -7.4505806e-009 -0.070267431 ;
	setAttr ".tk[1929]" -type "float3" 0.1161468 -3.7252903e-009 -0.060995884 ;
	setAttr ".tk[1930]" -type "float3" 0.11394855 -3.7252903e-009 -0.064543948 ;
	setAttr ".tk[1931]" -type "float3" 0.10768849 3.7252903e-009 -0.067551851 ;
	setAttr ".tk[1932]" -type "float3" 0.098320454 -3.7252903e-009 -0.069561675 ;
	setAttr ".tk[1933]" -type "float3" 0.087268941 -3.7252903e-009 -0.070267431 ;
	setAttr ".tk[1939]" -type "float3" 0.1161468 -7.4505806e-009 -0.060995884 ;
	setAttr ".tk[1940]" -type "float3" 0.11394855 -7.4505806e-009 -0.064543948 ;
	setAttr ".tk[1941]" -type "float3" 0.10768849 -7.4505806e-009 -0.067551851 ;
	setAttr ".tk[1942]" -type "float3" 0.098320454 -7.4505806e-009 -0.069561675 ;
	setAttr ".tk[1943]" -type "float3" 0.087268941 -7.4505806e-009 -0.070267431 ;
	setAttr ".tk[1949]" -type "float3" 0.087268941 7.4505806e-009 -0.070267431 ;
	setAttr ".tk[1950]" -type "float3" 0.098320454 7.4505806e-009 -0.069561675 ;
	setAttr ".tk[1951]" -type "float3" 0.10768849 7.4505806e-009 -0.067551851 ;
	setAttr ".tk[1952]" -type "float3" 0.11394855 7.4505806e-009 -0.064543948 ;
	setAttr ".tk[1953]" -type "float3" 0.1161468 7.4505806e-009 -0.060995884 ;
	setAttr ".tk[1959]" -type "float3" 0.1161468 -7.4505806e-009 0.060995884 ;
	setAttr ".tk[1960]" -type "float3" 0.087268941 -7.4505806e-009 0.070267431 ;
	setAttr ".tk[1961]" -type "float3" 0.098320454 -7.4505806e-009 0.06956169 ;
	setAttr ".tk[1962]" -type "float3" 0.10768849 -7.4505806e-009 0.067551851 ;
	setAttr ".tk[1963]" -type "float3" 0.11394855 -7.4505806e-009 0.064543948 ;
	setAttr ".tk[1969]" -type "float3" 0.087268941 -7.4505806e-009 -0.070267431 ;
	setAttr ".tk[1970]" -type "float3" 0.1161468 -7.4505806e-009 -0.060995884 ;
	setAttr ".tk[1971]" -type "float3" 0.11394855 -7.4505806e-009 -0.064543948 ;
	setAttr ".tk[1972]" -type "float3" 0.10768849 -7.4505806e-009 -0.067551851 ;
	setAttr ".tk[1973]" -type "float3" 0.098320454 -7.4505806e-009 -0.069561675 ;
createNode polyBevel -n "polyBevel1";
	setAttr ".ics" -type "componentList" 36 "e[607]" "e[622:623]" "e[638:639]" "e[654:655]" "e[670:671]" "e[686:687]" "e[702:703]" "e[718:719]" "e[734:735]" "e[750:751]" "e[766:767]" "e[782:783]" "e[798:799]" "e[814:815]" "e[830:831]" "e[846]" "e[1066]" "e[1081:1082]" "e[1097:1098]" "e[1113:1114]" "e[1129:1130]" "e[1145:1146]" "e[1161:1162]" "e[1177:1178]" "e[1193:1194]" "e[1209:1210]" "e[1225:1226]" "e[1241:1242]" "e[1257:1258]" "e[1273:1274]" "e[1289:1290]" "e[1305]" "e[2131]" "e[2158]" "e[2185]" "e[2208]";
	setAttr ".ix" -type "matrix" 528.69433847466314 0 0 0 0 528.69433847466314 0 0 0 0 1432.6690396430351 0
		 -325.16786909895626 160.71954352520595 -0.053842252231383725 1;
	setAttr ".oaf" yes;
	setAttr ".o" 0.9897;
	setAttr ".sg" 4;
	setAttr ".af" no;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 32 "f[243]" "f[246]" "f[250]" "f[258]" "f[261:263]" "f[265]" "f[271]" "f[280:282]" "f[286]" "f[288]" "f[301]" "f[303]" "f[307:309]" "f[311]" "f[326]" "f[331:332]" "f[336]" "f[351]" "f[355:357]" "f[364]" "f[366]" "f[378:379]" "f[381]" "f[387:388]" "f[392:393]" "f[398]" "f[401]" "f[407]" "f[412:413]" "f[416]" "f[418]" "f[431]";
	setAttr ".ix" -type "matrix" 320.205903895723 0 0 0 0 320.205903895723 0 0 0 0 867.7019053123455 0
		 -325.16786909895626 160.71954352520595 -0.053842252231383725 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -325.16788 320.82251 -0.053842254 ;
	setAttr ".rs" 53973;
	setAttr ".lt" -type "double3" 0 -4.8484986763965235e-014 37.643031676742737 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -741.43556706630716 320.82249547306742 -376.05800466885205 ;
	setAttr ".cbx" -type "double3" 91.099790696876312 320.82249547306742 375.95032016438927 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 34 ".tk";
	setAttr ".tk[669]" -type "float3" 0 -3.7252903e-008 0 ;
	setAttr ".tk[670]" -type "float3" 0 -3.7252903e-008 0 ;
	setAttr ".tk[686]" -type "float3" 0 1.7695129e-008 0 ;
	setAttr ".tk[1546]" -type "float3" 0 -3.7252903e-008 0 ;
	setAttr ".tk[1547]" -type "float3" 0 -3.7252903e-008 0 ;
	setAttr ".tk[1549]" -type "float3" 0 -2.7008355e-008 0 ;
	setAttr ".tk[1554]" -type "float3" 0 -3.7252903e-008 -0.24440041 ;
	setAttr ".tk[1555]" -type "float3" 0 -3.7252903e-008 -0.24440041 ;
	setAttr ".tk[1556]" -type "float3" 0 1.7695129e-008 -0.24440041 ;
	setAttr ".tk[1557]" -type "float3" 0 0 -0.24440041 ;
	setAttr ".tk[1558]" -type "float3" 0 0 -0.24440041 ;
	setAttr ".tk[1559]" -type "float3" 0 0 -0.24440041 ;
	setAttr ".tk[1560]" -type "float3" 0 0 -0.24440041 ;
	setAttr ".tk[1561]" -type "float3" 0 0 -0.24440041 ;
	setAttr ".tk[1562]" -type "float3" 0 -3.7252903e-008 -0.24440041 ;
	setAttr ".tk[1563]" -type "float3" 0 -3.7252903e-008 -0.24440041 ;
	setAttr ".tk[1564]" -type "float3" 0 0 -0.24440041 ;
	setAttr ".tk[1565]" -type "float3" 0 -2.7008355e-008 -0.24440041 ;
	setAttr ".tk[1566]" -type "float3" 0 0 -0.24440041 ;
	setAttr ".tk[1567]" -type "float3" 0 0 -0.24440041 ;
	setAttr ".tk[1568]" -type "float3" 0 0 -0.24440041 ;
	setAttr ".tk[1569]" -type "float3" 0 0 -0.24440041 ;
	setAttr ".tk[1570]" -type "float3" 0.96730238 -3.7252903e-008 -0.24440041 ;
	setAttr ".tk[1571]" -type "float3" 0 -3.7252903e-008 -0.24440041 ;
	setAttr ".tk[1572]" -type "float3" 0 0 -0.24440041 ;
	setAttr ".tk[1573]" -type "float3" 0.96730238 0 -0.24440041 ;
	setAttr ".tk[1574]" -type "float3" 0 0 -0.24440041 ;
	setAttr ".tk[1575]" -type "float3" 0.96730238 0 -0.24440041 ;
	setAttr ".tk[1576]" -type "float3" 0 0 -0.24440041 ;
	setAttr ".tk[1577]" -type "float3" 0.96730238 0 -0.24440041 ;
	setAttr ".tk[1578]" -type "float3" -0.96730238 -3.7252903e-008 -0.24440041 ;
	setAttr ".tk[1579]" -type "float3" -0.96730238 0 -0.24440041 ;
	setAttr ".tk[1580]" -type "float3" -0.96730238 0 -0.24440041 ;
	setAttr ".tk[1581]" -type "float3" -0.96730238 0 -0.24440041 ;
createNode polyMergeVert -n "polyMergeVert4";
	setAttr ".ics" -type "componentList" 2 "vtx[1576]" "vtx[1582]";
	setAttr ".ix" -type "matrix" 320.205903895723 0 0 0 0 320.205903895723 0 0 0 0 867.7019053123455 0
		 -325.16786909895626 160.71954352520595 -0.053842252231383725 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 2 "vtx[1574]" "vtx[1581]";
	setAttr ".ix" -type "matrix" 320.205903895723 0 0 0 0 320.205903895723 0 0 0 0 867.7019053123455 0
		 -325.16786909895626 160.71954352520595 -0.053842252231383725 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 2 "vtx[1572]" "vtx[1580]";
	setAttr ".ix" -type "matrix" 320.205903895723 0 0 0 0 320.205903895723 0 0 0 0 867.7019053123455 0
		 -325.16786909895626 160.71954352520595 -0.053842252231383725 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 2 "vtx[1571]" "vtx[1578]";
	setAttr ".ix" -type "matrix" 320.205903895723 0 0 0 0 320.205903895723 0 0 0 0 867.7019053123455 0
		 -325.16786909895626 160.71954352520595 -0.053842252231383725 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[1555]" -type "float3" 5.9604645e-008 1.4901161e-008 0 ;
	setAttr ".tk[1556]" -type "float3" 5.9604645e-008 -3.7252903e-009 0 ;
	setAttr ".tk[1558]" -type "float3" 5.9604645e-008 0 0 ;
	setAttr ".tk[1560]" -type "float3" 5.9604645e-008 -1.4901161e-008 0 ;
	setAttr ".tk[1562]" -type "float3" -5.9604645e-008 1.4901161e-008 0 ;
	setAttr ".tk[1565]" -type "float3" -5.9604645e-008 -3.7252903e-009 0 ;
	setAttr ".tk[1567]" -type "float3" -5.9604645e-008 0 0 ;
	setAttr ".tk[1569]" -type "float3" -5.9604645e-008 -1.4901161e-008 0 ;
	setAttr ".tk[1571]" -type "float3" 1.1342599 0 4.4408921e-016 ;
	setAttr ".tk[1572]" -type "float3" 1.1342599 2.3283064e-010 0 ;
	setAttr ".tk[1574]" -type "float3" 1.1342599 0 0 ;
	setAttr ".tk[1576]" -type "float3" 1.1342599 0 4.4408921e-016 ;
	setAttr ".tk[1578]" -type "float3" -1.1342599 0 4.4408921e-016 ;
	setAttr ".tk[1581]" -type "float3" -1.1342599 2.3283064e-010 4.4408921e-016 ;
	setAttr ".tk[1583]" -type "float3" -1.1342599 0 4.4408921e-016 ;
	setAttr ".tk[1585]" -type "float3" -1.1342599 0 4.4408921e-016 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 6 "f[631]" "f[643]" "f[646]" "f[658]" "f[661]" "f[673]";
	setAttr ".ix" -type "matrix" 320.205903895723 0 0 0 0 320.205903895723 0 0 0 0 867.7019053123455 0
		 -325.16786909895626 160.71954352520595 -0.053842252231383725 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -325.16788 32.637207 -1188.1771 ;
	setAttr ".rs" 48593;
	setAttr ".lt" -type "double3" 0 -1.1679198618500511e-014 269.42854637170694 ;
	setAttr ".ls" -type "double3" 0.60986254178917576 1 1.4999675760002291 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -741.43556706630716 0.61661066310361434 -1188.1770700420493 ;
	setAttr ".cbx" -type "double3" 91.099790696876312 64.657806710855539 -1188.1770700420493 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 6 "f[631]" "f[643]" "f[646]" "f[658]" "f[661]" "f[673]";
	setAttr ".ix" -type "matrix" 320.205903895723 0 0 0 0 320.205903895723 0 0 0 0 867.7019053123455 0
		 -325.16786909895626 160.71954352520595 -0.053842252231383725 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -325.16788 32.637207 -433.90479 ;
	setAttr ".rs" 52324;
	setAttr ".lt" -type "double3" 0 -1.4212019671192664e-014 754.27233933176876 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -741.43556706630716 0.61661066310361434 -433.90479490840414 ;
	setAttr ".cbx" -type "double3" 91.099790696876312 64.657806710855539 -433.90479490840414 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 6 "f[635]" "f[643]" "f[650]" "f[658]" "f[665]" "f[673]";
	setAttr ".ix" -type "matrix" 320.205903895723 0 0 0 0 320.205903895723 0 0 0 0 867.7019053123455 0
		 -325.16786909895626 160.71954352520595 -0.053842252231383725 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -197.08551 32.637207 -433.90479 ;
	setAttr ".rs" 34783;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -485.27082104681779 0.61661066310361434 -433.90479490840414 ;
	setAttr ".cbx" -type "double3" 91.099790696876312 64.657806710855539 -433.90479490840414 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 78 "f[107]" "f[109]" "f[111]" "f[113]" "f[115]" "f[117]" "f[122]" "f[124]" "f[126]" "f[128]" "f[130]" "f[132]" "f[137]" "f[139]" "f[141]" "f[143]" "f[145]" "f[147]" "f[166]" "f[168]" "f[170]" "f[172]" "f[174]" "f[176]" "f[178]" "f[181]" "f[183]" "f[185]" "f[187]" "f[189]" "f[191]" "f[193]" "f[196]" "f[198]" "f[200]" "f[202]" "f[204]" "f[206]" "f[208]" "f[466]" "f[468]" "f[470]" "f[472]" "f[474]" "f[476]" "f[478]" "f[481]" "f[483]" "f[485]" "f[487]" "f[489]" "f[491]" "f[493]" "f[496]" "f[498]" "f[500]" "f[502]" "f[504]" "f[506]" "f[508]" "f[527]" "f[529]" "f[531]" "f[533]" "f[535]" "f[537]" "f[542]" "f[544]" "f[546]" "f[548]" "f[550]" "f[552]" "f[557]" "f[559]" "f[561]" "f[563]" "f[565]" "f[567]";
	setAttr ".ix" -type "matrix" 320.205903895723 0 0 0 0 320.205903895723 0 0 0 0 867.7019053123455 0
		 -325.16786909895626 160.71954352520595 -0.053842252231383725 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -325.16788 224.76073 -0.053790532 ;
	setAttr ".rs" 46927;
	setAttr ".lt" -type "double3" 0 0 -111.6649863359537 ;
	setAttr ".ls" -type "double3" 1 1 0.76786779950010653 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -741.43556706630716 150.04602357442008 -433.90479490840414 ;
	setAttr ".cbx" -type "double3" 91.099790696876312 299.47543648573651 433.79721384206903 ;
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 1 "f[675:689]";
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 15 "f[675:688]" "f[690:703]" "f[705:718]" "f[720:733]" "f[735:748]" "f[750:763]" "f[765:778]" "f[780:793]" "f[795:808]" "f[810:823]" "f[825:838]" "f[840:853]" "f[855:868]" "f[870:883]" "f[885:898]";
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 6 "f[906:908]" "f[921:923]" "f[936:938]" "f[951:953]" "f[966:968]" "f[981:983]";
	setAttr ".ix" -type "matrix" 320.205903895723 0 0 0 0 320.205903895723 0 0 0 0 867.7019053123455 0
		 -325.16786909895626 160.71954352520595 -0.053842252231383725 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 155.14091 64.657776 -0.053851951 ;
	setAttr ".rs" 62166;
	setAttr ".lt" -type "double3" 2.9127151579365393e-014 2.8433192828535299e-015 -92.822971000806064 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 155.14091040159161 0.61661066310361434 -86.824047006208502 ;
	setAttr ".cbx" -type "double3" 155.14091040159161 128.69894550133 86.716343107096776 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 12 "f[1007:1008]" "f[1016:1017]" "f[1022:1023]" "f[1031:1032]" "f[1067:1068]" "f[1071]" "f[1073]" "f[1076:1077]" "f[1082:1083]" "f[1086]" "f[1088]" "f[1091:1092]";
	setAttr ".ix" -type "matrix" 320.205903895723 0 0 0 0 320.205903895723 0 0 0 0 867.7019053123455 0
		 -325.16786909895626 160.71954352520595 -0.053842252231383725 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 155.14091 214.08719 -0.053816393 ;
	setAttr ".rs" 53751;
	setAttr ".lt" -type "double3" -8.761492655861432e-015 -4.8322425759348729e-015 -39.458255060146882 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 155.14091040159161 150.04602357442008 -318.2112144292999 ;
	setAttr ".cbx" -type "double3" 155.14091040159161 278.12835841264643 318.10358164390095 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 10 "f[228]" "f[230]" "f[232]" "f[234]" "f[236]" "f[438]" "f[440]" "f[442]" "f[444]" "f[446]";
	setAttr ".ix" -type "matrix" 320.205903895723 0 0 0 0 320.205903895723 0 0 0 0 867.7019053123455 0
		 -325.16786909895626 160.71954352520595 -0.053842252231383725 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -325.16785 320.82251 -0.053790532 ;
	setAttr ".rs" 46130;
	setAttr ".lt" -type "double3" 0 -9.3225818160560577e-014 92.148240070789768 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -613.35313679928504 320.82249547306742 -433.90479490840414 ;
	setAttr ".cbx" -type "double3" -36.982582312868374 320.82249547306742 433.79721384206903 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 10 "f[270]" "f[284]" "f[300]" "f[314]" "f[330]" "f[344]" "f[360]" "f[374]" "f[390]" "f[404]";
	setAttr ".ix" -type "matrix" 320.205903895723 0 0 0 0 320.205903895723 0 0 0 0 867.7019053123455 0
		 -325.16786909895626 160.71954352520595 -0.053842252231383725 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -325.16785 320.82251 -0.053829324 ;
	setAttr ".rs" 45766;
	setAttr ".lt" -type "double3" 0 9.5604444729109525e-014 46.564141656980837 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -805.47668677102251 320.82249547306742 -260.36439833021586 ;
	setAttr ".cbx" -type "double3" 155.14098674462826 320.82249547306742 260.25673968528503 ;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 6 "f[225:226]" "f[238:241]" "f[253:254]" "f[420:421]" "f[433:436]" "f[448:449]";
	setAttr ".ix" -type "matrix" 320.205903895723 0 0 0 0 320.205903895723 0 0 0 0 867.7019053123455 0
		 -325.16786909895626 160.71954352520595 -0.053842252231383725 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -325.16785 320.82251 -0.053842254 ;
	setAttr ".rs" 56410;
	setAttr ".lt" -type "double3" 0 2.1342199591513935e-014 96.116722127608909 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -805.47672494254084 320.82249547306742 -433.90479490840414 ;
	setAttr ".cbx" -type "double3" 155.14102491614653 320.82249547306742 433.79711040394136 ;
createNode polyCube -n "polyCube1";
	setAttr ".w" 3;
	setAttr ".sw" 15;
	setAttr ".sh" 15;
	setAttr ".sd" 15;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace39";
	setAttr ".ics" -type "componentList" 2 "f[241]" "f[256]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -29.910124550289794 0 10.15235153205446 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -6.0151167 19.913536 10.152344 ;
	setAttr ".rs" 56353;
	setAttr ".lt" -type "double3" -4.6629367034256575e-015 0 6.4485498347126935 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.412966499752685 17.206628799438477 -17.47002395622679 ;
	setAttr ".cbx" -type "double3" -1.617266426510497 22.620441436767578 37.774711761546648 ;
createNode polyExtrudeFace -n "polyExtrudeFace38";
	setAttr ".ics" -type "componentList" 2 "f[241]" "f[256]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -29.910124550289794 0 10.15235153205446 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -9.6641951 16.882397 10.152346 ;
	setAttr ".rs" 65047;
	setAttr ".lt" -type "double3" 5.773159728050814e-015 6.2172489379008766e-015 5.9543560980163655 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -14.062045822567626 14.175490379333496 -13.87130340568968 ;
	setAttr ".cbx" -type "double3" -5.266344795651122 19.589302062988281 34.175995025706804 ;
createNode polyTweak -n "polyTweak29";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[200]" -type "float3" 3.2336257 2.7562752 -5.1272335 ;
	setAttr ".tk[201]" -type "float3" 3.2336257 0 0 ;
	setAttr ".tk[217]" -type "float3" 3.2336257 0 0 ;
	setAttr ".tk[218]" -type "float3" 3.2336257 2.7562752 5.1272335 ;
	setAttr ".tk[219]" -type "float3" 3.2336257 -4.7508531 0 ;
	setAttr ".tk[220]" -type "float3" 3.2336257 0 0 ;
	setAttr ".tk[221]" -type "float3" 3.2336257 0 0 ;
	setAttr ".tk[237]" -type "float3" 3.2336257 0 0 ;
	setAttr ".tk[238]" -type "float3" 3.2336257 0 0 ;
	setAttr ".tk[239]" -type "float3" 3.2336257 0 0 ;
	setAttr ".tk[382]" -type "float3" -19.361444 0 0 ;
	setAttr ".tk[383]" -type "float3" -19.361444 0 0 ;
	setAttr ".tk[384]" -type "float3" -19.361444 -4.7508531 0 ;
	setAttr ".tk[385]" -type "float3" -19.361444 2.7562752 5.1272335 ;
	setAttr ".tk[386]" -type "float3" -19.361444 0 0 ;
	setAttr ".tk[387]" -type "float3" -19.361444 2.7562752 -5.1272335 ;
createNode polyExtrudeFace -n "polyExtrudeFace37";
	setAttr ".ics" -type "componentList" 1 "f[198:199]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -29.910124550289794 0 10.15235153205446 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.4064953 2.6067686 10.152349 ;
	setAttr ".rs" 45661;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.3958027263215342 0 -0.14636024467893805 ;
	setAttr ".cbx" -type "double3" 3.417187919192628 5.2135372161865234 20.45105758674196 ;
createNode polyTweak -n "polyTweak28";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk";
	setAttr ".tk[100]" -type "float3" 12.740885 -5.2760496 0 ;
	setAttr ".tk[101]" -type "float3" 0.92725801 0 3.7907443 ;
	setAttr ".tk[117]" -type "float3" 0.92725801 0 -3.7907445 ;
	setAttr ".tk[118]" -type "float3" 12.740885 -5.2760496 0 ;
	setAttr ".tk[119]" -type "float3" 12.740885 -5.2760496 0 ;
	setAttr ".tk[120]" -type "float3" 12.740885 -5.2760496 0 ;
	setAttr ".tk[121]" -type "float3" 0.92725801 0 4.1749158 ;
	setAttr ".tk[137]" -type "float3" 0.92725801 0 -4.1749153 ;
	setAttr ".tk[138]" -type "float3" 12.740885 -5.2760496 0 ;
	setAttr ".tk[139]" -type "float3" 12.740885 -5.2760496 0 ;
	setAttr ".tk[140]" -type "float3" 12.740885 -5.2760496 0 ;
	setAttr ".tk[141]" -type "float3" 0.92725801 0 4.4562879 ;
	setAttr ".tk[157]" -type "float3" 0.92725801 0 -4.4562879 ;
	setAttr ".tk[158]" -type "float3" 12.740885 -5.2760496 0 ;
	setAttr ".tk[159]" -type "float3" 12.740885 -5.2760496 0 ;
	setAttr ".tk[160]" -type "float3" 16.552315 1.1966269 0 ;
	setAttr ".tk[161]" -type "float3" 0.92725801 0 4.6279297 ;
	setAttr ".tk[177]" -type "float3" 0.92725801 0 -4.6279297 ;
	setAttr ".tk[178]" -type "float3" 16.552315 1.1966269 0 ;
	setAttr ".tk[179]" -type "float3" 16.552315 1.1966269 0 ;
	setAttr ".tk[180]" -type "float3" 4.7683716e-007 0 0 ;
	setAttr ".tk[198]" -type "float3" 4.7683716e-007 0 0 ;
	setAttr ".tk[199]" -type "float3" 4.7683716e-007 0 0 ;
	setAttr ".tk[200]" -type "float3" 4.7683716e-007 0 0 ;
	setAttr ".tk[218]" -type "float3" 4.7683716e-007 0 0 ;
	setAttr ".tk[219]" -type "float3" 4.7683716e-007 0 0 ;
	setAttr ".tk[220]" -type "float3" 0.62012357 -0.95479351 0 ;
	setAttr ".tk[221]" -type "float3" 0.62012357 -0.95479351 0 ;
	setAttr ".tk[237]" -type "float3" 0.62012357 -0.95479351 0 ;
	setAttr ".tk[238]" -type "float3" 0.62012357 -0.95479351 0 ;
	setAttr ".tk[239]" -type "float3" 0.62012547 -0.95479351 0 ;
	setAttr ".tk[240]" -type "float3" 0.62012357 -0.95479351 0 ;
	setAttr ".tk[241]" -type "float3" 0.62012357 -0.95479351 0 ;
	setAttr ".tk[257]" -type "float3" 0.62012357 -0.95479351 0 ;
	setAttr ".tk[258]" -type "float3" 0.62012357 -0.95479351 0 ;
	setAttr ".tk[259]" -type "float3" 0.62012547 -0.95479351 0 ;
createNode polySphere -n "polySphere6";
	setAttr ".r" 33.327311995139127;
createNode polySplitRing -n "polySplitRing28";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 33 "e[0:3]" "e[34]" "e[38]" "e[50]" "e[54]" "e[66]" "e[70]" "e[82]" "e[92]" "e[110]" "e[120]" "e[138]" "e[154]" "e[162]" "e[170]" "e[186]" "e[194]" "e[210]" "e[218]" "e[234]" "e[242]" "e[258]" "e[266]" "e[282]" "e[290]" "e[306]" "e[314]" "e[328]" "e[354]" "e[390]" "e[400]" "e[418]" "e[428]";
	setAttr ".ix" -type "matrix" 7.7312865721974049 0 0 0 0 1.6658077746727915 0 0 0 0 18.318355346797738 0
		 0.5 6.5 -11.312621545742624 1;
	setAttr ".wt" 0.35726550221443176;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[82]" -type "float3" 0 2.8767569 0 ;
	setAttr ".tk[223]" -type "float3" 0 3.5188038 0.41694772 ;
createNode polySplitRing -n "polySplitRing27";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 35 "e[20:21]" "e[23]" "e[25]" "e[32]" "e[40]" "e[48]" "e[56]" "e[64]" "e[72]" "e[80]" "e[94]" "e[108]" "e[122]" "e[140]" "e[152]" "e[160]" "e[172]" "e[184]" "e[196]" "e[208]" "e[220]" "e[232]" "e[244]" "e[256]" "e[268]" "e[280]" "e[292]" "e[304]" "e[316]" "e[326]" "e[356]" "e[388]" "e[402]" "e[416]" "e[430]";
	setAttr ".ix" -type "matrix" 7.7312865721974049 0 0 0 0 1.6658077746727915 0 0 0 0 18.318355346797738 0
		 0.5 6.5 -11.312621545742624 1;
	setAttr ".wt" 0.54041033983230591;
	setAttr ".dr" no;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 23 ".tk";
	setAttr ".tk[4]" -type "float3" 0.33558095 2.1475861 0.3509658 ;
	setAttr ".tk[5]" -type "float3" -0.51098949 0.62058032 0.28314555 ;
	setAttr ".tk[13]" -type "float3" 0 2.9802322e-008 0.075021878 ;
	setAttr ".tk[23]" -type "float3" 0.52979797 0 0 ;
	setAttr ".tk[32]" -type "float3" 0 -0.33671933 -0.076904826 ;
	setAttr ".tk[40]" -type "float3" 0.46196735 0 0.23052098 ;
	setAttr ".tk[41]" -type "float3" 0 0 -0.18235517 ;
	setAttr ".tk[42]" -type "float3" 0 0 0.067345783 ;
	setAttr ".tk[52]" -type "float3" 0.041676749 -0.48913121 -0.44039783 ;
	setAttr ".tk[55]" -type "float3" -0.78827178 0 0 ;
	setAttr ".tk[67]" -type "float3" 0.22471926 0 0 ;
	setAttr ".tk[125]" -type "float3" -0.35989851 0 0 ;
	setAttr ".tk[150]" -type "float3" 0.52302736 0 0 ;
	setAttr ".tk[151]" -type "float3" 0.41432035 0 0 ;
	setAttr ".tk[152]" -type "float3" 0.22682759 0.96671093 0 ;
	setAttr ".tk[179]" -type "float3" 0 1.1255891 -0.28938615 ;
	setAttr ".tk[182]" -type "float3" 0.56068248 1.1709216 0 ;
	setAttr ".tk[186]" -type "float3" 0.31750387 0 0 ;
	setAttr ".tk[194]" -type "float3" -0.15349299 1.2863955 0 ;
	setAttr ".tk[205]" -type "float3" 0.30650195 -0.64456636 0 ;
	setAttr ".tk[207]" -type "float3" 0.43681368 0 0 ;
	setAttr ".tk[208]" -type "float3" 0 0.4391222 0 ;
	setAttr ".tk[220]" -type "float3" 0.52128947 0 0.12596954 ;
createNode polySplitRing -n "polySplitRing26";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[67]" "e[69]" "e[71]" "e[73]" "e[86]" "e[114]" "e[252:253]" "e[255]" "e[257]" "e[271]" "e[273]" "e[346]" "e[366]";
	setAttr ".ix" -type "matrix" 7.7312865721974049 0 0 0 0 1.6658077746727915 0 0 0 0 18.318355346797738 0
		 0.5 6.5 -11.312621545742624 1;
	setAttr ".wt" 0.67290228605270386;
	setAttr ".dr" no;
	setAttr ".re" 252;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing25";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[228:229]" "e[231]" "e[233]" "e[247]" "e[249]" "e[259]" "e[261]" "e[263]" "e[265]" "e[267]" "e[269]" "e[344]" "e[368]";
	setAttr ".ix" -type "matrix" 7.7312865721974049 0 0 0 0 1.6658077746727915 0 0 0 0 18.318355346797738 0
		 0.5 6.5 -11.312621545742624 1;
	setAttr ".wt" 0.59446638822555542;
	setAttr ".dr" no;
	setAttr ".re" 228;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[3]" -type "float3" -0.39309871 0 -0.092860736 ;
	setAttr ".tk[8]" -type "float3" 0 -0.37542382 -0.18490024 ;
	setAttr ".tk[48]" -type "float3" 0 0 0.20469859 ;
	setAttr ".tk[49]" -type "float3" 0 0.60551023 0.026527032 ;
	setAttr ".tk[50]" -type "float3" 0.48620108 0 0.1173289 ;
	setAttr ".tk[62]" -type "float3" 0 0 0.12481081 ;
	setAttr ".tk[64]" -type "float3" 0.24585514 0 0.047695179 ;
	setAttr ".tk[65]" -type "float3" 0.097009771 -1.9896847 0.026696624 ;
	setAttr ".tk[73]" -type "float3" -0.27567077 0 -0.15107718 ;
	setAttr ".tk[80]" -type "float3" 0 -1.5680206 0 ;
	setAttr ".tk[81]" -type "float3" 0 -0.63753164 0 ;
	setAttr ".tk[91]" -type "float3" 0.41604933 0.81071341 0.021674421 ;
	setAttr ".tk[92]" -type "float3" -0.3683885 1.1103461 0 ;
	setAttr ".tk[102]" -type "float3" 0.31137151 -0.60631955 0 ;
	setAttr ".tk[104]" -type "float3" 0 1.5940442 0.13459902 ;
	setAttr ".tk[114]" -type "float3" 0.53916568 0 0 ;
	setAttr ".tk[115]" -type "float3" 0.27962512 0 0.28144071 ;
	setAttr ".tk[116]" -type "float3" 0 -2.9802322e-008 0 ;
	setAttr ".tk[128]" -type "float3" 0.14738691 -0.23742905 0.075845249 ;
	setAttr ".tk[164]" -type "float3" 0 0 -0.065352805 ;
	setAttr ".tk[165]" -type "float3" 0.64233685 -0.50552505 0.026727719 ;
	setAttr ".tk[187]" -type "float3" -0.2096982 0 0 ;
	setAttr ".tk[188]" -type "float3" -0.41157287 0 -0.11391207 ;
	setAttr ".tk[191]" -type "float3" 0.54127014 0 0 ;
createNode polySplitRing -n "polySplitRing24";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 29 "e[76:77]" "e[79]" "e[81]" "e[83]" "e[85]" "e[87]" "e[117]" "e[119]" "e[121]" "e[123]" "e[125]" "e[127]" "e[129]" "e[134]" "e[146]" "e[166]" "e[178]" "e[190]" "e[202]" "e[214]" "e[226]" "e[238]" "e[250]" "e[262]" "e[274]" "e[286]" "e[298]" "e[310]" "e[322]";
	setAttr ".ix" -type "matrix" 7.7312865721974049 0 0 0 0 1.6658077746727915 0 0 0 0 18.318355346797738 0
		 0.5 6.5 -11.312621545742624 1;
	setAttr ".wt" 0.45622041821479797;
	setAttr ".re" 121;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[10]" -type "float3" -0.48701593 0 0.25553444 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.3577742 ;
	setAttr ".tk[48]" -type "float3" 0 0 -5.9604645e-008 ;
	setAttr ".tk[49]" -type "float3" 0 1.6140566 0.11587913 ;
	setAttr ".tk[54]" -type "float3" -0.28557277 0 0.16904353 ;
	setAttr ".tk[62]" -type "float3" 0 0 1.4901161e-008 ;
	setAttr ".tk[63]" -type "float3" 0 0 0.1662371 ;
createNode polySplitRing -n "polySplitRing23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[10:11]" "e[18]" "e[26]" "e[84]" "e[112]" "e[276:277]" "e[279]" "e[281]" "e[295]" "e[297]";
	setAttr ".ix" -type "matrix" 7.7312865721974049 0 0 0 0 1.6658077746727915 0 0 0 0 18.318355346797738 0
		 0.5 6.5 -11.312621545742624 1;
	setAttr ".wt" 0.48739096522331238;
	setAttr ".re" 276;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing22";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[10:11]" "e[18]" "e[26]" "e[60:61]" "e[63]" "e[65]" "e[84]" "e[103]" "e[112]" "e[131]";
	setAttr ".ix" -type "matrix" 7.7312865721974049 0 0 0 0 1.6658077746727915 0 0 0 0 18.318355346797738 0
		 0.5 6.5 -11.312621545742624 1;
	setAttr ".wt" 0.25642779469490051;
	setAttr ".re" 60;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[67]" "e[69]" "e[71]" "e[73]" "e[86]" "e[114]" "e[228:229]" "e[231]" "e[233]" "e[247]" "e[249]";
	setAttr ".ix" -type "matrix" 7.7312865721974049 0 0 0 0 1.6658077746727915 0 0 0 0 18.318355346797738 0
		 0.5 6.5 -11.312621545742624 1;
	setAttr ".wt" 0.53102457523345947;
	setAttr ".dr" no;
	setAttr ".re" 228;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[28:29]" "e[31]" "e[33]" "e[67]" "e[69]" "e[71]" "e[73]" "e[86]" "e[102]" "e[114]" "e[130]";
	setAttr ".ix" -type "matrix" 7.7312865721974049 0 0 0 0 1.6658077746727915 0 0 0 0 18.318355346797738 0
		 0.5 6.5 -11.312621545742624 1;
	setAttr ".wt" 0.40942281484603882;
	setAttr ".re" 28;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[35]" "e[37]" "e[39]" "e[41]" "e[44:45]" "e[47]" "e[49]" "e[88]" "e[100]" "e[116]" "e[128]";
	setAttr ".ix" -type "matrix" 7.7312865721974049 0 0 0 0 1.6658077746727915 0 0 0 0 18.318355346797738 0
		 0.5 6.5 -11.312621545742624 1;
	setAttr ".wt" 0.4583127498626709;
	setAttr ".re" 44;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[135]" "e[137]" "e[139]" "e[141]" "e[143]" "e[145]" "e[163]" "e[165]" "e[167]" "e[169]" "e[171]" "e[173]";
	setAttr ".ix" -type "matrix" 7.7312865721974049 0 0 0 0 1.6658077746727915 0 0 0 0 18.318355346797738 0
		 0.5 6.5 -11.312621545742624 1;
	setAttr ".wt" 0.61217445135116577;
	setAttr ".dr" no;
	setAttr ".re" 141;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[51]" "e[53]" "e[55]" "e[57]" "e[90]" "e[118]" "e[135]" "e[137]" "e[139]" "e[141]" "e[143]" "e[145]";
	setAttr ".ix" -type "matrix" 7.7312865721974049 0 0 0 0 1.6658077746727915 0 0 0 0 18.318355346797738 0
		 0.5 6.5 -11.312621545742624 1;
	setAttr ".wt" 0.71818691492080688;
	setAttr ".dr" no;
	setAttr ".re" 141;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[6:7]" "e[14]" "e[22]" "e[51]" "e[53]" "e[55]" "e[57]" "e[90]" "e[98]" "e[118]" "e[126]";
	setAttr ".ix" -type "matrix" 7.7312865721974049 0 0 0 0 1.6658077746727915 0 0 0 0 18.318355346797738 0
		 0.5 6.5 -11.312621545742624 1;
	setAttr ".wt" 0.6970023512840271;
	setAttr ".dr" no;
	setAttr ".re" 118;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[0]" -type "float3" 5.9604645e-008 0 5.9604645e-008 ;
	setAttr ".tk[1]" -type "float3" -0.36224526 0 -0.39547074 ;
	setAttr ".tk[6]" -type "float3" 1.1898302 0 0.77041626 ;
	setAttr ".tk[7]" -type "float3" -0.66558552 0 0.86499894 ;
	setAttr ".tk[31]" -type "float3" 5.9604645e-008 0 0 ;
createNode polySplitRing -n "polySplitRing15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[4:5]" "e[19]" "e[27]" "e[43]" "e[59]" "e[75:77]" "e[79]" "e[81]" "e[83]" "e[85]" "e[87]";
	setAttr ".ix" -type "matrix" 7.7312865721974049 0 0 0 0 1.6658077746727915 0 0 0 0 18.318355346797738 0
		 0.5 6.5 -11.312621545742624 1;
	setAttr ".wt" 0.47893801331520081;
	setAttr ".re" 76;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[4:5]" "e[8:9]" "e[16]" "e[19]" "e[24]" "e[27]" "e[36]" "e[43]" "e[52]" "e[59]" "e[68]" "e[75]";
	setAttr ".ix" -type "matrix" 7.7312865721974049 0 0 0 0 1.6658077746727915 0 0 0 0 18.318355346797738 0
		 0.5 6.5 -11.312621545742624 1;
	setAttr ".wt" 0.34501191973686218;
	setAttr ".re" 9;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[10:11]" "e[18]" "e[26]" "e[28:29]" "e[31]" "e[33]";
	setAttr ".ix" -type "matrix" 7.7312865721974049 0 0 0 0 1.6658077746727915 0 0 0 0 18.318355346797738 0
		 0.5 6.5 -11.312621545742624 1;
	setAttr ".wt" 0.54141277074813843;
	setAttr ".dr" no;
	setAttr ".re" 28;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[6:7]" "e[14]" "e[22]" "e[35]" "e[37]" "e[39]" "e[41]";
	setAttr ".ix" -type "matrix" 7.7312865721974049 0 0 0 0 1.6658077746727915 0 0 0 0 18.318355346797738 0
		 0.5 6.5 -11.312621545742624 1;
	setAttr ".wt" 0.50596290826797485;
	setAttr ".dr" no;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[6:7]" "e[10:11]" "e[14]" "e[18]" "e[22]" "e[26]";
	setAttr ".ix" -type "matrix" 7.7312865721974049 0 0 0 0 1.6658077746727915 0 0 0 0 18.318355346797738 0
		 0.5 6.5 -11.312621545742624 1;
	setAttr ".wt" 0.37148097157478333;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 7.7312865721974049 0 0 0 0 1.6658077746727915 0 0 0 0 18.318355346797738 0
		 0.5 6.5 -11.312621545742624 1;
	setAttr ".wt" 0.42070618271827698;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 7.7312865721974049 0 0 0 0 1.6658077746727915 0 0 0 0 18.318355346797738 0
		 0.5 6.5 -11.312621545742624 1;
	setAttr ".wt" 0.77537453174591064;
	setAttr ".dr" no;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyCube -n "polyCube2";
	setAttr ".w" 7;
	setAttr ".h" 13;
	setAttr ".d" 8;
	setAttr ".cuv" 4;
createNode materialInfo -n "materialInfo2";
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr -s 21 ".dsm";
	setAttr ".ro" yes;
createNode lambert -n "lambert3";
createNode fractal -n "fractal1";
	setAttr ".cg" -type "float3" 0.19100001 0.26043746 0.5 ;
	setAttr ".a" 0.15037594735622406;
createNode place2dTexture -n "place2dTexture2";
createNode polyExtrudeFace -n "polyExtrudeFace40";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 8.7898401847751426 0 1.5919724378232187 0 0 1 0 0 -0.17821567118716813 0 0.98399145044218106 0
		 87.150146334815645 5.0765931532609976 -5.264360098569342 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 47.595867 5.5817661 -12.428236 ;
	setAttr ".rs" 57617;
	setAttr ".lt" -type "double3" 4.4408920985006262e-015 -7.1482701779559798e-016 15.920575978822963 ;
	setAttr ".ls" -type "double3" 1 1 1.497412376534246 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 46.437463640610908 -5.913060434080311 -18.824180496648005 ;
	setAttr ".cbx" -type "double3" 48.754267366044097 17.076593153260998 -6.0322916408996496 ;
createNode polyTweak -n "polyTweak31";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk";
	setAttr ".tk[0]" -type "float3" 0 1.0103465 0 ;
	setAttr ".tk[1]" -type "float3" 7.6167545 1.0103465 0 ;
	setAttr ".tk[3]" -type "float3" 6.4248924 -21.658903 0 ;
	setAttr ".tk[5]" -type "float3" 6.4248924 -21.658903 0 ;
	setAttr ".tk[6]" -type "float3" 0 1.0103465 0 ;
	setAttr ".tk[7]" -type "float3" 7.6167545 1.0103465 0 ;
	setAttr ".tk[8]" -type "float3" 2.9010091 -10.317289 2.5605528 ;
	setAttr ".tk[9]" -type "float3" 2.9163728 -10.317289 2.561276 ;
	setAttr ".tk[10]" -type "float3" 2.9163728 1.0103465 2.561276 ;
	setAttr ".tk[11]" -type "float3" 2.9010091 1.0103465 2.5605528 ;
	setAttr ".tk[12]" -type "float3" 4.1746569 -15.919442 -7.7492561 ;
	setAttr ".tk[13]" -type "float3" 4.5461264 -15.919442 -7.318624 ;
	setAttr ".tk[14]" -type "float3" 4.5461264 1.0103465 -7.318624 ;
	setAttr ".tk[15]" -type "float3" 4.1746569 1.0103465 -7.7492561 ;
	setAttr ".tk[16]" -type "float3" 1.6191891 -5.1204004 -3.3598194 ;
	setAttr ".tk[17]" -type "float3" 1.7322106 -5.1204004 -3.3205557 ;
	setAttr ".tk[18]" -type "float3" 1.7322106 1.0103465 -3.3205557 ;
	setAttr ".tk[19]" -type "float3" 1.6191891 1.0103465 -3.3598194 ;
	setAttr ".tk[20]" -type "float3" 3.6050727 -13.5011 2.4242988 ;
	setAttr ".tk[21]" -type "float3" 3.5073752 -13.5011 2.4536254 ;
	setAttr ".tk[22]" -type "float3" 3.5073752 1.0103465 2.4536254 ;
	setAttr ".tk[23]" -type "float3" 3.6050727 1.0103465 2.4242988 ;
	setAttr ".tk[24]" -type "float3" 6.1734667 -19.405987 1.2940495 ;
	setAttr ".tk[25]" -type "float3" 6.5449362 -19.405987 1.7246805 ;
	setAttr ".tk[26]" -type "float3" 6.5449371 1.0103465 1.7246834 ;
	setAttr ".tk[27]" -type "float3" 6.1734676 1.0103465 1.2940512 ;
createNode polySplitRing -n "polySplitRing39";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[20:21]" "e[23]" "e[25]";
	setAttr ".ix" -type "matrix" 8.932842029089997 0 0 0 0 1 0 0 0 0 1 0 53.635950626690821 4.9610529526104639 -18.547357477620508 1;
	setAttr ".wt" 0.57130247354507446;
	setAttr ".dr" no;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing38";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[12:13]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 8.932842029089997 0 0 0 0 1 0 0 0 0 1 0 53.635950626690821 4.9610529526104639 -18.547357477620508 1;
	setAttr ".wt" 0.5202639102935791;
	setAttr ".dr" no;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing37";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 8.932842029089997 0 0 0 0 1 0 0 0 0 1 0 53.635950626690821 4.9610529526104639 -18.547357477620508 1;
	setAttr ".wt" 0.5401073694229126;
	setAttr ".dr" no;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing36";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[12:13]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 8.932842029089997 0 0 0 0 1 0 0 0 0 1 0 53.635950626690821 4.9610529526104639 -18.547357477620508 1;
	setAttr ".wt" 0.51716560125350952;
	setAttr ".dr" no;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing35";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 8.932842029089997 0 0 0 0 1 0 0 0 0 1 0 53.635950626690821 4.9610529526104639 -18.547357477620508 1;
	setAttr ".wt" 0.34856608510017395;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak30";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" 1.2170557 0 0 ;
	setAttr ".tk[3]" -type "float3" 1.2170557 0 0 ;
	setAttr ".tk[5]" -type "float3" 1.2170557 0 0 ;
	setAttr ".tk[7]" -type "float3" 1.2170557 0 0 ;
createNode polyCube -n "polyCube7";
	setAttr ".w" 9;
	setAttr ".h" 24;
	setAttr ".d" 13;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	setAttr ".ics" -type "componentList" 1 "f[49]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -48.008103886968087 9.1331571926650916 49.765256163563713 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -51.649532 63.504578 36.394722 ;
	setAttr ".rs" 55377;
	setAttr ".lt" -type "double3" -7.1054273576010019e-015 -1.1102230246251565e-014 
		3.5199698840945386 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -55.290959874516915 62.636701046424861 35.677129027333244 ;
	setAttr ".cbx" -type "double3" -48.008103886968087 64.372453152137751 37.11231350609301 ;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	setAttr ".ics" -type "componentList" 1 "f[49]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -48.008103886968087 9.1331571926650916 49.765256163563713 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -51.649532 67.581024 41.324898 ;
	setAttr ".rs" 55474;
	setAttr ".lt" -type "double3" 1.4210854715202004e-014 -2.6645352591003757e-015 6.3971995591173343 ;
	setAttr ".ls" -type "double3" 1 1 2.5289104192547218 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -55.290959874516915 66.713151394325251 40.607304808583244 ;
	setAttr ".cbx" -type "double3" -48.008103886968087 68.448899685340876 42.04248928734301 ;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[33]" -type "float3" 0 0 -1.2843713 ;
	setAttr ".tk[53]" -type "float3" 0 0 -1.2843713 ;
	setAttr ".tk[55]" -type "float3" 0 5.7415562 3.5601842 ;
	setAttr ".tk[57]" -type "float3" 0 5.7415562 3.5601842 ;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	setAttr ".ics" -type "componentList" 1 "f[49]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -48.008103886968087 9.1331571926650916 49.765256163563713 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -51.649532 61.503712 50.827759 ;
	setAttr ".rs" 46943;
	setAttr ".lt" -type "double3" 7.1054273576010019e-015 -3.9968028886505635e-015 11.729741076627882 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -55.290960351354073 57.765057980018611 49.765257117238029 ;
	setAttr ".cbx" -type "double3" -48.008103886968087 65.242368160682673 51.890257832493766 ;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[31]" -type "float3" 0 46.976059 -1.6559169 ;
	setAttr ".tk[32]" -type "float3" 0 39.498749 9.5367432e-007 ;
	setAttr ".tk[33]" -type "float3" 0 24.039259 2.9311061 ;
	setAttr ".tk[51]" -type "float3" 0 46.976059 -1.6559169 ;
	setAttr ".tk[52]" -type "float3" 0 39.498749 9.5367432e-007 ;
	setAttr ".tk[53]" -type "float3" 0 24.039259 2.9311061 ;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[0:3]" "e[18]" "e[24]" "e[40]" "e[52]" "e[57]" "e[59]" "e[61]" "e[65]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -48.008103886968087 9.1331571926650916 49.765256163563713 1;
	setAttr ".wt" 0.425426185131073;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 19 ".tk";
	setAttr ".tk[0]" -type "float3" -7.4709845 0 0 ;
	setAttr ".tk[2]" -type "float3" -7.4709845 0 0 ;
	setAttr ".tk[4]" -type "float3" -7.4709873 -7.1525574e-007 -4.4703484e-008 ;
	setAttr ".tk[6]" -type "float3" -7.4709845 0 0 ;
	setAttr ".tk[9]" -type "float3" -7.4709845 -3.8146973e-006 0 ;
	setAttr ".tk[10]" -type "float3" -7.4709845 0 0 ;
	setAttr ".tk[12]" -type "float3" -7.4709845 0 0 ;
	setAttr ".tk[13]" -type "float3" -7.4709845 0 0 ;
	setAttr ".tk[17]" -type "float3" -7.4709845 0 0 ;
	setAttr ".tk[19]" -type "float3" -7.4709873 -3.8146973e-006 -4.4703484e-008 ;
	setAttr ".tk[20]" -type "float3" -7.4709845 0 0 ;
	setAttr ".tk[21]" -type "float3" -7.4709845 0 0 ;
	setAttr ".tk[25]" -type "float3" -7.4709845 -3.8146973e-006 0 ;
	setAttr ".tk[26]" -type "float3" -7.4709845 0 0 ;
	setAttr ".tk[27]" -type "float3" -7.4709845 0 0 ;
	setAttr ".tk[31]" -type "float3" 0 -3.8146973e-006 0 ;
	setAttr ".tk[32]" -type "float3" 0 -3.8146973e-006 0 ;
	setAttr ".tk[33]" -type "float3" -2.3841858e-006 -3.8146973e-006 -4.4703484e-008 ;
	setAttr ".tk[34]" -type "float3" -2.3841858e-006 -7.1525574e-007 -4.4703484e-008 ;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[0:3]" "e[14]" "e[18]" "e[24]" "e[30]" "e[34]" "e[40]" "e[46]" "e[52]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -48.008103886968087 9.1331571926650916 49.765256163563713 1;
	setAttr ".wt" 0.52656394243240356;
	setAttr ".dr" no;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[6:7]" "e[15]" "e[17]" "e[22]" "e[26]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -48.008103886968087 9.1331571926650916 49.765256163563713 1;
	setAttr ".wt" 0.5289577841758728;
	setAttr ".dr" no;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[10:13]" "e[28]" "e[31]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -48.008103886968087 9.1331571926650916 49.765256163563713 1;
	setAttr ".wt" 0.33097970485687256;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[4:5]" "e[8:9]" "e[16]" "e[19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -48.008103886968087 9.1331571926650916 49.765256163563713 1;
	setAttr ".wt" 0.52273958921432495;
	setAttr ".dr" no;
	setAttr ".re" 16;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -48.008103886968087 9.1331571926650916 49.765256163563713 1;
	setAttr ".wt" 0.54233407974243164;
	setAttr ".dr" no;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyCube -n "polyCube3";
	setAttr ".w" 10.408494974103291;
	setAttr ".h" 18.266314385330183;
	setAttr ".d" 15.123674805078721;
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[0:3]" "e[14]" "e[18]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.66834051947905948 7.8098068191533949 71.218968715385415 1;
	setAttr ".wt" 0.55825227499008179;
	setAttr ".dr" no;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.66834051947905948 7.8098068191533949 71.218968715385415 1;
	setAttr ".wt" 0.47695854306221008;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyCube -n "polyCube4";
	setAttr ".w" 11.159087320481859;
	setAttr ".h" 15.61961363830679;
	setAttr ".d" 12.451592467647487;
	setAttr ".cuv" 4;
createNode animCurveTL -n "pCube6_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 8.4729750986170504;
createNode animCurveTL -n "pCube6_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 -0.97465551599991773;
createNode animCurveTL -n "pCube6_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 49.251478399768487;
createNode animCurveTA -n "pCube6_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 59.529775123482658;
createNode animCurveTA -n "pCube6_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "pCube6_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTU -n "pCube6_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "pCube6_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 1;
createNode animCurveTU -n "pCube6_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 1;
createNode animCurveTU -n "pCube6_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 1;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.50709052822710854 0 -0.86189279854419942 0 0 1 0 0
		 0.86189279854419942 0 0.50709052822710854 0 7.7864335041396098 38.706770783077481 27.662834893969777 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.3017311 55.388264 30.237358 ;
	setAttr ".rs" 46204;
	setAttr ".lt" -type "double3" -2.2204460492503131e-015 -2.4868995751603507e-014 
		13.58527976089465 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.2803941990099892 38.820414429317715 24.845868776057024 ;
	setAttr ".cbx" -type "double3" 13.482032918166228 71.956114655147786 35.628844154273949 ;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[18]" -type "float3" 3.1974423e-014 1.9281707 -5.2580171 ;
	setAttr ".tk[19]" -type "float3" 0 14.124834 0 ;
	setAttr ".tk[21]" -type "float3" -3.3116522 -20.882044 -2.1316282e-014 ;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	setAttr ".ics" -type "componentList" 1 "f[10]";
	setAttr ".ix" -type "matrix" 0.50709052822710854 0 -0.86189279854419942 0 0 1 0 0
		 0.86189279854419942 0 0.50709052822710854 0 7.7864335041396098 38.706770783077481 27.662834893969777 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 10.131065 55.537048 25.428389 ;
	setAttr ".rs" 36678;
	setAttr ".lt" -type "double3" 4.4408920985006262e-016 -1.021405182655144e-014 8.668111219685283 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.28039347361117 39.11798084319711 22.999351909430441 ;
	setAttr ".cbx" -type "double3" 15.981736140272986 71.956114655147786 30.259610621454993 ;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.66834051947905948 7.8098068191533949 83.471518796512058 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.7964106 38.272583 80.502068 ;
	setAttr ".rs" 32930;
	setAttr ".lt" -type "double3" -2.2204460492503131e-016 1.999863882840469e-015 9.0065862375520496 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.911203547903753 38.272583003235425 77.245719235965183 ;
	setAttr ".cbx" -type "double3" 1.3183825169117682 38.272583003235425 83.758422177859714 ;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.66834051947905948 7.8098068191533949 83.471518796512058 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.7964104 28.053211 80.502075 ;
	setAttr ".rs" 49977;
	setAttr ".lt" -type "double3" 2.2204460492503131e-016 2.2691561304707621e-015 10.219370703633601 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.911203547903753 28.053211207581128 77.24572257382529 ;
	setAttr ".cbx" -type "double3" 1.318382576516413 28.053211207581128 83.758421939441135 ;
createNode polySphere -n "polySphere1";
	setAttr ".r" 0.0094586600000000007;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 9 ".lnk";
	setAttr -s 9 ".slnk";
select -ne :time1;
	setAttr ".o" 11;
	setAttr ".unw" 11;
select -ne :renderPartition;
	setAttr -s 9 ".st";
select -ne :initialShadingGroup;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :defaultTextureList1;
	setAttr -s 6 ".tx";
select -ne :lightList1;
	setAttr -s 5 ".l";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 7 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mentalRay";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
	setAttr -s 5 ".dsm";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "groupId3.id" "pCylinderShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape1.iog.og[0].gco";
connectAttr "groupParts2.og" "pCylinderShape1.i";
connectAttr "groupId4.id" "pCylinderShape1.ciog.cog[0].cgid";
connectAttr "groupId1.id" "pSphereShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pSphereShape3.iog.og[0].gco";
connectAttr "groupParts1.og" "pSphereShape3.i";
connectAttr "groupId2.id" "pSphereShape3.ciog.cog[0].cgid";
connectAttr "polySplitRing34.out" "Tower_bigShape.i";
connectAttr "polyExtrudeFace26.out" "Tower_SmallShape.i";
connectAttr "polyExtrudeFace20.out" "Tavern_MidShape.i";
connectAttr "deleteComponent4.og" "Castle_FundamentShape.i";
connectAttr "polyExtrudeFace39.out" "pSphereShape6.i";
connectAttr "polySplitRing28.out" "Castle_GroundShape.i";
connectAttr "polyExtrudeFace40.out" "Castle_Ground_PathShape.i";
connectAttr "polyExtrudeFace14.out" "pCubeShape3.i";
connectAttr "polySplitRing8.out" "pCubeShape4.i";
connectAttr "pCube6_translateX.o" "pCube6.tx";
connectAttr "pCube6_translateY.o" "pCube6.ty";
connectAttr "pCube6_translateZ.o" "pCube6.tz";
connectAttr "pCube6_rotateY.o" "pCube6.ry";
connectAttr "pCube6_rotateX.o" "pCube6.rx";
connectAttr "pCube6_rotateZ.o" "pCube6.rz";
connectAttr "pCube6_visibility.o" "pCube6.v";
connectAttr "pCube6_scaleX.o" "pCube6.sx";
connectAttr "pCube6_scaleY.o" "pCube6.sy";
connectAttr "pCube6_scaleZ.o" "pCube6.sz";
connectAttr "polyExtrudeFace16.out" "pCubeShape7.i";
connectAttr "polyExtrudeFace18.out" "pCubeShape10.i";
connectAttr "polySphere1.out" "pSphereShape1.i";
connectAttr "lambert6SG.msg" "materialInfo5.sg";
connectAttr "CASTLE.msg" "materialInfo5.m";
connectAttr "fractal3.msg" "materialInfo5.t" -na;
connectAttr "CASTLE.oc" "lambert6SG.ss";
connectAttr "Castle_FundamentShape.iog" "lambert6SG.dsm" -na;
connectAttr "Tower_bigShape.iog" "lambert6SG.dsm" -na;
connectAttr "Tavern_MidShape.iog" "lambert6SG.dsm" -na;
connectAttr "Tower_SmallShape.iog" "lambert6SG.dsm" -na;
connectAttr "Tavern_BigShape.iog" "lambert6SG.dsm" -na;
connectAttr "Tarvern_SmallShape.iog" "lambert6SG.dsm" -na;
connectAttr "fractal3.oc" "CASTLE.c";
connectAttr "place2dTexture5.o" "fractal3.uv";
connectAttr "place2dTexture5.ofs" "fractal3.fs";
connectAttr "polySplitRing33.out" "polySplitRing34.ip";
connectAttr "Tower_bigShape.wm" "polySplitRing34.mp";
connectAttr "polySplitRing32.out" "polySplitRing33.ip";
connectAttr "Tower_bigShape.wm" "polySplitRing33.mp";
connectAttr "polyTweak27.out" "polySplitRing32.ip";
connectAttr "Tower_bigShape.wm" "polySplitRing32.mp";
connectAttr "polyUnite1.out" "polyTweak27.ip";
connectAttr "pSphereShape3.o" "polyUnite1.ip[0]";
connectAttr "pCylinderShape1.o" "polyUnite1.ip[1]";
connectAttr "pSphereShape3.wm" "polyUnite1.im[0]";
connectAttr "pCylinderShape1.wm" "polyUnite1.im[1]";
connectAttr "polySphere3.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyExtrudeFace36.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyTweak26.out" "polyExtrudeFace36.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace36.mp";
connectAttr "polyExtrudeFace35.out" "polyTweak26.ip";
connectAttr "polyTweak25.out" "polyExtrudeFace35.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace35.mp";
connectAttr "polyExtrudeFace34.out" "polyTweak25.ip";
connectAttr "polyTweak24.out" "polyExtrudeFace34.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace34.mp";
connectAttr "polyExtrudeFace33.out" "polyTweak24.ip";
connectAttr "polyTweak23.out" "polyExtrudeFace33.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace33.mp";
connectAttr "polyExtrudeFace32.out" "polyTweak23.ip";
connectAttr "polyTweak22.out" "polyExtrudeFace32.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace32.mp";
connectAttr "polyExtrudeFace31.out" "polyTweak22.ip";
connectAttr "polyExtrudeFace30.out" "polyExtrudeFace31.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace31.mp";
connectAttr "polyTweak21.out" "polyExtrudeFace30.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace30.mp";
connectAttr "polyExtrudeFace29.out" "polyTweak21.ip";
connectAttr "polyExtrudeFace28.out" "polyExtrudeFace29.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace29.mp";
connectAttr "polyTweak20.out" "polyExtrudeFace28.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace28.mp";
connectAttr "polyExtrudeFace27.out" "polyTweak20.ip";
connectAttr "polyCylinder1.out" "polyExtrudeFace27.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace27.mp";
connectAttr "polyTweak19.out" "polyExtrudeFace26.ip";
connectAttr "Tower_SmallShape.wm" "polyExtrudeFace26.mp";
connectAttr "polyExtrudeFace25.out" "polyTweak19.ip";
connectAttr "polyTweak18.out" "polyExtrudeFace25.ip";
connectAttr "Tower_SmallShape.wm" "polyExtrudeFace25.mp";
connectAttr "polyExtrudeFace24.out" "polyTweak18.ip";
connectAttr "polyExtrudeFace23.out" "polyExtrudeFace24.ip";
connectAttr "Tower_SmallShape.wm" "polyExtrudeFace24.mp";
connectAttr "polyTweak17.out" "polyExtrudeFace23.ip";
connectAttr "Tower_SmallShape.wm" "polyExtrudeFace23.mp";
connectAttr "polyExtrudeFace22.out" "polyTweak17.ip";
connectAttr "polyTweak16.out" "polyExtrudeFace22.ip";
connectAttr "Tower_SmallShape.wm" "polyExtrudeFace22.mp";
connectAttr "polyExtrudeFace21.out" "polyTweak16.ip";
connectAttr "polyCube6.out" "polyExtrudeFace21.ip";
connectAttr "Tower_SmallShape.wm" "polyExtrudeFace21.mp";
connectAttr "polySplitRing31.out" "polyExtrudeFace20.ip";
connectAttr "Tavern_MidShape.wm" "polyExtrudeFace20.mp";
connectAttr "polySplitRing30.out" "polySplitRing31.ip";
connectAttr "Tavern_MidShape.wm" "polySplitRing31.mp";
connectAttr "polyTweak15.out" "polySplitRing30.ip";
connectAttr "Tavern_MidShape.wm" "polySplitRing30.mp";
connectAttr "polyExtrudeFace19.out" "polyTweak15.ip";
connectAttr "polyTweak14.out" "polyExtrudeFace19.ip";
connectAttr "Tavern_MidShape.wm" "polyExtrudeFace19.mp";
connectAttr "polySplitRing29.out" "polyTweak14.ip";
connectAttr "polyTweak13.out" "polySplitRing29.ip";
connectAttr "Tavern_MidShape.wm" "polySplitRing29.mp";
connectAttr "polyCube5.out" "polyTweak13.ip";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "polyExtrudeFace11.out" "deleteComponent3.ig";
connectAttr "polyTweak3.out" "polyExtrudeFace11.ip";
connectAttr "Castle_FundamentShape.wm" "polyExtrudeFace11.mp";
connectAttr "polyBevel1.out" "polyTweak3.ip";
connectAttr "polyExtrudeFace10.out" "polyBevel1.ip";
connectAttr "Castle_FundamentShape.wm" "polyBevel1.mp";
connectAttr "polyTweak2.out" "polyExtrudeFace10.ip";
connectAttr "Castle_FundamentShape.wm" "polyExtrudeFace10.mp";
connectAttr "polyMergeVert4.out" "polyTweak2.ip";
connectAttr "polyMergeVert3.out" "polyMergeVert4.ip";
connectAttr "Castle_FundamentShape.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert2.out" "polyMergeVert3.ip";
connectAttr "Castle_FundamentShape.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "Castle_FundamentShape.wm" "polyMergeVert2.mp";
connectAttr "polyTweak1.out" "polyMergeVert1.ip";
connectAttr "Castle_FundamentShape.wm" "polyMergeVert1.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace8.out" "polyExtrudeFace9.ip";
connectAttr "Castle_FundamentShape.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace7.out" "polyExtrudeFace8.ip";
connectAttr "Castle_FundamentShape.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace6.out" "polyExtrudeFace7.ip";
connectAttr "Castle_FundamentShape.wm" "polyExtrudeFace7.mp";
connectAttr "deleteComponent2.og" "polyExtrudeFace6.ip";
connectAttr "Castle_FundamentShape.wm" "polyExtrudeFace6.mp";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "polyExtrudeFace5.out" "deleteComponent1.ig";
connectAttr "polyExtrudeFace4.out" "polyExtrudeFace5.ip";
connectAttr "Castle_FundamentShape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace3.out" "polyExtrudeFace4.ip";
connectAttr "Castle_FundamentShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "Castle_FundamentShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "Castle_FundamentShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyCube1.out" "polyExtrudeFace1.ip";
connectAttr "Castle_FundamentShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace38.out" "polyExtrudeFace39.ip";
connectAttr "pSphereShape6.wm" "polyExtrudeFace39.mp";
connectAttr "polyTweak29.out" "polyExtrudeFace38.ip";
connectAttr "pSphereShape6.wm" "polyExtrudeFace38.mp";
connectAttr "polyExtrudeFace37.out" "polyTweak29.ip";
connectAttr "polyTweak28.out" "polyExtrudeFace37.ip";
connectAttr "pSphereShape6.wm" "polyExtrudeFace37.mp";
connectAttr "polySphere6.out" "polyTweak28.ip";
connectAttr "polyTweak12.out" "polySplitRing28.ip";
connectAttr "Castle_GroundShape.wm" "polySplitRing28.mp";
connectAttr "polySplitRing27.out" "polyTweak12.ip";
connectAttr "polyTweak11.out" "polySplitRing27.ip";
connectAttr "Castle_GroundShape.wm" "polySplitRing27.mp";
connectAttr "polySplitRing26.out" "polyTweak11.ip";
connectAttr "polySplitRing25.out" "polySplitRing26.ip";
connectAttr "Castle_GroundShape.wm" "polySplitRing26.mp";
connectAttr "polyTweak10.out" "polySplitRing25.ip";
connectAttr "Castle_GroundShape.wm" "polySplitRing25.mp";
connectAttr "polySplitRing24.out" "polyTweak10.ip";
connectAttr "polyTweak9.out" "polySplitRing24.ip";
connectAttr "Castle_GroundShape.wm" "polySplitRing24.mp";
connectAttr "polySplitRing23.out" "polyTweak9.ip";
connectAttr "polySplitRing22.out" "polySplitRing23.ip";
connectAttr "Castle_GroundShape.wm" "polySplitRing23.mp";
connectAttr "polySplitRing21.out" "polySplitRing22.ip";
connectAttr "Castle_GroundShape.wm" "polySplitRing22.mp";
connectAttr "polySplitRing20.out" "polySplitRing21.ip";
connectAttr "Castle_GroundShape.wm" "polySplitRing21.mp";
connectAttr "polySplitRing19.out" "polySplitRing20.ip";
connectAttr "Castle_GroundShape.wm" "polySplitRing20.mp";
connectAttr "polySplitRing18.out" "polySplitRing19.ip";
connectAttr "Castle_GroundShape.wm" "polySplitRing19.mp";
connectAttr "polySplitRing17.out" "polySplitRing18.ip";
connectAttr "Castle_GroundShape.wm" "polySplitRing18.mp";
connectAttr "polySplitRing16.out" "polySplitRing17.ip";
connectAttr "Castle_GroundShape.wm" "polySplitRing17.mp";
connectAttr "polyTweak8.out" "polySplitRing16.ip";
connectAttr "Castle_GroundShape.wm" "polySplitRing16.mp";
connectAttr "polySplitRing15.out" "polyTweak8.ip";
connectAttr "polySplitRing14.out" "polySplitRing15.ip";
connectAttr "Castle_GroundShape.wm" "polySplitRing15.mp";
connectAttr "polySplitRing13.out" "polySplitRing14.ip";
connectAttr "Castle_GroundShape.wm" "polySplitRing14.mp";
connectAttr "polySplitRing12.out" "polySplitRing13.ip";
connectAttr "Castle_GroundShape.wm" "polySplitRing13.mp";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "Castle_GroundShape.wm" "polySplitRing12.mp";
connectAttr "polySplitRing10.out" "polySplitRing11.ip";
connectAttr "Castle_GroundShape.wm" "polySplitRing11.mp";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "Castle_GroundShape.wm" "polySplitRing10.mp";
connectAttr "polyCube2.out" "polySplitRing9.ip";
connectAttr "Castle_GroundShape.wm" "polySplitRing9.mp";
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "fractal1.msg" "materialInfo2.t" -na;
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "pCubeShape21.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape20.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape19.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape18.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape17.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape16.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape15.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape14.iog" "lambert3SG.dsm" -na;
connectAttr "pSphereShape1.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape13.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape12.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape11.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape10.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape9.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape8.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape7.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape6.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape4.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape3.iog" "lambert3SG.dsm" -na;
connectAttr "Castle_GroundShape.iog" "lambert3SG.dsm" -na;
connectAttr "Castle_Ground_PathShape.iog" "lambert3SG.dsm" -na;
connectAttr "fractal1.oc" "lambert3.c";
connectAttr "place2dTexture2.o" "fractal1.uv";
connectAttr "place2dTexture2.ofs" "fractal1.fs";
connectAttr "polyTweak31.out" "polyExtrudeFace40.ip";
connectAttr "Castle_Ground_PathShape.wm" "polyExtrudeFace40.mp";
connectAttr "polySplitRing39.out" "polyTweak31.ip";
connectAttr "polySplitRing38.out" "polySplitRing39.ip";
connectAttr "Castle_Ground_PathShape.wm" "polySplitRing39.mp";
connectAttr "polySplitRing37.out" "polySplitRing38.ip";
connectAttr "Castle_Ground_PathShape.wm" "polySplitRing38.mp";
connectAttr "polySplitRing36.out" "polySplitRing37.ip";
connectAttr "Castle_Ground_PathShape.wm" "polySplitRing37.mp";
connectAttr "polySplitRing35.out" "polySplitRing36.ip";
connectAttr "Castle_Ground_PathShape.wm" "polySplitRing36.mp";
connectAttr "polyTweak30.out" "polySplitRing35.ip";
connectAttr "Castle_Ground_PathShape.wm" "polySplitRing35.mp";
connectAttr "polyCube7.out" "polyTweak30.ip";
connectAttr "polyExtrudeFace13.out" "polyExtrudeFace14.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace14.mp";
connectAttr "polyTweak6.out" "polyExtrudeFace13.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak6.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace12.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace12.mp";
connectAttr "polySplitRing6.out" "polyTweak5.ip";
connectAttr "polyTweak4.out" "polySplitRing6.ip";
connectAttr "pCubeShape3.wm" "polySplitRing6.mp";
connectAttr "polySplitRing5.out" "polyTweak4.ip";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCubeShape3.wm" "polySplitRing5.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pCubeShape3.wm" "polySplitRing4.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCubeShape3.wm" "polySplitRing3.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCubeShape3.wm" "polySplitRing2.mp";
connectAttr "polyCube3.out" "polySplitRing1.ip";
connectAttr "pCubeShape3.wm" "polySplitRing1.mp";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "pCubeShape4.wm" "polySplitRing8.mp";
connectAttr "polyCube4.out" "polySplitRing7.ip";
connectAttr "pCubeShape4.wm" "polySplitRing7.mp";
connectAttr "polyTweak7.out" "polyExtrudeFace16.ip";
connectAttr "pCubeShape7.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak7.ip";
connectAttr "|group1|Spikes|pCube7|polySurfaceShape1.o" "polyExtrudeFace15.ip";
connectAttr "pCubeShape7.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace17.out" "polyExtrudeFace18.ip";
connectAttr "pCubeShape10.wm" "polyExtrudeFace18.mp";
connectAttr "|group1|Spikes|pCube10|polySurfaceShape2.o" "polyExtrudeFace17.ip";
connectAttr "pCubeShape10.wm" "polyExtrudeFace17.mp";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "pSphereShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "CASTLE.msg" ":defaultShaderList1.s" -na;
connectAttr "fractal1.msg" ":defaultTextureList1.tx" -na;
connectAttr "fractal3.msg" ":defaultTextureList1.tx" -na;
connectAttr "pointLightShape1.ltd" ":lightList1.l" -na;
connectAttr "pointLightShape2.ltd" ":lightList1.l" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pointLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "pointLight2.iog" ":defaultLightSet.dsm" -na;
// End of CASTLE.ma
