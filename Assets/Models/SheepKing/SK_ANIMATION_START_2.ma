//Maya ASCII 2014 scene
//Name: SK_ANIMATION_START_2.ma
//Last modified: Tue, Dec 03, 2013 09:58:56 AM
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
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201307170459-880822";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -30.084349507196098 232.84948298323661 219.04964692293609 ;
	setAttr ".r" -type "double3" 679.43199300011304 351.01588308918798 720.15432638311484 ;
	setAttr ".rp" -type "double3" 8.8817841970012523e-016 -2.7533531010703882e-014 -4.9737991503207013e-014 ;
	setAttr ".rpt" -type "double3" -8.4623068169755268e-015 1.8630131412564472e-014 
		3.4141995669785967e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".ncp" 4.367808;
	setAttr ".coi" 285.99506951811668;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.3312568664550781 43.123194448649883 2.3620259171830984 ;
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
	setAttr ".t" -type "double3" 7.7454047928285066 26.818781650080588 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ncp" 4.367808;
	setAttr ".coi" 100.1;
	setAttr ".ow" 136.83379066902341;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".t" -type "double3" 100.1 43.98451813010599 -8.5820094393337349 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ncp" 4.367808;
	setAttr ".coi" 100.1;
	setAttr ".ow" 76.720178468713073;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "group1";
	setAttr ".rp" -type "double3" -1.3312568664550781 8.2765464782714844 43.123194448649883 ;
	setAttr ".sp" -type "double3" -1.3312568664550781 8.2765464782714844 43.123194448649883 ;
createNode transform -n "pasted__pCube1" -p "group1";
	setAttr ".t" -type "double3" 0 0.7059010282144822 36.105904616712948 ;
	setAttr ".r" -type "double3" 89.24544701268951 0 0 ;
	setAttr ".s" -type "double3" 1.1771061953166415 1.2343431102168283 1.148641694508993 ;
createNode transform -n "pasted__transform1" -p "pasted__pCube1";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape1" -p "pasted__transform1";
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
	setAttr ".dr" 1;
createNode transform -n "pasted__sheep_body" -p "group1";
	setAttr ".t" -type "double3" -1.2158509845429863 12.813695551248639 42.063820932527676 ;
	setAttr ".s" -type "double3" 1 1.241008783953607 1.3283809005156004 ;
createNode transform -n "pasted__transform2" -p "pasted__sheep_body";
	setAttr ".v" no;
createNode mesh -n "pasted__sheep_bodyShape" -p "pasted__transform2";
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
createNode transform -n "pasted__polySurface1" -p "group1";
createNode transform -n "polySurface1" -p "pasted__polySurface1";
createNode transform -n "polySurface2" -p "polySurface1";
createNode transform -n "body" -p "polySurface2";
createNode transform -n "transform11" -p "body";
	setAttr ".v" no;
createNode mesh -n "bodyShape" -p "transform11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.66693017393030152 0.40967839892192554 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "face" -p "polySurface2";
createNode transform -n "transform10" -p "face";
	setAttr ".v" no;
createNode mesh -n "faceShape" -p "transform10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.2386020515114069 0.27275551902130246 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform3" -p "polySurface2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform3";
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
createNode transform -n "left_horn" -p "polySurface1";
createNode transform -n "transform9" -p "left_horn";
	setAttr ".v" no;
createNode mesh -n "left_hornShape" -p "transform9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.18166859098660049 0.76727001290487984 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "right_horn" -p "polySurface1";
createNode transform -n "transform8" -p "right_horn";
	setAttr ".v" no;
createNode mesh -n "right_hornShape" -p "transform8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50317029001251334 0.59845827664098428 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform2" -p "polySurface1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape1" -p "transform2";
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
createNode transform -n "left_leg" -p "pasted__polySurface1";
createNode transform -n "transform7" -p "left_leg";
	setAttr ".v" no;
createNode mesh -n "left_legShape" -p "transform7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.8085118583133144 0.69219761529276447 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "left_arm" -p "pasted__polySurface1";
createNode transform -n "transform6" -p "left_arm";
	setAttr ".v" no;
createNode mesh -n "left_armShape" -p "transform6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49921611835879665 0.84684449895735714 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "right_leg" -p "pasted__polySurface1";
createNode transform -n "transform5" -p "right_leg";
	setAttr ".v" no;
createNode mesh -n "right_legShape" -p "transform5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.90217204119569516 0.59597057680929855 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "right_arm" -p "pasted__polySurface1";
createNode transform -n "transform4" -p "right_arm";
	setAttr ".v" no;
createNode mesh -n "right_armShape" -p "transform4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.83155211248705463 0.87853534846536574 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform1" -p "pasted__polySurface1";
	setAttr ".v" no;
createNode mesh -n "pasted__polySurfaceShape1" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.81863560686677195 0.48876901430598763 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[12]" -type "float3" 1.9073486e-006 -9.5367432e-007 1.9073486e-006 ;
	setAttr ".pt[13]" -type "float3" 1.9073486e-006 -9.5367432e-007 1.9073486e-006 ;
	setAttr ".pt[15]" -type "float3" 1.9073486e-006 -9.5367432e-007 1.9073486e-006 ;
	setAttr ".pt[16]" -type "float3" 1.9073486e-006 -9.5367432e-007 1.9073486e-006 ;
	setAttr ".dr" 1;
createNode transform -n "polySurface3";
	setAttr ".t" -type "double3" 0.90536386572931171 0 13.178117411977139 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.78059809155870785 1 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 10.528393885066233 -2.3377730607046472e-015 ;
	setAttr ".rpt" -type "double3" 0 -10.528393885066233 -10.528393885066231 ;
	setAttr ".sp" -type "double3" 0 10.528393885066233 -2.3377730607046472e-015 ;
createNode mesh -n "polySurfaceShape3" -p "polySurface3";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.51921653747558594 0.48145043849945068 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "polySurfaceShape3Orig" -p "polySurface3";
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
	setAttr ".t" -type "double3" 0 35.494000659722978 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 35.494000659722978 0 1;
	setAttr ".typ" 1;
	setAttr ".radi" 1.0648200197916899;
createNode joint -n "Character1_LeftUpLeg" -p "Character1_Hips";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 3.1625157430882638 -2.2254740046370429 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.1625157430882638 33.268526655085935 0 1;
	setAttr ".sd" 1;
	setAttr ".typ" 2;
	setAttr ".radi" 1.0648200197916899;
createNode joint -n "Character1_LeftLeg" -p "Character1_LeftUpLeg";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 -15.929226531078324 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.1625157430882638 17.339300124007611 0 1;
	setAttr ".sd" 1;
	setAttr ".typ" 3;
	setAttr ".radi" 1.0648200197916899;
createNode joint -n "Character1_LeftFoot" -p "Character1_LeftLeg";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0 -14.446398390833393 0 ;
	setAttr ".r" -type "double3" 3.2735429021807434 -1.2843234109573249 2.1872211736769525 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.1625157430882638 2.8929017331742184 0 1;
	setAttr ".sd" 1;
	setAttr ".typ" 4;
	setAttr ".radi" 1.0648200197916899;
createNode joint -n "Character1_LeftToeBase" -p "Character1_LeftFoot";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 2.9910794352439041e-006 -2.2227469057973663 4.5981487217112722 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.162518734167699 0.67015482737685206 4.5981487217112722 1;
	setAttr ".sd" 1;
	setAttr ".typ" 5;
	setAttr ".radi" 1.0648200197916899;
createNode joint -n "Character1_RightUpLeg" -p "Character1_Hips";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -3.1625157430882638 -2.2254740046370429 0 ;
	setAttr ".r" -type "double3" -4.9191628770204616 -1.6289078017454122 -0.64565145263572277 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.1625157430882638 33.268526655085935 0 1;
	setAttr ".sd" 2;
	setAttr ".typ" 2;
	setAttr ".radi" 1.0648200197916899;
createNode joint -n "Character1_RightLeg" -p "Character1_RightUpLeg";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -9.6401705729221021e-007 -15.929226531078324 0.00015582718145634223 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.1625167071053211 17.339300124007611 0.00015582718145634223 1;
	setAttr ".sd" 2;
	setAttr ".typ" 3;
	setAttr ".radi" 1.0648200197916899;
createNode joint -n "Character1_RightFoot" -p "Character1_RightLeg";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 3.2618986578469844e-007 -14.446398389413634 0 ;
	setAttr ".r" -type "double3" 3.2735429021807434 -1.2843234109573249 2.1872211736769525 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.1625163809154553 2.8929017345939769 0.00015582718145634223 1;
	setAttr ".sd" 2;
	setAttr ".typ" 4;
	setAttr ".radi" 1.0648200197916899;
createNode joint -n "Character1_RightToeBase" -p "Character1_RightFoot";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -0.00038524513930005 -2.2227469011831436 4.5981587189514981 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.1629016260547553 0.67015483341083337 4.5983145461329542 1;
	setAttr ".sd" 2;
	setAttr ".typ" 5;
	setAttr ".radi" 1.0648200197916899;
createNode joint -n "Character1_Spine" -p "Character1_Hips";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 2.4845800461806178 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 37.978580705903596 0 1;
	setAttr ".typ" 6;
	setAttr ".radi" 1.0648200197916899;
createNode joint -n "Character1_Spine1" -p "Character1_Spine";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 4.4959067502315762 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 42.474487456135172 0 1;
	setAttr ".typ" 6;
	setAttr ".radi" 1.0648200197916899;
createNode joint -n "Character1_Spine2" -p "Character1_Spine1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0 4.4959067502315833 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 46.970394206366755 0 1;
	setAttr ".typ" 6;
	setAttr ".radi" 1.0648200197916899;
createNode joint -n "Character1_LeftShoulder" -p "Character1_Spine2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 2.4845802154869925 5.0597455619035614 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.4845802154869925 52.030139768270317 0 1;
	setAttr ".sd" 1;
	setAttr ".typ" 9;
	setAttr ".radi" 1.0648200197916899;
createNode joint -n "Character1_LeftArm" -p "Character1_LeftShoulder";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 3.8004315961176114 4.8768756904848942e-005 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.2850118116046039 52.030188537027222 0 1;
	setAttr ".sd" 1;
	setAttr ".typ" 10;
	setAttr ".radi" 1.0648200197916899;
createNode joint -n "Character1_LeftForeArm" -p "Character1_LeftArm";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 9.691802175698438 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 15.976813987303043 52.030188537027222 0 1;
	setAttr ".sd" 1;
	setAttr ".typ" 11;
	setAttr ".radi" 1.0648200197916899;
createNode joint -n "Character1_LeftHand" -p "Character1_LeftForeArm";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 9.4758856636350117 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 25.452699650938055 52.030188537027222 0 1;
	setAttr ".sd" 1;
	setAttr ".typ" 12;
	setAttr ".radi" 1.0648200197916899;
createNode joint -n "Character1_LeftHandThumb1" -p "Character1_LeftHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 1.5435477850287391 -0.28342048261787056 1.5200071404991811 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 26.996247435966794 51.746768054409351 1.5200071404991811 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_LeftHandThumb2" -p "Character1_LeftHandThumb1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.89181868987974866 -0.19028312457277252 0.25110384242779871 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 27.888066125846542 51.556484929836579 1.7711109829269798 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_LeftHandThumb3" -p "Character1_LeftHandThumb2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.90266227390307563 -4.6852080970438692e-006 3.3158495411633737e-006 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 28.790728399749618 51.556480244628482 1.7711142987765209 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_LeftHandThumb4" -p "Character1_LeftHandThumb3";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.94653489252474543 1.029326021750876e-006 -2.9144123934177202e-006 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 29.737263292274363 51.556481273954503 1.7711113843641275 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_LeftHandIndex1" -p "Character1_LeftHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 3.131272475197413 0.070891883565678881 1.2322343654184413 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 28.583972126135468 52.101080420592901 1.2322343654184413 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_LeftHandIndex2" -p "Character1_LeftHandIndex1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.4988245455824689 -7.8441741635515427e-006 0.052246820774965785 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 30.082796671717936 52.101072576418737 1.2844811861934071 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_LeftHandIndex3" -p "Character1_LeftHandIndex2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.94141641272100784 -4.8981720937035789e-006 0.032816326151152708 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 31.024213084438944 52.101067678246643 1.3172975123445598 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_LeftHandIndex4" -p "Character1_LeftHandIndex3";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.69462974250721032 -3.6203880640073294e-006 0.024213616816056494 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 31.718842826946155 52.101064057858579 1.3415111291606163 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_LeftHandMiddle1" -p "Character1_LeftHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 3.1269786381592013 0.17778607737450614 0.46308468279944287 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 28.579678289097256 52.207974614401728 0.46308468279944287 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_LeftHandMiddle2" -p "Character1_LeftHandMiddle1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.7261625833831928 0 0.00010735337969525194 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 30.305840872480449 52.207974614401728 0.46319203617913812 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_LeftHandMiddle3" -p "Character1_LeftHandMiddle2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.98149310059629613 0 6.0972659153224473e-005 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 31.287333973076745 52.207974614401728 0.46325300883829135 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_LeftHandMiddle4" -p "Character1_LeftHandMiddle3";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.71187909210201994 0 4.3869165055443471e-005 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 31.999213065178765 52.207974614401728 0.46329687800334679 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_LeftHandRing1" -p "Character1_LeftHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 3.1567511585367782 0.13484866533043771 -0.28152382839311157 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 28.609450809474833 52.165037202357659 -0.28152382839311157 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_LeftHandRing2" -p "Character1_LeftHandRing1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.6106321490568369 0 3.1589660554054433e-008 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 30.22008295853167 52.165037202357659 -0.28152379680345102 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_LeftHandRing3" -p "Character1_LeftHandRing2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.81796842395190339 0 -4.1527980831901345e-008 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 31.038051382483573 52.165037202357659 -0.28152383833143185 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_LeftHandRing4" -p "Character1_LeftHandRing3";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.68267292464714657 0 -2.8998598539109466e-007 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 31.72072430713072 52.165037202357659 -0.28152412831741724 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_LeftHandPinky1" -p "Character1_LeftHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 3.1526746370670118 -0.11110580544506377 -0.88392714011655382 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 28.605374288005066 51.919082731582158 -0.88392714011655382 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_LeftHandPinky2" -p "Character1_LeftHandPinky1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.0804726362728161 1.4410564240563417e-005 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 29.685846924277882 51.919097142146398 -0.88392714011655382 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_LeftHandPinky3" -p "Character1_LeftHandPinky2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.70082957188684247 9.3349221685912198e-006 -5.0756421066111557e-008 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 30.386676496164725 51.919106477068567 -0.88392719087297489 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_LeftHandPinky4" -p "Character1_LeftHandPinky3";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.59154821486603382 7.8796681464154972e-006 2.8075754476830639e-007 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 30.978224711030759 51.919114356736713 -0.88392691011543012 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_RightShoulder" -p "Character1_Spine2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -2.4845798768742258 5.0597455619035614 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.4845798768742258 52.030139768270317 0 1;
	setAttr ".sd" 2;
	setAttr ".typ" 9;
	setAttr ".radi" 1.0648200197916899;
createNode joint -n "Character1_RightArm" -p "Character1_RightShoulder";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -3.8004403965001368 0.00015376001085343205 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.2850202733743625 52.03029352828117 0 1;
	setAttr ".sd" 2;
	setAttr ".typ" 10;
	setAttr ".radi" 1.0648200197916899;
createNode joint -n "Character1_RightForeArm" -p "Character1_RightArm";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -9.6918492229963036 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -15.976869496370666 52.03029352828117 0 1;
	setAttr ".sd" 2;
	setAttr ".typ" 11;
	setAttr ".radi" 1.0648200197916899;
createNode joint -n "Character1_RightHand" -p "Character1_RightForeArm";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -9.4758291358895708 -4.6142196907794641e-007 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -25.452698632260237 52.030293066859201 0 1;
	setAttr ".sd" 2;
	setAttr ".typ" 12;
	setAttr ".radi" 1.0648200197916899;
createNode joint -n "Character1_RightHandThumb1" -p "Character1_RightHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" -1.543414306289872 -0.28341892088189269 1.5201422913604332 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -26.996112938550109 51.746874145977309 1.5201422913604332 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_RightHandThumb2" -p "Character1_RightHandThumb1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.89179653097511746 -0.19028294710275873 0.25118275481970564 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -27.887909469525226 51.55659119887455 1.7713250461801389 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_RightHandThumb3" -p "Character1_RightHandThumb2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.90211174420584328 9.512392182386975e-006 0.031525883192067949 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -28.79002121373107 51.556600711266732 1.8028509293722068 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_RightHandThumb4" -p "Character1_RightHandThumb3";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -0.94595762519681159 6.4954021112839655e-006 0.033058159910428264 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -29.735978838927881 51.556607206668843 1.8359090892826351 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_RightHandIndex1" -p "Character1_RightHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" -3.1311645521389977 0.070893480795675146 1.2325094013307532 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -28.583863184399235 52.101186547654876 1.2325094013307532 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_RightHandIndex2" -p "Character1_RightHandIndex1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -1.4988229909452606 -1.0648200543528219e-007 -0.052301044604833757 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -30.082686175344495 52.101186441172871 1.1802083567259194 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_RightHandIndex3" -p "Character1_RightHandIndex2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.94141547212998589 -1.0648203385699162e-007 -0.032850457537128008 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -31.024101647474481 52.101186334690837 1.1473578991887914 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_RightHandIndex4" -p "Character1_RightHandIndex3";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -0.69462902907778457 -3.5494004180236516e-008 -0.024238907001405297 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -31.718730676552266 52.101186299196833 1.1231189921873861 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_RightHandMiddle1" -p "Character1_RightHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" -3.1269384128082542 0.17778700021847271 0.46335942269178931 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -28.579637045068491 52.208080067077674 0.46335942269178931 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_RightHandMiddle2" -p "Character1_RightHandMiddle1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -1.7251129583450755 -1.4197600251009135e-007 -0.060197382153761969 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -30.304750003413567 52.208079925101671 0.40316204053802734 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_RightHandMiddle3" -p "Character1_RightHandMiddle2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.98089626542581954 -7.0987994149618316e-008 -0.034228129132474361 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -31.285646268839386 52.208079854113677 0.36893391140555298 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_RightHandMiddle4" -p "Character1_RightHandMiddle3";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -0.71144624986275673 -7.0988022571327747e-008 -0.024825737477933263 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -31.997092518702143 52.208079783125655 0.34410817392761972 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_RightHandRing1" -p "Character1_RightHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" -3.1567769413788547 0.13484891378839592 -0.2812462110021316 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -28.609475573639092 52.165141980647597 -0.2812462110021316 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_RightHandRing2" -p "Character1_RightHandRing1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -1.6096527914918362 -1.4197601672094606e-007 -0.056168429743676196 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -30.219128365130928 52.16514183867158 -0.33741464074580779 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_RightHandRing3" -p "Character1_RightHandRing2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.81747105007005416 -7.0988008360473032e-008 -0.028525446473079252 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -31.036599415200982 52.165141767683572 -0.36594008721888704 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_RightHandRing4" -p "Character1_RightHandRing3";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -0.6822578436058393 -3.5494004180236516e-008 -0.023807216187541946 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -31.718857258806821 52.165141732189568 -0.38974730340642899 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_RightHandPinky1" -p "Character1_RightHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" -3.1527532243338712 -0.11110608939713984 -0.88364948084265305 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -28.605451856594108 51.919186977462061 -0.88364948084265305 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_RightHandPinky2" -p "Character1_RightHandPinky1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -1.0811268936375704 -2.3426040442586782e-005 -0.037725650812142519 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -29.686578750231678 51.919163551421619 -0.92137513165479556 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_RightHandPinky3" -p "Character1_RightHandPinky2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.70125395590573802 -1.5191432275685202e-005 -0.024470078717822696 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -30.387832706137416 51.919148359989343 -0.94584521037261826 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_RightHandPinky4" -p "Character1_RightHandPinky3";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -0.59190642032071139 -1.284882822005784e-005 -0.020654427149761956 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -30.979739126458128 51.919135511161123 -0.96649963752238022 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".radi" 0.35494000659722996;
createNode joint -n "Character1_Neck" -p "Character1_Spine2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0 4.4959067502315762 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 51.466300956598332 0 1;
	setAttr ".typ" 7;
	setAttr ".radi" 1.0648200197916899;
createNode joint -n "Character1_Head" -p "Character1_Neck";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0 7.0988001319445928 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 58.565101088542924 0 1;
	setAttr ".typ" 8;
	setAttr ".radi" 1.0648200197916899;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 11 ".lnk";
	setAttr -s 11 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr -s 3 ".dli[1:2]"  1 2;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n"
		+ "            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n"
		+ "            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n"
		+ "            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n"
		+ "            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n"
		+ "                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n"
		+ "            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n"
		+ "                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n"
		+ "            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n"
		+ "            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n"
		+ "                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 20 100 -ps 2 80 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode materialInfo -n "pasted__materialInfo2";
createNode shadingEngine -n "pasted__pCube1SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode polyTweakUV -n "pasted__polyTweakUV10";
	setAttr ".uopa" yes;
	setAttr -s 589 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.00082872115 -0.0026380224 -0.00082766433
		 -0.0024002208 -0.001082066 -0.0023780218 -0.001082066 -0.0026380224 -0.00065857783
		 -0.0026380224 -0.00065882597 -0.0024498124 -0.00082204328 -0.0022301355 -0.0010820655
		 -0.0022110415 -0.0014229827 -0.0023780218 -0.0014229827 -0.0026380224 -0.001082066
		 -0.0029042033 -0.00082766433 -0.0028820047 -0.00065882551 -0.002832413 -0.00066192192
		 -0.0023705948 -0.0014552827 -0.0022016198 -0.0016750194 -0.0023753576 -0.0016750194
		 -0.0026353584 -0.0014229827 -0.0029042033 -0.0010847064 -0.0030644259 -0.00083228637
		 -0.0030680124 -0.000668208 -0.002923297 -0.00037907244 -0.0024502678 -0.00037902122
		 -0.0023735266 -0.001082066 -0.0021148997 -0.0014839799 -0.0021157619 -0.0016295635
		 -0.0022082208 -0.0018409835 -0.0026307807 -0.0018399941 -0.0023660907 -0.0016750194
		 -0.0029068673 -0.0014552827 -0.0030806055 -0.00037902122 -0.002908699 -0.00037907268
		 -0.0028319575 -0.00029921823 -0.0024391008 -0.00029956832 -0.0023528649 -0.00065857783
		 -0.0023234149 -0.00037902122 -0.0023234149 -0.0017543058 -0.0021180208 -0.0018695028
		 -0.0021142866 -0.0020034537 -0.0022416909 -0.0018420509 -0.0029163377 -0.0016295635
		 -0.0030740045 -0.001481991 -0.0031742125 -0.001080126 -0.0031604001 -0.0006540739
		 -0.0029755679 -0.00037902122 -0.00295881 -0.00029956832 -0.0029293597 -0.00029921776
		 -0.0028431234 -0.00029956832 -0.002302754 -0.00037902122 -0.0023065859 -0.00065857783
		 -0.0023083864 -0.0015964519 -0.0020333685 -0.0017571764 -0.0020118444 -0.0020689375
		 -0.0021211107 -0.0022042701 -0.0023195466 -0.0020034537 -0.0030405349 -0.0018695028
		 -0.0031679384 -0.0017543058 -0.0031642041 -0.00037902122 -0.0029756392 -0.00065857783
		 -0.0029738387 -0.00029956832 -0.0029794711 -0.0016221324 -0.0019101144 -0.0017582531
		 -0.001905559 -0.0018285812 -0.0020095401 -0.0019954541 -0.0020137713 -0.0022042701
		 -0.0029626782 -0.0020689375 -0.0031611144 -0.0017571764 -0.0032703807 -0.0015794269
		 -0.0032621643 -0.0016315253 -0.0018218188 -0.0017558375 -0.0018224949 -0.0018101099
		 -0.0018907285 -0.0019057167 -0.0018937733 -0.0019954541 -0.0032684535 -0.0018285812
		 -0.0032726852 -0.0017582531 -0.003376666 -0.0016247899 -0.003371916 -0.0016458092
		 -0.0015850699 -0.0017663197 -0.0015853514 -0.0018071514 -0.0018170574 -0.00183844
		 -0.0018173198 -0.0019057167 -0.0033884521 -0.0018101099 -0.0033915264 -0.0017590283
		 -0.0034595854 -0.0016485687 -0.0034596203 -0.0016445223 -0.0015176879 -0.0017720637
		 -0.001516271 -0.0017593284 -0.0018912154 -0.0017703009 -0.0018226381 -0.00183844
		 -0.0034649353 -0.0018071514 -0.0034651977 -0.0017592611 -0.0036971821 -0.0016488009
		 -0.0036972172 -0.0017703009 -0.0034596168 -0.0017593284 -0.0033910391 -0.0017829901
		 -0.0037656019 -0.0016246723 -0.0037656531 -0.0018953409 -0.00077931967 -0.0020531155
		 -0.0010596652 -0.001881036 -0.001110016 -0.0017410419 -0.00086401607 -0.0020025922
		 -0.00073443569 -0.0021644991 -0.00094411417 -0.002233759 -0.0011888352 -0.0020181173
		 -0.0013058325 -0.0017863973 -0.0011471993 -0.0016569848 -0.00090991589 -0.0020629037
		 -0.00070939556 -0.0021718009 -0.00081207935 -0.0022838409 -0.0010262193 -0.0023173043
		 -0.0008660176 -0.0022998424 -0.0012753539 -0.0021546909 -0.0013736178 -0.0019006252
		 -0.0013510048 -0.0015305291 -0.0006607754 -0.0016146603 -0.00060386834 -0.0019119059
		 -0.00046415473 -0.0020248722 -0.00053289527 -0.0023489879 -0.0013850915 -0.0022678305
		 -0.0014439452 -0.0014272864 -0.00045115355 -0.0015310762 -0.0003799324 -0.0023745743
		 -0.0014580538 -0.0023396122 -0.0014828395 -0.0017535954 -0.00049053837 -0.0017494067
		 -0.00026850382 -0.0015523286 -0.0002290516 -0.0017155096 -0.00016504605 -0.0015584209
		 -9.5972784e-005 -0.0016528838 -6.2401748e-005 -0.0015670047 -1.4784316e-005 -0.0016072303
		 2.8887334e-010 -0.0058607366 -0.003748738 -0.0059387675 -0.0036707078 -0.0016003492
		 -0.0012319247 -0.0014793553 -0.0010017923 -0.0059775063 -0.0035651671 -0.0016275762
		 -0.0015991593 -0.0012921994 -0.0013937755 -0.0011712055 -0.0011636433 -0.0013553528
		 -0.00076593773 -0.005816075 -0.0035411811 -0.0018580671 -0.0015179859 -0.0017519047
		 -0.0015857648 -0.0013974749 -0.0016359757 -0.00099190383 -0.0015516583 -0.00087092508
		 -0.0013215258 -0.0010473358 -0.00092804065 -0.0011160874 -0.00057964568 -0.0057993564
		 -0.0036522227 -0.0058696973 -0.0036614502 -0.0019728637 -0.0014693063 -0.0018860517
		 -0.00163591 -0.0018268736 -0.0016610739 -0.0010872782 -0.0017157515 -0.00073109107
		 -0.00165893 -0.00062239671 -0.0014521914 -0.00074705528 -0.0010859232 -0.00090788794
		 -0.00070781301 -0.0011306037 -0.00044891564 -0.0012657914 -0.00039146707 -0.0019508681
		 -0.0016107131 -0.0018867941 -0.0017119735 -0.0018594965 -0.001725927 -0.00081364182
		 -0.0018000447 -0.00058359734 -0.0016850788 -0.00049607357 -0.0015186069 -0.00051082665
		 -0.0012399832 -0.00064647436 -0.00089461677 -0.0011269061 -0.00032813367 -0.0011845096
		 -0.00030156464 -0.0013709695 -0.00032449313 -0.0058829393 -0.0035524925 -0.0019205579
		 -0.0017033037 -0.00063887011 -0.001831546 -0.00040567381 -0.0013466652 -0.00042219201
		 -0.0010665453 -0.0011152303 -0.00024889322 -0.0011222694 -0.00025783412 -0.0012420093
		 -0.00026245255 -0.00037171767 -0.0018828124 -0.00033615576 -0.001815173 -0.00037011181
		 -0.0012790256 -0.0011485515 -0.00023493393 -0.00064247922 -0.0017970729 -0.00039503752
		 -0.0019271375 -0.00031100691 -0.0019380443 -0.00027063757 -0.0018612911 -0.00015823232
		 -0.0014767597 -0.00012266844 -0.0014091198 -0.00033432691 -0.001982399 -8.3097337e-005
		 -0.0015045897 -4.272884e-005 -0.0014278064 -9.9348559e-005 -0.0013647652 -0.0003467919
		 -0.001234671 -1.9408963e-005 -0.0013834519 -0.63257688 -0.27923813 -0.63257688 -0.27915138
		 -0.63259226 -0.27910128 -0.63261938 -0.27923813 -0.63264328 -0.27908427 -0.63264328
		 -0.27923813 -0.63267946 -0.27910128 -0.63266748 -0.27923813 -0.63271469 -0.27915138
		 -0.63271469 -0.27923813 -0.00079489208 -0.0018949158 -0.0056612617 -0.0036570055
		 -0.0057919621 -0.0037409216 -0.0010820691 -0.0018415767 -0.00065858057 -0.0019320595
		 -0.00066512497 -0.002725275 0.60944766 0.28407577 -0.0014839841 -0.0018091769 -0.00079394446
		 -0.0019694064 -0.0010820677 -0.0019700089 -0.00065858057 -0.0019617351 -0.0047029508
		 -0.0018827178 -0.0017639033 -0.0018091799 -0.0014839821 -0.0019603339 -0.00079298439
		 -0.0020448738 -0.0055977264 -0.0040408266 -0.0006585801 -0.0019824207 -0.00037902346
		 -0.0019706287 -0.00037902404 -0.0019347623 -0.0015794308 -0.0018686795 -0.0015794298
		 -0.0019628278 -0.0056248363 -0.0037360433 -0.00082538766 -0.0021600793 -0.0056407102
		 -0.0040461477 -0.00029957059 -0.0019777487 -0.00029957129 -0.0019267222 -0.0056030643
		 -0.0039726412 -0.00037902314 -0.0020049936 -0.00029957015 -0.0020139322 -0.0015833909
		 -0.0014481512 -0.0015614388 -0.0015086145 -0.0014166594 -0.0014700774 -0.0014291784
		 -0.0014085029 -0.0016006054 -0.001385557 -0.0014468867 -0.0013474596 -0.0088986168
		 0.0014072101 -0.0092162024 0.001643354 -0.0092581641 0.0015410086 -0.0090934969 0.0013752853
		 -0.0093491394 0.0011590051 -0.0091669299 0.0011012969 -0.0094373133 0.0017213055
		 -0.0095801856 0.0012233953 -0.008993635 0.0010555512 -0.0088542206 0.0012841689;
	setAttr ".uvtk[250:499]" -0.0095398407 0.0017280544 -0.009695109 0.0014032281
		 -0.0088196397 0.0010193621 -0.0087693175 0.0011956599 -0.0095816515 0.0017661321
		 -0.0097239222 0.00152987 -0.0096055884 0.0018450414 -0.0097077275 0.0016223353 -0.0048340838
		 -0.00083979679 -0.0047150031 -0.00095323863 -0.0046389252 -0.00088102167 -0.0047313529
		 -0.00080031995 -0.0044902279 -0.00099576428 -0.0044563548 -0.00090837054 -0.0045998711
		 -0.00081916322 -0.0046866857 -0.00075941166 -0.0047829682 -0.001094822 -0.0044928081
		 -0.0010943486 -0.0044902484 -0.00081717008 -0.0047150031 -0.0012687246 -0.0044899182
		 -0.0012258377 -0.0045486279 -0.00073363207 -0.0045601977 -0.00071980327 -0.0046389252
		 -0.0013409414 -0.0044558095 -0.0013132869 -0.0045811119 -0.00064799289 -0.0046033533
		 -0.00068594702 -0.0048340838 -0.0013821662 -0.0047313529 -0.0014216431 -0.0045998753
		 -0.0014028003 -0.0044894577 -0.0014047837 -0.0046408949 -0.00055252179 -0.0046640392
		 -0.00064673804 -0.0046483632 -0.00070484186 -0.0046626329 -0.00066555775 -0.0046866871
		 -0.0014625567 -0.0045601944 -0.0015021565 -0.0045476118 -0.0014886399 -0.0047729728
		 -0.00055664073 -0.0047549438 -0.00062559388 -0.0046033533 -0.001536016 -0.0045798654
		 -0.0015743222 -0.0048587648 -0.00053128734 -0.0048281653 -0.00061366102 -0.0046483604
		 -0.0015171231 -0.0046626329 -0.0015564051 -0.0046640392 -0.0015752247 -0.0046399082
		 -0.0016697041 -0.0049529015 -0.0004897858 -0.0048861173 -0.00061367062 -0.0047549438
		 -0.0015963694 -0.0047729723 -0.0016653234 -0.0048281653 -0.0016083019 -0.0048587648
		 -0.0016906749 -0.0049654506 -0.0016241472 -0.0049630017 -0.0017314755 -0.0020571488
		 -0.0026322652 -0.0048687775 -0.0019428812 -0.0048883031 -0.0018655969 -0.0020558457
		 -0.0024578513 -0.0020585617 -0.0028211412 -0.004990587 -0.0019188948 -0.0021461933
		 -0.0026368536 -0.0021454298 -0.0025347297 -0.0021469863 -0.0027429317 -0.0088195624
		 0.0009245621 -0.0087188547 0.00092455192 -0.0087188445 0.0010266785 -0.0055344347
		 -0.0040350617 -0.0088196471 0.00082580704 -0.0087188659 0.00081846991 0.60915881
		 0.28414968 -0.0089922072 0.00092711998 -0.65591884 -0.20911287 -0.0050586499 -0.0019615185
		 -0.0011269767 -0.00022052243 -0.0091659464 0.00092828291 -0.008993635 0.00078961882
		 -0.0047036028 -0.0019195069 -0.0093354136 0.00092954148 -0.0046416465 -0.0019114094
		 -0.0091669299 0.00074387365 -0.0093491394 0.00068616582 -0.0095534194 0.00093091099
		 -0.0010795116 -0.00029106857 -0.0095801866 0.00062177517 -0.0048144418 -0.0017469218
		 -0.0040574023 -0.001101403 -0.0040584672 -0.00085390889 -0.0055806772 -0.0037320214
		 -0.0046837865 -0.0018069908 -0.0040570893 -0.0013655507 -0.0041877604 -0.00077271188
		 -0.0047317413 -0.0017719889 -0.0048788404 -0.0018294998 -0.0041859434 -0.0014474427
		 -0.004313122 -0.00068724476 -0.0050139157 -0.0017967152 -0.0048549636 -0.0017840571
		 -0.0043108435 -0.0015335839 -0.0044063712 -0.00064329244 -0.0055589057 -0.0039686183
		 -0.65588909 -0.20907007 -0.0044038543 -0.0015780375 -0.0044972915 -0.00059876614
		 -0.65588969 -0.20911442 -0.65589035 -0.20915818 -0.0044945334 -0.0016230523 -0.0045345598
		 -0.00054091087 -0.65589899 -0.20916729 -0.65593719 -0.20907067 -0.0045314902 -0.0016811081
		 -0.004627516 -0.00041090458 -0.0044366471 -0.00027468047 -0.0044529135 -0.00023866553
		 -0.0046030092 -0.00031267738 -0.0044996082 -0.00021653212 -0.0046104621 -0.00025321203
		 -0.0043891985 -0.00019496898 -0.0044278498 -0.00019701208 -0.0047264271 -0.0021181032
		 -0.0046298448 -0.0021998496 -0.0044624931 -0.00012685932 -0.0045183799 -0.00014722886
		 -0.0045389337 -6.5493849e-005 -0.0045892536 -0.00010585113 -0.0046685552 -0.002132958
		 -0.0045934301 -0.00020030103 -0.0046298746 -2.2061224e-005 -0.0046657561 -9.1744609e-005
		 -0.0046343333 -0.000190626 -0.0047047278 -1.8867037e-006 -0.0047254572 -0.00010329631
		 -0.0048757573 -9.9803234e-005 -0.0047774781 -0.00015919763 -0.0048223403 -0.00023931521
		 -0.0047438457 -0.00023347887 -0.0047035902 -0.00030242422 -0.004677787 -0.00030438855
		 -0.65590036 -0.20906292 -0.0046837819 -0.0004149772 -0.0047317385 -0.00044997744
		 -0.65592963 -0.2091634 -0.0047996347 -0.0004648467 -0.65596354 -0.20914574 -0.0048668436
		 -0.00043968402 -0.65596849 -0.20910326 -0.0048841489 -0.00039609132 -0.0050074942
		 -0.00042680182 -0.0048687039 -0.0003557365 -0.0049911621 -0.00030334952 -0.0048023467
		 -0.00033002766 -0.0048710136 -0.00027950748 -0.0047029438 -0.00033924956 -0.0047194501
		 -0.00031701833 -0.0046882397 -0.00032325677 0.60945505 0.28399283 0.60941321 0.28418207
		 -0.0046692458 -0.00018761682 -0.0046882471 -0.0018986803 -0.004874438 -0.0021187537
		 -0.0047039553 -0.00019906589 -0.004633985 -0.00019068496 -0.0044996105 -0.0020053585
		 -0.0047046943 -0.0022200369 -0.0047446941 -0.00023297789 -0.0050117355 -0.00058772106
		 -0.0044624801 -0.0020950255 -0.0045183706 -0.0020746659 -0.0050576925 -0.00053369929
		 -0.0045934296 -0.0020216056 -0.0050951974 -0.00033713732 -0.65379381 -0.28668115
		 -0.65370685 -0.28666157 -0.65377766 -0.28658286 -0.65383929 -0.28660998 -0.65385228
		 -0.28650194 -0.6538831 -0.28652164 0.0014852849 0.001192282 -0.0049751922 -0.0001473966
		 -0.0049224868 -0.00026542388 -0.0046104705 -0.0019686993 -0.00070774043 -0.0021750394
		 -0.0043891962 -0.0020268995 -0.0044278484 -0.0020248652 -0.00063398015 -0.0023149082
		 -0.00066512497 -0.002556951 -0.00038588216 -0.0025704026 -0.0056580822 -0.0034444216
		 -0.005660072 -0.0035505074 -0.00030662646 -0.0025761286 0.60933405 0.28417715 -0.001561972
		 -0.0021287785 -0.0012863288 -0.002064286 -0.0013208167 -0.0019578354 -0.0014682143
		 -0.0020045268 -0.0013497116 -0.0018514375 -0.001479885 -0.0018928717 -0.0013660917
		 -0.0017693762 -0.0014949772 -0.0018051543 -0.0014279594 -0.0015436539 -0.0015388322
		 -0.0015721743 -0.0044366606 -0.0019471976 -0.0011722803 0.0066008144 -0.0058798734
		 -0.0039910241 -0.001098832 -0.002040243 -0.0012174669 -0.0019519993 -0.0047332128
		 0.015767889 -0.0012997317 -0.0018416652 -0.0044529201 -0.0019832163 -0.0013542629
		 -0.0017632084 -0.0096345441 -0.0015343986 -0.0020518908 0.016609265 -0.0019480687
		 0.016377265 -0.0018766343 0.016581731 -0.001949264 0.016655246 -0.0018197813 0.016694292
		 -0.0018527585 0.016727017 -0.0015357767 -0.0020103508 -0.004779893 -0.0020721285
		 -0.0047392254 -0.0019893816 -0.0015502908 -0.0019015548 -0.0046691396 -0.0020061093
		 -0.0015635137 -0.0018148406 -0.0056540715 -0.0039769309 -0.0056650732 -0.0037398336
		 -0.0047013112 -0.0020841789 -0.0015918482 -0.0015789394 0.60937732 0.28428826 -0.0058197579
		 -0.0040520146 -0.001599923 -0.0015109814 0.60926265 0.28438169 0.6094622 0.28399289
		 -0.0046766237 -0.001907501 -0.0017974594 0.016576866 -0.0017630323 0.01668315 -0.0050834203
		 -0.0016994799 -0.0010285255 -0.00039309298 -0.0018333892 0.016470689 -0.00175564
		 0.016766101 -0.0017484881 0.016766069 -0.0018404144 -0.0018300894 -0.0017968161 -0.0018262299
		 -0.0018175485 -0.0015895392 -0.0018611462 -0.0015933984 -0.0009849529 -0.00050260301
		 -0.004719459 -0.0019049187 -0.0018244443 -0.0015214933 -0.0018869318 -0.0015270243
		 -0.0057847812 -0.0040445994;
	setAttr ".uvtk[500:588]" 0.0093776379 -0.19967505 0.0093884273 -0.19972558
		 0.0094223469 -0.19970793 0.0094273183 -0.19966544 0.0093491366 -0.19972038 0.0093577718
		 -0.19972949 0.0093960306 -0.19963287 0.00935918 -0.19962512 0.0093485257 -0.1996766
		 0.0093479054 -0.19963227 -0.00075846084 -0.0031650474 -0.0057759713 -0.0039774529
		 -0.000488499 -0.0017350776 -0.00040097494 -0.0015686057 -0.00031057509 -0.0013966645
		 -0.0058841002 -0.0040606381 -0.0018953409 -0.00077931938 -0.0017410419 -0.0008640163
		 -0.0016146603 -0.00060386845 -0.001753595 -0.00049053848 -0.0059116213 -0.0037555578
		 -0.0048670419 -0.0020472994 -0.0019118021 -0.00031929673 -0.0020627971 -0.00038242183
		 -0.58288974 -0.23746061 -0.58293223 -0.23746061 -0.58290511 -0.23759745 -0.58288974
		 -0.23754734 -0.58295614 -0.23746061 -0.58295614 -0.23761447 -0.58298033 -0.23746061
		 -0.58299232 -0.23759745 -0.58302754 -0.23746061 -0.58302754 -0.23754734 -0.0007768083
		 -0.0033519675 -0.0010593283 -0.0034261399 -0.0010481687 -0.0035787714 -0.0007763271
		 -0.0034773897 -0.00078129605 -0.0032776063 -0.0010686958 -0.00329802 -0.0014578089
		 -0.0034877665 -0.0013619821 -0.0036519486 -0.00064198527 -0.0033266398 -0.00064356858
		 -0.0033049819 -0.0048023546 -0.0018919355 -0.0059380024 -0.0034444216 -0.0014688339
		 -0.0033369819 -0.00064573268 -0.0032753851 -0.001736984 -0.0035081783 -0.0015930051
		 -0.0036770387 -0.00030662646 -0.0027060953 -0.0058289887 -0.0039842036 -0.00038588341
		 -0.0027118225 -0.00064724108 -0.0032547542 -0.0015642092 -0.0033414557 -0.0015573417
		 -0.0034353826 -0.00036495359 -0.0032818981 -0.00036756898 -0.0032461269 -0.0015711667
		 -0.0032462974 -0.00028512577 -0.0032841216 -0.00028884661 -0.0032332311 -0.00029148516
		 -0.0031971436 -0.00037007511 -0.0032118526 -0.0057940003 -0.0041085798 -0.005634774
		 -0.0041089384 0.60939091 0.28406462 -0.0048236516 -0.0019860177 -0.005795233 -0.004173486
		 -0.0056368681 -0.0041724634 -0.0088986177 0.00043795927 -0.0090934969 0.00046988498
		 -0.009258165 0.00030416262 -0.0092162043 0.00020181637 -0.0046168249 -0.0020870555
		 0.60935795 0.28403193 -0.0088542197 0.0005610009 -0.00453891 -0.0021564011 -0.0045896363
		 -0.0021103187 -0.0094373152 0.00012386541 -0.0087693166 0.00064950978 0.60926145
		 0.28410366 -0.009695109 0.00044194356 -0.0095398417 0.00011711686 -0.0097239232 0.00031530214
		 -0.0095816525 7.9039586e-005 -0.0097077284 0.00022283616 -0.0096055893 7.091019e-008
		 -0.0046275575 -0.001811042 -0.0046030302 -0.0019092347;
createNode polyMapSewMove -n "pasted__polyMapSewMove43";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[537]" "e[545]" "e[553]";
createNode polyMapSewMove -n "pasted__polyMapSewMove42";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[221]";
createNode polyMapSewMove -n "pasted__polyMapSewMove41";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[176]" "e[184]";
createNode polyMapSewMove -n "pasted__polyMapSewMove40";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[512]" "e[515]";
createNode polyMapSewMove -n "pasted__polyMapSewMove39";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[626]" "e[647]";
createNode polyMapSewMove -n "pasted__polyMapSewMove38";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[141]" "e[143]";
createNode polyTweakUV -n "pasted__polyTweakUV9";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[380]" -type "float2" 0.0046031419 0.014672438 ;
	setAttr ".uvtk[408]" -type "float2" -0.0040277112 -0.0025892537 ;
	setAttr ".uvtk[411]" -type "float2" -0.0083431359 -0.0057538971 ;
	setAttr ".uvtk[415]" -type "float2" -0.0071923602 -0.0046031214 ;
createNode polyMapSewMove -n "pasted__polyMapSewMove37";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[163]" "e[171]" "e[179]";
createNode polyMapSewMove -n "pasted__polyMapSewMove36";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[441]";
createNode polyMapSewMove -n "pasted__polyMapSewMove35";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[104]" "e[481]";
createNode polyTweakUV -n "pasted__polyTweakUV8";
	setAttr ".uopa" yes;
	setAttr -s 616 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -1.1299268e-005 8.2972591e-008 -1.1299302e-005
		 7.5514606e-008 -1.1291323e-005 7.4818395e-008 -1.1291323e-005 8.2972591e-008 -1.1304604e-005
		 8.2972591e-008 -1.1304597e-005 7.7069906e-008 -1.1299373e-005 7.0088397e-008 -1.1291323e-005
		 6.9581525e-008 -1.1280631e-005 7.4818395e-008 -1.1280631e-005 8.2972591e-008 -1.1291323e-005
		 9.1320608e-008 -1.1299302e-005 9.0624411e-008 -1.1304597e-005 8.9069111e-008 -1.1304604e-005
		 7.4677416e-008 -1.1279618e-005 6.9286038e-008 -1.1272727e-005 7.4734842e-008 -1.1272727e-005
		 8.2889045e-008 -1.1280631e-005 9.1320608e-008 -1.129124e-005 9.6345545e-008 -1.1299157e-005
		 9.6458024e-008 -1.1304302e-005 9.1919432e-008 -1.1313371e-005 7.7084188e-008 -1.1313372e-005
		 7.4677416e-008 -1.1291323e-005 6.6566301e-008 -1.1278717e-005 6.6593344e-008 -1.1274152e-005
		 6.9493062e-008 -1.1267522e-005 8.2745473e-008 -1.1267553e-005 7.4444209e-008 -1.1272727e-005
		 9.1404154e-008 -1.1279618e-005 9.6852972e-008 -1.1313372e-005 9.1461601e-008 -1.1313371e-005
		 8.9054829e-008 -1.1315875e-005 7.6733969e-008 -1.1315864e-005 7.4029423e-008 -1.1304604e-005
		 7.3105802e-008 -1.1313372e-005 7.3105802e-008 -1.127024e-005 6.6664185e-008 -1.1266627e-005
		 6.6547074e-008 -1.1262426e-005 7.0542754e-008 -1.1267488e-005 9.1701168e-008 -1.1274152e-005
		 9.6645955e-008 -1.127878e-005 9.9788693e-008 -1.1291383e-005 9.935551e-008 -1.1304746e-005
		 9.3558761e-008 -1.1313372e-005 9.3033194e-008 -1.1315864e-005 9.2109566e-008 -1.1315875e-005
		 8.9405013e-008 -1.1315864e-005 7.245783e-008 -1.1313372e-005 7.2578011e-008 -1.1304604e-005
		 7.2634478e-008 -1.127519e-005 6.4009299e-008 -1.127015e-005 6.3334262e-008 -1.1260372e-005
		 6.6761096e-008 -1.1256127e-005 7.2984484e-008 -1.1262426e-005 9.559627e-008 -1.1266627e-005
		 9.9591929e-008 -1.127024e-005 9.9474811e-008 -1.1313372e-005 9.3560999e-008 -1.1304604e-005
		 9.3504532e-008 -1.1315864e-005 9.3681173e-008 -1.1274385e-005 6.0143783e-008 -1.1270116e-005
		 6.0000914e-008 -1.126791e-005 6.3261993e-008 -1.1262677e-005 6.3394694e-008 -1.1256127e-005
		 9.3154512e-008 -1.1260372e-005 9.9377907e-008 -1.127015e-005 1.0280474e-007 -1.1275724e-005
		 1.0254706e-007 -1.1274091e-005 5.7373704e-008 -1.1270192e-005 5.739491e-008 -1.1268489e-005
		 5.9534866e-008 -1.1265492e-005 5.963129e-008 -1.1262677e-005 1.027443e-007 -1.126791e-005
		 1.0287702e-007 -1.1270116e-005 1.0613809e-007 -1.1274302e-005 1.0598912e-007 -1.1273642e-005
		 4.9948735e-008 -1.1269863e-005 4.9957563e-008 -1.1268582e-005 5.7224376e-008 -1.1267601e-005
		 5.7232604e-008 -1.1265492e-005 1.0650773e-007 -1.1268489e-005 1.0660414e-007 -1.1270092e-005
		 1.0873862e-007 -1.1273556e-005 1.0873972e-007 -1.1273683e-005 4.7835485e-008 -1.1269683e-005
		 4.7791051e-008 -1.1270082e-005 5.9550139e-008 -1.1269738e-005 5.7399401e-008 -1.1267601e-005
		 1.0890641e-007 -1.1268582e-005 1.0891464e-007 -1.1270085e-005 1.1619018e-007 -1.1273549e-005
		 1.1619128e-007 -1.1269738e-005 1.0873961e-007 -1.1270082e-005 1.0658886e-007 -1.1269341e-005
		 1.1833598e-007 -1.1274306e-005 1.1833758e-007 -1.1265816e-005 2.4678624e-008 -1.1260869e-005
		 3.3470883e-008 -1.1266266e-005 3.5049997e-008 -1.1270656e-005 2.733489e-008 -1.1262453e-005
		 2.3270962e-008 -1.1257375e-005 2.9846944e-008 -1.1255203e-005 3.7521939e-008 -1.1261966e-005
		 4.1191235e-008 -1.1269233e-005 3.6216147e-008 -1.1273292e-005 2.877441e-008 -1.1260561e-005
		 2.2485649e-008 -1.1257146e-005 2.570604e-008 -1.1253633e-005 3.2421944e-008 -1.1252583e-005
		 2.7397663e-008 -1.1253131e-005 4.023536e-008 -1.1257683e-005 4.3317129e-008 -1.1265651e-005
		 4.2607937e-008 -1.1277258e-005 2.0960815e-008 -1.1274619e-005 1.9176083e-008 -1.1265297e-005
		 1.4794354e-008 -1.1261754e-005 1.695021e-008 -1.1251589e-005 4.367697e-008 -1.1254135e-005
		 4.552275e-008 -1.1280496e-005 1.4386608e-008 -1.127724e-005 1.2152955e-008 -1.1250787e-005
		 4.596523e-008 -1.1251883e-005 4.674256e-008 -1.1270262e-005 1.5621804e-008 -1.1270394e-005
		 8.6583087e-009 -1.1276574e-005 7.4209994e-009 -1.1271456e-005 5.4136438e-009 -1.1276383e-005
		 3.2474112e-009 -1.1273421e-005 2.1945494e-009 -1.1276114e-005 2.354853e-010 -1.1274852e-005
		 4.63804e-012 -0.00072930206 8.8241578e-008 -0.00072929962 8.5794383e-008 -1.1275069e-005
		 3.8873324e-008 -1.1278863e-005 3.1655858e-008 -0.00072929845 8.2484384e-008 -1.1274215e-005
		 5.0390611e-008 -1.1284733e-005 4.3949321e-008 -1.1288527e-005 3.6731866e-008 -1.1282752e-005
		 2.4258936e-008 -0.00072930352 8.1732132e-008 -1.1266986e-005 4.7844832e-008 -1.1270315e-005
		 4.9970527e-008 -1.128143e-005 5.1545253e-008 -1.1294151e-005 4.8900873e-008 -1.1297945e-005
		 4.1683411e-008 -1.1292412e-005 2.9342845e-008 -1.1290255e-005 1.8416406e-008 -0.00072930404
		 8.5214644e-008 -0.00072930183 8.5504041e-008 -1.1263385e-005 4.6318132e-008 -1.1266108e-005
		 5.1543193e-008 -1.1267964e-005 5.2332389e-008 -1.1291159e-005 5.4047199e-008 -1.1302331e-005
		 5.226515e-008 -1.1305739e-005 4.578137e-008 -1.130183e-005 3.4294391e-008 -1.1296785e-005
		 2.2436016e-008 -1.1289801e-005 1.4316423e-008 -1.1285561e-005 1.2514707e-008 -1.1264076e-005
		 5.0752963e-008 -1.1266085e-005 5.3928712e-008 -1.126694e-005 5.4366325e-008 -1.1299741e-005
		 5.6690819e-008 -1.1306956e-005 5.3085238e-008 -1.1309701e-005 4.7864308e-008 -1.1309238e-005
		 3.9126057e-008 -1.1304985e-005 2.8294597e-008 -1.1289916e-005 1.0528433e-008 -1.128811e-005
		 9.6951691e-009 -1.1282262e-005 1.0414258e-008 -0.00072930142 8.2086878e-008 -1.1265026e-005
		 5.3656809e-008 -1.1305223e-005 5.7678772e-008 -1.1312536e-005 4.2471839e-008 -1.1312019e-005
		 3.3686657e-008 -1.1290283e-005 8.0432763e-009 -1.1290062e-005 8.3236831e-009 -1.1286306e-005
		 8.4685272e-009 -1.1313601e-005 5.9286599e-008 -1.1314716e-005 5.7165277e-008 -1.1313652e-005
		 4.035051e-008 -1.1289238e-005 7.6054825e-009 -1.1305109e-005 5.6597621e-008 -1.131287e-005
		 6.0677664e-008 -1.1315506e-005 6.1019726e-008 -1.1316772e-005 5.8611644e-008 -1.1324022e-005
		 4.6551886e-008 -1.1325137e-005 4.4430553e-008 -1.1314773e-005 6.2410791e-008 -1.1326379e-005
		 4.7424695e-008 -1.1327645e-005 4.5016606e-008 -1.1325868e-005 4.3039496e-008 -1.1314383e-005
		 3.8959453e-008 -1.1328259e-005 4.3625548e-008 0.04895784 -0.10319754 0.04895784 -0.10319754
		 0.04895784 -0.10319754 0.048957843 -0.10319754 0.048957843 -0.10319755 0.048957843
		 -0.10319754 0.048957843 -0.10319754 0.048957843 -0.10319754 0.048957843 -0.10319754
		 0.048957843 -0.10319754 -1.130033e-005 5.9667123e-008 -0.00072930835 8.5364647e-008
		 -0.00072930427 8.799644e-008 -1.1291322e-005 5.7993354e-008 -1.1304604e-005 6.0832029e-008
		 -1.13044e-005 8.5709026e-008 0.0018697609 0.0019109506 -1.1278717e-005 5.6977225e-008
		 -1.1300359e-005 6.2003309e-008 -1.1291323e-005 6.202221e-008 -1.1304604e-005 6.1762719e-008
		 0.00085202442 5.9283632e-008 -1.1269939e-005 5.6977321e-008 -1.1278717e-005 6.1718779e-008
		 -1.130039e-005 6.4370134e-008 -0.00072931033 6.7599807e-008 -1.1304604e-005 6.2411466e-008
		 -1.1313372e-005 6.2041643e-008 -1.1313372e-005 6.0916797e-008 -1.1275724e-005 5.8843362e-008
		 -1.1275724e-005 6.1796989e-008 -0.00072930951 8.7843446e-008 -1.1299373e-005 6.7983237e-008
		 -0.00072930875 6.776397e-008 -1.1315864e-005 6.2264945e-008 -1.1315864e-005 6.066464e-008
		 -0.00072931015 6.546135e-008 -1.1313372e-005 6.3119408e-008 -1.1315864e-005 6.3399739e-008
		 -1.12756e-005 4.5654659e-008 -1.1276288e-005 4.7550923e-008 -1.1280829e-005 4.6342315e-008
		 -1.1280436e-005 4.4411205e-008 -1.127506e-005 4.3691571e-008 -1.1279881e-005 4.2496751e-008
		 -0.0056755235 1.523803e-008 -0.0056755133 7.8320355e-009 -0.0056755124 1.1041813e-008
		 -0.0056755175 1.6239262e-008 -0.0056755096 2.3022288e-008 -0.0056755152 2.4832147e-008
		 -0.0056755068 5.3872995e-009 -0.0056755021 2.1002869e-008 -0.0056755203 2.6266832e-008
		 -0.0056755249 1.9096873e-008;
	setAttr ".uvtk[250:499]" -0.0056755035 5.175643e-009 -0.0056754984 1.5362914e-008
		 -0.0056755259 2.6588083e-008 -0.0056755277 2.1872715e-008 -0.0056755021 3.981441e-009
		 -0.0056754975 1.1391144e-008 -0.0056755012 1.5066703e-009 -0.0056754979 8.4912273e-009
		 0.00085202849 2.657532e-008 0.00085202476 3.0133108e-008 0.00085202238 2.7868223e-008
		 0.00085202529 2.533724e-008 0.00085201772 3.1466808e-008 0.00085201667 2.8725946e-008
		 0.00085202116 2.5928205e-008 0.00085202389 2.4054264e-008 0.00085202692 3.4573475e-008
		 0.00085201778 3.4558632e-008 0.00085201772 2.5865697e-008 0.00085202476 4.0027448e-008
		 0.00085201772 3.8682423e-008 0.00085201958 2.3245759e-008 0.00085201993 2.2812058e-008
		 0.00085202238 4.2292328e-008 0.00085201667 4.1425022e-008 0.00085202057 2.0559927e-008
		 0.00085202127 2.1750251e-008 0.00085202849 4.3585228e-008 0.00085202529 4.4823306e-008
		 0.00085202116 4.4232358e-008 0.00085201772 4.4294563e-008 0.00085202244 1.7565741e-008
		 0.00085202319 2.0520572e-008 0.00085202267 2.2342837e-008 0.00085202313 2.11108e-008
		 0.00085202389 4.6106447e-008 0.00085201993 4.7348387e-008 0.00085201953 4.6924473e-008
		 0.00085202657 1.7694921e-008 0.00085202605 1.9857444e-008 0.00085202127 4.8410296e-008
		 0.00085202052 4.9611664e-008 0.0008520293 1.6899781e-008 0.00085202832 1.9483203e-008
		 0.00085202267 4.7817771e-008 0.00085202313 4.9049742e-008 0.00085202319 4.9639965e-008
		 0.00085202244 5.2603053e-008 0.00085203192 1.5763245e-008 0.00085203012 1.9483505e-008
		 0.00085202605 5.0303115e-008 0.00085202657 5.2465662e-008 0.00085202832 5.067734e-008
		 0.0008520293 5.3260742e-008 0.00085203262 5.1174286e-008 0.00085203256 5.4540337e-008
		 -1.1260742e-005 8.2792035e-008 0.0008520296 6.117142e-008 0.0008520296 5.8766354e-008
		 -1.1260783e-005 7.7322028e-008 -1.1260698e-005 8.8715602e-008 0.00085203344 6.0419154e-008
		 -1.1257949e-005 8.2935934e-008 -1.1257973e-005 7.9733105e-008 -1.1257925e-005 8.626278e-008
		 -0.60478604 -0.08217559 -0.60478604 -0.08217559 -0.60478604 -0.082175598 -0.60478604
		 -0.082175598 -0.60478604 -0.08217559 -0.60478604 -0.08217559 -1.1317125e-005 -0.057331908
		 -0.0056755207 3.0294714e-008 -0.0056755259 3.0374935e-008 0.00085203553 6.1755927e-008
		 -1.1289914e-005 7.1535058e-009 -0.0056755152 3.0258242e-008 -0.0056755203 3.4607055e-008
		 -0.0056755259 3.4285819e-008 -0.0056755096 3.0218771e-008 0.00085202249 6.0184398e-008
		 -0.0056755152 3.6041726e-008 -0.0056755096 3.7851571e-008 -0.0056755031 3.0175819e-008
		 -1.1291403e-005 9.3659889e-009 -0.0056755021 3.9871004e-008 0.00085202744 5.5344515e-008
		 0.00085200416 3.4779873e-008 0.00085200416 2.7017908e-008 -0.00072931085 8.7717311e-008
		 0.00085202378 5.6908668e-008 0.00085200416 4.306413e-008 0.00085200823 2.4471388e-008
		 0.00085202529 5.5810929e-008 0.00085203006 5.7500728e-008 0.00085200818 4.563244e-008
		 0.00085201219 2.1790953e-008 0.00085203414 5.6586401e-008 0.00085202954 5.613358e-008
		 0.00085201208 4.8334019e-008 0.0008520151 2.0412511e-008 -0.00072931155 6.5335193e-008
		 0.69561058 -0.078353971 0.00085201504 4.9728182e-008 0.00085201795 1.9016067e-008
		 0.69561058 -0.078353971 0.69561058 -0.078353971 0.00085201784 5.1139946e-008 0.00085201912
		 1.7201597e-008 0.69561058 -0.078353971 0.69561058 -0.078353971 0.000852019 5.2960708e-008
		 -0.0021021953 0.0057328423 -0.0021021971 0.0057328949 -0.002102196 0.0057328646 -0.0021021939
		 0.0057328991 -0.0021021948 0.0057328353 -0.002102196 0.0057328381 -0.0021021967 0.0057328623
		 -0.0021021955 0.0057328627 0.00085201825 6.6778143e-009 0.00085201574 6.9194237e-009
		 0.00085201685 4.2160231e-009 0.00085201859 4.854857e-009 0.00085201924 2.2915245e-009
		 0.00085202086 3.7370587e-009 0.0008520211 8.3765634e-009 0.00085202098 6.519318e-009
		 0.00085202209 4.637053e-010 0.00085202331 3.0274538e-009 0.00085202168 4.4667972e-009
		 0.00085202447 6.3818312e-011 0.00085202511 3.4936296e-009 0.00085202983 3.3675427e-009
		 0.00085202651 5.1920162e-009 0.00085202814 7.742889e-009 0.0008520257 7.5598487e-009
		 0.00085202442 9.7221271e-009 0.0008520236 9.7837329e-009 0.69561058 -0.078353971
		 0.00085202378 1.3252038e-008 0.00085202529 1.4349723e-008 0.69561058 -0.078353971
		 0.00085202744 1.4816056e-008 0.69561058 -0.078353971 0.00085202954 1.4026899e-008
		 0.69561058 -0.078353971 0.00085203006 1.2659735e-008 0.00085203414 1.353119e-008
		 0.0008520296 1.1394118e-008 0.00085203338 9.7694945e-009 0.0008520275 1.0587833e-008
		 0.00085202965 9.0034078e-009 0.00085202442 1.0877052e-008 0.00085202494 1.0179831e-008
		 0.00085202395 1.0375483e-008 0.0018697607 0.0019109532 0.001869761 0.0019109473 -0.58758652
		 -0.09173093 -0.58758652 -0.09173093 -0.58758652 -0.09173093 -0.58758652 -0.09173093
		 -0.58758652 -0.09173093 -0.58758652 -0.091730922 -0.58758652 -0.09173093 -0.58758652
		 -0.09173093 0.66694504 -0.082175717 0.66694504 -0.082175717 0.66694498 -0.082175717
		 0.66694498 -0.082175717 0.66694498 -0.082175709 0.66694498 -0.082175709 0.11226209
		 -0.11275283 0.11226209 -0.11275283 0.11226209 -0.11275283 0.11226209 -0.11275283
		 0.11226209 -0.11275283 0.11226209 -0.11275283 -0.054658219 -0.11466358 0.00085203291
		 4.8601181e-009 0.00085203128 8.5617149e-009 -0.054658223 -0.11466358 0.61521178 -0.099375226
		 0.61521178 -0.099375226 0.61521178 -0.099375226 0.61521178 -0.099375226 -1.13044e-005
		 8.0430013e-008 -1.1313157e-005 8.0851883e-008 -0.00072930846 7.8697539e-008 -0.00072930841
		 8.2024627e-008 -1.1315643e-005 8.1031466e-008 0.0018697653 0.0019109474 -1.1276272e-005
		 6.7001572e-008 -1.1284917e-005 6.4978948e-008 -1.1283835e-005 6.1640421e-008 -1.1279212e-005
		 6.3104764e-008 -1.1282928e-005 5.8302614e-008 -1.1278847e-005 5.960208e-008 -1.1282415e-005
		 5.5728989e-008 -1.1278373e-005 5.6851068e-008 -1.1280475e-005 4.8649838e-008 -1.1276998e-005
		 4.9544298e-008 -0.054658223 -0.11466358 -0.054658219 -0.11466358 -0.00072930148 6.6037884e-008
		 -1.1290796e-005 6.4224906e-008 -1.1287077e-005 6.1457385e-008 -0.054658219 -0.11466357
		 -1.1284496e-005 5.7996132e-008 -0.054658223 -0.11466358 -1.1282786e-005 5.5535555e-008
		 -0.054658223 -0.11466358 -0.05658428 -0.12804066 -0.056584284 -0.12804066 -0.056584284
		 -0.12804066 -0.056584284 -0.12804066 -0.056584287 -0.12804066 -0.056584284 -0.12804066
		 -1.1277093e-005 6.3287416e-008 0.0008520268 6.5224903e-008 0.00085202552 6.262978e-008
		 -1.1276638e-005 5.9875333e-008 0.00085202331 6.3154395e-008 -1.1276224e-005 5.7154853e-008
		 -0.00072930858 6.5595884e-008 -0.00072930823 8.796232e-008 0.00085202436 6.5602826e-008
		 -1.1275335e-005 4.9756469e-008 0.0018697622 0.001910944 -0.0007293034 6.7950673e-008
		 -1.1275081e-005 4.7625154e-008 0.0018697677 0.0019109411 0.00186976 0.0019109532
		 0.0008520236 6.0061822e-008 -0.056584287 -0.12804066 -0.056584287 -0.12804066 0.00085203635
		 5.3536887e-008 -1.1293002e-005 1.25657e-008 -0.056584287 -0.12804066 -0.056584287
		 -0.12804066 -0.056584287 -0.12804066 -1.1267539e-005 5.7633088e-008 -1.1268907e-005
		 5.7512047e-008 -1.1268256e-005 5.0088904e-008 -1.1266889e-005 5.0209934e-008 -1.1294368e-005
		 1.6000177e-008 0.00085202494 5.9980835e-008 -1.126804e-005 4.7954831e-008 -1.126608e-005
		 4.8128296e-008 -0.00072930474 6.772084e-008;
	setAttr ".uvtk[500:615]" -0.0038784069 -0.10128632 -0.0038784074 -0.10128632
		 -0.0038784088 -0.10128632 -0.003878409 -0.10128632 -0.003878406 -0.10128632 -0.0038784065
		 -0.10128632 -0.0038784076 -0.10128632 -0.0038784065 -0.10128632 -0.003878406 -0.10128632
		 -0.003878406 -0.10128632 -1.1301472e-005 9.9501257e-008 -0.00072930474 6.5612255e-008
		 -1.1309939e-005 5.4653309e-008 -1.1312683e-005 4.943238e-008 -1.1315519e-005 4.4039929e-008
		 -0.00072930136 6.8221134e-008 -1.1265816e-005 2.4678615e-008 -1.1270656e-005 2.7334899e-008
		 -1.1274619e-005 1.9176086e-008 -1.1270262e-005 1.5621808e-008 -0.00072930049 8.8455458e-008
		 0.00085202954 6.4446205e-008 -1.1265301e-005 1.0251287e-008 -1.1260565e-005 1.223103e-008
		 -0.10666107 -0.11275253 -0.10666107 -0.11275253 -0.10666107 -0.11275253 -0.10666107
		 -0.11275253 -0.10666107 -0.11275253 -0.10666107 -0.11275253 -0.10666107 -0.11275253
		 -0.10666107 -0.11275253 -0.10666107 -0.11275253 -0.10666107 -0.11275253 -1.1300896e-005
		 1.0536349e-007 -1.1292036e-005 1.076897e-007 -1.1292385e-005 1.1247656e-007 -1.1300912e-005
		 1.0929701e-007 -1.1300756e-005 1.0303135e-007 -1.1291742e-005 1.0367157e-007 -1.1279539e-005
		 1.0962244e-007 -1.1282544e-005 1.1477156e-007 -1.1305125e-005 1.0456915e-007 -1.1305076e-005
		 1.0388991e-007 0.0008520275 5.957272e-008 -0.00072929967 7.8697539e-008 -1.1279193e-005
		 1.048935e-007 -1.1305007e-005 1.0296169e-007 -1.1270783e-005 1.102626e-007 -1.1275299e-005
		 1.1555844e-007 -1.1315643e-005 8.5107509e-008 -0.00072930311 6.5823983e-008 -1.1313157e-005
		 8.5287127e-008 -1.130496e-005 1.0231467e-007 -1.1276202e-005 1.0503381e-007 -1.1276417e-005
		 1.0797957e-007 -1.1313813e-005 1.0316595e-007 -1.1313731e-005 1.0204409e-007 -1.1275984e-005
		 1.0204943e-007 -1.1316317e-005 1.0323569e-007 -1.13162e-005 1.0163965e-007 -1.1316118e-005
		 1.0050786e-007 -1.1313653e-005 1.0096917e-007 -0.00025107493 -0.089819938 -0.00025107485
		 -0.089819938 -0.00025107659 -0.089819938 -0.00025107665 -0.089819938 -0.00025107697
		 -0.089819938 -0.00025107682 -0.089819938 -0.0056755235 4.5635879e-008 -0.0056755175
		 4.4634618e-008 -0.0056755124 4.9832039e-008 -0.0056755133 5.3041845e-008 -1.1324306e-005
		 -0.057331901 -1.1322713e-005 -0.057331901 -0.0056755249 4.1777021e-008 -1.1328259e-005
		 -0.057331912 -1.1325256e-005 -0.057331905 -0.0056755068 5.5486559e-008 -0.0056755277
		 3.9001186e-008 -1.1322134e-005 -0.057331905 -0.0056754984 4.5510923e-008 -0.0056755035
		 5.5698209e-008 -0.0056754975 4.9482679e-008 -0.0056755021 5.6892397e-008 -0.0056754979
		 5.2382617e-008 -0.0056755012 5.9367167e-008 0.6495657 -0.013377414 0.64956564 -0.013377417
		 0.64956564 -0.013377422 0.6495657 -0.013377422 0.64956564 -0.013377418 0.6495657
		 -0.013377422 0.6495657 -0.013377423 0.64956564 -0.013377424 0.00085201825 6.3481437e-008
		 0.00085201859 6.5304484e-008 0.00085201685 6.5943006e-008 0.00085201574 6.3239405e-008
		 0.0008520211 6.1783162e-008 0.00085202098 6.3640393e-008 0.00085202086 6.6422636e-008
		 0.00085201924 6.786788e-008 0.00085202168 6.5693044e-008 0.00085202331 6.7132653e-008
		 0.00085202209 6.9230524e-008 0.00085202511 6.6666772e-008 0.00085202447 6.9863638e-008
		 -0.054658223 -0.11466358 0.00085202977 6.6687171e-008 0.00085202395 5.9785187e-008
		 0.0008520282 6.2524279e-008 0.0018697619 0.0019109511 0.00085202442 6.0438353e-008
		 0.69561058 -0.078353971 -0.00072931231 6.7418995e-008;
createNode polyMapSewMove -n "pasted__polyMapSewMove34";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[491]" "e[498:499]";
createNode polyMapSewMove -n "pasted__polyMapSewMove33";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[119]" "e[126:127]";
createNode polyMapSewMove -n "pasted__polyMapSewMove32";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[77]" "e[478]";
createNode polyTweakUV -n "pasted__polyTweakUV7";
	setAttr ".uopa" yes;
	setAttr -s 627 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.0011728354 -0.003727258 -0.0011713421
		 -0.0033912747 -0.0015308001 -0.0033599103 -0.0015308001 -0.003727258 -0.00093244459
		 -0.003727258 -0.00093279517 -0.0034613414 -0.0011681252 -0.0031468233 -0.0015307995
		 -0.0031239886 -0.0020124719 -0.0033599103 -0.0020124719 -0.003727258 -0.0015308001
		 -0.0041033374 -0.0011713421 -0.0040719733 -0.00093279453 -0.0040019071 -0.00093244459
		 -0.0033535589 -0.0020581079 -0.0031106768 -0.0023685677 -0.0033561464 -0.0023685677
		 -0.0037234942 -0.0020124719 -0.0041033374 -0.0015345308 -0.0043297117 -0.0011778725
		 -0.004334779 -0.00094605074 -0.0041303146 -0.00053753913 -0.0034619845 -0.00053746678
		 -0.0033535589 -0.0015308001 -0.0029881522 -0.002098653 -0.0029893704 -0.0023043442
		 -0.0031200033 -0.002564705 -0.0037171701 -0.0026414576 -0.0033429042 -0.0023685677
		 -0.0041071014 -0.0020581079 -0.004352571 -0.00053746678 -0.004109689 -0.00053753942
		 -0.0040012635 -0.00042471531 -0.0034462071 -0.00042520999 -0.0033243671 -0.00093244459
		 -0.0032827579 -0.00053746678 -0.0032827579 -0.0024805893 -0.002992562 -0.0026433477
		 -0.0029872858 -0.0028325736 -0.0031672919 -0.0026414576 -0.0041203438 -0.0023043442
		 -0.0043432452 -0.0020958432 -0.0044848258 -0.0015280592 -0.0044653108 -0.00092608103
		 -0.0042041666 -0.00053746678 -0.0041804896 -0.00042520999 -0.0041388799 -0.00042471467
		 -0.0040170397 -0.00042520999 -0.0032535666 -0.00053746678 -0.0032589808 -0.00093244459
		 -0.0032615245 -0.0022575618 -0.0028729588 -0.002484645 -0.0028425485 -0.002925094
		 -0.0029969278 -0.0031163017 -0.0032772925 -0.0028325736 -0.0042959563 -0.0026433477
		 -0.0044759614 -0.0024805893 -0.0044706855 -0.00053746678 -0.0042042672 -0.00093244459
		 -0.0042017233 -0.00042520999 -0.0042096814 -0.0022938449 -0.0026988171 -0.0024861661
		 -0.0026923807 -0.0025855307 -0.0028392926 -0.0028212711 -0.002845271 -0.0031163017
		 -0.004185955 -0.002925094 -0.0044663199 -0.002484645 -0.0046206992 -0.0022335076
		 -0.0046090907 -0.0023071161 -0.0025739947 -0.0024827532 -0.00257495 -0.0025594332
		 -0.0026713852 -0.0026944836 -0.0026757289 -0.0028212711 -0.0046179765 -0.0025855307
		 -0.0046239551 -0.0024861661 -0.0047708671 -0.0022975998 -0.0047641555 -0.0023272971
		 -0.0022394988 -0.0024975634 -0.0022398965 -0.0025552532 -0.0025672673 -0.0025994598
		 -0.0025676382 -0.0026944836 -0.0047875191 -0.0025594332 -0.0047918628 -0.0024872615
		 -0.0048880209 -0.0023311961 -0.0048880707 -0.0023254789 -0.0021442967 -0.0025056789
		 -0.0021422948 -0.0024876855 -0.0026720732 -0.0025031883 -0.0025751523 -0.0025994598
		 -0.00489558 -0.0025552532 -0.0048959511 -0.0024875905 -0.0052237152 -0.0023315244
		 -0.0052237646 -0.0025031883 -0.0048880656 -0.0024876855 -0.0047911745 -0.0025211163
		 -0.0053203837 -0.0022974336 -0.0053204559 -0.0026798537 -0.0011010765 -0.0029027394
		 -0.0014971691 -0.0026596428 -0.0015683084 -0.002461849 -0.0012207418 -0.0028313564
		 -0.0010376611 -0.0030601101 -0.0013339102 -0.0031579656 -0.0016796697 -0.0028532913
		 -0.001844972 -0.0025259305 -0.0016208435 -0.002343087 -0.0012855923 -0.0029165689
		 -0.0010022827 -0.0030704266 -0.0011473618 -0.0032287252 -0.0014499142 -0.0032760042
		 -0.0012235696 -0.003251333 -0.0018019098 -0.0030462525 -0.001940744 -0.0026873199
		 -0.0019087947 -0.0021644214 -0.00093358872 -0.0022832877 -0.00085318624 -0.0027032283
		 -0.00065578875 -0.0028628351 -0.00075291039 -0.0033207692 -0.0019569546 -0.0032061043
		 -0.0020401075 -0.0020185527 -0.00063741975 -0.0021651941 -0.00053679332 -0.0033569196
		 -0.0020600413 -0.0033075227 -0.0020950602 -0.0024795856 -0.00069306552 -0.0024736675
		 -0.00037935903 -0.0021952211 -0.00032361806 -0.0024257752 -0.00023318641 -0.0022038289
		 -0.00013559917 -0.002337293 -8.816574e-005 -0.0022159566 -2.0888656e-005 -0.0022727901
		 1.0204654e-010 -0.003750063 -0.002621968 -0.0038603102 -0.0025117213 -0.002263068
		 -0.0017405498 -0.0020921193 -0.0014154019 -0.0039150435 -0.0023626054 -0.0023015365
		 -0.0022594053 -0.0018276918 -0.0019692241 -0.0016567431 -0.0016440768 -0.0019169197
		 -0.0010821696 -0.0036869615 -0.0023287165 -0.0026271907 -0.0021447176 -0.0024771967
		 -0.0022404804 -0.0019764327 -0.002311422 -0.0014034127 -0.0021922924 -0.0012324641
		 -0.0018671446 -0.001481731 -0.0013112003 -0.0015788683 -0.00081896276 -0.0036633404
		 -0.002485604 -0.0037627229 -0.0024986411 -0.002789354 -0.0020759394 -0.0026667295
		 -0.0023113291 -0.0025831184 -0.0023468826 -0.0015381643 -0.0024241351 -0.0010348965
		 -0.0023438537 -0.00088132528 -0.0020517583 -0.0010574518 -0.0015342681 -0.0012846879
		 -0.0010000467 -0.0015993778 -0.00063425791 -0.0017903807 -0.00055309036 -0.0027582769
		 -0.0022757293 -0.0026677782 -0.0024187972 -0.0026292102 -0.0024385117 -0.0011515301
		 -0.0025432305 -0.00082650676 -0.0023807986 -0.0007028468 -0.0021455949 -0.00072369102
		 -0.0017519355 -0.00091534399 -0.0012639767 -0.0015941537 -0.00046360839 -0.0016755401
		 -0.00042606975 -0.0019389841 -0.00045846478 -0.0037814325 -0.0023446977 -0.0027154526
		 -0.002406548 -0.00090460014 -0.002587738 -0.00057512347 -0.0019026635 -0.0005984616
		 -0.0015068898 -0.0015776571 -0.00035165172 -0.0015876025 -0.00036428409 -0.0017567798
		 -0.00037080934 -0.00052714779 -0.0026602007 -0.00047690337 -0.0025646051 -0.00052487891
		 -0.0018070972 -0.0016247358 -0.00033192907 -0.0009096993 -0.0025390319 -0.00056009577
		 -0.0027228682 -0.00044137126 -0.0027382784 -0.00038433456 -0.0026297639 -0.00022552029
		 -0.0020864701 -0.00017527568 -0.0019909039 -0.00047431941 -0.0028009459 -0.00011936677
		 -0.0021257903 -6.2328989e-005 -0.0020173057 -0.00014232768 -0.0019282365 -0.00049193087
		 -0.0017444299 -2.9381379e-005 -0.0019546382 0.54247952 -0.054949366 0.54247952 -0.0548268
		 0.54245782 -0.054756001 0.54241949 -0.054949366 0.54238576 -0.054731902 0.54238576
		 -0.054949366 0.54233462 -0.054756001 0.54235154 -0.054949366 0.54228491 -0.0548268
		 0.54228491 -0.054949366 -0.0011250392 -0.0026773431 -0.0034682304 -0.0024923617 -0.003652893
		 -0.0026109242 -0.0015308047 -0.0026019099 -0.00093244849 -0.0027298226 -0.00094169483
		 -0.0038505348 -0.0020663387 -0.0044161556 -0.0020986591 -0.0025561333 -0.0011237003
		 -0.0027825888 -0.0015308027 -0.0027834401 -0.00093244849 -0.0027717501 -0.004863814
		 -0.0026600373 -0.0024941494 -0.0025561375 -0.0020986563 -0.0027697708 -0.0011223438
		 -0.0028892145 -0.003378463 -0.0030346522 -0.00093244785 -0.0028009764 -0.00053746992
		 -0.0027843157 -0.00053747074 -0.0027336413 -0.0022335129 -0.0026402031 -0.0022335118
		 -0.002773294 -0.0034167659 -0.0026040322 -0.0011681255 -0.0030519855 -0.0034505015
		 -0.0030420478 -0.00042521319 -0.0027943756 -0.00042521415 -0.0027222815 -0.0033860051
		 -0.0029383146 -0.00053746946 -0.0028328693 -0.00042521255 -0.0028454983 -0.0022391083
		 -0.00204605 -0.0022080927 -0.0021314768 -0.0020035382 -0.0020770291 -0.0020212256
		 -0.0019900321 -0.00226343 -0.0019576126 -0.0020462454 -0.0019037856 -0.01355392 0.0063207569
		 -0.01400263 0.0066543981 -0.014061916 0.0065097972 -0.013829262 0.006275651 -0.014190452
		 0.0059700748 -0.013933013 0.0058885403 -0.014315031 0.0067645335 -0.014516891 0.0060610501
		 -0.01368817 0.0058239079 -0.013491196 0.0061469153;
	setAttr ".uvtk[250:499]" -0.014459888 0.0067740688 -0.014679262 0.0063151307
		 -0.0134424 0.0058094352 -0.013371238 0.0060218633 -0.014518961 0.0068278681 -0.014719973
		 0.0064940597 -0.014552782 0.0069393567 -0.014697092 0.0066247014 -0.005049089 -0.001186523
		 -0.0048808428 -0.0013468019 -0.0047733542 -0.0012447685 -0.0049039423 -0.0011307473
		 -0.0045632645 -0.0014068852 -0.0045154057 -0.001283409 -0.0046952157 -0.0011487303
		 -0.0048423824 -0.0010443398 -0.0049768686 -0.001546841 -0.0045669097 -0.0015461723
		 -0.004563293 -0.0011545544 -0.0048808428 -0.0017925433 -0.0045628268 -0.0017319497
		 -0.0046457755 -0.0010365258 -0.0046759974 -0.001042473 -0.0047733542 -0.0018945764
		 -0.0045146351 -0.0018555041 -0.0046916716 -0.00091552862 -0.0047230953 -0.00096915296
		 -0.005049089 -0.0019528219 -0.0049039423 -0.0020085974 -0.0046952157 -0.0019906145
		 -0.0045621758 -0.0019847774 -0.0047761369 -0.00078064017 -0.0048088371 -0.00091375568
		 -0.0048033106 -0.00099076726 -0.0048068506 -0.00094034564 -0.0048423824 -0.0020950055
		 -0.0046759974 -0.0020968723 -0.0046443399 -0.0021032554 -0.0049627465 -0.00078645971
		 -0.0049372735 -0.00088388164 -0.0047230953 -0.0021701918 -0.00468991 -0.0022243138
		 -0.00508396 -0.00075063849 -0.0050407262 -0.00086702209 -0.0048033106 -0.0021485779
		 -0.0048068506 -0.0021989988 -0.0048088371 -0.0022255885 -0.0047747432 -0.0023590759
		 -0.0052031991 -0.0006994374 -0.0051226048 -0.00086703571 -0.0049372735 -0.0022554635
		 -0.0049627456 -0.0023528866 -0.0050407262 -0.0022723223 -0.00508396 -0.002388705
		 -0.0052346932 -0.0022947099 -0.0052312333 -0.0024463511 -0.0036328332 -0.0034279826
		 -0.0033657926 -0.003423745 -0.0032890397 -0.00304948 -0.0036328344 -0.0031815509
		 -0.0036328344 -0.0036948472 -0.0032890397 -0.003826919 -0.00375859 -0.0034354054
		 -0.00375859 -0.0032911138 -0.00375859 -0.0035852846 0.60460299 -0.0020228534 0.60474533
		 -0.0020228534 0.60474533 -0.0018785616 0.60460299 -0.0019255714 0.60460299 -0.0021257245
		 0.60474533 -0.0021727334 -0.00036839404 0.037230544 -0.013686153 0.0056424513 -0.01344217
		 0.0056388369 -0.0053663719 -0.0027714442 -0.0015942534 -0.00031156745 -0.013931625
		 0.0056440942 -0.013688169 0.0054481793 -0.0134424 0.0054626511 -0.014171059 0.0056458721
		 -0.0047771987 -0.0027006464 -0.013933013 0.0053835474 -0.014190452 0.0053020134 -0.014479074
		 0.0056478069 -0.0015271913 -0.00041124012 -0.014516892 0.005211038 -0.041305926 -0.049007542
		 -0.0039517367 -0.0015561392 -0.0039532408 -0.0012064616 -0.041199669 -0.048840895
		 -0.041147962 -0.048951544 -0.0039512948 -0.0019293462 -0.004135916 -0.0010917406
		 -0.041201536 -0.049061302 -0.040343113 -0.056596022 -0.0041333488 -0.0020450489 -0.0043130363
		 -0.00097098656 -0.04029141 -0.056485254 -0.04018515 -0.056651961 -0.0043098168 -0.0021667555
		 -0.004444785 -0.00090888748 -0.04028954 -0.056705721 -0.52623719 -0.070126064 -0.0044412287
		 -0.0022295627 -0.0045732441 -0.00084597757 -0.52623808 -0.070188716 -0.52623898 -0.070250615
		 -0.0045693475 -0.002293163 -0.0046258997 -0.00076423539 -0.52625114 -0.070263483
		 -0.5263052 -0.070126913 -0.0046215625 -0.0023751885 0.023001663 -0.018492157 0.0230831
		 -0.018171009 0.023032676 -0.018147025 0.022938406 -0.018363867 0.02297969 -0.018171608
		 0.022856522 -0.018311432 0.023061486 -0.018041737 0.023006085 -0.01806272 -0.0045861695
		 -0.00029013745 -0.0044739069 -0.000301022 -0.0045240782 -0.00017923342 -0.004603039
		 -0.00020801298 -0.0046320786 -9.2536342e-005 -0.0047037373 -0.00015765599 -0.0047150608
		 -0.00036666635 -0.0047090752 -0.00028299718 -0.0047605666 -3.1169999e-005 -0.0048152446
		 -0.0001256882 -0.004742146 -0.00019053082 -0.0048663248 -2.6659768e-006 -0.0048970068
		 -0.00014669134 -0.0051079676 -0.00014101111 -0.0049577965 -0.00022320203 -0.0050324965
		 -0.00033811925 -0.0049215937 -0.00032987326 -0.0048647178 -0.00042728419 -0.0048282607
		 -0.00043005956 -0.52625316 -0.070116021 -0.0048367307 -0.0005863072 -0.0049044876
		 -0.0006357581 -0.52629447 -0.07025791 -0.0050004162 -0.00065676647 -0.52634239 -0.070233025
		 -0.0050953738 -0.0006212148 -0.52634943 -0.070173003 -0.0051198239 -0.00055962382
		 -0.0053027901 -0.00059888302 -0.005098002 -0.00050260761 -0.0052673938 -0.00042941814
		 -0.0050042481 -0.00046628437 -0.0051012654 -0.00039490577 -0.0048638042 -0.00047931372
		 -0.0048871255 -0.00044790385 -0.0048430292 -0.00045671797 -0.0020558955 -0.0045333537
		 -0.0021149796 -0.0042659868 -0.082022212 -0.039098848 -0.081873827 -0.039106678 -0.081898689
		 -0.039022565 -0.082066089 -0.039032586 -0.082001776 -0.039167978 -0.081865542 -0.039211258
		 -0.08199241 -0.038949896 -0.082115218 -0.038988173 -4.0888848e-005 0.038910683 -0.00017962947
		 0.03882809 -0.00017725743 0.038733341 -2.9381379e-005 0.038811196 -0.00028596676
		 0.038590308 -0.00013981467 0.038550928 -0.1457281 -0.041263822 -0.14560522 -0.041236177
		 -0.14570527 -0.04112497 -0.14579229 -0.041163247 -0.14581074 -0.041010659 -0.14585419
		 -0.041038431 0.62357819 -0.031387921 -0.0052484563 -0.00020825 -0.0051739905 -0.00037500748
		 0.62374562 -0.031397942 0.0015674145 -0.0079289936 0.0014046436 -0.0079983082 0.0016056865
		 -0.0082050441 0.0016556531 -0.0081342431 -0.00094169483 -0.0036127144 -0.00054716039
		 -0.0036317199 -0.0034637379 -0.0021920076 -0.0034665493 -0.0023418935 -0.00043518221
		 -0.00363981 -0.0022238421 -0.0042683012 -0.0022088462 -0.0030077614 -0.0018193976
		 -0.0029166418 -0.0018681246 -0.0027662406 -0.0020763786 -0.0028322097 -0.0019089493
		 -0.0026158423 -0.0020928676 -0.0026744129 -0.0019320922 -0.0024999001 -0.002114191
		 -0.0025504499 -0.0020195036 -0.0021809833 -0.0021761525 -0.0022212788 0.62379473
		 -0.031353589 0.62355334 -0.031471979 -0.0037771007 -0.0029642873 -0.0015544884 -0.002882672
		 -0.0017221044 -0.0027579947 0.62354505 -0.031576674 -0.001838334 -0.0026020352 0.62368131
		 -0.031533334 -0.0019153798 -0.0024911857 0.62367195 -0.031315193 -0.010459087 -0.0020297877
		 -0.010312399 -0.0023575744 -0.010211471 -0.0020686905 -0.010314088 -0.001964824 -0.010131146
		 -0.0019096568 -0.010177738 -0.0018634207 -0.0021718354 -0.0028404382 -0.0049725235
		 -0.0029277222 -0.0049150656 -0.0028108116 -0.002192342 -0.0026867234 -0.0048160432
		 -0.0028344453 -0.0022110243 -0.0025641355 -0.0034580715 -0.0029443752 -0.0034736155
		 -0.002609387 -0.0048614978 -0.0029447477 -0.0022510572 -0.002230837 -0.0021657441
		 -0.0041159736 -0.0036921646 -0.0030504589 -0.0022624661 -0.0021348211 -0.0023297006
		 -0.0039885323 -0.0020457897 -0.0045333086 -0.004826617 -0.0026951246 -0.010099608
		 -0.0020755655 -0.010050966 -0.0019253978 -0.0054013687 -0.0024011454 -0.0014551544
		 -0.00055538758 -0.010150372 -0.0022255788 -0.010040523 -0.0018081982 -0.010030418
		 -0.001808243 -0.0026022496 -0.00258568 -0.002540651 -0.0025802271 -0.0025699432 -0.0022458134
		 -0.0026315411 -0.0022512658 -0.0013935918 -0.00071011129 -0.004887138 -0.0026914759
		 -0.002579686 -0.0021496729 -0.0026679728 -0.0021574877 -0.0036314395 -0.0030401046;
	setAttr ".uvtk[500:626]" -0.63594127 -0.043238249 -0.63592601 -0.043309636
		 -0.63587809 -0.043284755 -0.63587105 -0.043224733 -0.6359815 -0.043302283 -0.63596934
		 -0.043315206 -0.63591528 -0.04317864 -0.63596731 -0.043167748 -0.63598239 -0.043240502
		 -0.63598323 -0.043177791 -0.0010735665 -0.0044718771 -0.0036303005 -0.0029451128
		 -0.00069214485 -0.0024514406 -0.0005684846 -0.0022162369 -0.00044076119 -0.0019733061
		 -0.0037830721 -0.0030626433 -0.0026798537 -0.0011010761 -0.002461849 -0.0012207421
		 -0.0022832877 -0.00085318642 -0.0024795849 -0.0006930657 -0.0038219567 -0.0026316033
		 -0.0050956542 -0.0028926416 -0.0027030816 -0.00045112293 -0.0029164182 -0.00054031063
		 0.60537577 -0.041259091 0.6053158 -0.041259091 0.60535413 -0.041452456 0.60537577
		 -0.041381653 0.60528207 -0.041259091 0.60528207 -0.041476555 0.60524786 -0.041259091
		 0.60523093 -0.041452456 0.60518122 -0.041259091 0.60518122 -0.041381653 -0.001099489
		 -0.0047359713 -0.0014986749 -0.0048407675 -0.0014829077 -0.0050564162 -0.0010988093
		 -0.0049131764 -0.0011058297 -0.0046309084 -0.0015119099 -0.0046597505 -0.0020616767
		 -0.0049278373 -0.0019262859 -0.005159806 -0.00090900139 -0.0047001862 -0.00091123837
		 -0.0046695862 -0.0050042588 -0.0026730904 -0.0038592289 -0.0021920076 -0.0020772538
		 -0.0047147982 -0.00091429596 -0.0046277698 -0.0024561158 -0.0049566771 -0.0022526919
		 -0.0051952554 -0.00043518221 -0.0038234366 -0.0037052068 -0.0029546511 -0.00054716214
		 -0.0038315281 -0.00091642723 -0.0045986213 -0.0022120071 -0.0047211191 -0.0022023041
		 -0.004853826 -0.00051759102 -0.0046369717 -0.00052128627 -0.0045864321 -0.0022218369
		 -0.0045866729 -0.00040480451 -0.0046401136 -0.00041006159 -0.0045682117 -0.0004137895
		 -0.0045172242 -0.00052482705 -0.0045380066 0.03069553 -0.051048703 0.030691765 -0.050823826
		 0.030603133 -0.05082259 0.030604994 -0.051048703 0.03078725 -0.051048703 0.030781558
		 -0.050825018 -0.013553922 0.0049513294 -0.013829262 0.0049964362 -0.014061917 0.0047622919
		 -0.014002631 0.0046176896 -0.00021273064 0.036915392 -0.000284479 0.036914703 -0.013491195
		 0.0051251715 -2.9387898e-005 0.037363261 -0.00016992021 0.037083495 -0.014315033
		 0.0045075547 -0.013371238 0.005250223 -0.00031057623 0.037082553 -0.014679263 0.0049569588
		 -0.014459889 0.0044980198 -0.014719974 0.0047780303 -0.014518964 0.0044442215 -0.014697093
		 0.0046473877 -0.014552783 0.0043327329 0.0053324932 0.10506217 0.0053957487 0.10519046
		 0.0053014797 0.10540731 0.0052510621 0.10538332 0.0054776343 0.1052429 0.005354465
		 0.10538273 0.0053280694 0.10549164 0.0052726762 0.10551259 -0.0045861695 -0.0028491786
		 -0.0046030264 -0.0029313071 -0.0045240601 -0.0029600728 -0.0044739088 -0.0028382749
		 -0.0047150739 -0.0027726712 -0.0047090747 -0.0028563396 -0.0047037154 -0.00298168
		 -0.0046320455 -0.0030467887 -0.0047421297 -0.002948812 -0.0048152176 -0.0030136665
		 -0.0047605243 -0.0031081759 -0.0048969835 -0.0029926784 -0.0048662778 -0.0031366977
		 0.62370175 -0.031464204 -0.0051061036 -0.0029935974 -0.0048430399 -0.0026826621 -0.0050343494
		 -0.0028060586 -0.0021505922 -0.0044364622 -0.0048647355 -0.0027120872 -0.52627921
		 -0.070186526 -0.0032890397 -0.0030265066 -0.0049044918 -0.0025035914 -0.0048367372
		 -0.0025530448 -0.0033543741 -0.0025983495 -0.0050004204 -0.0024825796 -0.0033236139
		 -0.0029326309 -0.0050953794 -0.0025181267 -0.0053031682 -0.0025385267 -0.0051198318
		 -0.0025797172 -0.0052702073 -0.0027112225 -0.0050980118 -0.0026367337 -0.0050981063
		 -0.0027451119;
createNode polyMapSewMove -n "pasted__polyMapSewMove31";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[429]" "e[583:584]";
createNode polyMapSewMove -n "pasted__polyMapSewMove30";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[559]" "e[567]";
createNode polyMapSewMove -n "pasted__polyMapSewMove29";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[190]";
createNode polyMapSewMove -n "pasted__polyMapSewMove28";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[315]";
createNode polyMapSewMove -n "pasted__polyMapSewMove27";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[257]" "e[277]" "e[297]";
createNode polyMapSewMove -n "pasted__polyMapSewMove26";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[617]" "e[638]" "e[694]";
createNode polyTweakUV -n "pasted__polyTweakUV6";
	setAttr ".uopa" yes;
	setAttr -s 646 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.0011860563 0.0038910795 0.0011845018
		 0.0035413243 0.0015586935 0.0035086744 0.0015586935 0.0038910795 0.00093581231 0.0038910795
		 0.00093617727 0.0036142631 0.0011811531 0.0032868534 0.0015586929 0.0032630831 0.0020601081
		 0.0035086744 0.0020601081 0.0038910795 0.0015586935 0.0042825737 0.0011845018 0.0042499239
		 0.00093617663 0.0041769859 0.00093581231 0.003502063 0.0021076144 0.0032492252 0.0024307997
		 0.0035047564 0.0024307997 0.0038871611 0.0020601081 0.0042825737 0.0015625771 0.0045182267
		 0.001182016 0.0045299223 0.00093581231 0.0042891856 0.00052472035 0.0036149325 0.00052464503
		 0.003502063 0.0015586935 0.003121679 0.0021498217 0.0031229472 0.0023639437 0.0032589342
		 0.0026349763 0.0038805781 0.0027148752 0.0034909714 0.0024307997 0.0042864918 0.0021076144
		 0.0045420229 0.00052464503 0.0042891856 0.00052472064 0.0041763159 0.00040727208
		 0.0035985087 0.00040778704 0.0034716746 0.00093581231 0.00342836 0.00052464503 0.00342836
		 0.0025474129 0.0031262694 0.0027168426 0.003120777 0.0029138555 0.0033081612 0.0027148752
		 0.0043002767 0.0023639437 0.0045323148 0.0021468967 0.0046796985 0.0015558404 0.0046593836
		 0.00093581231 0.0043628882 0.00052464503 0.0043628882 0.00040778704 0.0043195733
		 0.00040727144 0.0041927388 0.00040778704 0.0033979719 0.00052464503 0.0034036082
		 0.00093581231 0.0034062562 0.0023152437 0.003001764 0.0025516346 0.0029701069 0.0030101682
		 0.0031308141 0.0032092128 0.0034226703 0.0029138555 0.0044830879 0.0027168426 0.004670471
		 0.0025474129 0.0046649789 0.00052464503 0.0043876404 0.00093581231 0.0043849922 0.00040778704
		 0.0043932763 0.0023530142 0.0028204841 0.0025532183 0.0028137844 0.0026566556 0.0029667178
		 0.0029020894 0.0029729409 0.0032092128 0.0043685776 0.0030101682 0.0046604341 0.0025516346
		 0.0048211413 0.0022902037 0.0048090569 0.0023668292 0.0026905765 0.0025496655 0.0026915709
		 0.0026294885 0.0027919279 0.0027701054 0.0027964497 0.0029020894 0.0048183068 0.0026566556
		 0.0048245308 0.0025532183 0.0049774642 0.002356923 0.0049704774 0.0023878375 0.0023423701
		 0.0025650826 0.0023427841 0.0026251373 0.0026835734 0.0026711558 0.0026839594 0.0027701054
		 0.0049947989 0.0026294885 0.00499932 0.0025543587 0.00509942 0.0023918962 0.0050994717
		 0.0023859448 0.0022432657 0.0025735309 0.0022411817 0.0025547999 0.0027926441 0.0025709383
		 0.0026917816 0.0026711558 0.0051072887 0.0026251373 0.0051076747 0.0025547009 0.0054488736
		 0.002392238 0.0054489253 0.0025709383 0.0050994665 0.0025547999 0.0049986038 0.0025896011
		 0.0055495044 0.00235675 0.0055495799 0.002754845 0.0011572859 0.0029868972 0.0015696137
		 0.0027338054 0.0016436689 0.0025279045 0.001281856 0.0029125882 0.0010912712 0.0031507183
		 0.001399663 0.0032525847 0.0017595947 0.0029354221 0.0019316725 0.0025946125 0.0016983573
		 0.0024042747 0.0013493648 0.0030012934 0.0010544427 0.0031614576 0.0012054682 0.0033262444
		 0.0015204218 0.0033754613 0.0012847998 0.0033497789 0.0018868451 0.0031362926 0.0020313701
		 0.0027626168 0.0019981111 0.0022182858 0.00098293298 0.0023420244 0.00089923496 0.0027792084
		 0.00069373904 0.002945357 0.00079484901 0.0034220612 0.0020482449 0.0033026964 0.0021348062
		 0.0020664381 0.00067461713 0.0022190902 0.00056986621 0.0034596934 0.002155557 0.0034082718
		 0.0021920111 0.0025463679 0.00073255115 0.0025402072 0.00040597894 0.002250348 0.00034795699
		 0.0024903519 0.00025381867 0.0022593085 0.00015222772 0.0023982429 0.000102852 0.0022719335
		 3.281637e-005 0.0023310964 1.107165e-005 0.034100566 0.016357526 0.034215335 0.016242761
		 0.0023209758 0.0018229701 0.00214302 0.001484495 0.034272309 0.016087532 0.002361021
		 0.0023630925 0.0018677543 0.0020610176 0.0016897987 0.0017225428 0.0019606394 0.001137604
		 0.034034878 0.016052255 0.0027000234 0.0022437042 0.0025438813 0.002343392 0.0020225919
		 0.0024172415 0.0014260847 0.0022932289 0.0012481291 0.0019547539 0.001507613 0.0013760224
		 0.0015718715 0.00083048176 0.034010291 0.016215572 0.034113746 0.016229145 0.002868864
		 0.0021721069 0.0027411827 0.0024171448 0.0026541445 0.0024541554 0.0015663597 0.0025345744
		 0.0010424635 0.0024510024 0.00088259776 0.0021469346 0.0010659434 0.0016082334 0.0013024935
		 0.0010521151 0.0016582767 0.0006589496 0.0018289138 0.00058683124 0.0028365131 0.0023800859
		 0.0027422744 0.0025290176 0.0027021256 0.0025495405 0.0011638778 0.0026585516 0.00082553225
		 0.0024894616 0.00069680368 0.0022446173 0.00071850227 0.0018348225 0.00091801077
		 0.0013268631 0.001629536 0.00050532544 0.001709366 0.00045460425 0.0019836081 0.00048832712
		 0.034133222 0.016068891 0.0027919337 0.0025162664 0.00090682658 0.002704883 0.00056384527
		 0.0019917286 0.00058813993 0.0015797328 0.0015781574 0.00041172677 0.0016178241 0.00039028612
		 0.0017939358 0.00039707881 0.0005139031 0.002780285 0.00046159924 0.0026808018 0.00051154121
		 0.0018922453 0.0016564794 0.0003566049 0.00091213477 0.0026541806 0.00054820155 0.0028455213
		 0.00042461071 0.0028615631 0.00036523619 0.0027486316 0.00019990864 0.002183069 0.0001476046
		 0.0020835856 0.00045890937 0.002926799 8.9404086e-005 0.0022240011 3.0030316e-005
		 0.0021110696 0.00011330612 0.0020183497 0.00047724272 0.0018270093 -4.2682327e-006
		 0.0020458335 -0.54506636 -0.010480696 -0.54506636 -0.010608286 -0.54504383 -0.010681989
		 -0.54500389 -0.010480696 -0.54496878 -0.010707013 -0.54496878 -0.010480696 -0.54491556
		 -0.010681989 -0.54493314 -0.010480696 -0.54486376 -0.010608286 -0.54486376 -0.010480696
		 0.001136301 0.00279813 0.033807185 0.016222607 0.033999413 0.01634603 0.0015586981
		 0.0027196361 0.00093581632 0.0028527607 0.00094544172 0.004019409 -0.093224913 -0.02852059
		 0.002149828 0.0026719829 0.0011349074 0.0029076897 0.0015586962 0.0029085758 0.00093581632
		 0.0028964067 -0.093434192 -0.028735798 0.0025615287 0.0026719875 0.002149825 0.0028943461
		 0.0011334951 0.0030186858 0.033713736 0.016787125 0.00093581568 0.0029268311 0.00052464835
		 0.0029094873 0.00052464916 0.0028567358 0.0022902093 0.0027594988 0.0022902079 0.0028980137
		 0.033753607 0.016338855 0.0011811535 0.0031881284 0.033788726 0.016794825 0.00040779036
		 0.0029199596 0.00040779138 0.0028449104 0.033721589 0.01668684 0.00052464782 0.0029600312
		 0.00040778969 0.0029731777 0.5438031 -0.018604375 0.54389733 -0.018604375 0.54389924
		 -0.01836893 0.54380697 -0.018370219 0.54370761 -0.018604375 0.54371351 -0.018371524
		 -0.0033599553 0.007345716 -0.0028928544 0.0069983997 -0.002831138 0.0071489275 -0.0030733279
		 0.007392671 -0.0026973335 0.0077107721 -0.0029653241 0.0077956486 -0.0025676484 0.0068837497
		 -0.0023575141 0.0076160678 -0.0032202033 0.0078629302 -0.0034252517 0.0075266832;
	setAttr ".uvtk[250:499]" -0.0024168533 0.0068738237 -0.0021884874 0.0073515731
		 -0.003476047 0.0078779962 -0.0035501258 0.0076568606 -0.002355359 0.0068178196 -0.0021461081
		 0.00716531 -0.0023201518 0.0067017311 -0.002169928 0.0070293136 0.0037129249 -0.00069905235
		 0.0035377827 -0.00053220388 0.0034258885 -0.00063841947 0.0035618292 -0.00075711421
		 0.0032071874 -0.00046965788 0.0031573672 -0.00059819518 0.0033445472 -0.00073839404
		 0.0034977461 -0.00084706332 0.0036377446 -0.00032396562 0.0032109823 -0.00032466155
		 0.0032072174 -0.0007323313 0.0035377827 -6.8192261e-005 0.0032067318 -0.00013126938
		 0.0032930807 -0.00085519772 0.0033245413 -0.00084900658 0.0034258885 3.8022958e-005
		 0.0031565649 -2.6507755e-006 0.0033408578 -0.00098115427 0.0033735696 -0.00092533202
		 0.0037129249 9.8655852e-005 0.0035618292 0.00015671739 0.0033445472 0.00013799757
		 0.0032060542 0.00013192113 0.0034287854 -0.0011215716 0.0034628254 -0.00098299992
		 0.0034570729 -0.00090283179 0.0034607577 -0.00095532014 0.0034977461 0.00024666719
		 0.0033245413 0.00024861077 0.0032915862 0.00025525535 0.0036230434 -0.0011155135
		 0.0035965266 -0.0010140984 0.0033735696 0.00032493551 0.003339024 0.00038127575 0.0037492253
		 -0.001152803 0.0037042198 -0.0010316491 0.0034570729 0.00030243566 0.0034607577 0.00035492334
		 0.0034628254 0.00038260274 0.0034273346 0.00052156165 0.003873352 -0.0012061028 0.0037894545
		 -0.0010316349 0.0035965266 0.00041370228 0.0036230427 0.00051511853 0.0037042198
		 0.00043125221 0.0037492253 0.0005524052 0.0039061368 0.00045455748 0.0039025352 0.00061241398
		 0.0010600196 0.015251261 0.00078203349 0.01524685 0.00070213451 0.014857245 0.0010600209
		 0.014994728 0.0010600209 0.015529064 0.00070213451 0.01566655 0.0011909306 0.015258988
		 0.0011909306 0.015108782 0.0011909306 0.015415011 -0.62128359 -0.081470899 -0.62143177
		 -0.081470899 -0.62143177 -0.081621103 -0.62128359 -0.081572168 -0.62128359 -0.081363805
		 -0.62143177 -0.081314869 -0.59951526 -0.12308516 -0.0032223035 0.0080518248 -0.0034762865
		 0.0080555864 -0.055732761 -0.067577727 -0.055719368 -0.067581788 -0.0029667704 0.0080501139
		 -0.003220204 0.0082540596 -0.003476047 0.0082389945 -0.0027175215 0.0080482634 -0.055824146
		 -0.067684487 -0.0029653241 0.0083213402 -0.0026973335 0.0084062163 -0.0023968818
		 0.0080462489 -0.055748757 -0.067703344 -0.0023575134 0.0085009206 -0.028714756 -0.0067603136
		 0.0025705947 -0.0003142861 0.0025721602 -0.00067829643 -0.028825369 -0.0069338521
		 -0.028879194 -0.0068186088 0.0025701341 7.4218049e-005 0.0027623228 -0.00079771981
		 -0.028823424 -0.0067043519 0.22011322 -0.016606573 0.0027596506 0.00019466311 0.0029467032
		 -0.00092342321 0.22005939 -0.016721817 0.21994878 -0.016548278 0.0029433516 0.00032135827
		 0.0030838519 -0.00098806759 0.22005746 -0.016492316 -0.01681062 -0.016556807 0.0030801499
		 0.00038673994 0.0032175763 -0.0010535561 -0.016809709 -0.016491588 -0.01680881 -0.016427213
		 0.0032135199 0.00045294702 0.0032723898 -0.0011386488 -0.016796112 -0.016413821 -0.016739842
		 -0.016555924 0.0032678749 0.00053833448 8.0473663e-005 -0.14267558 -4.298035e-006
		 -0.14300989 4.8190381e-005 -0.14303491 0.00014632261 -0.14280912 0.00010334732 -0.14300926
		 0.00023156295 -0.14286371 1.8202896e-005 -0.14314449 7.5869204e-005 -0.14312264 0.0032310314
		 -0.001632183 0.0031141676 -0.0016208523 0.0031663952 -0.0017476327 0.0032485926 -0.0017176736
		 0.0032788219 -0.0018378854 0.0033534179 -0.0017700946 0.0033652058 -0.0015525136
		 0.0033589751 -0.0016396159 0.0034125766 -0.0019017651 0.003469496 -0.0018033728 0.0033934009
		 -0.0017358722 0.0035226697 -0.0019314374 0.0035546096 -0.0017815105 0.0037723011
		 -0.0017824313 0.0036178909 -0.001701862 0.0036975686 -0.0015872229 0.003580204 -0.0015908147
		 0.0035209965 -0.0014894111 0.0034830458 -0.0014865219 -0.016794041 -0.016567325 0.0034918627
		 -0.0013238699 0.0035623971 -0.0012723921 -0.016751025 -0.016419556 0.0036622577 -0.0012505227
		 -0.016701136 -0.016445523 0.0037611071 -0.0012875316 -0.016693823 -0.016508004 0.0037865592
		 -0.0013516471 0.0039770254 -0.0013107787 0.0037638429 -0.0014110003 0.0039401781
		 -0.0014871897 0.0036662463 -0.0014488123 0.0037672401 -0.0015231166 0.0035200457
		 -0.0014352489 0.0035443231 -0.0014679462 0.0034984192 -0.0014587708 -0.0019666979
		 -0.14122595 -0.0019051927 -0.14150427 0.67500758 -0.038174793 0.67485315 -0.038166638
		 0.67487901 -0.038254205 0.6750533 -0.038243771 0.6749863 -0.038102828 0.6748445 -0.038057711
		 0.67497659 -0.038329851 0.67510444 -0.038289942 7.6950673e-006 -0.12282889 0.00015212194
		 -0.12274291 0.0001496527 -0.12264428 -4.2840652e-006 -0.12272526 0.00026281783 -0.12249532
		 0.00011067522 -0.12245432 0.041757748 -0.018472653 0.041629907 -0.018501433 0.041733991
		 -0.018617198 0.041824635 -0.018577293 0.041843783 -0.018736197 0.041889079 -0.018707223
		 -0.19327849 -0.014718371 -0.19312635 -0.014775878 -0.19304873 -0.014602331 -0.19317314
		 -0.014513453 -0.63117492 -0.0618857 -0.63100547 -0.061813544 -0.63121474 -0.061598334
		 -0.63126677 -0.061672039 0.00094544172 0.0037718408 0.00053473597 0.0037916251 0.033802506
		 0.015909942 0.033805434 0.016065972 0.00041816797 0.0038000471 -0.0017918661 -0.14150186
		 0.0022645316 0.0031420914 0.0018659926 0.0030388173 0.0019079658 0.0028885109 0.0021266341
		 0.0029593443 0.001948952 0.0027373207 0.0021437991 0.0027950797 0.0019800991 0.0026198232
		 0.0021659965 0.0026660666 0.0020674281 0.0022814563 0.0022304978 0.0023234035 0.0020581039
		 0.0021751837 0.0022564512 0.0022279778 0.0069176694 -0.0030801916 0.0066545303 -0.0031507532
		 0.0068411669 -0.0032623638 0.0069931941 -0.0032362209 0.0069778487 -0.0034117149
		 0.0070532365 -0.003392858 0.0070692343 -0.003518471 0.0070826267 -0.0035144126 -0.0087876152
		 0.023581764 -0.0089403149 0.023922985 -0.0090453792 0.023622259 -0.0089385565 0.023514137
		 -0.009128998 0.023456708 -0.0090804957 0.023408577 0.0022260039 0.0029679101 0.018537162
		 -0.022435237 0.018433077 -0.022551002 0.0022473508 0.0028078947 0.01834243 -0.022511097
		 0.0022667989 0.0026803131 0.033796608 0.016693149 0.033812787 0.01634443 0.018409317
		 -0.022406457 0.0023084728 0.0023333535 -0.0018523473 -0.14166044 0.034040295 0.016803579
		 0.0023203492 0.0022334019 -0.0016816687 -0.1417931 -0.0019772181 -0.14122599 -0.056147464
		 -0.067945443 -0.009161829 0.023629416 -0.0092124641 0.023473093 -0.055960827 -0.067833833
		 -0.055808801 -0.067859977 -0.0091089839 0.023785578 -0.0092233354 0.02335109 -0.0092338547
		 0.023351137 0.0026740597 0.0027027407 0.0026099363 0.0026970643 0.0026404292 0.0023489436
		 0.0027045519 0.0023546193 -0.055884324 -0.068016008 -0.093486205 -0.028662095 0.0026505715
		 0.0022488628 0.002742477 0.0022569976 0.03397708 0.016792802;
	setAttr ".uvtk[500:645]" -0.13264498 -0.016477738 -0.13266085 -0.016403424
		 -0.13271074 -0.016429391 -0.13271804 -0.016491871 -0.13260306 -0.016411081 -0.13261576
		 -0.016397689 -0.13267203 -0.016539792 -0.13261783 -0.016551193 -0.13260216 -0.016475456
		 -0.13260125 -0.016540674 -0.093394354 -0.028448435 0.033975895 0.016693916 0.00068566314
		 0.002562999 0.00055693422 0.0023181548 0.00042397564 0.0020652667 0.034134928 0.016816264
		 0.002754845 0.0011572855 0.0025279045 0.0012818564 0.0023420244 0.00089923514 0.0025463672
		 0.00073255133 0.034175407 0.016367557 0.0037613991 0.0010769364 0.0027790556 0.00048068436
		 0.0030011365 0.00057352765 -0.041351542 -0.0087504564 -0.041289072 -0.0087504564
		 -0.041328982 -0.008549165 -0.041351542 -0.008622868 -0.041253936 -0.0087504564 -0.041253936
		 -0.0085241394 -0.041218333 -0.0087504564 -0.041200716 -0.008549165 -0.041148927 -0.0087504564
		 -0.041148927 -0.008622868 0.0011097037 0.0049411375 0.0015252514 0.0050502294 0.001508838
		 0.0052747172 0.001108996 0.0051256069 0.0011163042 0.0048317686 0.0015390289 0.004861793
		 0.0021113299 0.0051408685 0.0019703896 0.0053823451 0.00091140816 0.004903886 0.00091373693
		 0.004872032 0.0011229904 0.0047209663 0.034214206 0.015909942 0.0021275452 0.0049190968
		 0.0009169199 0.0048285015 0.0025219363 0.0051708901 0.0023101743 0.0054192473 0.00041816797
		 0.0039912001 0.034053873 0.016703846 0.00053473783 0.003999623 0.00091913843 0.0047981581
		 0.0022678219 0.0049256771 0.002257721 0.0050638234 0.00050395459 0.0048380806 0.00050780131
		 0.0047854693 0.0022780548 0.0047857198 0.00038654517 0.0048413514 0.00039201771 0.004766502
		 0.00039589842 0.0047134249 0.00051148719 0.0047350591 -0.086164109 -0.0085857399
		 -0.08616019 -0.0088198958 -0.08606793 -0.0088211838 -0.086069867 -0.0085857399 -0.086259589
		 -0.0085857399 -0.086253665 -0.008818591 -0.0033599539 0.0087712742 -0.0030733279
		 0.0087243188 -0.0028311368 0.0089680599 -0.0028928523 0.0091185896 -0.59967732 -0.12275703
		 -0.59960258 -0.12275631 -0.0034252526 0.0085903071 -0.59986818 -0.12322332 -0.59972185
		 -0.12293208 -0.0025676463 0.0092332382 -0.0035501267 0.0084601296 -0.59957546 -0.1229311
		 -0.0021884867 0.0087654144 -0.0024168522 0.0092431642 -0.0021461071 0.0089516761
		 -0.0023553569 0.0092991674 -0.0021699267 0.0090876734 -0.0023201508 0.0094152261
		 -0.0018512391 -0.14297514 -0.0019170874 -0.14310867 -0.0018189545 -0.14333439 -0.0017664663
		 -0.14330943 -0.0020023256 -0.14316325 -0.0018741114 -0.1433088 -0.001846634 -0.14342216
		 -0.0017889667 -0.14344399 0.0032310314 0.001031692 0.0032485793 0.0011171871 0.0031663761
		 0.0011471316 0.0031141692 0.0010203418 0.0033652193 0.00095204875 0.0033589744 0.0010391466
		 0.0033533953 0.0011696245 0.0032787879 0.001237402 0.0033933839 0.0011354092 0.0034694681
		 0.001202922 0.0034125326 0.0013013055 0.0035545849 0.0011810738 0.0035226208 0.0013309963
		 0.0036178799 0.0011014355 0.0037722769 0.0011820304 0.0035802117 0.00099038589 0.0036975814
		 0.0009868046 0.0034830698 0.00088607648 0.0035210154 0.00088898145 -0.016766895 -0.01649387
		 0.033620648 0.016778646 0.003562401 0.00067200052 0.0034918694 0.00072348083 0.033688661
		 0.016332939 0.0036622616 0.00065012724 0.033656638 0.016680922 0.0037611132 0.00068713172
		 0.0039774184 0.00070836756 0.0037865676 0.00075124641 0.0039431066 0.00088808121
		 0.0037638536 0.00081060012 0.0037639516 0.00092336006 0.0036662577 0.00084841618
		 0.0035443362 0.00086752529 0.0035200561 0.00083485874 -0.0019558263 -0.14134794 -0.0018681204
		 -0.1413268 0.0034984306 0.00085835037 -0.52138722 -0.026430134 -0.52143288 -0.026499109
		 -0.52125859 -0.026509544 -0.52123272 -0.026421979 -0.52148402 -0.026545282 -0.52135617
		 -0.026585191 -0.52136594 -0.02635817 -0.52122408 -0.026313053 0.034128714 0.016713876
		 0.0040796446 0.00056535553 0.018323284 -0.022670001 0.018277988 -0.022641027 0.0040432126
		 0.00095077156;
createNode polyMapSewMove -n "pasted__polyMapSewMove25";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[274]" "e[294]" "e[303]" "e[311]";
createNode polyMapSewMove -n "pasted__polyMapSewMove24";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[630]" "e[651]" "e[659]" "e[670]";
createNode polyMapSewMove -n "pasted__polyMapSewMove23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[662]" "e[672]";
createNode polyTweakUV -n "pasted__polyTweakUV5";
	setAttr ".uopa" yes;
	setAttr -s 659 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.35764089 0.39835903 -0.35764572
		 0.39727324 -0.35648406 0.39717188 -0.35648406 0.39835903 -0.35841778 0.39835903 -0.35841665
		 0.39749968 -0.35765612 0.39648324 -0.35648406 0.39640942 -0.35492742 0.39717188 -0.35492742
		 0.39835903 -0.35648406 0.3995744 -0.35764572 0.39947307 -0.35841665 0.39924657 -0.35841778
		 0.39715135 -0.35477996 0.39636642 -0.35377663 0.39715973 -0.35377663 0.39834684 -0.35492742
		 0.3995744 -0.35647202 0.40030599 -0.35765344 0.40034229 -0.35841778 0.39959493 -0.359694
		 0.39750177 -0.35969424 0.39715135 -0.35648406 0.3959704 -0.35464892 0.39597437 -0.35398418
		 0.39639658 -0.35314277 0.39832646 -0.35289472 0.3971169 -0.35377663 0.39958656 -0.35477996
		 0.40037987 -0.35969424 0.39959493 -0.359694 0.39924455 -0.36005861 0.39745075 -0.36005703
		 0.39705697 -0.35841778 0.39692253 -0.35969424 0.39692253 -0.35341462 0.39598471 -0.35288861
		 0.39596763 -0.35227701 0.3965494 -0.35289472 0.39962938 -0.35398418 0.40034974 -0.35465801
		 0.40080726 -0.35649291 0.40074417 -0.35841778 0.39982376 -0.35969424 0.39982376 -0.36005703
		 0.39968929 -0.36005861 0.39929551 -0.36005703 0.3968282 -0.35969424 0.3968457 -0.35841778
		 0.39685392 -0.35413536 0.3955982 -0.35340151 0.39549991 -0.351978 0.39599881 -0.35136008
		 0.39690486 -0.35227701 0.40019694 -0.35288861 0.40077862 -0.35341462 0.4007616 -0.35969424
		 0.39990062 -0.35841778 0.39989233 -0.36005703 0.39991805 -0.35401812 0.39503542 -0.35339659
		 0.39501458 -0.35307547 0.39548939 -0.35231352 0.39550871 -0.35136008 0.3998414 -0.351978
		 0.40074745 -0.35340151 0.40124634 -0.35421312 0.40120888 -0.35397524 0.3946321 -0.35340762
		 0.39463517 -0.35315982 0.39494672 -0.35272327 0.39496079 -0.35231352 0.40123755 -0.35307547
		 0.40125689 -0.35339659 0.4017317 -0.35400599 0.40171 -0.35391 0.39355111 -0.35335976
		 0.39355239 -0.35317332 0.39461038 -0.35303044 0.39461157 -0.35272327 0.40178549 -0.35315982
		 0.40179953 -0.35339305 0.40211028 -0.35389739 0.40211046 -0.35391587 0.39324343 -0.35333353
		 0.39323696 -0.35339168 0.39494899 -0.35334158 0.39463583 -0.35303044 0.40213472 -0.35317332
		 0.40213591 -0.35339198 0.40319514 -0.35389635 0.40319532 -0.35334158 0.40211043 -0.35339168
		 0.40179729 -0.35328364 0.40350756 -0.35400653 0.4035078 -0.35277066 0.38987204 -0.35205024
		 0.39115208 -0.35283595 0.39138201 -0.35347518 0.39025876 -0.35228094 0.38966709 -0.35154167
		 0.39062449 -0.35122544 0.3917419 -0.35221004 0.39227611 -0.35326809 0.39155179 -0.35385898
		 0.39046836 -0.35200554 0.38955277 -0.35150832 0.39002162 -0.35099676 0.39099938 -0.35084397
		 0.39026791 -0.35092369 0.39213696 -0.35158646 0.39258561 -0.35274652 0.39248237 -0.35443637
		 0.38933077 -0.35405225 0.38907093 -0.35269502 0.38843301 -0.3521792 0.38874686 -0.35069928
		 0.392638 -0.35106987 0.39290673 -0.35490778 0.38837364 -0.35443386 0.38804844 -0.35058245
		 0.39297116 -0.3507421 0.39308432 -0.35341784 0.38855347 -0.35343698 0.38753965 -0.35433683
		 0.38735953 -0.35359174 0.38706726 -0.35430902 0.38675189 -0.35387769 0.38659862 -0.35426983
		 0.38638118 -0.35408616 0.38631368 -0.94322991 -0.27621484 -0.94292414 -0.27661529
		 -0.35411757 0.39193863 -0.35467005 0.39088786 -0.9428128 -0.27711642 -0.35399327
		 0.39361545 -0.3555246 0.39267766 -0.35607705 0.39162689 -0.35523623 0.38981095 -0.9436785
		 -0.27711642 -0.35294083 0.3932448 -0.35342556 0.39355427 -0.35504389 0.39378354 -0.35689574
		 0.39339855 -0.35744819 0.39234775 -0.35664263 0.39055112 -0.35644314 0.38885748 -0.94355637
		 -0.27661529 -0.94324231 -0.27661529 -0.35241666 0.39302254 -0.35281307 0.39378324
		 -0.35308325 0.39389816 -0.35646027 0.39414778 -0.35808668 0.39388835 -0.35858297
		 0.39294437 -0.35801378 0.39127198 -0.35727942 0.38954556 -0.35617492 0.38832501 -0.35564518
		 0.3881011 -0.3525171 0.3936682 -0.35280967 0.39413056 -0.3529343 0.39419425 -0.35770977
		 0.39453271 -0.35876015 0.39400777 -0.35915977 0.39324763 -0.35909241 0.39197543 -0.35847303
		 0.3903985 -0.35626414 0.38784808 -0.35601631 0.3876906 -0.35516492 0.3877953 -0.94324845
		 -0.27711642 -0.3526555 0.39409095 -0.35850775 0.39467651 -0.35957253 0.39246255 -0.35949713
		 0.39118353 -0.35642365 0.38755751 -0.3563005 0.38749093 -0.35575375 0.38751203 -0.35972759
		 0.3949106 -0.35988995 0.39460176 -0.35973492 0.39215371 -0.35618049 0.38738638 -0.35849127
		 0.39451912 -0.35962111 0.39511314 -0.36000478 0.39516294 -0.36018911 0.39481235 -0.36070237
		 0.39305657 -0.36086473 0.3927477 -0.3598983 0.39536542 -0.36104542 0.39318362 -0.36122975
		 0.39283305 -0.36097121 0.39254519 -0.35984141 0.3919512 -0.36133623 0.39263052 -0.32237545
		 0.04210734 -0.32237545 0.041711245 -0.32230532 0.041482434 -0.32218143 0.04210734
		 -0.32207236 0.041404746 -0.32207236 0.04210734 -0.32190713 0.041482434 -0.32196182
		 0.04210734 -0.32174641 0.041711245 -0.32174641 0.04210734 -0.35779536 0.39496601
		 0.58037031 0.066658273 0.58088237 0.06703648 -0.35648406 0.39472234 -0.35841778 0.39513561
		 -0.35838789 0.39875743 0.63430083 -0.011252116 -0.35464889 0.39457437 -0.35779968
		 0.39530611 -0.35648406 0.39530888 -0.35841778 0.39527109 0.63365114 -0.011920226
		 -0.35337079 0.39457437 -0.35464892 0.39526466 -0.35780409 0.39565068 -0.16959321
		 -0.08174365 -0.35841778 0.39536557 -0.35969421 0.39531171 -0.35969421 0.39514795
		 -0.35421309 0.39484605 -0.35421309 0.39527613 -0.16959856 -0.083140776 -0.35765612
		 0.39617676 -0.16930678 -0.081744134 -0.360057 0.39534423 -0.360057 0.39511123 -0.16959772
		 -0.082055904 -0.35969421 0.39546865 -0.360057 0.39550942 -0.78497463 0.027694095
		 -0.7846821 0.027694095 -0.78467607 0.028425027 -0.78496248 0.028421028 -0.78527105
		 0.027694095 -0.78525269 0.028416974 0.35310352 -0.035192039 0.37560344 -0.17938812
		 0.41309285 -0.16331387 0.4126139 -0.077163927 0.53575498 -0.086349949 0.5027442 -0.024076998
		 0.41361409 -0.25704005 0.57988399 -0.16300304 0.46898639 0.032745384 0.37322766 0.0086458987;
	setAttr ".uvtk[250:499]" 0.43883717 -0.28531453 0.56363207 -0.24000713 0.42588004
		 0.080399156 0.37377205 0.053870343 0.4399929 -0.30613646 0.53847903 -0.2807647 0.42589426
		 -0.33307859 0.51032043 -0.30089974 0.26549351 -0.38034448 0.26494977 -0.37982652
		 0.26460242 -0.38015625 0.26502442 -0.38052472 0.26392344 -0.37963232 0.26376879 -0.38003138
		 0.26434988 -0.38046661 0.26482549 -0.38080397 0.2652601 -0.37918004 0.26393524 -0.37918219
		 0.26392356 -0.3804478 0.26494977 -0.37838599 0.26392204 -0.37858182 0.26419011 -0.38082924
		 0.26428777 -0.38081002 0.26460242 -0.37805626 0.26376626 -0.37818253 0.26433843 -0.38122025
		 0.26444 -0.38104695 0.26549351 -0.37786803 0.26502442 -0.37768778 0.26434988 -0.3777459
		 0.26391995 -0.37776476 0.26461139 -0.38165617 0.26471707 -0.381226 0.26469922 -0.38097712
		 0.26471066 -0.38114005 0.26482549 -0.37740853 0.26428777 -0.37740248 0.26418546 -0.37738186
		 0.26521447 -0.38163736 0.26513216 -0.38132253 0.26444 -0.37716556 0.26433274 -0.37699065
		 0.26560619 -0.38175315 0.26546648 -0.38137701 0.26469922 -0.37723538 0.26471066 -0.37707245
		 0.26471707 -0.3769865 0.26460689 -0.37655511 0.26599154 -0.38191861 0.2657311 -0.38137698
		 0.26513216 -0.37688997 0.26521447 -0.37657511 0.26546648 -0.3768355 0.26560619 -0.37645936
		 0.26609331 -0.37676314 0.26608214 -0.37627307 0.58725256 -0.097874291 0.58638966
		 -0.097887985 0.58614159 -0.099097505 0.58725262 -0.098670684 0.58725262 -0.097011857
		 0.58614159 -0.096585035 0.587659 -0.0978503 0.587659 -0.09831661 0.587659 -0.097365931
		 0.45581374 0.0037396096 0.45535371 0.0037396096 0.45535371 0.0032732987 0.45581374
		 0.003425221 0.45581374 0.0040720589 0.45535371 0.0042239791 0.22973524 -0.065341353
		 0.50180525 0.066895232 0.45704532 0.1122006 -0.2505618 -0.016829349 -0.25052029 -0.016841952
		 0.54720294 0.021684511 0.53771949 0.1026929 0.4893184 0.14495823 0.59145206 -0.02244715
		 -0.25084558 -0.01716077 0.59512424 0.069935046 0.65796554 0.038019661 0.64843965
		 -0.079153515 -0.25061148 -0.017219314 0.7353797 -0.0047605829 0.55576307 0.029953208
		 0.26194718 -0.37915 0.26195204 -0.38028005 0.55541962 0.029414462 0.55525255 0.029772231
		 0.26194572 -0.3779439 0.2625424 -0.38065079 0.5554257 0.030126939 0.086228393 0.06056992
		 0.26253405 -0.37756997 0.26311478 -0.38104105 0.086061299 0.06021215 0.085717902
		 0.060750898 0.26310438 -0.37717664 0.26354057 -0.38124174 0.086055264 0.060924627
		 -0.43193144 0.070355363 0.26352906 -0.37697369 0.26395571 -0.38144502 -0.4319286
		 0.070557833 -0.4319258 0.07075768 0.26394311 -0.37676814 0.26412588 -0.38170919 -0.43188637
		 0.070799254 -0.4317117 0.070358105 0.26411188 -0.37650305 -0.71092165 -0.098178126
		 -0.7111848 -0.099215984 -0.71102184 -0.099293485 -0.7107172 -0.098592721 -0.7108506
		 -0.099214047 -0.71045256 -0.098762177 -0.71111494 -0.099633746 -0.71093589 -0.099565946
		 0.2639975 -0.38324136 0.26363468 -0.38320619 0.26379684 -0.38359976 0.264052 -0.38350675
		 0.26414588 -0.38387996 0.26437742 -0.3836695 0.26441401 -0.38299403 0.26439467 -0.38326442
		 0.26456109 -0.38407826 0.26473778 -0.38377279 0.26450154 -0.38356325 0.26490286 -0.38417038
		 0.26500201 -0.38370493 0.26567784 -0.38370779 0.26519847 -0.38345766 0.26544583 -0.38310179
		 0.26508147 -0.38311294 0.26489767 -0.38279814 0.26477987 -0.38278916 -0.43187997
		 0.070322707 0.26480722 -0.38228422 0.26502618 -0.38212439 -0.43174642 0.070781454
		 0.26533622 -0.3820565 -0.43159148 0.070700839 0.26564309 -0.38217139 -0.43156883
		 0.070506871 0.2657221 -0.38237044 0.2663134 -0.38224357 0.26565158 -0.38255471 0.26619899
		 -0.38279122 0.26534858 -0.3826721 0.26566213 -0.38290277 0.26489472 -0.38262999 0.26497009
		 -0.3827315 0.26482758 -0.38270301 -0.82249153 -0.13057254 -0.82230061 -0.1314366
		 -0.85912663 0.016109683 -0.85960621 0.016134996 -0.85952586 0.015863154 -0.85898489
		 0.015895549 -0.85919273 0.016333092 -0.85963297 0.016473155 -0.85922295 0.015628312
		 -0.8588261 0.015752206 -0.0077780681 -0.029872574 -0.0073296991 -0.029605662 -0.0073373648
		 -0.029299457 -0.0078152558 -0.029550873 -0.0069860448 -0.028837027 -0.0074583692
		 -0.02870976 0.42265314 0.020396164 0.42225623 0.02030682 0.42257935 0.019947432 0.42286077
		 0.020071315 0.42292023 0.019578004 0.42306083 0.019667948 0.051301632 0.023758776
		 0.051773958 0.023580244 0.052014932 0.024119014 0.051628675 0.024394937 0.35803303
		 0.0018880364 0.35855898 0.0021120403 0.35790929 0.002780153 0.35774779 0.0025513442
		 -0.35838789 0.39798886 -0.35966292 0.39805031 0.58035582 0.065687612 0.58036482 0.066171996
		 -0.36002478 0.39807642 0.5811981 0.0661349 0.65220594 -0.075703412 0.65092778 -0.075703412
		 0.65093684 -0.076187797 0.65177006 -0.0761507 0.65094233 -0.076674074 0.65156293
		 -0.076651827 0.65094441 -0.077051438 0.65145439 -0.07705228 0.65094334 -0.07813631
		 0.65145332 -0.078137152 0.65083259 -0.078448415 0.65156347 -0.078449629 -0.22595409
		 -0.0092952866 -0.226771 -0.009514343 -0.22619158 -0.009860835 -0.22571962 -0.0097796749
		 -0.22576725 -0.010324491 -0.22553322 -0.01026595 -0.22548355 -0.010655913 -0.22544198
		 -0.010643314 0.023118101 0.046243768 0.02264405 0.047303084 0.022317879 0.046369493
		 0.022649508 0.046033826 0.022058288 0.045855541 0.022208862 0.045706119 -0.35441241
		 0.39549306 -0.35483932 0.39544144 -0.35465795 0.39495862 -0.35434616 0.39499632 -0.35451549
		 0.39457247 -0.35428578 0.39460024 -0.16939786 -0.082056247 -0.16939871 -0.083141118
		 -0.35438609 0.39349532 -0.3541564 0.39352313 -0.82213652 -0.1319214 -0.35440999 0.39317772
		 -0.35411951 0.39321283 -0.8216067 -0.13233325 -0.82252419 -0.13057269 -0.25184929
		 -0.017970921 0.021956366 0.046391711 0.021799171 0.04590641 -0.25126985 -0.017624427
		 -0.25079793 -0.01770559 0.022120422 0.046876509 0.02176542 0.045527656 0.021732762
		 0.045527797 -0.35302144 0.39466989 -0.35322052 0.39465225 -0.35312584 0.3935715 -0.35292679
		 0.39358914 -0.25103235 -0.018189978 0.58026057 0.068432584 -0.35309437 0.39326081
		 -0.35280904 0.39328605 0.58099151 0.068433829;
	setAttr ".uvtk[500:658]" 0.34276789 0.043634824 0.34271866 0.043865532 0.34256375
		 0.04378492 0.34254104 0.043590952 0.34289801 0.043841761 0.34285864 0.043883339 0.34268394
		 0.043442186 0.34285218 0.043406788 0.34290084 0.043641914 0.34290364 0.043439444
		 0.58037132 0.068120509 0.5808813 0.068121351 -0.35919437 0.39423603 -0.35959399 0.39347592
		 -0.36000675 0.39269087 0.58037239 0.067035638 -0.35277066 0.38987204 -0.35347518
		 0.39025876 -0.35405225 0.38907093 -0.35341784 0.38855347 -0.94299549 -0.27621484
		 -0.9434613 -0.27621484 -0.35269549 0.38777158 -0.35200605 0.38805979 -0.61307555
		 0.033697527 -0.6128816 0.033697527 -0.61300552 0.034322433 -0.61307555 0.034093622
		 -0.61277252 0.033697527 -0.61277252 0.03440012 -0.61266202 0.033697527 -0.6126073
		 0.034322433 -0.61244655 0.033697527 -0.61244655 0.034093622 -0.35787794 0.40161887
		 -0.35658789 0.40195757 -0.35663885 0.4026545 -0.35788015 0.40219158 -0.35785744 0.40127936
		 -0.35654512 0.40137261 -0.35476843 0.40223897 -0.35520595 0.40298861 -0.35849354
		 0.40150324 -0.35848632 0.40140441 -0.35783669 0.40093538 0.58163393 0.065687612 -0.35471809
		 0.40155047 -0.35847643 0.40126923 -0.35349369 0.40233216 -0.3541511 0.40310317 -0.36002478
		 0.39866984 0.58099097 0.066636026 -0.35966289 0.39869601 -0.35846955 0.40117505 -0.35428259
		 0.40157095 -0.35431394 0.40199977 -0.35975847 0.40129894 -0.35974652 0.40113559 -0.35425082
		 0.40113643 -0.36012295 0.40130913 -0.36010596 0.40107679 -0.36009392 0.40091199 -0.35973507
		 0.40097913 -0.24755009 0.024579491 -0.24753793 0.023852563 -0.2472515 0.023848563
		 -0.2472575 0.024579491 -0.2478465 0.024579491 -0.24782811 0.023856612 0.60361767
		 0.21974723 0.64662492 0.16098107 0.73276997 0.16201033 0.74818558 0.19977543 0.22923218
		 -0.06432268 0.22946402 -0.064320453 0.56013858 0.19885899 0.22863968 -0.065770261
		 0.2290938 -0.064866126 0.82649112 0.16313016 0.51493061 0.19752288 0.22954836 -0.064863086
		 0.81208712 0.012836913 0.85520262 0.13840598 0.85239804 0.038699806 0.87604159 0.13761477
		 0.87203717 0.067206703 0.90273273 0.15218328 -0.76340228 -0.14341345 -0.76360673
		 -0.14382805 -0.76330209 -0.14452882 -0.76313913 -0.14445132 -0.76387131 -0.14399751
		 -0.76347327 -0.14444937 -0.76338798 -0.14480127 -0.76320899 -0.14486907 0.26399744
		 -0.37497139 0.26405194 -0.37470597 0.26379672 -0.37461299 0.26363468 -0.37500662
		 0.26441407 -0.37521863 0.26439467 -0.37494817 0.26437736 -0.3745431 0.26414576 -0.37433276
		 0.26450151 -0.37464938 0.2647377 -0.37443981 0.26456094 -0.37413436 0.26500195 -0.37450758
		 0.26490271 -0.37404218 0.26519844 -0.37475485 0.26567775 -0.37450466 0.2650815 -0.3750996
		 0.26544586 -0.37511072 0.26477993 -0.3754234 0.26489773 -0.3754144 -0.43179569 0.070550747
		 -0.1698834 -0.081743158 0.26502621 -0.37608808 0.26480725 -0.37592828 -0.16980103
		 -0.083140433 0.26533622 -0.376156 -0.16980018 -0.082055561 0.26564309 -0.37604111
		 0.26631463 -0.37597519 0.26572213 -0.37584206 0.26620811 -0.37541717 0.26565161 -0.37565783
		 0.26565191 -0.37530768 0.26534861 -0.37554041 0.26497012 -0.37548101 0.26489475 -0.37558252
		 -0.82245779 -0.1309513 -0.82218552 -0.13088568 0.26482761 -0.37550947 -0.099513687
		 0.016132496 -0.099655479 0.015918361 -0.099114493 0.01588597 -0.099034138 0.01615781
		 -0.099814266 0.015775019 -0.099417381 0.015651125 -0.099447645 0.016355904 -0.099007361
		 0.016495969 -0.94299632 -0.27512994 0.26663196 -0.37641916 -0.943524 -0.27481747
		 -0.94346213 -0.27512994 0.26651886 -0.37522259 -0.9432314 -0.27481747 0.2310012 0.018404799
		 0.23079355 0.01807995 0.23107496 0.017956065 0.23139806 0.018315455 0.23059349 0.017676583
		 0.23073408 0.017586635 -0.94323075 -0.27512994 0.26564398 -0.3748309 -0.82194877
		 -0.13142912 -0.94293499 -0.27481747 0.63377482 -0.011028112 0.63348967 -0.011691418;
createNode polyMapSewMove -n "pasted__polyMapSewMove22";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[47]" "e[50]" "e[53]" "e[212]";
createNode polyMapSewMove -n "pasted__polyMapSewMove21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[370]" "e[431]" "e[436]";
createNode polyMapSewMove -n "pasted__polyMapSewMove20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[231]" "e[246]";
createNode polyMapSewMove -n "pasted__polyMapSewMove19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[597]" "e[605]";
createNode polyMapSewMove -n "pasted__polyMapSewMove18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[211]" "e[574]";
createNode polyMapSewMove -n "pasted__polyMapSewMove17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[308]" "e[316]";
createNode polyMapSewMove -n "pasted__polyMapSewMove16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[269]" "e[289]";
createNode polyMapSewMove -n "pasted__polyMapSewMove15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[73]" "e[80]" "e[84]" "e[205]";
createNode polyMapSewMove -n "pasted__polyMapSewMove14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[450]" "e[452]" "e[455]" "e[572]";
createNode polyTweakUV -n "pasted__polyTweakUV4";
	setAttr ".uopa" yes;
	setAttr -s 693 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.43652907 0.0070693153 0.43652359
		 0.0058260569 0.43785369 0.0057099983 0.43785369 0.0070693153 0.43563953 0.0070693153
		 0.43563953 0.0060860207 0.43651167 0.004921501 0.43785372 0.0048370049 0.43963605
		 0.0057099983 0.43963605 0.0070693153 0.43785369 0.0084609427 0.43652359 0.008344885
		 0.43563953 0.0080849202 0.43563953 0.0056864964 0.43980491 0.0047877459 0.4409537
		 0.0056960704 0.4409537 0.0070553888 0.43963605 0.0084609427 0.43785369 0.009411023
		 0.43651167 0.0092494395 0.43563953 0.0084844455 0.43417799 0.0060860207 0.43417799
		 0.0056864964 0.43785366 0.0043343646 0.43995491 0.0043388712 0.44071606 0.004822257
		 0.44167951 0.007031986 0.44196349 0.0056470702 0.4409537 0.0084748697 0.43980491
		 0.0093831951 0.43417799 0.0084844455 0.43417799 0.0080849202 0.43376261 0.0060320115
		 0.43376261 0.0055784774 0.43563953 0.0054245084 0.43417799 0.0054245084 0.44136825
		 0.0043506804 0.44197047 0.0043311571 0.44267082 0.0049972413 0.44196349 0.0085238703
		 0.44071606 0.0093486849 0.43995491 0.009820261 0.43785369 0.0097594904 0.43563953
		 0.0087464331 0.43417799 0.0087464331 0.43376261 0.008592464 0.43376261 0.0081389304
		 0.43376261 0.0053164889 0.43417799 0.0053365235 0.43563953 0.0053459364 0.44054297
		 0.0039081061 0.44138324 0.003795577 0.44301316 0.0043668356 0.4437207 0.0054042833
		 0.44267082 0.0091737006 0.44197047 0.0098397834 0.44136825 0.009820261 0.43417799
		 0.0088344179 0.43563953 0.008825005 0.43376261 0.0088544525 0.44067723 0.0032637266
		 0.44138891 0.003239911 0.44175652 0.0037835285 0.44262898 0.0038056504 0.4437207
		 0.0087666577 0.44301316 0.0098041063 0.44138324 0.010375365 0.44045392 0.010332408
		 0.44072631 0.0028019503 0.4413929 0.002806399 0.44165999 0.0031622194 0.44215986
		 0.0031782924 0.44262898 0.010365291 0.44175652 0.010387412 0.44138891 0.010931037
		 0.44069114 0.010906205 0.44080102 0.0015641965 0.44139418 0.0015642133 0.44164452
		 0.0027770563 0.4418081 0.0027784281 0.44215986 0.010992657 0.44165999 0.011008729
		 0.4413929 0.01136455 0.44081539 0.011364733 0.44079429 0.0012119147 0.44151825 0.0012065017
		 0.44139451 0.0031647647 0.44145185 0.0028062339 0.4418081 0.01139255 0.44164452 0.011393922
		 0.44139418 0.012606736 0.44081664 0.01260692 0.44145185 0.011364715 0.44139451 0.011006182
		 0.44151825 0.012964445 0.44069049 0.012964711 -0.34438652 -0.41831103 -0.34270537
		 -0.41835904 -0.34289104 -0.41744027 -0.34437001 -0.41739094 -0.34433329 -0.41891652
		 -0.34296909 -0.41915563 -0.34166813 -0.41888073 -0.34165138 -0.41759819 -0.34294921
		 -0.41691184 -0.34436211 -0.41689029 -0.34430245 -0.41925654 -0.3435623 -0.41951063
		 -0.34229878 -0.41950813 -0.34295872 -0.42005274 -0.34110698 -0.41897604 -0.34100541
		 -0.41806528 -0.34172818 -0.41694459 -0.34582266 -0.41691124 -0.34588131 -0.41743901
		 -0.34580466 -0.41915447 -0.34521171 -0.41950998 -0.34047961 -0.41893646 -0.34040469
		 -0.41841772 -0.34704387 -0.41694349 -0.34712094 -0.41759706 -0.34007972 -0.41887736
		 -0.34005007 -0.41865528 -0.34606773 -0.41835767 -0.34710538 -0.4188785 -0.34776744
		 -0.41806251 -0.34766662 -0.41897336 -0.34836844 -0.41841447 -0.34829396 -0.41893327
		 -0.34872326 -0.4186517 -0.34869382 -0.41887382 0.0064168833 0.086630777 0.0067670266
		 0.086172245 -0.3430098 -0.41584477 -0.34436911 -0.41584477 0.0068944613 0.085598454
		 -0.34140038 -0.41512963 -0.34301054 -0.41402501 -0.34436986 -0.41402501 -0.34576222
		 -0.41584477 0.0059032566 0.085598454 -0.34105903 -0.41634139 -0.34100366 -0.41568521
		 -0.34165213 -0.41391546 -0.34301054 -0.41225126 -0.34436986 -0.41225126 -0.34576148
		 -0.41402501 -0.34737161 -0.41512963 0.0060430686 0.086172245 0.00640269 0.086172245
		 -0.341005 -0.41699106 -0.34044522 -0.41618398 -0.34047276 -0.41584891 -0.34188056
		 -0.41225126 -0.34314871 -0.41078329 -0.34436986 -0.41078329 -0.34576148 -0.41225126
		 -0.3471199 -0.41391546 -0.34776837 -0.41568521 -0.34771299 -0.41634139 -0.34040412
		 -0.41654521 -0.34009144 -0.41600236 -0.34009328 -0.41584209 -0.34213048 -0.41079509
		 -0.34338656 -0.41003713 -0.34436986 -0.41003713 -0.34562328 -0.41078329 -0.34689146
		 -0.41225126 -0.34829924 -0.41584891 -0.34832677 -0.41618398 -0.34776703 -0.41699106
		 0.0063956324 0.085598454 -0.34004942 -0.41617969 -0.34298703 -0.41003713 -0.34538546
		 -0.41003713 -0.34664154 -0.41079509 -0.34867874 -0.41584209 -0.34868056 -0.41600236
		 -0.34836787 -0.41654521 -0.34298703 -0.40857559 -0.34338656 -0.40857559 -0.34578499
		 -0.41003713 -0.34872261 -0.41617969 -0.34272504 -0.41003713 -0.34272504 -0.40857559
		 -0.34287903 -0.40816021 -0.34333256 -0.40816021 -0.34538546 -0.40857559 -0.34578499
		 -0.40857559 -0.34261703 -0.40816021 -0.34543946 -0.40816021 -0.345893 -0.40816021
		 -0.34604698 -0.40857559 -0.34604698 -0.41003713 -0.34615499 -0.40816021 -0.0060292338
		 0.028473377 -0.0060292338 0.028019844 -0.005949039 0.027757853 -0.0058071716 0.028473377
		 -0.0056822654 0.027668901 -0.0056822654 0.028473377 -0.0054930928 0.027757853 -0.0055557201
		 0.028473377 -0.0053090071 0.028019844 -0.0053090071 0.028473377 0.43635225 0.0031842666
		 0.43639752 0.0025301103 0.43785372 0.0021051394 0.43785366 0.0029052459 0.43563953
		 0.0033784593 0.43563959 0.0032649271 0.43951786 0.0018432366 0.43995497 0.0027358562
		 0.43634731 0.0035737131 0.43785366 0.0035768629 0.43563953 0.0035336048 0.44073203
		 0.0018004969 0.44141838 0.002735873 0.43995497 0.0035262818 0.43634224 0.0039682593
		 -0.48822081 0.041471448 0.43563956 0.0036417532 0.43417799 0.0035801027 0.43417802
		 0.00339259 0.44045398 0.0030469447 0.44045401 0.0035393166 -0.48822692 0.039871722
		 0.43651167 0.004570567 -0.48789284 0.041470893 0.43376261 0.0036173277 0.43376264
		 0.0033505538 -0.48822597 0.041113909 0.43417799 0.0037597597 0.43376261 0.0038064923
		 0.69897908 0.035338055 0.69931412 0.035338055 0.69932103 0.036174979 0.69899303 0.036170397
		 0.69863975 0.035338055 0.69866079 0.036165759 0.46834621 0.069181427 0.46950063 0.070898555
		 0.46895576 0.071092293 0.46813112 0.070191249 0.46688357 0.071466058 0.46652299 0.070504345
		 0.46985286 0.072072588 0.46745297 0.0726882 0.46644655 0.069596015 0.46771467 0.068919085;
	setAttr ".uvtk[250:499]" 0.46986264 0.072609678 0.46812776 0.073339939 0.46674675
		 0.068693161 0.46727353 0.068453744 0.47005114 0.072837472 0.46878204 0.07352183 0.47045723
		 0.072982058 0.46926886 0.073460199 -0.11883914 0.39040717 -0.1194617 0.3910003 -0.11985945
		 0.39062274 -0.11937623 0.39020079 -0.12063686 0.3912226 -0.12081395 0.3907657 -0.12014859
		 0.39026734 -0.11960402 0.38988104 -0.11910637 0.3917405 -0.12062337 0.39173806 -0.12063675
		 0.39028889 -0.1194617 0.39264965 -0.12063847 0.39242545 -0.12033153 0.38985217 -0.1202197
		 0.38987419 -0.11985945 0.39302728 -0.1208168 0.39288265 -0.1201617 0.38940439 -0.12004542
		 0.38960287 -0.11883914 0.39324278 -0.11937623 0.39344919 -0.12014859 0.39338261 -0.12064088
		 0.39336103 -0.11984915 0.38890526 -0.11972815 0.38939786 -0.1197486 0.38968283 -0.1197355
		 0.38949621 -0.11960402 0.39376888 -0.1202197 0.39377582 -0.12033685 0.39379945 -0.11915863
		 0.38892683 -0.11925289 0.38928729 -0.12004542 0.39404711 -0.12016822 0.39424741 -0.1187101
		 0.38879424 -0.11887008 0.38922492 -0.1197486 0.39396712 -0.1197355 0.39415371 -0.11972815
		 0.39425209 -0.11985431 0.39474601 -0.11826887 0.38860482 -0.11856709 0.38922498 -0.11925289
		 0.39436269 -0.11915863 0.39472315 -0.11887008 0.39442503 -0.1187101 0.39485571 -0.11815234
		 0.39450788 -0.11816514 0.395069 -0.21766275 0.0061724153 -0.21865089 0.0061567356
		 -0.21893491 0.0047718226 -0.21766274 0.0052605313 -0.21766274 0.0071599116 -0.21893491
		 0.0076486217 -0.2171974 0.0061998842 -0.2171974 0.0056659533 -0.2171974 0.0067544887
		 0.063922733 0.013788042 0.063396014 0.013788042 0.063396014 0.013254111 0.063922733
		 0.013428062 0.063922733 0.0141687 0.063396014 0.01434265 -0.51913005 0.081675828
		 -0.51984084 0.081675828 -0.51985419 0.080773003 -0.51949424 0.080773003 -0.51877117
		 0.082584158 -0.51983476 0.082584158 -0.52059901 0.081675828 -0.52023488 0.080773003
		 -0.5198282 0.083470151 -0.51857358 0.083545871 -0.52095789 0.082584158 -0.52115548
		 0.083545871 -0.51982099 0.084609918 -0.51852709 0.084768005 -0.52120203 0.084768005
		 -0.58144432 0.052909061 -0.12289973 0.39177489 -0.12289416 0.390481 -0.58183753 0.05229219
		 -0.58202887 0.052701842 -0.12290136 0.39315587 -0.1222182 0.39005646 -0.58183062
		 0.053107984 -0.3465825 -0.011119361 -0.12222769 0.39358404 -0.12156279 0.38960963
		 -0.34677383 -0.011529014 -0.34716704 -0.010912144 -0.1215747 0.39403439 -0.12107527
		 0.38937986 -0.34678075 -0.010713219 0.80057591 0.0060902494 -0.12108843 0.39426678
		 -0.12059993 0.38914707 0.80057919 0.0063220775 0.80058235 0.0065509076 -0.12061434
		 0.3945021 -0.12040509 0.38884458 0.80062753 0.0065985122 0.8008275 0.0060933852 -0.12042113
		 0.39480567 0.71150243 0.044440992 0.71120107 0.043252628 0.71138763 0.043163888 0.7117365
		 0.043966275 0.71158373 0.043254849 0.71203947 0.043772247 0.71128106 0.042774286
		 0.71148604 0.042851921 -0.1205521 0.38709024 -0.12096751 0.38713053 -0.12078186 0.38667986
		 -0.12048967 0.38678634 -0.12038222 0.38635904 -0.12011705 0.38660002 -0.12007515
		 0.38737342 -0.1200973 0.38706383 -0.11990677 0.38613197 -0.11970444 0.38648173 -0.11997493
		 0.38672167 -0.11951543 0.3860265 -0.11940189 0.38655943 -0.11862807 0.38655615 -0.11917695
		 0.38684255 -0.11889372 0.38725004 -0.11931091 0.38723728 -0.11952137 0.38759774 -0.11965627
		 0.38760799 0.8006348 0.0060528563 -0.11962494 0.38818619 -0.11937421 0.38836917 0.80078775
		 0.0065781255 -0.11901924 0.3884469 0.80096507 0.006485824 -0.11866786 0.38831535
		 0.80099106 0.0062637241 -0.11857739 0.38808745 -0.11790035 0.38823271 -0.11865814
		 0.38787645 -0.11803133 0.38760564 -0.11900506 0.38774204 -0.11864606 0.38747793 -0.11952475
		 0.38779026 -0.11943845 0.38767403 -0.11960163 0.38770664 0.13093546 0.035605166 0.13115411
		 0.034615815 0.52709472 0.037455913 0.52654564 0.037484899 0.52663761 0.037173636
		 0.52725708 0.037210729 0.52701908 0.037711721 0.52651495 0.037872095 0.52698445 0.036904737
		 0.52743882 0.037046596 -0.73423785 0.055574808 -0.73372447 0.055880424 -0.73373324
		 0.056231033 -0.73428047 0.055943161 -0.73333102 0.05676052 -0.73387182 0.056906242
		 -0.14872074 0.039789673 -0.14917518 0.039687376 -0.1488052 0.03927587 -0.14848298
		 0.039417718 -0.14841492 0.03885287 -0.1482539 0.038955856 -0.25976297 0.035322301
		 -0.25922209 0.03511788 -0.25894618 0.035734776 -0.25938845 0.036050711 -0.014699562
		 0.042627685 -0.01409725 0.042884175 -0.014841174 0.043649171 -0.015026066 0.043387182
		 0.72085702 0.019675804 0.72084498 0.021137364 0.72021759 0.021137364 0.72029531 0.019675804
		 0.72085154 0.021552753 0.72013134 0.021552753 -0.13404484 -0.054719713 -0.1355083
		 -0.054719713 -0.1354979 -0.055274341 -0.13454385 -0.055231862 -0.13549168 -0.055831134
		 -0.13478102 -0.055805657 -0.13548927 -0.056263216 -0.13490534 -0.056264184 -0.13549048
		 -0.057505406 -0.13490655 -0.057506371 -0.13561733 -0.057862777 -0.13478041 -0.057864163
		 0.52664208 0.041375984 0.52570671 0.041125163 0.52637011 0.040728424 0.52691054 0.040821355
		 0.52685601 0.040197533 0.52712393 0.040264565 0.52718079 0.039818052 0.52722842 0.03983248
		 -0.194195 0.04070982 -0.19544944 0.041200917 -0.19492942 0.040165678 -0.19440894
		 0.040162191 -0.19477101 0.03954342 -0.19450551 0.039540872 0.44022572 0.0037877688
		 0.43973696 0.0037286673 0.43994457 0.0031758088 0.4403016 0.0032189754 0.44010773
		 0.0027336658 0.44037077 0.0027654672 -0.48799711 0.041113522 -0.4879981 0.039871335
		 0.44025591 0.0015003439 0.44051889 0.0015321452 0.13134195 0.034060713 0.44022852
		 0.0011366392 0.44056109 0.0011768513 0.13194865 0.033589136 0.13089807 0.035604998
		 0.63761622 0.0052494742 0.63721341 0.0052580363 0.6370334 0.0047023622 0.63734514
		 0.0046272152 0.63800794 0.0062847137 0.63740128 0.005813139 0.63699478 0.0042686835
		 0.63695741 0.0042688493 -0.12104569 0.075962923 -0.12127452 0.075962536 -0.12127355
		 0.074720353 -0.12104472 0.07472074 -0.12150635 0.075962141 -0.12150537 0.074719958
		 -0.12126839 0.074362814 -0.12094042 0.074363373 -0.12160066 0.074362248;
	setAttr ".uvtk[500:692]" 0.4320685 0.026062101 0.43201208 0.026326263 0.43183476
		 0.02623396 0.43180877 0.026011862 0.43221751 0.026299043 0.43217236 0.026346648 0.43197235
		 0.025841523 0.432165 0.025800996 0.4322207 0.026070215 0.43222395 0.025838386 0.53038794
		 0.047264561 0.53038794 0.046281267 0.53094965 0.046281267 0.53094965 0.047264561
		 0.53094965 0.048280165 0.53038794 0.048280165 -0.34438652 -0.41831103 -0.34437001
		 -0.41739094 -0.34588131 -0.41743901 -0.34606773 -0.41835767 0.0066852919 0.086630777
		 0.0061519481 0.086630777 -0.34647524 -0.4195064 -0.34581578 -0.42005157 0.013880838
		 0.027821021 0.0141029 0.027821021 0.013961033 0.028536545 0.013880838 0.028274557
		 0.014227807 0.027821021 0.014227807 0.028625499 0.014354351 0.027821021 0.014416978
		 0.028536545 0.014601064 0.027821021 0.014601064 0.028274557 0.0067777606 0.08515662
		 0.0070567993 0.083655141 0.0078569055 0.083655141 0.007431922 0.085111313 0.0063883145
		 0.085161567 0.0063851825 0.083655141 0.0072262166 0.081553921 0.0081188297 0.081990957
		 0.0066970959 0.085869268 0.0065835621 0.085869268 0.0059937648 0.085166581 0.005704761
		 0.083655141 0.0064357896 0.081553914 0.0064284136 0.085869268 0.0072262166 0.080090426
		 0.0081615793 0.080776788 0.0053914548 0.08499717 0.0050479481 0.083655141 0.005635004
		 0.081553921 0.0063202665 0.085869268 0.0064227567 0.081054904 0.0069151302 0.081054904
		 0.0065694167 0.087330826 0.0063819028 0.087330826 0.0059239301 0.081054904 0.0066114459
		 0.087746218 0.0063446723 0.087746218 0.0061554983 0.087746218 0.0062022354 0.087330826
		 0.098067701 0.032432243 0.098081633 0.031599898 0.098409601 0.03159532 0.098402716
		 0.032432243 0.097728305 0.032432243 0.097749367 0.031604536 0.095698744 0.18556277
		 0.095483676 0.18455298 0.096308269 0.18365194 0.096853152 0.18384567 0.093875542
		 0.18423988 0.094236106 0.18327817 0.095067203 0.18582514 0.093799107 0.18514821 0.094805531
		 0.18205602 0.097205378 0.18267165 0.094626054 0.18629049 0.094099335 0.18605104 0.095480345
		 0.18140429 0.097215198 0.18213458 0.096134551 0.18122239 0.09740366 0.18190679 0.096621446
		 0.18128404 0.097809806 0.1817622 0.074856132 0.048100676 0.074622065 0.047625959
		 0.074970894 0.046823572 0.075157471 0.046912313 0.074319065 0.047431935 0.074774832
		 0.046914533 0.074872501 0.046511609 0.075077489 0.04643397 -0.1205521 0.39655951
		 -0.12048972 0.3968634 -0.12078193 0.39696983 -0.1209675 0.39651915 -0.12007511 0.39627638
		 -0.12009731 0.396586 -0.12011714 0.39704978 -0.12038234 0.39729071 -0.11997499 0.39692816
		 -0.11970454 0.39716816 -0.11990692 0.39751786 -0.11940198 0.39709049 -0.1195156 0.39762342
		 -0.11917698 0.3968074 -0.11862816 0.39709389 -0.11931089 0.39641267 -0.11889368 0.39639995
		 -0.11965619 0.3960419 -0.1195213 0.39605218 0.80073136 0.0063139643 -0.48855308 0.041472014
		 -0.11937419 0.39528081 -0.11962491 0.39546379 -0.48845875 0.039872117 -0.11901923
		 0.39520305 -0.48845777 0.041114304 -0.11866784 0.3953346 -0.11789895 0.39541006 -0.11857736
		 0.3955625 -0.11802091 0.39604899 -0.1186581 0.3957735 -0.11865775 0.3961744 -0.11900502
		 0.39590791 -0.11943841 0.39597598 -0.11952472 0.39585975 0.13097411 0.03517149 0.13128588
		 0.035246633 -0.11960158 0.39594334 0.44933596 0.033654653 0.44917363 0.033409465
		 0.44979304 0.033372376 0.44988507 0.033683635 0.44899178 0.033245336 0.44944623 0.033103477
		 0.4494116 0.033910457 0.44991574 0.034070835 0.006684321 0.08787296 -0.11753557 0.39490169
		 0.0060801618 0.088230751 0.0061509721 0.08787296 -0.11766507 0.39627185 0.0064151725
		 0.088230751 -0.42273727 0.039754719 -0.42297503 0.039382763 -0.42265281 0.039240915
		 -0.42228281 0.039652418 -0.42320409 0.038920902 -0.42304307 0.038817912 0.0064159096
		 0.08787296 -0.11866682 0.39672032 0.13155693 0.034624379 0.0067545706 0.088230751
		 0.04177741 0.035893764 0.041450903 0.035134275 0.041635796 0.034872286 0.042379718
		 0.035637278 -0.21847576 0.031193279 -0.21903749 0.031193279 -0.21911517 0.029731723
		 -0.21848777 0.029731723 -0.21920145 0.029316328 -0.21848121 0.029316328 -0.056539927
		 -0.29854313 -0.057038944 -0.298031 -0.057992984 -0.2979885 -0.058003388 -0.29854313
		 -0.057276104 -0.29745719 -0.057986762 -0.29743171 -0.057400424 -0.29699868 -0.057984356
		 -0.29699963 -0.057401638 -0.29575649 -0.05798557 -0.29575744 -0.057275493 -0.29539868
		 -0.058112413 -0.29540008 0.13042836 0.057399385 0.13069682 0.057954013 0.13015643
		 0.058046948 0.129493 0.057650208 0.13091025 0.058510806 0.13064228 0.058577839 0.13101472
		 0.058942888 0.13096713 0.05895732 -0.45487344 0.03048137 -0.45508739 0.031028999
		 -0.45560786 0.031025512 -0.45612788 0.029990271 -0.45518395 0.031650316 -0.45544946
		 0.031647768;
createNode polyMapSewMove -n "pasted__polyMapSewMove13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[13:14]" "e[41]" "e[393:395]";
createNode polyMapSewMove -n "pasted__polyMapSewMove12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[474]";
createNode polyMapSewMove -n "pasted__polyMapSewMove11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[557]";
createNode polyMapSewMove -n "pasted__polyMapSewMove10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[541]";
createNode polyMapSewMove -n "pasted__polyMapSewMove9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[556]";
createNode polyMapSewMove -n "pasted__polyMapSewMove8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[564]";
createNode polyTweakUV -n "pasted__polyTweakUV3";
	setAttr ".uopa" yes;
	setAttr -s 709 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.0099985478 -0.020582763 -0.0099786045
		 -0.016096735 -0.014778064 -0.015677962 -0.014778064 -0.020582763 -0.0067888694 -0.020582763
		 -0.0067888694 -0.017034758 -0.0099356556 -0.01283284 -0.014778057 -0.012527955 -0.021209328
		 -0.015677962 -0.021209328 -0.020582763 -0.014778064 -0.025604151 -0.0099786045 -0.02518538
		 -0.0067888694 -0.024247356 -0.0067888694 -0.015593161 -0.021818651 -0.012350214 -0.025963897
		 -0.015627706 -0.025963897 -0.020532513 -0.021209328 -0.025604151 -0.014778064 -0.02903231
		 -0.0099356556 -0.028449273 -0.0067888694 -0.025688957 -0.0015151539 -0.017034758
		 -0.0015151539 -0.015593161 -0.014778069 -0.010714283 -0.022360012 -0.010730546 -0.025106387
		 -0.012474738 -0.028582701 -0.020448068 -0.029607501 -0.015450899 -0.025963897 -0.025654405
		 -0.021818651 -0.028931899 -0.0015151539 -0.025688957 -0.0015151539 -0.024247356 -1.6309132e-005
		 -0.016839877 -1.6309132e-005 -0.015203397 -0.0067888694 -0.014647832 -0.0015151539
		 -0.014647832 -0.027459597 -0.010773156 -0.029632742 -0.010702711 -0.032159667 -0.013106133
		 -0.029607501 -0.025831211 -0.025106387 -0.028807377 -0.022360004 -0.030508958 -0.014778064
		 -0.030289682 -0.0067888694 -0.026634282 -0.0015151539 -0.026634282 -1.6309132e-005
		 -0.026078718 -1.6309132e-005 -0.024442239 -1.6309132e-005 -0.014258068 -0.0015151539
		 -0.014330359 -0.0067888694 -0.014364324 -0.024481747 -0.0091762226 -0.02751375 -0.0087701855
		 -0.033394992 -0.010831448 -0.035947952 -0.014574856 -0.032159667 -0.028175984 -0.029632742
		 -0.030579401 -0.027459597 -0.030508958 -0.0015151539 -0.026951756 -0.0067888694 -0.026917793
		 -1.6309132e-005 -0.027024049 -0.024966205 -0.006851091 -0.027534058 -0.0067651574
		 -0.02886077 -0.0087267114 -0.032008756 -0.0088065341 -0.035947952 -0.026707258 -0.033394992
		 -0.030450666 -0.02751375 -0.032511931 -0.024160583 -0.032356933 -0.025143392 -0.0051848711
		 -0.027548689 -0.0052009234 -0.028512316 -0.0064848238 -0.030315895 -0.0065428205
		 -0.032008756 -0.03247558 -0.02886077 -0.032555401 -0.027534058 -0.034516927 -0.025016336
		 -0.034427319 -0.02541285 -0.00071870349 -0.027553072 -0.00071876397 -0.028456507
		 -0.005095046 -0.029046752 -0.0050999969 -0.030315895 -0.034739267 -0.028512316 -0.034797318
		 -0.027548689 -0.036081161 -0.025464913 -0.036081824 -0.025388572 0.00055242958 -0.028000709
		 0.00057195913 -0.027554343 -0.006494008 -0.02776134 -0.0052003278 -0.029046752 -0.036182143
		 -0.028456507 -0.036187034 -0.027553072 -0.040563323 -0.025469292 -0.040563986 -0.02776134
		 -0.036081817 -0.027554343 -0.034788128 -0.028000709 -0.041854095 -0.025014119 -0.041854996
		 0.28988191 -0.33536592 0.29005274 -0.32929972 0.28673771 -0.32997099 0.28656194 -0.33530763
		 0.29206669 -0.33517292 0.29292735 -0.33025011 0.29193354 -0.32555631 0.28792799 -0.32549801
		 0.28411144 -0.33018178 0.28395793 -0.33527994 0.29329351 -0.33506107 0.29420927 -0.33239016
		 0.2941983 -0.327831 0.29616439 -0.33021137 0.29227662 -0.32353139 0.28899017 -0.32316622
		 0.28575891 -0.32577562 0.28411144 -0.34055004 0.28673771 -0.34076083 0.29292735 -0.3404817
		 0.29420927 -0.33834165 0.29213294 -0.32126766 0.29026103 -0.32099819 0.28575891 -0.34495619
		 0.28792799 -0.3452338 0.29191905 -0.31982484 0.29111764 -0.31971824 0.29005274 -0.34143209
		 0.29193354 -0.3451755 0.28899017 -0.34756559 0.29227662 -0.34720042 0.29026103 -0.34973362
		 0.29213294 -0.34946415 0.29111764 -0.35101357 0.29191905 -0.35090697 -0.19277807
		 0.54611951 -0.19787621 0.54611951 -0.19765787 0.54154944 -0.19275306 0.54154944 -0.20228237
		 0.54470652 -0.20346503 0.53896904 -0.19765517 0.53498334 -0.19275038 0.53498334 -0.1877263
		 0.54154944 -0.18750796 0.54611951 -0.20469682 0.54334146 -0.20489657 0.54097378 -0.20255674
		 0.53458792 -0.19765517 0.52858311 -0.19275038 0.52858311 -0.18772899 0.53498334 -0.18191914
		 0.53896904 -0.1831018 0.54470652 -0.20255998 0.54725409 -0.20489176 0.54568559 -0.20691152
		 0.54277349 -0.20681217 0.54156446 -0.20173249 0.52858311 -0.19715658 0.52328628 -0.19275038
		 0.52328628 -0.18772899 0.52858311 -0.18282743 0.53458792 -0.1804876 0.54097378 -0.18068735
		 0.54334146 -0.2070598 0.54407692 -0.2081881 0.54211813 -0.20818144 0.54153979 -0.20083067
		 0.5233289 -0.19629839 0.52059394 -0.19275038 0.52059394 -0.18822759 0.52328628 -0.18365167
		 0.52858311 -0.178572 0.54156446 -0.17847265 0.54277349 -0.1804924 0.54568559 -0.18282418
		 0.54725409 -0.20833975 0.54275799 -0.19773997 0.52059394 -0.18908578 0.52059394 -0.18455352
		 0.5233289 -0.17720273 0.54153979 -0.17719609 0.54211813 -0.17832437 0.54407692 -0.19773997
		 0.51532024 -0.19629839 0.51532024 -0.18764418 0.52059394 -0.17704442 0.54275799 -0.1986853
		 0.52059394 -0.1986853 0.51532024 -0.19812974 0.51382136 -0.19649327 0.51382136 -0.18908578
		 0.51532024 -0.18764418 0.51532024 -0.19907507 0.51382136 -0.1888909 0.51382136 -0.18725443
		 0.51382136 -0.18669885 0.51532024 -0.18669885 0.52059394 -0.1863091 0.51382136 0.0075907698
		 -0.1229387 0.0075907698 -0.12130222 0.0073014027 -0.12035688 0.0067895064 -0.1229387
		 0.0063387509 -0.12003592 0.0063387509 -0.1229387 0.0056561618 -0.12035688 0.0058821975
		 -0.1229387 0.0049919887 -0.12130222 0.0049919887 -0.1229387 -0.0093603721 -0.0065643773
		 -0.0095238863 -0.0042039952 -0.014778165 -0.0026705796 -0.014778133 -0.0055575902
		 -0.0067889183 -0.0072650798 -0.0067889234 -0.0068554226 -0.020783035 -0.0017255596
		 -0.02236009 -0.0049463846 -0.0093424944 -0.0079696104 -0.014778105 -0.0079809753
		 -0.0067889183 -0.0078248885 -0.025164112 -0.0015713423 -0.027640654 -0.0049464451
		 -0.022360055 -0.007798465 -0.0093243867 -0.0093932729 0.68664271 -0.12466253 -0.006788908
		 -0.0082151191 -0.0015151971 -0.0079926662 -0.0015152048 -0.0073160669 -0.024160651
		 -0.0060688802 -0.024160631 -0.0078454977 0.68666482 -0.11889026 -0.0099356584 -0.011566571
		 0.68545932 -0.12466051 -1.6351458e-005 -0.0081269844 -1.636245e-005 -0.0071643884
		 0.6866613 -0.12337243 -0.0015151898 -0.0086409468 -1.6343645e-005 -0.0088095712 0.05426909
		 -0.12575772 0.053060286 -0.12575772 0.053035427 -0.12877758 0.054218832 -0.12876105
		 0.055493742 -0.12575772 0.055417754 -0.12874432 -0.12369309 -0.1747773 -0.12785852
		 -0.1809731 -0.12589242 -0.18167211 -0.12291706 -0.17842089 -0.11841548 -0.18302082
		 -0.11711445 -0.17955069 -0.12912945 -0.18520933 -0.12047011 -0.18743065 -0.11683866
		 -0.17627317 -0.12141432 -0.17383058;
	setAttr ".uvtk[250:499]" -0.12916484 -0.18714727 -0.12290504 -0.18978226 -0.11792196
		 -0.17301551 -0.11982252 -0.17215151 -0.12984492 -0.18796927 -0.1252656 -0.19043863
		 -0.1313104 -0.1884909 -0.12702246 -0.19021624 -0.26134026 -0.33556783 -0.25909385
		 -0.33770785 -0.25765866 -0.33634552 -0.25940228 -0.33482313 -0.25485355 -0.3385101
		 -0.25421456 -0.33686143 -0.25661537 -0.33506322 -0.25858033 -0.33366942 -0.26037598
		 -0.34037876 -0.25490224 -0.34036985 -0.25485393 -0.335141 -0.25909385 -0.34365937
		 -0.25484771 -0.34285033 -0.25595525 -0.33356509 -0.25635877 -0.33364448 -0.25765866
		 -0.34502169 -0.25420427 -0.34450001 -0.25656804 -0.33194953 -0.2569876 -0.33266553
		 -0.26134026 -0.34579939 -0.25940228 -0.34654412 -0.25661537 -0.346304 -0.25483903
		 -0.34622607 -0.25769582 -0.33014852 -0.25813243 -0.33192587 -0.25805864 -0.33295411
		 -0.2581059 -0.3322809 -0.25858033 -0.34769782 -0.25635877 -0.34772274 -0.25593606
		 -0.34780797 -0.26018742 -0.33022621 -0.25984731 -0.33152699 -0.2569876 -0.34870172
		 -0.25654453 -0.34942433 -0.26180583 -0.32974792 -0.26122859 -0.33130187 -0.25805864
		 -0.34841311 -0.2581059 -0.34908634 -0.25813243 -0.34944135 -0.25767723 -0.35122368
		 -0.26339793 -0.32906431 -0.26232183 -0.33130205 -0.25984731 -0.34984025 -0.26018739
		 -0.35114104 -0.26122859 -0.35006535 -0.26180586 -0.35161927 -0.26232183 -0.35006517
		 -0.26339793 -0.35230288 0.11270278 -0.056761116 0.11626829 -0.056704536 0.1172931
		 -0.05170738 0.11270276 -0.053470783 0.11270276 -0.060324281 0.1172931 -0.062087685
		 0.11102369 -0.056860231 0.11102369 -0.054933656 0.11102369 -0.058861405 -0.2061023
		 -0.094320782 -0.20420174 -0.094320782 -0.20420174 -0.09239421 -0.2061023 -0.093021877
		 -0.2061023 -0.095694311 -0.20420174 -0.096321963 0.13637897 -0.074266933 0.1389436
		 -0.07426694 0.13899185 -0.071009301 0.13769294 -0.071009293 0.13508405 -0.077544451
		 0.13892166 -0.077544458 0.14167932 -0.074266933 0.14036536 -0.071009293 0.13889791
		 -0.080741376 0.13437101 -0.081014581 0.14297424 -0.077544451 0.14368729 -0.081014581
		 0.13887209 -0.084853962 0.13420318 -0.085424408 0.14385512 -0.085424408 -0.24304701
		 -0.13404 -0.24668849 -0.34050292 -0.24670857 -0.33583406 -0.24162827 -0.13181415
		 -0.24093792 -0.13329229 -0.24668258 -0.34548596 -0.24914762 -0.33430231 -0.2416532
		 -0.13475777 0.55793232 -0.10650211 -0.24911337 -0.34703082 -0.25151253 -0.33269 0.55862272
		 -0.10502397 0.56004143 -0.1072498 -0.25146955 -0.34865582 -0.25327164 -0.33186087
		 0.55864763 -0.10796758 0.13332209 -0.1197246 -0.25322416 -0.34949443 -0.25498682
		 -0.33102089 0.13331041 -0.1205611 0.13329887 -0.12138678 -0.25493479 -0.35034361
		 -0.25568986 -0.32992947 0.133136 -0.12155855 0.13241427 -0.11973591 -0.25563195 -0.35143882
		 -0.74191421 -0.14209192 -0.7408269 -0.13780397 -0.74150014 -0.13748376 -0.74275881
		 -0.140379 -0.74220759 -0.13781197 -0.74385214 -0.1396789 -0.74111551 -0.13607797
		 -0.7418552 -0.13635811 -0.25515938 -0.32359937 -0.25366047 -0.32374468 -0.25433034
		 -0.32211858 -0.25538462 -0.32250282 -0.25577235 -0.32096097 -0.25672916 -0.32183048
		 -0.25688034 -0.32462117 -0.25680041 -0.32350403 -0.25748792 -0.32014161 -0.25821799
		 -0.32140365 -0.25724196 -0.32226941 -0.25890002 -0.31976104 -0.25930968 -0.32168403
		 -0.26210183 -0.32167223 -0.26012132 -0.32270563 -0.2611433 -0.32417598 -0.25963795
		 -0.32412991 -0.25887853 -0.32543054 -0.25839177 -0.32546759 0.13310944 -0.11958968
		 -0.25850487 -0.32755378 -0.25940955 -0.32821405 0.13255771 -0.12148499 -0.26069039
		 -0.32849455 0.13191782 -0.12115195 -0.26195824 -0.32801989 0.13182403 -0.12035055
		 -0.2622847 -0.32719752 -0.26472765 -0.32772171 -0.26199335 -0.32643625 -0.26425505
		 -0.32545903 -0.26074153 -0.32595125 -0.26203692 -0.3249982 -0.25886634 -0.32612523
		 -0.25917774 -0.32570583 -0.25858894 -0.32582352 0.55664319 -0.19254144 0.55585426
		 -0.18897156 -0.4136596 -0.12010614 -0.41167831 -0.12021071 -0.41201031 -0.11908759
		 -0.41424543 -0.11922143 -0.41338673 -0.12102915 -0.41156772 -0.12160783 -0.41326171
		 -0.11811733 -0.41490147 -0.1186292 0.70089453 -0.11498447 0.69904208 -0.11608722
		 0.69907373 -0.11735232 0.70104814 -0.11631359 0.69762224 -0.11926286 0.6995737 -0.11978868
		 0.063385315 -0.12147529 0.065025054 -0.12110616 0.063690044 -0.11962134 0.062527403
		 -0.12013316 0.062281821 -0.11809503 0.061700832 -0.11846664 0.28292364 -0.12361508
		 0.28097221 -0.12287747 0.27997649 -0.12510341 0.28157237 -0.12624338 0.10754716 -0.098879188
		 0.10537386 -0.099804662 0.10805815 -0.10256499 0.10872529 -0.10161966 -0.73484671
		 -0.12900405 -0.73480338 -0.13427778 -0.73253959 -0.13427778 -0.73281991 -0.12900405
		 -0.73482704 -0.13577661 -0.73222828 -0.13577661 0.12994336 -0.15135871 0.13522393
		 -0.15135871 0.13518637 -0.14935744 0.13174394 -0.14951073 0.13516393 -0.14734839
		 0.13259968 -0.1474403 0.13515525 -0.1457893 0.13304827 -0.14578581 0.13515963 -0.14130713
		 0.13305265 -0.14130364 0.13561732 -0.14001764 0.13259748 -0.14001264 0.12539046 -0.13888718
		 0.12876552 -0.13798214 0.12637168 -0.13655061 0.12442175 -0.13688593 0.12461855 -0.134635
		 0.12365163 -0.13487686 0.12344644 -0.13326573 0.12327467 -0.13331778 0.36848092 -0.13023522
		 0.3730073 -0.13200726 0.37113091 -0.12827182 0.36925289 -0.12825923 0.37055933 -0.12602653
		 0.36960137 -0.12601735 -0.023337143 -0.0087420112 -0.021573359 -0.0085287569 -0.022322714
		 -0.0065338588 -0.023610944 -0.006689616 -0.022911329 -0.0049384809 -0.023860384 -0.0050532292
		 0.68583566 -0.12337102 0.68583918 -0.11888885 -0.02344585 -0.000488305 -0.024394905
		 -0.00060305337 0.5551765 -0.18696861 -0.023347156 0.00082404405 -0.024547229 0.00067894626
		 0.55298734 -0.18526702 0.55677813 -0.19254082 -0.31122783 -0.16793504 -0.30977431
		 -0.16796593 -0.30912486 -0.16596091 -0.31024981 -0.16568975 -0.31264126 -0.17167048
		 -0.3104521 -0.1699689 -0.30898541 -0.16439606 -0.3088505 -0.16439667 -0.19512336
		 -0.15760994 -0.19429769 -0.15760854 -0.1943012 -0.15312637 -0.19512688 -0.15312777
		 -0.19346119 -0.15760712 -0.1934647 -0.15312496 -0.1943198 -0.15183628 -0.19550321
		 -0.15183829 -0.19312087 -0.15183423;
	setAttr ".uvtk[500:708]" -0.29219595 -0.1171286 -0.2919924 -0.11808176 -0.29135251
		 -0.11774871 -0.29125872 -0.11694732 -0.29273355 -0.11798355 -0.29257068 -0.11815533
		 -0.29184896 -0.11633269 -0.29254413 -0.11618645 -0.29274508 -0.11715788 -0.29275677
		 -0.11632137 -0.59711933 -0.15691382 -0.59711933 -0.15336581 -0.59914619 -0.15336581
		 -0.59914619 -0.15691382 -0.59914619 -0.1605784 -0.59711933 -0.1605784 -0.45397976
		 -0.087550625 -0.45403805 -0.090870582 -0.44858482 -0.090694807 -0.44791356 -0.087379783
		 -0.44886398 -0.084505163 -0.45417273 -0.085365847 -0.44644484 -0.083234228 -0.44882521
		 -0.081268139 0.013165868 -0.1185051 0.012364605 -0.1185051 0.0128765 -0.1210869 0.013165868
		 -0.12014158 0.011913905 -0.1185051 0.011913905 -0.12140788 0.0114573 -0.1185051 0.01123132
		 -0.1210869 0.010567087 -0.1185051 0.010567087 -0.12014158 0.83079869 -0.10395515
		 0.8297919 -0.0985374 0.82690477 -0.0985374 0.82843834 -0.10379166 0.83220392 -0.10397301
		 0.83221525 -0.0985374 0.8291806 -0.090955444 0.8259598 -0.092532516 0.83108979 -0.1065266
		 0.83149946 -0.1065266 0.83362758 -0.1039911 0.83467036 -0.0985374 0.83203262 -0.090955436
		 0.83205926 -0.1065266 0.8291806 -0.085674867 0.82580549 -0.088151455 0.83580089 -0.10337982
		 0.83704036 -0.0985374 0.83492213 -0.090955444 0.83244944 -0.1065266 0.83207965 -0.089154862
		 0.83030307 -0.089154862 0.83155048 -0.11180031 0.83222705 -0.11180031 0.83387959
		 -0.089154862 0.83139884 -0.11329916 0.8323614 -0.11329916 0.83304399 -0.11329916
		 0.83287537 -0.11180031 -0.34929028 -0.11896475 -0.34934053 -0.11596143 -0.35052395
		 -0.1159449 -0.35049906 -0.11896475 -0.34806561 -0.11896475 -0.34814161 -0.11597817
		 -0.14565089 -0.083804063 -0.14487487 -0.080160469 -0.14785023 -0.076909229 -0.14981632
		 -0.077608302 -0.13907225 -0.0790307 -0.14037329 -0.075560577 -0.14337212 -0.084750794
		 -0.13879646 -0.082308233 -0.14242792 -0.07115072 -0.15108725 -0.073372066 -0.14178032
		 -0.086429879 -0.13987976 -0.085565865 -0.14486285 -0.068799049 -0.15112264 -0.071434043
		 -0.1472234 -0.068142742 -0.15180272 -0.070612103 -0.14898026 -0.068365134 -0.15326822
		 -0.070090413 0.61339468 -0.17034458 0.61423922 -0.16863166 0.61298054 -0.16573642
		 0.61230737 -0.16605663 0.61533254 -0.16793157 0.61368805 -0.16606463 0.61333561 -0.16461077
		 0.61259598 -0.16433063 -0.25515938 -0.35776708 -0.25538445 -0.35886365 -0.2543301
		 -0.35924771 -0.2536605 -0.35762155 -0.25688052 -0.35674554 -0.25680041 -0.35786268
		 -0.25672886 -0.35953623 -0.25577193 -0.36040562 -0.25724176 -0.35909736 -0.25821763
		 -0.3599633 -0.25748736 -0.36122519 -0.25930935 -0.35968307 -0.25889936 -0.36160606
		 -0.2601212 -0.35866168 -0.2621015 -0.3596954 -0.25963804 -0.35723734 -0.26114345
		 -0.35719138 -0.2583921 -0.35589942 -0.25887877 -0.35593668 0.13276125 -0.12053183
		 0.68784165 -0.12466456 -0.25940961 -0.35315323 -0.25850496 -0.35381353 0.68750131
		 -0.11889169 -0.26069045 -0.35287267 0.68749785 -0.12337384 -0.26195833 -0.3533473
		 -0.26472774 -0.35364538 -0.26228482 -0.35416967 -0.26425523 -0.3559081 -0.26199347
		 -0.35493097 -0.2620371 -0.35636899 -0.26074168 -0.355416 -0.25917789 -0.35566142
		 -0.25886649 -0.35524204 0.55650371 -0.1909766 0.55537879 -0.19124775 -0.25858912
		 -0.35554382 -0.21790363 -0.1288113 -0.2173178 -0.12792659 -0.21955293 -0.12779276
		 -0.2198849 -0.12891588 -0.21666178 -0.12733437 -0.21830152 -0.1268225 -0.21817648
		 -0.12973431 -0.21999553 -0.13031299 -0.41187769 -0.096848607 -0.41203132 -0.098177724
		 -0.41005692 -0.099216461 -0.41002524 -0.097951353 -0.41055685 -0.10165281 -0.40860543
		 -0.10112701 0.27671814 -0.12759314 0.27757606 -0.12625103 0.27641341 -0.1257392 0.27507839
		 -0.12722401 0.27840263 -0.1245845 0.27782163 -0.12421289 0.08903344 -0.12803867 0.090384625
		 -0.13066697 0.091980457 -0.129527 0.090984866 -0.12730107 -0.19317548 -0.1152699
		 -0.19199736 -0.11252943 -0.1926645 -0.11158411 -0.19534878 -0.11434443 0.41566861
		 -0.14988281 0.41769543 -0.14988281 0.41797572 -0.14460909 0.41571191 -0.14460909
		 0.41828707 -0.14311025 0.41568828 -0.14311025 -0.15279962 -0.085383512 -0.15099904
		 -0.087231487 -0.14755659 -0.087384768 -0.14751905 -0.085383512 -0.1501433 -0.089301899
		 -0.14757903 -0.089393817 -0.14969471 -0.090956405 -0.14758772 -0.090952918 -0.14969033
		 -0.09543857 -0.14758334 -0.095435083 -0.1501455 -0.096729584 -0.14712565 -0.096724577
		 -0.015976509 -0.13949922 -0.016945213 -0.14150049 -0.014995284 -0.14183581 -0.012601441
		 -0.14040427 -0.017715322 -0.14350954 -0.016748391 -0.14375143 -0.018092291 -0.14506863
		 -0.01792052 -0.1451207 -0.088038936 -0.11816765 -0.087266959 -0.12014366 -0.085388951
		 -0.12013108 -0.083512574 -0.11639563 -0.08691851 -0.12238555 -0.08596053 -0.12237636
		 0.67994547 -0.17425448 0.67991996 -0.1763249 0.68121761 -0.1763249 0.6817221 -0.17425448
		 0.67814559 -0.17425448 0.67860532 -0.1763249 0.67986876 -0.17797941 0.68082482 -0.17797939
		 0.6789003 -0.17797939 0.67987233 -0.18246156 0.68082821 -0.18246156 0.67890376 -0.18246156
		 0.67987502 -0.18375257 0.6810838 -0.18375257 0.67865026 -0.18375257 0.55440074 -0.18900247;
createNode polyMapSewMove -n "pasted__polyMapSewMove7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[569]";
createNode polyMapSewMove -n "pasted__polyMapSewMove6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[198]";
createNode polyTweakUV -n "pasted__polyTweakUV2";
	setAttr ".uopa" yes;
	setAttr -s 713 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.0049064052 0.014295142 0.0048966031
		 0.012090188 0.007255597 0.011884355 0.007255597 0.014295142 0.0033288079 0.014295142
		 0.0033288079 0.012551238 0.0048754928 0.010485942 0.0072555938 0.010336087 0.010416622
		 0.011884355 0.010416622 0.014295142 0.007255597 0.016763218 0.0048966031 0.016557386
		 0.0033288079 0.016096335 0.0033288079 0.011842675 0.010716113 0.010248725 0.012753554
		 0.011859654 0.012753554 0.014270443 0.010416622 0.016763218 0.007255597 0.0184482
		 0.0048754928 0.01816163 0.0033288079 0.0168049 0.00073670858 0.012551238 0.00073670858
		 0.011842675 0.0072556003 0.0094446447 0.010982199 0.0094526382 0.012332077 0.01030993
		 0.014040729 0.014228937 0.014544431 0.011772752 0.012753554 0.016787918 0.010716113
		 0.018398847 0.00073670858 0.0168049 0.00073670858 0.016096335 7.5627664e-009 0.012455451
		 7.5627664e-009 0.011651101 0.0033288079 0.011378034 0.00073670858 0.011378034 0.013488709
		 0.0094735818 0.014556837 0.0094389562 0.015798852 0.010620269 0.014544431 0.01687482
		 0.012332077 0.018337645 0.010982195 0.019173993 0.007255597 0.019066215 0.0033288079
		 0.017269539 0.00073670858 0.017269539 7.5627664e-009 0.016996473 7.5627664e-009 0.016192123
		 7.5627664e-009 0.011186459 0.00073670858 0.011221992 0.0033288079 0.011238686 0.012025088
		 0.0086886687 0.013515326 0.0084890965 0.016406029 0.009502233 0.017660856 0.011342164
		 0.015798852 0.018027306 0.014556837 0.019208616 0.013488709 0.019173993 0.00073670858
		 0.017425582 0.0033288079 0.017408889 7.5627664e-009 0.017461115 0.012263175 0.0075458372
		 0.013525308 0.0075035999 0.014177403 0.0084677283 0.015724707 0.0085069621 0.017660856
		 0.017305408 0.016406029 0.01914534 0.013515326 0.020158477 0.011867203 0.020082295
		 0.012350266 0.0067268689 0.013532499 0.0067347591 0.014006133 0.0073658121 0.014892615
		 0.0073943185 0.015724707 0.020140611 0.014177403 0.020179844 0.013525308 0.021143973
		 0.012287845 0.021099929 0.012482707 0.004531695 0.013534682 0.0045317248 0.013978733
		 0.0066827191 0.014268845 0.0066851522 0.014892615 0.021253254 0.014006133 0.02128176
		 0.013532499 0.021912813 0.012508296 0.021913139 0.012470774 0.0039069164 0.013754702
		 0.0038973177 0.013535277 0.0073703267 0.01363702 0.0067344662 0.014268845 0.021962421
		 0.013978733 0.021964852 0.013534682 0.024115853 0.01251045 0.024116179 0.01363702
		 0.021913107 0.013535277 0.021277245 0.013754702 0.024750257 0.012286726 0.024750726
		 0.020749908 0.016686449 0.020665936 0.013704805 0.022295319 0.014034748 0.022381712
		 0.016657798 0.019676065 0.016591594 0.01925303 0.014171947 0.019741504 0.011864873
		 0.021710282 0.01183622 0.023586173 0.014138356 0.023661621 0.016644187 0.019073067
		 0.016536616 0.018622985 0.015223796 0.018628379 0.012982909 0.017662017 0.014152898
		 0.019572882 0.010869602 0.021188213 0.010690122 0.022776417 0.011972673 0.023586173
		 0.01923451 0.022295319 0.019338118 0.01925303 0.019200919 0.018622985 0.018149069
		 0.019643504 0.0097569562 0.020563565 0.0096245054 0.022776417 0.021400193 0.021710282
		 0.021536645 0.019748632 0.0090477932 0.020142533 0.0089953979 0.020665936 0.019668061
		 0.019741504 0.021507993 0.021188213 0.022682743 0.019572882 0.022503264 0.020563565
		 0.023748362 0.019643504 0.023615906 0.020142533 0.024377469 0.019748632 0.024325076
		 0.027356992 0.00054519164 0.029862793 0.00054519164 0.029755479 0.0027914303 0.027344704
		 0.0027914303 0.032028474 0.0012396973 0.032609768 0.0040597473 0.029754153 0.0060187732
		 0.027343381 0.0060187732 0.024873987 0.0027914303 0.024766669 0.00054519164 0.033215206
		 0.0019106587 0.03331339 0.0030743931 0.032163337 0.0062130885 0.029754153 0.0091645494
		 0.027343381 0.0091645494 0.024875306 0.0060187732 0.022019695 0.0040597473 0.022600988
		 0.0012396973 0.032164928 -1.2452453e-005 0.033311028 0.00075847597 0.034303758 0.0021898188
		 0.034254931 0.0027840729 0.031758208 0.0091645494 0.029509086 0.011768029 0.027343381
		 0.011768029 0.024875306 0.0091645494 0.022466127 0.0062130885 0.021316076 0.0030743931
		 0.021414256 0.0019106587 0.034376644 0.0015491537 0.034931216 0.0025119339 0.034927946
		 0.0027961752 0.031314947 0.011747084 0.029087273 0.013091339 0.027343381 0.013091339
		 0.025120374 0.011768029 0.022871256 0.0091645494 0.020374531 0.0027840729 0.020325704
		 0.0021898188 0.021318434 0.00075847597 0.022464534 -1.2452453e-005 0.035005752 0.0021974233
		 0.029795835 0.013091339 0.02554219 0.013091339 0.023314519 0.011747084 0.019701516
		 0.0027961752 0.019698249 0.0025119339 0.020252816 0.0015491537 0.029795835 0.015683437
		 0.029087273 0.015683437 0.024833627 0.013091339 0.019623712 0.0021974233 0.030260475
		 0.013091339 0.030260475 0.015683437 0.029987408 0.016420137 0.02918306 0.016420137
		 0.02554219 0.015683437 0.024833627 0.015683437 0.03045205 0.016420137 0.025446402
		 0.016420137 0.02464205 0.016420137 0.024368985 0.015683437 0.024368985 0.013091339
		 0.02417741 0.016420137 0.73301882 -0.012102578 0.73301882 -0.012906929 0.73316103
		 -0.013371574 0.73341268 -0.012102578 0.73363417 -0.013529332 0.73363417 -0.012102578
		 0.73396969 -0.013371574 0.73385859 -0.012102578 0.73429614 -0.012906929 0.73429614
		 -0.012102578 0.0045927339 0.0074049137 0.0046731029 0.0062447563 0.0072556473 0.0054910667
		 0.007255631 0.0069100652 0.0033288319 0.0077493177 0.0033288344 0.0075479662 0.010207095
		 0.0050265775 0.010982267 0.0066096503 0.0045839469 0.0080956034 0.0072556175 0.0081011895
		 0.0033288319 0.0080244709 0.01236048 0.0049507781 0.01357773 0.0066096797 0.01098225
		 0.0080114836 0.0045750467 0.0087953517 -0.56226295 -0.020712396 0.0033288267 0.0082162814
		 0.00073672971 0.0081069432 0.00073673355 0.0077743786 0.011867266 0.0071613709 0.011867255
		 0.0080346009 -0.5622738 -0.02354954 0.0048754942 0.0098635545 -0.56168127 -0.020713385
		 2.8360576e-008 0.0081729619 3.3765378e-008 0.0076998267 -0.56227207 -0.021346496
		 0.0007367261 0.0084255738 2.4524645e-008 0.008508455 -0.67754483 -0.0060218307 -0.67695069
		 -0.0060218307 -0.67693847 -0.0045375326 -0.6775201 -0.0045456556 -0.67814672 -0.0060218307
		 -0.67810941 -0.0045538838 -0.33078045 0.012106546 -0.32873309 0.015151847 -0.32969946
		 0.015495447 -0.33116189 0.013897427 -0.33337447 0.016158326 -0.33401394 0.014452714
		 -0.3281084 0.017234009 -0.33236459 0.018325813 -0.33414948 0.012841773 -0.33190051
		 0.011641224;
	setAttr ".uvtk[250:499]" -0.32809103 0.018186556 -0.33116779 0.019481689 -0.33361703
		 0.011240602 -0.33268288 0.010815933 -0.32775676 0.018590549 -0.33000755 0.019804277
		 -0.32703644 0.018846968 -0.32914403 0.019694965 -0.0024554685 0.033778027 -0.0035596068
		 0.034829877 -0.0042650159 0.034160268 -0.003408011 0.033411991 -0.0056437585 0.035224181
		 -0.0059578358 0.034413852 -0.0047778082 0.033530004 -0.0038120057 0.032844957 -0.0029294225
		 0.036142662 -0.0056198374 0.03613827 -0.0056435736 0.03356823 -0.0035596068 0.037755121
		 -0.0056466307 0.037357468 -0.0051022675 0.032793645 -0.004903933 0.032832704 -0.0042650159
		 0.038424723 -0.0059628934 0.038168307 -0.0048010694 0.031999588 -0.0045948452 0.032351501
		 -0.0024554685 0.038806967 -0.003408011 0.039173003 -0.0047778082 0.03905499 -0.0056509059
		 0.039016683 -0.0042467532 0.031114362 -0.0040321541 0.03198795 -0.0040684231 0.032493349
		 -0.0040451912 0.032162454 -0.0038120057 0.039740067 -0.004903933 0.039752319 -0.005111692
		 0.03979421 -0.0030221026 0.031152552 -0.0031892715 0.031791899 -0.0045948452 0.040233489
		 -0.0048126304 0.040588669 -0.002226623 0.030917471 -0.002510349 0.031681255 -0.0040684231
		 0.040091645 -0.0040451912 0.04042254 -0.0040321541 0.040597036 -0.0042558983 0.041473068
		 -0.0014440985 0.030581458 -0.0019730066 0.031681344 -0.0031892715 0.040793095 -0.0030221089
		 0.041432448 -0.002510349 0.040903736 -0.0022266209 0.041667514 -0.0019730066 0.04090365
		 -0.0014440902 0.042003505 -0.33192143 -0.056677356 -0.33367392 -0.056705166 -0.33417764
		 -0.059161332 -0.33192143 -0.058294598 -0.33192143 -0.054926015 -0.33417764 -0.054059282
		 -0.33109614 -0.056628641 -0.33109614 -0.057575576 -0.33109614 -0.055645037 -0.55991697
		 -0.026068319 -0.56085116 -0.026068319 -0.56085116 -0.027015252 -0.55991697 -0.026706748
		 -0.55991697 -0.025393214 -0.56085116 -0.025084712 0.087804839 -0.062341522 0.086544298
		 -0.062341519 0.086520575 -0.063942693 0.087159008 -0.063942693 0.088441312 -0.06073058
		 0.086555079 -0.060730577 0.085199654 -0.062341522 0.085845478 -0.063942693 0.086566746
		 -0.059159249 0.08879178 -0.059024967 0.084563181 -0.06073058 0.084212713 -0.059024967
		 0.086579442 -0.057137866 0.088874273 -0.056857482 0.08413022 -0.056857482 0.58357942
		 -0.028417075 -0.0096569946 0.036203686 -0.0096471235 0.033908874 0.58288211 -0.029511105
		 0.58254278 -0.028784582 -0.0096598985 0.038652908 -0.0084482953 0.033156034 0.58289433
		 -0.028064279 -0.2588588 -0.017290337 -0.0084651383 0.039412223 -0.0072859162 0.032363538
		 -0.25919813 -0.018016864 -0.25989547 -0.016922835 -0.0073070428 0.040210936 -0.0064212973
		 0.031956002 -0.25921038 -0.016570039 -0.496398 0.0014221052 -0.0064446339 0.040623121
		 -0.0055782651 0.031543147 -0.49639225 0.0018332576 -0.49638659 0.0022390899 -0.0056038373
		 0.041040506 -0.005232709 0.031006701 -0.49630654 0.0023235187 -0.49595177 0.0014276671
		 -0.0052611702 0.041578811 0.59867805 -0.0027894119 0.59814364 -0.0048969947 0.59847456
		 -0.0050543793 0.5990932 -0.0036313315 0.5988223 -0.0048930566 0.59963059 -0.0039754389
		 0.5982855 -0.0057453448 0.59864902 -0.0056076525 0.15272766 -0.053632058 0.15292066
		 -0.052917462 0.15207775 -0.053109214 0.15217784 -0.053651597 0.15139882 -0.053713482
		 0.151742 -0.054248281 0.15308222 -0.054549675 0.15254734 -0.054419626 0.15086147
		 -0.054477986 0.15141346 -0.054934982 0.15191285 -0.05453271 0.15056159 -0.055131268
		 0.15146013 -0.055487007 0.15122619 -0.056839313 0.15188894 -0.0559639 0.152518 -0.056579411
		 0.15261872 -0.055846047 0.15331115 -0.055584293 0.15336892 -0.05535141 -0.49629346
		 0.0013557898 -0.0038490987 0.029839024 -0.0034044301 0.030163551 -0.49602228 0.0022873613
		 -0.0027748849 0.030301422 -0.49570778 0.0021236641 -0.0021517177 0.030068113 -0.49566168
		 0.0017297651 -0.0019912587 0.029663909 -0.00079051661 0.029921556 -0.0021344707 0.029289735
		 -0.0010228107 0.028809417 -0.002749742 0.029051358 -0.0021130517 0.028582925 -0.0036714242
		 0.029136864 -0.0035183735 0.028930733 -0.0038077664 0.028988577 -0.0036654251 0.028795425
		 -0.0025522825 0.028178772 0.67539352 -0.0097192908 0.6744197 -0.0096678901 0.6745829
		 -0.010219917 0.67568147 -0.010154134 0.67525941 -0.0092656184 0.67436534 -0.0089811897
		 0.67519796 -0.010696813 0.67600393 -0.010445221 -0.6272639 -0.017900145 -0.62635338
		 -0.01735813 -0.62636894 -0.016736316 -0.62733942 -0.017246867 -0.62565553 -0.015797261
		 -0.62661469 -0.015538819 -0.59913039 -0.0071578491 -0.59993637 -0.0073392792 -0.59928018
		 -0.0080690887 -0.59870875 -0.0078175208 -0.59858805 -0.0088192858 -0.59830248 -0.0086366376
		 0.45741868 -0.00989829 0.45837787 -0.010260834 0.45886719 -0.0091667557 0.45808285
		 -0.0086064432 -0.70295638 -0.021021491 -0.70188814 -0.020566609 -0.70320749 -0.019209875
		 -0.70353544 -0.019674513 0.56622565 -0.0073002884 0.56620437 -0.0047081895 0.56509167
		 -0.0047081895 0.56522942 -0.0073002884 0.56621599 -0.0039714905 0.56493866 -0.0039714905
		 -0.16137601 -0.0049009565 -0.16397148 -0.0049009565 -0.16395304 -0.0058846013 -0.16226102
		 -0.005809261 -0.16394201 -0.0068720793 -0.16268164 -0.006826899 -0.16393773 -0.0076383874
		 -0.16290212 -0.0076401052 -0.16393989 -0.00984143 -0.16290428 -0.0098431436 -0.16416484
		 -0.010475233 -0.16268055 -0.010477692 -0.29733774 -0.014723616 -0.29899663 -0.015168454
		 -0.29782003 -0.015872074 -0.29686162 -0.01570726 -0.29695836 -0.016813619 -0.29648307
		 -0.016694738 -0.29638222 -0.017486632 -0.29629779 -0.017461048 0.39317915 -0.012342637
		 0.39095438 -0.011471664 0.39187664 -0.013307683 0.39279971 -0.013313867 0.39215758
		 -0.014411268 0.39262843 -0.014415783 0.011462499 0.0084752478 0.010595578 0.0083704311
		 0.010963897 0.0073899138 0.011597048 0.0074664704 0.011253208 0.0066057653 0.01171968
		 0.0066621653 -0.56186622 -0.021347187 -0.56186795 -0.023550227 0.011515901 0.0044184513
		 0.011982374 0.0044748518 -0.79851931 0.0096110944 0.011467393 0.0037734148 0.012057273
		 0.003844732 -0.79744333 0.0087747406 -0.79930651 0.012349911 -0.35642996 -0.0091011422
		 -0.35714439 -0.009085956 -0.3574636 -0.010071454 -0.35691068 -0.010204728 -0.35573527
		 -0.0072651254 -0.35681126 -0.0081014726 -0.35753214 -0.010840592 -0.35759848 -0.010840295
		 -0.13380924 -0.02259684 -0.13421507 -0.022597531 -0.13421334 -0.024800569 -0.13380753
		 -0.02479988 -0.13462622 -0.022598229 -0.1346245 -0.024801269 -0.13420421 -0.025434669
		 -0.13362256 -0.025433682 -0.13479349 -0.025435673;
	setAttr ".uvtk[500:712]" -0.24574254 0.037922967 -0.24584259 0.038391463 -0.24615709
		 0.038227767 -0.2462032 0.037833866 -0.24547829 0.038343187 -0.24555834 0.038427621
		 -0.24591309 0.037531767 -0.2455714 0.037459891 -0.24547262 0.037937358 -0.24546689
		 0.037526205 -0.019436363 -0.011626986 -0.019436363 -0.013370879 -0.018440148 -0.013370879
		 -0.018440148 -0.011626986 -0.018440148 -0.0098257978 -0.019436363 -0.0098257978 -0.068492368
		 -0.019004188 -0.068463713 -0.017372385 -0.071144037 -0.01745878 -0.071473978 -0.019088158
		 -0.071006835 -0.020501068 -0.068397507 -0.020078033 -0.072195873 -0.021125749 -0.071025886
		 -0.02209211 0.42224783 -0.007665161 0.42264166 -0.007665161 0.42239004 -0.0063961688
		 0.42224783 -0.0068608099 0.42286316 -0.007665161 0.42286316 -0.0062384061 0.42308754
		 -0.007665161 0.42319864 -0.0063961688 0.42352515 -0.007665161 0.42352515 -0.0068608099
		 -0.16109698 -0.016722027 -0.16060211 -0.019384917 -0.1591831 -0.019384917 -0.15993682
		 -0.016802382 -0.16178767 -0.016713247 -0.16179323 -0.019384917 -0.16030164 -0.023111561
		 -0.15871857 -0.022336408 -0.16124004 -0.015458127 -0.1614414 -0.015458127 -0.16248742
		 -0.016704353 -0.16299996 -0.019384917 -0.16170347 -0.023111563 -0.16171655 -0.015458127
		 -0.16030164 -0.025707029 -0.15864275 -0.024489757 -0.16355562 -0.01700481 -0.16416483
		 -0.019384917 -0.16312368 -0.023111561 -0.16190836 -0.015458127 -0.16172658 -0.023996569
		 -0.16085336 -0.023996569 -0.16146648 -0.01286603 -0.16179904 -0.01286603 -0.16261126
		 -0.023996569 -0.16139194 -0.012129327 -0.16186507 -0.012129327 -0.16220057 -0.012129327
		 -0.16211769 -0.01286603 -0.37454405 -0.010263806 -0.37451935 -0.011739979 -0.37393767
		 -0.011748102 -0.37394989 -0.010263806 -0.37514597 -0.010263806 -0.37510863 -0.011731753
		 -0.16077448 -0.11810491 -0.16115591 -0.11989579 -0.15969346 -0.12149382 -0.15872711
		 -0.12115021 -0.16400796 -0.12045114 -0.16336849 -0.12215669 -0.16189453 -0.11763959
		 -0.16414352 -0.11884014 -0.16235861 -0.12432421 -0.15810242 -0.12323243 -0.16267692
		 -0.11681429 -0.16361107 -0.11723897 -0.16116181 -0.12548009 -0.15808503 -0.12418495
		 -0.16000156 -0.12580267 -0.15775077 -0.12458894 -0.15913804 -0.12569335 -0.15703046
		 -0.12484536 -0.85894638 -0.0041237152 -0.85936153 -0.0049656346 -0.85874283 -0.0063886829
		 -0.85841197 -0.0062312959 -0.85989887 -0.0053097419 -0.85909057 -0.0062273596 -0.85891736
		 -0.006941956 -0.85855383 -0.0070796479 -0.15170451 0.0029150401 -0.15115464 0.002895501
		 -0.15105459 0.0034378858 -0.15189748 0.0036296363 -0.15205908 0.0019974227 -0.15152416
		 0.0021274732 -0.15071887 0.0022988182 -0.15037566 0.0028336183 -0.15088969 0.0020143879
		 -0.1503903 0.0016121154 -0.14983831 0.0020691105 -0.15043697 0.0010600914 -0.14953843
		 0.0014158335 -0.15086575 0.00058319984 -0.150203 -0.00029221276 -0.15159556 0.00070105435
		 -0.15149485 -3.231124e-005 -0.15234576 0.0011956914 -0.15228799 0.00096280844 -0.49612233
		 0.0018188662 -0.5628522 -0.020711394 -0.0034044068 0.042421471 -0.0038490565 0.042746015
		 -0.56268495 -0.023548838 -0.0027748619 0.042283576 -0.56268322 -0.021345798 -0.0021516799
		 0.042516861 -0.00079048087 0.042663366 -0.0019912082 0.042921059 -0.0010227266 0.043775514
		 -0.0021344034 0.043295238 -0.0021129593 0.044002045 -0.0027496684 0.043533638 -0.0035182936
		 0.043654293 -0.003671359 0.043448169 -0.0025521754 0.044406217 -0.0036653366 0.043789607
		 -0.0038076907 0.043596458 0.40326756 -0.0054734414 0.40297961 -0.0059082862 0.40407822
		 -0.0059740674 0.40424138 -0.0054220413 0.40265718 -0.006199372 0.40346313 -0.0064509609
		 0.40340167 -0.0050197691 0.40429574 -0.0047353404 -0.39701527 -0.044676185 -0.39693975
		 -0.044022903 -0.39791021 -0.043512356 -0.39792576 -0.04413417 -0.39766449 -0.042314857
		 -0.39862365 -0.042573296 -0.14176114 -0.016448699 -0.14218281 -0.017108368 -0.14161129
		 -0.017359938 -0.14095512 -0.016630128 -0.14258905 -0.017927485 -0.14230345 -0.018110134
		 0.66995507 -0.0039657769 0.66929096 -0.0026739319 0.66850656 -0.0032342428 0.66899586
		 -0.0043283212 -0.10100996 -0.0016867806 -0.10158902 -0.0030337521 -0.10126112 -0.0034983929
		 -0.099941753 -0.0021416645 0.22415482 -0.0093691386 0.22315861 -0.0093691386 0.22302084
		 -0.011961234 0.22413352 -0.011961234 0.22286782 -0.012697939 0.22414514 -0.012697939
		 0.1865291 -0.017262252 0.18564411 -0.01635395 0.18395209 -0.016278608 0.18393365
		 -0.017262252 0.18522349 -0.015336316 0.18396313 -0.015291138 0.18500301 -0.014523106
		 0.1839674 -0.014524819 0.18500085 -0.012320067 0.18396525 -0.01232178 0.18522458
		 -0.011685518 0.18374029 -0.011687975 0.77960777 -0.011615763 0.78008389 -0.010632118
		 0.77912551 -0.0104673 0.77794892 -0.011170925 0.78046238 -0.0096446406 0.77998716
		 -0.0095257536 0.7806477 -0.0088783307 0.78056329 -0.0088527398 0.31310472 -0.024840426
		 0.31272528 -0.023869194 0.31180221 -0.02387538 0.31087995 -0.025711397 0.312554 -0.022767279
		 0.31208315 -0.022771796 0.16507819 -0.011708688 0.16509071 -0.010691054 0.16445291
		 -0.010691054 0.16420496 -0.011708693 0.16596287 -0.011708693 0.16573687 -0.010691054
		 0.16511588 -0.0098778419 0.16464601 -0.0098778456 0.16559191 -0.0098778456 0.16511415
		 -0.0076748072 0.16464429 -0.0076748072 0.16559018 -0.0076748072 0.16511284 -0.0070402594
		 0.1645187 -0.0070402594 0.16571477 -0.0070402594 -0.79813802 0.010610762 -0.79861873
		 0.011714343 -0.79917163 0.011581077 -0.79885244 0.010595576 -0.79924017 0.012350207;
createNode polyMapSewMove -n "pasted__polyMapSewMove5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[255]" "e[275]" "e[295]" "e[304]" "e[312]";
createNode polyMapCut -n "pasted__polyMapCut4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 0;
createNode polyMapSewMove -n "pasted__polyMapSewMove4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[59]";
createNode polyTweakUV -n "pasted__polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 722 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.019589351 0.04143662 0.019550273
		 0.032646231 0.028954811 0.031825643 0.028954811 0.04143662 0.013299986 0.04143662
		 0.013299986 0.034484286 0.019466113 0.026250625 0.028954811 0.02510817 0.04155685
		 0.031825643 0.04155685 0.04143662 0.028954811 0.051276028 0.019550273 0.050455444
		 0.013299986 0.048617385 0.013299986 0.031659476 0.042750821 0.025304921 0.050873432
		 0.031727169 0.050873432 0.041338149 0.04155685 0.051276028 0.028954811 0.057993505
		 0.019466113 0.056851044 0.013299986 0.051442202 0.0029661343 0.034484286 0.0029661343
		 0.031659476 0.028954811 0.02264435 0.043811604 0.022214673 0.04919314 0.025548926
		 0.056004979 0.04117268 0.05801307 0.031380717 0.050873432 0.051374502 0.042750821
		 0.05779675 0.0029661343 0.051442202 0.0029661343 0.048617385 2.9148176e-005 0.034102418
		 2.9148176e-005 0.030895732 0.013299986 0.029807104 0.0029661343 0.029807104 0.053804256
		 0.022214673 0.058062535 0.022076637 0.063014045 0.026786143 0.05801307 0.051720954
		 0.04919314 0.057552751 0.043811604 0.060886998 0.028954811 0.060457323 0.013299986
		 0.053294566 0.0029661343 0.053294566 2.9148176e-005 0.052205939 2.9148176e-005 0.048999261
		 2.9148176e-005 0.02904336 0.0029661343 0.029185016 0.013299986 0.029251568 0.047339842
		 0.01859357 0.053910367 0.018289853 0.065434664 0.022328898 0.070437245 0.029664107
		 0.063014045 0.05631553 0.058062535 0.061025031 0.053804256 0.060886998 0.0029661343
		 0.053916655 0.013299986 0.053850107 2.9148176e-005 0.054058317 0.049016681 0.014536587
		 0.053950164 0.014361002 0.056549855 0.018204667 0.062718324 0.018361077 0.070437245
		 0.053437565 0.065434664 0.060772773 0.053910367 0.064811818 0.047339842 0.064508103
		 0.04989567 0.011294585 0.053978834 0.011295884 0.055867061 0.013811688 0.059401169
		 0.013925333 0.062718324 0.064740591 0.056549855 0.064897001 0.053950164 0.068740673
		 0.049016681 0.068565086 0.049904253 0.0025117958 0.053987414 0.002513095 0.055757698
		 0.011088418 0.056914281 0.011098118 0.059401169 0.069176339 0.055867061 0.069289982
		 0.053978834 0.07180579 0.04989567 0.071807086 0.049012344 -1.7945738e-005 0.054864563
		 -1.607794e-005 0.053989906 0.013829685 0.054395523 0.011294717 0.056914281 0.072003551
		 0.055757698 0.072013244 0.053987414 0.080588579 0.049904253 0.080589883 0.054395523
		 0.07180696 0.053989906 0.069271974 0.054864563 0.083117746 0.049012344 0.083119616
		 -0.3486087 0.34138441 -0.34894347 0.32949772 -0.34244767 0.33081308 -0.34210324 0.34127021
		 -0.35288978 0.34100628 -0.35457629 0.33136004 -0.35262889 0.32216251 -0.34478003
		 0.32204825 -0.33730146 0.33122614 -0.33700067 0.34121594 -0.35529372 0.34078708 -0.35708818
		 0.33555341 -0.35706669 0.32661974 -0.36091927 0.33128411 -0.35330114 0.31819469 -0.34686133
		 0.31747916 -0.34052968 0.32259226 -0.33730146 0.35154268 -0.34244767 0.35195577 -0.35457629
		 0.35140878 -0.35708818 0.34721544 -0.3530196 0.31375891 -0.34935161 0.3132309 -0.34052968
		 0.36017659 -0.34478003 0.36072055 -0.35260049 0.31093174 -0.35103011 0.31072286 -0.34894347
		 0.35327116 -0.35262889 0.36060637 -0.34686133 0.36528969 -0.35330114 0.36457416 -0.34935161
		 0.36953798 -0.3530196 0.36900988 -0.35103011 0.37204605 -0.35260049 0.37183711 0.098982781
		 0.0022051937 0.10897259 0.0022051937 0.10854477 0.011160209 0.098933794 0.011160209
		 0.11760645 0.0049739527 0.11992388 0.016216574 0.10853948 0.024026603 0.098928519
		 0.024026603 0.089083858 0.011160209 0.088656008 0.0022051937 0.12233757 0.0076488564
		 0.12272899 0.01228829 0.11814412 0.024801275 0.10853948 0.036567785 0.098928519 0.036567785
		 0.08908911 0.024026603 0.077704728 0.016216574 0.080022141 0.0049739527 0.11815045
		 -1.7952241e-005 0.12271958 0.0030554896 0.12667727 0.0087617766 0.12648262 0.011130878
		 0.11652899 0.036567785 0.10756248 0.046946991 0.098928519 0.046946991 0.08908911
		 0.036567785 0.0794845 0.024801275 0.074899614 0.01228829 0.075291038 0.0076488564
		 0.12696785 0.0062076543 0.12917873 0.010045948 0.12916571 0.011179125 0.11476186
		 0.046863493 0.10588085 0.052222595 0.098928519 0.052222595 0.09006612 0.046946991
		 0.081099615 0.036567785 0.071145982 0.011130878 0.070951328 0.0087617766 0.074909031
		 0.0030554896 0.079478152 -1.7952241e-005 0.12947589 0.008792093 0.10870565 0.052222595
		 0.091747761 0.052222595 0.082866758 0.046863493 0.068462901 0.011179125 0.068449877
		 0.010045948 0.070660762 0.0062076543 0.10870565 0.062556438 0.10588085 0.062556438
		 0.088922948 0.052222595 0.068152718 0.008792093 0.11055803 0.052222595 0.11055803
		 0.062556438 0.10946939 0.065493427 0.10626271 0.065493427 0.091747761 0.062556438
		 0.088922948 0.062556438 0.11132177 0.065493427 0.091365889 0.065493427 0.088159196
		 0.065493427 0.087070569 0.062556438 0.087070569 0.052222595 0.086306833 0.065493427
		 -0.048997376 0.029638905 -0.048997376 0.026432216 -0.048430365 0.024579829 -0.047427308
		 0.029638905 -0.046544153 0.023950899 -0.046544153 0.029638905 -0.045206625 0.024579829
		 -0.045649428 0.029638905 -0.043905064 0.026432216 -0.043905064 0.029638905 -0.83467305
		 0.029445671 -0.83004791 0.029766023 -0.82704306 0.040061716 -0.83270013 0.040061716
		 -0.83604616 0.024406919 -0.8352434 0.024406919 -0.82519114 0.051828217 -0.83150232
		 0.054918516 -0.8374266 0.029410668 -0.83744878 0.040061716 -0.83714306 0.024406929
		 -0.82488883 0.060412925 -0.83150232 0.06526579 -0.83709097 0.054918516 -0.84021628
		 0.029375214 -0.84225965 0.040061716 -0.83790773 0.024406919 -0.83747196 0.014073067
		 -0.83614618 0.014073067 -0.83370179 0.058446743 -0.83718306 0.058446743 -0.84275287
		 0.054918516 -0.84447485 0.030573053 -0.84690362 0.040061716 -0.83773518 0.011136084
		 -0.83584899 0.011136084 -0.84071004 0.058446743 -0.83874226 0.014073067 -0.8390727
		 0.011136084 0.67407018 -0.019276818 0.67643881 -0.019276818 0.67648757 -0.0133594
		 0.67416865 -0.013391787 0.67167044 -0.019276818 0.67181939 -0.013424593 0.36315668
		 0.077182464 0.37131885 0.089323089 0.3674663 0.090692908 0.36163604 0.084322125 0.35281524
		 0.093335591 0.35026583 0.086535878 0.37380922 0.097623989 0.3568413 0.10197666 0.3497254
		 0.080113575 0.35869145 0.075327381;
	setAttr ".uvtk[250:499]" 0.3738786 0.10142148 0.3616125 0.10658476 0.35184816
		 0.07373023 0.35557228 0.072037213 0.37521124 0.10303207 0.366238 0.1078708 0.37808278
		 0.10405433 0.36968061 0.10743502 0.26915857 0.037084624 0.26475674 0.041278012 0.2619445
		 0.038608499 0.2653611 0.035625357 0.25644791 0.04284998 0.2551958 0.03961945 0.25990018
		 0.036095835 0.26375052 0.033364665 0.26726907 0.046511654 0.25654328 0.046494152
		 0.25644866 0.036248229 0.26475674 0.052939996 0.25643647 0.051354684 0.25860664 0.033160225
		 0.25939736 0.033315815 0.2619445 0.055609491 0.25517562 0.054587241 0.25980744 0.029994564
		 0.26062959 0.03139754 0.26915857 0.057133373 0.2653611 0.058592632 0.25990018 0.058122151
		 0.25641942 0.057969436 0.26201731 0.026465461 0.26287284 0.029948184 0.26272824 0.031963039
		 0.26282087 0.030643864 0.26375052 0.060853336 0.25939736 0.060902182 0.25856909 0.061069179
		 0.26689959 0.026617717 0.26623315 0.029166585 0.26062959 0.062820457 0.25976133 0.06423644
		 0.27007091 0.025680525 0.26893979 0.028725488 0.26272824 0.062254962 0.26282087 0.063574135
		 0.26287284 0.064269796 0.26198086 0.067762241 0.27319059 0.02434095 0.27108201 0.028725831
		 0.26623315 0.065051407 0.26689956 0.06760031 0.26893979 0.065492503 0.27007091 0.068537436
		 0.27108201 0.065492153 0.27319062 0.069876924 0.17194873 0.036335245 0.1649621 0.036224388
		 0.16295405 0.026432447 0.17194879 0.029887833 0.17194879 0.043317277 0.16295405 0.046772663
		 0.17523894 0.036529459 0.17523891 0.032754339 0.17523891 0.040450767 0.58993775 0.037510745
		 0.58621359 0.037510745 0.58621359 0.033735625 0.58993775 0.034965541 0.58993775 0.040202167
		 0.58621359 0.041432064 0.54235256 -0.047312696 0.53732717 -0.047312688 0.53723264
		 -0.053696029 0.53977787 -0.053696036 0.54488999 -0.040890396 0.53737015 -0.040890384
		 0.53196651 -0.047312696 0.53454125 -0.053696036 0.5374167 -0.034626018 0.54628724
		 -0.034090675 0.52942914 -0.040890396 0.52803195 -0.034090675 0.53746736 -0.026567413
		 0.54661602 -0.025449615 0.52770305 -0.025449615 0.19689833 0.018540667 0.24044845
		 0.046754926 0.2404878 0.037606269 0.19411829 0.01417913 0.19276555 0.017075539 0.24043687
		 0.056519184 0.24526714 0.034604818 0.19416715 0.019947149 0.31944588 0.012784452
		 0.24519999 0.059546329 0.24990116 0.031445514 0.31809312 0.0098880352 0.3153131 0.014249572
		 0.24981694 0.062730543 0.25334811 0.029820811 0.31804428 0.015656054 0.21272835 0.0010620572
		 0.25325507 0.064373776 0.25670901 0.02817489 0.21275121 0.002701188 0.2127738 0.0043191016
		 0.25660706 0.066037767 0.25808662 0.026036255 0.21309295 0.0046556918 0.21450722
		 0.0010842306 0.25797316 0.068183802 -0.6350978 0.016651966 -0.63722837 0.008249728
		 -0.6359092 0.0076222797 -0.63344282 0.013295507 -0.63452291 0.0082654236 -0.63130045
		 0.011923666 -0.63666284 0.0048676329 -0.63521349 0.0054165628 -0.19475232 0.16268027
		 -0.19398305 0.16552913 -0.19734335 0.16476469 -0.19694445 0.16260237 -0.20005 0.16235566
		 -0.19868174 0.16022359 -0.1933388 0.15902202 -0.19547132 0.1595405 -0.20219222 0.15930782
		 -0.19999166 0.15748593 -0.19800073 0.15908967 -0.20338775 0.15670341 -0.1998056 0.15528519
		 -0.20073834 0.149894 -0.19809619 0.15338399 -0.19558819 0.15093014 -0.19518667 0.15385383
		 -0.19242616 0.15489736 -0.19219588 0.15582578 0.21314502 0.00079767435 0.26360264
		 0.021381108 0.26537538 0.022674894 0.21422617 0.0045115501 0.26788518 0.023224536
		 0.21548001 0.0038589435 0.27036953 0.022294406 0.21566381 0.0022885958 0.27100924
		 0.020682985 0.2757962 0.021710133 0.27043828 0.019191273 0.27487013 0.017276399 0.2679854
		 0.01824094 0.2705237 0.016373448 0.26431096 0.018581828 0.26492113 0.017760048 0.26376742
		 0.017990654 0.26433489 0.01722062 0.2687726 0.014762226 -0.057033338 0.045388412
		 -0.060915653 0.045593329 -0.060265157 0.043392576 -0.055885423 0.043654833 -0.057568021
		 0.047197059 -0.061132416 0.048330981 -0.057813011 0.041491356 -0.054599937 0.042494364
		 0.31130758 0.024394022 0.31493744 0.026554855 0.31487536 0.029033823 0.31100649 0.02699843
		 0.31771955 0.032777529 0.31389573 0.033807855 0.87034714 0.0091787893 0.86713409
		 0.008455487 0.86975002 0.0055459784 0.87202823 0.0065489006 0.87250948 0.0025551899
		 0.87364787 0.0032833498 0.20523533 -0.025864601 0.20905912 -0.027309947 0.21101001
		 -0.022948215 0.20788297 -0.020714432 0.66596299 0.025856419 0.67022163 0.027669884
		 0.66496176 0.033078749 0.66365445 0.03122638 -0.53329504 0.10723023 -0.53337991 0.11756408
		 -0.53781587 0.11756408 -0.53726661 0.10723023 -0.5333336 0.12050106 -0.53842592 0.12050106
		 0.052211922 -0.011919767 0.041864641 -0.011919767 0.041938215 -0.015841242 0.048683684
		 -0.015540881 0.041982189 -0.019777991 0.047006845 -0.019597873 0.041999213 -0.022833018
		 0.046127856 -0.022839867 0.04199063 -0.031615824 0.046119273 -0.031622659 0.041093778
		 -0.034142587 0.047011182 -0.034152392 0.020400291 0.047135785 0.013786837 0.045362357
		 0.018477574 0.042557258 0.022298459 0.04321431 0.021912782 0.038803618 0.023807501
		 0.039277561 0.024209578 0.036120534 0.024546163 0.036222536 -0.50631154 0.044402182
		 -0.51518095 0.047874473 -0.51150417 0.040554855 -0.50782418 0.040530205 -0.51038414
		 0.036155228 -0.50850701 0.036137227 -0.19776104 0.072818831 -0.20124236 0.072818831
		 -0.20025381 0.06876184 -0.19771114 0.06876184 -0.19948401 0.065519847 -0.19761078
		 0.065519847 -0.19423413 0.072818831 -0.1951351 0.06876184 -0.19949089 0.056737054
		 -0.19761766 0.056737054 -0.19571301 0.065519847 -0.19999155 0.054207314 -0.1976229
		 0.054207314 -0.1957199 0.056737054 -0.19522317 0.054207314 -0.033873387 0.069214925
		 -0.036721565 0.069275469 -0.037994169 0.065346621 -0.035789825 0.064815298 -0.031103805
		 0.076534532 -0.035393417 0.073200285 -0.038267419 0.062280316 -0.03853181 0.062281497
		 -0.074438684 0.12081421 -0.0760566 0.12081145 -0.076049715 0.11202865 -0.074431814
		 0.11203141 -0.07769572 0.12080867 -0.07768885 0.11202586 -0.076013282 0.10950071
		 -0.0736944 0.10950465 -0.078362569 0.10949671;
	setAttr ".uvtk[500:721]" 0.23953049 -0.026671367 0.23913164 -0.024803625 0.23787782
		 -0.025456233 0.23769403 -0.027026581 0.240584 -0.024996074 0.24026485 -0.024659485
		 0.23885058 -0.028230945 0.24021278 -0.028517501 0.24060655 -0.026613988 0.24062948
		 -0.028253119 -0.085559405 0.10831957 -0.085559405 0.10136724 -0.081587821 0.10136724
		 -0.081587821 0.10831957 -0.081587821 0.11550032 -0.085559405 0.11550032 0.487964
		 0.036788285 0.4880783 0.043293748 0.4773927 0.042949326 0.47607732 0.036453519 0.4779397
		 0.030820714 0.4883422 0.032507218 0.47319934 0.028330315 0.47786373 0.02447775 0.027900467
		 0.023950621 0.029470537 0.023950621 0.028467484 0.029009677 0.027900467 0.027157309
		 0.030353691 0.023950621 0.030353691 0.029638628 0.031248415 0.023950621 0.031691223
		 0.029009677 0.03299278 0.023950621 0.03299278 0.027157309 -0.5299505 0.06677936 -0.52797759
		 0.056163289 -0.52232045 0.056163289 -0.5253253 0.066459008 -0.53270406 0.066814363
		 -0.53272617 0.056163289 -0.52677971 0.041306496 -0.52046853 0.044396777 -0.5305208
		 0.071818113 -0.53132355 0.071818113 -0.53549367 0.06684982 -0.53753704 0.056163289
		 -0.53236836 0.041306492 -0.53242052 0.071818113 -0.52677971 0.030959213 -0.52016628
		 0.03581208 -0.53975224 0.06565199 -0.54218102 0.056163289 -0.53803027 0.041306496
		 -0.53318518 0.071818113 -0.53246051 0.037778255 -0.52897924 0.037778255 -0.53142357
		 0.082151964 -0.53274935 0.082151964 -0.53598744 0.037778255 -0.53112638 0.085088953
		 -0.53301263 0.085088953 -0.53435016 0.085088953 -0.53401971 0.082151964 0.84083414
		 -0.0094503537 0.84093267 -0.015335375 0.84325159 -0.015367762 0.84320283 -0.0094503537
		 0.83843446 -0.0094503537 0.83858341 -0.015302578 0.22390968 0.10858866 0.22238906
		 0.10144902 0.22821927 0.095078215 0.23207186 0.096448049 0.21101886 0.099235259 0.21356821
		 0.092435531 0.21944444 0.11044376 0.21047844 0.10565757 0.21759428 0.083794475 0.23456223
		 0.088147141 0.21632533 0.11373392 0.21260116 0.1120409 0.22236551 0.07918638 0.23463158
		 0.084349655 0.22699104 0.077900335 0.23596419 0.082739063 0.23043358 0.07833612 0.23883584
		 0.081716806 0.21988958 0.034241181 0.21823463 0.030884724 0.22070099 0.025211496
		 0.22202018 0.025838945 0.21609227 0.029512882 0.21931472 0.02585464 0.22000532 0.02300578
		 0.22145467 0.022456849 0.13859358 0.1587715 0.14078572 0.1586936 0.14118461 0.16085592
		 0.13782431 0.16162036 0.13718005 0.15511325 0.13931258 0.15563172 0.14252301 0.15631482
		 0.14389125 0.15844689 0.14184199 0.1551809 0.14383292 0.15357716 0.14603347 0.15539905
		 0.14364687 0.15137643 0.14722902 0.15279464 0.14193743 0.14947522 0.14457959 0.14598523
		 0.13902794 0.14994507 0.13942945 0.14702137 0.13603714 0.15191701 0.13626741 0.15098859
		 0.21382731 0.0026438085 0.014836532 0.11214045 0.26537547 0.071543217 0.26360279
		 0.072837077 0.015503381 0.10082848 0.26788527 0.070993476 0.015510249 0.10961128
		 0.27036968 0.071923509 0.27579635 0.072507568 0.27100945 0.073534906 0.27487046 0.076941341
		 0.27043855 0.075026639 0.27052405 0.077844448 0.2679857 0.075977065 0.26492146 0.076458074
		 0.26431122 0.07563632 0.26877305 0.079455756 0.26433524 0.076997519 0.26376772 0.076227508
		 -0.094821885 0.018178206 -0.095969796 0.016444627 -0.091590062 0.01618238 -0.090939574
		 0.018383123 -0.097255282 0.015284159 -0.094042212 0.014281159 -0.094287202 0.019986851
		 -0.090722814 0.021120775 0.51105773 0.031781346 0.5113588 0.034385756 0.50748986
		 0.036421146 0.50742787 0.033942178 0.50846952 0.04119518 0.50464576 0.040164866 0.65439767
		 0.022858959 0.65271658 0.020229071 0.65499485 0.019226149 0.65761077 0.022135658
		 0.65109694 0.016963521 0.65223539 0.016235361 0.078668356 -0.023910182 0.07602071
		 -0.018760012 0.072893672 -0.020993795 0.074844554 -0.025355527 0.15514472 0.031124379
		 0.15283619 0.025754437 0.15414345 0.02390207 0.15940331 0.029310904 -0.62447131 0.15930879
		 -0.62844288 0.15930879 -0.62899208 0.14897496 -0.62455618 0.14897496 -0.62960213
		 0.14603795 -0.62450987 0.14603795 -0.16535228 -0.0048372867 -0.16888052 -0.0012161817
		 -0.17562599 -0.00091581227 -0.17569958 -0.0048372867 -0.17055736 0.0028407909 -0.17558202
		 0.0030209091 -0.17143635 0.0060828025 -0.175565 0.0060759643 -0.17144494 0.014865597
		 -0.17557359 0.014858759 -0.17055303 0.01739534 -0.17647044 0.017385535 -0.46961612
		 0.10668612 -0.46771795 0.11060759 -0.47153884 0.11126467 -0.47622958 0.10845955 -0.4662089
		 0.11454435 -0.46810362 0.11501831 -0.46547025 0.11759938 -0.46580684 0.11770139 -0.0082986495
		 0.10515172 -0.0098113352 0.1090237 -0.013491292 0.10899904 -0.017168051 0.10167944
		 -0.010494124 0.11341667 -0.012371279 0.11339866 -0.40794888 0.11088319 -0.40789899
		 0.11494017 -0.41044167 0.11494017 -0.41143021 0.11088318 -0.40442196 0.11088318 -0.40532297
		 0.11494017 -0.40779865 0.11818218 -0.40967184 0.11818216 -0.40590087 0.11818216 -0.40780553
		 0.12696496 -0.40967873 0.12696496 -0.40590772 0.12696496 -0.40781075 0.1294947 -0.41017941
		 0.1294947 -0.40541103 0.1294947 0.18983804 0.071554348 0.1879216 0.075953968 0.18571725
		 0.075422682 0.18698986 0.071493812 0.18544401 0.078488953 0.18517962 0.078487769
		 0.19260763 0.064234734 0.18831801 0.067569003 0.018760415 0.10082294 0.018767294
		 0.10960574 0.01714937 0.1096085 0.017142503 0.10082568 0.019504691 0.1121325 0.017185815
		 0.11213645;
createNode polyMapSewMove -n "pasted__polyMapSewMove3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[94]" "e[112]" "e[120]" "e[128]" "e[136]" "e[144]" "e[152]" "e[160]" "e[168]" "e[470]" "e[486]" "e[492]" "e[500]" "e[508]" "e[516]" "e[524]" "e[532]" "e[540]";
createNode polyAutoProj -n "pasted__polyAutoProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:351]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 86.035807147622108 86.035807147622108 86.035807147622108 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyMergeVert -n "pasted__polyMergeVert84";
	setAttr ".ics" -type "componentList" 2 "vtx[17]" "vtx[204]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[17]";
createNode polyMergeVert -n "pasted__polyMergeVert83";
	setAttr ".ics" -type "componentList" 2 "vtx[20]" "vtx[207]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[20]";
createNode polyMergeVert -n "pasted__polyMergeVert82";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[210]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[23]";
createNode polyMergeVert -n "pasted__polyMergeVert81";
	setAttr ".ics" -type "componentList" 2 "vtx[26]" "vtx[213]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[26]";
createNode polyMergeVert -n "pasted__polyMergeVert80";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[216]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[29]";
createNode polyMergeVert -n "pasted__polyMergeVert79";
	setAttr ".ics" -type "componentList" 2 "vtx[32]" "vtx[219]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[32]";
createNode polyMergeVert -n "pasted__polyMergeVert78";
	setAttr ".ics" -type "componentList" 2 "vtx[114]" "vtx[307]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[114]";
createNode polyMergeVert -n "pasted__polyMergeVert77";
	setAttr ".ics" -type "componentList" 2 "vtx[119]" "vtx[311]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[119]";
createNode polyMergeVert -n "pasted__polyMergeVert76";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[190]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[0]";
createNode polyMergeVert -n "pasted__polyMergeVert75";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[193]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[3]";
createNode polyMergeVert -n "pasted__polyMergeVert74";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[197]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6]";
createNode polyMergeVert -n "pasted__polyMergeVert73";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[200]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[9]";
createNode polyMergeVert -n "pasted__polyMergeVert72";
	setAttr ".ics" -type "componentList" 2 "vtx[59]" "vtx[270]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[59]";
createNode polyMergeVert -n "pasted__polyMergeVert71";
	setAttr ".ics" -type "componentList" 2 "vtx[60]" "vtx[271]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[60]";
createNode polyMergeVert -n "pasted__polyMergeVert70";
	setAttr ".ics" -type "componentList" 2 "vtx[61]" "vtx[272]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[61]";
createNode polyMergeVert -n "pasted__polyMergeVert69";
	setAttr ".ics" -type "componentList" 2 "vtx[62]" "vtx[273]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[62]";
createNode polyMergeVert -n "pasted__polyMergeVert68";
	setAttr ".ics" -type "componentList" 2 "vtx[63]" "vtx[274]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[63]";
createNode polyMergeVert -n "pasted__polyMergeVert67";
	setAttr ".ics" -type "componentList" 2 "vtx[64]" "vtx[275]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[64]";
createNode polyMergeVert -n "pasted__polyMergeVert66";
	setAttr ".ics" -type "componentList" 2 "vtx[113]" "vtx[276]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[113]";
createNode polyMergeVert -n "pasted__polyMergeVert65";
	setAttr ".ics" -type "componentList" 2 "vtx[65]" "vtx[277]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[65]";
createNode polyMergeVert -n "pasted__polyMergeVert64";
	setAttr ".ics" -type "componentList" 2 "vtx[66]" "vtx[277]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[66]";
createNode polyMergeVert -n "pasted__polyMergeVert63";
	setAttr ".ics" -type "componentList" 2 "vtx[58]" "vtx[270]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[58]";
createNode polyMergeVert -n "pasted__polyMergeVert62";
	setAttr ".ics" -type "componentList" 2 "vtx[57]" "vtx[271]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[57]";
createNode polyMirror -n "pasted__polyMirror4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" -1.3312572240829468 8.2765464782714844 43.123194448649883 ;
	setAttr ".d" 1;
createNode groupParts -n "pasted__groupParts18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:175]";
createNode polyAppend -n "pasted__polyAppend12";
	setAttr -s 3 ".d[0:2]"  -2147483437 -2147483396 -2147483428;
	setAttr ".tx" 1;
createNode polyTweak -n "pasted__polyTweak39";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk";
	setAttr ".tk[8]" -type "float3" 0 0.60464376 0 ;
	setAttr ".tk[11]" -type "float3" -0.64059591 1.3444303 -1.697726 ;
	setAttr ".tk[25]" -type "float3" 2.7290835 -0.21505594 -5.1088238 ;
	setAttr ".tk[28]" -type "float3" 0.93616831 -0.10946386 -0.78271258 ;
	setAttr ".tk[116]" -type "float3" -3.0733604 0 0 ;
	setAttr ".tk[117]" -type "float3" -1.2017715 0.44740328 0 ;
	setAttr ".tk[118]" -type "float3" -1.2017715 -0.10297714 0 ;
	setAttr ".tk[121]" -type "float3" -3.0733604 0 0 ;
	setAttr ".tk[123]" -type "float3" -3.0733604 0 0 ;
	setAttr ".tk[124]" -type "float3" -1.2017715 0.41783234 0 ;
	setAttr ".tk[125]" -type "float3" -1.2017715 -0.34970611 0 ;
	setAttr ".tk[127]" -type "float3" -3.0733604 0 0 ;
	setAttr ".tk[130]" -type "float3" -3.0733604 0 0 ;
	setAttr ".tk[131]" -type "float3" -1.2017714 1.0134535 -1.4901161e-008 ;
	setAttr ".tk[133]" -type "float3" -1.2017715 -0.44740328 0 ;
	setAttr ".tk[135]" -type "float3" -3.0733604 0 0 ;
	setAttr ".tk[140]" -type "float3" 0.66475695 -0.11744022 -1.1715211 ;
	setAttr ".tk[144]" -type "float3" 0 0.59462607 0 ;
	setAttr ".tk[179]" -type "float3" -0.64047271 0 0 ;
	setAttr ".tk[180]" -type "float3" -0.57323301 0 0 ;
	setAttr ".tk[181]" -type "float3" -0.56629902 0 0 ;
	setAttr ".tk[183]" -type "float3" -0.022185251 -0.21656987 -0.020154105 ;
	setAttr ".tk[184]" -type "float3" 0.036382101 -0.12255777 0.21292032 ;
	setAttr ".tk[185]" -type "float3" 0.17099142 -0.19237167 -0.48256069 ;
	setAttr ".tk[186]" -type "float3" 0.1545175 0.313483 -0.26908073 ;
	setAttr ".tk[187]" -type "float3" 0.12243788 0.30159959 -0.19498689 ;
	setAttr ".tk[188]" -type "float3" -0.079359286 0.3191537 0.30273181 ;
	setAttr ".tk[189]" -type "float3" -0.43374121 0 0 ;
createNode deleteComponent -n "pasted__deleteComponent41";
	setAttr ".dc" -type "componentList" 1 "e[362]";
createNode deleteComponent -n "pasted__deleteComponent40";
	setAttr ".dc" -type "componentList" 1 "e[365]";
createNode deleteComponent -n "pasted__deleteComponent39";
	setAttr ".dc" -type "componentList" 1 "e[364]";
createNode deleteComponent -n "pasted__deleteComponent38";
	setAttr ".dc" -type "componentList" 1 "e[364]";
createNode polyMergeVert -n "pasted__polyMergeVert61";
	setAttr ".ics" -type "componentList" 1 "vtx[189:197]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "pasted__polyTweak38";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[189:197]" -type "float3"  0.115021 -0.057977103 0.59165907
		 0.11780609 -1.69267428 0.56883752 0.11220466 1.59815156 0.61478847 -0.020598438 -2.10368824
		 -0.91871625 0.051128685 -2.15531254 0.45929393 -0.12766708 -1.42011929 -2.64797926
		 0.066905119 0.67237562 -2.62019658 0.025031894 1.87735415 -1.37751973 0.031665567
		 2.18443966 0.4965001;
createNode groupParts -n "pasted__groupParts17";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:178]";
	setAttr ".gi" 236;
createNode polyExtrudeEdge -n "pasted__polyExtrudeEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[301:302]" "e[349]" "e[351]" "e[353]" "e[355]" "e[357:359]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 1.1037760370330325 0 0.49556126943929257 ;
	setAttr ".pvt" -type "float3" 30.458477 13.02425 56.741623 ;
	setAttr ".rs" 473062027;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 29.231964111328125 10.854373931884766 54.614673614501953 ;
	setAttr ".cbx" -type "double3" 29.477434158325195 15.194126129150391 57.87744140625 ;
createNode deleteComponent -n "pasted__deleteComponent37";
	setAttr ".dc" -type "componentList" 1 "f[170]";
createNode deleteComponent -n "pasted__deleteComponent36";
	setAttr ".dc" -type "componentList" 1 "f[170:171]";
createNode groupParts -n "pasted__groupParts16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:172]";
	setAttr ".gi" 235;
createNode polyAppend -n "pasted__polyAppend11";
	setAttr -s 3 ".d[0:2]"  -2147483288 -2147483293 -2147483287;
	setAttr ".tx" 1;
createNode groupParts -n "pasted__groupParts15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:171]";
	setAttr ".gi" 234;
createNode polyAppend -n "pasted__polyAppend10";
	setAttr -s 3 ".d[0:2]"  -2147483346 -2147483291 -2147483289;
	setAttr ".tx" 1;
createNode groupParts -n "pasted__groupParts14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:170]";
	setAttr ".gi" 233;
createNode polyAppend -n "pasted__polyAppend9";
	setAttr -s 3 ".d[0:2]"  -2147483347 -2147483290 -2147483299;
	setAttr ".tx" 1;
createNode polyTweak -n "pasted__polyTweak37";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[13]" -type "float3" 0 0.85734087 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.34475702 9.6395612e-005 ;
	setAttr ".tk[138]" -type "float3" 0 0.44398233 0 ;
	setAttr ".tk[139]" -type "float3" 0 -0.4851934 0 ;
	setAttr ".tk[140]" -type "float3" 0 0 1.2008505 ;
	setAttr ".tk[144]" -type "float3" 0 1.18718 0.80658239 ;
	setAttr ".tk[148]" -type "float3" -0.48296702 0 0 ;
	setAttr ".tk[149]" -type "float3" -0.49280739 0 0 ;
	setAttr ".tk[150]" -type "float3" 0 -1.2206126 1.0514776 ;
	setAttr ".tk[151]" -type "float3" 0 -0.79988825 0 ;
	setAttr ".tk[154]" -type "float3" 0 1.4859822 1.4081618 ;
	setAttr ".tk[183]" -type "float3" 0 0.21080264 -0.78812808 ;
	setAttr ".tk[184]" -type "float3" 0 0.21165054 -0.90971923 ;
	setAttr ".tk[185]" -type "float3" 0 0.44300097 0 ;
	setAttr ".tk[186]" -type "float3" 0 -0.29793069 -0.059557222 ;
	setAttr ".tk[187]" -type "float3" 0 -0.36227119 0 ;
	setAttr ".tk[188]" -type "float3" 0 0.039800785 -0.66879374 ;
createNode deleteComponent -n "pasted__deleteComponent35";
	setAttr ".dc" -type "componentList" 1 "f[170]";
createNode groupParts -n "pasted__groupParts13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:170]";
	setAttr ".gi" 232;
createNode polyCloseBorder -n "pasted__polyCloseBorder1";
	setAttr ".ics" -type "componentList" 6 "e[301:302]" "e[349]" "e[351]" "e[353]" "e[355]" "e[357:359]";
createNode groupParts -n "pasted__groupParts12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:169]";
	setAttr ".gi" 231;
createNode polyAppend -n "pasted__polyAppend8";
	setAttr -s 3 ".d[0:2]"  -2147483292 -2147483358 -2147483349;
	setAttr ".tx" 1;
createNode groupParts -n "pasted__groupParts11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:168]";
	setAttr ".gi" 230;
createNode polyAppend -n "pasted__polyAppend7";
	setAttr -s 3 ".d[0:2]"  -2147483300 -2147483351 -2147483366;
	setAttr ".tx" 1;
createNode polyTweak -n "pasted__polyTweak36";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[183:188]" -type "float3"  0.017038532 -3.54186726 -0.48920327
		 0.1419872 -3.63032699 1.69952881 -0.16947697 -1.94656575 -2.12869406 0.16947697 0.40790784
		 -2.18404913 0.096527174 2.39493704 0.084492087 0.10808244 3.63032699 2.18404913;
createNode groupParts -n "pasted__groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:167]";
	setAttr ".gi" 229;
createNode polyExtrudeEdge -n "pasted__polyExtrudeEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[284]" "e[286]" "e[288]" "e[292:293]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 2.5325491654642782 5.8619775700208265e-014 0 ;
	setAttr ".pvt" -type "float3" 29.380148 12.898524 56.655483 ;
	setAttr ".rs" 1891612294;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 26.580835342407227 7.1842460632324219 53.217704772949219 ;
	setAttr ".cbx" -type "double3" 27.114362716674805 18.612802505493164 60.093265533447266 ;
createNode deleteComponent -n "pasted__deleteComponent34";
	setAttr ".dc" -type "componentList" 2 "f[141:142]" "f[165]";
createNode deleteComponent -n "pasted__deleteComponent33";
	setAttr ".dc" -type "componentList" 1 "f[141:142]";
createNode deleteComponent -n "pasted__deleteComponent32";
	setAttr ".dc" -type "componentList" 2 "f[144]" "f[146]";
createNode groupParts -n "pasted__groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:169]";
	setAttr ".gi" 228;
createNode polyAppend -n "pasted__polyAppend6";
	setAttr -s 3 ".d[0:2]"  -2147483344 -2147483360 -2147483343;
	setAttr ".tx" 1;
createNode deleteComponent -n "pasted__deleteComponent31";
	setAttr ".dc" -type "componentList" 1 "vtx[161:162]";
createNode deleteComponent -n "pasted__deleteComponent30";
	setAttr ".dc" -type "componentList" 1 "f[144]";
createNode polyMergeVert -n "pasted__polyMergeVert60";
	setAttr ".ics" -type "componentList" 2 "vtx[160]" "vtx[163]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[163]";
createNode polyMergeVert -n "pasted__polyMergeVert59";
	setAttr ".ics" -type "componentList" 2 "vtx[163]" "vtx[172]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[172]";
createNode polyMergeVert -n "pasted__polyMergeVert58";
	setAttr ".ics" -type "componentList" 2 "vtx[159]" "vtx[163]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[159]";
createNode polyMergeVert -n "pasted__polyMergeVert57";
	setAttr ".ics" -type "componentList" 2 "vtx[158]" "vtx[160]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[158]";
createNode polySplitRing -n "pasted__polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[55]" "e[58]" "e[61]" "e[217]" "e[230]" "e[242]" "e[244]" "e[256]" "e[276]" "e[296]" "e[300]" "e[317]" "e[321]" "e[325]" "e[329]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.4967440664768219;
	setAttr ".re" 300;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "pasted__polyTweak35";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[160:165]" -type "float3"  -2.66600871 0 0 -2.66600871
		 0 0 -2.66600871 0 0 -2.66600871 0 0 -2.66600871 0 0 -2.66600871 0 0;
createNode deleteComponent -n "pasted__deleteComponent29";
	setAttr ".dc" -type "componentList" 1 "f[32:34]";
createNode polyTweak -n "pasted__polyTweak34";
	setAttr ".uopa" yes;
	setAttr -s 84 ".tk";
	setAttr ".tk[0]" -type "float3" 0 6.1225238 3.2701514 ;
	setAttr ".tk[1]" -type "float3" -0.82910091 6.1225238 3.2306709 ;
	setAttr ".tk[2]" -type "float3" -4.0778174 6.7281609 3.1456347 ;
	setAttr ".tk[3]" -type "float3" 0 1.2814584 0 ;
	setAttr ".tk[4]" -type "float3" 0 1.7628969 0 ;
	setAttr ".tk[5]" -type "float3" -2.9235101 4.2742209 0 ;
	setAttr ".tk[6]" -type "float3" 0 0.14238426 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.76809448 0 ;
	setAttr ".tk[8]" -type "float3" -3.1223049 3.2726829 1.2063578 ;
	setAttr ".tk[11]" -type "float3" -2.8277352 2.6706388 0 ;
	setAttr ".tk[12]" -type "float3" 4.9523106 3.9728615 5.0028801 ;
	setAttr ".tk[13]" -type "float3" 0 1.3586514 0 ;
	setAttr ".tk[14]" -type "float3" 0 5.410984 5.841403 ;
	setAttr ".tk[15]" -type "float3" 2.2993617 5.0727434 4.7365093 ;
	setAttr ".tk[16]" -type "float3" 0 1.0043303 -0.31807122 ;
	setAttr ".tk[17]" -type "float3" 0 4.3656793 2.5825155 ;
	setAttr ".tk[18]" -type "float3" 0.85493118 4.0176721 2.5825155 ;
	setAttr ".tk[19]" -type "float3" 0 1.6611326 -1.2330505 ;
	setAttr ".tk[20]" -type "float3" -0.38278136 5.0420542 3.0129323 ;
	setAttr ".tk[21]" -type "float3" 2.8421709e-014 4.7381363 3.0129323 ;
	setAttr ".tk[22]" -type "float3" -0.98723119 1.4764152 0.21544659 ;
	setAttr ".tk[23]" -type "float3" 0 3.9967487 1.5372107 ;
	setAttr ".tk[24]" -type "float3" 0 3.9967487 1.5372107 ;
	setAttr ".tk[25]" -type "float3" -0.94257849 -0.38893121 1.5372107 ;
	setAttr ".tk[26]" -type "float3" 0 2.8284683 -0.06148839 ;
	setAttr ".tk[27]" -type "float3" 0 2.8284683 -0.06148839 ;
	setAttr ".tk[28]" -type "float3" -0.94257849 -1.1358395 -0.06148839 ;
	setAttr ".tk[29]" -type "float3" 0 1.3592778 0 ;
	setAttr ".tk[30]" -type "float3" 0 1.3592778 0 ;
	setAttr ".tk[31]" -type "float3" -1.6382874 -3.1164067 0 ;
	setAttr ".tk[32]" -type "float3" 0 -2.6081676 2.2458668 ;
	setAttr ".tk[33]" -type "float3" -0.98713964 -2.6081679 2.245872 ;
	setAttr ".tk[34]" -type "float3" -3.4237554 -6.1524243 2.33024 ;
	setAttr ".tk[35]" -type "float3" -2.2455325 -3.2036445 2.006561 ;
	setAttr ".tk[36]" -type "float3" -2.2455325 2.562916 1.9353693 ;
	setAttr ".tk[37]" -type "float3" 0 -1.2102661 0 ;
	setAttr ".tk[38]" -type "float3" -0.43412971 0.49834484 0 ;
	setAttr ".tk[39]" -type "float3" 0 0 2.2781477 ;
	setAttr ".tk[40]" -type "float3" 0 0 2.2781477 ;
	setAttr ".tk[43]" -type "float3" 1.3767753 1.1631647 1.1546534 ;
	setAttr ".tk[48]" -type "float3" 0 0.88217986 0.3165012 ;
	setAttr ".tk[58]" -type "float3" 0 0.4647209 2.0764699 ;
	setAttr ".tk[63]" -type "float3" 0 0.88217986 0.3165012 ;
	setAttr ".tk[64]" -type "float3" 7.4505806e-009 1.1631647 1.1546534 ;
	setAttr ".tk[112]" -type "float3" 1.2938195 0 0 ;
	setAttr ".tk[114]" -type "float3" 0 -9.07271 0 ;
	setAttr ".tk[115]" -type "float3" -1.0387449 -9.07271 0 ;
	setAttr ".tk[116]" -type "float3" -3.1744595 -9.07271 0 ;
	setAttr ".tk[117]" -type "float3" -3.1744595 -4.0023365 0 ;
	setAttr ".tk[118]" -type "float3" -3.1744595 4.105865 0 ;
	setAttr ".tk[119]" -type "float3" 0 9.7134371 0 ;
	setAttr ".tk[120]" -type "float3" -1.0387449 9.7134371 0 ;
	setAttr ".tk[121]" -type "float3" -3.1744595 9.7134371 0 ;
	setAttr ".tk[122]" -type "float3" -1.0387449 -9.1584978 0 ;
	setAttr ".tk[123]" -type "float3" -3.1744595 -9.1584978 0 ;
	setAttr ".tk[124]" -type "float3" -3.1744595 -4.0738235 0 ;
	setAttr ".tk[125]" -type "float3" -3.1744595 3.5093997 0 ;
	setAttr ".tk[126]" -type "float3" -1.0387449 9.1584978 0 ;
	setAttr ".tk[127]" -type "float3" -3.1744595 9.1584978 0 ;
	setAttr ".tk[128]" -type "float3" -1.1777637 -9.8536797 0 ;
	setAttr ".tk[129]" -type "float3" -1.1777637 -4.6992517 0 ;
	setAttr ".tk[130]" -type "float3" -3.452497 -9.8536797 0 ;
	setAttr ".tk[131]" -type "float3" -3.452497 -4.6992517 0 ;
	setAttr ".tk[132]" -type "float3" -1.1777637 3.5575473 0 ;
	setAttr ".tk[133]" -type "float3" -3.452497 3.5575473 0 ;
	setAttr ".tk[134]" -type "float3" -1.1777637 9.2841444 0 ;
	setAttr ".tk[135]" -type "float3" -3.452497 9.2841444 0 ;
	setAttr ".tk[136]" -type "float3" -0.3076795 0.022835635 1.0564011 ;
	setAttr ".tk[137]" -type "float3" -0.3076795 0.022835635 1.0564011 ;
	setAttr ".tk[141]" -type "float3" 0 1.9407846 0 ;
	setAttr ".tk[142]" -type "float3" 0.65444016 1.9338511 0.52599734 ;
	setAttr ".tk[143]" -type "float3" 0 0 1.3700365 ;
	setAttr ".tk[146]" -type "float3" -0.67146069 0.041507822 0.62466818 ;
	setAttr ".tk[147]" -type "float3" -0.67146069 0.041507822 0.62466818 ;
	setAttr ".tk[151]" -type "float3" 0 1.1378268 0 ;
	setAttr ".tk[152]" -type "float3" 0.48628435 0.50533992 -0.48123449 ;
	setAttr ".tk[160]" -type "float3" 2.5121152 -1.9508356 -0.19481869 ;
	setAttr ".tk[161]" -type "float3" 2.4436121 -1.5060234 -1.3947996 ;
	setAttr ".tk[162]" -type "float3" 2.5097435 -0.87601674 -2.4770031 ;
	setAttr ".tk[163]" -type "float3" 2.5253832 0.19931425 -2.3500929 ;
	setAttr ".tk[164]" -type "float3" 2.4918954 1.9508362 0.050102606 ;
	setAttr ".tk[165]" -type "float3" 2.4855604 1.273531 -1.1009881 ;
	setAttr ".tk[170]" -type "float3" 0 -0.3215186 0 ;
	setAttr ".tk[171]" -type "float3" 0 0.3215186 0 ;
createNode deleteComponent -n "pasted__deleteComponent28";
	setAttr ".dc" -type "componentList" 27 "f[0:1]" "f[4:5]" "f[8:9]" "f[12]" "f[14]" "f[16:17]" "f[20:21]" "f[24:25]" "f[28:29]" "f[32:33]" "f[36:37]" "f[40]" "f[42]" "f[44]" "f[58:69]" "f[134:197]" "f[201:206]" "f[210]" "f[212:214]" "f[218:219]" "f[222]" "f[224:225]" "f[228:229]" "f[232]" "f[234:235]" "f[239]" "f[241:242]";
createNode polyTweak -n "pasted__polyTweak33";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[282:285]" -type "float3"  0.0014978092 0.8253783 -0.90366
		 0.0014978092 -0.8253783 -0.90366 -0.0014978092 0.74306285 0.9036603 0.00092832424
		 -0.68271106 0.88375157;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace27";
	setAttr ".ics" -type "componentList" 1 "f[53]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 38.109329 13.023367 52.583561 ;
	setAttr ".rs" 1158004186;
	setAttr ".lt" -type "double3" -1.4250319674280476e-014 -1.1022432966356632e-014 
		2.5544839446055039 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 38.105873107910156 11.118311882019043 50.497825622558594 ;
	setAttr ".cbx" -type "double3" 38.112785339355469 14.928421974182129 54.669300079345703 ;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace26";
	setAttr ".ics" -type "componentList" 1 "f[53]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 29.235418 13.016426 52.57489 ;
	setAttr ".rs" 954186230;
	setAttr ".lt" -type "double3" 5.629177679544739e-016 1.0829878660523207e-014 8.873917056417298 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 29.231964111328125 11.111371040344238 50.489151000976562 ;
	setAttr ".cbx" -type "double3" 29.238874435424805 14.921481132507324 54.660625457763672 ;
createNode polyTweak -n "pasted__polyTweak32";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[268:277]" -type "float3"  0.016573582 -0.7376681 1.51102722
		 0.016573582 0.62403572 1.51102722 0.019043965 -0.66976631 0.020173548 0.017042158
		 0.50634944 0.036597151 0.020876909 -1.47466969 0.2141141 -0.030906152 -1.1384275
		 -0.69297135 0.019084057 -0.66219604 -1.51102722 0.030906152 0.15066466 -1.4150933
		 0.0055922023 1.47466993 0.39925337 0.0008031936 0.96268308 -0.47087476;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace25";
	setAttr ".ics" -type "componentList" 2 "f[53]" "f[55:57]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 26.700808 12.898524 54.731873 ;
	setAttr ".rs" 78729961;
	setAttr ".lt" -type "double3" 2.9008913327022157e-015 -4.8186281353945759e-015 2.5876022348561101 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 26.580835342407227 7.1842460632324219 48.976375579833984 ;
	setAttr ".cbx" -type "double3" 26.820779800415039 18.612802505493164 60.487369537353516 ;
createNode polyTweak -n "pasted__polyTweak31";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[258:267]" -type "float3"  0.024402579 -1.018542767 2.12457395
		 0.024402579 0.89057237 2.12457395 0.026805166 -0.95211238 0.019948684 0.024862777
		 0.73867249 0.053954832 0.028313925 -2.10935926 0.27741274 -0.044286396 -1.63794577
		 -0.99432462 0.026846739 -0.94448954 -2.12457395 0.044286396 0.23701014 -1.9790957
		 0.0086136349 2.10935926 0.55893731 0.0018996083 1.39155209 -0.66098654;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace24";
	setAttr ".ics" -type "componentList" 2 "f[53]" "f[55:57]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 22.267561 12.96629 54.757706 ;
	setAttr ".rs" 1246784826;
	setAttr ".lt" -type "double3" -9.6819254002955546e-016 -3.1064560646054673e-015 
		4.4384490586316199 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 22.099071502685547 4.9521059989929199 46.850406646728516 ;
	setAttr ".cbx" -type "double3" 22.436050415039063 20.980474472045898 62.665004730224609 ;
createNode polyTweak -n "pasted__polyTweak30";
	setAttr ".uopa" yes;
	setAttr -s 34 ".tk";
	setAttr ".tk[208]" -type "float3" 0 2.3841858e-007 0 ;
	setAttr ".tk[212]" -type "float3" 0 2.3841858e-007 0 ;
	setAttr ".tk[213]" -type "float3" 0 2.3841858e-007 0 ;
	setAttr ".tk[214]" -type "float3" 0 2.3841858e-007 0 ;
	setAttr ".tk[222]" -type "float3" 0 2.3841858e-007 0 ;
	setAttr ".tk[225]" -type "float3" 0 2.3841858e-007 0 ;
	setAttr ".tk[226]" -type "float3" 0 2.3841858e-007 0 ;
	setAttr ".tk[227]" -type "float3" 0 2.3841858e-007 0 ;
	setAttr ".tk[232]" -type "float3" 0 -4.7683716e-007 0 ;
	setAttr ".tk[233]" -type "float3" 0 -4.7683716e-007 0 ;
	setAttr ".tk[234]" -type "float3" 0 2.3841858e-007 0 ;
	setAttr ".tk[235]" -type "float3" 0 2.3841858e-007 0 ;
	setAttr ".tk[236]" -type "float3" 0 -4.7683716e-007 0 ;
	setAttr ".tk[237]" -type "float3" 0 2.3841858e-007 0 ;
	setAttr ".tk[238]" -type "float3" 0 -4.7683716e-007 0 ;
	setAttr ".tk[239]" -type "float3" 0 2.3841858e-007 0 ;
	setAttr ".tk[240]" -type "float3" 0 2.3841858e-007 0 ;
	setAttr ".tk[241]" -type "float3" 0 2.3841858e-007 0 ;
	setAttr ".tk[242]" -type "float3" 0 2.3841858e-007 0 ;
	setAttr ".tk[243]" -type "float3" 0 2.3841858e-007 0 ;
	setAttr ".tk[244]" -type "float3" 0 -4.7683716e-007 0 ;
	setAttr ".tk[245]" -type "float3" 0 -4.7683716e-007 0 ;
	setAttr ".tk[246]" -type "float3" 0 -4.7683716e-007 0 ;
	setAttr ".tk[247]" -type "float3" 0 -4.7683716e-007 0 ;
	setAttr ".tk[248]" -type "float3" -2.6143641 -2.2451525 4.7865858 ;
	setAttr ".tk[249]" -type "float3" -2.6143641 2.0411973 4.7865858 ;
	setAttr ".tk[250]" -type "float3" -2.6118255 -2.1745169 0.021460045 ;
	setAttr ".tk[251]" -type "float3" -2.613873 1.7369848 0.12845394 ;
	setAttr ".tk[252]" -type "float3" -2.6112933 -4.8512855 0.55970496 ;
	setAttr ".tk[253]" -type "float3" -2.7742953 -3.7928677 -2.295603 ;
	setAttr ".tk[254]" -type "float3" -2.6117787 -2.1661654 -4.7865858 ;
	setAttr ".tk[255]" -type "float3" -2.5703092 0.60188508 -4.4293118 ;
	setAttr ".tk[256]" -type "float3" -2.6508985 4.8512859 1.2530751 ;
	setAttr ".tk[257]" -type "float3" -2.6659732 3.2396598 -1.4859014 ;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace23";
	setAttr ".ics" -type "componentList" 2 "f[53]" "f[55:57]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 18.36659 13.06347 54.796597 ;
	setAttr ".rs" 1369644292;
	setAttr ".lt" -type "double3" -5.6442140739444429e-015 -2.7468079594042674e-015 
		6.5807195997844978 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 18.090087890625 -0.079470634460449219 42.063819885253906 ;
	setAttr ".cbx" -type "double3" 18.643093109130859 26.206409454345703 67.529373168945313 ;
createNode groupParts -n "pasted__groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:242]";
	setAttr ".gi" 227;
createNode polyAppend -n "pasted__polyAppend5";
	setAttr -s 2 ".d[0:1]"  -2147483162 -2147483160;
	setAttr ".tx" 1;
createNode deleteComponent -n "pasted__deleteComponent27";
	setAttr ".dc" -type "componentList" 1 "f[41]";
createNode deleteComponent -n "pasted__deleteComponent26";
	setAttr ".dc" -type "componentList" 3 "f[42]" "f[45:46]" "f[49:50]";
createNode groupParts -n "pasted__groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:247]";
	setAttr ".gi" 226;
createNode polyAppend -n "pasted__polyAppend4";
	setAttr -s 3 ".d[0:2]"  -2147483194 -2147483150 -2147483165;
	setAttr ".tx" 1;
createNode groupParts -n "pasted__groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:246]";
	setAttr ".gi" 225;
createNode polyAppend -n "pasted__polyAppend3";
	setAttr -s 3 ".d[0:2]"  -2147483185 -2147483158 -2147483152;
	setAttr ".tx" 1;
createNode groupParts -n "pasted__groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:245]";
	setAttr ".gi" 223;
createNode polyAppend -n "pasted__polyAppend2";
	setAttr -s 2 ".d[0:1]"  -2147483203 -2147483216;
	setAttr ".tx" 1;
createNode groupParts -n "pasted__groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:244]";
	setAttr ".gi" 222;
createNode polyAppend -n "pasted__polyAppend1";
	setAttr -s 2 ".d[0:1]"  -2147483212 -2147483199;
	setAttr ".tx" 1;
createNode deleteComponent -n "pasted__deleteComponent25";
	setAttr ".dc" -type "componentList" 2 "f[226:227]" "f[238:239]";
createNode deleteComponent -n "pasted__deleteComponent24";
	setAttr ".dc" -type "componentList" 1 "f[234]";
createNode deleteComponent -n "pasted__deleteComponent23";
	setAttr ".dc" -type "componentList" 2 "f[234]" "f[248:249]";
createNode polyTweak -n "pasted__polyTweak29";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[234:253]" -type "float3"  -1.04970479 0.74201828 0 -0.5248524
		 0.74201828 0 -0.5248524 0.33005986 0 -1.04970479 0.33005986 0 -3.7763328e-008 0.74201828
		 0 -3.7763328e-008 0.33005986 0 0.52485234 0.74201828 0 0.52485234 0.33005986 0 1.04970479
		 0.74201828 0 1.04970479 0.33005986 0 -0.5248524 -0.28433052 0 -1.04970479 -0.28433052
		 0 -3.7763328e-008 -0.28433052 0 0.52485234 -0.28433052 0 1.04970479 -0.28433052 0
		 -0.5248524 -0.74201846 0 -1.04970479 -0.74201846 0 -3.7763328e-008 -0.74201846 0
		 0.52485234 -0.74201846 0 1.04970479 -0.74201846 0;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace22";
	setAttr ".ics" -type "componentList" 1 "f[40:51]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 -5.1514348342607263e-014 -2.9674572485095858 ;
	setAttr ".pvt" -type "float3" -1.2158504 12.813696 0.10529111 ;
	setAttr ".rs" 357684233;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -17.342231750488281 1.4142322540283203 3.0727481842041016 ;
	setAttr ".cbx" -type "double3" 14.910531044006348 24.213159561157227 3.0727481842041016 ;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace21";
	setAttr ".ics" -type "componentList" 1 "f[40:51]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 2.5313084961453569e-014 -1.3145040611561853e-013 -10.441057940479554 ;
	setAttr ".pvt" -type "float3" -1.2158504 12.813696 3.0727496 ;
	setAttr ".rs" 140792742;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -17.342231750488281 1.4142322540283203 13.513806343078613 ;
	setAttr ".cbx" -type "double3" 14.910531044006348 24.213159561157227 13.513806343078613 ;
createNode polyTweak -n "pasted__polyTweak28";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[206:225]" -type "float3"  3.29496288 -2.32915306 0 1.64748144
		 -2.32915306 0 1.64748144 -1.036039114 0 3.29496288 -1.036039114 0 2.1981837e-008
		 -2.32915306 0 2.1981837e-008 -1.036039114 0 -1.64748144 -2.32915306 0 -1.64748144
		 -1.036039114 0 -3.29496288 -2.32915306 0 -3.29496288 -1.036039114 0 1.64748144 0.89249742
		 0 3.29496288 0.89249742 0 2.1981837e-008 0.89249742 0 -1.64748144 0.89249742 0 -3.29496288
		 0.89249742 0 1.64748144 2.32915306 0 3.29496288 2.32915306 0 2.1981837e-008 2.32915306
		 0 -1.64748144 2.32915306 0 -3.29496288 2.32915306 0;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace20";
	setAttr ".ics" -type "componentList" 1 "f[40:51]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 0 -3.0844625159611141 ;
	setAttr ".pvt" -type "float3" -1.2158508 12.813696 13.51381 ;
	setAttr ".rs" 806419930;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -20.637195587158203 -0.91492080688476563 16.598268508911133 ;
	setAttr ".cbx" -type "double3" 18.205493927001953 26.542312622070313 16.598268508911133 ;
createNode polyMergeVert -n "pasted__polyMergeVert56";
	setAttr ".ics" -type "componentList" 2 "vtx[25]" "vtx[149]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[25]";
createNode polyMergeVert -n "pasted__polyMergeVert55";
	setAttr ".ics" -type "componentList" 2 "vtx[26]" "vtx[97]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[26]";
createNode polyMergeVert -n "pasted__polyMergeVert54";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[214]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[21]";
createNode polyMergeVert -n "pasted__polyMergeVert53";
	setAttr ".ics" -type "componentList" 2 "vtx[16]" "vtx[151]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[16]";
createNode polyMergeVert -n "pasted__polyMergeVert52";
	setAttr ".ics" -type "componentList" 2 "vtx[17]" "vtx[98]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[17]";
createNode polyMergeVert -n "pasted__polyMergeVert51";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[81]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[18]";
createNode deleteComponent -n "pasted__deleteComponent22";
	setAttr ".dc" -type "componentList" 1 "f[13:14]";
createNode polyMergeVert -n "pasted__polyMergeVert50";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[213]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[23]";
createNode polyMergeVert -n "pasted__polyMergeVert49";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[82]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[28]";
createNode groupParts -n "pasted__groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:211]";
	setAttr ".gi" 220;
createNode polyUnite -n "pasted__polyUnite1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "pasted__groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:77]";
createNode deleteComponent -n "pasted__deleteComponent21";
	setAttr ".dc" -type "componentList" 1 "f[17:18]";
createNode polyTweak -n "pasted__polyTweak27";
	setAttr ".uopa" yes;
	setAttr -s 52 ".tk";
	setAttr ".tk[15]" -type "float3" 0 0.66376382 -2.4968982 ;
	setAttr ".tk[16]" -type "float3" 0.099493206 0.67320275 -2.4989345 ;
	setAttr ".tk[17]" -type "float3" 0.099493206 0.67320275 -2.4989345 ;
	setAttr ".tk[18]" -type "float3" 0.099493206 0.67320275 -2.4989345 ;
	setAttr ".tk[19]" -type "float3" 0.099493206 0.67320275 -2.4989345 ;
	setAttr ".tk[20]" -type "float3" 0.13947079 4.1171608 -6.616045 ;
	setAttr ".tk[21]" -type "float3" 0.13947079 4.1171608 -6.616045 ;
	setAttr ".tk[22]" -type "float3" 0.13947079 4.1171608 -6.616045 ;
	setAttr ".tk[23]" -type "float3" 0.13947079 4.1171608 -6.616045 ;
	setAttr ".tk[24]" -type "float3" 0.13947079 4.1171608 -6.616045 ;
	setAttr ".tk[25]" -type "float3" -0.11540623 2.4694579 -0.76939178 ;
	setAttr ".tk[26]" -type "float3" -0.11540623 2.4694579 -0.76939178 ;
	setAttr ".tk[27]" -type "float3" -0.11540623 2.4694579 -0.76939178 ;
	setAttr ".tk[28]" -type "float3" -0.11540623 2.4694579 -0.76939178 ;
	setAttr ".tk[29]" -type "float3" -0.11540623 2.4694579 -0.76939178 ;
	setAttr ".tk[30]" -type "float3" 0 1.2332474 0 ;
	setAttr ".tk[31]" -type "float3" 0 1.2332474 0 ;
	setAttr ".tk[32]" -type "float3" 0 1.2332474 0 ;
	setAttr ".tk[33]" -type "float3" 0 1.2332474 0 ;
	setAttr ".tk[34]" -type "float3" 0 1.2332474 0 ;
	setAttr ".tk[35]" -type "float3" 0.43759984 -2.532455 -4.8872924 ;
	setAttr ".tk[36]" -type "float3" 0.43759984 -2.532455 -4.8872924 ;
	setAttr ".tk[37]" -type "float3" 0.43759984 -2.532455 -4.8872924 ;
	setAttr ".tk[38]" -type "float3" 0.43759984 -2.532455 -4.8872924 ;
	setAttr ".tk[39]" -type "float3" 0.43759984 -2.532455 -4.8872924 ;
	setAttr ".tk[40]" -type "float3" 0.0053207036 -0.27067006 -1.0024284 ;
	setAttr ".tk[41]" -type "float3" 0.0053207036 -0.27067006 -1.0024284 ;
	setAttr ".tk[42]" -type "float3" 0.0053207036 -0.27067006 -1.0024284 ;
	setAttr ".tk[43]" -type "float3" 0.0053207036 -0.27067006 -1.0024284 ;
	setAttr ".tk[44]" -type "float3" 0.0053207036 -0.27067006 -1.0024284 ;
	setAttr ".tk[60]" -type "float3" 0 1.2332474 0 ;
	setAttr ".tk[61]" -type "float3" 0 1.2332474 0 ;
	setAttr ".tk[62]" -type "float3" 0 1.2332474 0 ;
	setAttr ".tk[63]" -type "float3" 0 1.2332474 0 ;
	setAttr ".tk[64]" -type "float3" 0 1.2332474 0 ;
	setAttr ".tk[65]" -type "float3" 0 -0.55148596 0 ;
	setAttr ".tk[66]" -type "float3" 0 -0.55148596 0 ;
	setAttr ".tk[67]" -type "float3" 0 -0.55148596 0 ;
	setAttr ".tk[68]" -type "float3" 0 -0.55148596 0 ;
	setAttr ".tk[69]" -type "float3" 0 -0.55148596 0 ;
	setAttr ".tk[70]" -type "float3" 0 1.2332474 0 ;
	setAttr ".tk[71]" -type "float3" 0 -0.55148596 0 ;
	setAttr ".tk[72]" -type "float3" 0 1.2332474 0 ;
	setAttr ".tk[73]" -type "float3" 0 -0.55148596 0 ;
	setAttr ".tk[74]" -type "float3" 0 1.2332474 0 ;
	setAttr ".tk[75]" -type "float3" 0 0.025964931 -0.26973495 ;
	setAttr ".tk[76]" -type "float3" 0 1.2332474 0 ;
	setAttr ".tk[77]" -type "float3" 0 -0.55148596 0 ;
	setAttr ".tk[78]" -type "float3" 0 1.2332474 0 ;
	setAttr ".tk[79]" -type "float3" 0 -0.55148596 0 ;
	setAttr ".tk[80]" -type "float3" 0 1.2332474 0 ;
	setAttr ".tk[81]" -type "float3" 0 0.025964931 -0.26973495 ;
createNode polyCube -n "pasted__sheep_body1";
	setAttr ".ax" -type "double3" 0 0 1 ;
	setAttr ".w" 38.842689771355765;
	setAttr ".h" 38.340737993479742;
	setAttr ".d" 22.124931986183675;
	setAttr ".sw" 4;
	setAttr ".sh" 4;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:133]";
createNode polySplitRing -n "pasted__polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[0]" "e[3]" "e[6]" "e[43]" "e[135]" "e[137]" "e[140]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 0.016255130260005055 1.2342360732372004 0
		 0 -1.1485420891912841 0.015126523745117155 0 0 0.7059010282144822 36.105904616712948 1;
	setAttr ".wt" 0.4789392352104187;
	setAttr ".dr" no;
	setAttr ".re" 3;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "pasted__polyTweak26";
	setAttr ".uopa" yes;
	setAttr -s 139 ".tk";
	setAttr ".tk[0]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[1]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[2]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[3]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[4]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[5]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[6]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[7]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[8]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[9]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[10]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[11]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[12]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[13]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[14]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[15]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[16]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[17]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[18]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[19]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[20]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[21]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[22]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[23]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[24]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[25]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[26]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[27]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[28]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[29]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[30]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[31]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[32]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[33]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[34]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[35]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[36]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[37]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[38]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[39]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[40]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[41]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[42]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[43]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[44]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[45]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[46]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[47]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[48]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[49]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[50]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[51]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[52]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[53]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[54]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[55]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[56]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[57]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[58]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[59]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[60]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[61]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[62]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[63]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[64]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[65]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[66]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[67]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[68]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[69]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[70]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[71]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[72]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[73]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[74]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[75]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[76]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[77]" -type "float3" -0.47942573 12.180693 -24.87429 ;
	setAttr ".tk[78]" -type "float3" -0.47942573 12.180693 -24.87429 ;
	setAttr ".tk[79]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[80]" -type "float3" -0.47942573 12.180691 -24.874287 ;
	setAttr ".tk[81]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[82]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[83]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[84]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[85]" -type "float3" -0.47942573 12.180693 -24.87429 ;
	setAttr ".tk[86]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[87]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[88]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[89]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[90]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[91]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[92]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[93]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[94]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[95]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[96]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[97]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[98]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[99]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[100]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[101]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[102]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[103]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[104]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[105]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[106]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[107]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[108]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[109]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[110]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[111]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[112]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[113]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[114]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[115]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[116]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[117]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[118]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[119]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[120]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[121]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[122]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[123]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[124]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[125]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[126]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[127]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[128]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[129]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[130]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[131]" -type "float3" -0.47942573 12.180693 -24.874287 ;
	setAttr ".tk[228]" -type "float3" 0 -9.5367432e-007 0 ;
	setAttr ".tk[229]" -type "float3" 0 -9.5367432e-007 0 ;
	setAttr ".tk[230]" -type "float3" 0 -9.5367432e-007 0 ;
	setAttr ".tk[233]" -type "float3" 0 0 -3.8146973e-006 ;
	setAttr ".tk[234]" -type "float3" 0 0 -1.9073486e-006 ;
	setAttr ".tk[236]" -type "float3" 0 -1.9073486e-006 0 ;
	setAttr ".tk[241]" -type "float3" 0 0 -1.9073486e-006 ;
createNode deleteComponent -n "pasted__deleteComponent20";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "pasted__deleteComponent19";
	setAttr ".dc" -type "componentList" 3 "f[0]" "f[66:69]" "f[81]";
createNode deleteComponent -n "pasted__deleteComponent18";
	setAttr ".dc" -type "componentList" 9 "f[0:1]" "f[3:7]" "f[9:16]" "f[28:30]" "f[84:88]" "f[91:94]" "f[97:104]" "f[116:117]" "f[172:175]";
createNode deleteComponent -n "pasted__deleteComponent17";
	setAttr ".dc" -type "componentList" 14 "f[3:10]" "f[12:13]" "f[15:28]" "f[33:36]" "f[41:44]" "f[60:67]" "f[128:131]" "f[135:142]" "f[144:145]" "f[147:160]" "f[165:168]" "f[173:176]" "f[192:199]" "f[260:263]";
createNode polyMapSew -n "pasted__polyMapSew2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[522]";
createNode polyMapSewMove -n "pasted__polyMapSewMove2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[379]";
createNode polyMapCut -n "pasted__polyMapCut3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[76]";
createNode polyMapCut -n "pasted__polyMapCut2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[358]";
createNode polyMapCut -n "pasted__polyMapCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[358]";
createNode polyMapSew -n "pasted__polyMapSew1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[525]";
createNode polyMapSewMove -n "pasted__polyMapSewMove1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[374]";
createNode polyAutoProj -n "pasted__polyAutoProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:263]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 0.016255130260005055 1.2342360732372004 0
		 0 -1.1485420891912841 0.015126523745117155 0 0 -6.9388939039072284e-018 34.54902616192058 1;
	setAttr ".s" -type "double3" 71.717833516822267 71.717833516822267 71.717833516822267 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyMergeVert -n "pasted__polyMergeVert48";
	setAttr ".ics" -type "componentList" 2 "vtx[71]" "vtx[226]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 0.016255130260005055 1.2342360732372004 0
		 0 -1.1485420891912841 0.015126523745117155 0 0 -6.9388939039072284e-018 34.54902616192058 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[71]";
createNode polyMergeVert -n "pasted__polyMergeVert47";
	setAttr ".ics" -type "componentList" 2 "vtx[70]" "vtx[227]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 0.016255130260005055 1.2342360732372004 0
		 0 -1.1485420891912841 0.015126523745117155 0 0 -6.9388939039072284e-018 34.54902616192058 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[70]";
createNode polyMergeVert -n "pasted__polyMergeVert46";
	setAttr ".ics" -type "componentList" 2 "vtx[91]" "vtx[228]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 0.016255130260005055 1.2342360732372004 0
		 0 -1.1485420891912841 0.015126523745117155 0 0 -6.9388939039072284e-018 34.54902616192058 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[91]";
createNode polyMergeVert -n "pasted__polyMergeVert45";
	setAttr ".ics" -type "componentList" 2 "vtx[90]" "vtx[228]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 0.016255130260005055 1.2342360732372004 0
		 0 -1.1485420891912841 0.015126523745117155 0 0 -6.9388939039072284e-018 34.54902616192058 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[90]";
createNode polyMergeVert -n "pasted__polyMergeVert44";
	setAttr ".ics" -type "componentList" 2 "vtx[89]" "vtx[228]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 0.016255130260005055 1.2342360732372004 0
		 0 -1.1485420891912841 0.015126523745117155 0 0 -6.9388939039072284e-018 34.54902616192058 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[89]";
createNode polyMergeVert -n "pasted__polyMergeVert43";
	setAttr ".ics" -type "componentList" 2 "vtx[88]" "vtx[228]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 0.016255130260005055 1.2342360732372004 0
		 0 -1.1485420891912841 0.015126523745117155 0 0 -6.9388939039072284e-018 34.54902616192058 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[88]";
createNode polyMergeVert -n "pasted__polyMergeVert42";
	setAttr ".ics" -type "componentList" 2 "vtx[85]" "vtx[228]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 0.016255130260005055 1.2342360732372004 0
		 0 -1.1485420891912841 0.015126523745117155 0 0 -6.9388939039072284e-018 34.54902616192058 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[85]";
createNode polyMergeVert -n "pasted__polyMergeVert41";
	setAttr ".ics" -type "componentList" 2 "vtx[84]" "vtx[228]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 0.016255130260005055 1.2342360732372004 0
		 0 -1.1485420891912841 0.015126523745117155 0 0 -6.9388939039072284e-018 34.54902616192058 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[84]";
createNode polyMergeVert -n "pasted__polyMergeVert40";
	setAttr ".ics" -type "componentList" 2 "vtx[83]" "vtx[228]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 0.016255130260005055 1.2342360732372004 0
		 0 -1.1485420891912841 0.015126523745117155 0 0 -6.9388939039072284e-018 34.54902616192058 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[83]";
createNode polyMergeVert -n "pasted__polyMergeVert39";
	setAttr ".ics" -type "componentList" 2 "vtx[82]" "vtx[228]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 0.016255130260005055 1.2342360732372004 0
		 0 -1.1485420891912841 0.015126523745117155 0 0 -6.9388939039072284e-018 34.54902616192058 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[82]";
createNode polyMergeVert -n "pasted__polyMergeVert38";
	setAttr ".ics" -type "componentList" 2 "vtx[81]" "vtx[228]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 0.016255130260005055 1.2342360732372004 0
		 0 -1.1485420891912841 0.015126523745117155 0 0 -6.9388939039072284e-018 34.54902616192058 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[81]";
createNode polyMergeVert -n "pasted__polyMergeVert37";
	setAttr ".ics" -type "componentList" 2 "vtx[80]" "vtx[228]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 0.016255130260005055 1.2342360732372004 0
		 0 -1.1485420891912841 0.015126523745117155 0 0 -6.9388939039072284e-018 34.54902616192058 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[80]";
createNode polyMergeVert -n "pasted__polyMergeVert36";
	setAttr ".ics" -type "componentList" 2 "vtx[79]" "vtx[228]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 0.016255130260005055 1.2342360732372004 0
		 0 -1.1485420891912841 0.015126523745117155 0 0 -6.9388939039072284e-018 34.54902616192058 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[79]";
createNode polyMergeVert -n "pasted__polyMergeVert35";
	setAttr ".ics" -type "componentList" 2 "vtx[78]" "vtx[228]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 0.016255130260005055 1.2342360732372004 0
		 0 -1.1485420891912841 0.015126523745117155 0 0 -6.9388939039072284e-018 34.54902616192058 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[78]";
createNode polyMergeVert -n "pasted__polyMergeVert34";
	setAttr ".ics" -type "componentList" 2 "vtx[77]" "vtx[228]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 0.016255130260005055 1.2342360732372004 0
		 0 -1.1485420891912841 0.015126523745117155 0 0 -6.9388939039072284e-018 34.54902616192058 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[77]";
createNode polyMergeVert -n "pasted__polyMergeVert33";
	setAttr ".ics" -type "componentList" 2 "vtx[76]" "vtx[228]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 0.016255130260005055 1.2342360732372004 0
		 0 -1.1485420891912841 0.015126523745117155 0 0 -6.9388939039072284e-018 34.54902616192058 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[76]";
createNode polyMergeVert -n "pasted__polyMergeVert32";
	setAttr ".ics" -type "componentList" 2 "vtx[75]" "vtx[228]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 0.016255130260005055 1.2342360732372004 0
		 0 -1.1485420891912841 0.015126523745117155 0 0 -6.9388939039072284e-018 34.54902616192058 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[75]";
createNode polyMergeVert -n "pasted__polyMergeVert31";
	setAttr ".ics" -type "componentList" 2 "vtx[74]" "vtx[228]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 0.016255130260005055 1.2342360732372004 0
		 0 -1.1485420891912841 0.015126523745117155 0 0 -6.9388939039072284e-018 34.54902616192058 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[74]";
createNode polyMergeEdge -n "pasted__polyMergeEdge1";
	setAttr ".fe" 136;
	setAttr ".se" 419;
createNode polyMirror -n "pasted__polyMirror3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 0.016255130260005055 1.2342360732372004 0
		 0 -1.1485420891912841 0.015126523745117155 0 0 -6.9388939039072284e-018 34.54902616192058 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" -0.69307039080319677 -8.127206627702444 34.8404036749547 ;
	setAttr ".d" 1;
	setAttr ".mm" 1;
createNode polyTweak -n "pasted__polyTweak25";
	setAttr ".uopa" yes;
	setAttr -s 76 ".tk";
	setAttr ".tk[0]" -type "float3" 1.6419895 -0.95882469 -2.7056751 ;
	setAttr ".tk[1]" -type "float3" -0.72640109 0.17866918 0.0025286777 ;
	setAttr ".tk[2]" -type "float3" 0 0.026200881 -2.1378398 ;
	setAttr ".tk[3]" -type "float3" -1.0361364 0.055234846 -4.5691991 ;
	setAttr ".tk[4]" -type "float3" -0.40484816 0.019270778 -1.5723828 ;
	setAttr ".tk[5]" -type "float3" -1.749786 0.02977928 -2.4921761 ;
	setAttr ".tk[6]" -type "float3" 0 -1.7013369 -0.024078751 ;
	setAttr ".tk[7]" -type "float3" -2.8731034 -1.3964272 -0.019763408 ;
	setAttr ".tk[8]" -type "float3" 0 -1.7013369 -0.024078751 ;
	setAttr ".tk[9]" -type "float3" -1.9913932 -1.3964272 -0.019763408 ;
	setAttr ".tk[10]" -type "float3" 0 -1.7013369 -0.024078751 ;
	setAttr ".tk[11]" -type "float3" -1.9913932 -1.3964272 -0.019763408 ;
	setAttr ".tk[12]" -type "float3" -0.80043912 -1.3788719 1.3168938 ;
	setAttr ".tk[13]" -type "float3" -2.4558036 -1.2141067 -0.017183073 ;
	setAttr ".tk[14]" -type "float3" -0.48782161 -0.0070217713 0.57293552 ;
	setAttr ".tk[15]" -type "float3" -0.41936114 0 0 ;
	setAttr ".tk[16]" -type "float3" 0 -0.010976505 0.8956188 ;
	setAttr ".tk[18]" -type "float3" 2.5489969 -0.98946089 -0.20594421 ;
	setAttr ".tk[19]" -type "float3" 0.74495542 -0.93126619 -0.013180058 ;
	setAttr ".tk[20]" -type "float3" 2.5489969 -1.0097256 1.4475296 ;
	setAttr ".tk[21]" -type "float3" 1.1065587 -0.5382722 0.90195048 ;
	setAttr ".tk[22]" -type "float3" 2.5489969 -0.98946089 -0.20594421 ;
	setAttr ".tk[23]" -type "float3" 0.74495542 -0.93126619 -0.013180058 ;
	setAttr ".tk[24]" -type "float3" 0 -0.38669443 0.15990326 ;
	setAttr ".tk[28]" -type "float3" 1.6480374 2.2237513 0.031472392 ;
	setAttr ".tk[29]" -type "float3" 0 0.53419888 0.0075604306 ;
	setAttr ".tk[30]" -type "float3" -0.50495726 -0.63331813 -0.0089632487 ;
	setAttr ".tk[31]" -type "float3" 0 -0.96293825 0.99687403 ;
	setAttr ".tk[32]" -type "float3" 0 -0.0070217713 0.57293552 ;
	setAttr ".tk[33]" -type "float3" 0 -0.010976505 0.8956188 ;
	setAttr ".tk[34]" -type "float3" -2.1496253 -0.63445127 -0.12926903 ;
	setAttr ".tk[35]" -type "float3" -2.1496253 -0.65471584 1.5242041 ;
	setAttr ".tk[36]" -type "float3" -2.1496253 -0.63445127 -0.12926903 ;
	setAttr ".tk[37]" -type "float3" -0.64073288 -0.61700726 -1.5525956 ;
	setAttr ".tk[38]" -type "float3" 0 0.026200881 -2.1378398 ;
	setAttr ".tk[39]" -type "float3" 1.6480374 2.2315135 -0.60186136 ;
	setAttr ".tk[40]" -type "float3" 0 0.49970815 -1.6207379 ;
	setAttr ".tk[41]" -type "float3" 0 0.43570089 -1.3963021 ;
	setAttr ".tk[42]" -type "float3" 0 0.070985101 -1.6268059 ;
	setAttr ".tk[43]" -type "float3" 0 0.017185457 -1.4022259 ;
	setAttr ".tk[44]" -type "float3" 0 0.28629145 0.0040518362 ;
	setAttr ".tk[45]" -type "float3" 0 0.22903317 0.0032414692 ;
	setAttr ".tk[46]" -type "float3" 0 -0.17177489 -0.0024311016 ;
	setAttr ".tk[47]" -type "float3" 0 -0.22903319 -0.0032414689 ;
	setAttr ".tk[48]" -type "float3" 0 0.24288885 -1.8893086 ;
	setAttr ".tk[49]" -type "float3" 0 0.19463637 -1.9364103 ;
	setAttr ".tk[50]" -type "float3" 0 0.24288885 -1.8893086 ;
	setAttr ".tk[51]" -type "float3" 0 0.19463637 -1.9364103 ;
	setAttr ".tk[52]" -type "float3" 0 -0.13173647 -0.23981461 ;
	setAttr ".tk[53]" -type "float3" 0 -0.19231832 -0.18057637 ;
	setAttr ".tk[54]" -type "float3" 0 -0.13173647 -0.23981461 ;
	setAttr ".tk[55]" -type "float3" 0 -0.19231832 -0.18057637 ;
	setAttr ".tk[56]" -type "float3" 0.93959403 0 0 ;
	setAttr ".tk[66]" -type "float3" -1.1255338 0.35057703 -0.811373 ;
	setAttr ".tk[67]" -type "float3" -0.79508758 0.027063999 -2.2082646 ;
	setAttr ".tk[69]" -type "float3" 0 0.015467159 -1.26203 ;
	setAttr ".tk[71]" -type "float3" 0 3.6888337 0.05220747 ;
	setAttr ".tk[72]" -type "float3" 0 3.6888337 0.05220747 ;
	setAttr ".tk[73]" -type "float3" 0 1.1608236 0.016428947 ;
	setAttr ".tk[75]" -type "float3" 0 -0.96293825 0.99687403 ;
	setAttr ".tk[76]" -type "float3" 0 -0.0070217713 0.57293552 ;
	setAttr ".tk[77]" -type "float3" 0 -0.021289773 1.7371212 ;
	setAttr ".tk[79]" -type "float3" 0 -0.020264607 1.6534735 ;
	setAttr ".tk[81]" -type "float3" 0 0.014462206 -1.1800315 ;
	setAttr ".tk[82]" -type "float3" 0 0.026200881 -2.1378398 ;
	setAttr ".tk[83]" -type "float3" 0 0.007761999 -0.6333338 ;
	setAttr ".tk[92]" -type "float3" 0 -0.028146135 2.29656 ;
	setAttr ".tk[96]" -type "float3" -0.33488172 0.20442234 0.0028931561 ;
	setAttr ".tk[136]" -type "float3" -0.87689495 -0.32281983 -0.97603738 ;
	setAttr ".tk[137]" -type "float3" -0.87689495 -0.31466359 -0.1823079 ;
	setAttr ".tk[138]" -type "float3" 0.82948834 -0.31466359 -0.1823079 ;
	setAttr ".tk[139]" -type "float3" 0.82948834 -0.32281983 -0.97603738 ;
	setAttr ".tk[140]" -type "float3" -0.87039936 0.36927807 -2.7938495 ;
	setAttr ".tk[141]" -type "float3" -0.87039936 0.36148006 -1.8229237 ;
	setAttr ".tk[142]" -type "float3" 0.87039936 0.38539219 -1.8243111 ;
	setAttr ".tk[143]" -type "float3" 0.87039936 0.39319026 -2.7952371 ;
createNode polySplitRing -n "pasted__polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[88:89]" "e[91]" "e[93]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 0.016255130260005055 1.2342360732372004 0
		 0 -1.1485420891912841 0.015126523745117155 0 0 -6.9388939039072284e-018 34.54902616192058 1;
	setAttr ".wt" 0.76177406311035156;
	setAttr ".dr" no;
	setAttr ".re" 93;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[96:97]" "e[99]" "e[101]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 0.016255130260005055 1.2342360732372004 0
		 0 -1.1485420891912841 0.015126523745117155 0 0 -6.9388939039072284e-018 34.54902616192058 1;
	setAttr ".wt" 0.72689300775527954;
	setAttr ".dr" no;
	setAttr ".re" 101;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode deleteComponent -n "pasted__deleteComponent16";
	setAttr ".dc" -type "componentList" 1 "f[124:247]";
createNode polyTweak -n "pasted__polyTweak24";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[48]" -type "float3" 0 0.44669747 0.0063220374 ;
	setAttr ".tk[49]" -type "float3" 0 0.44669747 0.0063220374 ;
	setAttr ".tk[52]" -type "float3" 0 0.44669747 0.0063220374 ;
	setAttr ".tk[53]" -type "float3" 0 0.44669747 0.0063220374 ;
	setAttr ".tk[171]" -type "float3" 0 0.44669747 0.0063220374 ;
	setAttr ".tk[172]" -type "float3" 0 0.44669747 0.0063220374 ;
	setAttr ".tk[177]" -type "float3" 0 0.44669747 0.0063220374 ;
	setAttr ".tk[178]" -type "float3" 0 0.44669747 0.0063220374 ;
createNode polyMergeVert -n "pasted__polyMergeVert30";
	setAttr ".ics" -type "componentList" 2 "vtx[78]" "vtx[210]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[78]";
createNode polyMergeVert -n "pasted__polyMergeVert29";
	setAttr ".ics" -type "componentList" 2 "vtx[77]" "vtx[210]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[77]";
createNode polyMergeVert -n "pasted__polyMergeVert28";
	setAttr ".ics" -type "componentList" 2 "vtx[79]" "vtx[212]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[212]";
createNode polyMergeVert -n "pasted__polyMergeVert27";
	setAttr ".ics" -type "componentList" 2 "vtx[80]" "vtx[213]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[213]";
createNode polyMergeVert -n "pasted__polyMergeVert26";
	setAttr ".ics" -type "componentList" 2 "vtx[81]" "vtx[214]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[214]";
createNode polyMergeVert -n "pasted__polyMergeVert25";
	setAttr ".ics" -type "componentList" 2 "vtx[85]" "vtx[215]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[215]";
createNode polyMergeVert -n "pasted__polyMergeVert24";
	setAttr ".ics" -type "componentList" 2 "vtx[82]" "vtx[215]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[215]";
createNode polyMergeVert -n "pasted__polyMergeVert23";
	setAttr ".ics" -type "componentList" 2 "vtx[86]" "vtx[217]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[217]";
createNode polyMergeVert -n "pasted__polyMergeVert22";
	setAttr ".ics" -type "componentList" 2 "vtx[87]" "vtx[218]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[218]";
createNode polyMergeVert -n "pasted__polyMergeVert21";
	setAttr ".ics" -type "componentList" 2 "vtx[88]" "vtx[219]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[219]";
createNode polyMergeVert -n "pasted__polyMergeVert20";
	setAttr ".ics" -type "componentList" 2 "vtx[89]" "vtx[220]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[220]";
createNode polyMergeVert -n "pasted__polyMergeVert19";
	setAttr ".ics" -type "componentList" 2 "vtx[70]" "vtx[210]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[70]";
createNode polyMergeVert -n "pasted__polyMergeVert18";
	setAttr ".ics" -type "componentList" 2 "vtx[91]" "vtx[222]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[91]";
createNode polyMergeVert -n "pasted__polyMergeVert17";
	setAttr ".ics" -type "componentList" 2 "vtx[90]" "vtx[222]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[222]";
createNode deleteComponent -n "pasted__deleteComponent15";
	setAttr ".dc" -type "componentList" 1 "f[124:125]";
createNode deleteComponent -n "pasted__deleteComponent14";
	setAttr ".dc" -type "componentList" 1 "f[250]";
createNode deleteComponent -n "pasted__deleteComponent13";
	setAttr ".dc" -type "componentList" 1 "f[250]";
createNode deleteComponent -n "pasted__deleteComponent12";
	setAttr ".dc" -type "componentList" 1 "f[251]";
createNode deleteComponent -n "pasted__deleteComponent11";
	setAttr ".dc" -type "componentList" 2 "f[251:257]" "f[259:260]";
createNode deleteComponent -n "pasted__deleteComponent10";
	setAttr ".dc" -type "componentList" 1 "f[250:253]";
createNode deleteComponent -n "pasted__deleteComponent9";
	setAttr ".dc" -type "componentList" 1 "f[254]";
createNode deleteComponent -n "pasted__deleteComponent8";
	setAttr ".dc" -type "componentList" 7 "f[250:265]" "f[268]" "f[271:278]" "f[280:302]" "f[304:356]" "f[358:360]" "f[362:364]";
createNode deleteComponent -n "pasted__deleteComponent7";
	setAttr ".dc" -type "componentList" 1 "f[125]";
createNode deleteComponent -n "pasted__deleteComponent6";
	setAttr ".dc" -type "componentList" 1 "f[124:126]";
createNode deleteComponent -n "pasted__deleteComponent5";
	setAttr ".dc" -type "componentList" 5 "f[124:139]" "f[141:142]" "f[145:176]" "f[178:242]" "f[244:246]";
createNode polyMirror -n "pasted__polyMirror2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" -2.4890210996421924 48.057685327677461 5.7324231327045734 ;
	setAttr ".d" 1;
	setAttr ".mm" 1;
createNode polyMirror -n "pasted__polyMirror1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" 24.159206041909822 76.756814787591026 20.69121212981068 ;
	setAttr ".d" 1;
	setAttr ".mm" 1;
createNode polyTweak -n "pasted__polyTweak23";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk";
	setAttr ".tk[0]" -type "float3" -0.05487515 0.31661448 -1.0304924 ;
	setAttr ".tk[2]" -type "float3" 0 0 -1.6508554 ;
	setAttr ".tk[12]" -type "float3" 0 -0.99888825 0 ;
	setAttr ".tk[16]" -type "float3" 0 0 0.87354434 ;
	setAttr ".tk[31]" -type "float3" 0 -0.99888825 0 ;
	setAttr ".tk[33]" -type "float3" 0 0 0.87354434 ;
	setAttr ".tk[37]" -type "float3" -0.05487515 0.31661448 -1.0304924 ;
	setAttr ".tk[38]" -type "float3" 0 0 -1.6508554 ;
	setAttr ".tk[58]" -type "float3" 0 3.1823213 1.1405265 ;
	setAttr ".tk[59]" -type "float3" 2.6326416 3.8176425 0.13959008 ;
	setAttr ".tk[64]" -type "float3" 1.0515602 2.0369484 1.6074227 ;
	setAttr ".tk[68]" -type "float3" 0.52779132 -0.45752379 -0.73912239 ;
	setAttr ".tk[75]" -type "float3" 0 -0.99888825 0 ;
	setAttr ".tk[81]" -type "float3" -0.05487515 0.31661448 -1.0304924 ;
	setAttr ".tk[82]" -type "float3" 0 0 -1.6508554 ;
	setAttr ".tk[84]" -type "float3" 3.8857806e-016 2.175462 0 ;
	setAttr ".tk[92]" -type "float3" -0.53477395 -0.29156572 0.040587731 ;
	setAttr ".tk[95]" -type "float3" 0.15869646 0.67058539 0.12800615 ;
	setAttr ".tk[96]" -type "float3" -0.44726709 -0.28150803 0.071775511 ;
	setAttr ".tk[97]" -type "float3" 0.86854798 0 0.66711694 ;
	setAttr ".tk[98]" -type "float3" -0.42809376 -0.29597059 -0.13028826 ;
	setAttr ".tk[102]" -type "float3" -0.65537018 -0.31943887 -0.12884848 ;
	setAttr ".tk[106]" -type "float3" 0.42886716 0.11127986 -0.028487811 ;
	setAttr ".tk[108]" -type "float3" -0.045514274 -0.62928456 0.12838356 ;
	setAttr ".tk[112]" -type "float3" -0.26463059 2.1316282e-014 -0.025634855 ;
	setAttr ".tk[115]" -type "float3" 0.21799767 0.42844254 -0.14308648 ;
	setAttr ".tk[117]" -type "float3" 0 0 -1.2079548 ;
	setAttr ".tk[118]" -type "float3" 0.0025836905 0.78117365 -0.14331891 ;
	setAttr ".tk[120]" -type "float3" 0 0 0.93869549 ;
	setAttr ".tk[121]" -type "float3" -0.28532568 -0.95841646 -0.1323348 ;
	setAttr ".tk[124]" -type "float3" 0.52342069 -0.39812914 0.010239908 ;
	setAttr ".tk[125]" -type "float3" -0.32996994 -0.76449895 0.25173488 ;
	setAttr ".tk[126]" -type "float3" 0.24503291 0.27886659 0.041312255 ;
	setAttr ".tk[127]" -type "float3" 0.20636103 0.23018192 0.042801704 ;
	setAttr ".tk[128]" -type "float3" 0.26960805 -0.23274414 -0.13567898 ;
	setAttr ".tk[129]" -type "float3" -0.69376856 0.72204965 0.24706414 ;
	setAttr ".tk[132]" -type "float3" 0.94498998 -0.80236614 0.50429046 ;
	setAttr ".tk[133]" -type "float3" -0.99669087 0.37458479 1.1129612 ;
	setAttr ".tk[134]" -type "float3" 0.99669087 -0.4079591 -1.1129612 ;
	setAttr ".tk[135]" -type "float3" -0.78880668 0.80236614 -0.61591762 ;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace19";
	setAttr ".ics" -type "componentList" 1 "f[53]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 22.756609 73.005913 23.378761 ;
	setAttr ".rs" 1738185507;
	setAttr ".lt" -type "double3" -1.8873791418627661e-014 3.7151034210484024 3.3856273592296029 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 20.992946908497988 71.517079043916794 21.456982388067363 ;
	setAttr ".cbx" -type "double3" 24.520269124079597 74.494750985335855 25.300542019072637 ;
createNode polyTweak -n "pasted__polyTweak22";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[128:131]" -type "float3"  1.37780762 0.26977178 -2.73734426
		 0.68534672 -1.28466606 -2.5202744 1.39624572 2.55404639 -3.31410408 0.75948453 1.85778451
		 -3.13684344;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace18";
	setAttr ".ics" -type "componentList" 1 "f[53]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20.211451 69.284279 23.853693 ;
	setAttr ".rs" 715345092;
	setAttr ".lt" -type "double3" -3.5527136788005009e-015 4.8849813083506888e-015 3.9767203178344701 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 18.029389068531682 66.815369591037921 21.476001245165051 ;
	setAttr ".cbx" -type "double3" 22.393513071656475 71.753189353207532 26.231385922797692 ;
createNode polyTweak -n "pasted__polyTweak21";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[109]" -type "float3" 0 0 0.78778499 ;
	setAttr ".tk[113]" -type "float3" 0 0 -1.9502095 ;
	setAttr ".tk[117]" -type "float3" 0 0 -0.90393418 ;
	setAttr ".tk[120]" -type "float3" 0.65356773 0.039463691 -0.4195267 ;
	setAttr ".tk[121]" -type "float3" 1.0869161 1.1244098 -2.0890503 ;
	setAttr ".tk[124]" -type "float3" 0 0 -2.1661367 ;
	setAttr ".tk[125]" -type "float3" 0 0 -5.806819 ;
	setAttr ".tk[126]" -type "float3" 0 0 1.6115201 ;
	setAttr ".tk[127]" -type "float3" 0 0 -1.0875771 ;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace17";
	setAttr ".ics" -type "componentList" 1 "f[53]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 17.580667 67.042404 21.246922 ;
	setAttr ".rs" 928920457;
	setAttr ".lt" -type "double3" 4.4999285683823675 3.4800694935268779 2.1792772064834152 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 15.398605396892011 64.573489396807133 19.364108443361253 ;
	setAttr ".cbx" -type "double3" 19.762729400016809 69.511313867622022 23.129734796555333 ;
createNode polyTweak -n "pasted__polyTweak20";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[112:123]" -type "float3"  2.0059053898 1.67716336 -0.36661184
		 1.22474062 1.49922264 0 2.1261158 1.72534287 2.5331974e-007 1.22474062 1.49922264
		 0 3.63097334 3.16484094 -0.81908983 3.37418246 2.45874047 -1.069243789 3.81372809
		 1.72534287 2.5331974e-007 3.58902121 2.37915134 2.5331974e-007 5.0016965866 5.70017672
		 -1.66702724 5.0016965866 4.70329428 -1.66702724 5.0016965866 3.90916824 -0.098802656
		 5.0016965866 3.90916824 -0.098802656;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace16";
	setAttr ".ics" -type "componentList" 1 "f[53]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 13.392631 64.591118 19.69692 ;
	setAttr ".rs" 217379594;
	setAttr ".lt" -type "double3" -3.3306690738754696e-016 -1.7097434579227411e-014 
		4.3114982481699533 ;
	setAttr ".ls" -type "double3" 1 1 1.1158187601125287 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 11.210568656681271 62.767733346384716 16.913442934148687 ;
	setAttr ".cbx" -type "double3" 15.574692659806066 66.414503783141498 22.480398897230241 ;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace15";
	setAttr ".ics" -type "componentList" 1 "f[53]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 15.382518 67.773697 16.481604 ;
	setAttr ".rs" 1830971327;
	setAttr ".lt" -type "double3" -0.038899270584073498 0.36569910364959179 4.9393854383359539 ;
	setAttr ".ls" -type "double3" 1 1 1.0738120924896863 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 13.20045575944525 65.963853468621522 13.698125600793988 ;
	setAttr ".cbx" -type "double3" 17.564579762570045 69.583544486330553 19.265081563875537 ;
createNode polyTweak -n "pasted__polyTweak19";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[100]" -type "float3" -1.4196848 -0.097870559 -0.27621678 ;
	setAttr ".tk[101]" -type "float3" -1.0435007 0.28257668 0.61599648 ;
	setAttr ".tk[103]" -type "float3" -1.3196537 0.73584342 -0.28740668 ;
	setAttr ".tk[104]" -type "float3" -1.2082427 -0.21853933 -0.17738886 ;
	setAttr ".tk[105]" -type "float3" -0.71673971 -0.019961536 0.39727035 ;
	setAttr ".tk[106]" -type "float3" -1.3897831 -0.1209749 -0.61599654 ;
	setAttr ".tk[107]" -type "float3" -0.83265328 0.060440261 -0.37911442 ;
	setAttr ".tk[108]" -type "float3" -1.1729434 -0.42569184 -0.19253865 ;
	setAttr ".tk[109]" -type "float3" -0.67390019 -0.32912403 0.17186506 ;
	setAttr ".tk[110]" -type "float3" -1.1943624 -0.59138536 -0.50849783 ;
	setAttr ".tk[111]" -type "float3" -0.72025913 -0.73584342 -0.27161574 ;
	setAttr ".tk[112]" -type "float3" -4.6161423 -3.3167036 -0.049022362 ;
	setAttr ".tk[113]" -type "float3" -3.363205 -3.0633428 0.84904337 ;
	setAttr ".tk[114]" -type "float3" -4.6622014 -3.7179065 -0.84904289 ;
	setAttr ".tk[115]" -type "float3" -3.4863048 -4.0907936 -0.24638718 ;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace14";
	setAttr ".ics" -type "componentList" 1 "f[53]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 7.815970093361102e-014 1.1462576700421749 3.907985046680551e-014 ;
	setAttr ".pvt" -type "float3" 18.080875 74.386436 13.692661 ;
	setAttr ".rs" 564389454;
	setAttr ".lt" -type "double3" 3.2385799890354812 0.68649660465557671 2.4048300828076012 ;
	setAttr ".ls" -type "double3" 1 1 1.1343921109045432 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 16.663339870565604 72.078561451211272 11.884428585271628 ;
	setAttr ".cbx" -type "double3" 19.498409912886771 74.401781138459029 15.500893510380186 ;
createNode polyTweak -n "pasted__polyTweak18";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[104:111]" -type "float3"  -2.079932451 1.11702466 -0.97298646
		 -2.18081737 -2.1316282e-014 0 -2.13593125 0.90644372 0 -2.18081737 -2.1316282e-014
		 0 -4.6355834 2.76187396 0 -4.7015667 1.1727854 0 -3.95058846 1.33302867 1.54055798
		 -4.37969542 -1.081439734 1.54055798;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace13";
	setAttr ".ics" -type "componentList" 1 "f[53]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 19.972582 75.140831 14.006027 ;
	setAttr ".rs" 991519149;
	setAttr ".lt" -type "double3" 6.0507154842071031e-015 -5.773159728050814e-015 4.6910734102654192 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 18.113054653798699 73.654653327741372 11.313020486607314 ;
	setAttr ".cbx" -type "double3" 21.832108350679995 76.627006854308334 16.699033308610876 ;
createNode polyTweak -n "pasted__polyTweak17";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[66]" -type "float3" -1.4472735 0 0 ;
	setAttr ".tk[92]" -type "float3" -0.74204773 0 0 ;
	setAttr ".tk[96]" -type "float3" -0.95958716 1.1110132 3.4486656 ;
	setAttr ".tk[100]" -type "float3" -0.20769911 0.69835001 4.0759964 ;
	setAttr ".tk[101]" -type "float3" 0 0 -2.1162362 ;
	setAttr ".tk[102]" -type "float3" 0 0.76551563 0 ;
	setAttr ".tk[104]" -type "float3" 0.33348885 -1.6042023 6.4939437 ;
	setAttr ".tk[105]" -type "float3" 1.1757287 -2.0271523 -2.1407955 ;
	setAttr ".tk[106]" -type "float3" 1.1683062 -2.9197767 1.9600725 ;
	setAttr ".tk[107]" -type "float3" 1.9172571 -3.7526379 0.56323266 ;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace12";
	setAttr ".ics" -type "componentList" 1 "f[53]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 15.629954 77.672836 14.364863 ;
	setAttr ".rs" 393440435;
	setAttr ".lt" -type "double3" 1.5543122344752192e-015 7.9936057773011271e-015 3.265843069694994 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 13.774795923049288 74.860709251394226 8.4372579977404989 ;
	setAttr ".cbx" -type "double3" 17.485112611341652 80.484969449495011 20.292467911658505 ;
createNode polyTweak -n "pasted__polyTweak16";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[92]" -type "float3" -1.1340251 0.16637534 0 ;
	setAttr ".tk[100]" -type "float3" -2.3552825 -1.6637558 0 ;
	setAttr ".tk[101]" -type "float3" -0.087232761 -2.8283825 0 ;
	setAttr ".tk[102]" -type "float3" -2.0063522 -2.8283825 0 ;
	setAttr ".tk[103]" -type "float3" -0.087232761 -2.8283825 0 ;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace11";
	setAttr ".ics" -type "componentList" 1 "f[53]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 12.85518 78.806633 15.297144 ;
	setAttr ".rs" 828281584;
	setAttr ".lt" -type "double3" 3.9968028886505635e-015 -1.7763568394002505e-015 4.7376467276349459 ;
	setAttr ".ls" -type "double3" 0.72812456795232439 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 11.228168402365108 74.410951225156225 9.3899316321557258 ;
	setAttr ".cbx" -type "double3" 14.482191645823375 83.202307455942361 21.204356493230677 ;
createNode polyTweak -n "pasted__polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[96:99]" -type "float3"  -1.80233991 1.085231185 1.47613394
		 -1.80233991 1.085231185 1.47613394 0.47802198 2.15933895 1.47613394 0.47802198 2.15933895
		 1.47613394;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 1 "f[53]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 10.884513 78.538185 19.547203 ;
	setAttr ".rs" 1869659487;
	setAttr ".lt" -type "double3" 1.4234883305534323 6.0979047981133938 2.5902325212599564 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.9153872887331342 74.805410921139156 13.63999003086936 ;
	setAttr ".cbx" -type "double3" 13.853638922051619 82.270953898355685 25.454417082804476 ;
createNode polyTweak -n "pasted__polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[57]" -type "float3" -0.69786155 1.1646276 0 ;
	setAttr ".tk[58]" -type "float3" -0.69786155 1.1646276 0 ;
	setAttr ".tk[64]" -type "float3" -0.69786155 1.1646276 0 ;
	setAttr ".tk[65]" -type "float3" -0.69786155 1.1646276 0 ;
	setAttr ".tk[66]" -type "float3" 1.5701886 -1.0658141e-014 0 ;
	setAttr ".tk[67]" -type "float3" 1.5701886 -1.0658141e-014 0 ;
	setAttr ".tk[68]" -type "float3" 1.5701886 -1.0658141e-014 0 ;
	setAttr ".tk[69]" -type "float3" 1.5701886 -1.0658141e-014 0 ;
	setAttr ".tk[70]" -type "float3" 0 1.1646277 0 ;
	setAttr ".tk[92]" -type "float3" 1.5257465 -1.3371222 0.97987711 ;
	setAttr ".tk[93]" -type "float3" 1.6746455 -2.044076 -0.97987717 ;
	setAttr ".tk[94]" -type "float3" 2.4317689 -1.9112548 0.76177692 ;
	setAttr ".tk[95]" -type "float3" 2.4869516 -2.4895108 0.32230303 ;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 1 "f[53]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 2.1458157291031945 3.9173389671074403 -6.0669434086835921 ;
	setAttr ".pvt" -type "float3" 8.5228271 80.899864 19.547205 ;
	setAttr ".rs" 189505428;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.8421651764119047 72.538541946368198 18.581406122314625 ;
	setAttr ".cbx" -type "double3" 9.9118571768453716 81.426533704387396 32.64688612748305 ;
createNode polyTweak -n "pasted__polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[56]" -type "float3" -1.5701886 -1.1546319e-014 0 ;
	setAttr ".tk[57]" -type "float3" 0 0.74868917 0 ;
	setAttr ".tk[58]" -type "float3" -1.4829556 -1.0658141e-014 0 ;
	setAttr ".tk[59]" -type "float3" -3.5765386 -1.1546319e-014 0 ;
	setAttr ".tk[60]" -type "float3" -1.9191192 -5.7731597e-015 0 ;
	setAttr ".tk[61]" -type "float3" -0.43616343 -1.1546319e-014 0 ;
	setAttr ".tk[65]" -type "float3" 0 0.99825221 0 ;
	setAttr ".tk[66]" -type "float3" -1.3084905 -1.0658141e-014 0 ;
	setAttr ".tk[90]" -type "float3" 0 0.99825215 0 ;
	setAttr ".tk[91]" -type "float3" 0 1.9965044 0 ;
createNode deleteComponent -n "pasted__deleteComponent4";
	setAttr ".dc" -type "componentList" 21 "f[0:1]" "f[3:4]" "f[6:7]" "f[9:10]" "f[12:13]" "f[15:16]" "f[18:19]" "f[21:22]" "f[24:25]" "f[27:28]" "f[30:31]" "f[33:34]" "f[45:65]" "f[78:85]" "f[94:101]" "f[110:111]" "f[113]" "f[115:118]" "f[120:122]" "f[124:128]" "f[130:133]";
createNode polySplitRing -n "pasted__polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 21 "e[108:109]" "e[111]" "e[113]" "e[115]" "e[117]" "e[119]" "e[121]" "e[123]" "e[125]" "e[127]" "e[129]" "e[224]" "e[227]" "e[232]" "e[235]" "e[238]" "e[242]" "e[246]" "e[250]" "e[254]" "e[258]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".wt" 0.48466482758522034;
	setAttr ".dr" no;
	setAttr ".re" 254;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "pasted__polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[132:139]" -type "float3"  -1.38285744 1.13777411 1.93489861
		 -1.11438632 -0.25820136 -1.93489861 -0.50576085 -1.13777411 0.63643026 -0.54710841
		 0.0040731914 1.50423193 1.38285744 1.13777411 1.93489861 1.11438632 -0.25820136 -1.93489861
		 0.54710883 0.0040731914 1.50423193 0.50576097 -1.13777411 0.63643026;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 2 "f[127]" "f[129]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 1.6431300764452317e-014 7.3659750727222502 0 ;
	setAttr ".pvt" -type "float3" -2.1226053 76.982529 25.614145 ;
	setAttr ".rs" 2106713019;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -14.069530697218363 63.76816037601472 16.358900077039266 ;
	setAttr ".cbx" -type "double3" 9.8243198271400605 75.46496970112463 34.869391077328324 ;
createNode polyTweak -n "pasted__polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 86 ".tk";
	setAttr ".tk[0]" -type "float3" 0 1.5701858 -3.6354272 ;
	setAttr ".tk[3]" -type "float3" 0 1.5701858 -3.6354272 ;
	setAttr ".tk[4]" -type "float3" 0 0 -3.6354272 ;
	setAttr ".tk[7]" -type "float3" 0 0 -3.6354272 ;
	setAttr ".tk[8]" -type "float3" 0.70213306 0 -3.6354272 ;
	setAttr ".tk[11]" -type "float3" -0.70213306 0 -3.6354272 ;
	setAttr ".tk[12]" -type "float3" 1.225636 0 0 ;
	setAttr ".tk[15]" -type "float3" -1.225636 0 0 ;
	setAttr ".tk[16]" -type "float3" 0.9797821 0 1.7843637 ;
	setAttr ".tk[17]" -type "float3" 0 0 1.7843637 ;
	setAttr ".tk[18]" -type "float3" 0 0 1.7843637 ;
	setAttr ".tk[19]" -type "float3" -0.97978187 0 1.7843637 ;
	setAttr ".tk[20]" -type "float3" 1.0564002 0 4.8664446 ;
	setAttr ".tk[21]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[22]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[23]" -type "float3" -1.0564002 0 4.8664446 ;
	setAttr ".tk[24]" -type "float3" 1.6992102 0 6.7198 ;
	setAttr ".tk[25]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[26]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[27]" -type "float3" -1.6992102 0 6.7198 ;
	setAttr ".tk[28]" -type "float3" 1.5557477 0 6.5059505 ;
	setAttr ".tk[29]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[30]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[31]" -type "float3" -1.5557477 0 6.5059505 ;
	setAttr ".tk[32]" -type "float3" 2.0504177 0 6.9958029 ;
	setAttr ".tk[33]" -type "float3" 0 1.2603397 3.0843706 ;
	setAttr ".tk[34]" -type "float3" 0 1.2603397 3.0843706 ;
	setAttr ".tk[35]" -type "float3" -2.0504177 0 6.9958029 ;
	setAttr ".tk[36]" -type "float3" 0 0.66333675 4.8664446 ;
	setAttr ".tk[37]" -type "float3" 0 0 7.290062 ;
	setAttr ".tk[38]" -type "float3" 0 0 7.290062 ;
	setAttr ".tk[39]" -type "float3" 0 0.66333675 4.8664446 ;
	setAttr ".tk[40]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[41]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[42]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[43]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[44]" -type "float3" 0 0 1.7843637 ;
	setAttr ".tk[45]" -type "float3" 0 0 1.7843637 ;
	setAttr ".tk[46]" -type "float3" 0 0 1.7843637 ;
	setAttr ".tk[47]" -type "float3" 0 0 1.7843637 ;
	setAttr ".tk[48]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[49]" -type "float3" -0.010421568 -0.59666002 1.2674985 ;
	setAttr ".tk[50]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[51]" -type "float3" 0 0 1.7843637 ;
	setAttr ".tk[52]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[53]" -type "float3" -0.010421568 -0.59666002 1.2674985 ;
	setAttr ".tk[54]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[55]" -type "float3" 0 0 1.7843637 ;
	setAttr ".tk[57]" -type "float3" 0 0 1.7843637 ;
	setAttr ".tk[58]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[59]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[60]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[61]" -type "float3" 0 1.2603397 3.0843706 ;
	setAttr ".tk[62]" -type "float3" 0 0 7.290062 ;
	setAttr ".tk[63]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[64]" -type "float3" 0 0 1.7843637 ;
	setAttr ".tk[69]" -type "float3" 0 0 1.7843637 ;
	setAttr ".tk[70]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[71]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[72]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[73]" -type "float3" 0 1.2603397 3.0843706 ;
	setAttr ".tk[74]" -type "float3" 0 0 7.290062 ;
	setAttr ".tk[75]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[76]" -type "float3" 0 0 1.7843637 ;
	setAttr ".tk[80]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[81]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[82]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[83]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[88]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[89]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[90]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[91]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[96]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[97]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[98]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[99]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[104]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[105]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[106]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[107]" -type "float3" 0 0 4.8664446 ;
	setAttr ".tk[113]" -type "float3" 1.2033995 0 0 ;
	setAttr ".tk[115]" -type "float3" -1.2033995 0 0 ;
	setAttr ".tk[128]" -type "float3" 6.1339288 0.65900713 7.8905263 ;
	setAttr ".tk[129]" -type "float3" -6.1339288 0.65900713 7.8905263 ;
	setAttr ".tk[130]" -type "float3" 5.6703863 -0.39925948 -4.6107783 ;
	setAttr ".tk[131]" -type "float3" -5.6703863 -0.39925948 -4.6107783 ;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 1 "f[117]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 1.3322676295501878e-014 5.014025581221432 -7.0033651279909002 ;
	setAttr ".pvt" -type "float3" -2.1226053 72.369972 18.610779 ;
	setAttr ".rs" 1627793651;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -14.069530697218363 63.76816037601472 16.358900077039266 ;
	setAttr ".cbx" -type "double3" 9.8243198271400605 70.943773228305673 34.869391077328324 ;
createNode polyTweak -n "pasted__polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[124:127]" -type "float3"  -4.37960052 1.10469711 2.7053237
		 4.37960005 1.10469711 2.7053237 -2.64616823 -1.10469711 -2.70532346 2.64616776 -1.10469711
		 -2.70532346;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[115]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 -4.7291016651946762 0 ;
	setAttr ".pvt" -type "float3" -2.1226053 43.871555 37.645535 ;
	setAttr ".rs" 1511431402;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.417495345610563 46.406653595656614 32.645602283426001 ;
	setAttr ".cbx" -type "double3" 6.1722844755322601 50.794681339619004 42.645468025503426 ;
createNode polyTweak -n "pasted__polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[120:123]" -type "float3"  -1.99072802 0.50213486 1.2296927
		 1.99072802 0.50213486 1.2296927 -1.20280337 -0.50213492 -1.22969258 1.20280325 -0.50213492
		 -1.22969258;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[115]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 -5.0339810978502157 1.6030870923883498 ;
	setAttr ".pvt" -type "float3" -2.1226053 48.600674 37.645538 ;
	setAttr ".rs" 1447407626;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -12.760793491607343 50.820826975448213 29.630041007391402 ;
	setAttr ".cbx" -type "double3" 8.51558262152904 56.448470629478308 42.454858809374748 ;
createNode polyTweak -n "pasted__polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[112:115]" -type "float3"  3.57704759 -4.26917791 -1.086564779
		 0.76699984 -2.80867672 3.86334038 -3.57704759 -4.26917791 -1.086564779 -0.76699972
		 -2.80867672 3.86334038;
createNode polySplitRing -n "pasted__polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[220:221]" "e[223]" "e[225]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".wt" 0.081340447068214417;
	setAttr ".re" 225;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "pasted__polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 30 ".tk";
	setAttr ".tk[80]" -type "float3" 0 0 1.5694823 ;
	setAttr ".tk[81]" -type "float3" 0 0 1.5694823 ;
	setAttr ".tk[82]" -type "float3" 0 0 -1.5694823 ;
	setAttr ".tk[83]" -type "float3" 0 0 -1.5694823 ;
	setAttr ".tk[84]" -type "float3" 0 0 0.84510571 ;
	setAttr ".tk[85]" -type "float3" 0 0 0.84510571 ;
	setAttr ".tk[86]" -type "float3" 0 0 -1.6902118 ;
	setAttr ".tk[87]" -type "float3" 0 0 -1.6902118 ;
	setAttr ".tk[88]" -type "float3" 0 0 1.5694823 ;
	setAttr ".tk[89]" -type "float3" 0 0 -1.5694823 ;
	setAttr ".tk[90]" -type "float3" 0 0 1.5694823 ;
	setAttr ".tk[91]" -type "float3" 0 0 -1.5694823 ;
	setAttr ".tk[92]" -type "float3" 0 0 0.84510571 ;
	setAttr ".tk[93]" -type "float3" 0 0 -1.6902118 ;
	setAttr ".tk[94]" -type "float3" 0 0 0.84510571 ;
	setAttr ".tk[95]" -type "float3" 0 0 -1.6902118 ;
	setAttr ".tk[96]" -type "float3" 0 0 1.6902115 ;
	setAttr ".tk[97]" -type "float3" 0 0 1.6902115 ;
	setAttr ".tk[98]" -type "float3" 0 0 1.0865645 ;
	setAttr ".tk[99]" -type "float3" 0 0 1.0865645 ;
	setAttr ".tk[100]" -type "float3" 0 0 0.96583509 ;
	setAttr ".tk[101]" -type "float3" 0 0 0.96583509 ;
	setAttr ".tk[104]" -type "float3" 0 0 1.6902115 ;
	setAttr ".tk[105]" -type "float3" 0 0 1.0865645 ;
	setAttr ".tk[106]" -type "float3" 0 0 1.6902115 ;
	setAttr ".tk[107]" -type "float3" 0 0 1.0865645 ;
	setAttr ".tk[108]" -type "float3" 0 0 0.96583509 ;
	setAttr ".tk[110]" -type "float3" 0 0 0.96583509 ;
	setAttr ".tk[112]" -type "float3" 0 0.22469357 0 ;
	setAttr ".tk[114]" -type "float3" 0 0.22469357 0 ;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[65]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 3.1086244689504383e-014 11.58479609486735 15.318946287602728 ;
	setAttr ".pvt" -type "float3" -2.1226053 67.925697 37.067368 ;
	setAttr ".rs" 1182467623;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -14.069530697218363 49.855954632092931 15.112849453276864 ;
	setAttr ".cbx" -type "double3" 9.8243198271400605 62.825847446521642 28.383989288198919 ;
createNode polyTweak -n "pasted__polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[4]" -type "float3" 2.2058866 0 0 ;
	setAttr ".tk[7]" -type "float3" -2.2058866 0 0 ;
	setAttr ".tk[43]" -type "float3" 0 -1.1920929e-007 0 ;
createNode polyMergeVert -n "pasted__polyMergeVert16";
	setAttr ".ics" -type "componentList" 2 "vtx[37]" "vtx[56]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "pasted__polyMergeVert15";
	setAttr ".ics" -type "componentList" 2 "vtx[36]" "vtx[56]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "pasted__polyMergeVert14";
	setAttr ".ics" -type "componentList" 2 "vtx[41]" "vtx[58]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "pasted__polyMergeVert13";
	setAttr ".ics" -type "componentList" 2 "vtx[40]" "vtx[59]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "pasted__polyMergeVert12";
	setAttr ".ics" -type "componentList" 2 "vtx[45]" "vtx[60]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "pasted__polyMergeVert11";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[61]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "pasted__polyMergeVert10";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[62]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "pasted__polyMergeVert9";
	setAttr ".ics" -type "componentList" 2 "vtx[42]" "vtx[60]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "pasted__polyMergeVert8";
	setAttr ".ics" -type "componentList" 2 "vtx[38]" "vtx[60]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "pasted__polyMergeVert7";
	setAttr ".ics" -type "componentList" 2 "vtx[39]" "vtx[61]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "pasted__polyMergeVert6";
	setAttr ".ics" -type "componentList" 2 "vtx[44]" "vtx[63]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "pasted__polyMergeVert5";
	setAttr ".ics" -type "componentList" 2 "vtx[43]" "vtx[62]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "pasted__polyMergeVert4";
	setAttr ".ics" -type "componentList" 2 "vtx[47]" "vtx[68]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "pasted__polyMergeVert3";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[69]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "pasted__polyMergeVert2";
	setAttr ".ics" -type "componentList" 2 "vtx[46]" "vtx[68]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "pasted__polyMergeVert1";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[70]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".am" yes;
createNode polyTweak -n "pasted__polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[0]" -type "float3" 4.3384027 -0.95406175 0 ;
	setAttr ".tk[3]" -type "float3" -4.3384023 -0.95406187 0 ;
	setAttr ".tk[36]" -type "float3" 4.3384027 -0.95406187 0 ;
	setAttr ".tk[39]" -type "float3" -4.3384023 -0.95406187 0 ;
	setAttr ".tk[40]" -type "float3" 4.3384027 -0.95406187 0 ;
	setAttr ".tk[43]" -type "float3" -4.3384023 -0.95406187 0 ;
	setAttr ".tk[44]" -type "float3" 4.3384027 -0.95406187 0 ;
	setAttr ".tk[47]" -type "float3" -4.3384023 -0.95406187 0 ;
	setAttr ".tk[56]" -type "float3" 4.3384027 -0.95406187 0 ;
	setAttr ".tk[59]" -type "float3" 4.3384027 -0.95406187 0 ;
	setAttr ".tk[61]" -type "float3" -4.3384027 -0.95406187 0 ;
	setAttr ".tk[62]" -type "float3" -4.3384027 -0.95406187 0 ;
	setAttr ".tk[64]" -type "float3" 4.3384027 -0.95406187 0 ;
	setAttr ".tk[67]" -type "float3" 4.3384027 -0.95406187 0 ;
	setAttr ".tk[69]" -type "float3" -4.3384027 -0.95406187 0 ;
	setAttr ".tk[70]" -type "float3" -4.3384027 -0.95406175 0 ;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 4 "f[28]" "f[34]" "f[88]" "f[90]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 1.7763568394002505e-014 -12.041578262291182 -8.8817841970012523e-015 ;
	setAttr ".pvt" -type "float3" -2.1041839 13.174389 -1.8324932 ;
	setAttr ".rs" 809929748;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -15.721690826581261 24.954728996725422 -24.085422525048603 ;
	setAttr ".cbx" -type "double3" 11.513322899055803 25.477207340781835 20.420436053931969 ;
createNode polyTweak -n "pasted__polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[96:111]" -type "float3"  0 9.3132257e-010 6.052027225
		 2.9802322e-008 -9.3132257e-010 6.052027225 2.9802322e-008 -9.3132257e-010 -0.25868514
		 0 9.3132257e-010 -0.25868514 0 9.3132257e-010 6.41951561 2.9802322e-008 -9.3132257e-010
		 6.41951561 2.9802322e-008 -9.3132257e-010 -6.41951466 0 9.3132257e-010 -6.41951561
		 -4.4703484e-008 -9.3132257e-010 6.052027225 -4.4703484e-008 -9.3132257e-010 -0.25868514
		 0 9.3132257e-010 6.052027225 0 9.3132257e-010 -0.25868514 -4.4703484e-008 -9.3132257e-010
		 6.41951561 -4.4703484e-008 -9.3132257e-010 -6.41951466 0 9.3132257e-010 6.41951561
		 0 9.3132257e-010 -6.41951561;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 4 "f[28]" "f[34]" "f[88]" "f[90]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 1.5543122344752192e-014 -5.3021045325903913 6.6613381477509392e-016 ;
	setAttr ".pvt" -type "float3" -2.1041846 25.215969 -1.6214367 ;
	setAttr ".rs" 1434972961;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -15.721691949157208 30.256833101553745 -31.03703278483999 ;
	setAttr ".cbx" -type "double3" 11.513322899055803 30.779312622771482 27.794159341832046 ;
createNode polyTweak -n "pasted__polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 96 ".tk[0:95]" -type "float3"  0 1.98276651 0 -1.42581129
		 0.42328531 0 1.42581129 0.42328531 0 0 1.98276651 0 0 0.84512275 0 -4.29527617 0.15117915
		 0 4.29527617 0.15117915 0 0 0.84512275 0 0 -0.42726952 0 -5.59681654 -0.07933037
		 0 5.59681654 -0.07933037 0 0 -0.42726952 0 0 -1.90546989 0 -5.27597046 -0.41194081
		 0 5.27597046 -0.41194081 0 0 -1.90546989 0 0 -1.98276651 0 -5.27597046 -0.42328531
		 0 5.27597046 -0.42328531 0 0 -1.98276651 0 0 -1.95326066 0 -5.27597046 -0.41194081
		 0 5.27597046 -0.41194081 0 0 -1.95326066 0 0 -1.60148335 0 -5.27597046 -0.32874751
		 0 5.27597046 -0.32874751 0 0 -1.60148335 0 0 -0.48814958 0 -5.59681654 -0.10580096
		 0 5.59681654 -0.10580096 0 0 -0.48814958 0 0 0.51879853 0 -4.29527617 0.14361617
		 0 4.29527617 0.14361617 0 0 0.51879853 0 0 1.54070699 0 -1.42581129 0.42328531 0
		 1.42581129 0.42328531 0 0 1.54070699 0 0 1.54070699 0 -1.42581129 0.42328531 0 1.42581129
		 0.42328531 0 0 1.54070699 0 0 1.54070699 0 -1.42581129 0.42328531 0 1.42581129 0.42328531
		 0 0 1.54070699 0 0 0.51879853 0 0 0.51879853 0 0 -0.46165705 0 0 -0.42020431 0 0
		 0.51879853 0 0 0.51879853 0 0 -0.46165705 0 0 -0.42020431 0 -9.5367432e-007 1.54070687
		 0 -1.42581034 0.42328522 0 -1.42581034 0.42328522 0 -9.5367432e-007 1.54070687 0
		 1.42581129 0.42328522 0 9.5367432e-007 1.54070687 0 9.5367432e-007 1.54070687 0 1.42581129
		 0.42328522 0 -9.5367432e-007 1.54070687 0 -1.42581034 0.42328522 0 -1.42581034 0.42328522
		 0 -9.5367432e-007 1.98276651 0 1.42581129 0.42328522 0 9.5367432e-007 1.54070687
		 0 9.5367432e-007 1.98276651 0 1.42581129 0.42328522 0 -3.83046007 0 0 -3.83046007
		 0 0 -3.83046007 0 0 -2.87746692 0 0 -2.71863437 0 0 -1.44797647 0 0 0.77567428 0
		 0 0.77567428 0 0 0.77567428 0 0 0.77567428 0 0 -1.44797647 0 0 -2.71863437 0 0 3.83046031
		 0 0 3.83046031 0 0 3.83046031 0 0 2.87746716 0 0 2.71863461 0 0 1.44797647 0 0 -0.77567428
		 0 0 -0.77567428 0 0 -0.77567428 0 0 -0.77567428 0 0 1.44797647 0 0 2.71863461 0 0;
createNode polySplitRing -n "pasted__polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[140:141]" "e[143]" "e[145]" "e[147]" "e[149]" "e[151]" "e[153]" "e[155]" "e[157]" "e[159]" "e[161]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".wt" 0.76698249578475952;
	setAttr ".dr" no;
	setAttr ".re" 140;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[1]" "e[4]" "e[7]" "e[10]" "e[13]" "e[16]" "e[19]" "e[22]" "e[25]" "e[28]" "e[31]" "e[34]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".wt" 0.18773017823696136;
	setAttr ".re" 10;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 4 "f[27]" "f[29]" "f[33]" "f[35]";
	setAttr ".ix" -type "matrix" 1.1771061953166415 0 0 0 0 1.2343431102168283 0 0 0 0 1.148641694508993 0
		 -2.1041856476266481 48.015910226687765 -1.4002507654739156 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.1041856 32.992882 -1.6214367 ;
	setAttr ".rs" 201103707;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -27.799619017812976 30.256831924392426 -31.03703278483999 ;
	setAttr ".cbx" -type "double3" 23.591247722559682 35.728931072869969 27.794159341832046 ;
createNode polyTweak -n "pasted__polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 56 ".tk[0:55]" -type "float3"  -3.40259767 -0.15247273 -2.53926444
		 -4.0005774498 -2.030853987 -1.79725277 4.0005774498 -2.030853987 -1.79725277 3.40259767
		 -0.15247273 -2.53926444 -3.40259767 -1.81535304 -2.0034339428 -4.0005774498 -1.67246807
		 0 4.0005774498 -1.67246807 4.7683716e-007 3.40259767 -1.81535304 -2.0034339428 -3.40259767
		 -0.071311355 -2.22603655 -4.0005774498 0 0 4.0005774498 0 0 3.40259767 -0.071311355
		 -2.22603655 -3.40259767 -2.035764217 -0.59360957 -4.0005774498 0 0 4.0005774498 0
		 0 3.40259767 -2.035764217 -0.59360957 -3.40259767 -1.94743013 -6.62133694 -4.0005774498
		 0 -6.54713583 4.0005774498 0 -6.54713583 3.40259767 -1.94743013 -6.62133694 -3.40259767
		 -1.75956678 1.83139932 -4.0005774498 0 2.054003 4.0005774498 0 2.054003 3.40259767
		 -1.75956678 1.83139932 -3.40259767 -1.16445303 0.66781092 -4.0005774498 0 0 4.0005774498
		 0 0 3.40259767 -1.16445303 0.66781092 -3.40259767 -0.55569422 0.9646157 -4.0005774498
		 0 0 4.0005774498 0 0 3.40259767 -0.55569422 0.9646157 -3.40259767 0.070595168 0 -4.0005774498
		 -1.43354404 0 4.0005774498 -1.43354404 0 3.40259767 0.070595168 0 -3.40259767 2.40235353
		 1.92562795 -4.0005774498 -2.030853987 1.92562795 4.0005774498 -2.030853987 1.92562795
		 3.40259767 2.40235353 1.92562795 -3.40259767 2.40235353 2.054003 -4.0005774498 -2.030853987
		 2.054003 4.0005774498 -2.030853987 2.054003 3.40259767 2.40235353 2.054003 -3.40259767
		 2.40235353 -6.54713583 -4.0005774498 -2.030853987 -6.54713583 4.0005774498 -2.030853987
		 -6.54713583 3.40259767 2.40235353 -6.54713583 3.40259767 0.070594892 2.054003 3.40259767
		 0.070594892 -6.54713583 3.40259767 -1.30611455 2.054003 3.40259767 -0.23160335 -6.54713583
		 -3.40259767 0.070594892 2.054003 -3.40259767 0.070594892 -6.54713583 -3.40259767
		 -1.30611455 2.054003 -3.40259767 -0.23160335 -6.54713583;
createNode deleteComponent -n "pasted__deleteComponent3";
	setAttr ".dc" -type "componentList" 6 "vtx[20:23]" "vtx[48:51]" "vtx[57]" "vtx[60]" "vtx[63]" "vtx[66]";
createNode deleteComponent -n "pasted__deleteComponent2";
	setAttr ".dc" -type "componentList" 8 "e[15:17]" "e[36:38]" "e[107]" "e[110]" "e[113]" "e[124]" "e[127]" "e[130]";
createNode deleteComponent -n "pasted__deleteComponent1";
	setAttr ".dc" -type "componentList" 0;
createNode polyTweak -n "pasted__polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 62 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 1.6688775 ;
	setAttr ".tk[1]" -type "float3" 0 0 1.6688775 ;
	setAttr ".tk[2]" -type "float3" 0 0 1.6688775 ;
	setAttr ".tk[3]" -type "float3" 0 0 1.6688775 ;
	setAttr ".tk[4]" -type "float3" 0 0 5.5201321 ;
	setAttr ".tk[5]" -type "float3" 0 0 5.5201321 ;
	setAttr ".tk[6]" -type "float3" 0 0 5.5201321 ;
	setAttr ".tk[7]" -type "float3" 0 0 5.5201321 ;
	setAttr ".tk[8]" -type "float3" 0 -2.6281643 0.38512573 ;
	setAttr ".tk[9]" -type "float3" 0 -2.6281643 0.38512573 ;
	setAttr ".tk[10]" -type "float3" 0 -2.6281643 0.38512573 ;
	setAttr ".tk[11]" -type "float3" 0 -2.6281643 0.38512573 ;
	setAttr ".tk[12]" -type "float3" 0 -0.35838592 -11.168642 ;
	setAttr ".tk[13]" -type "float3" 0 -0.35838592 -11.168642 ;
	setAttr ".tk[14]" -type "float3" 0 -0.35838592 -11.168642 ;
	setAttr ".tk[15]" -type "float3" 0 -0.35838592 -11.168642 ;
	setAttr ".tk[16]" -type "float3" 0 0 -5.7768836 ;
	setAttr ".tk[17]" -type "float3" 0 0 -5.7768836 ;
	setAttr ".tk[18]" -type "float3" 0 0 -5.7768836 ;
	setAttr ".tk[19]" -type "float3" 0 0 -5.7768836 ;
	setAttr ".tk[20]" -type "float3" 0 0 -3.0810041 ;
	setAttr ".tk[21]" -type "float3" 0 0 -3.0810041 ;
	setAttr ".tk[22]" -type "float3" 0 0 -3.0810041 ;
	setAttr ".tk[23]" -type "float3" 0 0 -3.0810041 ;
	setAttr ".tk[24]" -type "float3" 0 -0.35838598 -2.3107536 ;
	setAttr ".tk[25]" -type "float3" 0 -0.35838598 -2.3107536 ;
	setAttr ".tk[26]" -type "float3" 0 -0.35838598 -2.3107536 ;
	setAttr ".tk[27]" -type "float3" 0 -0.35838598 -2.3107536 ;
	setAttr ".tk[28]" -type "float3" 0 -2.9865501 0 ;
	setAttr ".tk[29]" -type "float3" 0 -2.9865501 0 ;
	setAttr ".tk[30]" -type "float3" 0 -2.9865501 0 ;
	setAttr ".tk[31]" -type "float3" 0 -2.9865501 0 ;
	setAttr ".tk[32]" -type "float3" 0 -1.79193 -3.4661307 ;
	setAttr ".tk[33]" -type "float3" 0 -1.79193 -3.4661307 ;
	setAttr ".tk[34]" -type "float3" 0 -1.79193 -3.4661307 ;
	setAttr ".tk[35]" -type "float3" 0 -1.79193 -3.4661307 ;
	setAttr ".tk[36]" -type "float3" 0 0 -3.4661307 ;
	setAttr ".tk[37]" -type "float3" 0 0 -3.4661307 ;
	setAttr ".tk[38]" -type "float3" 0 0 -3.4661307 ;
	setAttr ".tk[39]" -type "float3" 0 0 -3.4661307 ;
	setAttr ".tk[40]" -type "float3" 0 0 -2.1823783 ;
	setAttr ".tk[41]" -type "float3" 0 0 -2.1823783 ;
	setAttr ".tk[42]" -type "float3" 0 0 -2.1823783 ;
	setAttr ".tk[43]" -type "float3" 0 0 -2.1823783 ;
	setAttr ".tk[44]" -type "float3" 0 0 -2.3107536 ;
	setAttr ".tk[45]" -type "float3" 0 0 -2.3107536 ;
	setAttr ".tk[46]" -type "float3" 0 0 -2.3107536 ;
	setAttr ".tk[47]" -type "float3" 0 0 -2.3107536 ;
	setAttr ".tk[48]" -type "float3" 0 0 -3.0810041 ;
	setAttr ".tk[49]" -type "float3" 0 0 -3.0810041 ;
	setAttr ".tk[50]" -type "float3" 0 0 -3.0810041 ;
	setAttr ".tk[51]" -type "float3" 0 0 -3.0810041 ;
	setAttr ".tk[56]" -type "float3" 0 0 -2.3107536 ;
	setAttr ".tk[57]" -type "float3" 0 0 -3.0810041 ;
	setAttr ".tk[59]" -type "float3" 0 -1.1946199 -2.3107536 ;
	setAttr ".tk[60]" -type "float3" 0 -1.433544 -3.3377547 ;
	setAttr ".tk[61]" -type "float3" 0 -2.508702 -1.9256281 ;
	setAttr ".tk[62]" -type "float3" 0 0 -2.3107536 ;
	setAttr ".tk[63]" -type "float3" 0 0 -3.0810041 ;
	setAttr ".tk[65]" -type "float3" 0 -1.1946199 -2.3107536 ;
	setAttr ".tk[66]" -type "float3" 0 -1.433544 -3.3377547 ;
	setAttr ".tk[67]" -type "float3" 0 -2.508702 -1.9256281 ;
createNode polyCube -n "pasted__polyCube1";
	setAttr ".w" 36.853454480527574;
	setAttr ".h" 24.713237063774315;
	setAttr ".d" 51.089679227789503;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 4;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId3";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId5";
	setAttr ".ihi" 0;
createNode polyChipOff -n "polyChipOff1";
	setAttr ".ics" -type "componentList" 13 "f[20:22]" "f[30]" "f[106:117]" "f[121]" "f[128:130]" "f[138:155]" "f[160:162]" "f[196:198]" "f[206]" "f[282:293]" "f[304:306]" "f[314:331]" "f[336:338]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 545326887;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate1";
	setAttr ".ic" 5;
	setAttr -s 5 ".out";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:270]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:22]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "pasted__groupId4";
	setAttr ".ihi" 0;
createNode polyChipOff -n "polyChipOff2";
	setAttr ".ics" -type "componentList" 4 "f[32:36]" "f[48:91]" "f[167:171]" "f[183:226]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 1974391301;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate2";
	setAttr ".ic" 3;
	setAttr -s 3 ".out";
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:172]";
createNode polyChipOff -n "polyChipOff3";
	setAttr ".ics" -type "componentList" 6 "f[29:32]" "f[35:42]" "f[44:45]" "f[115:118]" "f[121:128]" "f[130:131]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 439251322;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate3";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:27]";
createNode polyMapCut -n "polyMapCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[15:17]" "e[19]" "e[28]";
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 35 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.0013538003 0.03001678 ;
	setAttr ".uvtk[1]" -type "float2" -0.0066450834 0.034846008 ;
	setAttr ".uvtk[2]" -type "float2" -0.011453032 0.020276248 ;
	setAttr ".uvtk[3]" -type "float2" 0.0012397766 0.02112484 ;
	setAttr ".uvtk[4]" -type "float2" 0.014217138 0.023831487 ;
	setAttr ".uvtk[5]" -type "float2" 0.0095502138 0.041202664 ;
	setAttr ".uvtk[6]" -type "float2" 0.019019246 0.024929166 ;
	setAttr ".uvtk[7]" -type "float2" 0.015322566 0.048895895 ;
	setAttr ".uvtk[18]" -type "float2" 0.018734574 0.019150615 ;
	setAttr ".uvtk[19]" -type "float2" 0.014431119 0.022622943 ;
	setAttr ".uvtk[20]" -type "float2" 0.014848948 0.016977251 ;
	setAttr ".uvtk[21]" -type "float2" 0.015228808 0.016649544 ;
	setAttr ".uvtk[22]" -type "float2" 0.0054468513 0.013747752 ;
	setAttr ".uvtk[23]" -type "float2" -0.00092238188 0.009636879 ;
	setAttr ".uvtk[24]" -type "float2" -0.017617285 0.0037489533 ;
	setAttr ".uvtk[26]" -type "float2" 0.0055955648 -0.00090385973 ;
	setAttr ".uvtk[27]" -type "float2" -0.015241265 0.0032101274 ;
	setAttr ".uvtk[28]" -type "float2" -0.036018848 0.0065573454 ;
	setAttr ".uvtk[29]" -type "float2" -0.035662413 0.010429233 ;
	setAttr ".uvtk[30]" -type "float2" -0.011500597 0.041277111 ;
	setAttr ".uvtk[31]" -type "float2" -0.018695116 0.015886962 ;
	setAttr ".uvtk[33]" -type "float2" 0.013950229 0.0042170882 ;
	setAttr ".uvtk[34]" -type "float2" 0.0078595281 0.0072137713 ;
	setAttr ".uvtk[35]" -type "float2" -0.00091642141 0.0026865602 ;
	setAttr ".uvtk[36]" -type "float2" 0.016680479 -0.0037331581 ;
	setAttr ".uvtk[37]" -type "float2" 0.018335342 -0.0012550354 ;
	setAttr ".uvtk[38]" -type "float2" 0.018068612 0.0091536045 ;
	setAttr ".uvtk[39]" -type "float2" 0.01969713 -0.00774616 ;
	setAttr ".uvtk[40]" -type "float2" 0.021069407 0.013428748 ;
	setAttr ".uvtk[46]" -type "float2" 0.017748058 0.024253666 ;
	setAttr ".uvtk[47]" -type "float2" -0.018136978 0.004214853 ;
	setAttr ".uvtk[49]" -type "float2" -0.040635586 0.0047380328 ;
	setAttr ".uvtk[51]" -type "float2" 0.020813227 -0.013652861 ;
	setAttr ".uvtk[53]" -type "float2" -0.03612721 0.0037530065 ;
	setAttr ".uvtk[54]" -type "float2" 0.014320731 0.018614411 ;
createNode polyMapSewMove -n "polyMapSewMove1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[24]" "e[53]";
createNode polyMapSewMove -n "polyMapSewMove2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[8]" "e[48]";
createNode polyMapSewMove -n "polyMapSewMove3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[14]" "e[46]";
createNode polyTweakUV -n "polyTweakUV2";
	setAttr ".uopa" yes;
	setAttr -s 48 ".uvtk[0:47]" -type "float2" -0.62199301 -0.028625585
		 -0.74518889 -0.07371857 -0.5751313 -0.20134135 -0.50476313 -0.13981506 -0.43983907
		 -0.082804956 -0.49267668 0.050820839 -0.37564862 -0.0032049823 -0.40791824 0.056356575
		 -0.87040174 -0.60626644 -0.76006466 -0.73353815 -0.74346602 -0.69522065 -0.78898293
		 -0.6154303 -0.26684365 0.091984026 -0.19822504 0.21107896 -0.38847962 0.29408085
		 -0.38798729 0.14494906 -0.30448303 0.047429182 -0.3659631 0.073876932 -0.33319786
		 -0.021597728 -0.29387355 0.04221398 -0.10583893 -0.56110865 -0.38195011 -0.11069187
		 -0.42479038 -0.18651205 -0.4726516 -0.2661663 -0.66790116 -0.579171 -0.54650772 -0.38370132
		 -0.67783475 -0.30148941 -0.7231583 -0.54663718 -0.28610691 0.10113637 -0.73508191
		 -0.70197755 -0.877518 -0.12594643 -0.75435984 -0.73488396 -0.23362249 0.22816989
		 -0.16981876 -0.27394575 -0.33507362 -0.23421152 -0.35062835 -0.33096579 -0.13727474
		 -0.41085732 -0.17637242 -0.11567126 -0.32207733 -0.14633705 -0.22110407 -0.039808344
		 -0.29099301 -0.046968374 -0.57922465 -0.7816422 -0.62476718 -0.71309149 -0.16365407
		 0.030540865 -0.041871831 0.11877098 -0.23402701 0.0065743267 -0.39094102 -0.4790546
		 -0.596057 -0.62420619;
createNode polyMapSewMove -n "polyMapSewMove4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[16:17]" "e[19]";
createNode polyMapSewMove -n "polyMapSewMove5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[28]";
createNode polyMapSewMove -n "polyMapSewMove6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[15]";
createNode polyTweakUV -n "polyTweakUV3";
	setAttr ".uopa" yes;
	setAttr -s 43 ".uvtk[0:42]" -type "float2" -0.091669172 -0.29642293
		 -0.030742016 -0.26019624 -0.11876385 -0.2324762 -0.13869779 -0.2678116 -0.1570542
		 -0.30051285 -0.13780183 -0.36543348 -0.17185253 -0.34235618 -0.17606315 -0.36208555
		 -0.083136238 -0.024484852 -0.12135433 0.0020565398 -0.12218123 0.014136384 -0.10527252
		 -0.027321139 -0.19806392 -0.39749998 -0.20510398 -0.45661116 -0.12372653 -0.46220636
		 -0.14543517 -0.40122694 -0.19623137 -0.37304533 -0.16470118 -0.37530833 -0.19188295
		 -0.34094858 -0.16012657 -0.048796676 -0.35433316 -0.21550208 -0.18477441 -0.29744506
		 -0.17817079 -0.26022828 -0.17006516 -0.22071764 -0.13820618 -0.056070946 -0.15918951
		 -0.22939429 -0.10079766 -0.23206687 -0.12148241 -0.06110888 -0.2438519 -0.20075095
		 -0.29090101 -0.44042563 0.02432837 -0.28235799 -0.25377077 -0.38674355 -0.2284181
		 -0.3667835 -0.27816164 -0.26120561 -0.22177781 -0.25363985 -0.22936334 -0.21178794
		 -0.32822612 -0.20985132 -0.24800146 -0.34289187 -0.21442489 -0.29148766 -0.21488945
		 -0.34965962 -0.21281962 -0.33664954 -0.17151611 0.0031056355 -0.15503561 -0.012090464;
createNode hyperGraphInfo -n "nodeEditorPanel1Info";
createNode hyperView -n "hyperView1";
	setAttr ".vl" -type "double2" -182.14285714285717 -180.95238095238096 ;
	setAttr ".vh" -type "double2" 397.61904761904771 113.09523809523812 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 67 ".hyp";
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
	setAttr ".hyp[54].x" 78.571426391601562;
	setAttr ".hyp[54].y" -78.571426391601562;
	setAttr ".hyp[54].nvs" 1920;
	setAttr ".hyp[55].x" 275.71429443359375;
	setAttr ".hyp[55].y" 113.09523773193359;
	setAttr ".hyp[55].nvs" 1920;
	setAttr ".hyp[56].nvs" 1920;
	setAttr ".hyp[57].x" 10.595237731933594;
	setAttr ".hyp[57].y" 150;
	setAttr ".hyp[57].nvs" 1920;
	setAttr ".hyp[58].x" 96.428573608398438;
	setAttr ".hyp[58].y" 94.047622680664063;
	setAttr ".hyp[58].nvs" 1920;
	setAttr ".hyp[59].x" 126.19047546386719;
	setAttr ".hyp[59].y" 64.285713195800781;
	setAttr ".hyp[59].nvs" 1920;
	setAttr ".hyp[60].x" 110.11904907226562;
	setAttr ".hyp[60].y" -36.309524536132813;
	setAttr ".hyp[60].nvs" 1920;
	setAttr ".hyp[61].x" 110.11904907226562;
	setAttr ".hyp[61].y" -36.309524536132813;
	setAttr ".hyp[61].nvs" 1920;
	setAttr ".hyp[62].x" 110.11904907226562;
	setAttr ".hyp[62].y" -36.309524536132813;
	setAttr ".hyp[62].nvs" 1920;
	setAttr ".hyp[63].nvs" 1920;
	setAttr ".hyp[64].x" 307.26190185546875;
	setAttr ".hyp[64].y" -14.285714149475098;
	setAttr ".hyp[64].nvs" 1920;
	setAttr ".hyp[65].x" 78.571426391601562;
	setAttr ".hyp[65].y" -78.571426391601562;
	setAttr ".hyp[65].nvs" 1920;
	setAttr ".hyp[66].x" 78.571426391601562;
	setAttr ".hyp[66].y" -78.571426391601562;
	setAttr ".hyp[66].nvs" 1920;
	setAttr ".anf" yes;
createNode polySphProj -n "polySphProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:48]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 14.922585964202881 5.9791514873504639 76.880485534667969 ;
	setAttr ".r" 24.879091739654541;
createNode polyMapCut -n "polyMapCut2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[0]" "e[8]" "e[16]" "e[24]" "e[32]" "e[40]" "e[48]" "e[56]" "e[64]" "e[72]" "e[80]" "e[88]";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode checker -n "checker1";
createNode place2dTexture -n "place2dTexture1";
	setAttr ".re" -type "float2" 4 4 ;
createNode polyCylProj -n "polyCylProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:48]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 14.922585964202881 5.9791514873504639 76.880485534667969 ;
	setAttr ".ps" -type "double2" 180 24.879091739654541 ;
	setAttr ".r" 23.91472339630127;
createNode polyCylProj -n "polyCylProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:48]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 14.922585964202881 5.9791514873504639 76.880485534667969 ;
	setAttr ".ic" -type "double2" 0.53915260363650575 0.5 ;
	setAttr ".ro" -type "double3" 3.2309471142207635 -0.64474154496181746 -23.378381602260216 ;
	setAttr ".ps" -type "double2" 180 24.879091739654541 ;
	setAttr ".r" 23.91472339630127;
createNode polySphProj -n "polySphProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:48]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 14.922585964202881 5.9791514873504639 76.880485534667969 ;
	setAttr ".r" 24.879091739654541;
createNode polyTweakUV -n "polyTweakUV4";
	setAttr ".uopa" yes;
	setAttr -s 52 ".uvtk[0:51]" -type "float2" -0.092341393 0.14674774 -0.071090132
		 0.15351728 -0.075790852 0.19335636 -0.096855968 0.18557855 0.64605802 0.778054 0.79677027
		 -0.027155064 0.68114376 -0.148081 0.41780227 0.70698261 0.640266 0.14140198 0.55361319
		 0.057868645 0.54705042 0.24672192 0.45440352 0.21431544 0.56025809 -0.34563106 0.26291132
		 0.48333043 0.45134252 -0.16865957 0.37224525 0.032698676 0.36677969 -0.42849177 0.18627763
		 0.19394121 0.34871829 -0.31816989 0.29981089 -0.13821036 0.18668467 -0.44984895 0.098688476
		 -0.075824291 0.26733541 -0.38588804 0.20844215 -0.21149153 -0.039434284 -0.42963427
		 -0.042554826 -0.13670242 0.095205657 -0.45613468 -0.00510782 -0.30954897 -0.29995048
		 -0.4055354 -0.14236021 -0.16898769 -0.33642787 -0.42233592 -0.27245331 -0.2682116
		 -0.39505631 -0.27778727 -0.24921265 -0.11360773 -0.41931939 -0.27292228 -0.34418577
		 -0.11412731 -0.42148662 -0.076333374 -0.30132145 0.026256606 -0.4540323 -0.088405162
		 -0.37974876 0.082111686 -0.38914055 0.100431 -0.28107327 0.14057758 -0.47485095 0.070389904
		 -0.39556712 0.20263718 -0.25703484 0.2758677 -0.23728381 0.20999631 -0.34894979 0.491225
		 -0.30819803 0.36992669 -0.13499296 0.23822126 -0.16199797 0.21077362 -0.1475774 0.42249691
		 -0.19864371 0.33454198;
createNode polyMapCut -n "polyMapCut3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[0]" "e[8]" "e[16]" "e[24]" "e[32]" "e[40]" "e[48]" "e[56]" "e[64]" "e[72]" "e[80]" "e[88]";
createNode polyTweakUV -n "polyTweakUV5";
	setAttr ".uopa" yes;
	setAttr -s 64 ".uvtk[0:63]" -type "float2" -0.55817086 -0.10449661 -0.55121088
		 -0.11489719 -0.53915852 -0.092038885 -0.55367857 -0.090371743 -0.51661527 0.041115511
		 -0.39109012 -0.18645917 -0.55849147 0.014603879 -0.56264931 0.067353994 -0.60722172
		 0.030578876 -0.58427685 0.022166874 -0.60961336 -0.0002255505 -0.5924226 0.0048427554
		 -0.54480308 -0.033302758 -0.58924735 0.044054393 -0.57009476 -0.03290287 -0.58047819
		 -0.023025129 -0.54852599 -0.041811984 -0.58449858 0.00032054726 -0.56087273 -0.058705732
		 -0.57106376 -0.052304607 -0.5666368 -0.042101663 -0.58098948 -0.053664546 -0.54800522
		 -0.068771645 -0.55933899 -0.054977339 -0.58455634 -0.032806728 -0.58771944 -0.059524998
		 -0.56969285 -0.074645624 -0.58680439 -0.066967592 -0.60970384 -0.035642188 -0.5984506
		 -0.05978696 -0.64203584 -0.067966387 -0.62940079 -0.055934653 -0.58143234 -0.043598812
		 -0.61451608 -0.04774652 -0.61903703 -0.043622475 -0.61774701 -0.025487754 -0.5765658
		 -0.050534468 -0.61847222 -0.033771727 -0.61062354 -0.043482047 -0.61839181 -0.0059062596
		 -0.57517713 -0.043428969 -0.61109018 -0.030673508 -0.61637634 -0.052571725 -0.61615247
		 -0.013948979 -0.54904091 -0.037560772 -0.60601747 -0.035873186 -0.59061986 0.030248398
		 -0.59992886 0.004411635 -0.53437918 -0.080216065 -0.58558023 -0.062908664 -0.54150939
		 -0.010766035 -0.57756901 -0.027662162 -0.59762841 -0.066668406 -0.63504398 -0.015554788
		 -0.66672873 -0.039767694 -0.6729852 -0.068735942 -0.66778994 -0.11293963 -0.64885747
		 -0.14444847 -0.58528674 -0.16026504 -0.533508 -0.18050973 -0.49200562 -0.19067268
		 -0.4496654 -0.19795255 -0.41882285 -0.17839091 -0.57755721 0.039241754;
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode shadingEngine -n "lambert4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode shadingEngine -n "lambert5SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo4";
createNode checker -n "checker2";
createNode place2dTexture -n "place2dTexture2";
	setAttr ".re" -type "float2" 10 10 ;
createNode polySphProj -n "polySphProj3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:48]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -17.585100173950195 5.9791514873504639 76.880485534667969 ;
	setAttr ".r" 24.879091739654541;
createNode polyMapCut -n "polyMapCut4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[4]" "e[12]" "e[20]" "e[28]" "e[36]" "e[44]" "e[52]" "e[60]" "e[68]" "e[76]" "e[84]" "e[92]";
createNode polyTweakUV -n "polyTweakUV6";
	setAttr ".uopa" yes;
	setAttr -s 64 ".uvtk[0:63]" -type "float2" 0.31387654 -0.065816581 0.31391266
		 -0.0081341304 0.27700651 0.0051654838 0.27716589 -0.067911297 -0.60148078 0.63505578
		 -0.27313191 0.58667827 -0.62249488 -0.47664276 -0.53928846 -0.39260441 -0.31412357
		 -0.25244027 -0.41796392 -0.19434124 -0.25179246 -0.056217968 -0.37897044 -0.05331853
		 -0.055249967 0.33759037 -0.45009243 -0.69348896 -0.17804225 -0.48098737 -0.12560327
		 -0.24444912 0.052963585 -0.0035859682 -0.19203113 -0.78161669 -0.05214683 -0.63400793
		 -0.025423858 -0.4214952 0.17691569 -0.3150323 0.042625062 -0.79046667 0.048151471
		 -0.68453228 0.091306329 -0.4795391 0.36008099 -0.36076862 0.33446005 -0.75178432
		 0.25570804 -0.73126245 0.35499907 -0.57052016 0.48053643 -0.38511354 0.66661125 -0.71285963
		 0.7640807 -0.64434695 0.66783637 -0.4773728 0.60077566 -0.30581695 0.7825653 -0.54289281
		 0.80898017 -0.4410637 0.70525426 -0.2746951 0.64131469 -0.1410237 0.80839914 -0.28958648
		 0.81175464 -0.2257008 0.72371572 -0.043379553 0.59478122 -0.016788172 0.7630319 -0.07724756
		 0.80084866 -0.059060577 0.71539849 0.079950839 0.52603704 0.051077731 0.58499068
		 0.1249952 0.61600202 0.43537247 0.58781844 0.26662612 0.41506457 0.027488893 0.39648005
		 0.050393261 0.36270112 0.31961834 0.4489651 0.19772047 0.33288246 0.068284318 0.47682303
		 0.1631425 0.66150433 -0.0098283924 0.73050386 -0.19062325 0.76886529 -0.40852541
		 0.73333365 -0.58988202 0.45180649 -0.66367638 0.1876017 -0.73430133 -0.028892908
		 -0.74573016 -0.25370634 -0.70017993 -0.39248556 -0.49383143 -0.79796261 -0.34661144;
createNode shadingEngine -n "lambert6SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo5";
createNode checker -n "checker3";
createNode place2dTexture -n "place2dTexture3";
	setAttr ".re" -type "float2" 10 10 ;
createNode polyPlanarProj -n "polyPlanarProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:144]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1.3312578201293945 14.293644607067108 43.446104526519775 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 59.864596366882324 31.819025635719299 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:144]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1.3312578201293945 14.293644607067108 43.446104526519775 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 62.702131271362305 59.864596366882324 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:144]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1.3312578201293945 14.293644607067108 43.446104526519775 ;
	setAttr ".ps" -type "double2" 62.702131271362305 31.819025635719299 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:144]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1.3312578201293945 14.293644607067108 43.446104526519775 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 62.702131271362305 59.864596366882324 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMapCut -n "polyMapCut5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 26 "e[82]" "e[84]" "e[86]" "e[88]" "e[98]" "e[100]" "e[116]" "e[131]" "e[133]" "e[137]" "e[139]" "e[141]" "e[143]" "e[157]" "e[160]" "e[211]" "e[219]" "e[225]" "e[237]" "e[239:241]" "e[254]" "e[272]" "e[287]" "e[289]" "e[310]" "e[312]";
createNode polyTweakUV -n "polyTweakUV7";
	setAttr ".uopa" yes;
	setAttr -s 183 ".uvtk[0:182]" -type "float2" 0.42618036 -0.75897622 0.29756767
		 -0.72457874 0.24586143 -0.54779804 0.38540149 -0.58457011 0.20318164 -0.70193863
		 0.15136601 -0.5222159 0.19689216 -0.31192049 0.33555865 -0.35242042 0.10150591 -0.25917974
		 0.15678228 -0.13669011 0.29635513 -0.18018661 0.066388711 -0.13581313 -0.017040379
		 0.041065037 0.043915428 0.10074112 -0.050648343 0.17399362 0.046657547 0.22450876
		 0.22383954 0.19668685 0.043993279 0.20554097 0.19792594 0.16809684 -0.083993077 0.17746121
		 0.024104757 0.11313235 0.1698343 0.077316731 -0.10021392 0.10299062 -0.001997821
		 -0.024227343 0.13722952 -0.061426342 -0.17879786 -0.046879992 -0.053053074 -0.21873009
		 0.085882023 -0.25900427 -0.19453837 -0.18375796 -0.10554743 -0.41167891 0.034035545
		 -0.45062539 -0.22532173 -0.37244278 -0.13510208 -0.57310128 -0.01135152 -0.60761583
		 -0.2437932 -0.5387423 -0.26925004 -0.52410716 -0.25216269 -0.34507143 0.20133473
		 -0.70654976 0.13535441 -0.48854473 0.19095279 -0.71352661 0.12466818 -0.50458258
		 -0.17642154 -0.099631481 0.078042969 -0.19568054 0.060576573 -0.21581781 -0.12131818
		 0.067237623 0.030967388 -0.031325143 0.10930261 0.11668443 0.12309143 -0.010701297
		 0.23420037 0.2087661 0.09333238 0.22770327 0.27337623 -0.084969968 -0.15294652 -0.64586973
		 0.47920418 -0.88687074 -0.19087039 -0.63294172 -0.21822979 -0.62254459 0.30030784
		 -0.8100931 0.46178353 -0.87970239 0.36132681 -0.84877586 0.31953871 -0.83530301 0.30092964
		 -0.82292008 -0.21181221 -0.02210252 -0.2147335 -0.0065015717 -0.18214823 0.088239379
		 -0.0046560541 -0.13114354 -0.037904121 -0.0052637844 -0.16241871 0.086076058 -0.18458946
		 0.029389143 -0.14650829 0.14781067 -0.10630739 0.14225817 -0.054707266 -0.031395845
		 -0.073992282 0.034444466 -0.20923854 0.062609427 -0.199201 0.071820907 -0.20587863
		 0.087694518 -0.19696225 0.11793315 -0.16891076 0.11035877 -0.11078113 0.023825206
		 -0.13186754 0.016213112 -0.14365096 0.048547044 -0.2231086 0.080381088 -0.22582503
		 0.069481127 -0.22121884 0.093217365 -0.20640685 0.091413848 -0.19398411 0.069598965
		 -0.17958404 0.047118366 -0.2229798 0.067673095 -0.17682351 0.043043211 -0.18058707
		 0.056661606 -0.20387776 0.071836822 0.52975893 -0.62247276 0.55618519 -0.79449171
		 0.63086557 -0.64986002 0.65582448 -0.81775302 0.47853088 -0.39410922 0.56913686 -0.40443778
		 0.43967897 -0.22447091 0.51371974 -0.28681746 0.46003872 -0.025129858 0.54431427
		 -0.13303676 0.39509618 0.13286304 0.50665957 0.0095436238 0.22308125 0.19561023 0.35608894
		 0.12960266 0.48395896 0.030427579 0.32368481 0.039048232 0.45005238 -0.045093566
		 0.28284603 -0.10076695 0.43005461 -0.23864315 0.22900416 -0.30074161 0.361408 -0.35882312
		 0.17671831 -0.49087512 0.28478885 -0.52693105 0.11783871 -0.64435387 0.21528082 -0.67257768
		 0.21393232 -0.68805718 0.67541099 -0.71229059 0.68653101 -0.86621875 0.67182231 -0.69111919
		 0.66840988 -0.6708141 0.68387938 -0.85582989 0.6079942 -0.46333957 0.60875982 -0.43828312
		 0.60874933 -0.41131505 0.56507623 -0.28996277 0.56562024 -0.23515008 0.42049766 -0.08950787
		 0.39516634 0.012878355 0.38516998 0.14539093 0.58103502 -0.91844773 0.088806361 -0.72716475
		 0.1128698 -0.73616439 0.64394236 -0.94749761 0.56356877 -0.91076362 0.63143921 -0.93860477
		 0.60216361 -0.92294323 0.64576542 -0.37926641 0.63722116 -0.387429 0.62086958 -0.27430481
		 0.61935025 -0.24692908 0.64519024 -0.3654862 0.49866617 -0.20631507 0.51859218 -0.12089067
		 0.55153984 -0.045257628 0.56764841 -0.052084379 0.61432779 -0.24778748 0.59835303
		 -0.17604893 0.56469536 -0.23497584 0.5793786 -0.21742375 0.59604931 -0.17080042 0.61864322
		 -0.12691692 0.63015771 -0.13139492 0.66175097 -0.24581906 0.65689498 -0.26079601
		 0.65320277 -0.2070698 0.63650006 -0.23996037 0.64391065 -0.21702193 0.65869713 -0.19429916
		 0.66663325 -0.19513817 0.67738402 -0.22127509 0.68173748 -0.25194442 0.63342655 -0.24854258
		 0.68619651 -0.27029133 0.64950264 -0.2631152 0.67692024 -0.24213327 0.66450357 -0.23254541
		 0.67017555 -0.26956636 0.48085839 -0.21677132 0.39752609 -0.20449077 0.63971323 -0.95972323
		 0.68911523 -0.87780517 0.047146231 -0.71271586 -0.05613976 -0.67810524 0.3537792
		 -0.34211785 0.29104584 -0.54812777 -0.21763851 0.078262083 -0.20895793 0.071517117
		 -0.27367789 -0.51181322 -0.22840674 -0.6159544 -0.25098896 -0.32167059 -0.17895259
		 -0.070694514 0.0056952462 -0.1215555 -0.16753007 0.072513409 0.3791762 -0.8556329;
createNode shadingEngine -n "lambert7SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
createNode checker -n "checker4";
createNode place2dTexture -n "place2dTexture4";
	setAttr ".re" -type "float2" 15 15 ;
createNode polyMapCut -n "polyMapCut6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[0]" "e[11]";
createNode polyPlanarProj -n "polyPlanarProj5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 8.8750169277191162 12.548403739929199 6.8095490857958794 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 6.1328434944152832 13.408516421914101 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyCylProj -n "polyCylProj3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 8.8750169277191162 12.548403739929199 6.8095490857958794 ;
	setAttr ".ps" -type "double2" 180 5.1840915679931641 ;
	setAttr ".r" 13.408516421914101;
createNode polyTweakUV -n "polyTweakUV8";
	setAttr ".uopa" yes;
	setAttr -s 30 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.20464104 -0.28520805 ;
	setAttr ".uvtk[1]" -type "float2" -0.02857101 -0.068840712 ;
	setAttr ".uvtk[2]" -type "float2" 0.061729789 0.07519266 ;
	setAttr ".uvtk[3]" -type "float2" -0.15367311 0.3013818 ;
	setAttr ".uvtk[4]" -type "float2" 0.11235985 -0.15656555 ;
	setAttr ".uvtk[5]" -type "float2" -0.044245511 0.068374395 ;
	setAttr ".uvtk[6]" -type "float2" 0.10478073 -0.025307298 ;
	setAttr ".uvtk[7]" -type "float2" -0.065800041 -0.25020117 ;
	setAttr ".uvtk[8]" -type "float2" 0.030866325 -0.19455069 ;
	setAttr ".uvtk[9]" -type "float2" -0.010854423 -0.075778723 ;
	setAttr ".uvtk[10]" -type "float2" 0.053753614 -0.15966097 ;
	setAttr ".uvtk[11]" -type "float2" 0.065829545 0.0775837 ;
	setAttr ".uvtk[12]" -type "float2" 0.21948782 0.037419289 ;
	setAttr ".uvtk[14]" -type "float2" 0.15212205 0.3009561 ;
	setAttr ".uvtk[15]" -type "float2" -0.021335959 0.26074201 ;
	setAttr ".uvtk[16]" -type "float2" 0.044807553 -0.57899857 ;
	setAttr ".uvtk[17]" -type "float2" -0.0081216097 -0.34596333 ;
	setAttr ".uvtk[18]" -type "float2" 0.08203423 -0.47743171 ;
	setAttr ".uvtk[19]" -type "float2" 0.086730361 -0.14948758 ;
	setAttr ".uvtk[20]" -type "float2" -0.016735077 -0.20806658 ;
	setAttr ".uvtk[21]" -type "float2" -0.0024466515 0.27024564 ;
	setAttr ".uvtk[22]" -type "float2" -0.065746665 0.19498345 ;
	setAttr ".uvtk[23]" -type "float2" -1.1401138 0.050066829 ;
	setAttr ".uvtk[24]" -type "float2" -1.3290513 0.17540067 ;
	setAttr ".uvtk[26]" -type "float2" -0.01065731 -0.45415986 ;
	setAttr ".uvtk[27]" -type "float2" 0.0052756071 -0.58280003 ;
	setAttr ".uvtk[28]" -type "float2" -0.087104797 -0.4430899 ;
	setAttr ".uvtk[29]" -type "float2" 0.038470745 -0.3259871 ;
	setAttr ".uvtk[30]" -type "float2" -0.1587925 0.062321529 ;
	setAttr ".uvtk[31]" -type "float2" -0.26126349 -0.042335995 ;
createNode polyMapSewMove -n "polyMapSewMove7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[3]";
createNode polyTweakUV -n "polyTweakUV9";
	setAttr ".uopa" yes;
	setAttr -s 31 ".uvtk[0:30]" -type "float2" 1.21886349 0.013874523 -0.61964256
		 0.38105565 -0.50998425 0.33631581 1.17563581 0.35813028 0.32036424 -0.10160461 0.34592223
		 -0.29238456 1.043796539 -0.19889437 1.018276691 -0.0081535503 -0.095180474 -0.11423067
		 0.22270626 0.14389674 -0.45409161 0.27653611 0.25256345 0.35631078 0.94650894 0.48116595
		 -0.44486898 0.34467638 0.28664058 0.16686036 0.98056501 0.29175758 -0.56214571 0.27073246
		 -0.63549048 0.32728249 -0.52571994 0.2776646 -0.50934726 0.30841202 -0.62881511 0.35380971
		 -0.52552468 0.3817423 -0.590832 0.44006914 -0.48660609 -0.30970758 -0.51499611 0.5318445
		 0.23434894 0.20602317 -0.55369598 0.18098618 -0.64587301 0.27367848 -0.64996594 0.17240711
		 -0.4746832 0.20518322 -0.43889374 0.45073694;
createNode shadingEngine -n "lambert9SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo7";
createNode polyMapSewMove -n "polyMapSewMove8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[25]" "e[32]";
createNode polyMapSewMove -n "polyMapSewMove9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[13]" "e[24]";
createNode polyMapSewMove -n "polyMapSewMove10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[8:9]";
createNode polyMapSewMove -n "polyMapSewMove11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4]" "e[33]";
createNode polyTweakUV -n "polyTweakUV10";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[20]" -type "float2" 0.0016029499 -0.0056103421 ;
	setAttr ".uvtk[30]" -type "float2" -0.0016029456 0.0092169931 ;
	setAttr ".uvtk[31]" -type "float2" -0.00040074019 0.00721326 ;
createNode polyMapSewMove -n "polyMapSewMove12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[16]" "e[28]" "e[32]";
createNode polyTweakUV -n "polyTweakUV11";
	setAttr ".uopa" yes;
	setAttr -s 29 ".uvtk[0:28]" -type "float2" 0.8258341 -0.1563618 0.81071848
		 -0.17051961 0.8811022 -0.213846 0.85934895 -0.18096194 0.80221629 -0.17848332 0.85176468
		 -0.23200126 0.79360265 -0.18655141 0.77584052 -0.20389165 0.80756569 -0.23132206
		 0.83483773 -0.24220826 0.62609428 -0.31969848 0.69875795 -0.2043709 0.66796029 -0.18465196
		 0.59445339 -0.29944581 0.64738321 -0.17147581 0.5738765 -0.28626949 0.88512707 -0.44580904
		 0.89009422 -0.26578858 0.84856623 -0.26858565 0.79829216 -0.42296457 0.73403484 -0.37603202
		 0.82215869 -0.27634063 0.77913773 -0.2556856 0.70502722 -0.37585771 0.74830461 -0.23448388
		 0.67112362 -0.3469564 0.71689147 -0.16999342 0.68036771 -0.14659397 0.65979052 -0.13341759;
createNode polyTweakUV -n "polyTweakUV12";
	setAttr ".uopa" yes;
	setAttr -s 37 ".uvtk[0:36]" -type "float2" 0.09160731 0.35985962 0.12470444
		 0.29891899 0.14746773 0.31429401 0.1179886 0.36968955 0.28561381 0.50992543 0.24672765
		 0.48212168 0.2649366 0.45715901 0.30389404 0.48672691 0.29193175 0.40337285 0.33289003
		 0.42514652 0.34309459 0.4102788 0.30677223 0.38157809 0.34488028 0.33763665 0.39448845
		 0.35227332 0.21523103 0.46047732 0.23257393 0.43581921 0.25947443 0.38754156 0.27926433
		 0.35803795 0.30864811 0.32171258 0.13184854 0.39919451 0.14549491 0.38033715 0.17113787
		 0.33384851 0.183424 0.31524596 0.26932165 0.37295169 0.19601423 0.29673693 0.22804563
		 0.2568163 0.10785399 0.38151219 0.15847355 0.29897359 0.1710282 0.27979228 0.21144597
		 0.22992203 0.26103047 0.54342937 0.22877222 0.50659209 0.20200345 0.47850519 0.066538744
		 0.34678331 0.099984236 0.28646001 0.11862041 0.41722205 0.091127604 0.40430757;
createNode polyMapSewMove -n "polyMapSewMove13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40]";
createNode polyMapSewMove -n "polyMapSewMove14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[10]";
createNode polyTweakUV -n "polyTweakUV13";
	setAttr ".uopa" yes;
	setAttr -s 38 ".uvtk[0:37]" -type "float2" 0.18010308 0.48122796 0.16527472
		 0.46067616 0.20991729 0.42206082 0.22719838 0.4397864 0.045251518 0.24789688 0.094641455
		 0.19215505 0.097088434 0.25035569 0.072280079 0.28272495 0.00752895 0.34110102 0.024401179
		 0.32038566 0.058192104 0.34894201 0.039748684 0.36994323 0.10054085 0.31572628 -0.042030826
		 0.41288355 -0.013416918 0.35576203 0.021036914 0.3914459 -0.0076505276 0.43679252
		 0.083417937 0.3733004 0.065071821 0.39347684 0.12363889 0.33925036 0.047724113 0.41408274
		 0.019949993 0.4544234 0.14958297 0.43922472 0.13562843 0.45499349 0.1834475 0.40943322
		 -0.001270059 0.48028824 0.0096505862 0.46694306 0.082149357 0.52615839 0.071229041
		 0.53950363 0.12167118 0.47121069 0.094868302 0.51040059 0.15597372 0.47268662 0.10278477
		 0.54348695 0.087132722 0.5626142 0.14390381 0.48572659 0.11609586 0.52758312 0.19667535
		 0.50070906 0.24315603 0.45908454;
createNode polyMapSewMove -n "polyMapSewMove15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[312]";
createNode polyMapSewMove -n "polyMapSewMove16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[310]";
createNode polyTweakUV -n "polyTweakUV14";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[96]" -type "float2" 0.00085628149 -0.0021407073 ;
	setAttr ".uvtk[124]" -type "float2" 0.0124161 0.0025688526 ;
	setAttr ".uvtk[160]" -type "float2" -0.00189354 -0.0078447601 ;
	setAttr ".uvtk[162]" -type "float2" -0.0076910802 -0.0015382202 ;
	setAttr ".uvtk[163]" -type "float2" -0.0054532094 -0.0023214666 ;
createNode polyMapSewMove -n "polyMapSewMove17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[160]";
createNode polyMapSewMove -n "polyMapSewMove18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[157]";
createNode polyTweakUV -n "polyTweakUV15";
	setAttr ".uopa" yes;
	setAttr -s 19 ".uvtk";
	setAttr ".uvtk[12]" -type "float2" -0.0056899092 -0.0025288521 ;
	setAttr ".uvtk[15]" -type "float2" 0.0025288516 -0.0050576841 ;
	setAttr ".uvtk[16]" -type "float2" -0.00063501473 2.2118911e-009 ;
	setAttr ".uvtk[46]" -type "float2" -0.00057679845 -0.012689445 ;
	setAttr ".uvtk[47]" -type "float2" 0.00057678367 -0.012689445 ;
	setAttr ".uvtk[49]" -type "float2" -0.00057681103 -0.01153586 ;
	setAttr ".uvtk[60]" -type "float2" 0.0088118492 0.0062941997 ;
	setAttr ".uvtk[63]" -type "float2" -0.0025288332 0.0037932615 ;
	setAttr ".uvtk[83]" -type "float2" -0.00072333665 -0.0024111921 ;
	setAttr ".uvtk[85]" -type "float2" 0.011882789 0.0036414866 ;
	setAttr ".uvtk[86]" -type "float2" 0.0068996968 0.0059413766 ;
	setAttr ".uvtk[87]" -type "float2" 0.0053664348 0.0019165847 ;
	setAttr ".uvtk[88]" -type "float2" 0.0026832218 -0.0017249065 ;
	setAttr ".uvtk[107]" -type "float2" 0.0094304327 0.0094303992 ;
	setAttr ".uvtk[125]" -type "float2" 0.0073026395 0.0076201488 ;
	setAttr ".uvtk[126]" -type "float2" 0.0098427078 0.013970287 ;
	setAttr ".uvtk[127]" -type "float2" 0.0068950551 0.014943803 ;
	setAttr ".uvtk[165]" -type "float2" 0.0014403359 -0.010082249 ;
createNode polyUnite -n "polyUnite1";
	setAttr -s 8 ".ip";
	setAttr -s 8 ".im";
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:144]";
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:48]";
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:48]";
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	setAttr ".ihi" 0;
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 2 "vtx[44]" "vtx[191]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 2 "vtx[47]" "vtx[191]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 3 "vtx[43]" "vtx[191]" "vtx[246]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert4";
	setAttr ".ics" -type "componentList" 2 "vtx[45]" "vtx[191]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert5";
	setAttr ".ics" -type "componentList" 3 "vtx[127]" "vtx[194]" "vtx[294]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert6";
	setAttr ".ics" -type "componentList" 2 "vtx[125]" "vtx[192]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert7";
	setAttr ".ics" -type "componentList" 2 "vtx[126]" "vtx[192]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert8";
	setAttr ".ics" -type "componentList" 2 "vtx[46]" "vtx[191]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert9";
	setAttr ".ics" -type "componentList" 2 "vtx[171]" "vtx[241]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert10";
	setAttr ".ics" -type "componentList" 2 "vtx[190]" "vtx[291]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert11";
	setAttr ".ics" -type "componentList" 1 "vtx[0:397]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.001;
	setAttr ".am" yes;
createNode polyTweakUV -n "polyTweakUV16";
	setAttr ".uopa" yes;
	setAttr -s 42 ".uvtk";
	setAttr ".uvtk[179]" -type "float2" 0.28942704 -0.11010573 ;
	setAttr ".uvtk[180]" -type "float2" 0.3385064 -0.015305899 ;
	setAttr ".uvtk[181]" -type "float2" 0.16988605 -0.0032388475 ;
	setAttr ".uvtk[182]" -type "float2" 0.10546082 -0.070252188 ;
	setAttr ".uvtk[183]" -type "float2" 0.07698217 -0.14817959 ;
	setAttr ".uvtk[184]" -type "float2" 0.22641155 -0.20092827 ;
	setAttr ".uvtk[185]" -type "float2" 0.059518471 -0.24480724 ;
	setAttr ".uvtk[186]" -type "float2" 0.12648955 -0.29726487 ;
	setAttr ".uvtk[187]" -type "float2" 0.25264144 0.49169973 ;
	setAttr ".uvtk[188]" -type "float2" 0.045278341 0.56661212 ;
	setAttr ".uvtk[189]" -type "float2" 0.040890835 0.4675225 ;
	setAttr ".uvtk[190]" -type "float2" 0.16985045 0.4493767 ;
	setAttr ".uvtk[191]" -type "float2" 0.02185297 -0.37452936 ;
	setAttr ".uvtk[192]" -type "float2" 0.027458966 -0.50611371 ;
	setAttr ".uvtk[193]" -type "float2" 0.20715255 -0.48944825 ;
	setAttr ".uvtk[194]" -type "float2" 0.13810226 -0.36398971 ;
	setAttr ".uvtk[195]" -type "float2" 0.017174587 -0.32047686 ;
	setAttr ".uvtk[196]" -type "float2" 0.015276402 -0.24884379 ;
	setAttr ".uvtk[197]" -type "float2" 0.015360802 -0.15131986 ;
	setAttr ".uvtk[198]" -type "float2" 0.016569853 -0.067703374 ;
	setAttr ".uvtk[199]" -type "float2" 0.017207187 0.003216181 ;
	setAttr ".uvtk[200]" -type "float2" 0.044248126 0.35604692 ;
	setAttr ".uvtk[201]" -type "float2" 0.03056404 0.29950604 ;
	setAttr ".uvtk[202]" -type "float2" 0.24919149 0.23309529 ;
	setAttr ".uvtk[203]" -type "float2" 0.14024763 0.35337508 ;
	setAttr ".uvtk[204]" -type "float2" 0.40949357 0.21491298 ;
	setAttr ".uvtk[205]" -type "float2" -0.2725479 -0.11126557 ;
	setAttr ".uvtk[206]" -type "float2" -0.080993399 -0.068794169 ;
	setAttr ".uvtk[207]" -type "float2" -0.15193102 0.010787562 ;
	setAttr ".uvtk[208]" -type "float2" -0.32899264 -0.010954715 ;
	setAttr ".uvtk[209]" -type "float2" -0.20338205 -0.20593682 ;
	setAttr ".uvtk[210]" -type "float2" -0.051504478 -0.1488339 ;
	setAttr ".uvtk[211]" -type "float2" -0.096963391 -0.30158305 ;
	setAttr ".uvtk[212]" -type "float2" -0.031968683 -0.24688518 ;
	setAttr ".uvtk[213]" -type "float2" -0.18568021 0.51023948 ;
	setAttr ".uvtk[214]" -type "float2" -0.11614645 0.45842123 ;
	setAttr ".uvtk[215]" -type "float2" -0.10361467 -0.37081468 ;
	setAttr ".uvtk[216]" -type "float2" -0.1656436 -0.50122076 ;
	setAttr ".uvtk[217]" -type "float2" -0.082531489 0.36261892 ;
	setAttr ".uvtk[218]" -type "float2" -0.19388056 0.25982457 ;
	setAttr ".uvtk[219]" -type "float2" -0.42008942 0.22650555 ;
createNode lambert -n "lambert10";
createNode shadingEngine -n "lambert10SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Users/Lille Kirkegaard/Dropbox/MED5/Implementation/Meshes and animations/Characters/Sheep King/sheepKingUV.png";
createNode place2dTexture -n "place2dTexture5";
createNode HIKCharacterNode -n "Character1";
	setAttr ".ReferenceMinRLimitx" -45;
	setAttr ".ReferenceMinRLimity" -45;
	setAttr ".ReferenceMinRLimitz" -45;
	setAttr ".ReferenceMaxRLimitx" 45;
	setAttr ".ReferenceMaxRLimity" 45;
	setAttr ".ReferenceMaxRLimitz" 45;
	setAttr ".HipsTy" 35.494000659722978;
	setAttr ".HipsMinRLimitx" -45;
	setAttr ".HipsMinRLimity" -45;
	setAttr ".HipsMinRLimitz" -45;
	setAttr ".HipsMaxRLimitx" 45;
	setAttr ".HipsMaxRLimity" 45;
	setAttr ".HipsMaxRLimitz" 45;
	setAttr ".LeftUpLegTx" 3.1625157430882638;
	setAttr ".LeftUpLegTy" 33.268526655085935;
	setAttr ".LeftUpLegMinRLimitx" -45;
	setAttr ".LeftUpLegMinRLimity" -45;
	setAttr ".LeftUpLegMinRLimitz" -45;
	setAttr ".LeftUpLegMaxRLimitx" 45;
	setAttr ".LeftUpLegMaxRLimity" 45;
	setAttr ".LeftUpLegMaxRLimitz" 45;
	setAttr ".LeftLegTx" 3.1625157430882638;
	setAttr ".LeftLegTy" 17.339300124007611;
	setAttr ".LeftLegMinRLimitx" -45;
	setAttr ".LeftLegMinRLimity" -45;
	setAttr ".LeftLegMinRLimitz" -45;
	setAttr ".LeftLegMaxRLimitx" 45;
	setAttr ".LeftLegMaxRLimity" 45;
	setAttr ".LeftLegMaxRLimitz" 45;
	setAttr ".LeftFootTx" 3.1625157430882638;
	setAttr ".LeftFootTy" 2.8929017331742184;
	setAttr ".LeftFootMinRLimitx" -45;
	setAttr ".LeftFootMinRLimity" -45;
	setAttr ".LeftFootMinRLimitz" -45;
	setAttr ".LeftFootMaxRLimitx" 45;
	setAttr ".LeftFootMaxRLimity" 45;
	setAttr ".LeftFootMaxRLimitz" 45;
	setAttr ".RightUpLegTx" -3.1625157430882638;
	setAttr ".RightUpLegTy" 33.268526655085935;
	setAttr ".RightUpLegMinRLimitx" -45;
	setAttr ".RightUpLegMinRLimity" -45;
	setAttr ".RightUpLegMinRLimitz" -45;
	setAttr ".RightUpLegMaxRLimitx" 45;
	setAttr ".RightUpLegMaxRLimity" 45;
	setAttr ".RightUpLegMaxRLimitz" 45;
	setAttr ".RightLegTx" -3.1625167071053211;
	setAttr ".RightLegTy" 17.339300124007611;
	setAttr ".RightLegTz" 0.00015582718145634223;
	setAttr ".RightLegMinRLimitx" -45;
	setAttr ".RightLegMinRLimity" -45;
	setAttr ".RightLegMinRLimitz" -45;
	setAttr ".RightLegMaxRLimitx" 45;
	setAttr ".RightLegMaxRLimity" 45;
	setAttr ".RightLegMaxRLimitz" 45;
	setAttr ".RightFootTx" -3.1625163809154553;
	setAttr ".RightFootTy" 2.8929017345939769;
	setAttr ".RightFootTz" 0.00015582718145634223;
	setAttr ".RightFootMinRLimitx" -45;
	setAttr ".RightFootMinRLimity" -45;
	setAttr ".RightFootMinRLimitz" -45;
	setAttr ".RightFootMaxRLimitx" 45;
	setAttr ".RightFootMaxRLimity" 45;
	setAttr ".RightFootMaxRLimitz" 45;
	setAttr ".SpineTy" 37.978580705903596;
	setAttr ".SpineMinRLimitx" -45;
	setAttr ".SpineMinRLimity" -45;
	setAttr ".SpineMinRLimitz" -45;
	setAttr ".SpineMaxRLimitx" 45;
	setAttr ".SpineMaxRLimity" 45;
	setAttr ".SpineMaxRLimitz" 45;
	setAttr ".LeftArmTx" 6.2850118116046039;
	setAttr ".LeftArmTy" 52.030188537027222;
	setAttr ".LeftArmMinRLimitx" -45;
	setAttr ".LeftArmMinRLimity" -45;
	setAttr ".LeftArmMinRLimitz" -45;
	setAttr ".LeftArmMaxRLimitx" 45;
	setAttr ".LeftArmMaxRLimity" 45;
	setAttr ".LeftArmMaxRLimitz" 45;
	setAttr ".LeftForeArmTx" 15.976813987303043;
	setAttr ".LeftForeArmTy" 52.030188537027222;
	setAttr ".LeftForeArmMinRLimitx" -45;
	setAttr ".LeftForeArmMinRLimity" -45;
	setAttr ".LeftForeArmMinRLimitz" -45;
	setAttr ".LeftForeArmMaxRLimitx" 45;
	setAttr ".LeftForeArmMaxRLimity" 45;
	setAttr ".LeftForeArmMaxRLimitz" 45;
	setAttr ".LeftHandTx" 25.452699650938055;
	setAttr ".LeftHandTy" 52.030188537027222;
	setAttr ".LeftHandMinRLimitx" -45;
	setAttr ".LeftHandMinRLimity" -45;
	setAttr ".LeftHandMinRLimitz" -45;
	setAttr ".LeftHandMaxRLimitx" 45;
	setAttr ".LeftHandMaxRLimity" 45;
	setAttr ".LeftHandMaxRLimitz" 45;
	setAttr ".RightArmTx" -6.2850202733743625;
	setAttr ".RightArmTy" 52.03029352828117;
	setAttr ".RightArmMinRLimitx" -45;
	setAttr ".RightArmMinRLimity" -45;
	setAttr ".RightArmMinRLimitz" -45;
	setAttr ".RightArmMaxRLimitx" 45;
	setAttr ".RightArmMaxRLimity" 45;
	setAttr ".RightArmMaxRLimitz" 45;
	setAttr ".RightForeArmTx" -15.976869496370666;
	setAttr ".RightForeArmTy" 52.03029352828117;
	setAttr ".RightForeArmMinRLimitx" -45;
	setAttr ".RightForeArmMinRLimity" -45;
	setAttr ".RightForeArmMinRLimitz" -45;
	setAttr ".RightForeArmMaxRLimitx" 45;
	setAttr ".RightForeArmMaxRLimity" 45;
	setAttr ".RightForeArmMaxRLimitz" 45;
	setAttr ".RightHandTx" -25.452698632260237;
	setAttr ".RightHandTy" 52.030293066859201;
	setAttr ".RightHandMinRLimitx" -45;
	setAttr ".RightHandMinRLimity" -45;
	setAttr ".RightHandMinRLimitz" -45;
	setAttr ".RightHandMaxRLimitx" 45;
	setAttr ".RightHandMaxRLimity" 45;
	setAttr ".RightHandMaxRLimitz" 45;
	setAttr ".HeadTy" 58.565101088542924;
	setAttr ".HeadMinRLimitx" -45;
	setAttr ".HeadMinRLimity" -45;
	setAttr ".HeadMinRLimitz" -45;
	setAttr ".HeadMaxRLimitx" 45;
	setAttr ".HeadMaxRLimity" 45;
	setAttr ".HeadMaxRLimitz" 45;
	setAttr ".LeftToeBaseTx" 3.162518734167699;
	setAttr ".LeftToeBaseTy" 0.67015482737685206;
	setAttr ".LeftToeBaseTz" 4.5981487217112722;
	setAttr ".LeftToeBaseMinRLimitx" -45;
	setAttr ".LeftToeBaseMinRLimity" -45;
	setAttr ".LeftToeBaseMinRLimitz" -45;
	setAttr ".LeftToeBaseMaxRLimitx" 45;
	setAttr ".LeftToeBaseMaxRLimity" 45;
	setAttr ".LeftToeBaseMaxRLimitz" 45;
	setAttr ".RightToeBaseTx" -3.1629016260547553;
	setAttr ".RightToeBaseTy" 0.67015483341083337;
	setAttr ".RightToeBaseTz" 4.5983145461329542;
	setAttr ".RightToeBaseMinRLimitx" -45;
	setAttr ".RightToeBaseMinRLimity" -45;
	setAttr ".RightToeBaseMinRLimitz" -45;
	setAttr ".RightToeBaseMaxRLimitx" 45;
	setAttr ".RightToeBaseMaxRLimity" 45;
	setAttr ".RightToeBaseMaxRLimitz" 45;
	setAttr ".LeftShoulderTx" 2.4845802154869925;
	setAttr ".LeftShoulderTy" 52.030139768270317;
	setAttr ".LeftShoulderMinRLimitx" -45;
	setAttr ".LeftShoulderMinRLimity" -45;
	setAttr ".LeftShoulderMinRLimitz" -45;
	setAttr ".LeftShoulderMaxRLimitx" 45;
	setAttr ".LeftShoulderMaxRLimity" 45;
	setAttr ".LeftShoulderMaxRLimitz" 45;
	setAttr ".RightShoulderTx" -2.4845798768742258;
	setAttr ".RightShoulderTy" 52.030139768270317;
	setAttr ".RightShoulderMinRLimitx" -45;
	setAttr ".RightShoulderMinRLimity" -45;
	setAttr ".RightShoulderMinRLimitz" -45;
	setAttr ".RightShoulderMaxRLimitx" 45;
	setAttr ".RightShoulderMaxRLimity" 45;
	setAttr ".RightShoulderMaxRLimitz" 45;
	setAttr ".NeckTy" 51.466300956598332;
	setAttr ".NeckMinRLimitx" -45;
	setAttr ".NeckMinRLimity" -45;
	setAttr ".NeckMinRLimitz" -45;
	setAttr ".NeckMaxRLimitx" 45;
	setAttr ".NeckMaxRLimity" 45;
	setAttr ".NeckMaxRLimitz" 45;
	setAttr ".LeftFingerBaseTx" 28.579678267800855;
	setAttr ".LeftFingerBaseTy" 52.207974578907717;
	setAttr ".LeftFingerBaseTz" 0.46308468989824286;
	setAttr ".LeftFingerBaseRy" -6.2191910648259628e-005;
	setAttr ".RightFingerBaseTx" -28.579636825005689;
	setAttr ".RightFingerBaseTy" 52.208080067077674;
	setAttr ".RightFingerBaseTz" 0.46335938364838858;
	setAttr ".RightFingerBaseRy" -0.034907713150901909;
	setAttr ".Spine1Ty" 42.474487456135172;
	setAttr ".Spine1MinRLimitx" -45;
	setAttr ".Spine1MinRLimity" -45;
	setAttr ".Spine1MinRLimitz" -45;
	setAttr ".Spine1MaxRLimitx" 45;
	setAttr ".Spine1MaxRLimity" 45;
	setAttr ".Spine1MaxRLimitz" 45;
	setAttr ".Spine2Ty" 46.970394206366755;
	setAttr ".Spine2MinRLimitx" -45;
	setAttr ".Spine2MinRLimity" -45;
	setAttr ".Spine2MinRLimitz" -45;
	setAttr ".Spine2MaxRLimitx" 45;
	setAttr ".Spine2MaxRLimity" 45;
	setAttr ".Spine2MaxRLimitz" 45;
	setAttr ".Spine3Ty" 42.237860785070353;
	setAttr ".Spine4Ty" 43.657620811459267;
	setAttr ".Spine5Ty" 45.077380837848203;
	setAttr ".Spine6Ty" 46.49714086423711;
	setAttr ".Spine7Ty" 47.916900890626025;
	setAttr ".Spine8Ty" 49.33666091701496;
	setAttr ".Spine9Ty" 50.756420943403867;
	setAttr ".Neck1Ty" 52.176180969792789;
	setAttr ".Neck2Ty" 52.886060982987225;
	setAttr ".Neck3Ty" 53.595940996181689;
	setAttr ".Neck4Ty" 54.305821009376167;
	setAttr ".Neck5Ty" 55.015701022570632;
	setAttr ".Neck6Ty" 55.725581035765089;
	setAttr ".Neck7Ty" 56.435461048959532;
	setAttr ".Neck8Ty" 57.145341062153996;
	setAttr ".Neck9Ty" 57.855221075348453;
	setAttr ".LeftUpLegRollTx" 3.1625157430882638;
	setAttr ".LeftUpLegRollTy" 25.303913389546775;
	setAttr ".LeftLegRollTx" 3.1625157430882638;
	setAttr ".LeftLegRollTy" 10.116100928590914;
	setAttr ".RightUpLegRollTx" -3.162516225096792;
	setAttr ".RightUpLegRollTy" 25.303913389546775;
	setAttr ".RightUpLegRollTz" 7.7913590728171116e-005;
	setAttr ".RightLegRollTx" -3.162516544010388;
	setAttr ".RightLegRollTy" 10.116100929300792;
	setAttr ".RightLegRollTz" 0.00015582718145634223;
	setAttr ".LeftArmRollTx" 11.130912899453824;
	setAttr ".LeftArmRollTy" 52.030188537027222;
	setAttr ".LeftForeArmRollTx" 20.714756819120545;
	setAttr ".LeftForeArmRollTy" 52.030188537027222;
	setAttr ".RightArmRollTx" -11.130944884872516;
	setAttr ".RightArmRollTy" 52.03029352828117;
	setAttr ".RightForeArmRollTx" -20.714784064315452;
	setAttr ".RightForeArmRollTy" 52.030293297570189;
	setAttr ".HipsTranslationTy" 35.494000659722978;
	setAttr ".LeftHandThumb1Tx" 26.996247435966794;
	setAttr ".LeftHandThumb1Ty" 51.746768054409351;
	setAttr ".LeftHandThumb1Tz" 1.5200071404991811;
	setAttr ".LeftHandThumb1MinRLimitx" -45;
	setAttr ".LeftHandThumb1MinRLimity" -45;
	setAttr ".LeftHandThumb1MinRLimitz" -45;
	setAttr ".LeftHandThumb1MaxRLimitx" 45;
	setAttr ".LeftHandThumb1MaxRLimity" 45;
	setAttr ".LeftHandThumb1MaxRLimitz" 45;
	setAttr ".LeftHandThumb2Tx" 27.888066125846542;
	setAttr ".LeftHandThumb2Ty" 51.556484929836579;
	setAttr ".LeftHandThumb2Tz" 1.7711109829269798;
	setAttr ".LeftHandThumb2MinRLimitx" -45;
	setAttr ".LeftHandThumb2MinRLimity" -45;
	setAttr ".LeftHandThumb2MinRLimitz" -45;
	setAttr ".LeftHandThumb2MaxRLimitx" 45;
	setAttr ".LeftHandThumb2MaxRLimity" 45;
	setAttr ".LeftHandThumb2MaxRLimitz" 45;
	setAttr ".LeftHandThumb3Tx" 28.790728399749618;
	setAttr ".LeftHandThumb3Ty" 51.556480244628482;
	setAttr ".LeftHandThumb3Tz" 1.7711142987765209;
	setAttr ".LeftHandThumb3MinRLimitx" -45;
	setAttr ".LeftHandThumb3MinRLimity" -45;
	setAttr ".LeftHandThumb3MinRLimitz" -45;
	setAttr ".LeftHandThumb3MaxRLimitx" 45;
	setAttr ".LeftHandThumb3MaxRLimity" 45;
	setAttr ".LeftHandThumb3MaxRLimitz" 45;
	setAttr ".LeftHandThumb4Tx" 29.737263292274363;
	setAttr ".LeftHandThumb4Ty" 51.556481273954503;
	setAttr ".LeftHandThumb4Tz" 1.7711113843641275;
	setAttr ".LeftHandThumb4MinRLimitx" -45;
	setAttr ".LeftHandThumb4MinRLimity" -45;
	setAttr ".LeftHandThumb4MinRLimitz" -45;
	setAttr ".LeftHandThumb4MaxRLimitx" 45;
	setAttr ".LeftHandThumb4MaxRLimity" 45;
	setAttr ".LeftHandThumb4MaxRLimitz" 45;
	setAttr ".LeftHandIndex1Tx" 28.583972126135468;
	setAttr ".LeftHandIndex1Ty" 52.101080420592901;
	setAttr ".LeftHandIndex1Tz" 1.2322343654184413;
	setAttr ".LeftHandIndex1MinRLimitx" -45;
	setAttr ".LeftHandIndex1MinRLimity" -45;
	setAttr ".LeftHandIndex1MinRLimitz" -45;
	setAttr ".LeftHandIndex1MaxRLimitx" 45;
	setAttr ".LeftHandIndex1MaxRLimity" 45;
	setAttr ".LeftHandIndex1MaxRLimitz" 45;
	setAttr ".LeftHandIndex2Tx" 30.082796671717936;
	setAttr ".LeftHandIndex2Ty" 52.101072576418737;
	setAttr ".LeftHandIndex2Tz" 1.2844811861934071;
	setAttr ".LeftHandIndex2MinRLimitx" -45;
	setAttr ".LeftHandIndex2MinRLimity" -45;
	setAttr ".LeftHandIndex2MinRLimitz" -45;
	setAttr ".LeftHandIndex2MaxRLimitx" 45;
	setAttr ".LeftHandIndex2MaxRLimity" 45;
	setAttr ".LeftHandIndex2MaxRLimitz" 45;
	setAttr ".LeftHandIndex3Tx" 31.024213084438944;
	setAttr ".LeftHandIndex3Ty" 52.101067678246643;
	setAttr ".LeftHandIndex3Tz" 1.3172975123445598;
	setAttr ".LeftHandIndex3MinRLimitx" -45;
	setAttr ".LeftHandIndex3MinRLimity" -45;
	setAttr ".LeftHandIndex3MinRLimitz" -45;
	setAttr ".LeftHandIndex3MaxRLimitx" 45;
	setAttr ".LeftHandIndex3MaxRLimity" 45;
	setAttr ".LeftHandIndex3MaxRLimitz" 45;
	setAttr ".LeftHandIndex4Tx" 31.718842826946155;
	setAttr ".LeftHandIndex4Ty" 52.101064057858579;
	setAttr ".LeftHandIndex4Tz" 1.3415111291606163;
	setAttr ".LeftHandIndex4MinRLimitx" -45;
	setAttr ".LeftHandIndex4MinRLimity" -45;
	setAttr ".LeftHandIndex4MinRLimitz" -45;
	setAttr ".LeftHandIndex4MaxRLimitx" 45;
	setAttr ".LeftHandIndex4MaxRLimity" 45;
	setAttr ".LeftHandIndex4MaxRLimitz" 45;
	setAttr ".LeftHandMiddle1Tx" 28.579678289097256;
	setAttr ".LeftHandMiddle1Ty" 52.207974614401728;
	setAttr ".LeftHandMiddle1Tz" 0.46308468279944287;
	setAttr ".LeftHandMiddle1MinRLimitx" -45;
	setAttr ".LeftHandMiddle1MinRLimity" -45;
	setAttr ".LeftHandMiddle1MinRLimitz" -45;
	setAttr ".LeftHandMiddle1MaxRLimitx" 45;
	setAttr ".LeftHandMiddle1MaxRLimity" 45;
	setAttr ".LeftHandMiddle1MaxRLimitz" 45;
	setAttr ".LeftHandMiddle2Tx" 30.305840872480449;
	setAttr ".LeftHandMiddle2Ty" 52.207974614401728;
	setAttr ".LeftHandMiddle2Tz" 0.46319203617913812;
	setAttr ".LeftHandMiddle2MinRLimitx" -45;
	setAttr ".LeftHandMiddle2MinRLimity" -45;
	setAttr ".LeftHandMiddle2MinRLimitz" -45;
	setAttr ".LeftHandMiddle2MaxRLimitx" 45;
	setAttr ".LeftHandMiddle2MaxRLimity" 45;
	setAttr ".LeftHandMiddle2MaxRLimitz" 45;
	setAttr ".LeftHandMiddle3Tx" 31.287333973076745;
	setAttr ".LeftHandMiddle3Ty" 52.207974614401728;
	setAttr ".LeftHandMiddle3Tz" 0.46325300883829135;
	setAttr ".LeftHandMiddle3MinRLimitx" -45;
	setAttr ".LeftHandMiddle3MinRLimity" -45;
	setAttr ".LeftHandMiddle3MinRLimitz" -45;
	setAttr ".LeftHandMiddle3MaxRLimitx" 45;
	setAttr ".LeftHandMiddle3MaxRLimity" 45;
	setAttr ".LeftHandMiddle3MaxRLimitz" 45;
	setAttr ".LeftHandMiddle4Tx" 31.999213065178765;
	setAttr ".LeftHandMiddle4Ty" 52.207974614401728;
	setAttr ".LeftHandMiddle4Tz" 0.46329687800334679;
	setAttr ".LeftHandMiddle4MinRLimitx" -45;
	setAttr ".LeftHandMiddle4MinRLimity" -45;
	setAttr ".LeftHandMiddle4MinRLimitz" -45;
	setAttr ".LeftHandMiddle4MaxRLimitx" 45;
	setAttr ".LeftHandMiddle4MaxRLimity" 45;
	setAttr ".LeftHandMiddle4MaxRLimitz" 45;
	setAttr ".LeftHandRing1Tx" 28.609450809474833;
	setAttr ".LeftHandRing1Ty" 52.165037202357659;
	setAttr ".LeftHandRing1Tz" -0.28152382839311157;
	setAttr ".LeftHandRing1MinRLimitx" -45;
	setAttr ".LeftHandRing1MinRLimity" -45;
	setAttr ".LeftHandRing1MinRLimitz" -45;
	setAttr ".LeftHandRing1MaxRLimitx" 45;
	setAttr ".LeftHandRing1MaxRLimity" 45;
	setAttr ".LeftHandRing1MaxRLimitz" 45;
	setAttr ".LeftHandRing2Tx" 30.22008295853167;
	setAttr ".LeftHandRing2Ty" 52.165037202357659;
	setAttr ".LeftHandRing2Tz" -0.28152379680345102;
	setAttr ".LeftHandRing2MinRLimitx" -45;
	setAttr ".LeftHandRing2MinRLimity" -45;
	setAttr ".LeftHandRing2MinRLimitz" -45;
	setAttr ".LeftHandRing2MaxRLimitx" 45;
	setAttr ".LeftHandRing2MaxRLimity" 45;
	setAttr ".LeftHandRing2MaxRLimitz" 45;
	setAttr ".LeftHandRing3Tx" 31.038051382483573;
	setAttr ".LeftHandRing3Ty" 52.165037202357659;
	setAttr ".LeftHandRing3Tz" -0.28152383833143185;
	setAttr ".LeftHandRing3MinRLimitx" -45;
	setAttr ".LeftHandRing3MinRLimity" -45;
	setAttr ".LeftHandRing3MinRLimitz" -45;
	setAttr ".LeftHandRing3MaxRLimitx" 45;
	setAttr ".LeftHandRing3MaxRLimity" 45;
	setAttr ".LeftHandRing3MaxRLimitz" 45;
	setAttr ".LeftHandRing4Tx" 31.72072430713072;
	setAttr ".LeftHandRing4Ty" 52.165037202357659;
	setAttr ".LeftHandRing4Tz" -0.28152412831741724;
	setAttr ".LeftHandRing4MinRLimitx" -45;
	setAttr ".LeftHandRing4MinRLimity" -45;
	setAttr ".LeftHandRing4MinRLimitz" -45;
	setAttr ".LeftHandRing4MaxRLimitx" 45;
	setAttr ".LeftHandRing4MaxRLimity" 45;
	setAttr ".LeftHandRing4MaxRLimitz" 45;
	setAttr ".LeftHandPinky1Tx" 28.605374288005066;
	setAttr ".LeftHandPinky1Ty" 51.919082731582158;
	setAttr ".LeftHandPinky1Tz" -0.88392714011655382;
	setAttr ".LeftHandPinky1MinRLimitx" -45;
	setAttr ".LeftHandPinky1MinRLimity" -45;
	setAttr ".LeftHandPinky1MinRLimitz" -45;
	setAttr ".LeftHandPinky1MaxRLimitx" 45;
	setAttr ".LeftHandPinky1MaxRLimity" 45;
	setAttr ".LeftHandPinky1MaxRLimitz" 45;
	setAttr ".LeftHandPinky2Tx" 29.685846924277882;
	setAttr ".LeftHandPinky2Ty" 51.919097142146398;
	setAttr ".LeftHandPinky2Tz" -0.88392714011655382;
	setAttr ".LeftHandPinky2MinRLimitx" -45;
	setAttr ".LeftHandPinky2MinRLimity" -45;
	setAttr ".LeftHandPinky2MinRLimitz" -45;
	setAttr ".LeftHandPinky2MaxRLimitx" 45;
	setAttr ".LeftHandPinky2MaxRLimity" 45;
	setAttr ".LeftHandPinky2MaxRLimitz" 45;
	setAttr ".LeftHandPinky3Tx" 30.386676496164725;
	setAttr ".LeftHandPinky3Ty" 51.919106477068567;
	setAttr ".LeftHandPinky3Tz" -0.88392719087297489;
	setAttr ".LeftHandPinky3MinRLimitx" -45;
	setAttr ".LeftHandPinky3MinRLimity" -45;
	setAttr ".LeftHandPinky3MinRLimitz" -45;
	setAttr ".LeftHandPinky3MaxRLimitx" 45;
	setAttr ".LeftHandPinky3MaxRLimity" 45;
	setAttr ".LeftHandPinky3MaxRLimitz" 45;
	setAttr ".LeftHandPinky4Tx" 30.978224711030759;
	setAttr ".LeftHandPinky4Ty" 51.919114356736713;
	setAttr ".LeftHandPinky4Tz" -0.88392691011543012;
	setAttr ".LeftHandPinky4MinRLimitx" -45;
	setAttr ".LeftHandPinky4MinRLimity" -45;
	setAttr ".LeftHandPinky4MinRLimitz" -45;
	setAttr ".LeftHandPinky4MaxRLimitx" 45;
	setAttr ".LeftHandPinky4MaxRLimity" 45;
	setAttr ".LeftHandPinky4MaxRLimitz" 45;
	setAttr ".LeftHandExtraFinger1Tx" 28.605374288005066;
	setAttr ".LeftHandExtraFinger1Ty" 52.101080420592901;
	setAttr ".LeftHandExtraFinger1Tz" -1.593807153311013;
	setAttr ".LeftHandExtraFinger1Ry" -0.03490658477808721;
	setAttr ".LeftHandExtraFinger1Rz" -5.2244860362123464e-006;
	setAttr ".LeftHandExtraFinger2Tx" 29.330906917680661;
	setAttr ".LeftHandExtraFinger2Ty" 52.101072576418758;
	setAttr ".LeftHandExtraFinger2Tz" -1.593807153311013;
	setAttr ".LeftHandExtraFinger2Ry" -0.03490658477808721;
	setAttr ".LeftHandExtraFinger2Rz" -5.2244860362123464e-006;
	setAttr ".LeftHandExtraFinger3Tx" 30.031736489567496;
	setAttr ".LeftHandExtraFinger3Ty" 52.101067678246679;
	setAttr ".LeftHandExtraFinger3Tz" -1.5938072040674349;
	setAttr ".LeftHandExtraFinger3Ry" -0.03490658477808721;
	setAttr ".LeftHandExtraFinger3Rz" -5.2244860362123464e-006;
	setAttr ".LeftHandExtraFinger4Tx" 30.623284704433541;
	setAttr ".LeftHandExtraFinger4Ty" 52.101064057858608;
	setAttr ".LeftHandExtraFinger4Tz" -1.5938069233098897;
	setAttr ".LeftHandExtraFinger4Ry" -0.03490658477808721;
	setAttr ".LeftHandExtraFinger4Rz" -5.2244860362123464e-006;
	setAttr ".RightHandThumb1Tx" -26.996112938550109;
	setAttr ".RightHandThumb1Ty" 51.746874145977309;
	setAttr ".RightHandThumb1Tz" 1.5201422913604332;
	setAttr ".RightHandThumb1MinRLimitx" -45;
	setAttr ".RightHandThumb1MinRLimity" -45;
	setAttr ".RightHandThumb1MinRLimitz" -45;
	setAttr ".RightHandThumb1MaxRLimitx" 45;
	setAttr ".RightHandThumb1MaxRLimity" 45;
	setAttr ".RightHandThumb1MaxRLimitz" 45;
	setAttr ".RightHandThumb2Tx" -27.887909469525226;
	setAttr ".RightHandThumb2Ty" 51.55659119887455;
	setAttr ".RightHandThumb2Tz" 1.7713250461801389;
	setAttr ".RightHandThumb2MinRLimitx" -45;
	setAttr ".RightHandThumb2MinRLimity" -45;
	setAttr ".RightHandThumb2MinRLimitz" -45;
	setAttr ".RightHandThumb2MaxRLimitx" 45;
	setAttr ".RightHandThumb2MaxRLimity" 45;
	setAttr ".RightHandThumb2MaxRLimitz" 45;
	setAttr ".RightHandThumb3Tx" -28.79002121373107;
	setAttr ".RightHandThumb3Ty" 51.556600711266732;
	setAttr ".RightHandThumb3Tz" 1.8028509293722068;
	setAttr ".RightHandThumb3MinRLimitx" -45;
	setAttr ".RightHandThumb3MinRLimity" -45;
	setAttr ".RightHandThumb3MinRLimitz" -45;
	setAttr ".RightHandThumb3MaxRLimitx" 45;
	setAttr ".RightHandThumb3MaxRLimity" 45;
	setAttr ".RightHandThumb3MaxRLimitz" 45;
	setAttr ".RightHandThumb4Tx" -29.735978838927881;
	setAttr ".RightHandThumb4Ty" 51.556607206668843;
	setAttr ".RightHandThumb4Tz" 1.8359090892826351;
	setAttr ".RightHandThumb4MinRLimitx" -45;
	setAttr ".RightHandThumb4MinRLimity" -45;
	setAttr ".RightHandThumb4MinRLimitz" -45;
	setAttr ".RightHandThumb4MaxRLimitx" 45;
	setAttr ".RightHandThumb4MaxRLimity" 45;
	setAttr ".RightHandThumb4MaxRLimitz" 45;
	setAttr ".RightHandIndex1Tx" -28.583863184399235;
	setAttr ".RightHandIndex1Ty" 52.101186547654876;
	setAttr ".RightHandIndex1Tz" 1.2325094013307532;
	setAttr ".RightHandIndex1MinRLimitx" -45;
	setAttr ".RightHandIndex1MinRLimity" -45;
	setAttr ".RightHandIndex1MinRLimitz" -45;
	setAttr ".RightHandIndex1MaxRLimitx" 45;
	setAttr ".RightHandIndex1MaxRLimity" 45;
	setAttr ".RightHandIndex1MaxRLimitz" 45;
	setAttr ".RightHandIndex2Tx" -30.082686175344495;
	setAttr ".RightHandIndex2Ty" 52.101186441172871;
	setAttr ".RightHandIndex2Tz" 1.1802083567259194;
	setAttr ".RightHandIndex2MinRLimitx" -45;
	setAttr ".RightHandIndex2MinRLimity" -45;
	setAttr ".RightHandIndex2MinRLimitz" -45;
	setAttr ".RightHandIndex2MaxRLimitx" 45;
	setAttr ".RightHandIndex2MaxRLimity" 45;
	setAttr ".RightHandIndex2MaxRLimitz" 45;
	setAttr ".RightHandIndex3Tx" -31.024101647474481;
	setAttr ".RightHandIndex3Ty" 52.101186334690837;
	setAttr ".RightHandIndex3Tz" 1.1473578991887914;
	setAttr ".RightHandIndex3MinRLimitx" -45;
	setAttr ".RightHandIndex3MinRLimity" -45;
	setAttr ".RightHandIndex3MinRLimitz" -45;
	setAttr ".RightHandIndex3MaxRLimitx" 45;
	setAttr ".RightHandIndex3MaxRLimity" 45;
	setAttr ".RightHandIndex3MaxRLimitz" 45;
	setAttr ".RightHandIndex4Tx" -31.718730676552266;
	setAttr ".RightHandIndex4Ty" 52.101186299196833;
	setAttr ".RightHandIndex4Tz" 1.1231189921873861;
	setAttr ".RightHandIndex4MinRLimitx" -45;
	setAttr ".RightHandIndex4MinRLimity" -45;
	setAttr ".RightHandIndex4MinRLimitz" -45;
	setAttr ".RightHandIndex4MaxRLimitx" 45;
	setAttr ".RightHandIndex4MaxRLimity" 45;
	setAttr ".RightHandIndex4MaxRLimitz" 45;
	setAttr ".RightHandMiddle1Tx" -28.579637045068491;
	setAttr ".RightHandMiddle1Ty" 52.208080067077674;
	setAttr ".RightHandMiddle1Tz" 0.46335942269178931;
	setAttr ".RightHandMiddle1MinRLimitx" -45;
	setAttr ".RightHandMiddle1MinRLimity" -45;
	setAttr ".RightHandMiddle1MinRLimitz" -45;
	setAttr ".RightHandMiddle1MaxRLimitx" 45;
	setAttr ".RightHandMiddle1MaxRLimity" 45;
	setAttr ".RightHandMiddle1MaxRLimitz" 45;
	setAttr ".RightHandMiddle2Tx" -30.304750003413567;
	setAttr ".RightHandMiddle2Ty" 52.208079925101671;
	setAttr ".RightHandMiddle2Tz" 0.40316204053802734;
	setAttr ".RightHandMiddle2MinRLimitx" -45;
	setAttr ".RightHandMiddle2MinRLimity" -45;
	setAttr ".RightHandMiddle2MinRLimitz" -45;
	setAttr ".RightHandMiddle2MaxRLimitx" 45;
	setAttr ".RightHandMiddle2MaxRLimity" 45;
	setAttr ".RightHandMiddle2MaxRLimitz" 45;
	setAttr ".RightHandMiddle3Tx" -31.285646268839386;
	setAttr ".RightHandMiddle3Ty" 52.208079854113677;
	setAttr ".RightHandMiddle3Tz" 0.36893391140555298;
	setAttr ".RightHandMiddle3MinRLimitx" -45;
	setAttr ".RightHandMiddle3MinRLimity" -45;
	setAttr ".RightHandMiddle3MinRLimitz" -45;
	setAttr ".RightHandMiddle3MaxRLimitx" 45;
	setAttr ".RightHandMiddle3MaxRLimity" 45;
	setAttr ".RightHandMiddle3MaxRLimitz" 45;
	setAttr ".RightHandMiddle4Tx" -31.997092518702143;
	setAttr ".RightHandMiddle4Ty" 52.208079783125655;
	setAttr ".RightHandMiddle4Tz" 0.34410817392761972;
	setAttr ".RightHandMiddle4MinRLimitx" -45;
	setAttr ".RightHandMiddle4MinRLimity" -45;
	setAttr ".RightHandMiddle4MinRLimitz" -45;
	setAttr ".RightHandMiddle4MaxRLimitx" 45;
	setAttr ".RightHandMiddle4MaxRLimity" 45;
	setAttr ".RightHandMiddle4MaxRLimitz" 45;
	setAttr ".RightHandRing1Tx" -28.609475573639092;
	setAttr ".RightHandRing1Ty" 52.165141980647597;
	setAttr ".RightHandRing1Tz" -0.2812462110021316;
	setAttr ".RightHandRing1MinRLimitx" -45;
	setAttr ".RightHandRing1MinRLimity" -45;
	setAttr ".RightHandRing1MinRLimitz" -45;
	setAttr ".RightHandRing1MaxRLimitx" 45;
	setAttr ".RightHandRing1MaxRLimity" 45;
	setAttr ".RightHandRing1MaxRLimitz" 45;
	setAttr ".RightHandRing2Tx" -30.219128365130928;
	setAttr ".RightHandRing2Ty" 52.16514183867158;
	setAttr ".RightHandRing2Tz" -0.33741464074580779;
	setAttr ".RightHandRing2MinRLimitx" -45;
	setAttr ".RightHandRing2MinRLimity" -45;
	setAttr ".RightHandRing2MinRLimitz" -45;
	setAttr ".RightHandRing2MaxRLimitx" 45;
	setAttr ".RightHandRing2MaxRLimity" 45;
	setAttr ".RightHandRing2MaxRLimitz" 45;
	setAttr ".RightHandRing3Tx" -31.036599415200982;
	setAttr ".RightHandRing3Ty" 52.165141767683572;
	setAttr ".RightHandRing3Tz" -0.36594008721888704;
	setAttr ".RightHandRing3MinRLimitx" -45;
	setAttr ".RightHandRing3MinRLimity" -45;
	setAttr ".RightHandRing3MinRLimitz" -45;
	setAttr ".RightHandRing3MaxRLimitx" 45;
	setAttr ".RightHandRing3MaxRLimity" 45;
	setAttr ".RightHandRing3MaxRLimitz" 45;
	setAttr ".RightHandRing4Tx" -31.718857258806821;
	setAttr ".RightHandRing4Ty" 52.165141732189568;
	setAttr ".RightHandRing4Tz" -0.38974730340642899;
	setAttr ".RightHandRing4MinRLimitx" -45;
	setAttr ".RightHandRing4MinRLimity" -45;
	setAttr ".RightHandRing4MinRLimitz" -45;
	setAttr ".RightHandRing4MaxRLimitx" 45;
	setAttr ".RightHandRing4MaxRLimity" 45;
	setAttr ".RightHandRing4MaxRLimitz" 45;
	setAttr ".RightHandPinky1Tx" -28.605451856594108;
	setAttr ".RightHandPinky1Ty" 51.919186977462061;
	setAttr ".RightHandPinky1Tz" -0.88364948084265305;
	setAttr ".RightHandPinky1MinRLimitx" -45;
	setAttr ".RightHandPinky1MinRLimity" -45;
	setAttr ".RightHandPinky1MinRLimitz" -45;
	setAttr ".RightHandPinky1MaxRLimitx" 45;
	setAttr ".RightHandPinky1MaxRLimity" 45;
	setAttr ".RightHandPinky1MaxRLimitz" 45;
	setAttr ".RightHandPinky2Tx" -29.686578750231678;
	setAttr ".RightHandPinky2Ty" 51.919163551421619;
	setAttr ".RightHandPinky2Tz" -0.92137513165479556;
	setAttr ".RightHandPinky2MinRLimitx" -45;
	setAttr ".RightHandPinky2MinRLimity" -45;
	setAttr ".RightHandPinky2MinRLimitz" -45;
	setAttr ".RightHandPinky2MaxRLimitx" 45;
	setAttr ".RightHandPinky2MaxRLimity" 45;
	setAttr ".RightHandPinky2MaxRLimitz" 45;
	setAttr ".RightHandPinky3Tx" -30.387832706137416;
	setAttr ".RightHandPinky3Ty" 51.919148359989343;
	setAttr ".RightHandPinky3Tz" -0.94584521037261826;
	setAttr ".RightHandPinky3MinRLimitx" -45;
	setAttr ".RightHandPinky3MinRLimity" -45;
	setAttr ".RightHandPinky3MinRLimitz" -45;
	setAttr ".RightHandPinky3MaxRLimitx" 45;
	setAttr ".RightHandPinky3MaxRLimity" 45;
	setAttr ".RightHandPinky3MaxRLimitz" 45;
	setAttr ".RightHandPinky4Tx" -30.979739126458128;
	setAttr ".RightHandPinky4Ty" 51.919135511161123;
	setAttr ".RightHandPinky4Tz" -0.96649963752238022;
	setAttr ".RightHandPinky4MinRLimitx" -45;
	setAttr ".RightHandPinky4MinRLimity" -45;
	setAttr ".RightHandPinky4MinRLimitz" -45;
	setAttr ".RightHandPinky4MaxRLimitx" 45;
	setAttr ".RightHandPinky4MaxRLimity" 45;
	setAttr ".RightHandPinky4MaxRLimitz" 45;
	setAttr ".RightHandExtraFinger1Tx" -28.605451856594108;
	setAttr ".RightHandExtraFinger1Ty" 52.101186547654876;
	setAttr ".RightHandExtraFinger1Tz" -1.5935294940371132;
	setAttr ".RightHandExtraFinger1Ry" -0.034907713534874346;
	setAttr ".RightHandExtraFinger2Tx" -29.331638743634453;
	setAttr ".RightHandExtraFinger2Ty" 52.101186441172878;
	setAttr ".RightHandExtraFinger2Tz" -1.6312551448492552;
	setAttr ".RightHandExtraFinger2Ry" -0.034907713150901909;
	setAttr ".RightHandExtraFinger3Tx" -30.032892699540177;
	setAttr ".RightHandExtraFinger3Ty" 52.101186334690873;
	setAttr ".RightHandExtraFinger3Tz" -1.6557252235670779;
	setAttr ".RightHandExtraFinger3Ry" -0.034907713150901909;
	setAttr ".RightHandExtraFinger4Tx" -30.624799119860882;
	setAttr ".RightHandExtraFinger4Ty" 52.101186299196868;
	setAttr ".RightHandExtraFinger4Tz" -1.6763796507168394;
	setAttr ".RightHandExtraFinger4Ry" -0.034907713150901909;
	setAttr ".LeftFootThumb1Tx" 2.1950278578185349;
	setAttr ".LeftFootThumb1Ty" 1.7744335681651164;
	setAttr ".LeftFootThumb1Tz" 0.68507794453592652;
	setAttr ".LeftFootThumb2Tx" 1.615477393558916;
	setAttr ".LeftFootThumb2Ty" 0.94569626370318949;
	setAttr ".LeftFootThumb2Tz" 1.2749223760273583;
	setAttr ".LeftFootThumb3Tx" 1.228783380632918;
	setAttr ".LeftFootThumb3Ty" 0.67015473189799035;
	setAttr ".LeftFootThumb3Tz" 2.2716664685490082;
	setAttr ".LeftFootThumb4Tx" 1.2287833845372578;
	setAttr ".LeftFootThumb4Ty" 0.67015472124979025;
	setAttr ".LeftFootThumb4Tz" 3.4419227710415905;
	setAttr ".LeftFootIndex1Tx" 2.5238080043516544;
	setAttr ".LeftFootIndex1Ty" 0.67015481424407186;
	setAttr ".LeftFootIndex1Tz" 4.5981487217112722;
	setAttr ".LeftFootIndex2Tx" 2.523808006836235;
	setAttr ".LeftFootIndex2Ty" 0.67015480821009166;
	setAttr ".LeftFootIndex2Tz" 5.2636635589381218;
	setAttr ".LeftFootIndex3Tx" 2.5238080089658745;
	setAttr ".LeftFootIndex3Ty" 0.6701548021761119;
	setAttr ".LeftFootIndex3Tz" 5.949910591025116;
	setAttr ".LeftFootIndex4Tx" 2.5238080114504546;
	setAttr ".LeftFootIndex4Ty" 0.67015479578719162;
	setAttr ".LeftFootIndex4Tz" 6.6908556741251788;
	setAttr ".LeftFootMiddle1Tx" 3.1649021637657389;
	setAttr ".LeftFootMiddle1Ty" 0.67015483057131198;
	setAttr ".LeftFootMiddle1Tz" 4.5981487217112722;
	setAttr ".LeftFootMiddle2Tx" 3.1649021658953798;
	setAttr ".LeftFootMiddle2Ty" 0.67015482489227196;
	setAttr ".LeftFootMiddle2Tz" 5.2632635415506854;
	setAttr ".LeftFootMiddle3Tx" 3.1649021680250193;
	setAttr ".LeftFootMiddle3Ty" 0.67015481921323194;
	setAttr ".LeftFootMiddle3Tz" 5.9096490184497803;
	setAttr ".LeftFootMiddle4Tx" 3.1649021701546594;
	setAttr ".LeftFootMiddle4Ty" 0.67015481317925196;
	setAttr ".LeftFootMiddle4Tz" 6.5896677833638098;
	setAttr ".LeftFootRing1Tx" 3.8063424642236572;
	setAttr ".LeftFootRing1Ty" 0.67015484760843247;
	setAttr ".LeftFootRing1Tz" 4.5981487217112722;
	setAttr ".LeftFootRing2Tx" 3.8063424642236572;
	setAttr ".LeftFootRing2Ty" 0.67015484192939245;
	setAttr ".LeftFootRing2Tz" 5.2223928422324262;
	setAttr ".LeftFootRing3Tx" 3.8063424677730584;
	setAttr ".LeftFootRing3Ty" 0.6701548366052924;
	setAttr ".LeftFootRing3Tz" 5.8466336227681177;
	setAttr ".LeftFootRing4Tx" 3.806342471322457;
	setAttr ".LeftFootRing4Ty" 0.67015483092625228;
	setAttr ".LeftFootRing4Tz" 6.4864751027101804;
	setAttr ".LeftFootPinky1Tx" 4.4473261162611486;
	setAttr ".LeftFootPinky1Ty" 0.67015486393567292;
	setAttr ".LeftFootPinky1Tz" 4.5981487217112722;
	setAttr ".LeftFootPinky2Tx" 4.4473261198105494;
	setAttr ".LeftFootPinky2Ty" 0.67015485861157276;
	setAttr ".LeftFootPinky2Tz" 5.1748995764372747;
	setAttr ".LeftFootPinky3Tx" 4.4473261198105494;
	setAttr ".LeftFootPinky3Ty" 0.67015485399735253;
	setAttr ".LeftFootPinky3Tz" 5.7300092455944345;
	setAttr ".LeftFootPinky4Tx" 4.4473261233599484;
	setAttr ".LeftFootPinky4Ty" 0.67015484831831262;
	setAttr ".LeftFootPinky4Tz" 6.3396530970624152;
	setAttr ".LeftFootExtraFinger1Tx" 1.8052582325900306;
	setAttr ".LeftFootExtraFinger1Ty" 0.67015486287085269;
	setAttr ".LeftFootExtraFinger1Tz" 4.5981487217112722;
	setAttr ".LeftFootExtraFinger2Tx" 1.8052582347196706;
	setAttr ".LeftFootExtraFinger2Ty" 0.67015485648193263;
	setAttr ".LeftFootExtraFinger2Tz" 5.3042287223493023;
	setAttr ".LeftFootExtraFinger3Tx" 1.8052582372042512;
	setAttr ".LeftFootExtraFinger3Ty" 0.67015485009301246;
	setAttr ".LeftFootExtraFinger3Tz" 6.0310791235897847;
	setAttr ".LeftFootExtraFinger4Tx" 1.8052582396888313;
	setAttr ".LeftFootExtraFinger4Ty" 0.67015484334915243;
	setAttr ".LeftFootExtraFinger4Tz" 6.7720362214090732;
	setAttr ".RightFootThumb1Tx" -2.1935292457400406;
	setAttr ".RightFootThumb1Ty" 1.7744336867150787;
	setAttr ".RightFootThumb1Tz" 0.68507791010674579;
	setAttr ".RightFootThumb2Tx" -1.6149770236284755;
	setAttr ".RightFootThumb2Ty" 0.94569641845703256;
	setAttr ".RightFootThumb2Tz" 1.2749223444376978;
	setAttr ".RightFootThumb3Tx" -1.2280924178572554;
	setAttr ".RightFootThumb3Ty" 0.67015489162099318;
	setAttr ".RightFootThumb3Tz" 2.2716664383791079;
	setAttr ".RightFootThumb4Tx" -1.2280924178572554;
	setAttr ".RightFootThumb4Ty" 0.67015488239255316;
	setAttr ".RightFootThumb4Tz" 3.4419227408716893;
	setAttr ".RightFootIndex1Tx" -2.5236234412272642;
	setAttr ".RightFootIndex1Ty" 0.67015486571037286;
	setAttr ".RightFootIndex1Tz" 4.5981486294268699;
	setAttr ".RightFootIndex2Tx" -2.5236234412272642;
	setAttr ".RightFootIndex2Ty" 0.67015486074121267;
	setAttr ".RightFootIndex2Tz" 5.2636634666537185;
	setAttr ".RightFootIndex3Tx" -2.5236234412272642;
	setAttr ".RightFootIndex3Ty" 0.6701548557720528;
	setAttr ".RightFootIndex3Tz" 5.9499104987407172;
	setAttr ".RightFootIndex4Tx" -2.5236234412272642;
	setAttr ".RightFootIndex4Ty" 0.67015485009301246;
	setAttr ".RightFootIndex4Tz" 6.6908555818407773;
	setAttr ".RightFootMiddle1Tx" -3.1660648588472897;
	setAttr ".RightFootMiddle1Ty" 0.67015484547879245;
	setAttr ".RightFootMiddle1Tz" 4.5981486258774691;
	setAttr ".RightFootMiddle2Tx" -3.1660648588472897;
	setAttr ".RightFootMiddle2Ty" 0.67015484050963225;
	setAttr ".RightFootMiddle2Tz" 5.2632634457168832;
	setAttr ".RightFootMiddle3Tx" -3.1660648588472897;
	setAttr ".RightFootMiddle3Ty" 0.67015483554047228;
	setAttr ".RightFootMiddle3Tz" 5.9096489226159754;
	setAttr ".RightFootMiddle4Tx" -3.1660648588472897;
	setAttr ".RightFootMiddle4Ty" 0.67015483021637234;
	setAttr ".RightFootMiddle4Tz" 6.5896676875300093;
	setAttr ".RightFootRing1Tx" -3.8049568707223043;
	setAttr ".RightFootRing1Ty" 0.67015482986143227;
	setAttr ".RightFootRing1Tz" 4.5981486223280692;
	setAttr ".RightFootRing2Tx" -3.8049568707223043;
	setAttr ".RightFootRing2Ty" 0.67015482489227196;
	setAttr ".RightFootRing2Tz" 5.2223927463986231;
	setAttr ".RightFootRing3Tx" -3.8049568707223043;
	setAttr ".RightFootRing3Ty" 0.67015482027805207;
	setAttr ".RightFootRing3Tz" 5.846633526934319;
	setAttr ".RightFootRing4Tx" -3.8049568707223043;
	setAttr ".RightFootRing4Ty" 0.67015481530889187;
	setAttr ".RightFootRing4Tz" 6.486475006876379;
	setAttr ".RightFootPinky1Tx" -4.44739830395969;
	setAttr ".RightFootPinky1Ty" 0.67015480927491167;
	setAttr ".RightFootPinky1Tz" 4.5981486223280692;
	setAttr ".RightFootPinky2Tx" -4.44739830395969;
	setAttr ".RightFootPinky2Ty" 0.67015480501563174;
	setAttr ".RightFootPinky2Tz" 5.1748994770540735;
	setAttr ".RightFootPinky3Tx" -4.44739830395969;
	setAttr ".RightFootPinky3Ty" 0.6701548007563517;
	setAttr ".RightFootPinky3Tz" 5.7300091497606349;
	setAttr ".RightFootPinky4Tx" -4.44739830395969;
	setAttr ".RightFootPinky4Ty" 0.67015479614213158;
	setAttr ".RightFootPinky4Tz" 6.339652997679214;
	setAttr ".RightFootExtraFinger1Tx" -1.8066446346447202;
	setAttr ".RightFootExtraFinger1Ty" 0.670154817438532;
	setAttr ".RightFootExtraFinger1Tz" 4.5981486294268699;
	setAttr ".RightFootExtraFinger2Tx" -1.8066446346447202;
	setAttr ".RightFootExtraFinger2Ty" 0.67015481211443184;
	setAttr ".RightFootExtraFinger2Tz" 5.3042286336142981;
	setAttr ".RightFootExtraFinger3Tx" -1.8066446346447202;
	setAttr ".RightFootExtraFinger3Ty" 0.67015480679033179;
	setAttr ".RightFootExtraFinger3Tz" 6.0310790313053868;
	setAttr ".RightFootExtraFinger4Tx" -1.8066446346447202;
	setAttr ".RightFootExtraFinger4Ty" 0.67015480111129189;
	setAttr ".RightFootExtraFinger4Tz" 6.7720361326740717;
	setAttr ".LeftInHandThumbTx" 25.452699672234459;
	setAttr ".LeftInHandThumbTy" 52.030188537027222;
	setAttr ".LeftInHandIndexTx" 25.452699672234459;
	setAttr ".LeftInHandIndexTy" 52.030188537027222;
	setAttr ".LeftInHandMiddleTx" 25.452699672234459;
	setAttr ".LeftInHandMiddleTy" 52.030188537027222;
	setAttr ".LeftInHandRingTx" 25.452699672234459;
	setAttr ".LeftInHandRingTy" 52.030188537027222;
	setAttr ".LeftInHandPinkyTx" 25.452699672234459;
	setAttr ".LeftInHandPinkyTy" 52.030188537027222;
	setAttr ".LeftInHandExtraFingerTx" 25.452699672234459;
	setAttr ".LeftInHandExtraFingerTy" 52.030188537027222;
	setAttr ".RightInHandThumbTx" -25.452698710347047;
	setAttr ".RightInHandThumbTy" 52.030293066859201;
	setAttr ".RightInHandIndexTx" -25.452698710347047;
	setAttr ".RightInHandIndexTy" 52.030293066859201;
	setAttr ".RightInHandMiddleTx" -25.452698710347047;
	setAttr ".RightInHandMiddleTy" 52.030293066859201;
	setAttr ".RightInHandRingTx" -25.452698710347047;
	setAttr ".RightInHandRingTy" 52.030293066859201;
	setAttr ".RightInHandPinkyTx" -25.452698710347047;
	setAttr ".RightInHandPinkyTy" 52.030293066859201;
	setAttr ".RightInHandExtraFingerTx" -25.452698710347047;
	setAttr ".RightInHandExtraFingerTy" 52.030293066859201;
	setAttr ".LeftInFootThumbTx" 3.1625157430882638;
	setAttr ".LeftInFootThumbTy" 2.8929016987450371;
	setAttr ".LeftInFootIndexTx" 3.1625157430882638;
	setAttr ".LeftInFootIndexTy" 2.8929017331742179;
	setAttr ".LeftInFootMiddleTx" 3.1625157430882638;
	setAttr ".LeftInFootMiddleTy" 2.8929017331742179;
	setAttr ".LeftInFootRingTx" 3.1625157430882638;
	setAttr ".LeftInFootRingTy" 2.8929017331742179;
	setAttr ".LeftInFootPinkyTx" 3.1625157430882638;
	setAttr ".LeftInFootPinkyTy" 2.8929017331742179;
	setAttr ".LeftInFootExtraFingerTx" 3.1625157430882638;
	setAttr ".LeftInFootExtraFingerTy" 2.8929017331742179;
	setAttr ".RightInFootThumbTx" -3.1625163809154553;
	setAttr ".RightInFootThumbTy" 2.8929017495014575;
	setAttr ".RightInFootThumbTz" 0.000155755128635003;
	setAttr ".RightInFootIndexTx" -3.1625163883691947;
	setAttr ".RightInFootIndexTy" 2.8929017498563985;
	setAttr ".RightInFootIndexTz" 0.000155755128635003;
	setAttr ".RightInFootMiddleTx" -3.1625163883691947;
	setAttr ".RightInFootMiddleTy" 2.8929017498563985;
	setAttr ".RightInFootMiddleTz" 0.000155755128635003;
	setAttr ".RightInFootRingTx" -3.1625163883691947;
	setAttr ".RightInFootRingTy" 2.8929017498563985;
	setAttr ".RightInFootRingTz" 0.000155755128635003;
	setAttr ".RightInFootPinkyTx" -3.1625163883691947;
	setAttr ".RightInFootPinkyTy" 2.8929017498563985;
	setAttr ".RightInFootPinkyTz" 0.000155755128635003;
	setAttr ".RightInFootExtraFingerTx" -3.1625163883691947;
	setAttr ".RightInFootExtraFingerTy" 2.8929017498563985;
	setAttr ".RightInFootExtraFingerTz" 0.000155755128635003;
	setAttr ".LeftShoulderExtraTx" 4.3847959288926068;
	setAttr ".LeftShoulderExtraTy" 52.030188537027222;
	setAttr ".RightShoulderExtraTx" -4.3848000751242937;
	setAttr ".RightShoulderExtraTy" 52.03029352828117;
createNode HIKProperty2State -n "HIKproperties1";
createNode HIKSkeletonGeneratorNode -n "HIKSkeletonGeneratorNode1";
	setAttr ".ihi" 0;
	setAttr ".WantIndexFinger" yes;
	setAttr ".WantMiddleFinger" yes;
	setAttr ".WantRingFinger" yes;
	setAttr ".WantPinkyFinger" yes;
	setAttr ".WantThumb" yes;
	setAttr ".WantToeBase" yes;
	setAttr ".HipsTy" 35.494000659722978;
	setAttr ".LeftUpLegTx" 3.1625157430882638;
	setAttr ".LeftUpLegTy" 33.268526655085935;
	setAttr ".LeftLegTx" 3.1625157430882638;
	setAttr ".LeftLegTy" 17.339300124007611;
	setAttr ".LeftFootTx" 3.1625157430882638;
	setAttr ".LeftFootTy" 2.8929017331742179;
	setAttr ".RightUpLegTx" -3.1625157430882638;
	setAttr ".RightUpLegTy" 33.268526655085935;
	setAttr ".RightLegTx" -3.1625167071053211;
	setAttr ".RightLegTy" 17.339300124007611;
	setAttr ".RightLegTz" 0.00015582718145634223;
	setAttr ".RightFootTx" -3.1625163809154553;
	setAttr ".RightFootTy" 2.892901734593976;
	setAttr ".RightFootTz" 0.00015582718145634223;
	setAttr ".SpineTy" 37.978580705903596;
	setAttr ".LeftArmTx" 6.2850118116046039;
	setAttr ".LeftArmTy" 52.030188537027222;
	setAttr ".LeftForeArmTx" 15.976813987303041;
	setAttr ".LeftForeArmTy" 52.030188537027222;
	setAttr ".LeftHandTx" 25.452699650938055;
	setAttr ".LeftHandTy" 52.030188537027222;
	setAttr ".RightArmTx" -6.2850202733743625;
	setAttr ".RightArmTy" 52.03029352828117;
	setAttr ".RightForeArmTx" -15.976869496370666;
	setAttr ".RightForeArmTy" 52.03029352828117;
	setAttr ".RightHandTx" -25.452698632260237;
	setAttr ".RightHandTy" 52.030293066859201;
	setAttr ".HeadTy" 58.565101088542924;
	setAttr ".LeftToeBaseTx" 3.162518734167699;
	setAttr ".LeftToeBaseTy" 0.67015482737685195;
	setAttr ".LeftToeBaseTz" 4.5981487217112722;
	setAttr ".RightToeBaseTx" -3.1629016260547553;
	setAttr ".RightToeBaseTy" 0.67015483341083326;
	setAttr ".RightToeBaseTz" 4.5983145461329542;
	setAttr ".LeftShoulderTx" 2.4845802154869925;
	setAttr ".LeftShoulderTy" 52.030139768270317;
	setAttr ".RightShoulderTx" -2.4845798768742258;
	setAttr ".RightShoulderTy" 52.030139768270317;
	setAttr ".NeckTy" 51.466300956598332;
	setAttr ".LeftFingerBaseTx" 28.579678267800855;
	setAttr ".LeftFingerBaseTy" 52.207974578907717;
	setAttr ".LeftFingerBaseTz" 0.46308468989824286;
	setAttr ".LeftFingerBaseRy" -0.0035633340000000005;
	setAttr ".RightFingerBaseTx" -28.579636825005689;
	setAttr ".RightFingerBaseTy" 52.208080067077674;
	setAttr ".RightFingerBaseTz" 0.46335938364838858;
	setAttr ".RightFingerBaseRy" -2.0000646359999998;
	setAttr ".Spine1Ty" 42.474487456135172;
	setAttr ".Spine2Ty" 46.970394206366748;
	setAttr ".Spine3Ty" 42.237860785070353;
	setAttr ".Spine4Ty" 43.657620811459267;
	setAttr ".Spine5Ty" 45.077380837848203;
	setAttr ".Spine6Ty" 46.49714086423711;
	setAttr ".Spine7Ty" 47.916900890626025;
	setAttr ".Spine8Ty" 49.33666091701496;
	setAttr ".Spine9Ty" 50.756420943403867;
	setAttr ".Neck1Ty" 52.176180969792789;
	setAttr ".Neck2Ty" 52.886060982987225;
	setAttr ".Neck3Ty" 53.595940996181689;
	setAttr ".Neck4Ty" 54.305821009376167;
	setAttr ".Neck5Ty" 55.015701022570632;
	setAttr ".Neck6Ty" 55.725581035765089;
	setAttr ".Neck7Ty" 56.435461048959532;
	setAttr ".Neck8Ty" 57.145341062153996;
	setAttr ".Neck9Ty" 57.855221075348453;
	setAttr ".LeftUpLegRollTx" 3.1625157430882638;
	setAttr ".LeftUpLegRollTy" 25.303913389546775;
	setAttr ".LeftLegRollTx" 3.1625157430882638;
	setAttr ".LeftLegRollTy" 10.116100928590914;
	setAttr ".RightUpLegRollTx" -3.162516225096792;
	setAttr ".RightUpLegRollTy" 25.303913389546775;
	setAttr ".RightUpLegRollTz" 7.7913590728171116e-005;
	setAttr ".RightLegRollTx" -3.162516544010388;
	setAttr ".RightLegRollTy" 10.116100929300792;
	setAttr ".RightLegRollTz" 0.00015582718145634223;
	setAttr ".LeftArmRollTx" 11.130912899453824;
	setAttr ".LeftArmRollTy" 52.030188537027222;
	setAttr ".LeftForeArmRollTx" 20.714756819120545;
	setAttr ".LeftForeArmRollTy" 52.030188537027222;
	setAttr ".RightArmRollTx" -11.130944884872516;
	setAttr ".RightArmRollTy" 52.03029352828117;
	setAttr ".RightForeArmRollTx" -20.714784064315452;
	setAttr ".RightForeArmRollTy" 52.030293297570189;
	setAttr ".HipsTranslationTy" 35.494000659722978;
	setAttr ".LeftHandThumb1Tx" 26.996247435966794;
	setAttr ".LeftHandThumb1Ty" 51.746768054409351;
	setAttr ".LeftHandThumb1Tz" 1.5200071404991811;
	setAttr ".LeftHandThumb2Tx" 27.888066125846542;
	setAttr ".LeftHandThumb2Ty" 51.556484929836579;
	setAttr ".LeftHandThumb2Tz" 1.7711109829269798;
	setAttr ".LeftHandThumb3Tx" 28.790728399749618;
	setAttr ".LeftHandThumb3Ty" 51.556480244628482;
	setAttr ".LeftHandThumb3Tz" 1.7711142987765209;
	setAttr ".LeftHandThumb4Tx" 29.737263292274363;
	setAttr ".LeftHandThumb4Ty" 51.556481273954503;
	setAttr ".LeftHandThumb4Tz" 1.7711113843641275;
	setAttr ".LeftHandIndex1Tx" 28.583972126135468;
	setAttr ".LeftHandIndex1Ty" 52.101080420592901;
	setAttr ".LeftHandIndex1Tz" 1.2322343654184413;
	setAttr ".LeftHandIndex2Tx" 30.082796671717936;
	setAttr ".LeftHandIndex2Ty" 52.101072576418737;
	setAttr ".LeftHandIndex2Tz" 1.2844811861934071;
	setAttr ".LeftHandIndex3Tx" 31.024213084438944;
	setAttr ".LeftHandIndex3Ty" 52.101067678246643;
	setAttr ".LeftHandIndex3Tz" 1.3172975123445598;
	setAttr ".LeftHandIndex4Tx" 31.718842826946155;
	setAttr ".LeftHandIndex4Ty" 52.101064057858579;
	setAttr ".LeftHandIndex4Tz" 1.3415111291606163;
	setAttr ".LeftHandMiddle1Tx" 28.579678289097256;
	setAttr ".LeftHandMiddle1Ty" 52.207974614401728;
	setAttr ".LeftHandMiddle1Tz" 0.46308468279944287;
	setAttr ".LeftHandMiddle2Tx" 30.305840872480449;
	setAttr ".LeftHandMiddle2Ty" 52.207974614401728;
	setAttr ".LeftHandMiddle2Tz" 0.46319203617913812;
	setAttr ".LeftHandMiddle3Tx" 31.287333973076745;
	setAttr ".LeftHandMiddle3Ty" 52.207974614401728;
	setAttr ".LeftHandMiddle3Tz" 0.46325300883829135;
	setAttr ".LeftHandMiddle4Tx" 31.999213065178765;
	setAttr ".LeftHandMiddle4Ty" 52.207974614401728;
	setAttr ".LeftHandMiddle4Tz" 0.46329687800334679;
	setAttr ".LeftHandRing1Tx" 28.609450809474833;
	setAttr ".LeftHandRing1Ty" 52.165037202357659;
	setAttr ".LeftHandRing1Tz" -0.28152382839311157;
	setAttr ".LeftHandRing2Tx" 30.22008295853167;
	setAttr ".LeftHandRing2Ty" 52.165037202357659;
	setAttr ".LeftHandRing2Tz" -0.28152379680345102;
	setAttr ".LeftHandRing3Tx" 31.038051382483573;
	setAttr ".LeftHandRing3Ty" 52.165037202357659;
	setAttr ".LeftHandRing3Tz" -0.28152383833143185;
	setAttr ".LeftHandRing4Tx" 31.72072430713072;
	setAttr ".LeftHandRing4Ty" 52.165037202357659;
	setAttr ".LeftHandRing4Tz" -0.28152412831741724;
	setAttr ".LeftHandPinky1Tx" 28.605374288005066;
	setAttr ".LeftHandPinky1Ty" 51.919082731582158;
	setAttr ".LeftHandPinky1Tz" -0.88392714011655382;
	setAttr ".LeftHandPinky2Tx" 29.685846924277882;
	setAttr ".LeftHandPinky2Ty" 51.919097142146398;
	setAttr ".LeftHandPinky2Tz" -0.88392714011655382;
	setAttr ".LeftHandPinky3Tx" 30.386676496164725;
	setAttr ".LeftHandPinky3Ty" 51.919106477068567;
	setAttr ".LeftHandPinky3Tz" -0.88392719087297489;
	setAttr ".LeftHandPinky4Tx" 30.978224711030759;
	setAttr ".LeftHandPinky4Ty" 51.919114356736713;
	setAttr ".LeftHandPinky4Tz" -0.88392691011543012;
	setAttr ".LeftHandExtraFinger1Tx" 28.605374288005066;
	setAttr ".LeftHandExtraFinger1Ty" 52.101080420592901;
	setAttr ".LeftHandExtraFinger1Tz" -1.593807153311013;
	setAttr ".LeftHandExtraFinger1Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger1Rz" -0.00029934100000000001;
	setAttr ".LeftHandExtraFinger2Tx" 29.330906917680661;
	setAttr ".LeftHandExtraFinger2Ty" 52.101072576418758;
	setAttr ".LeftHandExtraFinger2Tz" -1.593807153311013;
	setAttr ".LeftHandExtraFinger2Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger2Rz" -0.00029934100000000001;
	setAttr ".LeftHandExtraFinger3Tx" 30.031736489567496;
	setAttr ".LeftHandExtraFinger3Ty" 52.101067678246679;
	setAttr ".LeftHandExtraFinger3Tz" -1.5938072040674349;
	setAttr ".LeftHandExtraFinger3Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger3Rz" -0.00029934100000000001;
	setAttr ".LeftHandExtraFinger4Tx" 30.623284704433541;
	setAttr ".LeftHandExtraFinger4Ty" 52.101064057858608;
	setAttr ".LeftHandExtraFinger4Tz" -1.5938069233098897;
	setAttr ".LeftHandExtraFinger4Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger4Rz" -0.00029934100000000001;
	setAttr ".RightHandThumb1Tx" -26.996112938550109;
	setAttr ".RightHandThumb1Ty" 51.746874145977309;
	setAttr ".RightHandThumb1Tz" 1.5201422913604332;
	setAttr ".RightHandThumb2Tx" -27.887909469525226;
	setAttr ".RightHandThumb2Ty" 51.55659119887455;
	setAttr ".RightHandThumb2Tz" 1.7713250461801389;
	setAttr ".RightHandThumb3Tx" -28.79002121373107;
	setAttr ".RightHandThumb3Ty" 51.556600711266732;
	setAttr ".RightHandThumb3Tz" 1.8028509293722068;
	setAttr ".RightHandThumb4Tx" -29.735978838927881;
	setAttr ".RightHandThumb4Ty" 51.556607206668843;
	setAttr ".RightHandThumb4Tz" 1.8359090892826351;
	setAttr ".RightHandIndex1Tx" -28.583863184399235;
	setAttr ".RightHandIndex1Ty" 52.101186547654876;
	setAttr ".RightHandIndex1Tz" 1.2325094013307532;
	setAttr ".RightHandIndex2Tx" -30.082686175344495;
	setAttr ".RightHandIndex2Ty" 52.101186441172871;
	setAttr ".RightHandIndex2Tz" 1.1802083567259194;
	setAttr ".RightHandIndex3Tx" -31.024101647474481;
	setAttr ".RightHandIndex3Ty" 52.101186334690837;
	setAttr ".RightHandIndex3Tz" 1.1473578991887914;
	setAttr ".RightHandIndex4Tx" -31.718730676552266;
	setAttr ".RightHandIndex4Ty" 52.101186299196833;
	setAttr ".RightHandIndex4Tz" 1.1231189921873861;
	setAttr ".RightHandMiddle1Tx" -28.579637045068491;
	setAttr ".RightHandMiddle1Ty" 52.208080067077674;
	setAttr ".RightHandMiddle1Tz" 0.46335942269178931;
	setAttr ".RightHandMiddle2Tx" -30.304750003413567;
	setAttr ".RightHandMiddle2Ty" 52.208079925101671;
	setAttr ".RightHandMiddle2Tz" 0.40316204053802734;
	setAttr ".RightHandMiddle3Tx" -31.285646268839386;
	setAttr ".RightHandMiddle3Ty" 52.208079854113677;
	setAttr ".RightHandMiddle3Tz" 0.36893391140555298;
	setAttr ".RightHandMiddle4Tx" -31.997092518702143;
	setAttr ".RightHandMiddle4Ty" 52.208079783125655;
	setAttr ".RightHandMiddle4Tz" 0.34410817392761972;
	setAttr ".RightHandRing1Tx" -28.609475573639092;
	setAttr ".RightHandRing1Ty" 52.165141980647597;
	setAttr ".RightHandRing1Tz" -0.2812462110021316;
	setAttr ".RightHandRing2Tx" -30.219128365130928;
	setAttr ".RightHandRing2Ty" 52.16514183867158;
	setAttr ".RightHandRing2Tz" -0.33741464074580779;
	setAttr ".RightHandRing3Tx" -31.036599415200982;
	setAttr ".RightHandRing3Ty" 52.165141767683572;
	setAttr ".RightHandRing3Tz" -0.36594008721888704;
	setAttr ".RightHandRing4Tx" -31.718857258806821;
	setAttr ".RightHandRing4Ty" 52.165141732189568;
	setAttr ".RightHandRing4Tz" -0.38974730340642899;
	setAttr ".RightHandPinky1Tx" -28.605451856594108;
	setAttr ".RightHandPinky1Ty" 51.919186977462061;
	setAttr ".RightHandPinky1Tz" -0.88364948084265305;
	setAttr ".RightHandPinky2Tx" -29.686578750231678;
	setAttr ".RightHandPinky2Ty" 51.919163551421619;
	setAttr ".RightHandPinky2Tz" -0.92137513165479556;
	setAttr ".RightHandPinky3Tx" -30.387832706137416;
	setAttr ".RightHandPinky3Ty" 51.919148359989343;
	setAttr ".RightHandPinky3Tz" -0.94584521037261826;
	setAttr ".RightHandPinky4Tx" -30.979739126458128;
	setAttr ".RightHandPinky4Ty" 51.919135511161123;
	setAttr ".RightHandPinky4Tz" -0.96649963752238022;
	setAttr ".RightHandExtraFinger1Tx" -28.605451856594108;
	setAttr ".RightHandExtraFinger1Ty" 52.101186547654876;
	setAttr ".RightHandExtraFinger1Tz" -1.5935294940371132;
	setAttr ".RightHandExtraFinger1Ry" -2.0000646579999999;
	setAttr ".RightHandExtraFinger2Tx" -29.331638743634453;
	setAttr ".RightHandExtraFinger2Ty" 52.101186441172878;
	setAttr ".RightHandExtraFinger2Tz" -1.6312551448492552;
	setAttr ".RightHandExtraFinger2Ry" -2.0000646359999998;
	setAttr ".RightHandExtraFinger3Tx" -30.032892699540177;
	setAttr ".RightHandExtraFinger3Ty" 52.101186334690873;
	setAttr ".RightHandExtraFinger3Tz" -1.6557252235670779;
	setAttr ".RightHandExtraFinger3Ry" -2.0000646359999998;
	setAttr ".RightHandExtraFinger4Tx" -30.624799119860882;
	setAttr ".RightHandExtraFinger4Ty" 52.101186299196868;
	setAttr ".RightHandExtraFinger4Tz" -1.6763796507168394;
	setAttr ".RightHandExtraFinger4Ry" -2.0000646359999998;
	setAttr ".LeftFootThumb1Tx" 2.1950278578185349;
	setAttr ".LeftFootThumb1Ty" 1.7744335681651164;
	setAttr ".LeftFootThumb1Tz" 0.68507794453592652;
	setAttr ".LeftFootThumb2Tx" 1.615477393558916;
	setAttr ".LeftFootThumb2Ty" 0.94569626370318949;
	setAttr ".LeftFootThumb2Tz" 1.2749223760273583;
	setAttr ".LeftFootThumb3Tx" 1.228783380632918;
	setAttr ".LeftFootThumb3Ty" 0.67015473189799035;
	setAttr ".LeftFootThumb3Tz" 2.2716664685490082;
	setAttr ".LeftFootThumb4Tx" 1.2287833845372578;
	setAttr ".LeftFootThumb4Ty" 0.67015472124979025;
	setAttr ".LeftFootThumb4Tz" 3.4419227710415905;
	setAttr ".LeftFootIndex1Tx" 2.5238080043516544;
	setAttr ".LeftFootIndex1Ty" 0.67015481424407186;
	setAttr ".LeftFootIndex1Tz" 4.5981487217112722;
	setAttr ".LeftFootIndex2Tx" 2.523808006836235;
	setAttr ".LeftFootIndex2Ty" 0.67015480821009166;
	setAttr ".LeftFootIndex2Tz" 5.2636635589381218;
	setAttr ".LeftFootIndex3Tx" 2.5238080089658745;
	setAttr ".LeftFootIndex3Ty" 0.6701548021761119;
	setAttr ".LeftFootIndex3Tz" 5.949910591025116;
	setAttr ".LeftFootIndex4Tx" 2.5238080114504546;
	setAttr ".LeftFootIndex4Ty" 0.67015479578719162;
	setAttr ".LeftFootIndex4Tz" 6.6908556741251788;
	setAttr ".LeftFootMiddle1Tx" 3.1649021637657389;
	setAttr ".LeftFootMiddle1Ty" 0.67015483057131198;
	setAttr ".LeftFootMiddle1Tz" 4.5981487217112722;
	setAttr ".LeftFootMiddle2Tx" 3.1649021658953798;
	setAttr ".LeftFootMiddle2Ty" 0.67015482489227196;
	setAttr ".LeftFootMiddle2Tz" 5.2632635415506854;
	setAttr ".LeftFootMiddle3Tx" 3.1649021680250193;
	setAttr ".LeftFootMiddle3Ty" 0.67015481921323194;
	setAttr ".LeftFootMiddle3Tz" 5.9096490184497803;
	setAttr ".LeftFootMiddle4Tx" 3.1649021701546594;
	setAttr ".LeftFootMiddle4Ty" 0.67015481317925196;
	setAttr ".LeftFootMiddle4Tz" 6.5896677833638098;
	setAttr ".LeftFootRing1Tx" 3.8063424642236572;
	setAttr ".LeftFootRing1Ty" 0.67015484760843247;
	setAttr ".LeftFootRing1Tz" 4.5981487217112722;
	setAttr ".LeftFootRing2Tx" 3.8063424642236572;
	setAttr ".LeftFootRing2Ty" 0.67015484192939245;
	setAttr ".LeftFootRing2Tz" 5.2223928422324262;
	setAttr ".LeftFootRing3Tx" 3.8063424677730584;
	setAttr ".LeftFootRing3Ty" 0.6701548366052924;
	setAttr ".LeftFootRing3Tz" 5.8466336227681177;
	setAttr ".LeftFootRing4Tx" 3.806342471322457;
	setAttr ".LeftFootRing4Ty" 0.67015483092625228;
	setAttr ".LeftFootRing4Tz" 6.4864751027101804;
	setAttr ".LeftFootPinky1Tx" 4.4473261162611486;
	setAttr ".LeftFootPinky1Ty" 0.67015486393567292;
	setAttr ".LeftFootPinky1Tz" 4.5981487217112722;
	setAttr ".LeftFootPinky2Tx" 4.4473261198105494;
	setAttr ".LeftFootPinky2Ty" 0.67015485861157276;
	setAttr ".LeftFootPinky2Tz" 5.1748995764372747;
	setAttr ".LeftFootPinky3Tx" 4.4473261198105494;
	setAttr ".LeftFootPinky3Ty" 0.67015485399735253;
	setAttr ".LeftFootPinky3Tz" 5.7300092455944345;
	setAttr ".LeftFootPinky4Tx" 4.4473261233599484;
	setAttr ".LeftFootPinky4Ty" 0.67015484831831262;
	setAttr ".LeftFootPinky4Tz" 6.3396530970624152;
	setAttr ".LeftFootExtraFinger1Tx" 1.8052582325900306;
	setAttr ".LeftFootExtraFinger1Ty" 0.67015486287085269;
	setAttr ".LeftFootExtraFinger1Tz" 4.5981487217112722;
	setAttr ".LeftFootExtraFinger2Tx" 1.8052582347196706;
	setAttr ".LeftFootExtraFinger2Ty" 0.67015485648193263;
	setAttr ".LeftFootExtraFinger2Tz" 5.3042287223493023;
	setAttr ".LeftFootExtraFinger3Tx" 1.8052582372042512;
	setAttr ".LeftFootExtraFinger3Ty" 0.67015485009301246;
	setAttr ".LeftFootExtraFinger3Tz" 6.0310791235897847;
	setAttr ".LeftFootExtraFinger4Tx" 1.8052582396888313;
	setAttr ".LeftFootExtraFinger4Ty" 0.67015484334915243;
	setAttr ".LeftFootExtraFinger4Tz" 6.7720362214090732;
	setAttr ".RightFootThumb1Tx" -2.1935292457400406;
	setAttr ".RightFootThumb1Ty" 1.7744336867150787;
	setAttr ".RightFootThumb1Tz" 0.68507791010674579;
	setAttr ".RightFootThumb2Tx" -1.6149770236284755;
	setAttr ".RightFootThumb2Ty" 0.94569641845703256;
	setAttr ".RightFootThumb2Tz" 1.2749223444376978;
	setAttr ".RightFootThumb3Tx" -1.2280924178572554;
	setAttr ".RightFootThumb3Ty" 0.67015489162099318;
	setAttr ".RightFootThumb3Tz" 2.2716664383791079;
	setAttr ".RightFootThumb4Tx" -1.2280924178572554;
	setAttr ".RightFootThumb4Ty" 0.67015488239255316;
	setAttr ".RightFootThumb4Tz" 3.4419227408716893;
	setAttr ".RightFootIndex1Tx" -2.5236234412272642;
	setAttr ".RightFootIndex1Ty" 0.67015486571037286;
	setAttr ".RightFootIndex1Tz" 4.5981486294268699;
	setAttr ".RightFootIndex2Tx" -2.5236234412272642;
	setAttr ".RightFootIndex2Ty" 0.67015486074121267;
	setAttr ".RightFootIndex2Tz" 5.2636634666537185;
	setAttr ".RightFootIndex3Tx" -2.5236234412272642;
	setAttr ".RightFootIndex3Ty" 0.6701548557720528;
	setAttr ".RightFootIndex3Tz" 5.9499104987407172;
	setAttr ".RightFootIndex4Tx" -2.5236234412272642;
	setAttr ".RightFootIndex4Ty" 0.67015485009301246;
	setAttr ".RightFootIndex4Tz" 6.6908555818407773;
	setAttr ".RightFootMiddle1Tx" -3.1660648588472897;
	setAttr ".RightFootMiddle1Ty" 0.67015484547879245;
	setAttr ".RightFootMiddle1Tz" 4.5981486258774691;
	setAttr ".RightFootMiddle2Tx" -3.1660648588472897;
	setAttr ".RightFootMiddle2Ty" 0.67015484050963225;
	setAttr ".RightFootMiddle2Tz" 5.2632634457168832;
	setAttr ".RightFootMiddle3Tx" -3.1660648588472897;
	setAttr ".RightFootMiddle3Ty" 0.67015483554047228;
	setAttr ".RightFootMiddle3Tz" 5.9096489226159754;
	setAttr ".RightFootMiddle4Tx" -3.1660648588472897;
	setAttr ".RightFootMiddle4Ty" 0.67015483021637234;
	setAttr ".RightFootMiddle4Tz" 6.5896676875300093;
	setAttr ".RightFootRing1Tx" -3.8049568707223043;
	setAttr ".RightFootRing1Ty" 0.67015482986143227;
	setAttr ".RightFootRing1Tz" 4.5981486223280692;
	setAttr ".RightFootRing2Tx" -3.8049568707223043;
	setAttr ".RightFootRing2Ty" 0.67015482489227196;
	setAttr ".RightFootRing2Tz" 5.2223927463986231;
	setAttr ".RightFootRing3Tx" -3.8049568707223043;
	setAttr ".RightFootRing3Ty" 0.67015482027805207;
	setAttr ".RightFootRing3Tz" 5.846633526934319;
	setAttr ".RightFootRing4Tx" -3.8049568707223043;
	setAttr ".RightFootRing4Ty" 0.67015481530889187;
	setAttr ".RightFootRing4Tz" 6.486475006876379;
	setAttr ".RightFootPinky1Tx" -4.44739830395969;
	setAttr ".RightFootPinky1Ty" 0.67015480927491167;
	setAttr ".RightFootPinky1Tz" 4.5981486223280692;
	setAttr ".RightFootPinky2Tx" -4.44739830395969;
	setAttr ".RightFootPinky2Ty" 0.67015480501563174;
	setAttr ".RightFootPinky2Tz" 5.1748994770540735;
	setAttr ".RightFootPinky3Tx" -4.44739830395969;
	setAttr ".RightFootPinky3Ty" 0.6701548007563517;
	setAttr ".RightFootPinky3Tz" 5.7300091497606349;
	setAttr ".RightFootPinky4Tx" -4.44739830395969;
	setAttr ".RightFootPinky4Ty" 0.67015479614213158;
	setAttr ".RightFootPinky4Tz" 6.339652997679214;
	setAttr ".RightFootExtraFinger1Tx" -1.8066446346447202;
	setAttr ".RightFootExtraFinger1Ty" 0.670154817438532;
	setAttr ".RightFootExtraFinger1Tz" 4.5981486294268699;
	setAttr ".RightFootExtraFinger2Tx" -1.8066446346447202;
	setAttr ".RightFootExtraFinger2Ty" 0.67015481211443184;
	setAttr ".RightFootExtraFinger2Tz" 5.3042286336142981;
	setAttr ".RightFootExtraFinger3Tx" -1.8066446346447202;
	setAttr ".RightFootExtraFinger3Ty" 0.67015480679033179;
	setAttr ".RightFootExtraFinger3Tz" 6.0310790313053868;
	setAttr ".RightFootExtraFinger4Tx" -1.8066446346447202;
	setAttr ".RightFootExtraFinger4Ty" 0.67015480111129189;
	setAttr ".RightFootExtraFinger4Tz" 6.7720361326740717;
	setAttr ".LeftInHandThumbTx" 25.452699672234459;
	setAttr ".LeftInHandThumbTy" 52.030188537027222;
	setAttr ".LeftInHandIndexTx" 25.452699672234459;
	setAttr ".LeftInHandIndexTy" 52.030188537027222;
	setAttr ".LeftInHandMiddleTx" 25.452699672234459;
	setAttr ".LeftInHandMiddleTy" 52.030188537027222;
	setAttr ".LeftInHandRingTx" 25.452699672234459;
	setAttr ".LeftInHandRingTy" 52.030188537027222;
	setAttr ".LeftInHandPinkyTx" 25.452699672234459;
	setAttr ".LeftInHandPinkyTy" 52.030188537027222;
	setAttr ".LeftInHandExtraFingerTx" 25.452699672234459;
	setAttr ".LeftInHandExtraFingerTy" 52.030188537027222;
	setAttr ".RightInHandThumbTx" -25.452698710347047;
	setAttr ".RightInHandThumbTy" 52.030293066859201;
	setAttr ".RightInHandIndexTx" -25.452698710347047;
	setAttr ".RightInHandIndexTy" 52.030293066859201;
	setAttr ".RightInHandMiddleTx" -25.452698710347047;
	setAttr ".RightInHandMiddleTy" 52.030293066859201;
	setAttr ".RightInHandRingTx" -25.452698710347047;
	setAttr ".RightInHandRingTy" 52.030293066859201;
	setAttr ".RightInHandPinkyTx" -25.452698710347047;
	setAttr ".RightInHandPinkyTy" 52.030293066859201;
	setAttr ".RightInHandExtraFingerTx" -25.452698710347047;
	setAttr ".RightInHandExtraFingerTy" 52.030293066859201;
	setAttr ".LeftInFootThumbTx" 3.1625157430882638;
	setAttr ".LeftInFootThumbTy" 2.8929016987450371;
	setAttr ".LeftInFootIndexTx" 3.1625157430882638;
	setAttr ".LeftInFootIndexTy" 2.8929017331742179;
	setAttr ".LeftInFootMiddleTx" 3.1625157430882638;
	setAttr ".LeftInFootMiddleTy" 2.8929017331742179;
	setAttr ".LeftInFootRingTx" 3.1625157430882638;
	setAttr ".LeftInFootRingTy" 2.8929017331742179;
	setAttr ".LeftInFootPinkyTx" 3.1625157430882638;
	setAttr ".LeftInFootPinkyTy" 2.8929017331742179;
	setAttr ".LeftInFootExtraFingerTx" 3.1625157430882638;
	setAttr ".LeftInFootExtraFingerTy" 2.8929017331742179;
	setAttr ".RightInFootThumbTx" -3.1625163809154553;
	setAttr ".RightInFootThumbTy" 2.8929017495014575;
	setAttr ".RightInFootThumbTz" 0.000155755128635003;
	setAttr ".RightInFootIndexTx" -3.1625163883691947;
	setAttr ".RightInFootIndexTy" 2.8929017498563985;
	setAttr ".RightInFootIndexTz" 0.000155755128635003;
	setAttr ".RightInFootMiddleTx" -3.1625163883691947;
	setAttr ".RightInFootMiddleTy" 2.8929017498563985;
	setAttr ".RightInFootMiddleTz" 0.000155755128635003;
	setAttr ".RightInFootRingTx" -3.1625163883691947;
	setAttr ".RightInFootRingTy" 2.8929017498563985;
	setAttr ".RightInFootRingTz" 0.000155755128635003;
	setAttr ".RightInFootPinkyTx" -3.1625163883691947;
	setAttr ".RightInFootPinkyTy" 2.8929017498563985;
	setAttr ".RightInFootPinkyTz" 0.000155755128635003;
	setAttr ".RightInFootExtraFingerTx" -3.1625163883691947;
	setAttr ".RightInFootExtraFingerTy" 2.8929017498563985;
	setAttr ".RightInFootExtraFingerTz" 0.000155755128635003;
	setAttr ".LeftShoulderExtraTx" 4.3847959288926068;
	setAttr ".LeftShoulderExtraTy" 52.030188537027222;
	setAttr ".RightShoulderExtraTx" -4.3848000751242937;
	setAttr ".RightShoulderExtraTy" 52.03029352828117;
createNode skinCluster -n "skinCluster1";
	setAttr -s 356 ".wl";
	setAttr -s 5 ".wl[0].w";
	setAttr ".wl[0].w[0]" 0.0223938950288201;
	setAttr ".wl[0].w[1]" 0.26274149493590371;
	setAttr ".wl[0].w[2]" 0.22250495421538238;
	setAttr ".wl[0].w[5]" 0.26673953863369415;
	setAttr ".wl[0].w[6]" 0.22562011718619968;
	setAttr -s 5 ".wl[1].w";
	setAttr ".wl[1].w[0]" 0.037914362505449647;
	setAttr ".wl[1].w[1]" 0.42121195808666112;
	setAttr ".wl[1].w[2]" 0.36107890609762444;
	setAttr ".wl[1].w[5]" 0.09321944222288972;
	setAttr ".wl[1].w[6]" 0.086575331087374932;
	setAttr -s 5 ".wl[2].w";
	setAttr ".wl[2].w[0]" 0.069334809518073914;
	setAttr ".wl[2].w[1]" 0.39753780342687944;
	setAttr ".wl[2].w[2]" 0.36467828675767083;
	setAttr ".wl[2].w[5]" 0.085932930505744229;
	setAttr ".wl[2].w[6]" 0.08251616979163158;
	setAttr -s 5 ".wl[3].w";
	setAttr ".wl[3].w[0]" 0.23010631084961169;
	setAttr ".wl[3].w[1]" 0.27101356118141007;
	setAttr ".wl[3].w[5]" 0.27274386698638375;
	setAttr ".wl[3].w[6]" 0.081702960167600022;
	setAttr ".wl[3].w[9]" 0.14443330081499453;
	setAttr -s 5 ".wl[4].w";
	setAttr ".wl[4].w[0]" 0.28864748535264473;
	setAttr ".wl[4].w[1]" 0.34330642056672461;
	setAttr ".wl[4].w[2]" 0.10138601768014797;
	setAttr ".wl[4].w[5]" 0.14161659428536488;
	setAttr ".wl[4].w[9]" 0.12504348211511795;
	setAttr -s 5 ".wl[5].w";
	setAttr ".wl[5].w[0]" 0.30646098452503934;
	setAttr ".wl[5].w[1]" 0.3585278908866274;
	setAttr ".wl[5].w[2]" 0.11613547768376378;
	setAttr ".wl[5].w[5]" 0.1042253595765331;
	setAttr ".wl[5].w[9]" 0.11465028732803648;
	setAttr -s 5 ".wl[6].w";
	setAttr ".wl[6].w[0]" 0.20610267525562126;
	setAttr ".wl[6].w[5]" 0.11596925646128342;
	setAttr ".wl[6].w[9]" 0.24296542830527446;
	setAttr ".wl[6].w[10]" 0.2425448976254172;
	setAttr ".wl[6].w[11]" 0.19241774235240358;
	setAttr -s 5 ".wl[7].w";
	setAttr ".wl[7].w[0]" 0.19699823216971118;
	setAttr ".wl[7].w[1]" 0.16531630458414814;
	setAttr ".wl[7].w[9]" 0.2260554845020841;
	setAttr ".wl[7].w[10]" 0.22573047993598422;
	setAttr ".wl[7].w[11]" 0.18589949880807241;
	setAttr -s 5 ".wl[8].w";
	setAttr ".wl[8].w[9]" 0.13319191640471895;
	setAttr ".wl[8].w[10]" 0.13382880289201554;
	setAttr ".wl[8].w[12]" 0.19089834306108014;
	setAttr ".wl[8].w[13]" 0.2868269187562521;
	setAttr ".wl[8].w[14]" 0.2552540188859333;
	setAttr -s 2 ".wl[9].w";
	setAttr ".wl[9].w[12]" 0.48150333284974656;
	setAttr ".wl[9].w[60]" 0.51849666715025355;
	setAttr -s 5 ".wl[10].w";
	setAttr ".wl[10].w[11]" 0.0023329793475568295;
	setAttr ".wl[10].w[12]" 0.31959970166046181;
	setAttr ".wl[10].w[13]" 0.3260445494650594;
	setAttr ".wl[10].w[14]" 0.16701577042528196;
	setAttr ".wl[10].w[60]" 0.18500699910164001;
	setAttr -s 5 ".wl[11].w";
	setAttr ".wl[11].w[11]" 0.085693884006248444;
	setAttr ".wl[11].w[12]" 0.18708431121299479;
	setAttr ".wl[11].w[13]" 0.37992209102128038;
	setAttr ".wl[11].w[14]" 0.29512722064899483;
	setAttr ".wl[11].w[60]" 0.052172493110481583;
	setAttr -s 4 ".wl[12].w";
	setAttr ".wl[12].w[12]" 0.23827981119014591;
	setAttr ".wl[12].w[14]" 0.25793574517220824;
	setAttr ".wl[12].w[60]" 0.25189222181882298;
	setAttr ".wl[12].w[61]" 0.25189222181882298;
	setAttr -s 5 ".wl[13].w[12:16]"  0.10616361266722152 0.37521761756154776 
		0.37059608822181328 0.081055390405781691 0.066967291143635713;
	setAttr -s 3 ".wl[14].w";
	setAttr ".wl[14].w[12]" 0.098908821872547209;
	setAttr ".wl[14].w[60]" 0.45054558906372649;
	setAttr ".wl[14].w[61]" 0.45054558906372633;
	setAttr -s 4 ".wl[15].w";
	setAttr ".wl[15].w[12]" 0.15579068729208395;
	setAttr ".wl[15].w[14]" 0.1300793346592993;
	setAttr ".wl[15].w[60]" 0.35706498902430839;
	setAttr ".wl[15].w[61]" 0.35706498902430839;
	setAttr -s 5 ".wl[16].w";
	setAttr ".wl[16].w[12]" 0.14930999032169032;
	setAttr ".wl[16].w[13]" 0.28460084161358451;
	setAttr ".wl[16].w[14]" 0.28205727237832678;
	setAttr ".wl[16].w[60]" 0.14201594784319921;
	setAttr ".wl[16].w[61]" 0.14201594784319921;
	setAttr -s 5 ".wl[17].w";
	setAttr ".wl[17].w[11]" 0.1017892507129019;
	setAttr ".wl[17].w[12]" 0.10158621152003058;
	setAttr ".wl[17].w[36]" 0.1017892507129019;
	setAttr ".wl[17].w[60]" 0.34741764352708276;
	setAttr ".wl[17].w[61]" 0.34741764352708276;
	setAttr -s 5 ".wl[18].w";
	setAttr ".wl[18].w[11]" 0.12454034341410027;
	setAttr ".wl[18].w[12]" 0.14209680229985219;
	setAttr ".wl[18].w[13]" 0.14458576661519632;
	setAttr ".wl[18].w[60]" 0.29438854383542562;
	setAttr ".wl[18].w[61]" 0.29438854383542562;
	setAttr -s 5 ".wl[19].w";
	setAttr ".wl[19].w[12]" 0.15867347807890211;
	setAttr ".wl[19].w[13]" 0.26895087034470283;
	setAttr ".wl[19].w[14]" 0.26741647895964915;
	setAttr ".wl[19].w[60]" 0.15247958630837297;
	setAttr ".wl[19].w[61]" 0.15247958630837297;
	setAttr -s 5 ".wl[20].w";
	setAttr ".wl[20].w[11]" 0.13786821899023155;
	setAttr ".wl[20].w[12]" 0.13786153295280329;
	setAttr ".wl[20].w[36]" 0.13786821899023155;
	setAttr ".wl[20].w[60]" 0.29320101453336678;
	setAttr ".wl[20].w[61]" 0.29320101453336678;
	setAttr -s 5 ".wl[21].w";
	setAttr ".wl[21].w[11]" 0.15441038610663915;
	setAttr ".wl[21].w[12]" 0.17731617398885577;
	setAttr ".wl[21].w[13]" 0.17976824237360448;
	setAttr ".wl[21].w[60]" 0.24425259876545036;
	setAttr ".wl[21].w[61]" 0.24425259876545025;
	setAttr -s 5 ".wl[22].w";
	setAttr ".wl[22].w[12]" 0.17064257222907683;
	setAttr ".wl[22].w[13]" 0.29650842751256917;
	setAttr ".wl[22].w[14]" 0.29211518323092511;
	setAttr ".wl[22].w[15]" 0.12795248199384834;
	setAttr ".wl[22].w[60]" 0.11278133503358059;
	setAttr -s 5 ".wl[23].w";
	setAttr ".wl[23].w[11]" 0.19785723988668005;
	setAttr ".wl[23].w[12]" 0.19436989707751606;
	setAttr ".wl[23].w[36]" 0.19487205627218812;
	setAttr ".wl[23].w[60]" 0.21529417618468397;
	setAttr ".wl[23].w[61]" 0.1976066305789318;
	setAttr -s 5 ".wl[24].w";
	setAttr ".wl[24].w[11]" 0.19868115951714638;
	setAttr ".wl[24].w[12]" 0.23169298329151014;
	setAttr ".wl[24].w[13]" 0.23414509367529626;
	setAttr ".wl[24].w[60]" 0.17376954579473841;
	setAttr ".wl[24].w[61]" 0.16171121772130878;
	setAttr -s 5 ".wl[25].w";
	setAttr ".wl[25].w[12]" 0.11662682855584378;
	setAttr ".wl[25].w[13]" 0.31963527647158235;
	setAttr ".wl[25].w[14]" 0.32080240506128122;
	setAttr ".wl[25].w[15]" 0.14208535465688799;
	setAttr ".wl[25].w[32]" 0.10085013525440478;
	setAttr -s 5 ".wl[26].w";
	setAttr ".wl[26].w[0]" 0.20688540211374348;
	setAttr ".wl[26].w[5]" 0.13224320493925279;
	setAttr ".wl[26].w[9]" 0.2332236969617614;
	setAttr ".wl[26].w[10]" 0.23282761816472294;
	setAttr ".wl[26].w[11]" 0.19482007782051936;
	setAttr -s 5 ".wl[27].w";
	setAttr ".wl[27].w[0]" 0.19855624328539698;
	setAttr ".wl[27].w[1]" 0.17443790933430248;
	setAttr ".wl[27].w[9]" 0.2192228316970557;
	setAttr ".wl[27].w[10]" 0.21891674629144969;
	setAttr ".wl[27].w[11]" 0.18886626939179513;
	setAttr -s 5 ".wl[28].w";
	setAttr ".wl[28].w[0]" 0.15067278799766606;
	setAttr ".wl[28].w[1]" 0.15067278799766606;
	setAttr ".wl[28].w[12]" 0.16073461991898333;
	setAttr ".wl[28].w[13]" 0.2697223586102816;
	setAttr ".wl[28].w[14]" 0.26819744547540286;
	setAttr -s 5 ".wl[29].w";
	setAttr ".wl[29].w[0]" 0.22771759095656358;
	setAttr ".wl[29].w[1]" 0.25851951929113198;
	setAttr ".wl[29].w[5]" 0.25978110821750433;
	setAttr ".wl[29].w[6]" 0.097193413218978814;
	setAttr ".wl[29].w[9]" 0.15678836831582135;
	setAttr -s 5 ".wl[30].w";
	setAttr ".wl[30].w[0]" 0.27239789999769276;
	setAttr ".wl[30].w[1]" 0.30937758050554931;
	setAttr ".wl[30].w[2]" 0.11941951419440361;
	setAttr ".wl[30].w[5]" 0.15692022427778549;
	setAttr ".wl[30].w[9]" 0.14188478102456881;
	setAttr -s 5 ".wl[31].w";
	setAttr ".wl[31].w[0]" 0.30144428471068768;
	setAttr ".wl[31].w[1]" 0.34564051368918625;
	setAttr ".wl[31].w[2]" 0.12593224843364598;
	setAttr ".wl[31].w[5]" 0.10675107694426776;
	setAttr ".wl[31].w[9]" 0.12023187622221229;
	setAttr -s 5 ".wl[32].w";
	setAttr ".wl[32].w[0]" 0.034890072018685846;
	setAttr ".wl[32].w[1]" 0.24451070109256492;
	setAttr ".wl[32].w[2]" 0.23595132850965506;
	setAttr ".wl[32].w[5]" 0.24666028488016165;
	setAttr ".wl[32].w[6]" 0.2379876134989326;
	setAttr -s 5 ".wl[33].w";
	setAttr ".wl[33].w[0]" 0.051678599576397102;
	setAttr ".wl[33].w[1]" 0.3539172431361417;
	setAttr ".wl[33].w[2]" 0.34178149456899631;
	setAttr ".wl[33].w[5]" 0.12763941947412411;
	setAttr ".wl[33].w[6]" 0.12498324324434078;
	setAttr -s 5 ".wl[34].w";
	setAttr ".wl[34].w[0]" 0.06310220786555594;
	setAttr ".wl[34].w[1]" 0.39075194199400709;
	setAttr ".wl[34].w[2]" 0.37684782977774151;
	setAttr ".wl[34].w[5]" 0.085369283501677551;
	setAttr ".wl[34].w[6]" 0.083928736861017969;
	setAttr -s 5 ".wl[35].w";
	setAttr ".wl[35].w[0]" 0.048064328102208911;
	setAttr ".wl[35].w[1]" 0.41708197765553984;
	setAttr ".wl[35].w[2]" 0.40525049596199375;
	setAttr ".wl[35].w[5]" 0.065171790795843162;
	setAttr ".wl[35].w[6]" 0.064431407484414296;
	setAttr -s 5 ".wl[36].w";
	setAttr ".wl[36].w[0]" 0.048787118768589363;
	setAttr ".wl[36].w[1]" 0.4142514812595377;
	setAttr ".wl[36].w[2]" 0.40402680933532398;
	setAttr ".wl[36].w[5]" 0.066802059733402669;
	setAttr ".wl[36].w[6]" 0.066132530903146095;
	setAttr -s 5 ".wl[37].w";
	setAttr ".wl[37].w[0]" 0.32280625850889161;
	setAttr ".wl[37].w[1]" 0.38695419150642835;
	setAttr ".wl[37].w[2]" 0.10949878511102437;
	setAttr ".wl[37].w[5]" 0.082173418416736796;
	setAttr ".wl[37].w[9]" 0.098567346456918933;
	setAttr -s 5 ".wl[38].w";
	setAttr ".wl[38].w[0]" 0.32249312009387493;
	setAttr ".wl[38].w[1]" 0.38751159637281296;
	setAttr ".wl[38].w[2]" 0.10824188681690104;
	setAttr ".wl[38].w[5]" 0.083079876719505008;
	setAttr ".wl[38].w[9]" 0.098673519996906156;
	setAttr -s 5 ".wl[39].w[12:16]"  0.11151328906196709 0.38042733956810093 
		0.37438520243002427 0.081521668524505209 0.052152500415402425;
	setAttr -s 5 ".wl[40].w[12:16]"  0.10848791075288193 0.37510759299822055 
		0.36906352443203805 0.079128669377391256 0.068212302439468145;
	setAttr -s 5 ".wl[41].w[11:15]"  0.01872884266292766 0.053342846882695624 
		0.45476852412702057 0.43864186704178953 0.034517919285566537;
	setAttr -s 5 ".wl[42].w[12:16]"  0.03634977236636476 0.47353274316039889 
		0.45092745459574052 0.022632327824563567 0.016557702052932312;
	setAttr -s 2 ".wl[43].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[44].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 3 ".wl[45].w";
	setAttr ".wl[45].w[12]" 0.10346440405053728;
	setAttr ".wl[45].w[60]" 0.45544123207978249;
	setAttr ".wl[45].w[61]" 0.44109436386968021;
	setAttr -s 2 ".wl[46].w[60:61]"  0.47323975282440994 0.52676024717559;
	setAttr -s 2 ".wl[47].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 5 ".wl[48].w";
	setAttr ".wl[48].w[1]" 0.09325616705292078;
	setAttr ".wl[48].w[2]" 0.38643887287325901;
	setAttr ".wl[48].w[5]" 0.096944704366417667;
	setAttr ".wl[48].w[6]" 0.41852920694936774;
	setAttr ".wl[48].w[7]" 0.004831048758034891;
	setAttr -s 5 ".wl[49].w";
	setAttr ".wl[49].w[1]" 0.12409706802544999;
	setAttr ".wl[49].w[2]" 0.85161702879154055;
	setAttr ".wl[49].w[3]" 0.0046836437550434023;
	setAttr ".wl[49].w[5]" 0.0081292653820973556;
	setAttr ".wl[49].w[6]" 0.011472994045868814;
	setAttr -s 5 ".wl[50].w";
	setAttr ".wl[50].w[1]" 0.2601596748177018;
	setAttr ".wl[50].w[2]" 0.67109525504346135;
	setAttr ".wl[50].w[3]" 0.020860812047332401;
	setAttr ".wl[50].w[5]" 0.021223353524021195;
	setAttr ".wl[50].w[6]" 0.026660904567483362;
	setAttr -s 5 ".wl[51].w";
	setAttr ".wl[51].w[1]" 0.30504458911796123;
	setAttr ".wl[51].w[2]" 0.59482408323620684;
	setAttr ".wl[51].w[3]" 0.036164792567247653;
	setAttr ".wl[51].w[5]" 0.029058745599875941;
	setAttr ".wl[51].w[6]" 0.034907789478708269;
	setAttr -s 5 ".wl[52].w";
	setAttr ".wl[52].w[1]" 0.30341239304275386;
	setAttr ".wl[52].w[2]" 0.59903886724554223;
	setAttr ".wl[52].w[3]" 0.035245435025285994;
	setAttr ".wl[52].w[5]" 0.028289006710585544;
	setAttr ".wl[52].w[6]" 0.034014297975832317;
	setAttr -s 5 ".wl[53].w";
	setAttr ".wl[53].w[1]" 0.095213076254808474;
	setAttr ".wl[53].w[2]" 0.38480854376396229;
	setAttr ".wl[53].w[5]" 0.098940616648456117;
	setAttr ".wl[53].w[6]" 0.41601139670240023;
	setAttr ".wl[53].w[7]" 0.0050263666303729483;
	setAttr -s 5 ".wl[54].w";
	setAttr ".wl[54].w[1]" 0.12908788962701481;
	setAttr ".wl[54].w[2]" 0.8450946309981231;
	setAttr ".wl[54].w[3]" 0.0049896496143660039;
	setAttr ".wl[54].w[5]" 0.0086447348071191001;
	setAttr ".wl[54].w[6]" 0.01218309495337697;
	setAttr -s 5 ".wl[55].w";
	setAttr ".wl[55].w[1]" 0.26183789021597303;
	setAttr ".wl[55].w[2]" 0.66808681001753778;
	setAttr ".wl[55].w[3]" 0.021270016672011467;
	setAttr ".wl[55].w[5]" 0.021639103043176261;
	setAttr ".wl[55].w[6]" 0.027166180051301531;
	setAttr -s 5 ".wl[56].w";
	setAttr ".wl[56].w[13]" 0.38793004623510452;
	setAttr ".wl[56].w[14]" 0.50018402996036981;
	setAttr ".wl[56].w[15]" 0.059324128384204464;
	setAttr ".wl[56].w[16]" 0.029235469099508731;
	setAttr ".wl[56].w[32]" 0.023326326320812503;
	setAttr -s 5 ".wl[57].w[13:17]"  0.37887278992126555 0.48736472337692377 
		0.058553212384946554 0.042650858578143623 0.03255841573872046;
	setAttr -s 5 ".wl[58].w";
	setAttr ".wl[58].w[13]" 0.36501844648806014;
	setAttr ".wl[58].w[14]" 0.55033167296439744;
	setAttr ".wl[58].w[15]" 0.047645311432153295;
	setAttr ".wl[58].w[16]" 0.020039727469513779;
	setAttr ".wl[58].w[32]" 0.016964841645875414;
	setAttr -s 5 ".wl[59].w[13:17]"  0.35324051219506469 0.56286846206030516 
		0.039970905107801533 0.025672588875040959 0.018247531761787693;
	setAttr -s 5 ".wl[60].w";
	setAttr ".wl[60].w[13]" 0.32179176703670659;
	setAttr ".wl[60].w[14]" 0.40454644313893856;
	setAttr ".wl[60].w[15]" 0.13601436409205817;
	setAttr ".wl[60].w[28]" 0.065308347389993776;
	setAttr ".wl[60].w[32]" 0.072339078342302909;
	setAttr -s 5 ".wl[61].w";
	setAttr ".wl[61].w[13]" 0.30681247861097449;
	setAttr ".wl[61].w[14]" 0.34216288648813364;
	setAttr ".wl[61].w[15]" 0.15945009711051955;
	setAttr ".wl[61].w[28]" 0.093021023589491353;
	setAttr ".wl[61].w[32]" 0.098553514200880973;
	setAttr -s 5 ".wl[62].w";
	setAttr ".wl[62].w[13]" 0.27665192776472108;
	setAttr ".wl[62].w[14]" 0.30460229147728551;
	setAttr ".wl[62].w[15]" 0.1810964293892236;
	setAttr ".wl[62].w[28]" 0.11868840014107968;
	setAttr ".wl[62].w[32]" 0.11896095122769018;
	setAttr -s 5 ".wl[63].w";
	setAttr ".wl[63].w[13]" 0.29792781042640687;
	setAttr ".wl[63].w[14]" 0.31978940803847994;
	setAttr ".wl[63].w[15]" 0.16219907206760034;
	setAttr ".wl[63].w[16]" 0.11997595103030177;
	setAttr ".wl[63].w[24]" 0.10010775843721115;
	setAttr -s 5 ".wl[64].w[13:17]"  0.34379468030115046 0.4307514932533702 
		0.090247662194439471 0.076501440818254204 0.058704723432785703;
	setAttr -s 5 ".wl[65].w[13:17]"  0.33343294424634451 0.39738771348146495 
		0.11123018054139519 0.088918567832767859 0.06903059389802757;
	setAttr -s 5 ".wl[66].w";
	setAttr ".wl[66].w[13]" 0.067191615343747069;
	setAttr ".wl[66].w[14]" 0.73901045040109548;
	setAttr ".wl[66].w[15]" 0.12909933626855771;
	setAttr ".wl[66].w[16]" 0.036333468573350791;
	setAttr ".wl[66].w[32]" 0.028365129413249004;
	setAttr -s 5 ".wl[67].w[13:17]"  0.061693990100756366 0.72370805283315176 
		0.11936405538277869 0.059363566298604009 0.035870335384709157;
	setAttr -s 5 ".wl[68].w";
	setAttr ".wl[68].w[13]" 0.10567338634287099;
	setAttr ".wl[68].w[14]" 0.52012349018685644;
	setAttr ".wl[68].w[15]" 0.22235139648239666;
	setAttr ".wl[68].w[28]" 0.072720823457533224;
	setAttr ".wl[68].w[32]" 0.079130903530342647;
	setAttr -s 5 ".wl[69].w";
	setAttr ".wl[69].w[13]" 0.13499102744606936;
	setAttr ".wl[69].w[14]" 0.38893549175249914;
	setAttr ".wl[69].w[15]" 0.24328237768744879;
	setAttr ".wl[69].w[28]" 0.11365789646959491;
	setAttr ".wl[69].w[32]" 0.11913320664438783;
	setAttr -s 5 ".wl[70].w";
	setAttr ".wl[70].w[13]" 0.14392335525769653;
	setAttr ".wl[70].w[14]" 0.3326729218177073;
	setAttr ".wl[70].w[15]" 0.24712031983488111;
	setAttr ".wl[70].w[16]" 0.13751330226505262;
	setAttr ".wl[70].w[28]" 0.13877010082466229;
	setAttr -s 5 ".wl[71].w";
	setAttr ".wl[71].w[13]" 0.15403576541124572;
	setAttr ".wl[71].w[14]" 0.3417050931085634;
	setAttr ".wl[71].w[15]" 0.2299337640467565;
	setAttr ".wl[71].w[16]" 0.15259613837396066;
	setAttr ".wl[71].w[24]" 0.12172923905947378;
	setAttr -s 5 ".wl[72].w[13:17]"  0.090084676390100163 0.44522700595574954 
		0.19496259666351407 0.16131757092982532 0.10840815006081098;
	setAttr -s 5 ".wl[73].w[13:17]"  0.10928903456563224 0.39840082492344825 
		0.21040486491600979 0.16526717321872375 0.11663810237618592;
	setAttr -s 5 ".wl[74].w";
	setAttr ".wl[74].w[14]" 0.53980449750066728;
	setAttr ".wl[74].w[15]" 0.30966060563569758;
	setAttr ".wl[74].w[16]" 0.057292146902580339;
	setAttr ".wl[74].w[28]" 0.046737124385085378;
	setAttr ".wl[74].w[32]" 0.046505625575969448;
	setAttr -s 5 ".wl[75].w";
	setAttr ".wl[75].w[14]" 0.47999512576912884;
	setAttr ".wl[75].w[15]" 0.28113355146095964;
	setAttr ".wl[75].w[16]" 0.12568706556465317;
	setAttr ".wl[75].w[17]" 0.063526692698652396;
	setAttr ".wl[75].w[20]" 0.049657564506605988;
	setAttr -s 5 ".wl[76].w";
	setAttr ".wl[76].w[14]" 0.59072712537934846;
	setAttr ".wl[76].w[15]" 0.28564284450522831;
	setAttr ".wl[76].w[16]" 0.061334511461542847;
	setAttr ".wl[76].w[17]" 0.031079854962444899;
	setAttr ".wl[76].w[24]" 0.031215663691435309;
	setAttr -s 5 ".wl[77].w[13:17]"  0.37245019271898383 0.56737795870209973 
		0.030815386282863105 0.016907871388237957 0.012448590907815501;
	setAttr -s 5 ".wl[78].w[12:16]"  0.07821168311661543 0.42072312013049135 
		0.41038389966758432 0.053389683158299513 0.03729161392700945;
	setAttr -s 5 ".wl[79].w";
	setAttr ".wl[79].w[0]" 0.33069987883867263;
	setAttr ".wl[79].w[1]" 0.40860107886895525;
	setAttr ".wl[79].w[2]" 0.098691311270529075;
	setAttr ".wl[79].w[5]" 0.073321467565998916;
	setAttr ".wl[79].w[9]" 0.088686263455844183;
	setAttr -s 5 ".wl[80].w";
	setAttr ".wl[80].w[0]" 0.044691527646644025;
	setAttr ".wl[80].w[1]" 0.42260509361775467;
	setAttr ".wl[80].w[2]" 0.41058365280194281;
	setAttr ".wl[80].w[5]" 0.061397179336519551;
	setAttr ".wl[80].w[6]" 0.060722546597138959;
	setAttr -s 5 ".wl[81].w";
	setAttr ".wl[81].w[1]" 0.31357714838613365;
	setAttr ".wl[81].w[2]" 0.57728057160075053;
	setAttr ".wl[81].w[3]" 0.041042590124736371;
	setAttr ".wl[81].w[5]" 0.03111288382258148;
	setAttr ".wl[81].w[6]" 0.03698680606579792;
	setAttr -s 5 ".wl[82].w";
	setAttr ".wl[82].w[14]" 0.40193835883542461;
	setAttr ".wl[82].w[15]" 0.31188926566768294;
	setAttr ".wl[82].w[16]" 0.09896616116002524;
	setAttr ".wl[82].w[28]" 0.094893720203332907;
	setAttr ".wl[82].w[32]" 0.092312494133534359;
	setAttr -s 5 ".wl[83].w";
	setAttr ".wl[83].w[14]" 0.47960433407596009;
	setAttr ".wl[83].w[15]" 0.32178174489098738;
	setAttr ".wl[83].w[16]" 0.069540360620717862;
	setAttr ".wl[83].w[28]" 0.064206609939684453;
	setAttr ".wl[83].w[32]" 0.064866950472650342;
	setAttr -s 5 ".wl[84].w";
	setAttr ".wl[84].w[14]" 0.3312757793197057;
	setAttr ".wl[84].w[15]" 0.2916510960698423;
	setAttr ".wl[84].w[16]" 0.13243212733366044;
	setAttr ".wl[84].w[24]" 0.11974597500734165;
	setAttr ".wl[84].w[28]" 0.12489502226944996;
	setAttr -s 5 ".wl[85].w";
	setAttr ".wl[85].w[14]" 0.32626687780689229;
	setAttr ".wl[85].w[15]" 0.28012167274839361;
	setAttr ".wl[85].w[16]" 0.15703753880650292;
	setAttr ".wl[85].w[24]" 0.12138275369176295;
	setAttr ".wl[85].w[28]" 0.11519115694644808;
	setAttr -s 5 ".wl[86].w";
	setAttr ".wl[86].w[14]" 0.34305580344550213;
	setAttr ".wl[86].w[15]" 0.2784111767878959;
	setAttr ".wl[86].w[16]" 0.17014361361701039;
	setAttr ".wl[86].w[17]" 0.10752347922770475;
	setAttr ".wl[86].w[20]" 0.10086592692188691;
	setAttr -s 5 ".wl[87].w";
	setAttr ".wl[87].w[14]" 0.42029956791126283;
	setAttr ".wl[87].w[15]" 0.27888434651014671;
	setAttr ".wl[87].w[16]" 0.15167165513365921;
	setAttr ".wl[87].w[17]" 0.082510441661740916;
	setAttr ".wl[87].w[20]" 0.06663398878319024;
	setAttr -s 5 ".wl[88].w";
	setAttr ".wl[88].w[14]" 0.39380462574760527;
	setAttr ".wl[88].w[15]" 0.33099398065834268;
	setAttr ".wl[88].w[16]" 0.11971977480337608;
	setAttr ".wl[88].w[24]" 0.079330959072262661;
	setAttr ".wl[88].w[28]" 0.076150659718413408;
	setAttr -s 5 ".wl[89].w";
	setAttr ".wl[89].w[0]" 0.039300681153635213;
	setAttr ".wl[89].w[1]" 0.091983732537320423;
	setAttr ".wl[89].w[2]" 0.085626596557049198;
	setAttr ".wl[89].w[5]" 0.4208897410070761;
	setAttr ".wl[89].w[6]" 0.36219924874491899;
	setAttr -s 5 ".wl[90].w";
	setAttr ".wl[90].w[0]" 0.28938373464123601;
	setAttr ".wl[90].w[1]" 0.13953304529461463;
	setAttr ".wl[90].w[5]" 0.34339159743237763;
	setAttr ".wl[90].w[6]" 0.10271208414964723;
	setAttr ".wl[90].w[9]" 0.12497953848212452;
	setAttr -s 5 ".wl[91].w";
	setAttr ".wl[91].w[0]" 0.071784323485921953;
	setAttr ".wl[91].w[1]" 0.086610950452403968;
	setAttr ".wl[91].w[2]" 0.083260944591139155;
	setAttr ".wl[91].w[5]" 0.39495676162399673;
	setAttr ".wl[91].w[6]" 0.36338701984653821;
	setAttr -s 5 ".wl[92].w";
	setAttr ".wl[92].w[0]" 0.30581320003296208;
	setAttr ".wl[92].w[1]" 0.10421560020354793;
	setAttr ".wl[92].w[5]" 0.35632254072868369;
	setAttr ".wl[92].w[6]" 0.11814376364205215;
	setAttr ".wl[92].w[9]" 0.1155048953927542;
	setAttr -s 5 ".wl[93].w";
	setAttr ".wl[93].w[0]" 0.19667830334018241;
	setAttr ".wl[93].w[5]" 0.16752741162172993;
	setAttr ".wl[93].w[9]" 0.22517202407415915;
	setAttr ".wl[93].w[10]" 0.22485385748687831;
	setAttr ".wl[93].w[11]" 0.18576840347705026;
	setAttr -s 5 ".wl[94].w";
	setAttr ".wl[94].w[9]" 0.12845054460267399;
	setAttr ".wl[94].w[10]" 0.12904925337894763;
	setAttr ".wl[94].w[36]" 0.18776677167042244;
	setAttr ".wl[94].w[37]" 0.29107161316405811;
	setAttr ".wl[94].w[38]" 0.26366181718389775;
	setAttr -s 3 ".wl[95].w";
	setAttr ".wl[95].w[11]" 0.40560948480511561;
	setAttr ".wl[95].w[38]" 0.2925880585170697;
	setAttr ".wl[95].w[60]" 0.30180245667781469;
	setAttr -s 5 ".wl[96].w";
	setAttr ".wl[96].w[11]" 0.081529826061583432;
	setAttr ".wl[96].w[36]" 0.17874828849815683;
	setAttr ".wl[96].w[37]" 0.38233452136826096;
	setAttr ".wl[96].w[38]" 0.3076717148447648;
	setAttr ".wl[96].w[60]" 0.04971564922723383;
	setAttr -s 5 ".wl[97].w[36:40]"  0.09980912731917968 0.37311589569422959 
		0.37120005265952966 0.085248167676710396 0.070626756650350633;
	setAttr -s 4 ".wl[98].w";
	setAttr ".wl[98].w[36]" 0.23906511126678107;
	setAttr ".wl[98].w[38]" 0.27359136639693038;
	setAttr ".wl[98].w[60]" 0.24367176116814432;
	setAttr ".wl[98].w[61]" 0.24367176116814432;
	setAttr -s 5 ".wl[99].w";
	setAttr ".wl[99].w[36]" 0.14716303165021988;
	setAttr ".wl[99].w[37]" 0.29020834334303497;
	setAttr ".wl[99].w[38]" 0.28886515707080668;
	setAttr ".wl[99].w[60]" 0.13688173396796924;
	setAttr ".wl[99].w[61]" 0.13688173396796924;
	setAttr -s 4 ".wl[100].w";
	setAttr ".wl[100].w[36]" 0.15864346808114724;
	setAttr ".wl[100].w[38]" 0.13584274299090068;
	setAttr ".wl[100].w[60]" 0.35275689446397607;
	setAttr ".wl[100].w[61]" 0.35275689446397596;
	setAttr -s 5 ".wl[101].w";
	setAttr ".wl[101].w[11]" 0.12532264866059559;
	setAttr ".wl[101].w[36]" 0.1442231534098217;
	setAttr ".wl[101].w[37]" 0.14750747032850306;
	setAttr ".wl[101].w[60]" 0.2914733638005399;
	setAttr ".wl[101].w[61]" 0.2914733638005399;
	setAttr -s 5 ".wl[102].w";
	setAttr ".wl[102].w[36]" 0.15701041571431792;
	setAttr ".wl[102].w[37]" 0.27378174872229488;
	setAttr ".wl[102].w[38]" 0.27303863718113491;
	setAttr ".wl[102].w[60]" 0.14808459919112615;
	setAttr ".wl[102].w[61]" 0.14808459919112615;
	setAttr -s 5 ".wl[103].w";
	setAttr ".wl[103].w[11]" 0.15463321005578959;
	setAttr ".wl[103].w[36]" 0.17933342013594603;
	setAttr ".wl[103].w[37]" 0.18272088856837088;
	setAttr ".wl[103].w[60]" 0.24165624061994678;
	setAttr ".wl[103].w[61]" 0.24165624061994678;
	setAttr -s 5 ".wl[104].w";
	setAttr ".wl[104].w[36]" 0.16609429217019303;
	setAttr ".wl[104].w[37]" 0.2976934145293853;
	setAttr ".wl[104].w[38]" 0.29491183564899914;
	setAttr ".wl[104].w[39]" 0.13290331303904188;
	setAttr ".wl[104].w[60]" 0.10839714461238069;
	setAttr -s 5 ".wl[105].w";
	setAttr ".wl[105].w[11]" 0.19772890918198552;
	setAttr ".wl[105].w[36]" 0.23339374924745807;
	setAttr ".wl[105].w[37]" 0.23703360309156618;
	setAttr ".wl[105].w[60]" 0.17181712444718114;
	setAttr ".wl[105].w[61]" 0.16002661403180912;
	setAttr -s 5 ".wl[106].w";
	setAttr ".wl[106].w[36]" 0.11139139059450909;
	setAttr ".wl[106].w[37]" 0.31683739848197728;
	setAttr ".wl[106].w[38]" 0.31943281467447487;
	setAttr ".wl[106].w[39]" 0.14723208965893736;
	setAttr ".wl[106].w[56]" 0.10510630659010152;
	setAttr -s 5 ".wl[107].w";
	setAttr ".wl[107].w[0]" 0.19826066436093773;
	setAttr ".wl[107].w[5]" 0.17608704782052126;
	setAttr ".wl[107].w[9]" 0.21862787387973648;
	setAttr ".wl[107].w[10]" 0.2183264938467879;
	setAttr ".wl[107].w[11]" 0.18869792009201664;
	setAttr -s 5 ".wl[108].w";
	setAttr ".wl[108].w[0]" 0.14741851286875651;
	setAttr ".wl[108].w[5]" 0.14741851286875651;
	setAttr ".wl[108].w[36]" 0.15859451566290619;
	setAttr ".wl[108].w[37]" 0.27365416742275883;
	setAttr ".wl[108].w[38]" 0.27291429117682198;
	setAttr -s 5 ".wl[109].w";
	setAttr ".wl[109].w[0]" 0.2731251844007182;
	setAttr ".wl[109].w[1]" 0.15490422688114439;
	setAttr ".wl[109].w[5]" 0.30981345769041291;
	setAttr ".wl[109].w[6]" 0.12050832263086769;
	setAttr ".wl[109].w[9]" 0.14164880839685687;
	setAttr -s 5 ".wl[110].w";
	setAttr ".wl[110].w[0]" 0.30073591004982292;
	setAttr ".wl[110].w[1]" 0.10679197333312496;
	setAttr ".wl[110].w[5]" 0.34365311079213956;
	setAttr ".wl[110].w[6]" 0.12780156839019841;
	setAttr ".wl[110].w[9]" 0.1210174374347142;
	setAttr -s 5 ".wl[111].w";
	setAttr ".wl[111].w[0]" 0.052854957365184259;
	setAttr ".wl[111].w[1]" 0.12570524296977856;
	setAttr ".wl[111].w[2]" 0.12315279657603027;
	setAttr ".wl[111].w[5]" 0.35514222821544167;
	setAttr ".wl[111].w[6]" 0.34314477487356526;
	setAttr -s 5 ".wl[112].w";
	setAttr ".wl[112].w[0]" 0.06546065045518841;
	setAttr ".wl[112].w[1]" 0.086192868941119147;
	setAttr ".wl[112].w[2]" 0.084778351967551471;
	setAttr ".wl[112].w[5]" 0.38845887850920319;
	setAttr ".wl[112].w[6]" 0.37510925012693769;
	setAttr -s 5 ".wl[113].w";
	setAttr ".wl[113].w[0]" 0.050816458851199967;
	setAttr ".wl[113].w[1]" 0.066927767998945134;
	setAttr ".wl[113].w[2]" 0.066190772390838606;
	setAttr ".wl[113].w[5]" 0.41362541436586908;
	setAttr ".wl[113].w[6]" 0.40243958639314725;
	setAttr -s 5 ".wl[114].w";
	setAttr ".wl[114].w[0]" 0.32146533388153248;
	setAttr ".wl[114].w[1]" 0.083170315792555904;
	setAttr ".wl[114].w[5]" 0.3828067083985458;
	setAttr ".wl[114].w[6]" 0.11229170391229563;
	setAttr ".wl[114].w[9]" 0.10026593801507022;
	setAttr -s 5 ".wl[115].w";
	setAttr ".wl[115].w[0]" 0.047483194010827255;
	setAttr ".wl[115].w[1]" 0.063305405575310558;
	setAttr ".wl[115].w[2]" 0.062631616808182633;
	setAttr ".wl[115].w[5]" 0.41895418153898301;
	setAttr ".wl[115].w[6]" 0.40762560206669662;
	setAttr -s 5 ".wl[116].w";
	setAttr ".wl[116].w[0]" 0.32932135798405726;
	setAttr ".wl[116].w[1]" 0.074660603419639829;
	setAttr ".wl[116].w[5]" 0.40332093878165282;
	setAttr ".wl[116].w[6]" 0.10191493377741062;
	setAttr ".wl[116].w[9]" 0.090782166037239459;
	setAttr -s 5 ".wl[117].w";
	setAttr ".wl[117].w[0]" 0.05149267203984749;
	setAttr ".wl[117].w[1]" 0.068493342792889822;
	setAttr ".wl[117].w[2]" 0.067827686226450482;
	setAttr ".wl[117].w[5]" 0.41093270084356126;
	setAttr ".wl[117].w[6]" 0.40125359809725092;
	setAttr -s 5 ".wl[118].w";
	setAttr ".wl[118].w[0]" 0.32121764693546306;
	setAttr ".wl[118].w[1]" 0.084012072554327855;
	setAttr ".wl[118].w[5]" 0.38344177022790726;
	setAttr ".wl[118].w[6]" 0.11100108069636597;
	setAttr ".wl[118].w[9]" 0.10032742958593585;
	setAttr -s 5 ".wl[119].w[36:40]"  0.10500327626862076 0.37871072397144051 
		0.37583760418944556 0.085801609282074753 0.054646786288418486;
	setAttr -s 5 ".wl[120].w[36:40]"  0.072552483452196614 0.41806255935722592 
		0.41313805360215633 0.056725668595899316 0.03952123499252181;
	setAttr -s 5 ".wl[121].w[36:40]"  0.10195869777915112 0.37286058737450062 
		0.36999055366784533 0.083191034227991512 0.071999126950511388;
	setAttr -s 5 ".wl[122].w[36:40]"  0.048901307698851891 0.45132291966768379 
		0.44361763822647637 0.036941028401904538 0.019217106005083494;
	setAttr -s 5 ".wl[123].w[36:40]"  0.03292583807607867 0.46794424083795655 
		0.45713585981066523 0.024264132888344059 0.017729928386955484;
	setAttr -s 2 ".wl[124].w[60:61]"  0.44728208331962144 0.55271791668037851;
	setAttr -s 2 ".wl[125].w[60:61]"  0.41627086794463242 0.58372913205536769;
	setAttr -s 2 ".wl[126].w[60:61]"  0.49950944598302105 0.50049055401697906;
	setAttr -s 5 ".wl[127].w";
	setAttr ".wl[127].w[1]" 0.0093741663145084225;
	setAttr ".wl[127].w[2]" 0.012993793460916574;
	setAttr ".wl[127].w[5]" 0.14202064082579241;
	setAttr ".wl[127].w[6]" 0.82977498012468809;
	setAttr ".wl[127].w[7]" 0.0058364192740945594;
	setAttr -s 5 ".wl[128].w";
	setAttr ".wl[128].w[1]" 0.023067053445078423;
	setAttr ".wl[128].w[2]" 0.028689097441431444;
	setAttr ".wl[128].w[5]" 0.27180055426552069;
	setAttr ".wl[128].w[6]" 0.65263938414827416;
	setAttr ".wl[128].w[7]" 0.023803910699695251;
	setAttr -s 5 ".wl[129].w";
	setAttr ".wl[129].w[1]" 0.03105512864058068;
	setAttr ".wl[129].w[2]" 0.037033170953371664;
	setAttr ".wl[129].w[5]" 0.31173646411070371;
	setAttr ".wl[129].w[6]" 0.58015180467526362;
	setAttr ".wl[129].w[7]" 0.040023431620080284;
	setAttr -s 5 ".wl[130].w";
	setAttr ".wl[130].w[1]" 0.033139159553745676;
	setAttr ".wl[130].w[2]" 0.039130052623459761;
	setAttr ".wl[130].w[5]" 0.31913933781282733;
	setAttr ".wl[130].w[6]" 0.56347825930237005;
	setAttr ".wl[130].w[7]" 0.045113190707597291;
	setAttr -s 5 ".wl[131].w";
	setAttr ".wl[131].w[1]" 0.0098791937262935111;
	setAttr ".wl[131].w[2]" 0.0136762309440711;
	setAttr ".wl[131].w[5]" 0.14659555135391367;
	setAttr ".wl[131].w[6]" 0.82368862570078205;
	setAttr ".wl[131].w[7]" 0.0061603982749395972;
	setAttr -s 5 ".wl[132].w";
	setAttr ".wl[132].w[1]" 0.023466480386475232;
	setAttr ".wl[132].w[2]" 0.029169133961602058;
	setAttr ".wl[132].w[5]" 0.27320367459418182;
	setAttr ".wl[132].w[6]" 0.64994609182373764;
	setAttr ".wl[132].w[7]" 0.024214619234003327;
	setAttr -s 5 ".wl[133].w";
	setAttr ".wl[133].w[1]" 0.030312565216797527;
	setAttr ".wl[133].w[2]" 0.036178201259531327;
	setAttr ".wl[133].w[5]" 0.31043397938247852;
	setAttr ".wl[133].w[6]" 0.58396000636959955;
	setAttr ".wl[133].w[7]" 0.039115247771592955;
	setAttr -s 5 ".wl[134].w";
	setAttr ".wl[134].w[37]" 0.36820167470993265;
	setAttr ".wl[134].w[38]" 0.50771566137344259;
	setAttr ".wl[134].w[39]" 0.066177240760194003;
	setAttr ".wl[134].w[40]" 0.032144515770448787;
	setAttr ".wl[134].w[56]" 0.025760907385982072;
	setAttr -s 5 ".wl[135].w[37:41]"  0.34571834730532552 0.58539341485654162 
		0.035522253047187625 0.019263269313099445 0.014102715477845905;
	setAttr -s 5 ".wl[136].w";
	setAttr ".wl[136].w[37]" 0.34090672179100662;
	setAttr ".wl[136].w[38]" 0.56359604680116193;
	setAttr ".wl[136].w[39]" 0.054198756324383139;
	setAttr ".wl[136].w[40]" 0.022286892946959215;
	setAttr ".wl[136].w[56]" 0.019011582136489208;
	setAttr -s 5 ".wl[137].w[37:41]"  0.35844422130891018 0.49282536215414469 
		0.065047950497016033 0.047534681862315548 0.03614778417761353;
	setAttr -s 5 ".wl[138].w[37:41]"  0.32694160913407222 0.57735874545045418 
		0.045737143387604658 0.029297264757545606 0.020665237270323322;
	setAttr -s 5 ".wl[139].w";
	setAttr ".wl[139].w[37]" 0.30632466238871003;
	setAttr ".wl[139].w[38]" 0.40227877220485908;
	setAttr ".wl[139].w[39]" 0.14457281479059308;
	setAttr ".wl[139].w[52]" 0.069530126765261324;
	setAttr ".wl[139].w[56]" 0.077293623850576615;
	setAttr -s 5 ".wl[140].w";
	setAttr ".wl[140].w[37]" 0.29613217197558783;
	setAttr ".wl[140].w[38]" 0.33840354580278692;
	setAttr ".wl[140].w[39]" 0.16544292471545738;
	setAttr ".wl[140].w[52]" 0.09704463417222374;
	setAttr ".wl[140].w[56]" 0.10297672333394414;
	setAttr -s 5 ".wl[141].w";
	setAttr ".wl[141].w[37]" 0.26822489937018779;
	setAttr ".wl[141].w[38]" 0.30102891581017521;
	setAttr ".wl[141].w[39]" 0.18553129008080185;
	setAttr ".wl[141].w[52]" 0.12246521278295412;
	setAttr ".wl[141].w[56]" 0.122749681955881;
	setAttr -s 5 ".wl[142].w";
	setAttr ".wl[142].w[37]" 0.28917565216124891;
	setAttr ".wl[142].w[38]" 0.31605004058351238;
	setAttr ".wl[142].w[39]" 0.16715783229478426;
	setAttr ".wl[142].w[40]" 0.1238839522247749;
	setAttr ".wl[142].w[48]" 0.10373252273567959;
	setAttr -s 5 ".wl[143].w[37:41]"  0.32539528687693853 0.42955734708393573 
		0.097571881820330483 0.083554805788771169 0.063920678430024164;
	setAttr -s 5 ".wl[144].w[37:41]"  0.31779840980670115 0.39456572559536657 
		0.1184680408250829 0.095322689347253506 0.073845134425595912;
	setAttr -s 5 ".wl[145].w";
	setAttr ".wl[145].w[37]" 0.057319369897260407;
	setAttr ".wl[145].w[38]" 0.72423581131046288;
	setAttr ".wl[145].w[39]" 0.14717273897673958;
	setAttr ".wl[145].w[40]" 0.03974751590143176;
	setAttr ".wl[145].w[56]" 0.031524563914105408;
	setAttr -s 5 ".wl[146].w[37:41]"  0.052207341219642586 0.70490770942874981 
		0.13565848050609963 0.06722212067741351 0.040004348168094526;
	setAttr -s 5 ".wl[147].w";
	setAttr ".wl[147].w[37]" 0.092632650182971593;
	setAttr ".wl[147].w[38]" 0.50524409257308911;
	setAttr ".wl[147].w[39]" 0.23805081011646284;
	setAttr ".wl[147].w[52]" 0.078387426939532184;
	setAttr ".wl[147].w[56]" 0.085685020187944341;
	setAttr -s 5 ".wl[148].w";
	setAttr ".wl[148].w[37]" 0.12216475215311089;
	setAttr ".wl[148].w[38]" 0.37949901120624158;
	setAttr ".wl[148].w[39]" 0.25220821014196515;
	setAttr ".wl[148].w[52]" 0.12005452728884665;
	setAttr ".wl[148].w[56]" 0.12607349920983574;
	setAttr -s 5 ".wl[149].w";
	setAttr ".wl[149].w[38]" 0.32396317503981531;
	setAttr ".wl[149].w[39]" 0.25108159914305317;
	setAttr ".wl[149].w[40]" 0.14032054591631607;
	setAttr ".wl[149].w[52]" 0.14392206164527976;
	setAttr ".wl[149].w[56]" 0.14071261825553572;
	setAttr -s 5 ".wl[150].w";
	setAttr ".wl[150].w[37]" 0.14190498689218595;
	setAttr ".wl[150].w[38]" 0.33507631222636325;
	setAttr ".wl[150].w[39]" 0.23690506202640163;
	setAttr ".wl[150].w[40]" 0.15847547933451497;
	setAttr ".wl[150].w[48]" 0.12763815952053417;
	setAttr -s 5 ".wl[151].w";
	setAttr ".wl[151].w[38]" 0.42181492625431505;
	setAttr ".wl[151].w[39]" 0.20441765291022335;
	setAttr ".wl[151].w[40]" 0.17339500845956671;
	setAttr ".wl[151].w[41]" 0.11595443636752789;
	setAttr ".wl[151].w[44]" 0.084417976008367077;
	setAttr -s 5 ".wl[152].w";
	setAttr ".wl[152].w[38]" 0.38178781230449982;
	setAttr ".wl[152].w[39]" 0.21787998303592493;
	setAttr ".wl[152].w[40]" 0.17484803654302766;
	setAttr ".wl[152].w[41]" 0.12323167896706996;
	setAttr ".wl[152].w[44]" 0.10225248914947764;
	setAttr -s 5 ".wl[153].w";
	setAttr ".wl[153].w[38]" 0.50350457100693602;
	setAttr ".wl[153].w[39]" 0.33343997209763071;
	setAttr ".wl[153].w[40]" 0.060301103114936284;
	setAttr ".wl[153].w[52]" 0.051519853169343627;
	setAttr ".wl[153].w[56]" 0.051234500611153228;
	setAttr -s 5 ".wl[154].w";
	setAttr ".wl[154].w[38]" 0.44087663628550899;
	setAttr ".wl[154].w[39]" 0.29675427458443748;
	setAttr ".wl[154].w[40]" 0.1389630536370442;
	setAttr ".wl[154].w[41]" 0.06906658467024103;
	setAttr ".wl[154].w[44]" 0.054339450822768184;
	setAttr -s 5 ".wl[155].w";
	setAttr ".wl[155].w[38]" 0.5473264892130697;
	setAttr ".wl[155].w[39]" 0.31756241475106833;
	setAttr ".wl[155].w[40]" 0.067061497218864272;
	setAttr ".wl[155].w[41]" 0.033483482292455631;
	setAttr ".wl[155].w[48]" 0.034566116524542001;
	setAttr -s 5 ".wl[156].w";
	setAttr ".wl[156].w[38]" 0.38023976371535628;
	setAttr ".wl[156].w[39]" 0.31732623334784676;
	setAttr ".wl[156].w[40]" 0.10175051219031277;
	setAttr ".wl[156].w[52]" 0.10182046695887904;
	setAttr ".wl[156].w[56]" 0.098863023787605142;
	setAttr -s 5 ".wl[157].w";
	setAttr ".wl[157].w[38]" 0.44950188997930368;
	setAttr ".wl[157].w[39]" 0.33697106792196835;
	setAttr ".wl[157].w[40]" 0.072311894758574566;
	setAttr ".wl[157].w[52]" 0.070222452465917365;
	setAttr ".wl[157].w[56]" 0.07099269487423597;
	setAttr -s 5 ".wl[158].w";
	setAttr ".wl[158].w[38]" 0.31644189641364062;
	setAttr ".wl[158].w[39]" 0.29084061523230348;
	setAttr ".wl[158].w[40]" 0.13493882832047149;
	setAttr ".wl[158].w[48]" 0.125996840697392;
	setAttr ".wl[158].w[52]" 0.13178181933619232;
	setAttr -s 5 ".wl[159].w";
	setAttr ".wl[159].w[38]" 0.31094204040887369;
	setAttr ".wl[159].w[39]" 0.27963120601127406;
	setAttr ".wl[159].w[40]" 0.16091992423638876;
	setAttr ".wl[159].w[48]" 0.12762767635062625;
	setAttr ".wl[159].w[52]" 0.12087915299283725;
	setAttr -s 5 ".wl[160].w";
	setAttr ".wl[160].w[38]" 0.32297184445245752;
	setAttr ".wl[160].w[39]" 0.27919491295591903;
	setAttr ".wl[160].w[40]" 0.17770923196765037;
	setAttr ".wl[160].w[41]" 0.11270729442699383;
	setAttr ".wl[160].w[44]" 0.10741671619697932;
	setAttr -s 5 ".wl[161].w";
	setAttr ".wl[161].w[38]" 0.38782048298742533;
	setAttr ".wl[161].w[39]" 0.28700630728083826;
	setAttr ".wl[161].w[40]" 0.16435553081204152;
	setAttr ".wl[161].w[41]" 0.088629208488029257;
	setAttr ".wl[161].w[44]" 0.072188470431665722;
	setAttr -s 5 ".wl[162].w";
	setAttr ".wl[162].w[38]" 0.3702194329849145;
	setAttr ".wl[162].w[39]" 0.33427492098511141;
	setAttr ".wl[162].w[40]" 0.12589071895283857;
	setAttr ".wl[162].w[48]" 0.086629186022544782;
	setAttr ".wl[162].w[52]" 0.082985741054590778;
	setAttr -s 2 ".wl[163].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[164].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[165].w[60:61]"  0.41293713506013902 0.58706286493986104;
	setAttr -s 2 ".wl[166].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[167].w[60:61]"  0.41285627474095676 0.58714372525904324;
	setAttr -s 2 ".wl[168].w[60:61]"  0.41312246655715962 0.58687753344284033;
	setAttr -s 2 ".wl[169].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[170].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[171].w[60:61]"  0.54601850364648641 0.45398149635351365;
	setAttr -s 2 ".wl[172].w[60:61]"  0.37499999767169356 0.62500000232830644;
	setAttr -s 2 ".wl[173].w[60:61]"  0.37499999767169356 0.62500000232830644;
	setAttr -s 2 ".wl[174].w[60:61]"  0.37499999767169356 0.62500000232830644;
	setAttr -s 2 ".wl[175].w[60:61]"  0.46080527885726935 0.5391947211427307;
	setAttr -s 2 ".wl[176].w[60:61]"  0.47336003942268901 0.52663996057731099;
	setAttr -s 2 ".wl[177].w[60:61]"  0.50595181675727985 0.49404818324272015;
	setAttr -s 2 ".wl[178].w[60:61]"  0.51466081368827987 0.48533918631172018;
	setAttr -s 2 ".wl[179].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[180].w[60:61]"  0.48663798454835405 0.51336201545164595;
	setAttr -s 2 ".wl[181].w[60:61]"  0.44333244243072484 0.55666755756927511;
	setAttr -s 2 ".wl[182].w[60:61]"  0.43334376039531403 0.56665623960468603;
	setAttr -s 2 ".wl[183].w[60:61]"  0.42513773628112739 0.57486226371887261;
	setAttr -s 2 ".wl[184].w[60:61]"  0.37499999767169362 0.62500000232830644;
	setAttr -s 2 ".wl[185].w[60:61]"  0.33691707348255662 0.66308292651744338;
	setAttr -s 2 ".wl[186].w[60:61]"  0.43047448883226297 0.56952551116773698;
	setAttr -s 2 ".wl[187].w[60:61]"  0.45754705195434747 0.54245294804565247;
	setAttr -s 2 ".wl[188].w[60:61]"  0.46875100184218549 0.53124899815781446;
	setAttr -s 2 ".wl[189].w[60:61]"  0.47304469632327228 0.52695530367672772;
	setAttr -s 2 ".wl[190].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[191].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[192].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[193].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[194].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[195].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[196].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[197].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[198].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[199].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[200].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[201].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[202].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[203].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[204].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[205].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[206].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[207].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[208].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[209].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[210].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[211].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[212].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[213].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[214].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[215].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[216].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[217].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[218].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[219].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[220].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[221].w[60:61]"  0.37499999767169356 0.62500000232830644;
	setAttr -s 2 ".wl[222].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[223].w[60:61]"  0.37499999767169356 0.62500000232830644;
	setAttr -s 2 ".wl[224].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[225].w[60:61]"  0.37499999767169362 0.62500000232830644;
	setAttr -s 2 ".wl[226].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[227].w[60:61]"  0.37499999767169351 0.62500000232830644;
	setAttr -s 2 ".wl[228].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[229].w[60:61]"  0.37499999767169356 0.62500000232830644;
	setAttr -s 2 ".wl[230].w[60:61]"  0.59999999403953552 0.40000000596046448;
	setAttr -s 2 ".wl[231].w[60:61]"  0.37499999767169356 0.62500000232830644;
	setAttr -s 2 ".wl[232].w[60:61]"  0.41294312889265755 0.5870568711073425;
	setAttr -s 2 ".wl[233].w[60:61]"  0.37499999767169356 0.62500000232830644;
	setAttr -s 2 ".wl[234].w[60:61]"  0.37499999767169356 0.62500000232830644;
	setAttr -s 2 ".wl[235].w[60:61]"  0.37499999767169356 0.62500000232830644;
	setAttr -s 2 ".wl[236].w[60:61]"  0.37499999767169351 0.62500000232830644;
	setAttr -s 2 ".wl[237].w[60:61]"  0.37499999767169351 0.62500000232830644;
	setAttr -s 3 ".wl[238].w";
	setAttr ".wl[238].w[40]" 0.13086953281222011;
	setAttr ".wl[238].w[60]" 0.35861938042260549;
	setAttr ".wl[238].w[61]" 0.51051108676517443;
	setAttr -s 2 ".wl[239].w[60:61]"  0.41224280929212404 0.58775719070787591;
	setAttr -s 2 ".wl[240].w[60:61]"  0.41243399988691248 0.58756600011308746;
	setAttr -s 2 ".wl[241].w[60:61]"  0.41266713366765706 0.58733286633234294;
	setAttr -s 2 ".wl[242].w[60:61]"  0.46663730864599973 0.53336269135400038;
	setAttr -s 2 ".wl[243].w[60:61]"  0.43407262288997023 0.56592737711002983;
	setAttr -s 2 ".wl[244].w[60:61]"  0.44859670298302456 0.55140329701697544;
	setAttr -s 2 ".wl[245].w[60:61]"  0.46491748986128434 0.53508251013871566;
	setAttr -s 2 ".wl[246].w[60:61]"  0.43926318319644769 0.56073681680355236;
	setAttr -s 2 ".wl[247].w[60:61]"  0.43094939358311474 0.56905060641688521;
	setAttr -s 2 ".wl[248].w[60:61]"  0.4637477206248905 0.53625227937510944;
	setAttr -s 2 ".wl[249].w[60:61]"  0.45992366232571885 0.5400763376742812;
	setAttr -s 2 ".wl[250].w[60:61]"  0.4347191682447013 0.56528083175529864;
	setAttr -s 2 ".wl[251].w[60:61]"  0.42883430839326947 0.57116569160673047;
	setAttr -s 2 ".wl[252].w[60:61]"  0.43698119559138343 0.56301880440861662;
	setAttr -s 2 ".wl[253].w[60:61]"  0.43568603827818608 0.56431396172181392;
	setAttr -s 2 ".wl[254].w[60:61]"  0.43080861232175122 0.56919138767824884;
	setAttr -s 2 ".wl[255].w[60:61]"  0.42565355523652149 0.57434644476347851;
	setAttr -s 2 ".wl[256].w[60:61]"  0.43253633758469728 0.56746366241530277;
	setAttr -s 2 ".wl[257].w[60:61]"  0.43012724453035167 0.56987275546964833;
	setAttr -s 2 ".wl[258].w[60:61]"  0.42654356595105125 0.57345643404894875;
	setAttr -s 2 ".wl[259].w[60:61]"  0.41873226680916042 0.58126773319083958;
	setAttr -s 2 ".wl[260].w[60:61]"  0.42844717456067843 0.57155282543932151;
	setAttr -s 2 ".wl[261].w[60:61]"  0.42134870462832269 0.57865129537167737;
	setAttr -s 2 ".wl[262].w[60:61]"  0.42412099102947348 0.57587900897052646;
	setAttr -s 2 ".wl[263].w[60:61]"  0.41553035524717946 0.58446964475282059;
	setAttr -s 2 ".wl[264].w[60:61]"  0.4237122906541369 0.57628770934586315;
	setAttr -s 2 ".wl[265].w[60:61]"  0.41230510597716574 0.58769489402283426;
	setAttr -s 2 ".wl[266].w[60:61]"  0.42179359084971579 0.57820640915028421;
	setAttr -s 2 ".wl[267].w[60:61]"  0.41080773175513285 0.58919226824486715;
	setAttr -s 2 ".wl[268].w[60:61]"  0.41846107611745237 0.58153892388254758;
	setAttr -s 2 ".wl[269].w[60:61]"  0.40516081326051467 0.59483918673948533;
	setAttr -s 2 ".wl[270].w[60:61]"  0.41874302435521771 0.58125697564478229;
	setAttr -s 2 ".wl[271].w[60:61]"  0.4055842937780848 0.5944157062219152;
	setAttr -s 2 ".wl[272].w[60:61]"  0.41383997994536376 0.58616002005463619;
	setAttr -s 2 ".wl[273].w[60:61]"  0.4021113793108067 0.59788862068919335;
	setAttr -s 2 ".wl[274].w[60:61]"  0.41674319304079038 0.58325680695920967;
	setAttr -s 2 ".wl[275].w[60:61]"  0.40740315853390702 0.59259684146609293;
	setAttr -s 2 ".wl[276].w[60:61]"  0.41196793795225278 0.58803206204774716;
	setAttr -s 2 ".wl[277].w[60:61]"  0.40275507131321336 0.59724492868678658;
	setAttr -s 2 ".wl[278].w[60:61]"  0.41169496736550337 0.58830503263449663;
	setAttr -s 2 ".wl[279].w[60:61]"  0.4098366598531577 0.59016334014684224;
	setAttr -s 2 ".wl[280].w[60:61]"  0.40916484271454101 0.59083515728545899;
	setAttr -s 2 ".wl[281].w[60:61]"  0.41099318026432019 0.58900681973567981;
	setAttr -s 2 ".wl[282].w[60:61]"  0.41024122470649671 0.5897587752935034;
	setAttr -s 2 ".wl[283].w[60:61]"  0.41195743723309713 0.58804256276690281;
	setAttr -s 2 ".wl[284].w[60:61]"  0.41074463598255367 0.58925536401744638;
	setAttr -s 2 ".wl[285].w[60:61]"  0.4122383889854474 0.5877616110145526;
	setAttr -s 5 ".wl[286].w";
	setAttr ".wl[286].w[2]" 0.4890125563610378;
	setAttr ".wl[286].w[3]" 0.48539923348980546;
	setAttr ".wl[286].w[4]" 0.013256185810773057;
	setAttr ".wl[286].w[6]" 0.0061685844434961282;
	setAttr ".wl[286].w[7]" 0.0061634398948876177;
	setAttr -s 5 ".wl[287].w";
	setAttr ".wl[287].w[2]" 0.45502155713232456;
	setAttr ".wl[287].w[3]" 0.45378812861673024;
	setAttr ".wl[287].w[4]" 0.055833544167565259;
	setAttr ".wl[287].w[6]" 0.017683117455770673;
	setAttr ".wl[287].w[7]" 0.017673652627609386;
	setAttr -s 5 ".wl[288].w";
	setAttr ".wl[288].w[2]" 0.42277136670248733;
	setAttr ".wl[288].w[3]" 0.42202704798016638;
	setAttr ".wl[288].w[4]" 0.10604338645773841;
	setAttr ".wl[288].w[6]" 0.024584323296748721;
	setAttr ".wl[288].w[7]" 0.024573875562859174;
	setAttr -s 5 ".wl[289].w";
	setAttr ".wl[289].w[2]" 0.35825567804134989;
	setAttr ".wl[289].w[3]" 0.39377445164881231;
	setAttr ".wl[289].w[4]" 0.20341782829830118;
	setAttr ".wl[289].w[6]" 0.022020021627548046;
	setAttr ".wl[289].w[7]" 0.022532020383988622;
	setAttr -s 5 ".wl[290].w";
	setAttr ".wl[290].w[2]" 0.21129101897597041;
	setAttr ".wl[290].w[3]" 0.64286835503765172;
	setAttr ".wl[290].w[4]" 0.13591060792645079;
	setAttr ".wl[290].w[6]" 0.0046413369511110816;
	setAttr ".wl[290].w[7]" 0.0052886811088158243;
	setAttr -s 5 ".wl[291].w";
	setAttr ".wl[291].w[2]" 0.29142472870629388;
	setAttr ".wl[291].w[3]" 0.44269042858361024;
	setAttr ".wl[291].w[4]" 0.23689864759868642;
	setAttr ".wl[291].w[6]" 0.013884590213963205;
	setAttr ".wl[291].w[7]" 0.015101604897446387;
	setAttr -s 5 ".wl[292].w";
	setAttr ".wl[292].w[2]" 0.45172997355231442;
	setAttr ".wl[292].w[3]" 0.45172997355231442;
	setAttr ".wl[292].w[4]" 0.060522504841597526;
	setAttr ".wl[292].w[6]" 0.018008774026886821;
	setAttr ".wl[292].w[7]" 0.018008774026886821;
	setAttr -s 5 ".wl[293].w";
	setAttr ".wl[293].w[2]" 0.41739285618122035;
	setAttr ".wl[293].w[3]" 0.4693369918500766;
	setAttr ".wl[293].w[4]" 0.089838813043453453;
	setAttr ".wl[293].w[6]" 0.011604074533844204;
	setAttr ".wl[293].w[7]" 0.01182726439140552;
	setAttr -s 5 ".wl[294].w";
	setAttr ".wl[294].w[2]" 0.41044912289623742;
	setAttr ".wl[294].w[3]" 0.41044912289623742;
	setAttr ".wl[294].w[4]" 0.121821064595509;
	setAttr ".wl[294].w[6]" 0.028640344806008116;
	setAttr ".wl[294].w[7]" 0.028640344806008116;
	setAttr -s 5 ".wl[295].w";
	setAttr ".wl[295].w[2]" 0.38062380673684715;
	setAttr ".wl[295].w[3]" 0.38062380673684715;
	setAttr ".wl[295].w[4]" 0.1702737817506659;
	setAttr ".wl[295].w[6]" 0.034239302387819935;
	setAttr ".wl[295].w[7]" 0.034239302387819935;
	setAttr -s 5 ".wl[296].w";
	setAttr ".wl[296].w[2]" 0.21302306894402029;
	setAttr ".wl[296].w[3]" 0.56491600853207691;
	setAttr ".wl[296].w[4]" 0.20621356163526783;
	setAttr ".wl[296].w[6]" 0.007336320235147748;
	setAttr ".wl[296].w[7]" 0.0085110406534871386;
	setAttr -s 5 ".wl[297].w";
	setAttr ".wl[297].w[2]" 0.2653688588346263;
	setAttr ".wl[297].w[3]" 0.37374457832430091;
	setAttr ".wl[297].w[4]" 0.30712400853496258;
	setAttr ".wl[297].w[7]" 0.027625247065714655;
	setAttr ".wl[297].w[8]" 0.026137307240395556;
	setAttr -s 5 ".wl[298].w";
	setAttr ".wl[298].w[2]" 0.052803288994025546;
	setAttr ".wl[298].w[3]" 0.52372473792331686;
	setAttr ".wl[298].w[4]" 0.41357159212309164;
	setAttr ".wl[298].w[7]" 0.0050105967939188525;
	setAttr ".wl[298].w[8]" 0.0048897841656472662;
	setAttr -s 5 ".wl[299].w";
	setAttr ".wl[299].w[2]" 0.15898206704191345;
	setAttr ".wl[299].w[3]" 0.41705850271414746;
	setAttr ".wl[299].w[4]" 0.38847984777576433;
	setAttr ".wl[299].w[7]" 0.017872245064459467;
	setAttr ".wl[299].w[8]" 0.017607337403715326;
	setAttr -s 5 ".wl[300].w";
	setAttr ".wl[300].w[2]" 0.39511690132660754;
	setAttr ".wl[300].w[3]" 0.39513316074125365;
	setAttr ".wl[300].w[4]" 0.15814193917073477;
	setAttr ".wl[300].w[6]" 0.025803927239662558;
	setAttr ".wl[300].w[7]" 0.025804071521741419;
	setAttr -s 5 ".wl[301].w";
	setAttr ".wl[301].w[2]" 0.32649651404626251;
	setAttr ".wl[301].w[3]" 0.36223916247934929;
	setAttr ".wl[301].w[4]" 0.2477169422434945;
	setAttr ".wl[301].w[6]" 0.03127273141649517;
	setAttr ".wl[301].w[7]" 0.032274649814398364;
	setAttr -s 5 ".wl[302].w";
	setAttr ".wl[302].w[2]" 0.33137692404734809;
	setAttr ".wl[302].w[3]" 0.51687027710696054;
	setAttr ".wl[302].w[4]" 0.13224859097017416;
	setAttr ".wl[302].w[6]" 0.0094192438881022141;
	setAttr ".wl[302].w[7]" 0.010084963987415029;
	setAttr -s 5 ".wl[303].w";
	setAttr ".wl[303].w[13]" 0.072475321628076253;
	setAttr ".wl[303].w[14]" 0.74316441368325115;
	setAttr ".wl[303].w[15]" 0.11939647901662621;
	setAttr ".wl[303].w[16]" 0.03710465217116405;
	setAttr ".wl[303].w[32]" 0.027859133500882358;
	setAttr -s 5 ".wl[304].w[13:17]"  0.072363028884321459 0.69007842020064047 
		0.11808544183883621 0.072789635474299161 0.046683473601902663;
	setAttr -s 5 ".wl[305].w";
	setAttr ".wl[305].w[14]" 0.6452424716319578;
	setAttr ".wl[305].w[15]" 0.26903399858389432;
	setAttr ".wl[305].w[16]" 0.03605110072396165;
	setAttr ".wl[305].w[28]" 0.022862255460718055;
	setAttr ".wl[305].w[32]" 0.026810173599468183;
	setAttr -s 5 ".wl[306].w[14:18]"  0.50865796049160794 0.25212060938500264 
		0.1425583754594138 0.065487035038397451 0.031176019625578127;
	setAttr -s 5 ".wl[307].w";
	setAttr ".wl[307].w[29]" 0.083972438840548308;
	setAttr ".wl[307].w[32]" 0.14852995859090085;
	setAttr ".wl[307].w[33]" 0.25317208247220507;
	setAttr ".wl[307].w[34]" 0.26661287947489498;
	setAttr ".wl[307].w[35]" 0.24771264062145085;
	setAttr -s 5 ".wl[308].w[18:22]"  0.31610571507330987 0.31610571507330987 
		0.10826102054411274 0.13450665649753604 0.12502089281173145;
	setAttr -s 5 ".wl[309].w";
	setAttr ".wl[309].w[28]" 0.19706765173537011;
	setAttr ".wl[309].w[29]" 0.20642111171771246;
	setAttr ".wl[309].w[30]" 0.19880562310771729;
	setAttr ".wl[309].w[33]" 0.19713121269177009;
	setAttr ".wl[309].w[34]" 0.20057440074743002;
	setAttr -s 5 ".wl[310].w";
	setAttr ".wl[310].w[20]" 0.20567184392705071;
	setAttr ".wl[310].w[21]" 0.22794172297014004;
	setAttr ".wl[310].w[22]" 0.21943188966462493;
	setAttr ".wl[310].w[24]" 0.17065500805834999;
	setAttr ".wl[310].w[25]" 0.17629953537983442;
	setAttr -s 5 ".wl[311].w";
	setAttr ".wl[311].w[30]" 0.18581230171034685;
	setAttr ".wl[311].w[31]" 0.18581230171034685;
	setAttr ".wl[311].w[33]" 0.15586332724264193;
	setAttr ".wl[311].w[34]" 0.23625603466833217;
	setAttr ".wl[311].w[35]" 0.23625603466833217;
	setAttr -s 5 ".wl[312].w";
	setAttr ".wl[312].w[21]" 0.17992459768901328;
	setAttr ".wl[312].w[22]" 0.26470520015796911;
	setAttr ".wl[312].w[23]" 0.26470520015796889;
	setAttr ".wl[312].w[26]" 0.14533250099752437;
	setAttr ".wl[312].w[27]" 0.14533250099752437;
	setAttr -s 5 ".wl[313].w";
	setAttr ".wl[313].w[29]" 0.18283176541460738;
	setAttr ".wl[313].w[30]" 0.22288452624207589;
	setAttr ".wl[313].w[31]" 0.22288452624207611;
	setAttr ".wl[313].w[34]" 0.18569959105062026;
	setAttr ".wl[313].w[35]" 0.18569959105062026;
	setAttr -s 5 ".wl[314].w";
	setAttr ".wl[314].w[21]" 0.17657652710454078;
	setAttr ".wl[314].w[22]" 0.22712799680933188;
	setAttr ".wl[314].w[23]" 0.22712799680933188;
	setAttr ".wl[314].w[26]" 0.18458373963839769;
	setAttr ".wl[314].w[27]" 0.18458373963839769;
	setAttr -s 5 ".wl[315].w";
	setAttr ".wl[315].w[24]" 0.20506762445914614;
	setAttr ".wl[315].w[25]" 0.21324878702860137;
	setAttr ".wl[315].w[28]" 0.18930854978201633;
	setAttr ".wl[315].w[29]" 0.20076374448139073;
	setAttr ".wl[315].w[30]" 0.19161129424884538;
	setAttr -s 5 ".wl[316].w";
	setAttr ".wl[316].w[25]" 0.17306992542266184;
	setAttr ".wl[316].w[26]" 0.21782925649428861;
	setAttr ".wl[316].w[27]" 0.21782925649428861;
	setAttr ".wl[316].w[30]" 0.19563578079438051;
	setAttr ".wl[316].w[31]" 0.19563578079438051;
	setAttr -s 5 ".wl[317].w";
	setAttr ".wl[317].w[22]" 0.15964724631607213;
	setAttr ".wl[317].w[26]" 0.21813520899173347;
	setAttr ".wl[317].w[27]" 0.21813520899173336;
	setAttr ".wl[317].w[30]" 0.20204116785023055;
	setAttr ".wl[317].w[31]" 0.20204116785023055;
	setAttr -s 5 ".wl[318].w";
	setAttr ".wl[318].w[25]" 0.20433041957720258;
	setAttr ".wl[318].w[29]" 0.21387218644253581;
	setAttr ".wl[318].w[30]" 0.19425086203921732;
	setAttr ".wl[318].w[33]" 0.18925007121247353;
	setAttr ".wl[318].w[34]" 0.19829646072857091;
	setAttr -s 5 ".wl[319].w";
	setAttr ".wl[319].w[14]" 0.80046185999291541;
	setAttr ".wl[319].w[15]" 0.15964053976520737;
	setAttr ".wl[319].w[16]" 0.023022996979755263;
	setAttr ".wl[319].w[17]" 0.010364467274157626;
	setAttr ".wl[319].w[24]" 0.0065101359879642532;
	setAttr -s 5 ".wl[320].w[13:17]"  0.028609791875647401 0.88844536237530036 
		0.052751549767317808 0.018698045272357248 0.011495250709377174;
	setAttr -s 5 ".wl[321].w";
	setAttr ".wl[321].w[2]" 0.018788741866141524;
	setAttr ".wl[321].w[3]" 0.018788741866141524;
	setAttr ".wl[321].w[6]" 0.44815155904735648;
	setAttr ".wl[321].w[7]" 0.44815155904735671;
	setAttr ".wl[321].w[8]" 0.066119398173003691;
	setAttr -s 5 ".wl[322].w";
	setAttr ".wl[322].w[2]" 0.030029482545694292;
	setAttr ".wl[322].w[3]" 0.030029482545694292;
	setAttr ".wl[322].w[6]" 0.40575245922354974;
	setAttr ".wl[322].w[7]" 0.40575245922354963;
	setAttr ".wl[322].w[8]" 0.1284361164615121;
	setAttr -s 5 ".wl[323].w";
	setAttr ".wl[323].w[2]" 0.035732923303746625;
	setAttr ".wl[323].w[3]" 0.035732923303746625;
	setAttr ".wl[323].w[6]" 0.37639971738088851;
	setAttr ".wl[323].w[7]" 0.37639971738088851;
	setAttr ".wl[323].w[8]" 0.17573471863072976;
	setAttr -s 5 ".wl[324].w";
	setAttr ".wl[324].w[2]" 0.012521548272849152;
	setAttr ".wl[324].w[3]" 0.012749959944010274;
	setAttr ".wl[324].w[6]" 0.41476490470098637;
	setAttr ".wl[324].w[7]" 0.46131445768496915;
	setAttr ".wl[324].w[8]" 0.098649129397185051;
	setAttr -s 5 ".wl[325].w";
	setAttr ".wl[325].w[2]" 0.032802745166402754;
	setAttr ".wl[325].w[3]" 0.033815073356714978;
	setAttr ".wl[325].w[6]" 0.32484294451518214;
	setAttr ".wl[325].w[7]" 0.35803904489043076;
	setAttr ".wl[325].w[8]" 0.25050019207126928;
	setAttr -s 5 ".wl[326].w";
	setAttr ".wl[326].w[2]" 0.010324801192772935;
	setAttr ".wl[326].w[3]" 0.011015018540996941;
	setAttr ".wl[326].w[6]" 0.33524111232765669;
	setAttr ".wl[326].w[7]" 0.50032141951395004;
	setAttr ".wl[326].w[8]" 0.1430976484246235;
	setAttr -s 5 ".wl[327].w";
	setAttr ".wl[327].w[2]" 0.0082343832806320624;
	setAttr ".wl[327].w[3]" 0.0094784423201265764;
	setAttr ".wl[327].w[6]" 0.22462247467160726;
	setAttr ".wl[327].w[7]" 0.5396401931393443;
	setAttr ".wl[327].w[8]" 0.2180245065882899;
	setAttr -s 5 ".wl[328].w";
	setAttr ".wl[328].w[3]" 0.029194655574705519;
	setAttr ".wl[328].w[4]" 0.027683467243596698;
	setAttr ".wl[328].w[6]" 0.26767609642379764;
	setAttr ".wl[328].w[7]" 0.36848657006080615;
	setAttr ".wl[328].w[8]" 0.30695921069709403;
	setAttr -s 5 ".wl[329].w";
	setAttr ".wl[329].w[3]" 0.019468042404572082;
	setAttr ".wl[329].w[4]" 0.019192814634134515;
	setAttr ".wl[329].w[6]" 0.16783658832933557;
	setAttr ".wl[329].w[7]" 0.40953273266143542;
	setAttr ".wl[329].w[8]" 0.38396982197052243;
	setAttr -s 5 ".wl[330].w";
	setAttr ".wl[330].w[3]" 0.0060680414042405496;
	setAttr ".wl[330].w[4]" 0.0059300972077320734;
	setAttr ".wl[330].w[6]" 0.064130794879141029;
	setAttr ".wl[330].w[7]" 0.50824328135461083;
	setAttr ".wl[330].w[8]" 0.41562778515427545;
	setAttr -s 5 ".wl[331].w";
	setAttr ".wl[331].w[2]" 0.019388697889462039;
	setAttr ".wl[331].w[3]" 0.019378800645744005;
	setAttr ".wl[331].w[6]" 0.44984183859586196;
	setAttr ".wl[331].w[7]" 0.44873738549971376;
	setAttr ".wl[331].w[8]" 0.06265327736921826;
	setAttr -s 5 ".wl[332].w";
	setAttr ".wl[332].w[2]" 0.0071914898594649399;
	setAttr ".wl[332].w[3]" 0.007185833161032538;
	setAttr ".wl[332].w[6]" 0.48609806832344404;
	setAttr ".wl[332].w[7]" 0.48296785852137725;
	setAttr ".wl[332].w[8]" 0.016556750134681327;
	setAttr -s 5 ".wl[333].w";
	setAttr ".wl[333].w[2]" 0.026403666356683609;
	setAttr ".wl[333].w[3]" 0.026392915104948986;
	setAttr ".wl[333].w[6]" 0.41708272285993764;
	setAttr ".wl[333].w[7]" 0.41640834662277576;
	setAttr ".wl[333].w[8]" 0.11371234905565396;
	setAttr -s 5 ".wl[334].w";
	setAttr ".wl[334].w[2]" 0.027554986369408355;
	setAttr ".wl[334].w[3]" 0.027555263031919158;
	setAttr ".wl[334].w[6]" 0.38976595180806706;
	setAttr ".wl[334].w[7]" 0.38978302248841656;
	setAttr ".wl[334].w[8]" 0.16534077630218888;
	setAttr -s 5 ".wl[335].w";
	setAttr ".wl[335].w[2]" 0.015242531511550797;
	setAttr ".wl[335].w[3]" 0.016515642561430326;
	setAttr ".wl[335].w[6]" 0.2944621277700939;
	setAttr ".wl[335].w[7]" 0.43037527262099246;
	setAttr ".wl[335].w[8]" 0.24340442553593256;
	setAttr -s 5 ".wl[336].w";
	setAttr ".wl[336].w[2]" 0.023637941811896792;
	setAttr ".wl[336].w[3]" 0.024165225043924925;
	setAttr ".wl[336].w[6]" 0.35510140541390434;
	setAttr ".wl[336].w[7]" 0.38735745964130902;
	setAttr ".wl[336].w[8]" 0.20973796808896497;
	setAttr -s 5 ".wl[337].w";
	setAttr ".wl[337].w[2]" 0.0055162725441421393;
	setAttr ".wl[337].w[3]" 0.0062400439356270956;
	setAttr ".wl[337].w[6]" 0.22904194910982165;
	setAttr ".wl[337].w[7]" 0.60602364974309464;
	setAttr ".wl[337].w[8]" 0.15317808466731456;
	setAttr -s 5 ".wl[338].w";
	setAttr ".wl[338].w[46]" 0.1748579417641401;
	setAttr ".wl[338].w[50]" 0.22177721999392769;
	setAttr ".wl[338].w[51]" 0.22177721999392769;
	setAttr ".wl[338].w[54]" 0.19079380912400226;
	setAttr ".wl[338].w[55]" 0.19079380912400226;
	setAttr -s 5 ".wl[339].w";
	setAttr ".wl[339].w[54]" 0.20020577458415462;
	setAttr ".wl[339].w[55]" 0.20020577458415462;
	setAttr ".wl[339].w[57]" 0.14543034423601103;
	setAttr ".wl[339].w[58]" 0.22707905329783981;
	setAttr ".wl[339].w[59]" 0.22707905329783981;
	setAttr -s 5 ".wl[340].w";
	setAttr ".wl[340].w[53]" 0.17986966906055168;
	setAttr ".wl[340].w[54]" 0.22992942480330231;
	setAttr ".wl[340].w[55]" 0.22992942480330231;
	setAttr ".wl[340].w[58]" 0.18013574066642185;
	setAttr ".wl[340].w[59]" 0.18013574066642185;
	setAttr -s 5 ".wl[341].w";
	setAttr ".wl[341].w[49]" 0.16874996358472269;
	setAttr ".wl[341].w[50]" 0.22377848439979248;
	setAttr ".wl[341].w[51]" 0.22377848439979225;
	setAttr ".wl[341].w[54]" 0.19184653380784639;
	setAttr ".wl[341].w[55]" 0.19184653380784639;
	setAttr -s 5 ".wl[342].w";
	setAttr ".wl[342].w[37]" 0.06186544823808808;
	setAttr ".wl[342].w[38]" 0.72986381745793971;
	setAttr ".wl[342].w[39]" 0.13633825621987028;
	setAttr ".wl[342].w[40]" 0.040854305122627638;
	setAttr ".wl[342].w[56]" 0.031078172961474301;
	setAttr -s 5 ".wl[343].w[37:41]"  0.023950316190131271 0.87817339548422435 
		0.063197996113533356 0.021597888829735113 0.01308040338237574;
	setAttr -s 5 ".wl[344].w[37:41]"  0.061237329190724117 0.67036430834694183 
		0.13292935427314242 0.082926692692164461 0.052542315497027141;
	setAttr -s 5 ".wl[345].w";
	setAttr ".wl[345].w[38]" 0.59703202633146391;
	setAttr ".wl[345].w[39]" 0.30834977552006942;
	setAttr ".wl[345].w[40]" 0.038839781641244832;
	setAttr ".wl[345].w[52]" 0.025452012731517034;
	setAttr ".wl[345].w[56]" 0.030326403775704797;
	setAttr -s 5 ".wl[346].w";
	setAttr ".wl[346].w[38]" 0.743641583825976;
	setAttr ".wl[346].w[39]" 0.20947769497071642;
	setAttr ".wl[346].w[40]" 0.027543576721714258;
	setAttr ".wl[346].w[41]" 0.011951153746511987;
	setAttr ".wl[346].w[48]" 0.0073859907350811741;
	setAttr -s 5 ".wl[347].w[38:42]"  0.44628214363909013 0.27975842112997401 
		0.1666566778035258 0.073593861178693237 0.033708896248716785;
	setAttr -s 5 ".wl[348].w";
	setAttr ".wl[348].w[53]" 0.089811639133861712;
	setAttr ".wl[348].w[56]" 0.11069804414326408;
	setAttr ".wl[348].w[57]" 0.22775733314697003;
	setAttr ".wl[348].w[58]" 0.28595505414183403;
	setAttr ".wl[348].w[59]" 0.28577792943407015;
	setAttr -s 5 ".wl[349].w";
	setAttr ".wl[349].w[49]" 0.21332646275635711;
	setAttr ".wl[349].w[50]" 0.19648828912104013;
	setAttr ".wl[349].w[53]" 0.20609388751842977;
	setAttr ".wl[349].w[54]" 0.20379957345877683;
	setAttr ".wl[349].w[58]" 0.18029178714539598;
	setAttr -s 5 ".wl[350].w";
	setAttr ".wl[350].w[53]" 0.20962978994149867;
	setAttr ".wl[350].w[54]" 0.20931160530206425;
	setAttr ".wl[350].w[57]" 0.18410116723334333;
	setAttr ".wl[350].w[58]" 0.19852022036125069;
	setAttr ".wl[350].w[59]" 0.19843721716184304;
	setAttr -s 5 ".wl[351].w";
	setAttr ".wl[351].w[48]" 0.18968596135406757;
	setAttr ".wl[351].w[49]" 0.21517112561265586;
	setAttr ".wl[351].w[50]" 0.20648371181927674;
	setAttr ".wl[351].w[53]" 0.19485711044754758;
	setAttr ".wl[351].w[54]" 0.19380209076645227;
	setAttr -s 5 ".wl[352].w[42:46]"  0.28119082962401604 0.28119082962401604 
		0.11418090794838343 0.16254763880977535 0.16088979399380918;
	setAttr -s 5 ".wl[353].w";
	setAttr ".wl[353].w[44]" 0.18704458562569173;
	setAttr ".wl[353].w[45]" 0.22652548137029274;
	setAttr ".wl[353].w[46]" 0.22552772553374961;
	setAttr ".wl[353].w[47]" 0.18734805874776311;
	setAttr ".wl[353].w[49]" 0.1735541487225028;
	setAttr -s 5 ".wl[354].w";
	setAttr ".wl[354].w[45]" 0.17488726562322834;
	setAttr ".wl[354].w[46]" 0.25719715871481696;
	setAttr ".wl[354].w[47]" 0.25719715871481674;
	setAttr ".wl[354].w[50]" 0.15535920847356902;
	setAttr ".wl[354].w[51]" 0.15535920847356902;
	setAttr -s 5 ".wl[355].w";
	setAttr ".wl[355].w[45]" 0.17221642378698634;
	setAttr ".wl[355].w[46]" 0.2245105706235421;
	setAttr ".wl[355].w[47]" 0.2245105706235421;
	setAttr ".wl[355].w[50]" 0.18938121748296477;
	setAttr ".wl[355].w[51]" 0.18938121748296477;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -35.494000659722978 -0 1;
	setAttr ".pm[1]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -3.1625157430882638 -33.268526655085935 -0 1;
	setAttr ".pm[2]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -3.1625157430882638 -17.339300124007611 -0 1;
	setAttr ".pm[3]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -3.1625157430882638 -2.8929017331742184 -0 1;
	setAttr ".pm[4]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -3.162518734167699 -0.67015482737685206 -4.5981487217112722 1;
	setAttr ".pm[5]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 3.1625157430882638 -33.268526655085935 -0 1;
	setAttr ".pm[6]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 3.1625167071053211 -17.339300124007611 -0.00015582718145634223 1;
	setAttr ".pm[7]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 3.1625163809154553 -2.8929017345939769 -0.00015582718145634223 1;
	setAttr ".pm[8]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 3.1629016260547553 -0.67015483341083337 -4.5983145461329542 1;
	setAttr ".pm[9]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -37.978580705903596 -0 1;
	setAttr ".pm[10]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -42.474487456135172 -0 1;
	setAttr ".pm[11]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -46.970394206366755 -0 1;
	setAttr ".pm[12]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -2.4845802154869925 -52.030139768270317 -0 1;
	setAttr ".pm[13]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -6.2850118116046039 -52.030188537027222 -0 1;
	setAttr ".pm[14]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -15.976813987303043 -52.030188537027222 -0 1;
	setAttr ".pm[15]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -25.452699650938055 -52.030188537027222 -0 1;
	setAttr ".pm[16]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -26.996247435966794 -51.746768054409351 -1.5200071404991811 1;
	setAttr ".pm[17]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -27.888066125846542 -51.556484929836579 -1.7711109829269798 1;
	setAttr ".pm[18]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -28.790728399749618 -51.556480244628482 -1.7711142987765209 1;
	setAttr ".pm[19]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -29.737263292274363 -51.556481273954503 -1.7711113843641275 1;
	setAttr ".pm[20]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -28.583972126135468 -52.101080420592901 -1.2322343654184413 1;
	setAttr ".pm[21]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -30.082796671717936 -52.101072576418737 -1.2844811861934071 1;
	setAttr ".pm[22]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -31.024213084438944 -52.101067678246643 -1.3172975123445598 1;
	setAttr ".pm[23]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -31.718842826946155 -52.101064057858579 -1.3415111291606163 1;
	setAttr ".pm[24]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -28.579678289097256 -52.207974614401728 -0.46308468279944287 1;
	setAttr ".pm[25]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -30.305840872480449 -52.207974614401728 -0.46319203617913812 1;
	setAttr ".pm[26]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -31.287333973076745 -52.207974614401728 -0.46325300883829135 1;
	setAttr ".pm[27]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -31.999213065178765 -52.207974614401728 -0.46329687800334679 1;
	setAttr ".pm[28]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -28.609450809474833 -52.165037202357659 0.28152382839311157 1;
	setAttr ".pm[29]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -30.22008295853167 -52.165037202357659 0.28152379680345102 1;
	setAttr ".pm[30]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -31.038051382483573 -52.165037202357659 0.28152383833143185 1;
	setAttr ".pm[31]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -31.72072430713072 -52.165037202357659 0.28152412831741724 1;
	setAttr ".pm[32]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -28.605374288005066 -51.919082731582158 0.88392714011655382 1;
	setAttr ".pm[33]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -29.685846924277882 -51.919097142146398 0.88392714011655382 1;
	setAttr ".pm[34]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -30.386676496164725 -51.919106477068567 0.88392719087297489 1;
	setAttr ".pm[35]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -30.978224711030759 -51.919114356736713 0.88392691011543012 1;
	setAttr ".pm[36]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 2.4845798768742258 -52.030139768270317 -0 1;
	setAttr ".pm[37]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 6.2850202733743625 -52.03029352828117 -0 1;
	setAttr ".pm[38]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 15.976869496370666 -52.03029352828117 -0 1;
	setAttr ".pm[39]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 25.452698632260237 -52.030293066859201 -0 1;
	setAttr ".pm[40]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 26.996112938550109 -51.746874145977309 -1.5201422913604332 1;
	setAttr ".pm[41]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 27.887909469525226 -51.55659119887455 -1.7713250461801389 1;
	setAttr ".pm[42]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 28.79002121373107 -51.556600711266732 -1.8028509293722068 1;
	setAttr ".pm[43]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 29.735978838927881 -51.556607206668843 -1.8359090892826351 1;
	setAttr ".pm[44]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 28.583863184399235 -52.101186547654876 -1.2325094013307532 1;
	setAttr ".pm[45]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 30.082686175344495 -52.101186441172871 -1.1802083567259194 1;
	setAttr ".pm[46]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 31.024101647474481 -52.101186334690837 -1.1473578991887914 1;
	setAttr ".pm[47]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 31.718730676552266 -52.101186299196833 -1.1231189921873861 1;
	setAttr ".pm[48]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 28.579637045068491 -52.208080067077674 -0.46335942269178931 1;
	setAttr ".pm[49]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 30.304750003413567 -52.208079925101671 -0.40316204053802734 1;
	setAttr ".pm[50]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 31.285646268839386 -52.208079854113677 -0.36893391140555298 1;
	setAttr ".pm[51]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 31.997092518702143 -52.208079783125655 -0.34410817392761972 1;
	setAttr ".pm[52]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 28.609475573639092 -52.165141980647597 0.2812462110021316 1;
	setAttr ".pm[53]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 30.219128365130928 -52.16514183867158 0.33741464074580779 1;
	setAttr ".pm[54]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 31.036599415200982 -52.165141767683572 0.36594008721888704 1;
	setAttr ".pm[55]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 31.718857258806821 -52.165141732189568 0.38974730340642899 1;
	setAttr ".pm[56]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 28.605451856594108 -51.919186977462061 0.88364948084265305 1;
	setAttr ".pm[57]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 29.686578750231678 -51.919163551421619 0.92137513165479556 1;
	setAttr ".pm[58]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 30.387832706137416 -51.919148359989343 0.94584521037261826 1;
	setAttr ".pm[59]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 30.979739126458128 -51.919135511161123 0.96649963752238022 1;
	setAttr ".pm[60]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -51.466300956598332 -0 1;
	setAttr ".pm[61]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -58.565101088542924 -0 1;
	setAttr ".gm" -type "matrix" 0.78059809155870785 0 -0 0 -0 2.2204460492503131e-016 -1 0
		 0 1 2.2204460492503131e-016 0 0.90536386572931171 0 13.178117411977139 1;
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
	setAttr -s 78 ".vl[0].vt";
	setAttr ".vl[0].vt[0]" -type "float3" 0 -1.7763568e-015 -2.2868149 ;
	setAttr ".vl[0].vt[1]" -type "float3" 0 -1.7763568e-015 -2.2868149 ;
	setAttr ".vl[0].vt[2]" -type "float3" 0 -1.7763568e-015 -2.2868149 ;
	setAttr ".vl[0].vt[32]" -type "float3" 0 0 -2.2868149 ;
	setAttr ".vl[0].vt[33]" -type "float3" 0 0 -2.2868149 ;
	setAttr ".vl[0].vt[34]" -type "float3" 0 0 -2.2868149 ;
	setAttr ".vl[0].vt[35]" -type "float3" 0 -1.7763568e-015 -2.2868149 ;
	setAttr ".vl[0].vt[36]" -type "float3" 0 -1.7763568e-015 -2.2868149 ;
	setAttr ".vl[0].vt[44]" -type "float3" -1.9182245 2.3172584 -2.3955791 ;
	setAttr ".vl[0].vt[47]" -type "float3" 1.4241939 0 0 ;
	setAttr ".vl[0].vt[49]" -type "float3" -5.4891138 2.3841858e-007 0 ;
	setAttr ".vl[0].vt[50]" -type "float3" -5.4891138 0 0 ;
	setAttr ".vl[0].vt[51]" -type "float3" -5.4891138 0 0 ;
	setAttr ".vl[0].vt[52]" -type "float3" -5.4891138 0 0 ;
	setAttr ".vl[0].vt[54]" -type "float3" -5.4891138 0 0 ;
	setAttr ".vl[0].vt[55]" -type "float3" -5.4891138 0 0 ;
	setAttr ".vl[0].vt[80]" -type "float3" 0 -1.7763568e-015 -2.2868149 ;
	setAttr ".vl[0].vt[81]" -type "float3" -5.4891138 0 0 ;
	setAttr ".vl[0].vt[89]" -type "float3" 0 -1.7763568e-015 -2.2868149 ;
	setAttr ".vl[0].vt[91]" -type "float3" 0 -1.7763568e-015 -2.2868149 ;
	setAttr ".vl[0].vt[111]" -type "float3" 0 0 -2.2868149 ;
	setAttr ".vl[0].vt[112]" -type "float3" 0 0 -2.2868149 ;
	setAttr ".vl[0].vt[113]" -type "float3" 0 -1.7763568e-015 -2.2868149 ;
	setAttr ".vl[0].vt[115]" -type "float3" 0 -1.7763568e-015 -2.2868149 ;
	setAttr ".vl[0].vt[117]" -type "float3" 0 -1.7763568e-015 -2.2868149 ;
	setAttr ".vl[0].vt[124]" -type "float3" -1.4241939 0 0 ;
	setAttr ".vl[0].vt[125]" -type "float3" 1.9182245 2.3172584 -2.3955791 ;
	setAttr ".vl[0].vt[127]" -type "float3" 5.7385058 0 0 ;
	setAttr ".vl[0].vt[128]" -type "float3" 5.7385058 0 0 ;
	setAttr ".vl[0].vt[129]" -type "float3" 5.7385058 0 0 ;
	setAttr ".vl[0].vt[130]" -type "float3" 5.7385058 0 0 ;
	setAttr ".vl[0].vt[131]" -type "float3" 5.7385058 0 0 ;
	setAttr ".vl[0].vt[132]" -type "float3" 5.7385058 0 0 ;
	setAttr ".vl[0].vt[133]" -type "float3" 5.7385058 0 0 ;
	setAttr ".vl[0].vt[163]" -type "float3" 0 2.8197474 0 ;
	setAttr ".vl[0].vt[164]" -type "float3" 0 4.4800091 0 ;
	setAttr ".vl[0].vt[165]" -type "float3" -1.0857439 0 0 ;
	setAttr ".vl[0].vt[166]" -type "float3" 0 2.2025733 0 ;
	setAttr ".vl[0].vt[167]" -type "float3" -1.8215944 0 0 ;
	setAttr ".vl[0].vt[177]" -type "float3" 0 3.9119616 1.7732899 ;
	setAttr ".vl[0].vt[179]" -type "float3" 0.22750653 2.4428267 0 ;
	setAttr ".vl[0].vt[181]" -type "float3" -0.22750698 2.4428267 0 ;
	setAttr ".vl[0].vt[182]" -type "float3" 0 2.8197474 0 ;
	setAttr ".vl[0].vt[183]" -type "float3" 0 2.2025733 0 ;
	setAttr ".vl[0].vt[184]" -type "float3" 1.0857439 0 0 ;
	setAttr ".vl[0].vt[186]" -type "float3" 1.8215944 0 0 ;
	setAttr ".vl[0].vt[187]" -type "float3" 0 4.4800091 0 ;
	setAttr ".vl[0].vt[286]" -type "float3" -5.4891138 0 0 ;
	setAttr ".vl[0].vt[287]" -type "float3" -5.4891138 0 0 ;
	setAttr ".vl[0].vt[288]" -type "float3" -5.4891138 0 0 ;
	setAttr ".vl[0].vt[289]" -type "float3" -5.4891138 0 0 ;
	setAttr ".vl[0].vt[290]" -type "float3" -5.4891138 0 0 ;
	setAttr ".vl[0].vt[291]" -type "float3" -5.4891138 0 0 ;
	setAttr ".vl[0].vt[292]" -type "float3" -5.4891138 0 0 ;
	setAttr ".vl[0].vt[294]" -type "float3" -5.4891138 0 0 ;
	setAttr ".vl[0].vt[295]" -type "float3" -5.4891138 0 0 ;
	setAttr ".vl[0].vt[297]" -type "float3" -5.4891138 0 0 ;
	setAttr ".vl[0].vt[298]" -type "float3" -5.4891138 0 0 ;
	setAttr ".vl[0].vt[299]" -type "float3" -5.4891138 0 0 ;
	setAttr ".vl[0].vt[300]" -type "float3" -5.4891138 0 0 ;
	setAttr ".vl[0].vt[301]" -type "float3" -5.4891138 0 0 ;
	setAttr ".vl[0].vt[321]" -type "float3" 5.7385058 0 0 ;
	setAttr ".vl[0].vt[322]" -type "float3" 5.7385058 0 0 ;
	setAttr ".vl[0].vt[323]" -type "float3" 5.7385058 0 0 ;
	setAttr ".vl[0].vt[324]" -type "float3" 5.7385058 0 0 ;
	setAttr ".vl[0].vt[325]" -type "float3" 5.7385058 0 0 ;
	setAttr ".vl[0].vt[326]" -type "float3" 5.7385058 0 0 ;
	setAttr ".vl[0].vt[327]" -type "float3" 5.7385058 0 0 ;
	setAttr ".vl[0].vt[328]" -type "float3" 5.7385058 0 0 ;
	setAttr ".vl[0].vt[329]" -type "float3" 5.7385058 0 0 ;
	setAttr ".vl[0].vt[330]" -type "float3" 5.7385058 0 0 ;
	setAttr ".vl[0].vt[331]" -type "float3" 5.7385058 0 0 ;
	setAttr ".vl[0].vt[332]" -type "float3" 5.7385058 0 0 ;
	setAttr ".vl[0].vt[333]" -type "float3" 5.7385058 0 0 ;
	setAttr ".vl[0].vt[334]" -type "float3" 5.7385058 0 0 ;
	setAttr ".vl[0].vt[335]" -type "float3" 5.7385058 0 0 ;
	setAttr ".vl[0].vt[336]" -type "float3" 5.7385058 0 0 ;
	setAttr ".vl[0].vt[337]" -type "float3" 5.7385058 0 0 ;
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
createNode groupId -n "groupId22";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	setAttr -s 63 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 63 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 35.494000659722978 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.1625157430882638 -2.2254740046370429
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -15.929226531078324
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -14.446398390833393
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.9910794352439041e-006
		 -2.2227469057973663 4.5981487217112722 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.1625157430882638 -2.2254740046370429
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 -9.6401705729221021e-007
		 -15.929226531078324 0.00015582718145634223 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.2618986578469844e-007
		 -14.446398389413634 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.00038524513930005 -2.2227469011831436
		 4.5981587189514981 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 2.4845800461806178
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 4.4959067502315762
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 4.4959067502315833
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.4845802154869925 5.0597455619035614
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.8004315961176114 4.8768756904848942e-005
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 9.691802175698438 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 9.4758856636350117 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.5435477850287391 -0.28342048261787056
		 1.5200071404991811 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.89181868987974866 -0.19028312457277252
		 0.25110384242779871 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.90266227390307563 -4.6852080970438692e-006
		 3.3158495411633737e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.94653489252474543 1.029326021750876e-006
		 -2.9144123934177202e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.131272475197413 0.070891883565678881
		 1.2322343654184413 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4988245455824689 -7.8441741635515427e-006
		 0.052246820774965785 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.94141641272100784 -4.8981720937035789e-006
		 0.032816326151152708 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.69462974250721032 -3.6203880640073294e-006
		 0.024213616816056494 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.1269786381592013 0.17778607737450614
		 0.46308468279944287 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.7261625833831928 0
		 0.00010735337969525194 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.98149310059629613 0
		 6.0972659153224473e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.71187909210201994 0
		 4.3869165055443471e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.1567511585367782 0.13484866533043771
		 -0.28152382839311157 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.6106321490568369 0
		 3.1589660554054433e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.81796842395190339 0
		 -4.1527980831901345e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.68267292464714657 0
		 -2.8998598539109466e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.1526746370670118 -0.11110580544506377
		 -0.88392714011655382 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.0804726362728161 1.4410564240563417e-005
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.70082957188684247 9.3349221685912198e-006
		 -5.0756421066111557e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.59154821486603382 7.8796681464154972e-006
		 2.8075754476830639e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.4845798768742258 5.0597455619035614
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.8004403965001368 0.00015376001085343205
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 0 0 -9.6918492229963036 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 0 0 0 -9.4758291358895708 -4.6142196907794641e-007
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.543414306289872 -0.28341892088189269
		 1.5201422913604332 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.89179653097511746
		 -0.19028294710275873 0.25118275481970564 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.90211174420584328
		 9.512392182386975e-006 0.031525883192067949 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.94595762519681159
		 6.4954021112839655e-006 0.033058159910428264 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.1311645521389977 0.070893480795675146
		 1.2325094013307532 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4988229909452606 -1.0648200543528219e-007
		 -0.052301044604833757 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[47]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.94141547212998589
		 -1.0648203385699162e-007 -0.032850457537128008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[48]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.69462902907778457
		 -3.5494004180236516e-008 -0.024238907001405297 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.1269384128082542 0.17778700021847271
		 0.46335942269178931 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.7251129583450755 -1.4197600251009135e-007
		 -0.060197382153761969 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[51]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.98089626542581954
		 -7.0987994149618316e-008 -0.034228129132474361 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[52]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.71144624986275673
		 -7.0988022571327747e-008 -0.024825737477933263 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[53]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.1567769413788547 0.13484891378839592
		 -0.2812462110021316 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[54]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.6096527914918362 -1.4197601672094606e-007
		 -0.056168429743676196 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[55]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.81747105007005416
		 -7.0988008360473032e-008 -0.028525446473079252 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[56]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.6822578436058393 -3.5494004180236516e-008
		 -0.023807216187541946 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[57]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.1527532243338712 -0.11110608939713984
		 -0.88364948084265305 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[58]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.0811268936375704 -2.3426040442586782e-005
		 -0.037725650812142519 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[59]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.70125395590573802
		 -1.5191432275685202e-005 -0.024470078717822696 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[60]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.59190642032071139
		 -1.284882822005784e-005 -0.020654427149761956 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[61]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 4.4959067502315762
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[62]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 7.0988001319445928
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 63 ".m";
	setAttr -s 63 ".p";
	setAttr -s 63 ".g[0:62]" yes no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no;
	setAttr ".bp" yes;
createNode displayLayer -n "layer1";
	setAttr ".do" 1;
createNode displayLayer -n "layer2";
	setAttr ".dt" 2;
	setAttr ".do" 2;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 11 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 12 ".dsm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -s 12 ".gn";
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
	setAttr -s 3 ".s";
select -ne :defaultTextureList1;
	setAttr -s 5 ".tx";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 5 ".u";
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
connectAttr "pasted__groupParts2.og" "pasted__pCubeShape1.i";
connectAttr "pasted__groupId3.id" "pasted__pCubeShape1.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pasted__pCubeShape1.iog.og[1].gco";
connectAttr "pasted__groupId4.id" "pasted__pCubeShape1.ciog.cog[1].cgid";
connectAttr "pasted__groupId1.id" "pasted__sheep_bodyShape.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pasted__sheep_bodyShape.iog.og[1].gco";
connectAttr "pasted__groupParts1.og" "pasted__sheep_bodyShape.i";
connectAttr "pasted__groupId2.id" "pasted__sheep_bodyShape.ciog.cog[1].cgid";
connectAttr "groupParts11.og" "bodyShape.i";
connectAttr "polyTweakUV15.uvtk[0]" "bodyShape.uvst[0].uvtw";
connectAttr "groupId11.id" "bodyShape.iog.og[0].gid";
connectAttr "lambert9SG.mwc" "bodyShape.iog.og[0].gco";
connectAttr "groupId12.id" "bodyShape.ciog.cog[0].cgid";
connectAttr "polyMapSewMove14.out" "faceShape.i";
connectAttr "groupId10.id" "faceShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "faceShape.iog.og[0].gco";
connectAttr "polyTweakUV3.uvtk[0]" "faceShape.uvst[0].uvtw";
connectAttr "polyChipOff3.out" "polySurfaceShape2.i";
connectAttr "groupId6.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupParts12.og" "left_hornShape.i";
connectAttr "polyTweakUV5.uvtk[0]" "left_hornShape.uvst[0].uvtw";
connectAttr "groupId13.id" "left_hornShape.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "left_hornShape.iog.og[0].gco";
connectAttr "groupId14.id" "left_hornShape.ciog.cog[0].cgid";
connectAttr "groupParts13.og" "right_hornShape.i";
connectAttr "polyTweakUV6.uvtk[0]" "right_hornShape.uvst[0].uvtw";
connectAttr "groupId15.id" "right_hornShape.iog.og[0].gid";
connectAttr "lambert6SG.mwc" "right_hornShape.iog.og[0].gco";
connectAttr "groupId16.id" "right_hornShape.ciog.cog[0].cgid";
connectAttr "polyChipOff2.out" "polySurfaceShape1.i";
connectAttr "groupId1.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "polyTweakUV9.out" "left_legShape.i";
connectAttr "groupId2.id" "left_legShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "left_legShape.iog.og[0].gco";
connectAttr "polyTweakUV9.uvtk[0]" "left_legShape.uvst[0].uvtw";
connectAttr "polyTweakUV13.out" "left_armShape.i";
connectAttr "groupId3.id" "left_armShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "left_armShape.iog.og[0].gco";
connectAttr "polyTweakUV13.uvtk[0]" "left_armShape.uvst[0].uvtw";
connectAttr "polyTweakUV11.out" "right_legShape.i";
connectAttr "groupId4.id" "right_legShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "right_legShape.iog.og[0].gco";
connectAttr "polyTweakUV11.uvtk[0]" "right_legShape.uvst[0].uvtw";
connectAttr "polyTweakUV12.out" "right_armShape.i";
connectAttr "groupId5.id" "right_armShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "right_armShape.iog.og[0].gco";
connectAttr "polyTweakUV12.uvtk[0]" "right_armShape.uvst[0].uvtw";
connectAttr "polyChipOff1.out" "pasted__polySurfaceShape1.i";
connectAttr "pasted__groupId5.id" "pasted__polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pasted__polySurfaceShape1.iog.og[0].gco"
		;
connectAttr "pasted__polyTweakUV10.uvtk[0]" "pasted__polySurfaceShape1.uvst[0].uvtw"
		;
connectAttr "layer2.di" "polySurface3.do";
connectAttr "skinCluster1.og[0]" "polySurfaceShape3.i";
connectAttr "skinCluster1GroupId.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupId22.id" "polySurfaceShape3.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape3.iog.og[1].gco";
connectAttr "tweak1.vl[0].vt[0]" "polySurfaceShape3.twl";
connectAttr "polyTweakUV16.uvtk[0]" "polySurfaceShape3Orig.uvst[0].uvtw";
connectAttr "polyTweakUV16.out" "polySurfaceShape3Orig.i";
connectAttr "layer1.di" "Character1_Hips.do";
connectAttr "Character1_Hips.s" "Character1_LeftUpLeg.is";
connectAttr "Character1_LeftUpLeg.s" "Character1_LeftLeg.is";
connectAttr "Character1_LeftLeg.s" "Character1_LeftFoot.is";
connectAttr "Character1_LeftFoot.s" "Character1_LeftToeBase.is";
connectAttr "Character1_Hips.s" "Character1_RightUpLeg.is";
connectAttr "Character1_RightUpLeg.s" "Character1_RightLeg.is";
connectAttr "Character1_RightLeg.s" "Character1_RightFoot.is";
connectAttr "Character1_RightFoot.s" "Character1_RightToeBase.is";
connectAttr "Character1_Hips.s" "Character1_Spine.is";
connectAttr "Character1_Spine.s" "Character1_Spine1.is";
connectAttr "Character1_Spine1.s" "Character1_Spine2.is";
connectAttr "Character1_Spine2.s" "Character1_LeftShoulder.is";
connectAttr "Character1_LeftShoulder.s" "Character1_LeftArm.is";
connectAttr "Character1_LeftArm.s" "Character1_LeftForeArm.is";
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
connectAttr "Character1_RightShoulder.s" "Character1_RightArm.is";
connectAttr "Character1_RightArm.s" "Character1_RightForeArm.is";
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
connectAttr "Character1_Neck.s" "Character1_Head.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pCube1SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pCube1SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert10SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "pasted__pCube1SG1.msg" "pasted__materialInfo2.sg";
connectAttr "pasted__polyMapSewMove43.out" "pasted__polyTweakUV10.ip";
connectAttr "pasted__polyMapSewMove42.out" "pasted__polyMapSewMove43.ip";
connectAttr "pasted__polyMapSewMove41.out" "pasted__polyMapSewMove42.ip";
connectAttr "pasted__polyMapSewMove40.out" "pasted__polyMapSewMove41.ip";
connectAttr "pasted__polyMapSewMove39.out" "pasted__polyMapSewMove40.ip";
connectAttr "pasted__polyMapSewMove38.out" "pasted__polyMapSewMove39.ip";
connectAttr "pasted__polyTweakUV9.out" "pasted__polyMapSewMove38.ip";
connectAttr "pasted__polyMapSewMove37.out" "pasted__polyTweakUV9.ip";
connectAttr "pasted__polyMapSewMove36.out" "pasted__polyMapSewMove37.ip";
connectAttr "pasted__polyMapSewMove35.out" "pasted__polyMapSewMove36.ip";
connectAttr "pasted__polyTweakUV8.out" "pasted__polyMapSewMove35.ip";
connectAttr "pasted__polyMapSewMove34.out" "pasted__polyTweakUV8.ip";
connectAttr "pasted__polyMapSewMove33.out" "pasted__polyMapSewMove34.ip";
connectAttr "pasted__polyMapSewMove32.out" "pasted__polyMapSewMove33.ip";
connectAttr "pasted__polyTweakUV7.out" "pasted__polyMapSewMove32.ip";
connectAttr "pasted__polyMapSewMove31.out" "pasted__polyTweakUV7.ip";
connectAttr "pasted__polyMapSewMove30.out" "pasted__polyMapSewMove31.ip";
connectAttr "pasted__polyMapSewMove29.out" "pasted__polyMapSewMove30.ip";
connectAttr "pasted__polyMapSewMove28.out" "pasted__polyMapSewMove29.ip";
connectAttr "pasted__polyMapSewMove27.out" "pasted__polyMapSewMove28.ip";
connectAttr "pasted__polyMapSewMove26.out" "pasted__polyMapSewMove27.ip";
connectAttr "pasted__polyTweakUV6.out" "pasted__polyMapSewMove26.ip";
connectAttr "pasted__polyMapSewMove25.out" "pasted__polyTweakUV6.ip";
connectAttr "pasted__polyMapSewMove24.out" "pasted__polyMapSewMove25.ip";
connectAttr "pasted__polyMapSewMove23.out" "pasted__polyMapSewMove24.ip";
connectAttr "pasted__polyTweakUV5.out" "pasted__polyMapSewMove23.ip";
connectAttr "pasted__polyMapSewMove22.out" "pasted__polyTweakUV5.ip";
connectAttr "pasted__polyMapSewMove21.out" "pasted__polyMapSewMove22.ip";
connectAttr "pasted__polyMapSewMove20.out" "pasted__polyMapSewMove21.ip";
connectAttr "pasted__polyMapSewMove19.out" "pasted__polyMapSewMove20.ip";
connectAttr "pasted__polyMapSewMove18.out" "pasted__polyMapSewMove19.ip";
connectAttr "pasted__polyMapSewMove17.out" "pasted__polyMapSewMove18.ip";
connectAttr "pasted__polyMapSewMove16.out" "pasted__polyMapSewMove17.ip";
connectAttr "pasted__polyMapSewMove15.out" "pasted__polyMapSewMove16.ip";
connectAttr "pasted__polyMapSewMove14.out" "pasted__polyMapSewMove15.ip";
connectAttr "pasted__polyTweakUV4.out" "pasted__polyMapSewMove14.ip";
connectAttr "pasted__polyMapSewMove13.out" "pasted__polyTweakUV4.ip";
connectAttr "pasted__polyMapSewMove12.out" "pasted__polyMapSewMove13.ip";
connectAttr "pasted__polyMapSewMove11.out" "pasted__polyMapSewMove12.ip";
connectAttr "pasted__polyMapSewMove10.out" "pasted__polyMapSewMove11.ip";
connectAttr "pasted__polyMapSewMove9.out" "pasted__polyMapSewMove10.ip";
connectAttr "pasted__polyMapSewMove8.out" "pasted__polyMapSewMove9.ip";
connectAttr "pasted__polyTweakUV3.out" "pasted__polyMapSewMove8.ip";
connectAttr "pasted__polyMapSewMove7.out" "pasted__polyTweakUV3.ip";
connectAttr "pasted__polyMapSewMove6.out" "pasted__polyMapSewMove7.ip";
connectAttr "pasted__polyTweakUV2.out" "pasted__polyMapSewMove6.ip";
connectAttr "pasted__polyMapSewMove5.out" "pasted__polyTweakUV2.ip";
connectAttr "pasted__polyMapCut4.out" "pasted__polyMapSewMove5.ip";
connectAttr "pasted__polyMapSewMove4.out" "pasted__polyMapCut4.ip";
connectAttr "pasted__polyTweakUV1.out" "pasted__polyMapSewMove4.ip";
connectAttr "pasted__polyMapSewMove3.out" "pasted__polyTweakUV1.ip";
connectAttr "pasted__polyAutoProj2.out" "pasted__polyMapSewMove3.ip";
connectAttr "pasted__polyMergeVert84.out" "pasted__polyAutoProj2.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyAutoProj2.mp";
connectAttr "pasted__polyMergeVert83.out" "pasted__polyMergeVert84.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert84.mp";
connectAttr "pasted__polyMergeVert82.out" "pasted__polyMergeVert83.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert83.mp";
connectAttr "pasted__polyMergeVert81.out" "pasted__polyMergeVert82.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert82.mp";
connectAttr "pasted__polyMergeVert80.out" "pasted__polyMergeVert81.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert81.mp";
connectAttr "pasted__polyMergeVert79.out" "pasted__polyMergeVert80.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert80.mp";
connectAttr "pasted__polyMergeVert78.out" "pasted__polyMergeVert79.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert79.mp";
connectAttr "pasted__polyMergeVert77.out" "pasted__polyMergeVert78.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert78.mp";
connectAttr "pasted__polyMergeVert76.out" "pasted__polyMergeVert77.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert77.mp";
connectAttr "pasted__polyMergeVert75.out" "pasted__polyMergeVert76.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert76.mp";
connectAttr "pasted__polyMergeVert74.out" "pasted__polyMergeVert75.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert75.mp";
connectAttr "pasted__polyMergeVert73.out" "pasted__polyMergeVert74.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert74.mp";
connectAttr "pasted__polyMergeVert72.out" "pasted__polyMergeVert73.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert73.mp";
connectAttr "pasted__polyMergeVert71.out" "pasted__polyMergeVert72.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert72.mp";
connectAttr "pasted__polyMergeVert70.out" "pasted__polyMergeVert71.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert71.mp";
connectAttr "pasted__polyMergeVert69.out" "pasted__polyMergeVert70.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert70.mp";
connectAttr "pasted__polyMergeVert68.out" "pasted__polyMergeVert69.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert69.mp";
connectAttr "pasted__polyMergeVert67.out" "pasted__polyMergeVert68.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert68.mp";
connectAttr "pasted__polyMergeVert66.out" "pasted__polyMergeVert67.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert67.mp";
connectAttr "pasted__polyMergeVert65.out" "pasted__polyMergeVert66.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert66.mp";
connectAttr "pasted__polyMergeVert64.out" "pasted__polyMergeVert65.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert65.mp";
connectAttr "pasted__polyMergeVert63.out" "pasted__polyMergeVert64.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert64.mp";
connectAttr "pasted__polyMergeVert62.out" "pasted__polyMergeVert63.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert63.mp";
connectAttr "pasted__polyMirror4.out" "pasted__polyMergeVert62.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert62.mp";
connectAttr "pasted__groupParts18.og" "pasted__polyMirror4.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMirror4.mp";
connectAttr "pasted__polyAppend12.out" "pasted__groupParts18.ig";
connectAttr "pasted__groupId5.id" "pasted__groupParts18.gi";
connectAttr "pasted__polyTweak39.out" "pasted__polyAppend12.ip";
connectAttr "pasted__deleteComponent41.og" "pasted__polyTweak39.ip";
connectAttr "pasted__deleteComponent40.og" "pasted__deleteComponent41.ig";
connectAttr "pasted__deleteComponent39.og" "pasted__deleteComponent40.ig";
connectAttr "pasted__deleteComponent38.og" "pasted__deleteComponent39.ig";
connectAttr "pasted__polyMergeVert61.out" "pasted__deleteComponent38.ig";
connectAttr "pasted__polyTweak38.out" "pasted__polyMergeVert61.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert61.mp";
connectAttr "pasted__groupParts17.og" "pasted__polyTweak38.ip";
connectAttr "pasted__polyExtrudeEdge2.out" "pasted__groupParts17.ig";
connectAttr "pasted__deleteComponent37.og" "pasted__polyExtrudeEdge2.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyExtrudeEdge2.mp";
connectAttr "pasted__deleteComponent36.og" "pasted__deleteComponent37.ig";
connectAttr "pasted__groupParts16.og" "pasted__deleteComponent36.ig";
connectAttr "pasted__polyAppend11.out" "pasted__groupParts16.ig";
connectAttr "pasted__groupParts15.og" "pasted__polyAppend11.ip";
connectAttr "pasted__polyAppend10.out" "pasted__groupParts15.ig";
connectAttr "pasted__groupParts14.og" "pasted__polyAppend10.ip";
connectAttr "pasted__polyAppend9.out" "pasted__groupParts14.ig";
connectAttr "pasted__polyTweak37.out" "pasted__polyAppend9.ip";
connectAttr "pasted__deleteComponent35.og" "pasted__polyTweak37.ip";
connectAttr "pasted__groupParts13.og" "pasted__deleteComponent35.ig";
connectAttr "pasted__polyCloseBorder1.out" "pasted__groupParts13.ig";
connectAttr "pasted__groupParts12.og" "pasted__polyCloseBorder1.ip";
connectAttr "pasted__polyAppend8.out" "pasted__groupParts12.ig";
connectAttr "pasted__groupParts11.og" "pasted__polyAppend8.ip";
connectAttr "pasted__polyAppend7.out" "pasted__groupParts11.ig";
connectAttr "pasted__polyTweak36.out" "pasted__polyAppend7.ip";
connectAttr "pasted__groupParts10.og" "pasted__polyTweak36.ip";
connectAttr "pasted__polyExtrudeEdge1.out" "pasted__groupParts10.ig";
connectAttr "pasted__deleteComponent34.og" "pasted__polyExtrudeEdge1.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyExtrudeEdge1.mp";
connectAttr "pasted__deleteComponent33.og" "pasted__deleteComponent34.ig";
connectAttr "pasted__deleteComponent32.og" "pasted__deleteComponent33.ig";
connectAttr "pasted__groupParts9.og" "pasted__deleteComponent32.ig";
connectAttr "pasted__polyAppend6.out" "pasted__groupParts9.ig";
connectAttr "pasted__deleteComponent31.og" "pasted__polyAppend6.ip";
connectAttr "pasted__deleteComponent30.og" "pasted__deleteComponent31.ig";
connectAttr "pasted__polyMergeVert60.out" "pasted__deleteComponent30.ig";
connectAttr "pasted__polyMergeVert59.out" "pasted__polyMergeVert60.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert60.mp";
connectAttr "pasted__polyMergeVert58.out" "pasted__polyMergeVert59.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert59.mp";
connectAttr "pasted__polyMergeVert57.out" "pasted__polyMergeVert58.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert58.mp";
connectAttr "pasted__polySplitRing8.out" "pasted__polyMergeVert57.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert57.mp";
connectAttr "pasted__polyTweak35.out" "pasted__polySplitRing8.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polySplitRing8.mp";
connectAttr "pasted__deleteComponent29.og" "pasted__polyTweak35.ip";
connectAttr "pasted__polyTweak34.out" "pasted__deleteComponent29.ig";
connectAttr "pasted__deleteComponent28.og" "pasted__polyTweak34.ip";
connectAttr "pasted__polyTweak33.out" "pasted__deleteComponent28.ig";
connectAttr "pasted__polyExtrudeFace27.out" "pasted__polyTweak33.ip";
connectAttr "pasted__polyExtrudeFace26.out" "pasted__polyExtrudeFace27.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyExtrudeFace27.mp";
connectAttr "pasted__polyTweak32.out" "pasted__polyExtrudeFace26.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyExtrudeFace26.mp";
connectAttr "pasted__polyExtrudeFace25.out" "pasted__polyTweak32.ip";
connectAttr "pasted__polyTweak31.out" "pasted__polyExtrudeFace25.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyExtrudeFace25.mp";
connectAttr "pasted__polyExtrudeFace24.out" "pasted__polyTweak31.ip";
connectAttr "pasted__polyTweak30.out" "pasted__polyExtrudeFace24.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyExtrudeFace24.mp";
connectAttr "pasted__polyExtrudeFace23.out" "pasted__polyTweak30.ip";
connectAttr "pasted__groupParts8.og" "pasted__polyExtrudeFace23.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyExtrudeFace23.mp";
connectAttr "pasted__polyAppend5.out" "pasted__groupParts8.ig";
connectAttr "pasted__deleteComponent27.og" "pasted__polyAppend5.ip";
connectAttr "pasted__deleteComponent26.og" "pasted__deleteComponent27.ig";
connectAttr "pasted__groupParts7.og" "pasted__deleteComponent26.ig";
connectAttr "pasted__polyAppend4.out" "pasted__groupParts7.ig";
connectAttr "pasted__groupParts6.og" "pasted__polyAppend4.ip";
connectAttr "pasted__polyAppend3.out" "pasted__groupParts6.ig";
connectAttr "pasted__groupParts5.og" "pasted__polyAppend3.ip";
connectAttr "pasted__polyAppend2.out" "pasted__groupParts5.ig";
connectAttr "pasted__groupParts4.og" "pasted__polyAppend2.ip";
connectAttr "pasted__polyAppend1.out" "pasted__groupParts4.ig";
connectAttr "pasted__deleteComponent25.og" "pasted__polyAppend1.ip";
connectAttr "pasted__deleteComponent24.og" "pasted__deleteComponent25.ig";
connectAttr "pasted__deleteComponent23.og" "pasted__deleteComponent24.ig";
connectAttr "pasted__polyTweak29.out" "pasted__deleteComponent23.ig";
connectAttr "pasted__polyExtrudeFace22.out" "pasted__polyTweak29.ip";
connectAttr "pasted__polyExtrudeFace21.out" "pasted__polyExtrudeFace22.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyExtrudeFace22.mp";
connectAttr "pasted__polyTweak28.out" "pasted__polyExtrudeFace21.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyExtrudeFace21.mp";
connectAttr "pasted__polyExtrudeFace20.out" "pasted__polyTweak28.ip";
connectAttr "pasted__polyMergeVert56.out" "pasted__polyExtrudeFace20.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyExtrudeFace20.mp";
connectAttr "pasted__polyMergeVert55.out" "pasted__polyMergeVert56.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert56.mp";
connectAttr "pasted__polyMergeVert54.out" "pasted__polyMergeVert55.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert55.mp";
connectAttr "pasted__polyMergeVert53.out" "pasted__polyMergeVert54.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert54.mp";
connectAttr "pasted__polyMergeVert52.out" "pasted__polyMergeVert53.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert53.mp";
connectAttr "pasted__polyMergeVert51.out" "pasted__polyMergeVert52.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert52.mp";
connectAttr "pasted__deleteComponent22.og" "pasted__polyMergeVert51.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert51.mp";
connectAttr "pasted__polyMergeVert50.out" "pasted__deleteComponent22.ig";
connectAttr "pasted__polyMergeVert49.out" "pasted__polyMergeVert50.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert50.mp";
connectAttr "pasted__groupParts3.og" "pasted__polyMergeVert49.ip";
connectAttr "pasted__polySurfaceShape1.wm" "pasted__polyMergeVert49.mp";
connectAttr "pasted__polyUnite1.out" "pasted__groupParts3.ig";
connectAttr "pasted__sheep_bodyShape.o" "pasted__polyUnite1.ip[0]";
connectAttr "pasted__pCubeShape1.o" "pasted__polyUnite1.ip[1]";
connectAttr "pasted__sheep_bodyShape.wm" "pasted__polyUnite1.im[0]";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyUnite1.im[1]";
connectAttr "pasted__deleteComponent21.og" "pasted__groupParts1.ig";
connectAttr "pasted__groupId1.id" "pasted__groupParts1.gi";
connectAttr "pasted__polyTweak27.out" "pasted__deleteComponent21.ig";
connectAttr "pasted__sheep_body1.out" "pasted__polyTweak27.ip";
connectAttr "pasted__polySplitRing7.out" "pasted__groupParts2.ig";
connectAttr "pasted__groupId3.id" "pasted__groupParts2.gi";
connectAttr "pasted__polyTweak26.out" "pasted__polySplitRing7.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polySplitRing7.mp";
connectAttr "pasted__deleteComponent20.og" "pasted__polyTweak26.ip";
connectAttr "pasted__deleteComponent19.og" "pasted__deleteComponent20.ig";
connectAttr "pasted__deleteComponent18.og" "pasted__deleteComponent19.ig";
connectAttr "pasted__deleteComponent17.og" "pasted__deleteComponent18.ig";
connectAttr "pasted__polyMapSew2.out" "pasted__deleteComponent17.ig";
connectAttr "pasted__polyMapSewMove2.out" "pasted__polyMapSew2.ip";
connectAttr "pasted__polyMapCut3.out" "pasted__polyMapSewMove2.ip";
connectAttr "pasted__polyMapCut2.out" "pasted__polyMapCut3.ip";
connectAttr "pasted__polyMapCut1.out" "pasted__polyMapCut2.ip";
connectAttr "pasted__polyMapSew1.out" "pasted__polyMapCut1.ip";
connectAttr "pasted__polyMapSewMove1.out" "pasted__polyMapSew1.ip";
connectAttr "pasted__polyAutoProj1.out" "pasted__polyMapSewMove1.ip";
connectAttr "pasted__polyMergeVert48.out" "pasted__polyAutoProj1.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyAutoProj1.mp";
connectAttr "pasted__polyMergeVert47.out" "pasted__polyMergeVert48.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert48.mp";
connectAttr "pasted__polyMergeVert46.out" "pasted__polyMergeVert47.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert47.mp";
connectAttr "pasted__polyMergeVert45.out" "pasted__polyMergeVert46.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert46.mp";
connectAttr "pasted__polyMergeVert44.out" "pasted__polyMergeVert45.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert45.mp";
connectAttr "pasted__polyMergeVert43.out" "pasted__polyMergeVert44.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert44.mp";
connectAttr "pasted__polyMergeVert42.out" "pasted__polyMergeVert43.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert43.mp";
connectAttr "pasted__polyMergeVert41.out" "pasted__polyMergeVert42.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert42.mp";
connectAttr "pasted__polyMergeVert40.out" "pasted__polyMergeVert41.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert41.mp";
connectAttr "pasted__polyMergeVert39.out" "pasted__polyMergeVert40.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert40.mp";
connectAttr "pasted__polyMergeVert38.out" "pasted__polyMergeVert39.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert39.mp";
connectAttr "pasted__polyMergeVert37.out" "pasted__polyMergeVert38.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert38.mp";
connectAttr "pasted__polyMergeVert36.out" "pasted__polyMergeVert37.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert37.mp";
connectAttr "pasted__polyMergeVert35.out" "pasted__polyMergeVert36.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert36.mp";
connectAttr "pasted__polyMergeVert34.out" "pasted__polyMergeVert35.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert35.mp";
connectAttr "pasted__polyMergeVert33.out" "pasted__polyMergeVert34.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert34.mp";
connectAttr "pasted__polyMergeVert32.out" "pasted__polyMergeVert33.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert33.mp";
connectAttr "pasted__polyMergeVert31.out" "pasted__polyMergeVert32.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert32.mp";
connectAttr "pasted__polyMergeEdge1.out" "pasted__polyMergeVert31.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert31.mp";
connectAttr "pasted__polyMirror3.out" "pasted__polyMergeEdge1.ip";
connectAttr "pasted__polyTweak25.out" "pasted__polyMirror3.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMirror3.mp";
connectAttr "pasted__polySplitRing6.out" "pasted__polyTweak25.ip";
connectAttr "pasted__polySplitRing5.out" "pasted__polySplitRing6.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polySplitRing6.mp";
connectAttr "pasted__deleteComponent16.og" "pasted__polySplitRing5.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polySplitRing5.mp";
connectAttr "pasted__polyTweak24.out" "pasted__deleteComponent16.ig";
connectAttr "pasted__polyMergeVert30.out" "pasted__polyTweak24.ip";
connectAttr "pasted__polyMergeVert29.out" "pasted__polyMergeVert30.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert30.mp";
connectAttr "pasted__polyMergeVert28.out" "pasted__polyMergeVert29.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert29.mp";
connectAttr "pasted__polyMergeVert27.out" "pasted__polyMergeVert28.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert28.mp";
connectAttr "pasted__polyMergeVert26.out" "pasted__polyMergeVert27.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert27.mp";
connectAttr "pasted__polyMergeVert25.out" "pasted__polyMergeVert26.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert26.mp";
connectAttr "pasted__polyMergeVert24.out" "pasted__polyMergeVert25.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert25.mp";
connectAttr "pasted__polyMergeVert23.out" "pasted__polyMergeVert24.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert24.mp";
connectAttr "pasted__polyMergeVert22.out" "pasted__polyMergeVert23.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert23.mp";
connectAttr "pasted__polyMergeVert21.out" "pasted__polyMergeVert22.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert22.mp";
connectAttr "pasted__polyMergeVert20.out" "pasted__polyMergeVert21.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert21.mp";
connectAttr "pasted__polyMergeVert19.out" "pasted__polyMergeVert20.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert20.mp";
connectAttr "pasted__polyMergeVert18.out" "pasted__polyMergeVert19.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert19.mp";
connectAttr "pasted__polyMergeVert17.out" "pasted__polyMergeVert18.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert18.mp";
connectAttr "pasted__deleteComponent15.og" "pasted__polyMergeVert17.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert17.mp";
connectAttr "pasted__deleteComponent14.og" "pasted__deleteComponent15.ig";
connectAttr "pasted__deleteComponent13.og" "pasted__deleteComponent14.ig";
connectAttr "pasted__deleteComponent12.og" "pasted__deleteComponent13.ig";
connectAttr "pasted__deleteComponent11.og" "pasted__deleteComponent12.ig";
connectAttr "pasted__deleteComponent10.og" "pasted__deleteComponent11.ig";
connectAttr "pasted__deleteComponent9.og" "pasted__deleteComponent10.ig";
connectAttr "pasted__deleteComponent8.og" "pasted__deleteComponent9.ig";
connectAttr "pasted__deleteComponent7.og" "pasted__deleteComponent8.ig";
connectAttr "pasted__deleteComponent6.og" "pasted__deleteComponent7.ig";
connectAttr "pasted__deleteComponent5.og" "pasted__deleteComponent6.ig";
connectAttr "pasted__polyMirror2.out" "pasted__deleteComponent5.ig";
connectAttr "pasted__polyMirror1.out" "pasted__polyMirror2.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMirror2.mp";
connectAttr "pasted__polyTweak23.out" "pasted__polyMirror1.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMirror1.mp";
connectAttr "pasted__polyExtrudeFace19.out" "pasted__polyTweak23.ip";
connectAttr "pasted__polyTweak22.out" "pasted__polyExtrudeFace19.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyExtrudeFace19.mp";
connectAttr "pasted__polyExtrudeFace18.out" "pasted__polyTweak22.ip";
connectAttr "pasted__polyTweak21.out" "pasted__polyExtrudeFace18.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyExtrudeFace18.mp";
connectAttr "pasted__polyExtrudeFace17.out" "pasted__polyTweak21.ip";
connectAttr "pasted__polyTweak20.out" "pasted__polyExtrudeFace17.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyExtrudeFace17.mp";
connectAttr "pasted__polyExtrudeFace16.out" "pasted__polyTweak20.ip";
connectAttr "pasted__polyExtrudeFace15.out" "pasted__polyExtrudeFace16.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyExtrudeFace16.mp";
connectAttr "pasted__polyTweak19.out" "pasted__polyExtrudeFace15.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyExtrudeFace15.mp";
connectAttr "pasted__polyExtrudeFace14.out" "pasted__polyTweak19.ip";
connectAttr "pasted__polyTweak18.out" "pasted__polyExtrudeFace14.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyExtrudeFace14.mp";
connectAttr "pasted__polyExtrudeFace13.out" "pasted__polyTweak18.ip";
connectAttr "pasted__polyTweak17.out" "pasted__polyExtrudeFace13.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyExtrudeFace13.mp";
connectAttr "pasted__polyExtrudeFace12.out" "pasted__polyTweak17.ip";
connectAttr "pasted__polyTweak16.out" "pasted__polyExtrudeFace12.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyExtrudeFace12.mp";
connectAttr "pasted__polyExtrudeFace11.out" "pasted__polyTweak16.ip";
connectAttr "pasted__polyTweak15.out" "pasted__polyExtrudeFace11.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyExtrudeFace11.mp";
connectAttr "pasted__polyExtrudeFace10.out" "pasted__polyTweak15.ip";
connectAttr "pasted__polyTweak14.out" "pasted__polyExtrudeFace10.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyExtrudeFace10.mp";
connectAttr "pasted__polyExtrudeFace9.out" "pasted__polyTweak14.ip";
connectAttr "pasted__polyTweak13.out" "pasted__polyExtrudeFace9.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyExtrudeFace9.mp";
connectAttr "pasted__deleteComponent4.og" "pasted__polyTweak13.ip";
connectAttr "pasted__polySplitRing4.out" "pasted__deleteComponent4.ig";
connectAttr "pasted__polyTweak12.out" "pasted__polySplitRing4.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polySplitRing4.mp";
connectAttr "pasted__polyExtrudeFace8.out" "pasted__polyTweak12.ip";
connectAttr "pasted__polyTweak11.out" "pasted__polyExtrudeFace8.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyExtrudeFace8.mp";
connectAttr "pasted__polyExtrudeFace7.out" "pasted__polyTweak11.ip";
connectAttr "pasted__polyTweak10.out" "pasted__polyExtrudeFace7.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyExtrudeFace7.mp";
connectAttr "pasted__polyExtrudeFace6.out" "pasted__polyTweak10.ip";
connectAttr "pasted__polyTweak9.out" "pasted__polyExtrudeFace6.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyExtrudeFace6.mp";
connectAttr "pasted__polyExtrudeFace5.out" "pasted__polyTweak9.ip";
connectAttr "pasted__polyTweak8.out" "pasted__polyExtrudeFace5.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyExtrudeFace5.mp";
connectAttr "pasted__polySplitRing3.out" "pasted__polyTweak8.ip";
connectAttr "pasted__polyTweak7.out" "pasted__polySplitRing3.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polySplitRing3.mp";
connectAttr "pasted__polyExtrudeFace4.out" "pasted__polyTweak7.ip";
connectAttr "pasted__polyTweak6.out" "pasted__polyExtrudeFace4.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyExtrudeFace4.mp";
connectAttr "pasted__polyMergeVert16.out" "pasted__polyTweak6.ip";
connectAttr "pasted__polyMergeVert15.out" "pasted__polyMergeVert16.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert16.mp";
connectAttr "pasted__polyMergeVert14.out" "pasted__polyMergeVert15.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert15.mp";
connectAttr "pasted__polyMergeVert13.out" "pasted__polyMergeVert14.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert14.mp";
connectAttr "pasted__polyMergeVert12.out" "pasted__polyMergeVert13.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert13.mp";
connectAttr "pasted__polyMergeVert11.out" "pasted__polyMergeVert12.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert12.mp";
connectAttr "pasted__polyMergeVert10.out" "pasted__polyMergeVert11.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert11.mp";
connectAttr "pasted__polyMergeVert9.out" "pasted__polyMergeVert10.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert10.mp";
connectAttr "pasted__polyMergeVert8.out" "pasted__polyMergeVert9.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert9.mp";
connectAttr "pasted__polyMergeVert7.out" "pasted__polyMergeVert8.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert8.mp";
connectAttr "pasted__polyMergeVert6.out" "pasted__polyMergeVert7.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert7.mp";
connectAttr "pasted__polyMergeVert5.out" "pasted__polyMergeVert6.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert6.mp";
connectAttr "pasted__polyMergeVert4.out" "pasted__polyMergeVert5.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert5.mp";
connectAttr "pasted__polyMergeVert3.out" "pasted__polyMergeVert4.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert4.mp";
connectAttr "pasted__polyMergeVert2.out" "pasted__polyMergeVert3.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert3.mp";
connectAttr "pasted__polyMergeVert1.out" "pasted__polyMergeVert2.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert2.mp";
connectAttr "pasted__polyTweak5.out" "pasted__polyMergeVert1.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyMergeVert1.mp";
connectAttr "pasted__polyExtrudeFace3.out" "pasted__polyTweak5.ip";
connectAttr "pasted__polyTweak4.out" "pasted__polyExtrudeFace3.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyExtrudeFace3.mp";
connectAttr "pasted__polyExtrudeFace2.out" "pasted__polyTweak4.ip";
connectAttr "pasted__polyTweak3.out" "pasted__polyExtrudeFace2.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyExtrudeFace2.mp";
connectAttr "pasted__polySplitRing2.out" "pasted__polyTweak3.ip";
connectAttr "pasted__polySplitRing1.out" "pasted__polySplitRing2.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polySplitRing2.mp";
connectAttr "pasted__polyExtrudeFace1.out" "pasted__polySplitRing1.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polySplitRing1.mp";
connectAttr "pasted__polyTweak2.out" "pasted__polyExtrudeFace1.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyExtrudeFace1.mp";
connectAttr "pasted__deleteComponent3.og" "pasted__polyTweak2.ip";
connectAttr "pasted__deleteComponent2.og" "pasted__deleteComponent3.ig";
connectAttr "pasted__deleteComponent1.og" "pasted__deleteComponent2.ig";
connectAttr "pasted__polyTweak1.out" "pasted__deleteComponent1.ig";
connectAttr "pasted__polyCube1.out" "pasted__polyTweak1.ip";
connectAttr "pasted__polyTweakUV10.out" "polyChipOff1.ip";
connectAttr "pasted__polySurfaceShape1.wm" "polyChipOff1.mp";
connectAttr "pasted__polySurfaceShape1.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[0]" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polySeparate1.out[1]" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "polySeparate1.out[2]" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "polySeparate1.out[3]" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "polySeparate1.out[4]" "groupParts5.ig";
connectAttr "groupId5.id" "groupParts5.gi";
connectAttr "groupParts1.og" "polyChipOff2.ip";
connectAttr "polySurfaceShape1.wm" "polyChipOff2.mp";
connectAttr "polySurfaceShape1.o" "polySeparate2.ip";
connectAttr "polySeparate2.out[0]" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "groupParts6.og" "polyChipOff3.ip";
connectAttr "polySurfaceShape2.wm" "polyChipOff3.mp";
connectAttr "polySurfaceShape2.o" "polySeparate3.ip";
connectAttr "polySeparate3.out[1]" "groupParts10.ig";
connectAttr "groupId10.id" "groupParts10.gi";
connectAttr "groupParts10.og" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyMapSewMove1.ip";
connectAttr "polyMapSewMove1.out" "polyMapSewMove2.ip";
connectAttr "polyMapSewMove2.out" "polyMapSewMove3.ip";
connectAttr "polyMapSewMove3.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyMapSewMove4.ip";
connectAttr "polyMapSewMove4.out" "polyMapSewMove5.ip";
connectAttr "polyMapSewMove5.out" "polyMapSewMove6.ip";
connectAttr "polyMapSewMove6.out" "polyTweakUV3.ip";
connectAttr "hyperView1.msg" "nodeEditorPanel1Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "group1.msg" "hyperLayout1.hyp[0].dn";
connectAttr "polyChipOff1.msg" "hyperLayout1.hyp[1].dn";
connectAttr "polySeparate1.msg" "hyperLayout1.hyp[2].dn";
connectAttr "polySurface1.msg" "hyperLayout1.hyp[3].dn";
connectAttr "polySurfaceShape1.msg" "hyperLayout1.hyp[4].dn";
connectAttr "left_leg.msg" "hyperLayout1.hyp[5].dn";
connectAttr "left_legShape.msg" "hyperLayout1.hyp[6].dn";
connectAttr "left_arm.msg" "hyperLayout1.hyp[7].dn";
connectAttr "left_armShape.msg" "hyperLayout1.hyp[8].dn";
connectAttr "right_leg.msg" "hyperLayout1.hyp[9].dn";
connectAttr "right_legShape.msg" "hyperLayout1.hyp[10].dn";
connectAttr "right_arm.msg" "hyperLayout1.hyp[11].dn";
connectAttr "right_armShape.msg" "hyperLayout1.hyp[12].dn";
connectAttr "transform1.msg" "hyperLayout1.hyp[13].dn";
connectAttr "pasted__pCube1.msg" "hyperLayout1.hyp[14].dn";
connectAttr "pasted__transform1.msg" "hyperLayout1.hyp[15].dn";
connectAttr "pasted__pCubeShape1.msg" "hyperLayout1.hyp[16].dn";
connectAttr "polyChipOff2.msg" "hyperLayout1.hyp[17].dn";
connectAttr "polySeparate2.msg" "hyperLayout1.hyp[18].dn";
connectAttr "polySurface2.msg" "hyperLayout1.hyp[19].dn";
connectAttr "polySurfaceShape2.msg" "hyperLayout1.hyp[20].dn";
connectAttr "left_horn.msg" "hyperLayout1.hyp[21].dn";
connectAttr "left_hornShape.msg" "hyperLayout1.hyp[22].dn";
connectAttr "right_horn.msg" "hyperLayout1.hyp[23].dn";
connectAttr "right_hornShape.msg" "hyperLayout1.hyp[24].dn";
connectAttr "transform2.msg" "hyperLayout1.hyp[25].dn";
connectAttr "polyChipOff3.msg" "hyperLayout1.hyp[26].dn";
connectAttr "polySeparate3.msg" "hyperLayout1.hyp[27].dn";
connectAttr "body.msg" "hyperLayout1.hyp[28].dn";
connectAttr "bodyShape.msg" "hyperLayout1.hyp[29].dn";
connectAttr "face.msg" "hyperLayout1.hyp[30].dn";
connectAttr "faceShape.msg" "hyperLayout1.hyp[31].dn";
connectAttr "transform3.msg" "hyperLayout1.hyp[32].dn";
connectAttr "polyMapCut1.msg" "hyperLayout1.hyp[33].dn";
connectAttr "polyTweakUV1.msg" "hyperLayout1.hyp[34].dn";
connectAttr "polyMapSewMove1.msg" "hyperLayout1.hyp[35].dn";
connectAttr "polyMapSewMove2.msg" "hyperLayout1.hyp[36].dn";
connectAttr "polyMapSewMove3.msg" "hyperLayout1.hyp[37].dn";
connectAttr "polyTweakUV2.msg" "hyperLayout1.hyp[38].dn";
connectAttr "polyMapSewMove4.msg" "hyperLayout1.hyp[39].dn";
connectAttr "polyMapSewMove5.msg" "hyperLayout1.hyp[40].dn";
connectAttr "polyMapSewMove6.msg" "hyperLayout1.hyp[41].dn";
connectAttr "polyTweakUV3.msg" "hyperLayout1.hyp[42].dn";
connectAttr "polySphProj1.msg" "hyperLayout1.hyp[43].dn";
connectAttr "polyMapCut2.msg" "hyperLayout1.hyp[44].dn";
connectAttr "lambert2SG.msg" "hyperLayout1.hyp[45].dn";
connectAttr "checker1.msg" "hyperLayout1.hyp[46].dn";
connectAttr "place2dTexture1.msg" "hyperLayout1.hyp[47].dn";
connectAttr "polyCylProj1.msg" "hyperLayout1.hyp[48].dn";
connectAttr "polyCylProj2.msg" "hyperLayout1.hyp[49].dn";
connectAttr "polySphProj2.msg" "hyperLayout1.hyp[50].dn";
connectAttr "polyTweakUV4.msg" "hyperLayout1.hyp[51].dn";
connectAttr "polyMapCut3.msg" "hyperLayout1.hyp[52].dn";
connectAttr "polyTweakUV5.msg" "hyperLayout1.hyp[53].dn";
connectAttr "lambert3SG.msg" "hyperLayout1.hyp[54].dn";
connectAttr "lambert4SG.msg" "hyperLayout1.hyp[55].dn";
connectAttr "lambert5SG.msg" "hyperLayout1.hyp[57].dn";
connectAttr "checker2.msg" "hyperLayout1.hyp[58].dn";
connectAttr "place2dTexture2.msg" "hyperLayout1.hyp[59].dn";
connectAttr "polySphProj3.msg" "hyperLayout1.hyp[60].dn";
connectAttr "polyMapCut4.msg" "hyperLayout1.hyp[61].dn";
connectAttr "polyTweakUV6.msg" "hyperLayout1.hyp[62].dn";
connectAttr "lambert6SG.msg" "hyperLayout1.hyp[64].dn";
connectAttr "checker3.msg" "hyperLayout1.hyp[65].dn";
connectAttr "place2dTexture3.msg" "hyperLayout1.hyp[66].dn";
connectAttr "polySeparate2.out[1]" "polySphProj1.ip";
connectAttr "left_hornShape.wm" "polySphProj1.mp";
connectAttr "polySphProj1.out" "polyMapCut2.ip";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "place2dTexture1.o" "checker1.uv";
connectAttr "place2dTexture1.ofs" "checker1.fs";
connectAttr "polyMapCut2.out" "polyCylProj1.ip";
connectAttr "left_hornShape.wm" "polyCylProj1.mp";
connectAttr "polyCylProj1.out" "polyCylProj2.ip";
connectAttr "left_hornShape.wm" "polyCylProj2.mp";
connectAttr "polyCylProj2.out" "polySphProj2.ip";
connectAttr "left_hornShape.wm" "polySphProj2.mp";
connectAttr "polySphProj2.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyTweakUV5.ip";
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "left_hornShape.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "left_hornShape.ciog.cog[0]" "lambert5SG.dsm" -na;
connectAttr "groupId13.msg" "lambert5SG.gn" -na;
connectAttr "groupId14.msg" "lambert5SG.gn" -na;
connectAttr "lambert5SG.msg" "materialInfo4.sg";
connectAttr "place2dTexture2.o" "checker2.uv";
connectAttr "place2dTexture2.ofs" "checker2.fs";
connectAttr "polySeparate2.out[2]" "polySphProj3.ip";
connectAttr "right_hornShape.wm" "polySphProj3.mp";
connectAttr "polySphProj3.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyTweakUV6.ip";
connectAttr "right_hornShape.iog.og[0]" "lambert6SG.dsm" -na;
connectAttr "right_hornShape.ciog.cog[0]" "lambert6SG.dsm" -na;
connectAttr "groupId15.msg" "lambert6SG.gn" -na;
connectAttr "groupId16.msg" "lambert6SG.gn" -na;
connectAttr "lambert6SG.msg" "materialInfo5.sg";
connectAttr "place2dTexture3.o" "checker3.uv";
connectAttr "place2dTexture3.ofs" "checker3.fs";
connectAttr "polySeparate3.out[0]" "polyPlanarProj1.ip";
connectAttr "bodyShape.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyPlanarProj2.ip";
connectAttr "bodyShape.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyPlanarProj3.ip";
connectAttr "bodyShape.wm" "polyPlanarProj3.mp";
connectAttr "polyPlanarProj3.out" "polyPlanarProj4.ip";
connectAttr "bodyShape.wm" "polyPlanarProj4.mp";
connectAttr "polyPlanarProj4.out" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "polyTweakUV7.ip";
connectAttr "lambert7SG.msg" "materialInfo6.sg";
connectAttr "place2dTexture4.o" "checker4.uv";
connectAttr "place2dTexture4.ofs" "checker4.fs";
connectAttr "groupParts2.og" "polyMapCut6.ip";
connectAttr "polyMapCut6.out" "polyPlanarProj5.ip";
connectAttr "left_legShape.wm" "polyPlanarProj5.mp";
connectAttr "polyPlanarProj5.out" "polyCylProj3.ip";
connectAttr "left_legShape.wm" "polyCylProj3.mp";
connectAttr "polyCylProj3.out" "polyTweakUV8.ip";
connectAttr "polyTweakUV8.out" "polyMapSewMove7.ip";
connectAttr "polyMapSewMove7.out" "polyTweakUV9.ip";
connectAttr "bodyShape.iog.og[0]" "lambert9SG.dsm" -na;
connectAttr "bodyShape.ciog.cog[0]" "lambert9SG.dsm" -na;
connectAttr "groupId11.msg" "lambert9SG.gn" -na;
connectAttr "groupId12.msg" "lambert9SG.gn" -na;
connectAttr "lambert9SG.msg" "materialInfo7.sg";
connectAttr "groupParts5.og" "polyMapSewMove8.ip";
connectAttr "groupParts4.og" "polyMapSewMove9.ip";
connectAttr "polyMapSewMove9.out" "polyMapSewMove10.ip";
connectAttr "polyMapSewMove10.out" "polyMapSewMove11.ip";
connectAttr "polyMapSewMove11.out" "polyTweakUV10.ip";
connectAttr "polyTweakUV10.out" "polyMapSewMove12.ip";
connectAttr "polyMapSewMove12.out" "polyTweakUV11.ip";
connectAttr "polyMapSewMove8.out" "polyTweakUV12.ip";
connectAttr "polyTweakUV3.out" "polyMapSewMove13.ip";
connectAttr "polyMapSewMove13.out" "polyMapSewMove14.ip";
connectAttr "groupParts3.og" "polyTweakUV13.ip";
connectAttr "polyTweakUV7.out" "polyMapSewMove15.ip";
connectAttr "polyMapSewMove15.out" "polyMapSewMove16.ip";
connectAttr "polyMapSewMove16.out" "polyTweakUV14.ip";
connectAttr "polyTweakUV14.out" "polyMapSewMove17.ip";
connectAttr "polyMapSewMove17.out" "polyMapSewMove18.ip";
connectAttr "polyMapSewMove18.out" "polyTweakUV15.ip";
connectAttr "bodyShape.o" "polyUnite1.ip[0]";
connectAttr "faceShape.o" "polyUnite1.ip[1]";
connectAttr "left_hornShape.o" "polyUnite1.ip[2]";
connectAttr "right_hornShape.o" "polyUnite1.ip[3]";
connectAttr "left_legShape.o" "polyUnite1.ip[4]";
connectAttr "left_armShape.o" "polyUnite1.ip[5]";
connectAttr "right_legShape.o" "polyUnite1.ip[6]";
connectAttr "right_armShape.o" "polyUnite1.ip[7]";
connectAttr "bodyShape.wm" "polyUnite1.im[0]";
connectAttr "faceShape.wm" "polyUnite1.im[1]";
connectAttr "left_hornShape.wm" "polyUnite1.im[2]";
connectAttr "right_hornShape.wm" "polyUnite1.im[3]";
connectAttr "left_legShape.wm" "polyUnite1.im[4]";
connectAttr "left_armShape.wm" "polyUnite1.im[5]";
connectAttr "right_legShape.wm" "polyUnite1.im[6]";
connectAttr "right_armShape.wm" "polyUnite1.im[7]";
connectAttr "polyTweakUV15.out" "groupParts11.ig";
connectAttr "groupId11.id" "groupParts11.gi";
connectAttr "polyTweakUV5.out" "groupParts12.ig";
connectAttr "groupId13.id" "groupParts12.gi";
connectAttr "polyTweakUV6.out" "groupParts13.ig";
connectAttr "groupId15.id" "groupParts13.gi";
connectAttr "polyUnite1.out" "polyMergeVert1.ip";
connectAttr "polySurfaceShape3.wm" "polyMergeVert1.mp";
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "polySurfaceShape3.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert2.out" "polyMergeVert3.ip";
connectAttr "polySurfaceShape3.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert3.out" "polyMergeVert4.ip";
connectAttr "polySurfaceShape3.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert4.out" "polyMergeVert5.ip";
connectAttr "polySurfaceShape3.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert5.out" "polyMergeVert6.ip";
connectAttr "polySurfaceShape3.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert6.out" "polyMergeVert7.ip";
connectAttr "polySurfaceShape3.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert7.out" "polyMergeVert8.ip";
connectAttr "polySurfaceShape3.wm" "polyMergeVert8.mp";
connectAttr "polyMergeVert8.out" "polyMergeVert9.ip";
connectAttr "polySurfaceShape3.wm" "polyMergeVert9.mp";
connectAttr "polyMergeVert9.out" "polyMergeVert10.ip";
connectAttr "polySurfaceShape3.wm" "polyMergeVert10.mp";
connectAttr "polyMergeVert10.out" "polyMergeVert11.ip";
connectAttr "polySurfaceShape3.wm" "polyMergeVert11.mp";
connectAttr "polyMergeVert11.out" "polyTweakUV16.ip";
connectAttr "file1.oc" "lambert10.c";
connectAttr "lambert10.oc" "lambert10SG.ss";
connectAttr "polySurfaceShape3.iog" "lambert10SG.dsm" -na;
connectAttr "lambert10SG.msg" "materialInfo8.sg";
connectAttr "lambert10.msg" "materialInfo8.m";
connectAttr "file1.msg" "materialInfo8.t" -na;
connectAttr "place2dTexture5.c" "file1.c";
connectAttr "place2dTexture5.tf" "file1.tf";
connectAttr "place2dTexture5.rf" "file1.rf";
connectAttr "place2dTexture5.mu" "file1.mu";
connectAttr "place2dTexture5.mv" "file1.mv";
connectAttr "place2dTexture5.s" "file1.s";
connectAttr "place2dTexture5.wu" "file1.wu";
connectAttr "place2dTexture5.wv" "file1.wv";
connectAttr "place2dTexture5.re" "file1.re";
connectAttr "place2dTexture5.of" "file1.of";
connectAttr "place2dTexture5.r" "file1.ro";
connectAttr "place2dTexture5.n" "file1.n";
connectAttr "place2dTexture5.vt1" "file1.vt1";
connectAttr "place2dTexture5.vt2" "file1.vt2";
connectAttr "place2dTexture5.vt3" "file1.vt3";
connectAttr "place2dTexture5.vc1" "file1.vc1";
connectAttr "place2dTexture5.o" "file1.uv";
connectAttr "place2dTexture5.ofs" "file1.fs";
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
connectAttr "Character1_LeftHandThumb3.msg" "skinCluster1.ptt";
connectAttr "groupParts15.og" "tweak1.ip[0].ig";
connectAttr "groupId22.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "polySurfaceShape3.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId22.msg" "tweakSet1.gn" -na;
connectAttr "polySurfaceShape3.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "polySurfaceShape3Orig.w" "groupParts15.ig";
connectAttr "groupId22.id" "groupParts15.gi";
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
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr "layerManager.dli[2]" "layer2.id";
connectAttr "pasted__pCube1SG1.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "lambert7SG.pa" ":renderPartition.st" -na;
connectAttr "lambert9SG.pa" ":renderPartition.st" -na;
connectAttr "lambert10SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__sheep_bodyShape.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__sheep_bodyShape.ciog.cog[1]" ":initialShadingGroup.dsm" -na
		;
connectAttr "pasted__pCubeShape1.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__pCubeShape1.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "left_legShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "left_armShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "right_legShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "right_armShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "faceShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "lambert10.msg" ":defaultShaderList1.s" -na;
connectAttr "checker1.msg" ":defaultTextureList1.tx" -na;
connectAttr "checker2.msg" ":defaultTextureList1.tx" -na;
connectAttr "checker3.msg" ":defaultTextureList1.tx" -na;
connectAttr "checker4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of SK_ANIMATION_START_2.ma
