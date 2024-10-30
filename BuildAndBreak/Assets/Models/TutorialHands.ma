//Maya ASCII 2023 scene
//Name: TutorialHands.ma
//Last modified: Wed, Oct 30, 2024 10:32:45 AM
//Codeset: 1252
requires maya "2023";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19045)";
fileInfo "UUID" "C3AE3095-4F04-A874-1A5C-C89D323C815C";
createNode transform -s -n "persp";
	rename -uid "D04E2442-484B-DB24-1941-46B5B2144D34";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 28.866563503871788 36.218681098539456 1.003176675913334 ;
	setAttr ".r" -type "double3" -31.538352699609941 -3147.8000000021516 7.6333312355124402e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "0DB8B75B-4B99-6BD2-18C0-948540ABDD69";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 53.926205132486672;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -21.935036918124514 8.4655708679350319 -3.8401174217278058 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "3EA34AB8-465E-1719-F978-A8BB9DAEF78B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -18.103133160112581 1000.1 5.2241262817769476 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C899B87B-4D16-1B58-0D48-89A20AAB40F9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 21.387867022760158;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "8036A3A9-4519-FE25-1685-9F997C0A0F5E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -14.908367316468937 6.1468475787986625 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "06A4BC2B-46A9-1AA4-8CD4-63A14EEBFC10";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 18.5313895936644;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "7D135EE6-4B5A-1753-EFCA-0EAC8C02AFD1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1337076796301 4.5951290215284759 6.5056739972002946 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "6157A8A0-4738-F94D-20C4-CE996BB59459";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1004.1440271738917;
	setAttr ".ow" 7.4651770804909727;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -4.0103194942616263 5.1947441782129617 6.3802999189844476 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Right_Hand";
	rename -uid "83073B27-4708-8C1C-0552-F4AF0C795CB3";
createNode transform -n "Controls" -p "Right_Hand";
	rename -uid "8F6D995F-40B1-2A05-6EB5-14A173BDA040";
createNode transform -n "COG_ctrl_grp" -p "|Right_Hand|Controls";
	rename -uid "A5CA3107-40FE-CB8F-701A-988FE0F16420";
	setAttr ".t" -type "double3" -1.7749999761581436 4.9010000228881836 -7.1700000762939453 ;
	setAttr ".r" -type "double3" 81.442105684059129 -74.920147787749656 176.81762385297159 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "COG_ctrl" -p "|Right_Hand|Controls|COG_ctrl_grp";
	rename -uid "8573D7FC-4BB7-FBE5-C239-B58CB0CB3A3D";
createNode nurbsCurve -n "COG_ctrlShape" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl";
	rename -uid "4FD7EBAB-4222-5673-47F2-4D8EB0BF393C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.46421468048340436 -2.7017432485938162 -2.3297619460939316
		-0.74616107128310916 1.7063822353142679e-15 -2.4555446853681429
		-0.80443892780711856 2.7017432485938171 -2.2477674150742004
		-0.24057487240668948 3.8208419442113244 0.40125999007650509
		0.46421468048340109 2.7017432485938171 3.0163241484384153
		0.70741643515973107 8.9371774704807329e-16 3.142106887712631
		0.80443892780711657 -2.7017432485938162 2.9343296174186841
		0.2405748724066851 -3.8208419442113235 0.28530221226797625
		-0.46421468048340436 -2.7017432485938162 -2.3297619460939316
		-0.74616107128310916 1.7063822353142679e-15 -2.4555446853681429
		-0.80443892780711856 2.7017432485938171 -2.2477674150742004
		;
createNode transform -n "pinky_01_ctrl_grp" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl";
	rename -uid "B3FCDB21-492E-37E3-134A-9B81E7637720";
	setAttr ".t" -type "double3" 3.1274726390838605 -1.9069268703460684 -1.1509166955947876 ;
	setAttr ".r" -type "double3" -56.853563342268743 3.6698983085437344 -13.310456210676985 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999933 0.99999999999999978 ;
createNode transform -n "pinky_01_ctrl" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp";
	rename -uid "012C5C96-4A70-07BD-DA21-F5BB2C6980A0";
createNode nurbsCurve -n "pinky_01_ctrlShape" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl";
	rename -uid "728C5271-4CBF-971C-4638-25A80EED6364";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2769243029963877 -0.3423812402417864 -1.4302012262963359
		0.62053470142224509 -0.18610187471920403 -1.8160838391657077
		-1.0869698422887544 -0.538251541817657 -1.7995059550303265
		-1.8453563242443811 -1.1925457425360404 -1.3901786735812471
		-1.2103722288354517 -1.7657078078755926 -0.82788036484203176
		0.44601737273869602 -1.9219871733981739 -0.44199775197265923
		2.1535219164496917 -1.5698375062997225 -0.45857563610804086
		2.9119083984053193 -0.91554330558133645 -0.86790291755712079
		2.2769243029963877 -0.3423812402417864 -1.4302012262963359
		0.62053470142224509 -0.18610187471920403 -1.8160838391657077
		-1.0869698422887544 -0.538251541817657 -1.7995059550303265
		;
createNode transform -n "pinky_02_ctrl_grp" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl";
	rename -uid "06D204C4-4634-2A52-F94F-E7BB60F57CAE";
	setAttr ".t" -type "double3" 5.3566212654113734 -0.24395067989826469 0.1464487761259079 ;
	setAttr ".r" -type "double3" 0.51295428684049793 -2.2420999580064818 -166.50804062291365 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999978 ;
createNode transform -n "pinky_02_ctrl" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp";
	rename -uid "2BAAAF8A-45EB-6738-D957-A69F12072DDC";
createNode nurbsCurve -n "pinky_02_ctrlShape" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl";
	rename -uid "E90100E6-4851-4507-A999-40B632F57A56";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.97440352859384238 0.9357818183930976 -0.55338517020285616
		-1.5236486922283441e-16 0.9070262765931516 -0.78260481291702277
		-0.97440352859384161 0.9357818183930976 -0.55338517020285605
		-1.3780146853616129 1.0052038373999144 -2.0835113148653939e-15
		-0.97440352859384161 1.0746258564067304 0.55338517020285172
		-3.7478060640321157e-16 1.1033813982066765 0.78260481291701856
		0.97440352859384238 1.0746258564067304 0.55338517020285172
		1.37801468536161 1.0052038373999144 -1.9343250959313885e-15
		0.97440352859384238 0.9357818183930976 -0.55338517020285616
		-1.5236486922283441e-16 0.9070262765931516 -0.78260481291702277
		-0.97440352859384161 0.9357818183930976 -0.55338517020285605
		;
createNode transform -n "pinky_03_ctrl_grp" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl";
	rename -uid "B7807E04-46C7-BAA6-4F12-279E4DA03EA6";
	setAttr ".t" -type "double3" -3.3355846405029297 4.1931351005608519e-05 3.0447454266280261e-05 ;
	setAttr ".r" -type "double3" 0 0 18.94593592861121 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "pinky_03_ctrl" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp";
	rename -uid "63DE0C70-487F-103F-92C1-3F961DF4D116";
createNode nurbsCurve -n "pinky_03_ctrlShape" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl";
	rename -uid "406D7558-4BE4-9F63-BF80-248D7CCD2A7B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.10134888894209322 0.77702997456653333 -0.7836116248912246
		3.2814164736915587e-16 -3.6429550035607667e-16 -1.1081941875543877
		-0.10134888894209285 -0.77702997456653367 -0.78361162489122438
		-0.14332897327335256 -1.0988863284024131 -5.7448982375248304e-17
		-0.10134888894209285 -0.77702997456653367 0.78361162489122449
		4.3958268014245654e-16 -5.5921181350458827e-16 1.1081941875543884
		0.10134888894209328 0.77702997456653333 0.78361162489122438
		0.14332897327335278 1.0988863284024126 1.511240500779959e-16
		0.10134888894209322 0.77702997456653333 -0.7836116248912246
		3.2814164736915587e-16 -3.6429550035607667e-16 -1.1081941875543877
		-0.10134888894209285 -0.77702997456653367 -0.78361162489122438
		;
createNode transform -n "pinky_04_ctrl_grp" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl";
	rename -uid "2EA68B3E-47AA-0821-D9EA-04AAF7C26C64";
	setAttr ".t" -type "double3" -1.7418419122695896 -4.9037294958864663e-05 -8.0218647783070196e-05 ;
	setAttr ".r" -type "double3" 0 0 5.3870980398219226 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode transform -n "pinky_04_ctrl" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp";
	rename -uid "673B9CDF-4DD0-2908-BAE6-7BB6836131F3";
createNode nurbsCurve -n "pinky_04_ctrlShape" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp|pinky_04_ctrl";
	rename -uid "DD6C70A2-4D1D-0740-0861-04BDCF1D8CF3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.022386015021713931 0.78329180066952908 -0.7836116248912246
		-6.5891097330635085e-17 6.9768158387241483e-17 -1.1081941875543877
		-0.022386015021713796 -0.7832918006695293 -0.78361162489122438
		-0.031658606051194797 -1.1077418878024892 -5.7448982375248304e-17
		-0.022386015021713931 -0.78329180066952908 0.78361162489122449
		6.4658363638477993e-17 -1.1290179304884578e-16 1.1081941875543884
		0.022386015021713796 0.7832918006695293 0.78361162489122438
		0.031658606051194797 1.1077418878024892 1.511240500779959e-16
		0.022386015021713931 0.78329180066952908 -0.7836116248912246
		-6.5891097330635085e-17 6.9768158387241483e-17 -1.1081941875543877
		-0.022386015021713796 -0.7832918006695293 -0.78361162489122438
		;
createNode transform -n "ring_01_ctrl_grp" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl";
	rename -uid "9AB962E3-4951-6AC9-E502-D78C452BFE59";
	setAttr ".t" -type "double3" 8.9531097412109339 -1.2713966369628915 0.18533061444758925 ;
	setAttr ".r" -type "double3" 70.245162519144046 -11.619163238915982 176.18449595914976 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999944 0.99999999999999978 ;
createNode transform -n "ring_01_ctrl" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp";
	rename -uid "2C413F79-426D-2092-810F-1184356ED5C4";
createNode nurbsCurve -n "ring_01_ctrlShape" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl";
	rename -uid "631CDAC1-4737-FD24-0AEC-7DB216813DE1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.0204305475930651 1.0279895160124508 -0.58129563545135632
		1.0746097740833444e-15 1.0018868836747041 -0.82207617140359568
		-1.020430547593062 1.0279895160124508 -0.5812956354513561
		-1.4431067198659133 1.0910068450158752 -1.1449174941446927e-16
		-1.020430547593062 1.1540241740193 0.58129563545135587
		8.4168798570290627e-16 1.1801268063570458 0.82207617140359501
		1.0204305475930651 1.1540241740193 0.58129563545135587
		1.4431067198659151 1.0910068450158752 3.9898639947466563e-17
		1.0204305475930651 1.0279895160124508 -0.58129563545135632
		1.0746097740833444e-15 1.0018868836747041 -0.82207617140359568
		-1.020430547593062 1.0279895160124508 -0.5812956354513561
		;
createNode transform -n "ring_02_ctrl_grp" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl";
	rename -uid "E0B17553-4A04-7015-EBC5-24A2B219547C";
	setAttr ".t" -type "double3" -3.8571979999542232 1.9344909114593634e-06 -1.1757956599911523e-05 ;
	setAttr ".r" -type "double3" 0 0 23.413729097573583 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "ring_02_ctrl" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp";
	rename -uid "11455D5B-476E-6309-7446-14B8C43FC9ED";
createNode nurbsCurve -n "ring_02_ctrlShape" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl";
	rename -uid "286E9138-4664-D0C1-052A-26BD2D33D3A7";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.25114262798350534 0.57777008271586516 -0.83375108906046691
		-1.3470127790959907e-15 -0.2172571236859373 -1.1791020977926503
		-0.25114262798350828 -1.0122843300877395 -0.83375108906046669
		-0.35516931058429724 -1.3415953814349604 1.1934959064184785e-15
		-0.25114262798350823 -1.0122843300877391 0.8337510890604688
		-1.2661312970285721e-15 -0.21725712368593755 1.1791020977926536
		0.25114262798350556 0.57777008271586494 0.83375108906046869
		0.3551693105842948 0.90708113406308677 1.4154145041430539e-15
		0.25114262798350534 0.57777008271586516 -0.83375108906046691
		-1.3470127790959907e-15 -0.2172571236859373 -1.1791020977926503
		-0.25114262798350828 -1.0122843300877395 -0.83375108906046669
		;
createNode transform -n "ring_03_ctrl_grp" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl";
	rename -uid "77C12058-4C80-8428-51EF-C3B798876ED5";
	setAttr ".t" -type "double3" -2.5775368213653538 2.300576306524249e-05 2.6507696020416915e-05 ;
	setAttr ".r" -type "double3" 0 0 9.6305628959719325 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999978 0.99999999999999967 ;
createNode transform -n "ring_03_ctrl" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp";
	rename -uid "DB1361DD-4EC2-8711-25F7-81A75E494DD1";
createNode nurbsCurve -n "ring_03_ctrlShape" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp|ring_03_ctrl";
	rename -uid "28B74A88-43DC-DA99-3460-71A144F46279";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.10537555294430166 0.77649415419972567 -0.7836116248912246
		-5.8115921720942753e-17 7.6366041371199203e-17 -1.1081941875543877
		-0.10537555294430187 -0.77649415419972589 -0.78361162489122438
		-0.1490235361163961 -1.0981285639726777 -5.7448982375248304e-17
		-0.10537555294430166 -0.77649415419972567 0.78361162489122449
		5.2313192011428426e-17 -1.1912534912278532e-16 1.1081941875543884
		0.10537555294430187 0.77649415419972589 0.78361162489122438
		0.1490235361163961 1.0981285639726777 1.511240500779959e-16
		0.10537555294430166 0.77649415419972567 -0.7836116248912246
		-5.8115921720942753e-17 7.6366041371199203e-17 -1.1081941875543877
		-0.10537555294430187 -0.77649415419972589 -0.78361162489122438
		;
createNode transform -n "middle_01_ctrl_grp" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl";
	rename -uid "EAD2B2FC-4976-CD02-07D4-379046C7858E";
	setAttr ".t" -type "double3" 9.1422023773193359 0.95326352119445801 1.0838787555694536 ;
	setAttr ".r" -type "double3" 80.801820648086547 -8.9484058496247076 -175.43963324777016 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999944 0.99999999999999989 ;
createNode transform -n "middle_01_ctrl" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp";
	rename -uid "8FC8CF9A-4184-EBAE-1E27-17B9FB3353C7";
createNode nurbsCurve -n "middle_01_ctrlShape" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl";
	rename -uid "D4913445-40F0-8E31-2D09-D592950AE77D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.0250784324675932 1.2225197705427515 -0.5435526997684671
		9.2702173172985493e-16 1.2225197705427515 -0.76869959987707759
		-1.0250784324675921 1.2225197705427515 -0.54355269976846698
		-1.4496798216918212 1.2225197705427515 8.1463671965050302e-16
		-1.0250784324675921 1.2225197705427515 0.54355269976846865
		6.9303902483838685e-16 1.2225197705427515 0.76869959987707925
		1.0250784324675932 1.2225197705427515 0.54355269976846865
		1.4496798216918239 1.2225197705427515 9.5931353567476042e-16
		1.0250784324675932 1.2225197705427515 -0.5435526997684671
		9.2702173172985493e-16 1.2225197705427515 -0.76869959987707759
		-1.0250784324675921 1.2225197705427515 -0.54355269976846698
		;
createNode transform -n "middle_02_ctrl_grp" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl";
	rename -uid "16F50391-47A7-D545-BCE4-6F961D72DCC5";
	setAttr ".t" -type "double3" -4.5967020988464355 -6.4383804065926142e-08 -3.9828951288178871e-06 ;
	setAttr ".r" -type "double3" 0 0 27.251855362361102 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "middle_02_ctrl" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp";
	rename -uid "92AB960C-4C2A-195B-9CA1-56BF0EF5993E";
createNode nurbsCurve -n "middle_02_ctrlShape" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl";
	rename -uid "0B8B7549-4F0F-14C7-D5E5-8BB4C8CDE582";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.34760256498820635 0.52817360590229967 -0.888077786063316
		8.6497649320893544e-16 -0.28905011555513738 -1.2559316494930128
		-0.34760256498820447 -1.106273837012574 -0.88807778606331578
		-0.4915842617219936 -1.4447789859332574 1.0043550393134125e-15
		-0.34760256498820447 -1.1062738370125744 0.888077786063318
		9.282939000820889e-16 -0.2890501155551376 1.2559316494930173
		0.34760256498820641 0.52817360590229945 0.88807778606331778
		0.49158426172199565 0.86667875482298107 1.2407337134037842e-15
		0.34760256498820635 0.52817360590229967 -0.888077786063316
		8.6497649320893544e-16 -0.28905011555513738 -1.2559316494930128
		-0.34760256498820447 -1.106273837012574 -0.88807778606331578
		;
createNode transform -n "middle_03_ctrl_grp" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl";
	rename -uid "76C37DFD-45D6-18DF-A4B0-EEB196040948";
	setAttr ".t" -type "double3" -2.9590234756469727 -1.7799226043280214e-05 -6.3619795587221972e-06 ;
	setAttr ".r" -type "double3" 0 0 7.5427697090752597 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
createNode transform -n "middle_03_ctrl" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp";
	rename -uid "03FBAF4B-4739-AEF1-0925-E4B59E5DDAD0";
createNode nurbsCurve -n "middle_03_ctrlShape" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp|middle_03_ctrl";
	rename -uid "EF0BEF24-48D2-95FD-EFF9-89A4E9AAAFC2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.050510720315964715 0.66479665401782428 -0.8282823247918899
		-7.3801850846043261e-16 -0.16194410141632029 -1.1713680971946079
		-0.050510720315966935 -0.98868485685046414 -0.82828232479188968
		-0.071432945716074128 -1.3311320903178652 3.0454437165685562e-16
		-0.050510720315966783 -0.98868485685046437 0.82828232479189068
		-6.0636376908330139e-16 -0.16194410141632051 1.171368097194609
		0.050510720315964756 0.66479665401782417 0.82828232479189057
		0.071432945716072352 1.0072438874852261 5.2500735449385531e-16
		0.050510720315964715 0.66479665401782428 -0.8282823247918899
		-7.3801850846043261e-16 -0.16194410141632029 -1.1713680971946079
		-0.050510720315966935 -0.98868485685046414 -0.82828232479188968
		;
createNode transform -n "index_01_ctrl_grp" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl";
	rename -uid "9C28F60D-4BCB-2FAD-9338-CA9D08CE73D2";
	setAttr ".t" -type "double3" 8.7077970504760742 3.5099971294403067 0.68147104978560957 ;
	setAttr ".r" -type "double3" 94.389682257099224 -12.772255379576913 -166.45259513752288 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 0.99999999999999978 ;
createNode transform -n "index_01_ctrl" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp";
	rename -uid "04DEE950-43A7-A722-D7B7-C6905061FCEB";
createNode nurbsCurve -n "index_01_ctrlShape" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl";
	rename -uid "87897CDF-46B6-A059-EFD4-24A89DBBEE1E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.99284877707768138 1.4395706958976524 -0.54202676304489006
		3.190649346292687e-16 1.4772419977504636 -0.76654159946727063
		-0.99284877707768115 1.4395706958976522 -0.54202676304488995
		-1.4041002059287981 1.3486241280523461 7.4949050376418568e-16
		-0.99284877707768115 1.2576775602070391 0.54202676304489028
		9.2438915549637088e-17 1.2200062583542282 0.76654159946727207
		0.99284877707768138 1.2576775602070391 0.54202676304489017
		1.4041002059287988 1.3486241280523461 8.9687602487900887e-16
		0.99284877707768138 1.4395706958976524 -0.54202676304489006
		3.190649346292687e-16 1.4772419977504636 -0.76654159946727063
		-0.99284877707768115 1.4395706958976522 -0.54202676304488995
		;
createNode transform -n "index_02_ctrl_grp" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl";
	rename -uid "66DDBA96-4867-A07B-DD02-5C866A2D85E4";
	setAttr ".t" -type "double3" -4.1574892997741681 -2.6226281989671918e-05 -3.8978716477622299e-05 ;
	setAttr ".r" -type "double3" 0 0 21.467660362608626 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 1.0000000000000002 ;
createNode transform -n "index_02_ctrl" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp";
	rename -uid "C98416A9-4383-315F-739A-7582FFC24363";
createNode nurbsCurve -n "index_02_ctrlShape" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl";
	rename -uid "85916E28-42FF-1F01-889F-8D89963EEEA0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.25350126212089757 0.68753875301372624 -0.89249718864029359
		3.0661911833820376e-16 -0.16819972446285669 -1.262181628554961
		-0.25350126212089646 -1.0239382019394394 -0.89249718864029337
		-0.35850492297006942 -1.378396685154742 -6.6528320881236157e-16
		-0.25350126212089646 -1.0239382019394399 0.89249718864029259
		3.9696172311677201e-16 -0.16819972446285691 1.2621816285549603
		0.25350126212089774 0.68753875301372602 0.89249718864029248
		0.35850492297007058 1.0419972362290275 -4.2772822726580635e-16
		0.25350126212089757 0.68753875301372624 -0.89249718864029359
		3.0661911833820376e-16 -0.16819972446285669 -1.262181628554961
		-0.25350126212089646 -1.0239382019394394 -0.89249718864029337
		;
createNode transform -n "index_03_ctrl_grp" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl";
	rename -uid "13C3F8AD-4973-8F45-7031-429513C6DF33";
	setAttr ".t" -type "double3" -2.2152938842773438 -2.227830737222547e-05 -3.5388047756601537e-06 ;
	setAttr ".r" -type "double3" 0 0 6.8332348324259398 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
createNode transform -n "index_03_ctrl" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp";
	rename -uid "12F41CDB-40F4-A174-4952-BE91140A5C7A";
createNode nurbsCurve -n "index_03_ctrlShape" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl";
	rename -uid "256B02D4-4855-31BF-1EE7-DDB4EB0DD379";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.018494570709545369 0.69452414312637356 -0.8237354814400506
		-2.1348401281815381e-15 -0.12900369139869222 -1.1649378896604496
		-0.01849457070954913 -0.95253152592375478 -0.82373548144005038
		-0.026155272727711967 -1.2936479239757814 -4.7638710906794089e-17
		-0.018494570709549005 -0.95253152592375478 0.82373548144005049
		-1.9964338851333278e-15 -0.12900369139869239 1.1649378896604505
		0.018494570709545466 0.69452414312637356 0.82373548144005038
		0.026155272727708366 1.0356405411784009 1.7161404370507585e-16
		0.018494570709545369 0.69452414312637356 -0.8237354814400506
		-2.1348401281815381e-15 -0.12900369139869222 -1.1649378896604496
		-0.01849457070954913 -0.95253152592375478 -0.82373548144005038
		;
createNode transform -n "thumb_01_ctrl_grp" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl";
	rename -uid "49ED8AEF-430A-955C-0932-27AE4FF06B47";
	setAttr ".t" -type "double3" 2.6297216415405265 4.147108554840087 -2.0563869476318368 ;
	setAttr ".r" -type "double3" 177.20271196273109 -24.733050724534525 -150.20944289603077 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
createNode transform -n "thumb_01_ctrl" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp";
	rename -uid "509AB39E-4EC8-DE51-2300-128BD54FD785";
createNode nurbsCurve -n "thumb_01_ctrlShape" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl";
	rename -uid "53816A46-4AE6-4085-974B-8BA10CBA8B3E";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.010390299026763472 0.91641220550026392 
		-0.96810462948167619 -2.3292862146013743e-15 0.59785789225985897 -1.3691066968091645 
		0.010390299026760585 1.1707816996859322 -0.96810462948167597 0.014694101800760251 
		1.5803723095408231 -7.3589612929091827e-16 0.010390299026760363 1.1707816996859317 
		0.96810462948167275 -2.3987026191734134e-15 0.59785789225985853 1.3691066968091621 
		-0.010390299026763472 0.91641220550026348 0.96810462948167242 -0.014694101800757586 
		1.2206395210094694 -4.7821679951955816e-16 0 0 0 0 0 0 0 0 0;
createNode transform -n "thumb_02_ctrl_grp" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl";
	rename -uid "C0D6BCD6-42F8-1DB4-18F3-56A350C9ACE1";
	setAttr ".t" -type "double3" -3.258560895919798 0.0002715481678017273 -2.768193735303015e-05 ;
	setAttr ".r" -type "double3" 0 0 16.367705922993 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999989 ;
createNode transform -n "thumb_02_ctrl" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp";
	rename -uid "1F52D785-47F6-3E4B-3BCE-52AACCE7061A";
createNode nurbsCurve -n "thumb_02_ctrlShape" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl";
	rename -uid "53FA13FD-477F-F696-7CB8-F790CBC6B26F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.7836116248912246 0.82636112119774707 -1.1945620934899115
		7.5437413884893057e-16 0.58207526976995849 -1.689365913710231
		-0.78361162489122438 0.82636112119774707 -1.1945620934899113
		-1.1081941875543877 1.1156233387939796 -2.9448390142734948e-16
		-0.78361162489122438 0.82636112119774707 1.1945620934899119
		5.7550824592178917e-16 0.58207526976995805 1.6893659137102304
		0.7836116248912246 0.82636112119774707 1.1945620934899117
		1.1081941875543886 1.1156233387939796 2.3471359034071556e-17
		0.7836116248912246 0.82636112119774707 -1.1945620934899115
		7.5437413884893057e-16 0.58207526976995849 -1.689365913710231
		-0.78361162489122438 0.82636112119774707 -1.1945620934899113
		;
createNode transform -n "thumb_03_ctrl_grp" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl";
	rename -uid "5CB1C932-4CA4-5B01-66BD-9C8BC0FA65D1";
	setAttr ".t" -type "double3" -2.6375083923339844 -0.00031383399618856167 2.4626075174893902e-05 ;
	setAttr ".r" -type "double3" 0 0 -0.99933649539846048 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
createNode transform -n "thumb_03_ctrl" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp";
	rename -uid "2BDB4F34-433F-BC73-1157-478B0602E8CC";
createNode nurbsCurve -n "thumb_03_ctrlShape" -p "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp|thumb_03_ctrl";
	rename -uid "0F0DFA96-4E67-5DC2-07AB-5AB558284DCA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.01984559947280877 0.79706919478337301 -1.2023448022071561
		-7.6374754041785754e-16 -0.30026411005769527 -1.6569494668738625
		-0.019845599472810588 -1.3975974148987633 -1.2023448022071557
		-0.02806591592787322 -1.852127752207626 -0.10483205525072276
		-0.0198455994728104 -1.3975974148987633 0.99268069170571072
		-5.7822897990961559e-16 -0.30026411005769549 1.4472853563724188
		0.019845599472808638 0.79706919478337324 0.99268069170571072
		0.028065915927871402 1.2515995320922355 -0.10483205525072248
		0.01984559947280877 0.79706919478337301 -1.2023448022071561
		-7.6374754041785754e-16 -0.30026411005769527 -1.6569494668738625
		-0.019845599472810588 -1.3975974148987633 -1.2023448022071557
		;
createNode transform -n "Transform_ctrl_grp" -p "|Right_Hand|Controls";
	rename -uid "61DC0EB5-44D1-3312-9808-2EA56778D737";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.7749999761581421 4.9010000228881836 -7.1700000762939453 ;
	setAttr ".r" -type "double3" -138.07835952141681 4.7378897271402769 -69.128978021450834 ;
createNode transform -n "Transform_ctrl" -p "|Right_Hand|Controls|Transform_ctrl_grp";
	rename -uid "8CDF5BEF-4C44-3ED9-FC1C-9A9D50B9440A";
createNode nurbsCurve -n "Transform_ctrlShape" -p "|Right_Hand|Controls|Transform_ctrl_grp|Transform_ctrl";
	rename -uid "3855C389-4A65-CC69-9897-C1B58002D34F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2490667306132934 3.4761042496611232 0.43643894208533313
		-0.71463799462771005 4.139318536428112 -0.18969052024751482
		-3.4159319270351682 2.6598853086819507 0.17048361481517577
		-4.2724337169609345 -0.095563513389078897 1.305976223769683
		-2.7824162320633405 -2.5129233802407187 2.551631136264858
		0.18128849317767026 -3.1761376670077111 3.1777605985977098
		2.8825824255851229 -1.6967044392615389 2.8175864635350156
		3.7390842155108928 1.058744382809478 1.6820938545805175
		2.2490667306132934 3.4761042496611232 0.43643894208533313
		-0.71463799462771005 4.139318536428112 -0.18969052024751482
		-3.4159319270351682 2.6598853086819507 0.17048361481517577
		;
createNode transform -n "Skeleton" -p "Right_Hand";
	rename -uid "6E8C973C-417F-5386-9134-088FCD61FBE0";
createNode joint -n "hands:r_hand_world" -p "|Right_Hand|Skeleton";
	rename -uid "4673F023-4D37-AA4E-3C09-8B9B4C88A0FB";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".v" no;
	setAttr -l on ".s";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.35504799999999997 -0.93119200000000002 -0.082597599999999993 0
		 -0.71489800000000003 -0.21351899999999999 -0.66583099999999995 0 0.60238000000000003 0.29545100000000002 -0.74151699999999998 0
		 -1.7749999999999999 4.9009999999999998 -7.1699999999999999 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode parentConstraint -n "r_hand_world_parentConstraint1" -p "hands:r_hand_world";
	rename -uid "AA512535-47AD-E32A-2391-2EA440F6B84C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Transform_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -138.07835952141681 4.7378897271402778 -69.128978021450834 ;
	setAttr ".rst" -type "double3" -1.7749999761581421 4.9010000228881836 -7.1700000762939453 ;
	setAttr ".rsrr" -type "double3" -138.07835952141681 4.7378897271402778 -69.128978021450834 ;
	setAttr -k on ".w0";
createNode joint -n "hands:b_r_hand" -p "|Right_Hand|Skeleton";
	rename -uid "BEC0E423-49CE-014F-09CD-FC8536F8707C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 81.442105684059115 -74.920147787749627 176.81762385297168 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.25976399999999999 0.0144429 0.96556399999999998 0
		 0.94508000000000003 -0.20158499999999999 0.257268 0 0.19835900000000001 0.97936500000000004 0.038714800000000001 0
		 -1.7749999999999999 4.9009999999999998 -7.1699999999999999 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "hands:b_r_ring1" -p "hands:b_r_hand";
	rename -uid "9BEF1EC7-442B-6340-107C-0C98CEE0B12A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 70.245162519144017 -11.619163238915975 176.18449595914976 ;
	setAttr ".bps" -type "matrix" 0.35542800000000002 0.16999400000000001 -0.91911500000000002 0
		 -0.19107399999999999 0.97577199999999997 0.106584 0 0.91496500000000003 0.137736 0.37929800000000002 0
		 -5.2655029999999998 5.4681100000000002 1.154887 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_r_ring2" -p "hands:b_r_ring1";
	rename -uid "A51EF1D1-49F5-741A-F1C0-0B84D9642BC3";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 0 0 23.41372909757359 ;
	setAttr ".bps" -type "matrix" 0.25023499999999999 0.54373700000000003 -0.80108199999999996 0
		 -0.31657600000000002 0.82787599999999995 0.463034 0 0.91496500000000003 0.137736 0.37929800000000002 0
		 -6.6364700000000001 4.8124079999999996 4.7000919999999997 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_r_ring3" -p "hands:b_r_ring2";
	rename -uid "84327976-412E-3D99-12D4-E3A7271D354E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 0 0 9.6305628959719325 ;
	setAttr ".bps" -type "matrix" 0.193747 0.67457400000000001 -0.71232899999999999 0
		 -0.35397800000000001 0.725244 0.590526 0 0.91496500000000003 0.137736 0.37929800000000002 0
		 -7.2814439999999996 3.410927 6.7649309999999998 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_r_ring_ignore" -p "hands:b_r_ring3";
	rename -uid "25D66388-4527-59AB-3279-5F9655F641E2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".t" -type "double3" -2.4214193820953369 -3.7899571907473728e-06 1.8703740352066234e-06 ;
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
	setAttr ".bps" -type "matrix" 0.193747 0.67457400000000001 -0.71232899999999999 0
		 -0.35397800000000001 0.725244 0.590526 0 0.91496500000000003 0.137736 0.37929800000000002 0
		 -7.7505839999999999 1.7774989999999999 8.4897760000000009 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode parentConstraint -n "b_r_ring3_parentConstraint1" -p "hands:b_r_ring3";
	rename -uid "AF0138BB-41CF-DC2A-3F42-E1B9441B6681";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ring_03_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0 0 -3.0215269473903408e-14 ;
	setAttr ".rst" -type "double3" -2.5775368213653533 2.3005763067018847e-05 2.6507696019528737e-05 ;
	setAttr ".rsrr" -type "double3" 0 0 -2.7034714792439894e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "b_r_ring2_parentConstraint1" -p "hands:b_r_ring2";
	rename -uid "E55C5882-4DC6-0F41-1078-D6B3B9BA0372";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ring_02_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0 0 -1.2722218725854064e-14 ;
	setAttr ".rst" -type "double3" -3.8571979999542241 1.9344909123475418e-06 -1.1757956597691077e-05 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.5902773407317578e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "b_r_ring1_parentConstraint1" -p "hands:b_r_ring1";
	rename -uid "AB4AA892-4F48-4C1A-E845-1FB3BA839358";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ring_01_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 1.0813885916975959e-13 2.862499213317166e-14 -3.1805546814634907e-15 ;
	setAttr ".rst" -type "double3" 8.9531097412109304 -1.2713966369628915 0.18533061444759014 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635168e-14 2.2263882770244614e-14 6.3611093629270391e-15 ;
	setAttr -k on ".w0";
createNode joint -n "hands:b_r_middle1" -p "hands:b_r_hand";
	rename -uid "298816F1-4D30-6B99-4480-36BDD356EFED";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 80.801820648086505 -8.9484058496247076 -175.43963324777016 ;
	setAttr ".bps" -type "matrix" 0.21241499999999999 0.153946 -0.96497699999999997 0
		 0.011309700000000001 0.98705900000000002 0.15995899999999999 0 0.97711400000000004 -0.044891300000000002 0.207925 0
		 -3.0339049999999999 5.9023890000000003 1.94459 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_r_middle2" -p "hands:b_r_middle1";
	rename -uid "EE28924C-430E-AB32-F512-BBA14E5365B1";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 0 0 27.251855362361088 ;
	setAttr ".bps" -type "matrix" 0.194017 0.588835 -0.78462100000000001 0 -0.087211200000000003 0.80700499999999997 0.58406899999999995 0
		 0.97711400000000004 -0.044891300000000002 0.207925 0 -4.010319 5.194744 6.3803000000000001 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_r_middle3" -p "hands:b_r_middle2";
	rename -uid "FF54C77C-4C9D-F923-C31A-A28425851A91";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 0 0 7.5427697090752526 ;
	setAttr ".bps" -type "matrix" 0.18089 0.68967299999999998 -0.70116299999999998 0
		 -0.111924 0.72272800000000004 0.68200899999999998 0 0.97711400000000004 -0.044891300000000002 0.207925 0
		 -4.5844240000000003 3.4523519999999999 8.7020009999999992 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_r_middle_ignore" -p "hands:b_r_middle3";
	rename -uid "C0B4552C-4CD0-FE97-7C85-C1AEA64DFF6F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".t" -type "double3" -2.6469523906707764 4.0684230043552816e-05 1.9527813492459245e-05 ;
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
	setAttr ".bps" -type "matrix" 0.18089 0.68967299999999998 -0.70116299999999998 0
		 -0.111924 0.72272800000000004 0.68200899999999998 0 0.97711400000000004 -0.044891300000000002 0.207925 0
		 -5.0632159999999997 1.626849 10.557979 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode parentConstraint -n "b_r_middle3_parentConstraint1" -p "hands:b_r_middle3";
	rename -uid "1E972343-4DAF-C769-B51C-3BADF1CC688A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "middle_03_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0 0 -1.5902773407317584e-15 ;
	setAttr ".rst" -type "double3" -2.9590234756469762 -1.7799226041503857e-05 -6.3619795596103756e-06 ;
	setAttr ".rsrr" -type "double3" 0 0 -9.5416640443905503e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "b_r_middle2_parentConstraint1" -p "hands:b_r_middle2";
	rename -uid "EA135411-4A06-CA49-791F-5BB02978F5A2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "middle_02_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0 0 -6.361109362927032e-15 ;
	setAttr ".rst" -type "double3" -4.5967020988464355 -6.4383802289569303e-08 -3.982895124376995e-06 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.180554681463516e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "b_r_middle1_parentConstraint1" -p "hands:b_r_middle1";
	rename -uid "AD72F893-423D-5D4E-B07B-21980BC07BDA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "middle_01_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 1.3358329662146766e-13 5.0491305568233322e-14 -6.3611093629269736e-15 ;
	setAttr ".rst" -type "double3" 9.1422023773193324 0.95326352119445845 1.0838787555694545 ;
	setAttr ".rsrr" -type "double3" 6.9972202992197363e-14 5.1684013573782148e-14 -3.5781240166464244e-15 ;
	setAttr -k on ".w0";
createNode joint -n "hands:b_r_index1" -p "hands:b_r_hand";
	rename -uid "6D682333-495E-395F-B03E-2E942C752C5D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 94.389682257099224 -12.77225537957692 -166.45259513752288 ;
	setAttr ".bps" -type "matrix" 0.074233099999999996 0.24887300000000001 -0.96568699999999996 0
		 0.26099800000000001 0.92975699999999994 0.25967699999999999 0 0.96248100000000003 -0.27131899999999998 0.0040633700000000002 0
		 -0.58456600000000003 4.9866109999999999 2.1673309999999999 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_r_index2" -p "hands:b_r_index1";
	rename -uid "033F71BC-4E7E-44E4-2DD5-45BADCE402EC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 0 0 21.467660362608626 ;
	setAttr ".bps" -type "matrix" 0.164602 0.57187600000000005 -0.80365600000000004 0
		 0.215723 0.774173 0.59508000000000005 0 0.96248100000000003 -0.27131899999999998 0.0040633700000000002 0
		 -0.89323300000000005 3.9519090000000001 6.1821570000000001 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_r_index3" -p "hands:b_r_index2";
	rename -uid "0F6CA7D8-44DB-57B1-209D-D9BA925A5D79";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 0 0 6.8332348324259016 ;
	setAttr ".bps" -type "matrix" 0.18909899999999999 0.65992499999999998 -0.72714500000000004 0
		 0.194606 0.70063200000000003 0.68647199999999997 0 0.96248100000000003 -0.27131899999999998 0.0040633700000000002 0
		 -1.2578830000000001 2.6850179999999999 7.9624790000000001 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_r_index_ignore" -p "hands:b_r_index3";
	rename -uid "0B4E329C-488B-581F-A1D3-15AC374F3163";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".t" -type "double3" -2.9121782779693604 2.6586250896798447e-05 0.00010456444579176605 ;
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
	setAttr ".bps" -type "matrix" 0.18909899999999999 0.65992499999999998 -0.72714500000000004 0
		 0.194606 0.70063200000000003 0.68647199999999997 0 0.96248100000000003 -0.27131899999999998 0.0040633700000000002 0
		 -1.8084690000000001 0.76318799999999998 10.080074 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode parentConstraint -n "b_r_index3_parentConstraint1" -p "hands:b_r_index3";
	rename -uid "EBF3D6DB-4B47-FF47-5028-57A48B2157ED";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "index_03_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0 0 2.7034714792439888e-14 ;
	setAttr ".rst" -type "double3" -2.215293884277346 -2.2278307370449113e-05 -3.5388047747719753e-06 ;
	setAttr ".rsrr" -type "double3" 0 0 1.590277340731758e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "b_r_index2_parentConstraint1" -p "hands:b_r_index2";
	rename -uid "FD3AAAC8-4D6E-6D11-B562-EF8912E0C462";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "index_02_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0 0 -1.9083328088781101e-14 ;
	setAttr ".rst" -type "double3" -4.1574892997741708 -2.6226281987895561e-05 -3.8978716476512076e-05 ;
	setAttr ".rsrr" -type "double3" 0 0 -2.8624992133171654e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "b_r_index1_parentConstraint1" -p "hands:b_r_index1";
	rename -uid "ADF50802-4CFA-6BD1-9298-F6AF92374605";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "index_01_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 9.5416640443905497e-14 4.7111966219178345e-14 -6.3611093629269941e-15 ;
	setAttr ".rst" -type "double3" 8.7077970504760707 3.5099971294403085 0.68147104978561046 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270304e-15 2.3655375443384907e-14 -1.5902773407317584e-14 ;
	setAttr -k on ".w0";
createNode joint -n "hands:b_r_pinky0" -p "hands:b_r_hand";
	rename -uid "C2A91482-48EA-7AED-3D0A-48867576F77C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" -56.853563342268743 3.6698983085437185 -13.310456210676984 ;
	setAttr ".bps" -type "matrix" -0.482101 -0.00234586 0.876112 0 0.32963700000000001 -0.92700099999999996 0.17890800000000001 0
		 0.81173700000000004 0.37505100000000002 0.447681 0 -4.6178980000000003 4.203411 -4.6853740000000004 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "hands:b_r_pinky1" -p "hands:b_r_pinky0";
	rename -uid "E30365E8-44DC-A19F-505B-0DBFEC8D2BD9";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 0.5129542868404765 -2.2420999580064582 -166.50804062291365 ;
	setAttr ".bps" -type "matrix" 0.423346 0.23306399999999999 -0.87547699999999995 0
		 -0.42587700000000001 0.90411300000000006 0.034750400000000001 0 0.79962900000000003 0.35813400000000001 0.48200900000000002 0
		 -7.161867 4.4719129999999998 0.0295465 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_r_pinky2" -p "hands:b_r_pinky1";
	rename -uid "36279A23-44A8-EC26-9BF9-DDA21223386F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 0 0 18.945935928611213 ;
	setAttr ".bps" -type "matrix" 0.26213900000000001 0.51398200000000005 -0.81676499999999996 0
		 -0.54025599999999996 0.77946300000000002 0.31711400000000001 0 0.79962900000000003 0.35813400000000001 0.48200900000000002 0
		 -8.5739669999999997 3.6945570000000001 2.949789 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_r_pinky3" -p "hands:b_r_pinky2";
	rename -uid "8C29FB53-4850-348A-8381-379D3FABDB0B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 0 0 5.387098039821919 ;
	setAttr ".bps" -type "matrix" 0.21026 0.58489100000000005 -0.78338600000000003 0
		 -0.56247999999999998 0.72776600000000002 0.39239499999999999 0 0.79962900000000003 0.35813400000000001 0.48200900000000002 0
		 -9.0306090000000001 2.7992149999999998 4.3724109999999996 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_r_pinky_ignore" -p "hands:b_r_pinky3";
	rename -uid "B0FF324F-45A0-E4CA-3E14-D6BAEEEEDAFB";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".t" -type "double3" -1.9441078901290894 1.8051705410471186e-05 6.8411703978199512e-05 ;
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
	setAttr ".bps" -type "matrix" 0.21026 0.58489100000000005 -0.78338600000000003 0
		 -0.56247999999999998 0.72776600000000002 0.39239499999999999 0 0.79962900000000003 0.35813400000000001 0.48200900000000002 0
		 -9.4393329999999995 1.6621619999999999 5.8954380000000004 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode parentConstraint -n "b_r_pinky3_parentConstraint1" -p "hands:b_r_pinky3";
	rename -uid "77E41031-476E-7A4D-9FE1-8288222303A1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pinky_04_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0 0 -1.2722218725854067e-14 ;
	setAttr ".rst" -type "double3" -1.7418419122695887 -4.9037294957088307e-05 -8.0218647783070196e-05 ;
	setAttr ".rsrr" -type "double3" 0 0 1.1131941385122309e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "b_r_pinky2_parentConstraint1" -p "hands:b_r_pinky2";
	rename -uid "75E7919C-4593-5AF1-D949-64B95AD5C879";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pinky_03_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0 0 -1.9083328088781101e-14 ;
	setAttr ".rst" -type "double3" -3.3355846405029292 4.1931351004720341e-05 3.0447454265392082e-05 ;
	setAttr ".rsrr" -type "double3" 0 0 6.3611093629270335e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "b_r_pinky1_parentConstraint1" -p "hands:b_r_pinky1";
	rename -uid "2C8FDB0E-4422-C673-D50D-0DB0613A101C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pinky_02_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 9.1142770090688911e-14 4.7708320221952752e-15 -2.1742073017816629e-16 ;
	setAttr ".rst" -type "double3" 5.3566212654113734 -0.24395067989826558 0.14644877612590701 ;
	setAttr ".rsrr" -type "double3" 8.9453100416161403e-15 -1.3517357396219947e-14 -1.1181637552020281e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "b_r_pinky0_parentConstraint1" -p "hands:b_r_pinky0";
	rename -uid "1F83A278-4AA9-AF48-08DB-C2AE4C65FCDE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pinky_01_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -6.9872810658401609e-14 -4.8503458892318616e-14 6.3611093629270619e-15 ;
	setAttr ".rst" -type "double3" 3.1274726390838605 -1.9069268703460702 -1.1509166955947872 ;
	setAttr ".rsrr" -type "double3" 5.8641476939483601e-15 -6.3611093629270335e-15 6.3611093629270335e-15 ;
	setAttr -k on ".w0";
createNode joint -n "hands:b_r_thumb1" -p "hands:b_r_hand";
	rename -uid "FA9860EE-476B-374C-26B0-82BE1BD45E67";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 177.20271196273109 -24.733050724534522 -150.20944289603074 ;
	setAttr ".bps" -type "matrix" -0.13872499999999999 0.48933900000000002 -0.860989 0
		 0.96189000000000002 -0.14028199999999999 -0.234711 0 -0.23563400000000001 -0.86073699999999997 -0.45123000000000002 0
		 1.0533410000000001 2.0890330000000001 -3.6435279999999999 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_r_thumb2" -p "hands:b_r_thumb1";
	rename -uid "32F6EE66-4FC9-CE9E-A959-FFAF43072EAB";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 0 0 16.36770592299299 ;
	setAttr ".bps" -type "matrix" 0.137958 0.42997600000000002 -0.89223799999999998 0
		 0.96199999999999997 -0.27249299999999999 0.0174284 0 -0.23563400000000001 -0.86073699999999997 -0.45123000000000002 0
		 1.5056529999999999 0.494477 -0.83799400000000002 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_r_thumb3" -p "hands:b_r_thumb2";
	rename -uid "F1C99639-444D-D9EE-68E4-FFBCFFCFFB22";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 0 0 -0.99933649539847591 ;
	setAttr ".bps" -type "matrix" 0.121159 0.43466300000000002 -0.89240600000000003 0
		 0.96426000000000001 -0.26495200000000002 0.00186443 0 -0.23563400000000001 -0.86073699999999997 -0.45123000000000002 0
		 1.1414789999999999 -0.63952500000000001 1.515274 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_r_thumb_ignore" -p "hands:b_r_thumb3";
	rename -uid "A6BA3A23-4344-83D2-D25D-42BD0E8A4C31";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".t" -type "double3" -3.4079234600067139 2.7444757506600581e-05 1.2232365406816825e-05 ;
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
	setAttr ".bps" -type "matrix" 0.121159 0.43466300000000002 -0.89240600000000003 0
		 0.96426000000000001 -0.26495200000000002 0.00186443 0 -0.23563400000000001 -0.86073699999999997 -0.45123000000000002 0
		 0.72860199999999997 -2.1208420000000001 4.5565199999999999 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode parentConstraint -n "b_r_thumb3_parentConstraint1" -p "hands:b_r_thumb3";
	rename -uid "449D36E1-4829-63DC-B554-AB91A1E839A0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "thumb_03_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0 0 5.5262137590428602e-14 ;
	setAttr ".rst" -type "double3" -2.6375083923339835 -0.00031383399618878371 2.4626075174893902e-05 ;
	setAttr ".rsrr" -type "double3" 0 0 2.1866313435061677e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "b_r_thumb2_parentConstraint1" -p "hands:b_r_thumb2";
	rename -uid "642916EF-4D58-7E93-B687-96BC168E603D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "thumb_02_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0 0 4.1347210859025715e-14 ;
	setAttr ".rst" -type "double3" -3.2585608959197989 0.0002715481678017273 -2.7681937353529751e-05 ;
	setAttr ".rsrr" -type "double3" 0 0 6.3611093629270335e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "b_r_thumb1_parentConstraint1" -p "hands:b_r_thumb1";
	rename -uid "0134F4D5-430B-38F8-BAEB-38B135893A8A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "thumb_01_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 6.2418385623721503e-14 1.7493050748049322e-14 2.544443745170814e-14 ;
	setAttr ".rst" -type "double3" 2.6297216415405251 4.1471085548400879 -2.0563869476318377 ;
	setAttr ".rsrr" -type "double3" -1.5902773407317584e-15 -7.1562480332929135e-15 
		9.931289170612858e-32 ;
	setAttr -k on ".w0";
createNode joint -n "hands:b_r_hand_ignore" -p "hands:b_r_hand";
	rename -uid "9CE8221F-413B-61C7-0B53-CBB9FEE6673B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".v" no;
	setAttr -l on ".t" -type "double3" 13.611329078674316 3.9665923395659775e-05 6.8139714130666107e-05 ;
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 26.246025347361961 0 0 ;
	setAttr ".bps" -type "matrix" -0.25976399999999999 0.0144429 0.96556399999999998 0
		 0.935365 0.252299 0.247866 0 -0.24003099999999999 0.96754200000000001 -0.079047400000000004 0
		 -5.3106790000000004 5.0976460000000001 5.9726249999999999 1;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "hands:b_r_grip" -p "hands:b_r_hand";
	rename -uid "22D8EF0D-41C4-9FFD-8BB3-6E901D2B4D83";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" -44.739811520951172 57.644851753580333 110.27294259977481 ;
	setAttr ".bps" -type "matrix" 0.44320100000000001 -0.89641999999999999 -0.0020149999999999999 0
		 -0.69169000000000003 -0.34054800000000002 -0.63685999999999998 0 0.57020800000000005 0.28365099999999999 -0.77097599999999999 0
		 -2.5765609999999999 2.777288 0.24318699999999999 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode parentConstraint -n "b_r_hand_parentConstraint1" -p "hands:b_r_hand";
	rename -uid "B4378858-4BE9-5902-D041-29A6F695322A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "COG_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -6.3611093629270348e-14 -1.2722218725854036e-14 5.7249984266343308e-14 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 0 -1.7763568394002505e-15 ;
	setAttr ".rsrr" -type "double3" -1.431249606658583e-14 -1.9083328088781101e-14 1.9083328088781107e-14 ;
	setAttr -k on ".w0";
createNode transform -n "Geometry" -p "Right_Hand";
	rename -uid "17FE61AF-4070-B65F-8D03-3BB7315ECDBF";
createNode transform -n "r_Hand" -p "|Right_Hand|Geometry";
	rename -uid "38EB4FDA-4075-6AC0-7F5C-CFB84BB42A0A";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -l on ".t";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".r";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".s";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -k on ".currentUVSet" -type "string" "UVMap";
createNode mesh -n "r_HandShape" -p "r_Hand";
	rename -uid "1BA0E5A9-4C2A-4034-9C3F-CE94FDF84A9D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "UVMap";
	setAttr ".cuvs" -type "string" "UVMap";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "RhandShapeOrig" -p "r_Hand";
	rename -uid "64C6AAAD-4FB4-F68B-51AF-13BDB710A89F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "skinCluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "vtx[0:840]";
	setAttr ".uvst[0].uvsn" -type "string" "UVMap";
	setAttr -s 967 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.060988545 0.49048442 0.42554018
		 0.20476966 0.53764212 0.51118219 0.51415396 0.52170831 0.091834247 0.32519475 0.81393462
		 0.43929127 0.57578999 0.96134001 0.5333221 0.50275993 0.86766028 0.56699336 0.72032106
		 0.4067485 0.1843515 0.27206764 0.40524155 0.63363707 0.68479115 0.61543524 0.11210641
		 0.46569163 0.69419914 0.40377149 0.42026281 0.78016269 0.25233161 0.62662292 0.63019419
		 0.47638342 0.60905802 0.53945911 0.95268112 0.48637754 0.64948553 0.41284984 0.36963335
		 0.32616961 0.42558336 0.19252698 0.27205014 0.49433509 0.88691497 0.4564082 0.39565748
		 0.63726211 0.75091565 0.52208573 0.55199093 0.5605877 0.21073687 0.42218557 0.12335816
		 0.44965944 0.57026231 0.37932464 0.70697159 0.43967709 0.57931393 0.93639976 0.56212282
		 0.22123212 0.38894421 0.38849765 0.41492882 0.77175367 0.40430188 0.70164722 0.53264666
		 0.5890606 0.32210395 0.44133803 0.16889349 0.49730709 0.46184731 0.48729309 0.8372997
		 0.63916349 0.37533414 0.55760849 0.71505374 0.42252824 0.56971341 0.93203872 0.43479466
		 0.16317442 0.40211463 0.43193829 0.48156959 0.5578143 0.44719779 0.52783918 0.35426444
		 0.1304393 0.31391758 0.31084973 0.81312871 0.59180325 0.49601984 0.55524904 0.78190339
		 0.94910556 0.073032081 0.55253357 0.041727692 0.56884259 0.23291808 0.42557088 0.55933398
		 0.58010793 0.93875015 0.53529954 0.29789689 0.49771854 0.79189634 0.52982253 0.057862997
		 0.46664226 0.24964449 0.4638643 0.19066432 0.62704664 0.67535967 0.55279231 0.77462125
		 0.34693193 0.28782296 0.50398934 0.90777493 0.58095807 0.34728202 0.65815389 0.56072646
		 0.23938228 0.53732789 0.57391435 0.50262177 0.54779309 0.67470682 0.36978287 0.74912179
		 0.58057874 0.86423206 0.58502489 0.12563419 0.31156191 0.70111889 0.54166651 0.67490482
		 0.49287251 0.192366 0.30721581 0.21519566 0.54789704 0.18994278 0.4524332 0.089206606
		 0.51342946 0.55790305 0.55572045 0.59609622 0.26710761 0.73300833 0.57578284 0.25185752
		 0.37292686 0.070122838 0.43718269 0.408207 0.69338375 0.072118402 0.30932024 0.24529248
		 0.4265658 0.57832277 0.41012427 0.54363084 0.94637829 0.43309927 0.49885547 0.68687069
		 0.53309411 0.061558664 0.18837246 0.13978863 0.33565834 0.54894471 0.5722487 0.53010416
		 0.53015178 0.53131747 0.5170089 0.21895456 0.26505181 0.070994645 0.53987795 0.32964197
		 0.45959827 0.42130685 0.25208816 0.45575133 0.17100967 0.79203814 0.61440879 0.71969974
		 0.60738957 0.38917726 0.62955666 0.73981547 0.63321131 0.22415903 0.37480375 0.43119839
		 0.39836219 0.37396604 0.28905755 0.24447876 0.3886396 0.048482507 0.53541839 0.36810142
		 0.57743794 0.052958488 0.47675031 0.40735519 0.23849586 0.25155807 0.48540446 0.41920388
		 0.29444912 0.50682771 0.52944988 0.7593528 0.42538053 0.076394498 0.53199232 0.093065619
		 0.40932396 0.096897036 0.52073848 0.73134696 0.4438372 0.33923399 0.30248159 0.93593878
		 0.83110362 0.020769119 0.56368107 0.14158165 0.44194922 0.48756325 0.46135649 0.41977927
		 0.79932064 0.40392336 0.20048875 0.76706225 0.93656927 0.087153316 0.38312635 0.25446114
		 0.54973722 0.14132488 0.31167871 0.23373631 0.68311357 0.92826617 0.47895741 0.41332012
		 0.63073909 0.42627922 0.22633483 0.17964485 0.6279217 0.52455926 0.52378333 0.034725785
		 0.56401151 0.70039988 0.49662378 0.21775341 0.68013132 0.13560379 0.40442112 0.11784649
		 0.39394218 0.029285789 0.50399691 0.54270387 0.57586223 0.36430216 0.44582078 0.52860427
		 0.20721449 0.40977567 0.76329207 0.21805662 0.68810809 0.4346534 0.24272032 0.44425267
		 0.48589876 0.90632761 0.60344404 0.40928215 0.68722039 0.18843162 0.575297 0.045815587
		 0.47293863 0.26649025 0.42359582 0.96104497 0.81241441 0.7721687 0.95936686 0.40326193
		 0.77962124 0.17661631 0.57613719 0.95778209 0.82191646 0.53687274 0.52384174 0.13341081
		 0.21657299 0.59131718 0.24551572 0.22801661 0.68047714 0.65592647 0.39908704 0.553262
		 0.5662356 0.51299202 0.40338352 0.38104528 0.57242757 0.29553461 0.18463314 0.19939455
		 0.3400414 0.83390832 0.46254674 0.26887649 0.36717498 0.65511405 0.54638511 0.59484422
		 0.23762229 0.78154778 0.42470923 0.40576273 0.79749823 0.65638536 0.5801093 0.17328626
		 0.30992988 0.77925092 0.58673579 0.35798323 0.30284405 0.21356076 0.47421935 0.58371437
		 0.24652809 0.73364842 0.48796758 0.1873641 0.37082803 0.59490836 0.25128752 0.20322406
		 0.26860061 0.58705747 0.23430845 0.36401892 0.65050316 0.51797885 0.4232243 0.073190272
		 0.32463714 0.73652893 0.42437571 0.49145776 0.56045467 0.701594 0.60189593 0.21639872
		 0.63456029 0.25362098 0.42607328 0.28604689 0.3620345 0.25067383 0.56123137 0.20732528
		 0.68197381 0.27191138 0.5047065 0.18727803 0.54896897 0.55848897 0.56479591 0.52062118
		 0.39851794 0.10732859 0.50768095 0.31433755 0.56099313 0.41046593 0.39200777 0.25094414
		 0.12613703 0.54655439 0.37993988 0.38983753 0.31217706 0.34101576 0.2654756 0.19029588
		 0.47045323 0.50029457 0.43452588 0.027859509 0.51677614 0.43709034 0.51417917 0.61250281
		 0.4941946 0.1052897 0.27826741 0.23453671 0.50436312 0.22803944 0.68949687 0.81380618
		 0.34408602 0.20754546 0.69046295 0.2154007 0.57443053 0.55788314 0.24990208 0.41917044
		 0.64109683 0.093763173 0.50731307 0.46250439 0.27599931 0.49041778 0.40262088 0.59182155
		 0.37908977 0.040135503 0.47963655 0.36531746 0.56144649 0.39946061 0.76837957 0.76790029
		 0.94868642 0.059667945 0.54233283 0.23704809 0.48058745 0.52056241 0.40503213 0.8103925
		 0.61659598 0.3073588 0.40905297 0.3805787 0.53711182 0.73928857 0.95708495 0.34728605
		 0.48061708 0.57562643 0.94893092 0.45939082 0.46948001 0.029688895 0.56045443 0.38801819
		 0.1751271 0.36901373 0.45809492 0.64476597 0.45308283 0.31181777 0.23134591 0.50308752
		 0.39786291;
	setAttr ".uvst[0].uvsp[250:499]" 0.19780707 0.56064022 0.62435371 0.4460018
		 0.39925545 0.64742428 0.5436359 0.39688239 0.82867104 0.42215914 0.74746484 0.93517941
		 0.080709398 0.40549675 0.057636738 0.51961136 0.073085129 0.34688285 0.21654874 0.64262885
		 0.20325223 0.69602764 0.37410742 0.46745721 0.4740901 0.47472697 0.17849928 0.56191194
		 0.23165026 0.64275652 0.017347634 0.55440766 0.40887389 0.3137036 0.51265061 0.40815243
		 0.91842163 0.53259003 0.92908931 0.58302915 0.39372411 0.78572834 0.17700839 0.45191786
		 0.68763053 0.46523458 0.77148449 0.61837357 0.54396558 0.56706977 0.15489995 0.41202614
		 0.46676904 0.50642157 0.091690779 0.34699756 0.67493314 0.40144369 0.23270339 0.69472086
		 0.71387285 0.51882887 0.36419392 0.63987648 0.507254 0.23561306 0.25239116 0.25544852
		 0.94800317 0.82915539 0.35263124 0.46480229 0.021962106 0.5241133 0.0403561 0.52195835
		 0.20560953 0.37241301 0.04480511 0.56232721 0.44593772 0.21284463 0.24057293 0.6431669
		 0.35465524 0.6547035 0.94095337 0.44910783 0.87543237 0.52984107 0.06522429 0.4063386
		 0.40778258 0.7094242 0.20566326 0.22306232 0.80631161 0.53195471 0.8629998 0.60947251
		 0.32548815 0.26925072 0.30084908 0.2781643 0.48924077 0.54909927 0.17404056 0.41658768
		 0.65525609 0.3731586 0.040897518 0.56524676 0.2733779 0.48394415 0.71605879 0.47256607
		 0.51317525 0.53529423 0.21486759 0.50067019 0.174413 0.38499925 0.12485045 0.35365459
		 0.02389884 0.55434269 0.43129653 0.26643518 0.27261403 0.32850182 0.17569727 0.23413961
		 0.26733667 0.17049173 0.55791759 0.95771545 0.47985858 0.44894955 0.86125559 0.49870124
		 0.76675385 0.52437449 0.38445145 0.35382313 0.49320245 0.39826509 0.20145667 0.5746085
		 0.36121488 0.17395309 0.45552504 0.5187912 0.44974232 0.23206194 0.58051986 0.37927246
		 0.37417614 0.40342736 0.38385183 0.65340889 0.79627073 0.58940643 0.84079289 0.49391085
		 0.026090503 0.56125218 0.40041327 0.37876087 0.51348066 0.39812434 0.37203407 0.13766873
		 0.2323752 0.2610414 0.2983157 0.31976047 0.58030629 0.39885357 0.37963471 0.64337748
		 0.25359741 0.5752365 0.19120687 0.63593775 0.5164156 0.4555504 0.38958499 0.14918368
		 0.925295 0.60419947 0.34846395 0.56817091 0.25178021 0.20927876 0.39892617 0.34733742
		 0.23676178 0.46074721 0.088593066 0.4233028 0.048556566 0.5140993 0.36871719 0.66020167
		 0.23198628 0.63487458 0.84198153 0.56922239 0.30231076 0.14765826 0.24520791 0.50805104
		 0.37231144 0.43346313 0.047879815 0.46163255 0.42378455 0.50741225 0.52252072 0.41886517
		 0.52896595 0.24296926 0.63913 0.4277949 0.54526293 0.58837277 0.34791034 0.32937732
		 0.38368222 0.45791206 0.73358518 0.52084726 0.75970078 0.45326462 0.18198621 0.64560574
		 0.14113098 0.3612515 0.66915017 0.41673473 0.12462699 0.28101978 0.67813808 0.51052147
		 0.93156654 0.81144261 0.50172305 0.47068512 0.59929079 0.58576864 0.48172784 0.49072191
		 0.73562604 0.36446187 0.56306756 0.94664651 0.86516589 0.40806821 0.21050864 0.68709159
		 0.44852003 0.2758832 0.744991 0.94709688 0.33882418 0.39387152 0.34733579 0.18867467
		 0.30521351 0.088543959 0.38405937 0.69988 0.38811272 0.76990151 0.59611779 0.25904134
		 0.73770368 0.61305565 0.41297075 0.62046754 0.18315884 0.49860361 0.080443621 0.48053169
		 0.35995406 0.66456962 0.84168577 0.58833706 0.79963768 0.56865561 0.40062389 0.4000726
		 0.11120528 0.42008916 0.26832926 0.20248477 0.34082833 0.54963136 0.40134594 0.69760484
		 0.1944395 0.68792939 0.84137118 0.61383408 0.57596451 0.41848442 0.12054837 0.24080616
		 0.55690986 0.26289096 0.22549099 0.68590152 0.75545615 0.96214515 0.69064564 0.56122619
		 0.84642643 0.43802416 0.065855652 0.54675514 0.18346727 0.63660163 0.81532258 0.57125103
		 0.052567035 0.57189518 0.76020998 0.4072676 0.53151464 0.23091029 0.070365489 0.4975622
		 0.56034058 0.9275766 0.35977775 0.47546855 0.94484168 0.82162207 0.44978628 0.50005043
		 0.3687824 0.22592273 0.10825342 0.32687691 0.032892138 0.56690115 0.21605062 0.34041825
		 0.62117147 0.50940388 0.39550012 0.26970538 0.42330432 0.40942547 0.10753119 0.34662125
		 0.10646945 0.43502289 0.50287718 0.40747839 0.21516111 0.56025463 0.51273328 0.41279957
		 0.39352965 0.69861394 0.48140538 0.46748662 0.68867397 0.41955531 0.7911796 0.44859761
		 0.2507847 0.64408308 0.39066947 0.71117926 0.20071167 0.5481742 0.5701834 0.39830303
		 0.24125507 0.63499278 0.90576649 0.49305058 0.75303745 0.36281458 0.22576639 0.547916
		 0.19228846 0.64416772 0.7256822 0.55091077 0.2178182 0.69253087 0.32196373 0.57926881
		 0.54420161 0.58103156 0.35454786 0.58292478 0.30229819 0.37278572 0.037946582 0.50864166
		 0.17073518 0.16185503 0.24081695 0.68617725 0.13197637 0.17367436 0.30764639 0.46696487
		 0.56837022 0.4091318 0.65975434 0.43282416 0.030273974 0.52648985 0.60398412 0.51846266
		 0.048672736 0.56649905 0.67259914 0.59031433 0.58333188 0.28210947 0.82658231 0.53186679
		 0.88289315 0.48196003 0.049355805 0.48489958 0.40845713 0.6442821 0.033219159 0.51865566
		 0.099892914 0.49899063 0.38403049 0.55426872 0.074557006 0.49020708 0.50310689 0.56087047
		 0.525056 0.51073009 0.076231241 0.41854617 0.096813381 0.45272756 0.9100467 0.56474137
		 0.49092418 0.40966231 0.35465175 0.54418617 0.18766192 0.56122422 0.318598 0.40502715
		 0.25600192 0.49449673 0.28801835 0.24338409 0.50001049 0.53695166 0.33942378 0.21375617
		 0.30989143 0.37012014 0.09089762 0.30955854 0.23005602 0.30119154 0.079016566 0.50409973
		 0.49309719 0.47927439 0.80687177 0.47279775 0.53897035 0.21134804 0.45159382 0.47792575
		 0.089407623 0.4882741 0.49216413 0.41671431 0.037038445 0.52936411 0.58139646 0.26321957
		 0.66354954 0.45885825 0.49639285 0.56944346 0.042973638 0.57462496 0.5841651 0.25464723;
	setAttr ".uvst[0].uvsp[500:749]" 0.32844591 0.59383774 0.21746999 0.21895202
		 0.42057854 0.6978814 0.62774098 0.52672279 0.71635586 0.36234283 0.35003579 0.66999531
		 0.35073024 0.64580166 0.27014792 0.25013718 0.28404087 0.28515708 0.13577288 0.46158379
		 0.34225136 0.5879088 0.099621356 0.384828 0.51922035 0.54149598 0.64881587 0.49460253
		 0.24243245 0.54873729 0.89810669 0.53096384 0.38965112 0.44747338 0.85258007 0.52912903
		 0.18481791 0.2021022 0.059194744 0.43023783 0.94656104 0.80484325 0.4010435 0.182098
		 0.16137159 0.27628317 0.24107641 0.33772263 0.50896132 0.55359262 0.3170411 0.59887385
		 0.19489115 0.49768183 0.56555378 0.5527944 0.65257609 0.52521968 0.41284296 0.15585035
		 0.44506651 0.19683065 0.32835433 0.55483174 0.20968592 0.30494836 0.50344944 0.41304681
		 0.22560197 0.57432395 0.5028531 0.40188098 0.18274617 0.33982143 0.39284644 0.70367754
		 0.54277277 0.40588507 0.25968125 0.50490463 0.47406155 0.49881107 0.069377899 0.38115013
		 0.50993562 0.22317244 0.38893726 0.6943683 0.78372103 0.56588328 0.36898208 0.36659646
		 0.067796767 0.27438119 0.31363866 0.5829556 0.12745112 0.48581514 0.2413505 0.62616873
		 0.55323052 0.93850917 0.36166999 0.25900272 0.40180576 0.62464797 0.23228288 0.56040519
		 0.32462618 0.223141 0.73992699 0.40734363 0.20142686 0.68438327 0.69291478 0.51589698
		 0.93898946 0.80797189 0.89159369 0.56566089 0.21817815 0.70019352 0.51732892 0.20243596
		 0.71692002 0.50214875 0.21627605 0.6260199 0.56583798 0.56515259 0.95163071 0.8162629
		 0.18902048 0.41964325 0.81567317 0.64263844 0.67984468 0.43640819 0.31310523 0.35124817
		 0.38545084 0.21522735 0.098567694 0.51235807 0.26650932 0.46313974 0.79575992 0.39532474
		 0.38618943 0.41582477 0.58954567 0.95487958 0.88843322 0.58200085 0.33174503 0.57501811
		 0.35938463 0.42019251 0.065134645 0.21990061 0.62728924 0.56091177 0.086975157 0.50075006
		 0.4144429 0.41679564 0.23734182 0.3890287 0.69524497 0.36609632 0.20310766 0.62641579
		 0.60688144 0.55909544 0.88640302 0.60533619 0.36788577 0.539204 0.1701656 0.48052704
		 0.31653649 0.48977032 0.065969765 0.52487254 0.55327624 0.57477248 0.052545786 0.52822685
		 0.37604535 0.63478655 0.061388075 0.48065251 0.50976133 0.42875257 0.27846998 0.45759228
		 0.26212674 0.29195017 0.32751897 0.34056896 0.93619603 0.82268661 0.037231803 0.55866522
		 0.076371878 0.54428726 0.39833194 0.6904127 0.12413841 0.33124158 0.30347079 0.56771028
		 0.35408223 0.37960324 0.24958831 0.63533515 0.51819944 0.23972301 0.28697687 0.41607475
		 0.10242754 0.23980203 0.3343356 0.43832287 0.081236422 0.44066167 0.15723485 0.38173696
		 0.4077099 0.28570721 0.75720924 0.93611556 0.38431513 0.25400236 0.10856676 0.31004563
		 0.52079314 0.22725393 0.96168762 0.4582288 0.17515054 0.55030572 0.11926365 0.47519228
		 0.20064434 0.63533014 0.43756393 0.27860075 0.59964967 0.50931352 0.41693091 0.68546349
		 0.22591633 0.62589991 0.20130491 0.64332479 0.029299557 0.55555218 0.93124861 0.56827915
		 0.75732857 0.63637215 0.50607133 0.2509059 0.74057323 0.55556661 0.44290438 0.50775778
		 0.24180758 0.57474726 0.24225363 0.56079 0.24456099 0.29697347 0.34395361 0.45672348
		 0.064294875 0.53548849 0.28611332 0.47617963 0.21303988 0.4557052 0.32722628 0.40154806
		 0.030078441 0.57267255 0.75314152 0.49961686 0.15513289 0.23912236 0.066572547 0.41669759
		 0.42551929 0.6857546 0.41363546 0.69436866 0.75557172 0.55996025 0.4710176 0.45776394
		 0.41183969 0.78777909 0.37825352 0.70640075 0.35075951 0.43042883 0.30014449 0.44885698
		 0.2242623 0.18821643 0.13422811 0.47119042 0.58876431 0.41048944 0.5800696 0.27411675
		 0.32420355 0.12858538 0.53518736 0.58119947 0.75624311 0.95081073 0.33564046 0.48303404
		 0.71698529 0.57070941 0.14103121 0.27930596 0.78038996 0.48069736 0.083676428 0.53875786
		 0.3926771 0.56793731 0.59070057 0.39913338 0.085582435 0.27584043 0.44204512 0.25964746
		 0.1736722 0.4712787 0.12912178 0.43319276 0.52183354 0.41110221 0.66992563 0.60948366
		 0.54521704 0.51707393 0.083626568 0.21712822 0.070304394 0.47288489 0.2567566 0.33317515
		 0.30686188 0.17481458 0.339782 0.65071058 0.65886891 0.845281 0.66949809 0.83162916
		 0.55664909 0.27619755 0.52700269 0.25708467 0.51668221 0.2506181 0.52194434 0.2692889
		 0.9611125 0.77361417 0.9593643 0.7827611 0.95460224 0.7623862 0.95342869 0.80988801
		 0.90768272 0.80719799 0.92676938 0.82681644 0.90735501 0.78979236 0.90082037 0.80175924
		 0.89754987 0.79315001 0.71952218 0.8095113 0.72286731 0.79665476 0.72226727 0.74801183
		 0.54053557 0.41541344 0.56532538 0.42058459 0.5843215 0.42306432 0.48383757 0.66976625
		 0.49815941 0.67854124 0.60652471 0.70239621 0.54752749 0.7358191 0.53581792 0.74662572
		 0.58313143 0.79148448 0.60085225 0.78931147 0.61994684 0.7104134 0.59310621 0.77556354
		 0.61469531 0.68561625 0.67102182 0.64051056 0.71110547 0.7473945 0.67557424 0.81289297
		 0.74787664 0.66768402 0.73469311 0.71756166 0.55721051 0.62094426 0.56995177 0.62670857
		 0.49789321 0.66364747 0.41788247 0.38750497 0.41332227 0.34164971 0.41555867 0.37583154
		 0.84076387 0.6617586 0.85144913 0.70411915 0.81223446 0.72524399 0.92188817 0.63764632
		 0.92372131 0.66224593 0.92884612 0.67096055 0.9290601 0.68595445 0.91558808 0.68001324
		 0.81871057 0.74433857 0.81074476 0.80247861 0.81163132 0.81564766 0.79633451 0.82064092
		 0.43434542 0.71097684 0.47164378 0.68264884 0.39214122 0.7564702 0.42003566 0.72383177
		 0.42538738 0.71536028 0.44108212 0.7212162 0.4774574 0.77656835 0.51892966 0.7527979
		 0.4707514 0.7850278 0.42083979 0.78827178 0.46003848 0.78517646 0.63130903 0.89805657
		 0.62914658 0.90905482 0.58420461 0.9442547 0.6194768 0.91742021 0.55635506 0.86308938;
	setAttr ".uvst[0].uvsp[750:966]" 0.5792563 0.8082394 0.5397104 0.93169075 0.54909909
		 0.88463372 0.54980445 0.87195629 0.5666247 0.87122124 0.73106426 0.94557804 0.72337335
		 0.89908165 0.72023827 0.89006418 0.72256291 0.82481438 0.72223735 0.88025922 0.7736721
		 0.94169897 0.79594028 0.90411681 0.80711752 0.83053321 0.7996695 0.88560247 0.80099708
		 0.89577812 0.78558379 0.89791006 0.93936646 0.71809411 0.94535434 0.72813588 0.9459126
		 0.73702216 0.87570208 0.75961012 0.85800272 0.73511994 0.88536233 0.77410722 0.88621831
		 0.75681067 0.87810683 0.76936018 0.65338248 0.82852405 0.52198762 0.2866194 0.55617046
		 0.47519305 0.5482688 0.47150561 0.59557909 0.80166405 0.94930845 0.78087252 0.91356117
		 0.79839736 0.73490059 0.81626135 0.7350902 0.8025685 0.79784364 0.80712849 0.63470101
		 0.69774145 0.64118433 0.6838097 0.53208292 0.72997469 0.51990402 0.73737961 0.56481624
		 0.43257442 0.57710445 0.43573633 0.48688924 0.68654633 0.71368772 0.71669358 0.57762241
		 0.61843944 0.47062594 0.76631135 0.45958102 0.77195352 0.43173623 0.7292459 0.61287946
		 0.90475172 0.56306541 0.88161653 0.73442912 0.89374727 0.7338689 0.88206679 0.78780651
		 0.88607329 0.93583459 0.7385903 0.77585953 0.8967064 0.76011503 0.89503163 0.60338885
		 0.90026516 0.58822691 0.89264697 0.45421192 0.76392037 0.44610384 0.75027466 0.61219525
		 0.46181723 0.5329662 0.43332672 0.55178154 0.45760736 0.4554033 0.25186005 0.5099684
		 0.26651523 0.50986969 0.28499907 0.55128175 0.92893249 0.57263917 0.88590449 0.40274
		 0.75980914 0.43715101 0.73730373 0.94707024 0.7714991 0.93866706 0.77317941 0.93079185
		 0.78822738 0.94181967 0.78302318 0.89224333 0.76657015 0.90021676 0.76018715 0.91442198
		 0.78485417 0.91313851 0.7510463 0.92636776 0.77839971 0.92640787 0.74239558 0.92013007
		 0.79428893 0.93026 0.8194468 0.76543492 0.8190316 0.74416989 0.88215345 0.78408867
		 0.82052255 0.7609641 0.88286006 0.74023885 0.93938047 0.74427348 0.89416641 0.77234012
		 0.72794038 0.74714983 0.80352443 0.74672204 0.81815642 0.67213541 0.71352327 0.61270839
		 0.79361618 0.6998089 0.65263599 0.65671521 0.69040018 0.52587909 0.71998793 0.63265556
		 0.6105364 0.58638525 0.62837964 0.86976075 0.64999717 0.86440682 0.69703335 0.78056991
		 0.66862291 0.75006574 0.71668869 0.64779937 0.62575012 0.59960014 0.64496893 0.73258418
		 0.7341646 0.74983788 0.73287386 0.65424025 0.63257843 0.6225245 0.67330021 0.61371732
		 0.66526216 0.56236881 0.4628267 0.59248614 0.49948612 0.56859428 0.44944909 0.60197222
		 0.48125651 0.52575493 0.44392452 0.55666846 0.28935039 0.53713614 0.4248867 0.55724776
		 0.44517449 0.69332427 0.7243278 0.63082302 0.80173576 0.72970927 0.66474414 0.70026296
		 0.70941138 0.59928131 0.67300773 0.5153302 0.70404553 0.72031921 0.66135949 0.67877752
		 0.6990934 0.61425787 0.59417021 0.58759511 0.65506428 0.50437605 0.68862307 0.65029746
		 0.70450884 0.65979165 0.8162539 0.64873153 0.81028008 0.81345582 0.66750532 0.8122645
		 0.71016377 0.80142361 0.70920163 0.5759716 0.63796699 0.90555555 0.63888174 0.91241324
		 0.66954607 0.90032482 0.67443573 0.85700399 0.71528006 0.86954069 0.70797396 0.75786203
		 0.6682238 0.67963231 0.64366502 0.80268157 0.66881269 0.77411389 0.71225542 0.89270949
		 0.64126503 0.88226926 0.68503219 0.78565353 0.80635667 0.85057575 0.65871584 0.79549623
		 0.72455812 0.76650369 0.80446428 0.9319073 0.72859997 0.92221361 0.73175842 0.88678765
		 0.69584984 0.89410609 0.74969536 0.90399402 0.68511516 0.90797538 0.74029213 0.77771574
		 0.88434386 0.45675206 0.74301809 0.51311493 0.72802687 0.44710287 0.7292937 0.50283623
		 0.71242702 0.49252796 0.69702303 0.46544915 0.75754911 0.61863357 0.89522535 0.60896343
		 0.89027935 0.57670003 0.87529868 0.62474906 0.81470031 0.59305388 0.88232368 0.64224643
		 0.82305038 0.60705304 0.80672628 0.4354012 0.38617048 0.43117401 0.37595809 0.70988089
		 0.72825414 0.079133511 0.13141036 0.11850762 0.12024345 0.052227795 0.15001938 0.050796449
		 0.13627934 0.98014438 0.42194891 0.9564476 0.40840989 0.92199159 0.38748318 0.22352153
		 0.084830068 0.2522893 0.067714833 0.18515652 0.099098846 0.2759251 0.051153772 0.8413021
		 0.32615981 0.86726248 0.34359509 0.89383501 0.36442322 0.15202659 0.1100895 0.080991805
		 0.14415701 0.97530437 0.42608327 0.25803345 0.077248737 0.28237265 0.06003245 0.27975088
		 0.10737196 0.89078379 0.36956584 0.83644378 0.37794992 0.91783535 0.39117581 0.18933547
		 0.10959445 0.15544856 0.12036347 0.086099505 0.18318076 0.12188083 0.13199157 0.23030889
		 0.093643062 0.20691931 0.15006164 0.8642081 0.34904999 0.89764911 0.42395821 0.95097047
		 0.41282827 0.97663748 0.39032066 0.87470174 0.27712873 0.24186975 0.055822991 0.90515625
		 0.27693728 0.9316864 0.2938174 0.88915312 0.3102594 0.91782463 0.33412302 0.94639528
		 0.36025015 0.5186609 0.3865416 0.51049161 0.38874984 0.86363792 0.29199961 0.84645098
		 0.32130194 0.074451447 0.11239817 0.95981073 0.32100391;
	setAttr ".cuvs" -type "string" "UVMap";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 841 ".vt";
	setAttr ".vt[0:165]"  -6.7311182 3.72803545 7.30013657 -7.57809019 3.92029715 7.20573807
		 -8.1636982 3.51713419 6.77355194 -7.58704042 1.49838865 8.30573177 -7.8231945 1.85184479 8.72497463
		 -8.048197746 1.82394302 7.69730139 -7.37194157 1.68341708 7.71970224 -7.19286442 2.22436166 8.64851093
		 -7.82679605 2.2887044 8.54051304 -8.28491116 2.11806774 8.13835907 -6.95622587 1.94210553 8.21133137
		 -8.2159462 2.22542405 8.31581688 -7.97590637 1.54075801 8.031721115 -6.50833607 5.46585369 2.026213169
		 -7.39609766 1.97052431 8.83561897 -7.17566013 3.95835495 7.36719942 -7.85576487 2.0087900162 8.73505688
		 -5.80782509 6.073383331 2.595824 -8.21118927 1.90303457 8.45555782 -7.15913916 1.63094854 8.42284012
		 -4.89660358 5.66635656 3.066739798 -8.070083618 3.31098008 6.65975761 -6.63096809 3.50629735 7.16264153
		 -7.741045 1.63839078 8.60167503 -7.99888229 3.83727193 7.049124718 -7.76661682 1.72866714 7.58645535
		 -7.039162159 1.80307412 7.92237473 -7.3960886 2.30424166 8.69887447 -8.17967606 1.9702208 7.95940542
		 -7.088242531 2.078904629 8.46948719 -7.89454174 3.99811387 6.75698233 -6.50905418 3.63089323 6.86840439
		 -7.9570055 3.39539599 6.35798836 -7.085110664 4.10536718 7.055188179 -6.28680134 5.98767233 2.19069743
		 -5.30663443 6.031414509 2.98058915 -8.13199043 2.036835432 8.51579571 -7.52771091 2.083002567 8.79504395
		 -8.12508392 1.6871655 8.32707024 -6.76947117 4.70494652 2.35501266 -7.31004286 1.76052487 8.71047592
		 -4.85902452 4.99991322 3.31785846 -8.083879471 3.70249629 6.51843309 -7.49050426 4.11829185 6.95191145
		 -6.63667679 3.93066311 7.040586472 -6.014614105 4.9981842 5.30521345 -6.89533997 5.30959225 5.17790031
		 -7.52726412 4.81317997 4.73358727 -6.44888926 5.32802296 5.3594842 -7.51748753 4.50742149 4.58701658
		 -5.84261417 4.73551178 5.20779133 -7.34760237 5.20466089 5.0059971809 -3.92883778 3.56826973 9.22980499
		 -4.7943778 3.80461907 9.234622 -5.46915054 3.42480087 8.75435257 -4.99319935 1.28133595 10.43803787
		 -5.15795994 1.77750587 10.88877392 -5.49506807 1.53916943 9.82560825 -4.81079006 1.33193552 9.7657671
		 -4.47668028 2.11747456 10.69813156 -5.13528824 2.24746203 10.67049694 -5.66701031 1.99678266 10.29621887
		 -4.29728365 1.67372823 10.2138443 -5.56581402 2.15561891 10.47702312 -5.41803122 1.30535078 10.18907738
		 -4.46391916 5.8073535 3.36094356 -4.69006252 1.89305162 10.94173145 -4.26984215 3.79638958 9.37270069
		 -5.17456722 1.96207964 10.89514256 -3.43933868 6.3355813 3.69774961 -5.58278275 1.80139422 10.63981724
		 -4.52468777 1.39810491 10.49007797 -2.38484883 5.84313679 3.86571169 -5.40630436 3.20874071 8.59342289
		 -3.8618052 3.33717608 9.060475349 -5.11043692 1.50775361 10.76423073 -5.30412197 3.68087912 9.081698418
		 -5.22200012 1.39540255 9.66279125 -4.42907333 1.48162282 9.92197132 -4.67306519 2.24551749 10.77804279
		 -5.59401989 1.77707577 10.09450531 -4.40295553 1.89950132 10.49706745 -6.68727636 3.25876355 7.37536287
		 -7.16181517 3.70876646 7.62757921 -8.11237144 3.58569717 7.25279713 -8.091295242 3.077078342 6.86415386
		 -4.15636921 6.22433662 3.50429106 -2.70063305 6.24636173 3.85724807 -5.48137426 1.96100378 10.68772984
		 -4.82009554 2.028898716 10.91137218 -5.53288031 1.52456129 10.50874043 -4.46927214 5.052228451 3.53471613
		 -4.64016008 1.61621857 10.81065464 -2.32515574 5.22965145 4.29178905 -6.81424379 3.51708364 7.55663776
		 -7.64889526 3.70119739 7.46027994 -8.22543526 3.33605075 7.02572155 -3.38356185 5.32615805 6.93358707
		 -4.28083897 5.66606379 6.88184023 -4.95434523 5.096822262 6.46049118 -3.8097043 5.69570684 7.010898113
		 -4.95362186 4.77647209 6.30901527 -3.22918987 5.010098457 6.82105207 -4.72405386 5.52400064 6.76452303
		 -0.51414484 2.26410818 8.60992432 -1.20225596 2.7219727 8.92086983 -2.046861172 2.6644721 8.65299511
		 -1.86213517 0.61860406 9.59161854 -1.76779091 0.95436174 10.12380695 -2.41482091 1.10597062 9.23810101
		 -1.82796454 0.75631356 8.96167946 -1.075671434 1.10344815 9.75096989 -1.66169441 1.3946327 9.97194576
		 -2.34352708 1.40217447 9.78886604 -1.16226649 0.80862981 9.20066833 -2.14995074 1.46863651 9.93643379
		 -2.31880641 0.79863858 9.51777458 -1.69326329 5.35249043 4.082483768 -1.27913857 0.91649365 10.021800995
		 -0.72517896 2.52853537 8.91277027 -1.72699261 1.10885251 10.15766716 -0.64503467 5.34517717 4.12654877
		 -2.22544241 1.14135969 10.050171852 -1.38121557 0.57174796 9.49041367 0.17251426 4.75646305 3.8569386
		 -2.092085361 2.51147032 8.47553253 -0.57906383 2.076908827 8.38606834 -1.82648611 0.77403545 9.9739418
		 -1.71619046 2.78165841 8.94762135 -2.22499394 0.93589485 9.021401405 -1.39922357 0.73459613 8.99681473
		 -1.1979804 1.24481308 9.90766525 -2.38563681 1.25108814 9.55372429 -1.12160444 0.9553138 9.51586342
		 -9.48293209 2.19673014 5.84320068 -8.89355469 2.30693722 5.88135958 -8.92840958 1.62670779 5.0510993
		 -9.61874104 1.56342196 5.16197109 -9.42491817 1.82701766 6.050401688 -1.2656225 5.45186138 4.17940474
		 -0.027192101 5.16058159 3.99941516 -2.070301533 1.23939109 10.076835632 -1.36629844 1.073761821 10.05547905
		 -2.28591013 0.95293283 9.89262009 -1.93905175 4.82808828 4.27548075 -1.34048772 0.72963703 9.86413383
		 0.16567713 4.44423771 3.7661643 -9.15590477 1.46713984 5.741364 -9.30854034 3.83583045 2.74923158
		 -8.85135174 4.30664682 3.28669953 -8.13668442 4.053362846 3.69074154 -0.080588982 3.60619593 6.99024582
		 -0.77674973 4.14435196 7.24864531 -1.69777179 4.0090751648 6.97443724 -0.35627788 3.99931383 7.30447578
		 -1.86240602 3.78408098 6.78678322 -0.076312684 3.34884644 6.80699062 -1.1878438 4.21354055 7.32963085
		 -9.88675213 1.88090038 5.53899622 -8.61523056 1.96801293 5.52180481 -9.83807278 2.027302265 5.67723322
		 -9.52474403 1.38999641 5.51539755 -9.043286324 2.073271751 6.092235088 -8.48802471 4.31276131 3.53257394
		 -9.47574711 1.9683367 6.041055679 -9.79464912 1.75122833 5.83424854;
	setAttr ".vt[166:331]" -8.76941395 1.6997329 5.79040956 -9.24936199 3.5737102 2.6290338
		 -8.017181396 3.83263612 3.68859673 -9.32553101 1.6356653 5.98954153 -9.14919567 4.18683672 3.030982971
		 -9.32923889 1.57520533 4.93016624 -8.60569096 1.83341205 5.22374964 -9.091985703 2.34155369 5.93216705
		 -9.76781654 1.72452152 5.39988995 -8.76993465 2.14241815 5.74715137 -8.61325455 3.22263098 4.88508558
		 -9.36572933 3.28031588 4.72774649 -9.83486557 2.85318708 4.27147102 -9.73773766 1.89719427 5.86646748
		 -9.1811533 2.12862945 6.053819656 -9.69143677 1.5579232 5.76729488 -8.93866253 1.87760222 6.030341148
		 -9.7442522 3.14070153 4.50873089 -8.9672842 3.37356901 4.90523481 -9.78878689 2.6764276 4.17712402
		 -8.45977402 3.037418365 4.82319975 -7.18879652 4.87473822 1.86536276 -7.86424637 4.8602252 1.3660779
		 -8.40471935 4.31208181 0.7398805 -7.40340614 5.020631313 1.7882688 -8.3070116 4.042257786 0.73060536
		 -7.015470505 4.30628157 2.11553931 -8.34167385 4.6259613 0.90669107 1.12397552 -1.39628553 1.13256657
		 1.75942087 -0.90737695 1.57662511 1.53132296 -0.052784592 2.1755774 0.36210769 -2.23972607 4.37577534
		 0.87948966 -2.3926034 4.25038099 0.41790146 -1.33213234 4.37371254 -0.10236196 -1.77658463 4.076164246
		 0.47038716 -2.44314814 3.42988062 0.99081087 -2.056250572 3.73592091 0.96948624 -1.53345394 4.17432833
		 -0.12478598 -2.29627252 3.51559711 1.09596777 -1.69497418 4.0267663 0.50133014 -1.80698347 4.5656929
		 0.63530982 -2.65016794 3.88604879 1.50142753 -1.35124636 1.17805398 0.99051988 -2.34612656 4.12418413
		 1.017998934 -1.96458936 4.44514751 0.12594393 -2.4925611 4.0054740906 1.24208522 0.1179224 2.28959894
		 0.82993686 -1.34492779 1.17261016 0.64718807 -2.38480091 4.35683489 1.80368662 -0.3303701 1.98182845
		 0.14737338 -1.44961119 4.28835297 -0.20246434 -2.10427165 3.75730753 0.72351968 -2.37717247 3.46997881
		 0.72296143 -1.33976996 4.36803627 0.14297917 -2.37407207 3.46494102 0.36582237 -0.49562716 3.52349019
		 -0.27165008 -0.92912459 3.045683146 0.59075838 -2.064333439 2.43173909 1.28613985 -1.66294599 2.88330603
		 1.1162349 -0.87933773 3.39545465 -0.21452002 -1.74003029 2.51631427 1.0589571 -2.018212795 4.27176952
		 0.77809715 -2.52545667 3.85834169 0.77650046 -1.95192981 4.55193615 0.39692861 -2.63764238 3.99218011
		 1.35514033 -1.1705209 3.27266407 -0.0081596375 -0.57186002 3.35455394 -0.3857494 -1.37555134 2.73437023
		 0.9482348 -2.063153505 2.54678822 0.80581701 -0.57473385 3.5499413 0.17244941 -2.0093102455 2.38319802
		 1.11830306 1.40468025 0.87754738 0.13949949 0.42778063 0.77105021 1.38073158 -0.38363332 -1.1102643
		 2.32082558 0.57209218 -0.91314554 1.9807303 1.60971224 0.15830481 0.31220359 -0.36382675 -0.17601892
		 0.4807145 0.91615754 0.88268411 0.044257224 -0.027196273 0.41767752 1.9227643 -0.11741634 -1.2573514
		 1.58015704 1.57396901 0.5637098 0.85616481 -0.48559794 -0.78746766 2.28793955 1.30861366 -0.3162764
		 -7.058805943 3.23302245 -1.77739251 -7.29856062 4.49636936 -1.82701945 -7.29982519 3.80286813 -1.86641359
		 -6.20637178 3.28290701 -4.28026199 -6.28105354 4.83609867 -4.25671959 -6.37469673 4.085326195 -4.42469168
		 -5.27266073 3.88920808 -6.17702961 -5.22133589 5.48404598 -5.96680403 -5.43638039 4.83164072 -6.089346409
		 -4.40350819 5.92623663 -6.99571323 0.45479697 3.64645147 2.29765081 0.49928904 5.17077875 2.38764739
		 0.55408597 4.32693624 2.38902164 0.64941448 3.32902002 1.47511125 0.54737788 5.27006054 1.32992303
		 0.8210755 4.098657608 1.27799499 -5.58141088 6.23557138 -0.10574319 -4.67792511 6.72881126 0.042724967
		 -4.030023098 6.71976089 0.89718306 -5.098788261 6.47016191 -0.28507182 -4.1905427 6.70108032 0.37421018
		 -3.78819466 6.74782896 0.98832524 -2.76487374 6.86440706 0.87679935 -1.81556046 6.56537342 1.51783001
		 -3.33258128 6.79085636 0.73505318 -2.13586903 6.68440294 1.0040285587 -1.52258396 6.43322849 1.58215499
		 -0.55612981 6.28789806 1.2378428 -1.081419468 6.39525318 1.17944169 0.1804145 5.82132053 1.29210842
		 -6.021422386 5.88077784 -0.34727493 -6.66982079 5.52061272 -1.43173254 -6.24419498 5.75648785 -1.091130376
		 -6.99825096 5.0031738281 -1.74207199 -7.8541317 4.42564726 -0.5831244 -7.76354122 3.7630434 -0.63232392
		 -7.50871706 3.24015355 -0.59023535 -4.78869724 6.52265835 1.64523542 -5.2654562 6.56548071 1.2692976
		 -3.08382535 6.82503319 2.22509861 -3.72218037 6.70731258 2.07307291 -1.97726607 6.53024149 2.49982095
		 -2.3907218 6.70054626 2.38728905 -6.76365757 5.60683346 0.24213696 -7.25543261 5.31563044 -0.11476155
		 -4.13586855 6.57658768 1.9604485 -0.58556288 6.07337904 2.54760861 -1.23039484 6.18110037 2.5994997
		 -4.42419004 6.50782537 1.84969962 -5.66974401 6.39701939 0.90602583 -1.67289114 6.35829258 2.57849956
		 -5.92172909 6.17808151 0.70128727 -6.39276123 5.82628059 0.36286288 -7.67941618 4.81447077 -0.4747808
		 0.013951689 5.72281981 2.47246599 -5.54752254 3.16043663 9.08776474 -4.87718678 3.52605939 9.55492783
		 -4.020797729 3.29868031 9.55663395 -5.456882 2.85639191 8.8545866 -5.42474461 3.39277649 9.32734013
		 -4.28383684 3.49746895 9.67400551 -3.93678975 3.0048794746 9.31838608 -3.8646903 3.79382634 8.96265602
		 -4.72912169 4.031766415 8.96463776 -5.41033936 3.65299416 8.48285007 -4.25393867 4.018059731 9.05337429
		 -5.3175621 3.33467174 8.25265884 -3.7687645 3.47583628 8.73151875 -5.12506628 3.93156481 8.8010416
		 -2.13541484 2.43479395 8.88132381 -1.30383432 2.46804237 9.14703846 -0.61311001 2.046947956 8.84240341
		 -2.19558239 2.21448612 8.58341599 -1.88987064 2.5581646 9.090447426 -0.7476697 2.26303577 9.061911583
		 -0.68702054 1.83260453 8.54597759 -0.43732399 2.50084877 8.35702419 -1.120314 2.98660493 8.65266323
		 -1.98263907 2.89674163 8.40545368 -0.77485567 2.84922433 8.59768486 -2.071395397 2.60812569 8.12898636
		 -0.53014886 2.21866679 8.085630417 -1.47231758 3.035041094 8.62373734;
	setAttr ".vt[332:497]" -8.70029926 3.030805588 5.13973379 -9.44106579 3.032071352 5.021003246
		 -9.90538216 2.64649868 4.56858397 -9.85770035 2.85187769 4.76006317 -8.98965836 3.13803601 5.18447208
		 -9.79653454 2.40356421 4.40664816 -8.46782589 2.82008481 5.034844398 -9.72155476 3.094013691 3.9146874
		 -9.26033688 3.53773141 4.4015255 -8.50851727 3.42584157 4.6109724 -8.8708744 3.56761837 4.56895828
		 -9.62761879 2.79306841 3.72867274 -8.30996895 3.12833285 4.55023623 -9.56095314 3.40455174 4.18614817
		 -8.5807333 4.1277523 3.79084849 -9.34441566 3.34189701 2.87551737 -8.049690247 3.58003521 3.90457797
		 -9.26411152 4.011983871 3.30619454 -9.42737579 3.66151118 3.056866169 -8.9676733 4.12762165 3.57220387
		 -8.23983097 3.90274286 3.92660832 -7.98262072 4.24582624 3.38830185 -8.68714046 4.51651907 2.94347215
		 -9.16183949 4.031479836 2.38816714 -8.37213612 4.50846624 3.18501401 -9.080732346 3.67432213 2.23562622
		 -7.78996038 3.88676786 3.41027451 -8.98697567 4.39340591 2.657511 -7.44591331 4.91853046 5.42693281
		 -7.026877403 5.067007542 5.64590311 -5.91329098 4.43821383 5.5758462 -6.14930344 4.79255629 5.72861481
		 -7.6299181 4.17968035 4.97273636 -6.62747288 5.055368423 5.7525506 -7.64618063 4.56166029 5.17592764
		 -5.86506844 5.16696024 4.91604137 -6.75702143 5.48725128 4.77365398 -7.41777754 5.011497498 4.3294611
		 -6.25688696 5.46231079 4.88268042 -7.41769314 4.61394072 4.16368437 -5.63937902 4.79816818 4.81208944
		 -7.20111418 5.35872746 4.56018543 -3.6421721 6.23054552 4.3345685 -3.52044559 5.091615677 7.40915966
		 -4.40076876 5.40335321 7.38086891 -5.062116146 4.87737036 6.92799091 -4.3369236 6.11767864 4.14308691
		 -3.92086577 5.38706684 7.47823334 -5.061118126 4.47912121 6.69594669 -3.31504822 4.69926167 7.23998022
		 -4.79420328 5.26125336 7.21071482 -2.56408286 5.85758734 4.47005224 -2.93023872 6.20869541 4.47731876
		 -3.18360448 5.51097441 6.32567978 -4.074608803 5.86231709 6.25884199 -4.78596354 5.28032923 5.85901642
		 -4.51031256 5.74204063 3.99977803 -3.57797694 5.83047152 6.36217546 -4.80492687 4.8283968 5.72210979
		 -3.016105175 5.034918785 6.25546503 -4.59978056 5.75718069 6.049843311 -0.19485134 3.30833817 7.35941553
		 -0.87907356 3.82631063 7.63748217 -1.77610207 3.69702482 7.36116028 -0.52773714 3.68729091 7.59301853
		 -1.9977628 3.40219688 7.083545208 -0.18621212 2.96592236 7.089146137 -1.24216378 3.8661499 7.59448814
		 0.0077282488 3.86628652 6.54198265 -0.70960152 4.4433651 6.76268864 -1.65299857 4.26554775 6.56830072
		 -0.33785686 4.28768778 6.71596336 -1.87868178 3.94614625 6.31282806 0.011002019 3.48715782 6.33961821
		 -1.098472834 4.47958946 6.73776054 -4.36745834 2.86398816 -0.096621037 -3.87584305 3.28609467 0.98145646
		 -5.33774757 2.9319849 0.090049535 -4.79456043 2.74244189 -0.36034176 -3.98052955 3.028568983 0.3366828
		 -2.47503018 3.038219929 0.83899581 -1.82551372 3.13909388 1.54813731 -3.55063081 3.33954716 1.13033187
		 -3.11042213 3.15823293 0.71109098 -1.95065248 2.98019361 0.96926212 -0.68583906 2.89803052 1.27054358
		 -1.39976466 3.077595472 1.67751956 -1.15004635 2.93392372 1.1994065 0.063186586 2.82496834 1.38417053
		 -6.0026040077 2.78897119 -1.16373754 -5.54346752 2.87471414 -0.053008899 -6.60855865 2.98368359 -1.49953151
		 -5.46550989 2.70140672 -0.85108232 -2.86127257 3.4606328 2.087900639 -2.28470945 3.4666965 2.20565462
		 -1.5025562 3.34535575 2.38800383 -1.21132421 3.30388188 2.37840176 -2.028828621 3.43967581 2.2617054
		 -5.64836502 3.14861298 0.73107064 -5.46808052 3.18617606 0.92125475 -0.56412643 3.25577044 2.32220674
		 0.09653753 3.21581173 2.27151799 -6.55500937 3.081935883 0.0023428276 -6.13133764 2.99164629 0.34916359
		 -4.18080568 3.36022449 1.71417964 -3.77549243 3.44121313 1.87940872 -5.05625248 3.25395346 1.24351525
		 -4.56565762 3.26056767 1.56385756 -3.45788264 3.44491792 1.95766389 -5.89570665 3.0039176941 0.4880431
		 -7.15204763 3.10801601 -0.43135369 1.20167935 -1.21937716 0.7538653 1.85943151 -0.63710642 1.14748907
		 1.65183616 0.17905125 1.85831201 1.58742523 -1.12902534 0.74958086 1.27749491 0.38089842 2.045089006
		 0.7777307 -1.17087448 0.86168289 1.91515183 -0.074207798 1.62017798 1.013389349 -1.57554841 1.47583938
		 1.62843287 -1.12899041 1.9329375 1.41374981 -0.29274112 2.49539781 1.37850928 -1.54750299 1.54337108
		 1.035785556 -0.021329552 2.61252356 0.5951376 -1.47376478 1.48563468 1.67910969 -0.57701218 2.32094264
		 -0.04504066 1.45071173 0.44259319 -0.078502782 2.19654417 0.53868783 0.57108629 1.85881639 0.65722257
		 0.61358595 2.60797381 1.0080780983 0.98127723 2.13889456 0.63020289 0.91299403 2.87277865 0.82208562
		 -3.5913837 6.75555897 -2.91593504 -4.32934809 6.50211525 -3.14524388 -2.94463706 6.77561092 -2.74631286
		 -1.88703918 6.81250525 -2.48011351 -2.37543464 6.8026495 -2.59448886 -1.20866191 6.60013151 -2.35877967
		 0.01142367 6.09288168 -2.11674333 -0.5658806 6.40876865 -2.21879888 0.60794699 5.48428011 -2.0077171326
		 -5.46300173 5.97036648 -3.54898262 -4.98023367 6.25916004 -3.35503197 -5.90441084 5.4766717 -3.9163878
		 1.013422489 4.25419569 0.54105008 1.32610548 2.4663043 0.32579967 1.21671259 3.25027657 0.40043604
		 -6.98372507 4.5284481 -2.62162304 -7.024293423 3.87638211 -2.70721245 -6.77259064 3.26105142 -2.56748819
		 -0.94348472 6.43477726 0.1363101 -1.89832437 6.59895086 0.013233796 -3.064298868 6.88319016 -0.26687405
		 -3.85690331 6.81645012 -0.57348883 -4.87641478 6.4298439 -1.15836358 -5.97768641 5.85763693 -1.80580318
		 -6.36957598 5.50718021 -2.1009481 -6.68919134 5.049342632 -2.3997879 0.2984885 5.87944221 0.34751424
		 -0.28734627 6.2805829 0.21842861 -2.49221468 6.85180521 -0.11970633 -4.35464764 6.72486258 -0.86754793
		 0.58928686 5.31720877 0.45335862 -0.52786589 2.5142169 0.51399356 -0.52167141 2.014658213 0.21231055
		 -4.044880867 2.70749354 -0.79242933 -4.47454691 2.6602242 -1.054149032;
	setAttr ".vt[498:663]" -3.59733295 2.82502103 -0.55094397 -2.49361372 2.78765631 -0.15247171
		 -3.03746748 2.86407709 -0.26176292 -2.045380592 2.66426444 -0.027968686 -0.96336174 2.58885956 0.33707827
		 -1.45151234 2.58972478 0.24093582 -5.78514194 2.75113559 -1.88311553 -6.39122581 2.91591311 -2.27807856
		 -5.18621206 2.64999294 -1.51635695 -0.45235932 1.099753141 -0.078140602 -3.573838 2.62194943 -2.49300647
		 -3.96981049 2.58112812 -2.83267975 -3.15543199 2.69438744 -2.32519293 -2.42739248 2.57610607 -1.78683877
		 -2.76160765 2.69877172 -2.011058807 -2.14589214 2.39072609 -1.49495637 -1.49781823 1.89791822 -0.690965
		 -1.9025383 2.20181894 -1.13092434 -5.20064545 2.54915142 -3.66825294 -5.78365564 2.81842685 -4.0038685799
		 -4.58296585 2.47554684 -3.31994033 -4.96235514 2.68410063 -2.023126125 -4.30404329 2.66539264 -1.5921458
		 -3.40010834 2.77662873 -1.19290638 -2.94977689 2.80061674 -0.911143 -2.060779572 2.53827715 -0.61026275
		 -1.72397542 2.38658166 -0.43987426 -6.24743986 2.92163754 -2.83181095 -5.65275574 2.74412513 -2.44340181
		 -1.35800517 2.15663791 -0.22063448 -2.47838116 2.73309588 -0.7698828 -3.88282514 2.70724225 -1.38248622
		 0.01859609 0.65565145 -4.013804436 -0.96402895 0.62239087 -1.64109743 1.19648004 1.21990132 -4.30471325
		 -0.69724172 0.45477462 -3.18533182 -0.37436354 0.32681012 -1.12305737 -0.026612513 0.10320604 -2.18133521
		 0.54525232 0.21490528 -2.80214953 1.61783123 0.80696082 -3.41019559 0.93646646 4.53363562 -6.50038433
		 1.062277555 3.3809495 -5.25701284 0.415979 5.79568291 -4.50514269 1.032261729 4.49040031 -4.85910225
		 1.1308192 4.81055927 -3.66646504 1.8538835 3.25018859 -2.9954493 0.93579221 5.27791119 -3.48905516
		 1.64779222 3.91207147 -2.60255194 -0.79508024 6.84666634 -6.02862215 -3.28285003 3.59852672 -7.23377895
		 -0.96522141 3.038077354 -7.11379862 -3.18118477 6.82433319 -4.016746521 -3.84594965 6.63522673 -4.21673536
		 -2.29758549 6.95444536 -4.65332794 -1.58755887 6.8076129 -3.78676724 -2.0073840618 6.81914377 -3.84900594
		 -0.84296179 6.84740448 -4.47454882 0.1533154 6.094732285 -3.4982152 -0.41399071 6.40690899 -3.59303021
		 -4.8838768 6.20314121 -4.73260164 -4.057303429 6.57519293 -5.15167284 -5.34538078 5.82918024 -5.055141449
		 0.9471705 4.98781109 -1.99279094 1.29059303 4.52349806 -1.86813104 -6.80605316 3.96944046 -3.24628162
		 -6.59457874 3.23502135 -3.13215828 -1.56736982 6.68185759 -1.17641044 -3.40668344 6.78792334 -1.6400702
		 -5.54756451 6.080883503 -2.45805025 -6.0097379684 5.77534151 -2.66785717 -6.38959694 5.2501955 -2.93408728
		 -0.11814262 6.097581863 -0.89190274 -2.204144 6.85906649 -1.29894948 -3.98713517 6.6782527 -1.8559891
		 -6.73010921 4.66350889 -3.15416789 -0.69871175 6.48106813 -1.018546224 -2.72786713 6.86923647 -1.42961323
		 -4.63073778 6.40249538 -2.076968431 0.48985356 5.53761005 -0.74308062 0.77516788 5.064749718 -0.5808391
		 1.11078179 4.45449162 -0.41125244 1.62935019 2.70689058 -0.045078948 1.47172213 3.49522328 -0.11504629
		 1.82096183 3.15465665 -1.076018691 1.46804535 3.78918052 -1.050604582 -1.099780798 1.67659366 -0.36622462
		 -0.93557614 1.31500328 -0.70859319 -0.63592643 1.4308964 -5.31061697 -2.026838303 1.59471035 -2.46234345
		 0.37444368 2.004611969 -5.59746122 -1.57413876 1.4079138 -4.47742939 -1.50366211 0.93322653 -2.37739611
		 -1.094413042 0.85332417 -4.015664577 -0.30879682 1.057598352 -4.77609968 0.78954959 1.61057019 -5.0279212
		 -1.59392786 1.5191412 -1.30234516 0.076512367 0.85103768 0.48340133 0.48520637 1.30493295 0.64811319
		 1.075971842 1.7278384 0.63579255 1.42693555 1.95365751 0.37514833 -0.064135611 0.45916569 0.04768426
		 0.062469572 -0.03581737 -0.68446434 0.51815003 -0.20204273 -1.49902666 1.06375885 -0.10309588 -1.93210614
		 1.91277885 0.29050222 -2.13233924 1.76761961 2.099823475 0.0010181516 1.9875474 2.48969078 -1.28294194
		 -3.014623404 2.33015966 -5.02594471 -3.70093346 2.3132956 -4.15052223 -2.77493668 2.079235315 -4.34102249
		 -2.39789701 2.15412331 -2.4887259 -2.43949533 2.019040346 -3.69776058 -1.98372436 1.80696964 -1.58492291
		 -4.48228025 2.62593532 -5.33749294 -5.2965579 3.016587496 -5.38127375 -4.2566824 2.2649672 -4.35627365
		 -0.16045949 2.51817584 -6.36163568 2.27861381 1.75985217 -1.028937936 1.90915358 1.88129425 -3.47094417
		 2.14370155 2.2317338 -2.029487371 2.068559408 2.52165174 -2.51495123 2.12105751 1.55383635 -2.83855081
		 2.319031 1.0020827055 -1.75389171 1.33357739 2.58305454 -4.75796986 1.61742973 2.24565125 -4.24126625
		 2.043371677 1.98632073 -0.60157531 -3.84645152 3.026354551 -6.14304638 -2.66843271 2.87353754 -6.2142868
		 -1.95478904 2.84476185 -6.43811989 -4.76521587 5.11753988 -7.25562572 -4.50331211 4.41435242 -7.29133701
		 0.56015837 5.84320498 -6.21055555 0.35216594 3.47141504 -6.84505892 -2.019917488 6.98549557 -6.16586828
		 -3.25859046 6.72314548 -6.50961924 -2.28111053 3.20701218 -7.071288586 -2.13226271 2.24701881 -5.56415462
		 -1.9231751 1.82820201 -5.093178749 -1.052349567 1.76120305 -5.5837841 0.11253697 4.6234355 4.5411191
		 -0.64624536 5.15747547 4.80469322 -1.64825344 5.028573513 4.72909403 -0.049596511 4.97979641 4.69024324
		 -2.26171231 5.45077896 4.051425934 0.11729363 4.1894474 4.2343421 -1.25604701 5.20924425 4.83474779
		 -8.20475578 4.39659405 0.2326566 0.32220066 4.33701944 3.38691354 0.33044171 4.98314095 3.32706809
		 -5.14060926 6.25686359 2.52682686 -3.27878213 6.58377647 3.21051955 -2.24650478 6.15701342 3.41297245
		 -7.15915346 5.25536346 1.27120888 -0.64583772 5.69419718 3.52352595 -6.2231307 5.87199497 1.58585894
		 -0.029778846 5.4408474 3.43028712 -8.16564369 3.9598248 0.3525154 -6.98191309 4.68621302 1.97414935
		 -5.58975506 6.31445599 2.13728428 -4.022734642 6.46867085 3.012722492 -2.59104896 6.49636173 3.36662507
		 -7.65331793 5.041035175 0.86054081 -4.32454681 6.12093639 2.87155557 -1.27451766 5.84839153 3.59062076
		 -4.80991507 6.018941402 2.65622163 -6.020825386 6.19784594 1.80836582;
	setAttr ".vt[664:829]" -1.64675736 5.83937454 3.55339956 -6.8351059 5.27024031 1.28059661
		 -8.12411022 4.73336554 0.4297404 -1.87811732 5.11001062 4.10568666 -4.47933292 5.44919395 3.43689179
		 -5.27067137 5.46763086 3.65007067 -6.16935635 5.90344238 3.27735758 -6.85007191 5.38346386 2.76053905
		 -5.55491257 5.83404732 3.59961605 -4.82583904 5.33349419 3.17282891 -6.61936045 5.74387074 2.91416597
		 -6.82002735 4.96858644 2.15208578 -7.46488571 4.6087656 2.37755275 -8.13276196 4.7294755 1.86285508
		 -8.65659809 4.2388463 1.28803802 -7.66286039 4.83525515 2.27674007 -8.50736141 3.88955092 1.12085986
		 -8.58740807 4.53104448 1.42500198 -4.71431398 4.31401634 5.90521765 -4.79035997 4.18972778 6.26562786
		 -4.52477694 3.94351339 6.20638132 -4.43858433 4.063821316 5.84715271 0.667997 0.11001125 2.52098608
		 0.76983351 0.332598 2.21791816 0.2993902 0.093474001 2.09577775 0.22957325 -0.085751578 2.41496372
		 -3.90712643 3.91725469 6.34264612 -3.82001281 4.038274765 5.98518801 -3.35008264 4.05916357 6.54029322
		 -3.26172066 4.17966843 6.18160248 -9.47334194 2.39578009 3.85692358 -9.54818249 2.19316959 4.18092871
		 -9.27490139 2.047338486 4.1301775 -9.19267082 2.24503613 3.80325651 -8.80409431 2.097401381 4.324687
		 -8.70856476 2.30205417 4.0061821938 -8.4091959 2.29351282 4.58483887 -8.29882526 2.50428271 4.2758255
		 -8.26917076 2.7594831 4.46726465 -8.37809849 2.5408926 4.77103138 -5.79391193 4.010286808 4.61450052
		 -5.92159224 3.92983341 4.97694874 -6.34018612 3.87616038 4.35331249 -6.45527124 3.79394889 4.71627855
		 -6.94796658 3.84874511 4.23395777 -7.060152531 3.74651432 4.59366369 -5.81588078 4.19214678 5.1443243
		 -5.66980743 4.28847885 4.79311562 -3.15554905 4.058382511 3.15407062 -3.24806166 4.14112139 3.52022815
		 -2.59312344 4.20032644 3.34721899 -2.68699479 4.29724741 3.7155354 -1.25393724 2.66168976 6.41075563
		 -1.19369388 2.83100891 6.066762924 -1.83094597 2.90464401 6.49143744 -1.79131019 3.082814693 6.14919853
		 -1.90549195 4.37848997 4.006380558 -1.86825562 4.11261559 3.62028456 -2.25949502 4.30725956 3.46599174
		 -1.65485489 3.90467668 3.65056753 -1.65471923 3.84485149 4.038520813 -4.78748226 4.3003726 3.064735651
		 -4.64006948 3.96225429 2.70186377 -4.95674229 3.74968266 2.52129316 -5.13677502 3.84809113 2.85873246
		 0.10606247 -0.24463458 1.88228536 0.028883129 -0.43821776 2.1901238 0.037097573 -0.66852272 1.62820315
		 -0.045223512 -0.86976671 1.96432376 0.2249099 -1.18667209 1.53700554 0.31284964 -0.98749685 1.15687478
		 -0.61619478 2.59855652 6.47294426 -0.54500258 2.76849794 6.13190269 -0.25420058 2.99789715 6.29673529
		 -0.3268666 2.821697 6.63422775 -3.76084137 4.057748795 3.0091919899 -3.85804439 4.15122843 3.38328743
		 -1.92315948 3.39233541 6.32360458 -1.95153296 3.20126104 6.65944576 -0.79735082 3.559026 3.53321743
		 -0.86549264 3.53306842 3.9269135 -0.082220219 3.51408339 3.50309229 -0.14583994 3.4897778 3.88964891
		 -3.11877322 4.49373102 6.36450481 -3.2211535 4.37105465 6.71907043 -2.33779502 4.65535164 3.83727837
		 -4.24010706 4.49115849 3.36825085 -4.14477444 4.15860367 2.98228192 0.14388517 3.78256059 3.91244817
		 0.21599758 3.82476854 3.52946186 -6.91883373 3.78070974 1.94800758 -6.56560278 3.54232478 1.6056664
		 -6.82216835 3.26431417 1.44619548 -7.018490791 3.29975247 1.78794456 -6.48983479 4.19898701 2.10730648
		 -6.23693275 3.76798654 1.72671247 -5.90157366 3.86955166 1.89393723 -6.070197105 3.93180895 2.21968389
		 -5.51713037 3.65254855 2.11895752 -5.66898727 3.74989867 2.46872401 -8.19529915 3.50925541 0.83107322
		 -8.030497551 3.50070357 0.47893679 -7.76729965 3.24947262 0.64270943 -7.958076 3.24833369 0.98430955
		 -7.23745203 3.19899654 1.092567563 -7.43693638 3.20197105 1.43054926 -7.33119249 3.97769475 4.62053299
		 -7.22593641 4.09796524 4.26614857 -1.56192982 1.60132205 7.88288784 -1.48884034 1.83583641 7.58256435
		 -2.096972704 1.80447185 7.97408295 -2.039484978 2.047309875 7.67486763 -0.99540228 1.50903702 7.96293449
		 -0.90277684 1.74056685 7.66633844 -0.64328229 1.88110399 7.87891674 -0.74109578 1.64644146 8.17131042
		 -2.16558456 2.27848721 7.90292406 -2.22118545 2.031185627 8.20060825 -5.25685978 2.89162302 8.15112686
		 -5.30870056 2.6592629 8.45678616 -5.043964863 2.42087483 8.3584528 -4.98162079 2.65437126 8.055681229
		 -4.46056557 2.39158702 8.47554398 -4.38044357 2.62619805 8.17736435 -3.92710924 2.54339886 8.68688107
		 -3.83442974 2.77703166 8.3906126 -3.71244383 3.04562521 8.61378288 -3.8056376 2.81219029 8.90928745
		 -6.50349665 3.029993534 6.57427597 -6.61029148 2.80312347 6.87307167 -6.99740839 2.90317893 6.32585192
		 -7.087274075 2.67785597 6.63060999 -7.57214546 2.86389327 6.1872797 -7.64620304 2.64115381 6.49824572
		 -6.53538036 3.023743629 7.081365585 -6.42565966 3.25072289 6.7837019 -7.92432308 2.8033514 6.5902667
		 -7.85500908 3.030031443 6.28102636 -8.95337582 3.17613411 2.44193769 -9.090497017 3.042416573 2.7787466
		 -8.83163071 2.83367324 2.81490517 -8.6883316 2.96514726 2.47423434 -7.7852726 3.42066312 3.3784678
		 -7.95061588 3.27374649 3.70404506 -7.97345209 3.011380672 3.51238108 -7.79271126 3.13781595 3.187289
		 -8.37029648 2.83362913 3.15737724 -8.21314335 2.96472597 2.8220365 -3.98856688 5.38249254 -8.46775723
		 -2.91069818 5.29577589 -8.26191998 -1.53553581 5.12365389 -8.029577255 -0.264853 4.9411974 -7.81382561
		 0.6965338 4.79166508 -7.62834358 -4.22135448 6.54268694 -7.95220137 -3.98282099 6.48608255 -8.16543102
		 -4.22964144 5.37985802 -8.54894543 -4.49013376 5.34307051 -8.39888382 -4.30768728 4.37985516 -8.54430676
		 -4.08000803 4.53787088 -8.70084667 0.98431259 6.085268021 -7.03304863 0.81578559 6.055679321 -7.30529928
		 1.22419333 4.61671877 -7.34797382 1.035424232 4.72004271 -7.57294655 0.84160912 3.581568 -7.75692463
		 0.71906805 3.81054711 -7.94534111 -1.61331761 3.26724505 -8.40772438;
	setAttr ".vt[830:840]" -1.5294342 3.52356625 -8.51794815 -0.26640439 3.11125612 -8.13846207
		 -0.23562494 3.39045882 -8.26840973 -3.083528042 3.6667285 -8.53164005 -2.96950364 3.90860462 -8.66505241
		 -1.56126356 7.27841377 -7.21857023 -1.50394678 7.093527317 -7.46873713 -0.30403596 7.11133194 -7.0086946487
		 -0.32512715 6.92762852 -7.28207016 -2.90929294 7.22966051 -7.48895693 -2.79380989 7.074419498 -7.74330235;
	setAttr -s 2517 ".ed";
	setAttr ".ed[0:165]"  24 43 1 43 30 1 30 24 1 24 1 1 1 43 1 1 15 1 15 33 1
		 33 1 1 33 43 1 35 672 1 672 669 1 669 35 1 669 20 1 20 35 1 726 436 1 436 437 1 437 726 1
		 437 751 1 751 726 1 674 17 1 17 34 1 34 674 1 674 670 1 670 17 1 670 35 1 35 17 1
		 670 672 1 95 27 1 27 83 1 83 95 1 95 8 1 8 27 1 84 8 1 95 84 1 84 11 1 11 8 1 34 671 1
		 671 674 1 34 13 1 13 671 1 40 23 1 23 3 1 3 40 1 3 19 1 19 40 1 3 6 1 6 26 1 26 3 1
		 26 19 1 12 6 1 3 12 1 12 25 1 25 6 1 38 12 1 3 38 1 23 38 1 37 16 1 16 4 1 4 37 1
		 4 14 1 14 37 1 23 14 1 4 23 1 40 14 1 4 18 1 18 38 1 38 4 1 4 36 1 36 18 1 16 36 1
		 12 28 1 28 5 1 5 12 1 38 28 1 5 25 1 21 42 1 42 32 1 32 21 1 21 2 1 2 42 1 2 30 1
		 30 42 1 2 24 1 15 0 1 0 33 1 0 44 1 44 33 1 22 44 1 0 22 1 22 31 1 31 44 1 29 14 1
		 40 29 1 29 7 1 7 14 1 14 27 1 27 37 1 7 27 1 8 37 1 8 16 1 36 8 1 11 36 1 9 84 1
		 84 96 1 96 9 1 9 11 1 9 85 1 85 28 1 28 9 1 96 85 1 18 11 1 9 18 1 38 9 1 82 7 1
		 29 82 1 82 94 1 94 7 1 94 27 1 94 83 1 10 19 1 26 10 1 29 19 1 10 29 1 365 363 1
		 363 48 1 48 365 1 363 45 1 45 48 1 50 363 1 363 362 1 362 50 1 50 45 1 360 46 1 46 51 1
		 51 360 1 360 361 1 361 46 1 365 46 1 361 365 1 48 46 1 49 364 1 364 366 1 366 49 1
		 366 47 1 47 49 1 366 51 1 51 47 1 366 360 1 2 84 1 84 24 1 2 96 1 21 96 1 21 85 1
		 83 15 1 15 95 1 1 95 1 95 24 1 384 72 1 72 87 1 87 384 1 384 383 1 383 72 1 117 641 1
		 641 667 1 667 117 1 117 72 1;
	setAttr ".ed[166:331]" 72 641 1 378 374 1 374 86 1 86 378 1 374 69 1 69 86 1
		 384 69 1 374 384 1 87 69 1 305 79 1 79 309 1 309 305 1 305 60 1 60 79 1 63 305 1
		 305 308 1 308 63 1 63 60 1 86 388 1 388 378 1 86 65 1 65 388 1 92 75 1 75 55 1 55 92 1
		 55 71 1 71 92 1 55 58 1 58 78 1 78 55 1 78 71 1 64 58 1 55 64 1 64 77 1 77 58 1 90 64 1
		 55 90 1 75 90 1 385 384 1 384 389 1 389 385 1 385 383 1 89 68 1 68 56 1 56 89 1 56 66 1
		 66 89 1 92 56 1 56 75 1 92 66 1 70 90 1 90 56 1 56 70 1 88 56 1 68 88 1 88 70 1 64 80 1
		 80 57 1 57 64 1 90 80 1 57 77 1 82 22 1 22 94 1 0 94 1 94 15 1 82 10 1 10 798 1 798 82 1
		 81 66 1 92 81 1 81 59 1 59 66 1 59 89 1 59 79 1 79 89 1 60 89 1 60 68 1 88 60 1 63 88 1
		 61 308 1 308 304 1 304 61 1 61 63 1 61 307 1 307 80 1 80 61 1 304 307 1 61 70 1 88 61 1
		 90 61 1 310 59 1 81 310 1 310 306 1 306 59 1 306 79 1 306 309 1 62 71 1 78 62 1 81 71 1
		 62 81 1 379 375 1 375 100 1 100 379 1 375 97 1 97 100 1 102 375 1 375 381 1 381 102 1
		 102 97 1 382 98 1 98 103 1 103 382 1 382 376 1 376 98 1 379 98 1 376 379 1 100 98 1
		 101 380 1 380 377 1 377 101 1 377 99 1 99 101 1 377 103 1 103 99 1 377 382 1 637 124 1
		 124 140 1 140 637 1 140 640 1 640 637 1 642 124 1 637 642 1 642 146 1 146 124 1 643 638 1
		 638 139 1 139 643 1 638 121 1 121 139 1 640 121 1 638 640 1 140 121 1 319 131 1 131 323 1
		 323 319 1 319 112 1 112 131 1 322 112 1 319 322 1 322 115 1 115 112 1 139 639 1 639 643 1
		 139 117 1 117 639 1 145 127 1 127 107 1 107 145 1 107 123 1 123 145 1 123 110 1 110 130 1
		 130 123 1 107 110 1 129 107 1 107 116 1;
	setAttr ".ed[332:497]" 116 129 1 129 110 1 143 107 1 127 143 1 143 116 1 108 118 1
		 118 142 1 142 108 1 142 120 1 120 108 1 145 108 1 108 127 1 145 118 1 108 122 1 122 143 1
		 143 108 1 141 108 1 120 141 1 141 122 1 116 132 1 132 109 1 109 116 1 143 132 1 109 129 1
		 344 176 1 176 186 1 186 344 1 344 341 1 341 176 1 176 342 1 342 184 1 184 176 1 341 342 1
		 145 133 1 133 111 1 111 145 1 111 118 1 131 142 1 142 111 1 111 131 1 112 142 1 112 120 1
		 115 141 1 141 112 1 113 322 1 322 318 1 318 113 1 113 115 1 132 318 1 318 321 1 321 132 1
		 132 113 1 141 113 1 113 122 1 143 113 1 320 133 1 133 324 1 324 320 1 320 111 1 320 131 1
		 320 323 1 114 123 1 130 114 1 133 123 1 114 133 1 151 396 1 396 393 1 393 151 1 151 154 1
		 154 396 1 393 156 1 156 151 1 393 398 1 398 156 1 157 394 1 394 152 1 152 157 1 157 399 1
		 399 394 1 152 396 1 154 152 1 394 396 1 395 155 1 155 397 1 397 395 1 395 153 1 153 155 1
		 395 157 1 157 153 1 395 399 1 177 342 1 342 340 1 340 177 1 177 184 1 183 340 1 340 345 1
		 345 183 1 183 177 1 178 345 1 345 339 1 339 178 1 178 183 1 185 339 1 339 343 1 343 185 1
		 185 178 1 169 147 1 147 182 1 182 169 1 147 166 1 166 182 1 147 136 1 136 172 1 172 147 1
		 172 166 1 161 136 1 147 161 1 161 171 1 171 136 1 161 169 1 169 181 1 181 161 1 180 164 1
		 164 138 1 138 180 1 138 162 1 162 180 1 182 138 1 138 169 1 182 162 1 181 138 1 138 165 1
		 165 181 1 138 179 1 179 165 1 164 179 1 161 174 1 174 137 1 137 161 1 181 174 1 137 171 1
		 167 802 1 802 803 1 803 167 1 175 162 1 182 175 1 175 135 1 135 162 1 173 162 1 135 173 1
		 173 180 1 336 332 1 332 184 1 184 336 1 332 176 1 186 332 1 332 338 1 338 186 1 180 134 1
		 134 164 1 173 134 1 160 164 1 134 160 1 160 179 1 335 177 1 183 335 1;
	setAttr ".ed[498:663]" 335 333 1 333 177 1 333 184 1 333 336 1 179 158 1 158 165 1
		 160 158 1 181 158 1 158 174 1 185 337 1 337 334 1 334 185 1 334 178 1 178 335 1 334 335 1
		 159 166 1 172 159 1 175 166 1 159 175 1 358 168 1 168 806 1 806 358 1 190 679 1 679 676 1
		 676 190 1 676 187 1 187 190 1 755 441 1 441 430 1 430 755 1 430 759 1 759 755 1 681 188 1
		 188 193 1 193 681 1 681 677 1 677 188 1 677 190 1 190 188 1 677 679 1 191 680 1 680 678 1
		 678 191 1 678 189 1 189 191 1 193 678 1 678 681 1 193 189 1 733 236 1 236 226 1 226 733 1
		 733 455 1 455 236 1 455 223 1 223 236 1 455 450 1 450 223 1 450 234 1 234 223 1 450 453 1
		 453 234 1 453 451 1 451 234 1 451 224 1 224 234 1 451 456 1 456 224 1 456 231 1 231 224 1
		 456 225 1 225 231 1 456 452 1 452 225 1 452 235 1 235 225 1 452 454 1 454 235 1 230 214 1
		 214 197 1 197 230 1 197 211 1 211 230 1 217 197 1 197 200 1 200 217 1 217 211 1 206 200 1
		 197 206 1 206 216 1 216 200 1 229 197 1 214 229 1 229 206 1 198 207 1 207 228 1 228 198 1
		 228 209 1 209 198 1 207 214 1 230 207 1 198 214 1 229 198 1 198 210 1 210 229 1 209 227 1
		 227 198 1 227 210 1 219 206 1 229 219 1 219 199 1 199 206 1 199 216 1 232 199 1 199 221 1
		 221 232 1 232 216 1 235 199 1 219 235 1 235 221 1 217 222 1 222 233 1 233 217 1 200 222 1
		 216 222 1 232 222 1 230 201 1 201 207 1 230 220 1 220 201 1 207 218 1 218 228 1 201 218 1
		 234 218 1 201 234 1 201 223 1 220 236 1 236 201 1 218 202 1 202 228 1 202 209 1 202 227 1
		 202 205 1 205 227 1 231 202 1 202 224 1 231 205 1 218 224 1 205 203 1 203 227 1 203 210 1
		 229 203 1 203 219 1 225 219 1 203 225 1 203 231 1 204 211 1 217 204 1 211 220 1 204 220 1
		 220 226 1 204 226 1 233 204 1 233 226 1 447 237 1 237 687 1 687 447 1;
	setAttr ".ed[664:829]" 447 246 1 246 237 1 241 449 1 449 248 1 248 241 1 241 445 1
		 445 449 1 655 675 1 675 187 1 187 655 1 13 187 1 675 13 1 668 673 1 673 91 1 91 668 1
		 673 41 1 41 91 1 667 93 1 93 144 1 144 667 1 641 93 1 284 250 1 250 251 1 251 284 1
		 284 283 1 283 250 1 249 285 1 285 284 1 284 249 1 251 249 1 562 253 1 253 254 1 254 562 1
		 562 572 1 572 253 1 563 562 1 562 252 1 252 563 1 254 252 1 257 254 1 253 257 1 253 256 1
		 256 257 1 255 252 1 254 255 1 257 255 1 261 646 1 646 645 1 645 261 1 261 260 1 260 646 1
		 261 263 1 263 260 1 261 264 1 264 263 1 261 259 1 259 264 1 259 262 1 262 264 1 287 269 1
		 269 266 1 266 287 1 287 286 1 286 269 1 273 289 1 289 288 1 288 273 1 288 271 1 271 273 1
		 291 272 1 272 274 1 274 291 1 291 290 1 290 272 1 293 281 1 281 280 1 280 293 1 293 292 1
		 292 281 1 270 294 1 294 289 1 289 270 1 273 270 1 277 296 1 296 295 1 295 277 1 295 276 1
		 276 277 1 267 297 1 297 294 1 294 267 1 270 267 1 298 266 1 266 268 1 268 298 1 298 287 1
		 288 274 1 274 271 1 288 291 1 275 299 1 299 296 1 296 275 1 277 275 1 301 265 1 265 279 1
		 279 301 1 301 300 1 300 265 1 286 267 1 267 269 1 286 297 1 290 275 1 275 272 1 290 299 1
		 300 298 1 298 265 1 268 265 1 302 280 1 280 282 1 282 302 1 302 293 1 295 303 1 303 276 1
		 303 278 1 278 276 1 292 279 1 279 281 1 292 301 1 283 282 1 282 250 1 283 302 1 284 644 1
		 644 283 1 284 654 1 654 644 1 656 286 1 287 656 1 656 647 1 647 286 1 648 289 1 289 657 1
		 657 648 1 648 288 1 649 291 1 291 658 1 658 649 1 649 290 1 659 292 1 293 659 1 659 650 1
		 650 292 1 660 289 1 294 660 1 660 657 1 651 296 1 296 661 1 661 651 1 651 295 1 662 294 1
		 297 662 1 662 660 1 663 287 1 298 663 1 663 656 1 648 291 1 648 658 1;
	setAttr ".ed[830:995]" 664 296 1 299 664 1 664 661 1 665 300 1 301 665 1 665 652 1
		 652 300 1 647 297 1 647 662 1 649 299 1 649 664 1 652 298 1 652 663 1 666 293 1 302 666 1
		 666 659 1 653 295 1 651 653 1 653 303 1 665 292 1 650 665 1 644 302 1 644 666 1 260 653 1
		 653 646 1 260 303 1 263 303 1 263 278 1 309 67 1 67 305 1 67 53 1 53 305 1 305 76 1
		 76 308 1 53 76 1 304 76 1 76 54 1 54 304 1 73 304 1 54 73 1 73 307 1 52 306 1 306 74 1
		 74 52 1 310 74 1 309 52 1 52 67 1 310 62 1 62 791 1 791 310 1 311 314 1 314 52 1
		 52 311 1 314 67 1 74 311 1 74 316 1 316 311 1 53 317 1 317 76 1 53 312 1 312 317 1
		 314 53 1 314 312 1 73 313 1 313 315 1 315 73 1 54 313 1 317 313 1 54 317 1 73 782 1
		 782 783 1 783 73 1 119 105 1 105 319 1 319 119 1 323 119 1 128 319 1 105 128 1 128 322 1
		 318 128 1 128 106 1 106 318 1 125 318 1 106 125 1 125 321 1 104 324 1 324 126 1 126 104 1
		 104 320 1 323 104 1 104 119 1 324 114 1 114 779 1 779 324 1 325 119 1 104 325 1 325 328 1
		 328 119 1 325 126 1 126 330 1 330 325 1 105 331 1 331 128 1 105 326 1 326 331 1 328 105 1
		 328 326 1 125 327 1 327 329 1 329 125 1 106 327 1 331 106 1 331 327 1 332 173 1 135 332 1
		 336 173 1 338 135 1 175 338 1 160 333 1 335 160 1 134 333 1 134 336 1 174 334 1 337 174 1
		 158 334 1 158 335 1 348 341 1 344 348 1 348 352 1 352 341 1 346 342 1 341 346 1 352 346 1
		 803 694 1 694 343 1 343 803 1 343 347 1 347 803 1 340 346 1 346 351 1 351 340 1 345 351 1
		 351 349 1 349 345 1 339 349 1 349 350 1 350 339 1 339 347 1 350 347 1 168 352 1 348 168 1
		 168 150 1 150 352 1 346 150 1 150 163 1 163 346 1 351 163 1 163 149 1 149 351 1 349 149 1
		 149 170 1 170 349 1 350 170 1 170 148 1 148 350 1 167 350 1;
	setAttr ".ed[996:1161]" 148 167 1 167 347 1 163 353 1 353 356 1 356 163 1 150 353 1
		 358 150 1 358 353 1 170 354 1 354 359 1 359 170 1 149 354 1 149 356 1 356 354 1 167 355 1
		 355 357 1 357 167 1 148 355 1 148 359 1 359 355 1 159 703 1 703 338 1 338 159 1 44 365 1
		 365 33 1 44 363 1 362 44 1 31 362 1 30 361 1 360 30 1 43 361 1 33 361 1 42 364 1
		 364 32 1 42 366 1 42 360 1 50 711 1 711 372 1 372 50 1 799 710 1 710 362 1 362 799 1
		 31 799 1 370 48 1 45 370 1 45 367 1 367 370 1 50 367 1 372 367 1 51 368 1 368 373 1
		 373 51 1 46 368 1 48 368 1 370 368 1 49 369 1 369 371 1 371 49 1 47 369 1 47 373 1
		 373 369 1 49 771 1 771 770 1 770 49 1 57 307 1 307 783 1 783 57 1 747 102 1 102 748 1
		 748 747 1 747 391 1 391 102 1 381 748 1 389 100 1 97 389 1 97 385 1 102 385 1 391 385 1
		 103 386 1 386 392 1 392 103 1 98 386 1 100 386 1 389 386 1 101 387 1 387 390 1 390 101 1
		 99 387 1 392 99 1 392 387 1 101 682 1 682 683 1 683 101 1 400 403 1 403 151 1 151 400 1
		 403 154 1 156 400 1 156 405 1 405 400 1 152 406 1 406 157 1 152 401 1 401 406 1 154 401 1
		 403 401 1 155 402 1 402 404 1 404 155 1 153 402 1 406 153 1 406 402 1 412 426 1 426 425 1
		 425 412 1 412 416 1 416 426 1 418 428 1 428 427 1 427 418 1 419 428 1 418 419 1 416 413 1
		 413 426 1 413 429 1 429 426 1 431 409 1 409 410 1 410 431 1 431 430 1 430 409 1 433 432 1
		 432 420 1 420 433 1 432 417 1 417 420 1 434 421 1 421 424 1 424 434 1 424 435 1 435 434 1
		 436 408 1 408 414 1 414 436 1 414 437 1 438 407 1 407 411 1 411 438 1 411 439 1 439 438 1
		 415 425 1 425 440 1 440 415 1 415 412 1 424 422 1 422 435 1 422 441 1 441 435 1 409 441 1
		 422 409 1 411 408 1 408 439 1 436 439 1 413 418 1 418 429 1 427 429 1;
	setAttr ".ed[1162:1327]" 432 428 1 428 417 1 419 417 1 440 414 1 414 415 1 440 437 1
		 442 423 1 423 421 1 421 442 1 434 442 1 410 407 1 407 431 1 438 431 1 427 722 1 722 429 1
		 427 721 1 721 722 1 423 285 1 249 423 1 442 285 1 262 433 1 420 262 1 259 433 1 448 247 1
		 247 443 1 443 448 1 247 239 1 239 443 1 246 445 1 241 246 1 447 445 1 446 239 1 239 245 1
		 245 446 1 446 443 1 443 208 1 208 194 1 194 443 1 446 208 1 213 448 1 448 194 1 194 213 1
		 449 195 1 195 444 1 444 449 1 449 215 1 215 195 1 444 208 1 446 444 1 195 208 1 445 212 1
		 212 196 1 196 445 1 447 212 1 215 445 1 196 215 1 248 444 1 444 240 1 240 248 1 734 448 1
		 213 734 1 213 450 1 455 213 1 194 450 1 194 453 1 208 453 1 195 453 1 195 451 1 451 215 1
		 215 456 1 215 452 1 196 452 1 452 212 1 212 454 1 686 221 1 235 686 1 454 686 1 245 240 1
		 240 446 1 420 460 1 460 262 1 420 458 1 458 460 1 457 595 1 595 459 1 459 457 1 457 594 1
		 594 595 1 458 459 1 459 460 1 458 457 1 461 460 1 459 461 1 461 462 1 462 460 1 596 459 1
		 595 596 1 596 461 1 462 262 1 462 264 1 268 279 1 268 281 1 270 269 1 273 269 1 277 272 1
		 277 274 1 419 413 1 416 419 1 408 415 1 411 415 1 424 410 1 410 422 1 468 564 1 564 573 1
		 573 468 1 573 470 1 470 468 1 465 565 1 565 574 1 574 465 1 574 467 1 467 465 1 473 566 1
		 566 575 1 575 473 1 575 464 1 464 473 1 472 567 1 567 566 1 566 472 1 473 472 1 568 472 1
		 472 474 1 474 568 1 568 567 1 569 471 1 471 469 1 469 569 1 569 576 1 576 471 1 573 469 1
		 469 470 1 573 569 1 466 570 1 570 564 1 564 466 1 468 466 1 574 570 1 570 467 1 466 467 1
		 463 571 1 571 565 1 565 463 1 465 463 1 575 571 1 571 464 1 463 464 1 250 488 1 488 478 1
		 478 250 1 282 488 1 477 264 1 462 477 1 477 475 1 475 264 1 476 462 1;
	setAttr ".ed[1328:1493]" 461 476 1 476 477 1 597 461 1 596 597 1 597 476 1 251 478 1
		 478 479 1 479 251 1 251 480 1 480 249 1 479 480 1 277 482 1 482 274 1 277 481 1 481 482 1
		 269 483 1 483 484 1 484 269 1 273 483 1 281 485 1 485 486 1 486 281 1 268 485 1 280 486 1
		 486 487 1 487 280 1 282 487 1 487 488 1 490 276 1 278 490 1 278 489 1 489 490 1 276 481 1
		 490 481 1 491 271 1 274 491 1 482 491 1 271 483 1 491 483 1 266 484 1 484 492 1 492 266 1
		 268 492 1 492 485 1 478 568 1 568 572 1 572 478 1 488 568 1 475 263 1 475 493 1 493 263 1
		 278 493 1 493 489 1 494 458 1 420 494 1 494 495 1 495 458 1 506 497 1 497 424 1 424 506 1
		 497 410 1 411 500 1 500 415 1 411 498 1 498 500 1 416 503 1 503 419 1 416 501 1 501 503 1
		 505 504 1 504 423 1 423 505 1 504 421 1 504 506 1 506 421 1 502 417 1 419 502 1 503 502 1
		 415 499 1 499 412 1 500 499 1 412 501 1 499 501 1 497 496 1 496 410 1 496 407 1 496 498 1
		 498 407 1 417 494 1 502 494 1 249 505 1 480 505 1 495 457 1 495 507 1 507 457 1 598 238 1
		 238 594 1 594 598 1 598 244 1 244 238 1 519 518 1 518 509 1 509 519 1 509 520 1 520 519 1
		 521 510 1 510 512 1 512 521 1 512 522 1 522 521 1 515 524 1 524 523 1 523 515 1 523 513 1
		 513 515 1 525 517 1 517 516 1 516 525 1 516 526 1 526 525 1 516 518 1 518 526 1 519 526 1
		 515 514 1 514 524 1 514 527 1 527 524 1 528 522 1 522 511 1 511 528 1 512 511 1 523 528 1
		 528 513 1 511 513 1 509 508 1 508 520 1 508 529 1 529 520 1 508 510 1 510 529 1 521 529 1
		 520 506 1 506 519 1 520 497 1 522 498 1 498 521 1 522 500 1 501 524 1 524 503 1 501 523 1
		 526 505 1 505 525 1 526 504 1 519 504 1 527 502 1 503 527 1 500 528 1 528 499 1 499 523 1
		 529 497 1 529 496 1 521 496 1 502 495 1 527 495 1 535 531 1 531 533 1;
	setAttr ".ed[1494:1659]" 533 535 1 535 534 1 534 531 1 536 533 1 533 530 1 530 536 1
		 536 535 1 532 537 1 537 536 1 536 532 1 530 532 1 600 534 1 535 600 1 600 599 1 599 534 1
		 601 535 1 536 601 1 601 600 1 537 602 1 602 601 1 601 537 1 534 598 1 598 507 1 507 534 1
		 599 598 1 541 629 1 629 540 1 540 541 1 541 538 1 538 629 1 539 538 1 541 539 1 539 630 1
		 630 538 1 545 541 1 541 542 1 542 545 1 542 561 1 561 545 1 468 556 1 556 554 1 554 468 1
		 470 556 1 465 553 1 553 551 1 551 465 1 467 553 1 473 550 1 550 558 1 558 473 1 464 550 1
		 557 472 1 473 557 1 558 557 1 474 557 1 557 559 1 559 474 1 470 555 1 555 556 1 469 555 1
		 552 466 1 468 552 1 554 552 1 466 553 1 552 553 1 549 463 1 465 549 1 551 549 1 463 550 1
		 549 550 1 253 559 1 559 256 1 253 474 1 256 557 1 558 256 1 549 558 1 551 558 1 552 551 1
		 554 551 1 540 542 1 540 544 1 544 542 1 554 546 1 546 551 1 546 631 1 631 551 1 551 632 1
		 632 558 1 631 632 1 558 258 1 258 256 1 632 258 1 471 555 1 471 540 1 540 555 1 540 556 1
		 540 554 1 540 546 1 629 546 1 542 560 1 560 561 1 544 560 1 544 471 1 471 560 1 543 539 1
		 541 543 1 545 543 1 493 576 1 576 489 1 493 577 1 577 576 1 578 561 1 561 577 1 577 578 1
		 560 577 1 478 562 1 562 479 1 479 563 1 563 480 1 564 482 1 481 564 1 481 573 1 565 484 1
		 483 565 1 483 574 1 486 575 1 566 486 1 485 575 1 567 487 1 486 567 1 488 567 1 490 576 1
		 569 490 1 490 573 1 570 491 1 482 570 1 491 574 1 492 565 1 571 492 1 485 571 1 572 474 1
		 576 560 1 475 578 1 578 493 1 563 525 1 525 480 1 579 477 1 476 579 1 579 580 1 580 477 1
		 580 475 1 580 578 1 581 580 1 579 581 1 581 582 1 582 580 1 578 582 1 582 561 1 582 545 1
		 581 545 1 603 476 1 597 603 1 603 579 1 507 583 1 583 584 1 584 507 1;
	setAttr ".ed[1660:1825]" 495 583 1 534 584 1 584 531 1 517 563 1 252 517 1 527 583 1
		 514 583 1 607 635 1 635 588 1 588 607 1 588 609 1 609 607 1 591 588 1 588 585 1 585 591 1
		 591 590 1 590 588 1 592 591 1 591 587 1 587 592 1 585 587 1 533 589 1 589 590 1 590 533 1
		 531 589 1 530 590 1 591 530 1 530 592 1 592 532 1 531 593 1 593 589 1 584 593 1 243 594 1
		 238 243 1 243 595 1 595 237 1 237 596 1 243 237 1 596 246 1 246 597 1 507 594 1 247 599 1
		 600 247 1 247 242 1 242 599 1 239 600 1 601 239 1 245 601 1 602 245 1 242 598 1 242 244 1
		 246 603 1 241 603 1 581 543 1 604 543 1 581 604 1 604 579 1 603 604 1 514 593 1 584 514 1
		 518 613 1 613 606 1 606 518 1 606 509 1 608 511 1 512 608 1 510 608 1 612 516 1 517 612 1
		 612 611 1 611 516 1 611 613 1 613 516 1 252 612 1 255 612 1 606 605 1 605 607 1 607 606 1
		 593 515 1 515 610 1 610 593 1 589 610 1 610 586 1 586 589 1 617 620 1 620 619 1 619 617 1
		 617 615 1 615 620 1 532 616 1 616 537 1 616 619 1 619 537 1 619 602 1 620 602 1 615 240 1
		 240 620 1 615 248 1 620 245 1 618 619 1 616 618 1 618 617 1 621 592 1 587 621 1 621 622 1
		 622 592 1 539 587 1 587 614 1 614 539 1 539 621 1 543 621 1 543 622 1 622 532 1 622 616 1
		 618 604 1 604 617 1 618 543 1 543 616 1 604 615 1 604 623 1 623 615 1 623 248 1 623 241 1
		 623 603 1 547 625 1 625 624 1 624 547 1 547 633 1 633 625 1 628 624 1 624 255 1 255 628 1
		 628 547 1 255 611 1 624 611 1 605 613 1 611 605 1 624 605 1 625 605 1 608 609 1 609 586 1
		 586 608 1 588 586 1 627 257 1 256 627 1 258 627 1 257 628 1 627 628 1 614 630 1 614 548 1
		 548 630 1 633 626 1 626 625 1 548 626 1 633 548 1 614 626 1 614 634 1 634 626 1 625 634 1
		 634 605 1 635 605 1 634 635 1 586 590 1 636 588 1 635 636 1 636 585 1;
	setAttr ".ed[1826:1991]" 634 636 1 614 636 1 614 585 1 610 608 1 126 778 1 778 330 1
		 125 780 1 780 781 1 781 125 1 109 321 1 321 781 1 781 109 1 156 737 1 737 405 1 155 741 1
		 741 742 1 742 155 1 753 645 1 645 146 1 146 753 1 400 637 1 640 400 1 640 403 1 405 642 1
		 637 405 1 638 406 1 401 638 1 643 406 1 403 638 1 402 643 1 639 402 1 404 639 1 639 144 1
		 144 404 1 790 74 1 74 791 1 791 790 1 790 316 1 392 374 1 378 392 1 386 374 1 389 374 1
		 387 378 1 388 387 1 667 639 1 747 749 1 749 93 1 93 747 1 93 391 1 646 146 1 646 124 1
		 189 644 1 654 189 1 654 191 1 17 647 1 656 17 1 35 647 1 69 657 1 657 86 1 69 648 1
		 649 87 1 72 649 1 658 87 1 188 650 1 659 188 1 190 650 1 660 65 1 86 660 1 121 661 1
		 661 139 1 121 651 1 20 660 1 662 20 1 20 65 1 34 656 1 663 34 1 87 648 1 117 661 1
		 664 117 1 665 187 1 13 665 1 13 652 1 35 662 1 72 664 1 34 652 1 193 659 1 666 193 1
		 140 651 1 140 653 1 187 650 1 189 666 1 646 140 1 737 752 1 752 642 1 642 737 1 390 388 1
		 388 91 1 91 390 1 641 383 1 383 93 1 383 391 1 753 261 1 753 259 1 367 672 1 672 370 1
		 367 669 1 373 670 1 674 373 1 368 670 1 370 670 1 388 668 1 65 668 1 369 674 1 671 369 1
		 371 671 1 671 39 1 39 371 1 668 20 1 20 673 1 372 41 1 41 669 1 669 372 1 192 655 1
		 655 676 1 676 192 1 673 669 1 679 356 1 353 679 1 353 676 1 671 675 1 675 39 1 359 677 1
		 681 359 1 354 677 1 354 679 1 357 678 1 680 357 1 355 678 1 355 681 1 284 765 1 765 654 1
		 285 765 1 192 39 1 39 655 1 192 353 1 358 192 1 191 765 1 765 764 1 764 191 1 22 799 1
		 801 800 1 800 21 1 21 801 1 5 85 1 85 800 1 800 5 1 185 694 1 694 695 1 695 185 1
		 212 687 1 687 686 1 686 212 1 393 328 1 325 393 1 396 328 1 393 330 1;
	setAttr ".ed[1992:2157]" 330 398 1 399 331 1 326 399 1 326 394 1 328 394 1 329 395 1
		 397 329 1 327 395 1 327 399 1 780 397 1 397 742 1 742 780 1 780 329 1 683 782 1 782 315 1
		 315 683 1 315 380 1 380 683 1 375 314 1 311 375 1 379 314 1 381 311 1 316 381 1 317 376 1
		 382 317 1 312 376 1 314 376 1 313 380 1 313 377 1 313 382 1 137 337 1 337 695 1 695 137 1
		 807 344 1 344 702 1 702 807 1 807 348 1 186 702 1 404 720 1 720 741 1 741 404 1 144 720 1
		 711 41 1 711 725 1 725 41 1 725 751 1 751 750 1 750 725 1 725 726 1 448 242 1 734 242 1
		 144 749 1 749 720 1 390 750 1 750 682 1 682 390 1 91 750 1 806 754 1 754 358 1 754 192 1
		 771 39 1 39 758 1 758 771 1 771 371 1 758 755 1 759 758 1 758 754 1 754 755 1 357 764 1
		 764 802 1 802 357 1 680 764 1 801 364 1 364 770 1 770 801 1 801 32 1 398 778 1 778 738 1
		 738 398 1 748 316 1 790 748 1 683 685 1 685 684 1 684 683 1 682 685 1 690 684 1 685 690 1
		 685 691 1 691 690 1 686 688 1 688 689 1 689 686 1 687 688 1 730 688 1 688 729 1 729 730 1
		 730 689 1 690 693 1 693 692 1 692 690 1 691 693 1 692 747 1 748 692 1 693 747 1 696 695 1
		 694 696 1 694 697 1 697 696 1 696 699 1 699 698 1 698 696 1 697 699 1 698 701 1 701 700 1
		 700 698 1 699 701 1 700 702 1 702 703 1 703 700 1 701 702 1 705 711 1 711 710 1 710 705 1
		 705 704 1 704 711 1 707 704 1 705 707 1 707 706 1 706 704 1 708 707 1 707 709 1 709 708 1
		 708 706 1 771 709 1 709 770 1 771 708 1 713 714 1 714 715 1 715 713 1 713 712 1 712 714 1
		 739 713 1 713 740 1 740 739 1 739 712 1 715 722 1 722 749 1 749 715 1 714 722 1 716 718 1
		 718 719 1 719 716 1 719 717 1 717 716 1 735 716 1 717 735 1 717 736 1 736 735 1 718 741 1
		 741 719 1 718 742 1 724 720 1 720 721 1 721 724 1 721 723 1 723 724 1;
	setAttr ".ed[2158:2323]" 744 724 1 723 744 1 723 743 1 743 744 1 728 726 1 725 728 1
		 728 727 1 727 726 1 727 763 1 763 762 1 762 727 1 728 763 1 731 730 1 729 731 1 731 732 1
		 732 730 1 733 731 1 731 734 1 734 733 1 733 732 1 735 737 1 737 738 1 738 735 1 736 737 1
		 751 740 1 740 750 1 751 739 1 746 744 1 743 746 1 743 745 1 745 746 1 752 746 1 745 752 1
		 745 753 1 753 752 1 756 755 1 754 756 1 754 757 1 757 756 1 756 769 1 769 768 1 768 756 1
		 757 769 1 759 761 1 761 758 1 759 760 1 760 761 1 761 762 1 763 761 1 760 762 1 764 766 1
		 766 767 1 767 764 1 765 766 1 768 767 1 766 768 1 769 767 1 772 774 1 774 775 1 775 772 1
		 775 773 1 773 772 1 776 772 1 773 776 1 773 777 1 777 776 1 774 780 1 780 775 1 774 781 1
		 778 776 1 777 778 1 778 779 1 779 776 1 785 783 1 782 785 1 785 784 1 784 783 1 786 784 1
		 785 786 1 785 787 1 787 786 1 786 789 1 789 788 1 788 786 1 787 789 1 790 788 1 789 790 1
		 791 788 1 799 793 1 793 792 1 792 799 1 799 798 1 798 793 1 795 792 1 793 795 1 795 794 1
		 794 792 1 796 795 1 795 797 1 797 796 1 796 794 1 801 797 1 797 800 1 801 796 1 802 804 1
		 804 803 1 802 805 1 805 804 1 811 804 1 805 811 1 811 810 1 810 804 1 808 806 1 806 807 1
		 807 808 1 808 809 1 809 806 1 809 810 1 811 809 1 808 810 1 25 797 1 795 25 1 795 6 1
		 793 6 1 793 26 1 77 784 1 786 77 1 786 58 1 788 58 1 788 78 1 774 110 1 129 774 1
		 772 110 1 772 130 1 776 130 1 734 244 1 731 244 1 732 233 1 222 732 1 222 730 1 687 243 1
		 243 688 1 791 78 1 779 130 1 803 697 1 804 697 1 136 698 1 700 136 1 700 172 1 171 696 1
		 698 171 1 807 701 1 701 808 1 699 810 1 808 699 1 810 697 1 703 172 1 794 707 1 705 794 1
		 705 792 1 709 794 1 796 709 1 798 26 1 728 706 1 706 763 1 728 704 1;
	setAttr ".ed[2324:2489]" 710 792 1 57 784 1 691 713 1 715 691 1 715 693 1 129 781 1
		 425 714 1 712 425 1 426 714 1 741 724 1 724 719 1 432 745 1 743 432 1 433 745 1 768 434 1
		 435 768 1 435 756 1 762 438 1 439 762 1 439 727 1 428 743 1 723 428 1 704 725 1 427 723 1
		 238 729 1 688 238 1 731 238 1 222 689 1 232 689 1 232 686 1 226 732 1 740 691 1 685 740 1
		 437 739 1 440 739 1 724 717 1 744 717 1 440 712 1 745 259 1 744 736 1 746 736 1 749 693 1
		 750 685 1 431 759 1 431 760 1 752 736 1 442 765 1 442 766 1 809 757 1 754 809 1 436 727 1
		 429 714 1 438 760 1 434 766 1 758 708 1 761 708 1 435 755 1 761 706 1 764 805 1 767 805 1
		 811 769 1 757 811 1 769 805 1 770 796 1 695 171 1 25 800 1 718 773 1 775 718 1 716 773 1
		 716 777 1 735 777 1 777 738 1 775 742 1 684 785 1 782 684 1 787 690 1 692 787 1 692 789 1
		 684 787 1 692 790 1 749 721 1 725 91 1 758 192 1 818 839 1 839 840 1 840 818 1 818 817 1
		 817 839 1 817 819 1 819 820 1 820 817 1 818 819 1 822 820 1 819 822 1 822 821 1 821 820 1
		 833 821 1 822 833 1 822 834 1 834 833 1 825 824 1 824 823 1 823 825 1 825 826 1 826 824 1
		 837 823 1 824 837 1 824 838 1 838 837 1 828 825 1 825 827 1 827 828 1 828 826 1 832 828 1
		 827 832 1 827 831 1 831 832 1 834 829 1 829 833 1 834 830 1 830 829 1 831 829 1 830 831 1
		 830 832 1 835 837 1 838 835 1 838 836 1 836 835 1 835 840 1 839 835 1 836 840 1 820 627 1
		 258 820 1 258 817 1 628 820 1 821 628 1 538 823 1 823 629 1 538 825 1 630 825 1 630 827 1
		 829 548 1 633 829 1 831 548 1 833 633 1 547 833 1 546 835 1 835 631 1 546 837 1 631 839 1
		 839 632 1 839 258 1 629 837 1 831 630 1 547 821 1 812 822 1 819 812 1 826 816 1 816 824 1
		 814 838 1 838 815 1 815 814 1 814 836 1 813 836 1 814 813 1 813 840 1;
	setAttr ".ed[2490:2516]" 840 812 1 812 818 1 815 824 1 816 815 1 822 813 1 813 834 1
		 812 813 1 834 814 1 814 830 1 830 815 1 815 832 1 828 815 1 816 828 1 738 156 1 779 126 1
		 752 146 1 710 50 1 798 22 1 807 168 1 703 186 1 733 213 1 610 511 1 610 513 1 508 606 1
		 606 510 1 510 609 1 510 607 1;
	setAttr -s 841 ".n";
	setAttr ".n[0:165]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[166:331]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[332:497]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[498:663]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[664:829]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[830:840]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 1678 -ch 5034 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 622 563 585
		f 3 -1 3 4
		mu 0 3 563 622 197
		f 3 5 6 7
		mu 0 3 197 352 626
		f 3 -8 8 -5
		mu 0 3 197 626 563
		f 3 9 10 11
		mu 0 3 235 219 355
		f 3 12 13 -12
		mu 0 3 355 116 235
		f 3 14 15 16
		mu 0 3 715 714 867
		f 3 -17 17 18
		mu 0 3 715 867 791
		f 3 19 20 21
		mu 0 3 526 184 213
		f 3 -20 22 23
		mu 0 3 184 526 309
		f 3 -24 24 25
		mu 0 3 184 309 235
		f 3 26 -10 -25
		mu 0 3 309 219 235
		f 3 27 28 29
		mu 0 3 259 167 264
		f 3 -28 30 31
		mu 0 3 167 259 143
		f 3 32 -31 33
		mu 0 3 627 143 259
		f 3 -33 34 35
		mu 0 3 143 627 201
		f 3 -22 36 37
		mu 0 3 526 213 390
		f 3 -37 38 39
		mu 0 3 390 213 670
		f 3 40 41 42
		mu 0 3 240 406 660
		f 3 43 44 -43
		mu 0 3 660 381 240
		f 3 45 46 47
		mu 0 3 660 615 255
		f 3 -48 48 -44
		mu 0 3 660 255 381
		f 3 49 -46 50
		mu 0 3 233 615 660
		f 3 -50 51 52
		mu 0 3 615 233 131
		f 3 53 -51 54
		mu 0 3 160 233 660
		f 3 -55 -42 55
		mu 0 3 160 660 406
		f 3 56 57 58
		mu 0 3 405 151 446
		f 3 59 60 -59
		mu 0 3 446 220 405
		f 3 61 -60 62
		mu 0 3 560 220 446
		f 3 -62 -41 63
		mu 0 3 220 560 279
		f 3 64 65 66
		mu 0 3 446 222 260
		f 3 -67 -56 -63
		mu 0 3 446 260 560
		f 3 67 68 -65
		mu 0 3 446 379 222
		f 3 -68 -58 69
		mu 0 3 379 446 151
		f 3 70 71 72
		mu 0 3 233 53 760
		f 3 -71 -54 73
		mu 0 3 53 233 160
		f 3 74 -52 -73
		mu 0 3 760 131 233
		f 3 75 76 77
		mu 0 3 410 63 139
		f 3 -76 78 79
		mu 0 3 63 410 341
		f 3 -80 80 81
		mu 0 3 63 341 585
		f 3 82 -3 -81
		mu 0 3 341 622 585
		f 3 83 84 -7
		mu 0 3 352 440 626
		f 3 85 86 -85
		mu 0 3 440 549 626
		f 3 87 -86 88
		mu 0 3 607 549 440
		f 3 -88 89 90
		mu 0 3 549 607 16
		f 3 91 -64 92
		mu 0 3 453 220 279
		f 3 -92 93 94
		mu 0 3 220 453 135
		f 3 95 96 -61
		mu 0 3 220 167 405
		f 3 -96 -95 97
		mu 0 3 167 220 135
		f 3 -32 98 -97
		mu 0 3 167 143 405
		f 3 99 -57 -99
		mu 0 3 143 151 405
		f 3 100 -36 101
		mu 0 3 379 143 201
		f 3 -101 -70 -100
		mu 0 3 143 379 151
		f 3 102 103 104
		mu 0 3 556 627 444
		f 3 -103 105 -35
		mu 0 3 627 556 201
		f 3 106 107 108
		mu 0 3 556 367 400
		f 3 -107 -105 109
		mu 0 3 367 556 444
		f 3 110 -106 111
		mu 0 3 222 201 556
		f 3 -111 -69 -102
		mu 0 3 201 222 379
		f 3 112 -109 -74
		mu 0 3 260 556 400
		f 3 -113 -66 -112
		mu 0 3 556 260 222
		f 3 113 -94 114
		mu 0 3 436 135 453
		f 3 -114 115 116
		mu 0 3 135 436 291
		f 3 117 -98 -117
		mu 0 3 291 167 135
		f 3 -118 118 -29
		mu 0 3 167 291 264
		f 3 119 -49 120
		mu 0 3 834 381 255
		f 3 121 -120 122
		mu 0 3 755 381 834
		f 3 -122 -93 -45
		mu 0 3 381 755 240
		f 3 123 124 125
		mu 0 3 534 634 553
		f 3 126 127 -125
		mu 0 3 634 635 553
		f 3 128 129 130
		mu 0 3 200 634 340
		f 3 -129 131 -127
		mu 0 3 634 200 635
		f 3 132 133 134
		mu 0 3 323 430 250
		f 3 -133 135 136
		mu 0 3 430 323 223
		f 3 137 -137 138
		mu 0 3 534 430 223
		f 3 -138 -126 139
		mu 0 3 430 534 553
		f 3 140 141 142
		mu 0 3 263 162 156
		f 3 -143 143 144
		mu 0 3 263 156 478
		f 3 -144 145 146
		mu 0 3 478 156 250
		f 3 147 -135 -146
		mu 0 3 156 323 250
		f 3 148 149 -83
		mu 0 3 341 627 622
		f 3 -149 150 -104
		mu 0 3 627 341 444
		f 3 151 -151 -79
		mu 0 3 410 444 341
		f 3 -152 152 -110
		mu 0 3 444 410 367
		f 3 -30 153 154
		mu 0 3 259 264 352
		f 3 -155 -6 155
		mu 0 3 259 352 197
		f 3 156 -150 -34
		mu 0 3 259 622 627
		f 3 -157 -156 -4
		mu 0 3 622 259 197
		f 3 157 158 159
		mu 0 3 661 637 101
		f 3 -158 160 161
		mu 0 3 637 661 241
		f 3 162 163 164
		mu 0 3 148 285 246
		f 3 -163 165 166
		mu 0 3 285 148 637
		f 3 167 168 169
		mu 0 3 59 590 639
		f 3 170 171 -169
		mu 0 3 590 455 639
		f 3 172 -171 173
		mu 0 3 661 455 590
		f 3 -173 -160 174
		mu 0 3 455 661 101
		f 3 175 176 177
		mu 0 3 329 155 252
		f 3 -176 178 179
		mu 0 3 155 329 603
		f 3 180 181 182
		mu 0 3 543 329 351
		f 3 -181 183 -179
		mu 0 3 329 543 603
		f 3 -170 184 185
		mu 0 3 59 639 66
		f 3 -185 186 187
		mu 0 3 66 639 306
		f 3 188 189 190
		mu 0 3 91 317 377
		f 3 191 192 -191
		mu 0 3 377 550 91
		f 3 193 194 195
		mu 0 3 377 44 416
		f 3 -196 196 -192
		mu 0 3 377 416 550
		f 3 197 -194 198
		mu 0 3 242 44 377
		f 3 -198 199 200
		mu 0 3 44 242 32
		f 3 201 -199 202
		mu 0 3 6 242 377
		f 3 -203 -190 203
		mu 0 3 6 377 317
		f 3 204 205 206
		mu 0 3 588 661 477
		f 3 -205 207 -161
		mu 0 3 661 588 241
		f 3 208 209 210
		mu 0 3 87 399 36
		f 3 211 212 -211
		mu 0 3 36 647 87
		f 3 -189 213 214
		mu 0 3 296 502 36
		f 3 -212 -214 215
		mu 0 3 647 36 502
		f 3 216 217 218
		mu 0 3 537 437 36
		f 3 -218 -204 -215
		mu 0 3 36 437 296
		f 3 219 -210 220
		mu 0 3 432 36 399
		f 3 -220 221 -219
		mu 0 3 36 432 537
		f 3 222 223 224
		mu 0 3 242 575 747
		f 3 -223 -202 225
		mu 0 3 575 242 6
		f 3 226 -200 -225
		mu 0 3 747 32 242
		f 3 227 228 -116
		mu 0 3 436 607 291
		f 3 -89 229 -229
		mu 0 3 607 440 291
		f 3 230 -154 -119
		mu 0 3 291 352 264
		f 3 -231 -230 -84
		mu 0 3 352 291 440
		f 3 231 232 233
		mu 0 3 756 834 798
		f 3 -232 -115 -123
		mu 0 3 834 756 755
		f 3 234 -216 235
		mu 0 3 646 647 502
		f 3 -235 236 237
		mu 0 3 647 646 625
		f 3 -238 238 -213
		mu 0 3 647 625 87
		f 3 239 240 -239
		mu 0 3 625 155 87
		f 3 -180 241 -241
		mu 0 3 155 603 87
		f 3 242 -209 -242
		mu 0 3 603 399 87
		f 3 243 -184 244
		mu 0 3 432 603 543
		f 3 -244 -221 -243
		mu 0 3 603 432 399
		f 3 245 246 247
		mu 0 3 385 351 392
		f 3 -246 248 -183
		mu 0 3 351 385 543
		f 3 249 250 251
		mu 0 3 385 505 651
		f 3 -250 -248 252
		mu 0 3 505 385 392
		f 3 253 -222 254
		mu 0 3 385 537 432
		f 3 -255 -245 -249
		mu 0 3 385 432 543
		f 3 255 -252 -226
		mu 0 3 437 385 651
		f 3 -256 -217 -254
		mu 0 3 385 437 537
		f 3 256 -237 257
		mu 0 3 225 625 646
		f 3 -257 258 259
		mu 0 3 625 225 466
		f 3 260 -240 -260
		mu 0 3 466 155 625
		f 3 -261 261 -177
		mu 0 3 155 466 252
		f 3 262 -197 263
		mu 0 3 814 550 416
		f 3 264 -263 265
		mu 0 3 751 550 814
		f 3 -265 -236 -193
		mu 0 3 550 751 91
		f 3 266 267 268
		mu 0 3 113 171 231
		f 3 269 270 -268
		mu 0 3 171 42 231
		f 3 271 272 273
		mu 0 3 469 171 666
		f 3 -272 274 -270
		mu 0 3 171 469 42
		f 3 275 276 277
		mu 0 3 510 345 577
		f 3 -276 278 279
		mu 0 3 345 510 449
		f 3 280 -280 281
		mu 0 3 113 345 449
		f 3 -281 -269 282
		mu 0 3 345 113 231
		f 3 283 284 285
		mu 0 3 547 525 500
		f 3 -286 286 287
		mu 0 3 547 500 447
		f 3 -287 288 289
		mu 0 3 447 500 577
		f 3 290 -278 -289
		mu 0 3 500 510 577
		f 3 291 292 293
		mu 0 3 426 208 395
		f 3 -294 294 295
		mu 0 3 426 395 582
		f 3 296 -292 297
		mu 0 3 109 208 426
		f 3 -297 298 299
		mu 0 3 208 109 719
		f 3 300 301 302
		mu 0 3 516 46 356
		f 3 303 304 -302
		mu 0 3 46 574 356
		f 3 305 -304 306
		mu 0 3 582 574 46
		f 3 -306 -295 307
		mu 0 3 574 582 395
		f 3 308 309 310
		mu 0 3 512 27 97
		f 3 -309 311 312
		mu 0 3 27 512 274
		f 3 313 -312 314
		mu 0 3 524 274 512
		f 3 -314 315 316
		mu 0 3 274 524 70
		f 3 -303 317 318
		mu 0 3 516 356 364
		f 3 -318 319 320
		mu 0 3 364 356 148
		f 3 321 322 323
		mu 0 3 386 270 161
		f 3 -324 324 325
		mu 0 3 386 161 232
		f 3 326 327 328
		mu 0 3 232 35 150
		f 3 -327 -325 329
		mu 0 3 35 232 161
		f 3 330 331 332
		mu 0 3 15 161 650
		f 3 -331 333 -330
		mu 0 3 161 15 35
		f 3 334 -323 335
		mu 0 3 179 161 270
		f 3 -335 336 -332
		mu 0 3 161 179 650
		f 3 337 338 339
		mu 0 3 592 204 169
		f 3 -340 340 341
		mu 0 3 592 169 96
		f 3 -322 342 343
		mu 0 3 57 564 592
		f 3 -338 -343 344
		mu 0 3 204 592 564
		f 3 345 346 347
		mu 0 3 592 448 362
		f 3 -348 -336 -344
		mu 0 3 592 362 57
		f 3 348 -342 349
		mu 0 3 147 592 96
		f 3 -346 -349 350
		mu 0 3 448 592 147
		f 3 351 352 353
		mu 0 3 650 129 743
		f 3 -352 -337 354
		mu 0 3 129 650 179
		f 3 355 -333 -354
		mu 0 3 743 15 650
		f 3 356 357 358
		mu 0 3 665 100 602
		f 3 -357 359 360
		mu 0 3 100 665 120
		f 3 361 362 363
		mu 0 3 100 591 638
		f 3 -362 -361 364
		mu 0 3 591 100 120
		f 3 365 366 367
		mu 0 3 564 527 82
		f 3 368 -345 -368
		mu 0 3 82 204 564
		f 3 369 370 371
		mu 0 3 27 169 82
		f 3 -369 -371 -339
		mu 0 3 204 82 169
		f 3 -313 372 -370
		mu 0 3 27 274 169
		f 3 373 -341 -373
		mu 0 3 274 96 169
		f 3 -317 374 375
		mu 0 3 274 70 147
		f 3 -376 -350 -374
		mu 0 3 274 147 96
		f 3 376 377 378
		mu 0 3 659 524 471
		f 3 -377 379 -316
		mu 0 3 524 659 70
		f 3 380 381 382
		mu 0 3 37 471 497
		f 3 -381 383 -379
		mu 0 3 471 37 659
		f 3 -351 384 385
		mu 0 3 448 147 659
		f 3 -385 -375 -380
		mu 0 3 659 147 70
		f 3 386 -384 -355
		mu 0 3 362 659 37
		f 3 -387 -347 -386
		mu 0 3 659 362 448
		f 3 387 388 389
		mu 0 3 164 527 674
		f 3 -388 390 -367
		mu 0 3 527 164 82
		f 3 391 -372 -391
		mu 0 3 164 27 82
		f 3 -392 392 -310
		mu 0 3 27 164 97
		f 3 393 -329 394
		mu 0 3 816 232 150
		f 3 395 -394 396
		mu 0 3 736 232 816
		f 3 -396 -366 -326
		mu 0 3 232 736 386
		f 3 397 398 399
		mu 0 3 433 375 488
		f 3 -398 400 401
		mu 0 3 375 433 262
		f 3 402 403 -400
		mu 0 3 488 128 433
		f 3 -403 404 405
		mu 0 3 128 488 373
		f 3 406 407 408
		mu 0 3 419 540 40
		f 3 -407 409 410
		mu 0 3 540 419 276
		f 3 411 -402 412
		mu 0 3 40 375 262
		f 3 -412 -408 413
		mu 0 3 375 40 540
		f 3 414 415 416
		mu 0 3 325 216 48
		f 3 -415 417 418
		mu 0 3 216 325 633
		f 3 -418 419 420
		mu 0 3 633 325 419
		f 3 421 -410 -420
		mu 0 3 325 276 419
		f 3 422 423 424
		mu 0 3 593 591 257
		f 3 -423 425 -363
		mu 0 3 591 593 638
		f 3 426 427 428
		mu 0 3 287 257 350
		f 3 -427 429 -425
		mu 0 3 257 287 593
		f 3 430 431 432
		mu 0 3 467 350 451
		f 3 -431 433 -429
		mu 0 3 350 467 287
		f 3 434 435 436
		mu 0 3 215 451 146
		f 3 -435 437 -433
		mu 0 3 451 215 467
		f 3 438 439 440
		mu 0 3 284 418 125
		f 3 441 442 -440
		mu 0 3 418 600 125
		f 3 443 444 445
		mu 0 3 418 558 372
		f 3 -446 446 -442
		mu 0 3 418 372 600
		f 3 447 -444 448
		mu 0 3 565 558 418
		f 3 -448 449 450
		mu 0 3 558 565 520
		f 3 451 452 453
		mu 0 3 565 284 163
		f 3 -452 -449 -439
		mu 0 3 284 565 418
		f 3 454 455 456
		mu 0 3 305 141 422
		f 3 457 458 -457
		mu 0 3 422 55 305
		f 3 -441 459 460
		mu 0 3 642 498 422
		f 3 -460 461 -458
		mu 0 3 422 498 55
		f 3 462 463 464
		mu 0 3 126 422 332
		f 3 -463 -453 -461
		mu 0 3 422 126 642
		f 3 465 466 -464
		mu 0 3 422 244 332
		f 3 -466 -456 467
		mu 0 3 244 422 141
		f 3 468 469 470
		mu 0 3 565 159 689
		f 3 -469 -454 471
		mu 0 3 159 565 163
		f 3 472 -450 -471
		mu 0 3 689 520 565
		f 3 473 474 475
		mu 0 3 767 898 801
		f 3 476 -462 477
		mu 0 3 412 55 498
		f 3 -477 478 479
		mu 0 3 55 412 460
		f 3 480 -480 481
		mu 0 3 289 55 460
		f 3 -481 482 -459
		mu 0 3 55 289 305
		f 3 483 484 485
		mu 0 3 234 409 638
		f 3 486 -364 -485
		mu 0 3 409 100 638
		f 3 487 488 489
		mu 0 3 602 409 54
		f 3 -488 -358 -487
		mu 0 3 409 602 100
		f 3 -455 490 491
		mu 0 3 141 305 601
		f 3 492 -491 -483
		mu 0 3 289 601 305
		f 3 493 -492 494
		mu 0 3 628 141 601
		f 3 -494 495 -468
		mu 0 3 141 628 244
		f 3 496 -430 497
		mu 0 3 494 593 287
		f 3 -497 498 499
		mu 0 3 593 494 112
		f 3 -500 500 -426
		mu 0 3 593 112 638
		f 3 501 -486 -501
		mu 0 3 112 234 638
		f 3 502 503 -467
		mu 0 3 244 312 332
		f 3 -503 -496 504
		mu 0 3 312 244 628
		f 3 505 506 -472
		mu 0 3 126 312 265
		f 3 -506 -465 -504
		mu 0 3 312 126 332
		f 3 507 508 509
		mu 0 3 215 286 458
		f 3 -510 510 -438
		mu 0 3 215 458 467
		f 3 511 -498 -434
		mu 0 3 467 494 287
		f 3 -512 -511 512
		mu 0 3 494 467 458
		f 3 513 -447 514
		mu 0 3 829 600 372
		f 3 515 -514 516
		mu 0 3 691 600 829
		f 3 -516 -478 -443
		mu 0 3 600 691 125
		f 3 517 518 519
		mu 0 3 769 773 772
		f 3 520 521 522
		mu 0 3 29 13 621
		f 3 -523 523 524
		mu 0 3 29 621 509
		f 3 525 526 527
		mu 0 3 723 722 879
		f 3 -528 528 529
		mu 0 3 723 879 880
		f 3 530 531 532
		mu 0 3 612 428 349
		f 3 -531 533 534
		mu 0 3 428 612 474
		f 3 -535 535 536
		mu 0 3 428 474 29
		f 3 537 -521 -536
		mu 0 3 474 13 29
		f 3 538 539 540
		mu 0 3 645 519 86
		f 3 541 542 -541
		mu 0 3 86 473 645
		f 3 -533 543 544
		mu 0 3 612 349 86
		f 3 -542 -544 545
		mu 0 3 473 86 349
		f 3 546 547 548
		mu 0 3 788 698 863
		f 3 -547 549 550
		mu 0 3 698 788 699
		f 3 551 552 -551
		mu 0 3 699 538 698
		f 3 -552 553 554
		mu 0 3 538 699 456
		f 3 555 556 -555
		mu 0 3 456 253 538
		f 3 -556 557 558
		mu 0 3 253 456 439
		f 3 -559 559 560
		mu 0 3 253 439 30
		f 3 -561 561 562
		mu 0 3 253 30 210
		f 3 563 564 -562
		mu 0 3 490 414 33
		f 3 -565 565 566
		mu 0 3 33 414 69
		f 3 567 568 -566
		mu 0 3 414 224 69
		f 3 -568 569 570
		mu 0 3 224 414 360
		f 3 571 572 -571
		mu 0 3 360 404 224
		f 3 -572 573 574
		mu 0 3 404 360 683
		f 3 575 576 577
		mu 0 3 267 429 533
		f 3 578 579 -578
		mu 0 3 533 431 267
		f 3 580 581 582
		mu 0 3 192 533 596
		f 3 -581 583 -579
		mu 0 3 533 192 431
		f 3 584 -582 585
		mu 0 3 493 596 533
		f 3 -585 586 587
		mu 0 3 596 493 214
		f 3 588 -577 589
		mu 0 3 476 533 429
		f 3 -589 590 -586
		mu 0 3 533 476 493
		f 3 591 592 593
		mu 0 3 535 170 334
		f 3 -594 594 595
		mu 0 3 535 334 249
		f 3 596 -576 597
		mu 0 3 170 429 267
		f 3 -597 -592 598
		mu 0 3 429 170 535
		f 3 599 600 601
		mu 0 3 476 535 228
		f 3 -600 -590 -599
		mu 0 3 535 476 429
		f 3 602 603 -596
		mu 0 3 249 322 535
		f 3 -601 -604 604
		mu 0 3 228 535 322
		f 3 605 -591 606
		mu 0 3 495 83 387
		f 3 -606 607 608
		mu 0 3 83 495 657
		f 3 609 -587 -609
		mu 0 3 657 462 83
		f 3 610 611 612
		mu 0 3 862 657 682
		f 3 613 -610 -611
		mu 0 3 862 462 657
		f 3 614 -608 615
		mu 0 3 404 657 495
		f 3 -615 616 -612
		mu 0 3 657 404 682
		f 3 617 618 619
		mu 0 3 192 861 809
		f 3 -618 -583 620
		mu 0 3 861 192 596
		f 3 621 -621 -588
		mu 0 3 214 861 596
		f 3 -622 -614 622
		mu 0 3 861 214 342
		f 3 623 624 -598
		mu 0 3 267 236 170
		f 3 -624 625 626
		mu 0 3 236 267 672
		f 3 627 628 -593
		mu 0 3 170 205 334
		f 3 -628 -625 629
		mu 0 3 205 170 236
		f 3 630 -630 631
		mu 0 3 253 205 236
		f 3 632 -557 -632
		mu 0 3 236 538 253
		f 3 633 634 -627
		mu 0 3 672 698 236
		f 3 -635 -553 -633
		mu 0 3 236 698 538
		f 3 -629 635 636
		mu 0 3 334 205 961
		f 3 637 -595 -637
		mu 0 3 961 962 334
		f 3 -638 638 -603
		mu 0 3 177 190 166
		f 3 639 640 -639
		mu 0 3 190 185 166
		f 3 -567 641 642
		mu 0 3 33 69 190
		f 3 -642 643 -640
		mu 0 3 190 69 185
		f 3 644 -643 -636
		mu 0 3 205 210 961
		f 3 -645 -631 -563
		mu 0 3 210 205 253
		f 3 -641 645 646
		mu 0 3 166 185 499
		f 3 647 -605 -647
		mu 0 3 499 188 166
		f 3 -607 648 649
		mu 0 3 495 387 499
		f 3 -649 -602 -648
		mu 0 3 499 387 188
		f 3 650 -650 651
		mu 0 3 224 495 499
		f 3 -651 -573 -616
		mu 0 3 495 224 404
		f 3 652 -569 -652
		mu 0 3 499 69 224
		f 3 -653 -646 -644
		mu 0 3 69 499 185
		f 3 653 -584 654
		mu 0 3 359 431 192
		f 3 655 -626 -580
		mu 0 3 431 672 267
		f 3 -656 -654 656
		mu 0 3 672 431 359
		f 3 657 -548 -634
		mu 0 3 672 863 698
		f 3 -658 -657 658
		mu 0 3 863 672 359
		f 3 -620 659 -655
		mu 0 3 192 809 359
		f 3 -659 -660 660
		mu 0 3 863 359 809
		f 3 661 662 663
		mu 0 3 631 811 812
		f 3 664 665 -662
		mu 0 3 631 326 811
		f 3 666 667 668
		mu 0 3 290 542 530
		f 3 -667 669 670
		mu 0 3 542 290 282
		f 3 671 672 673
		mu 0 3 655 589 509
		f 3 674 -673 675
		mu 0 3 670 509 589
		f 3 676 677 678
		mu 0 3 23 480 202
		f 3 679 680 -678
		mu 0 3 480 539 202
		f 3 681 682 683
		mu 0 3 246 417 261
		f 3 -682 -164 684
		mu 0 3 417 246 285
		f 3 685 686 687
		mu 0 3 541 277 258
		f 3 -686 688 689
		mu 0 3 277 541 132
		f 3 690 691 692
		mu 0 3 154 883 725
		f 3 -688 693 -693
		mu 0 3 725 344 154
		f 3 694 695 696
		mu 0 3 88 668 546
		f 3 -695 697 698
		mu 0 3 668 88 485
		f 3 699 700 701
		mu 0 3 475 629 268
		f 3 -697 702 -701
		mu 0 3 629 58 268
		f 3 703 -696 704
		mu 0 3 579 546 668
		f 3 705 706 -705
		mu 0 3 668 675 579
		f 3 707 -703 708
		mu 0 3 136 268 58
		f 3 -704 709 -709
		mu 0 3 58 19 136
		f 3 710 711 712
		mu 0 3 347 333 721
		f 3 -711 713 714
		mu 0 3 333 347 321
		f 3 -714 715 716
		mu 0 3 321 347 21
		f 3 717 718 -716
		mu 0 3 347 211 21
		f 3 -718 719 720
		mu 0 3 211 347 720
		f 3 721 722 -721
		mu 0 3 720 266 211
		f 3 723 724 725
		mu 0 3 28 108 288
		f 3 -724 726 727
		mu 0 3 108 28 56
		f 3 728 729 730
		mu 0 3 85 158 609
		f 3 731 732 -731
		mu 0 3 609 175 85
		f 3 733 734 735
		mu 0 3 238 450 199
		f 3 -734 736 737
		mu 0 3 450 238 479
		f 3 738 739 740
		mu 0 3 145 368 311
		f 3 -739 741 742
		mu 0 3 368 145 144
		f 3 743 744 745
		mu 0 3 111 198 158
		f 3 -729 746 -746
		mu 0 3 158 85 111
		f 3 747 748 749
		mu 0 3 569 382 606
		f 3 750 751 -750
		mu 0 3 606 599 569
		f 3 752 753 754
		mu 0 3 583 89 198
		f 3 -755 -744 755
		mu 0 3 583 198 111
		f 3 756 757 758
		mu 0 3 566 288 187
		f 3 -757 759 -726
		mu 0 3 288 566 28
		f 3 760 761 -732
		mu 0 3 609 199 175
		f 3 -761 762 -736
		mu 0 3 199 609 238
		f 3 763 764 765
		mu 0 3 484 641 382
		f 3 -748 766 -766
		mu 0 3 382 569 484
		f 3 767 768 769
		mu 0 3 275 310 613
		f 3 -768 770 771
		mu 0 3 310 275 303
		f 3 772 773 -728
		mu 0 3 56 583 108
		f 3 -773 774 -753
		mu 0 3 583 56 89
		f 3 775 776 -738
		mu 0 3 479 484 450
		f 3 -776 777 -764
		mu 0 3 484 479 641
		f 3 -772 778 779
		mu 0 3 310 303 566
		f 3 -759 780 -780
		mu 0 3 566 187 310
		f 3 781 782 783
		mu 0 3 511 311 427
		f 3 -782 784 -741
		mu 0 3 311 511 145
		f 3 -751 785 786
		mu 0 3 599 606 545
		f 3 787 788 -787
		mu 0 3 545 363 599
		f 3 789 790 -743
		mu 0 3 144 613 368
		f 3 -790 791 -770
		mu 0 3 613 144 275
		f 3 792 793 -690
		mu 0 3 132 427 277
		f 3 -793 794 -784
		mu 0 3 427 132 511
		f 3 795 796 -689
		mu 0 3 541 256 132
		f 3 -796 797 798
		mu 0 3 256 541 295
		f 3 799 -727 800
		mu 0 3 640 56 28
		f 3 -800 801 802
		mu 0 3 56 640 348
		f 3 803 804 805
		mu 0 3 653 158 597
		f 3 -804 806 -730
		mu 0 3 158 653 609
		f 3 807 808 809
		mu 0 3 611 238 38
		f 3 -808 810 -737
		mu 0 3 238 611 479
		f 3 811 -742 812
		mu 0 3 396 144 145
		f 3 -812 813 814
		mu 0 3 144 396 671
		f 3 815 -745 816
		mu 0 3 572 158 198
		f 3 -816 817 -805
		mu 0 3 158 572 597
		f 3 818 819 820
		mu 0 3 328 382 578
		f 3 -819 821 -749
		mu 0 3 382 328 606
		f 3 822 -754 823
		mu 0 3 62 198 89
		f 3 -823 824 -817
		mu 0 3 198 62 572
		f 3 825 -760 826
		mu 0 3 80 28 566
		f 3 -826 827 -801
		mu 0 3 28 80 640
		f 3 828 -763 -807
		mu 0 3 653 238 609
		f 3 -829 829 -809
		mu 0 3 238 653 38
		f 3 830 -765 831
		mu 0 3 652 382 641
		f 3 -831 832 -820
		mu 0 3 382 652 578
		f 3 833 -771 834
		mu 0 3 127 303 275
		f 3 -834 835 836
		mu 0 3 303 127 271
		f 3 837 -775 -803
		mu 0 3 348 89 56
		f 3 -838 838 -824
		mu 0 3 89 348 62
		f 3 839 -778 -811
		mu 0 3 611 641 479
		f 3 -840 840 -832
		mu 0 3 641 611 652
		f 3 841 -779 -837
		mu 0 3 271 566 303
		f 3 -842 842 -827
		mu 0 3 566 271 80
		f 3 843 -785 844
		mu 0 3 121 145 511
		f 3 -844 845 -813
		mu 0 3 145 121 396
		f 3 846 -822 847
		mu 0 3 34 606 328
		f 3 -847 848 -786
		mu 0 3 606 34 545
		f 3 849 -815 850
		mu 0 3 127 144 671
		f 3 -850 -835 -792
		mu 0 3 144 127 275
		f 3 851 -795 -797
		mu 0 3 256 511 132
		f 3 -852 852 -845
		mu 0 3 511 256 121
		f 3 853 854 -715
		mu 0 3 321 34 333
		f 3 -854 855 -849
		mu 0 3 34 321 545
		f 3 -717 856 -856
		mu 0 3 321 21 545
		f 3 -857 857 -788
		mu 0 3 545 21 363
		f 3 -178 858 859
		mu 0 3 329 252 25
		f 3 -860 860 861
		mu 0 3 329 25 339
		f 3 862 863 -182
		mu 0 3 329 191 351
		f 3 -863 -862 864
		mu 0 3 191 329 339
		f 3 865 866 867
		mu 0 3 392 191 292
		f 3 -866 -247 -864
		mu 0 3 191 392 351
		f 3 868 -868 869
		mu 0 3 68 392 292
		f 3 -869 870 -253
		mu 0 3 392 68 505
		f 3 871 872 873
		mu 0 3 11 466 137
		f 3 -873 -259 874
		mu 0 3 137 466 225
		f 3 -859 875 876
		mu 0 3 25 252 11
		f 3 -872 -876 -262
		mu 0 3 466 11 252
		f 3 877 878 879
		mu 0 3 752 814 797
		f 3 -878 -258 -266
		mu 0 3 814 752 751
		f 3 880 881 882
		mu 0 3 552 106 11
		f 3 -877 -882 883
		mu 0 3 25 11 106
		f 3 884 -883 -874
		mu 0 3 137 552 11
		f 3 -885 885 886
		mu 0 3 552 137 389;
	setAttr ".fc[500:999]"
		f 3 -865 887 888
		mu 0 3 191 339 281
		f 3 889 890 -888
		mu 0 3 339 594 281
		f 3 -861 -884 891
		mu 0 3 339 25 106
		f 3 -892 892 -890
		mu 0 3 339 106 594
		f 3 893 894 895
		mu 0 3 68 506 679
		f 3 -894 -870 896
		mu 0 3 506 68 292
		f 3 897 -897 898
		mu 0 3 281 506 292
		f 3 -867 -889 -899
		mu 0 3 292 191 281
		f 3 899 900 901
		mu 0 3 746 911 796
		f 3 902 903 904
		mu 0 3 140 308 512
		f 3 -905 -311 905
		mu 0 3 140 512 97
		f 3 906 -904 907
		mu 0 3 71 512 308
		f 3 -907 908 -315
		mu 0 3 512 71 524
		f 3 909 910 911
		mu 0 3 471 71 52
		f 3 -910 -378 -909
		mu 0 3 71 471 524
		f 3 912 -912 913
		mu 0 3 195 471 52
		f 3 -913 914 -382
		mu 0 3 471 195 497
		f 3 915 916 917
		mu 0 3 98 674 2
		f 3 -916 918 -390
		mu 0 3 674 98 164
		f 3 -906 919 920
		mu 0 3 140 97 98
		f 3 -920 -393 -919
		mu 0 3 98 97 164
		f 3 921 922 923
		mu 0 3 737 816 795
		f 3 -922 -389 -397
		mu 0 3 816 737 736
		f 3 924 -921 925
		mu 0 3 472 140 98
		f 3 -925 926 927
		mu 0 3 140 472 3
		f 3 928 929 930
		mu 0 3 472 2 7
		f 3 -929 -926 -918
		mu 0 3 2 472 98
		f 3 -908 931 932
		mu 0 3 71 308 482
		f 3 933 934 -932
		mu 0 3 308 118 482
		f 3 -903 -928 935
		mu 0 3 308 140 3
		f 3 -936 936 -934
		mu 0 3 308 3 118
		f 3 937 938 939
		mu 0 3 195 302 47
		f 3 -938 -914 940
		mu 0 3 302 195 52
		f 3 -911 -933 941
		mu 0 3 52 71 482
		f 3 -942 942 -941
		mu 0 3 52 482 302
		f 3 943 -482 944
		mu 0 3 409 289 460
		f 3 -944 -484 945
		mu 0 3 289 409 234
		f 3 946 -479 947
		mu 0 3 54 460 412
		f 3 -947 -489 -945
		mu 0 3 460 54 409
		f 3 948 -499 949
		mu 0 3 628 112 494
		f 3 -949 -495 950
		mu 0 3 112 628 601
		f 3 951 -502 -951
		mu 0 3 601 234 112
		f 3 -952 -493 -946
		mu 0 3 234 601 289
		f 3 952 -509 953
		mu 0 3 265 458 286
		f 3 -953 -507 954
		mu 0 3 458 265 312
		f 3 955 -513 -955
		mu 0 3 312 494 458
		f 3 -956 -505 -950
		mu 0 3 494 312 628
		f 3 956 -360 957
		mu 0 3 122 120 665
		f 3 -957 958 959
		mu 0 3 120 122 81
		f 3 960 -365 961
		mu 0 3 487 591 120
		f 3 -962 -960 962
		mu 0 3 487 120 81
		f 3 963 964 965
		mu 0 3 801 818 688
		f 3 966 967 -966
		mu 0 3 688 768 801
		f 3 968 969 970
		mu 0 3 257 487 415
		f 3 -969 -424 -961
		mu 0 3 487 257 591
		f 3 971 972 973
		mu 0 3 350 415 0
		f 3 -972 -428 -971
		mu 0 3 415 350 257
		f 3 974 975 976
		mu 0 3 451 0 465
		f 3 -975 -432 -974
		mu 0 3 0 451 350
		f 3 -967 -436 977
		mu 0 3 230 146 451
		f 3 -978 -977 978
		mu 0 3 230 451 465
		f 3 979 -959 980
		mu 0 3 571 81 122
		f 3 -980 981 982
		mu 0 3 81 571 226
		f 3 983 984 985
		mu 0 3 487 226 581
		f 3 -984 -963 -983
		mu 0 3 226 487 81
		f 3 986 987 988
		mu 0 3 415 581 470
		f 3 -987 -970 -986
		mu 0 3 581 415 487
		f 3 989 990 991
		mu 0 3 0 470 595
		f 3 -990 -973 -989
		mu 0 3 470 0 415
		f 3 992 993 994
		mu 0 3 465 595 114
		f 3 -993 -976 -992
		mu 0 3 595 465 0
		f 3 995 -995 996
		mu 0 3 157 465 114
		f 3 -996 997 -979
		mu 0 3 465 157 230
		f 3 998 999 1000
		mu 0 3 581 468 492
		f 3 -999 -985 1001
		mu 0 3 468 581 226
		f 3 -518 1002 -982
		mu 0 3 571 206 226
		f 3 -1003 1003 -1002
		mu 0 3 226 206 468
		f 3 1004 1005 1006
		mu 0 3 595 391 676
		f 3 -1005 -991 1007
		mu 0 3 391 595 470
		f 3 -1008 1008 1009
		mu 0 3 391 470 492
		f 3 -988 -1001 -1009
		mu 0 3 470 581 492
		f 3 1010 1011 1012
		mu 0 3 157 61 357
		f 3 -1011 -997 1013
		mu 0 3 61 157 114
		f 3 -1014 1014 1015
		mu 0 3 61 114 676
		f 3 -994 -1007 -1015
		mu 0 3 114 595 676
		f 3 1016 1017 1018
		mu 0 3 829 780 690
		f 3 -948 -517 -1019
		mu 0 3 690 691 829
		f 3 1019 1020 -87
		mu 0 3 549 534 626
		f 3 -1020 1021 -124
		mu 0 3 534 549 634
		f 3 1022 -91 1023
		mu 0 3 340 549 16
		f 3 -1023 -130 -1022
		mu 0 3 549 340 634
		f 3 1024 -136 1025
		mu 0 3 585 223 323
		f 3 -1025 -2 1026
		mu 0 3 223 585 563
		f 3 1027 -1027 -9
		mu 0 3 626 223 563
		f 3 -1028 -1021 -139
		mu 0 3 223 626 534
		f 3 1028 1029 -77
		mu 0 3 63 162 139
		f 3 -1029 1030 -142
		mu 0 3 162 63 156
		f 3 1031 -148 -1031
		mu 0 3 63 323 156
		f 3 -1032 -82 -1026
		mu 0 3 323 63 585
		f 3 1032 1033 1034
		mu 0 3 695 782 696
		f 3 1035 1036 1037
		mu 0 3 799 781 758
		f 3 -1038 -1024 1038
		mu 0 3 799 758 759
		f 3 1039 -128 1040
		mu 0 3 443 553 635
		f 3 1041 1042 -1041
		mu 0 3 635 514 443
		f 3 1043 -1042 -132
		mu 0 3 200 514 635
		f 3 -1044 -1035 1044
		mu 0 3 514 200 133
		f 3 1045 1046 1047
		mu 0 3 250 79 438
		f 3 -1046 -134 1048
		mu 0 3 79 250 430
		f 3 1049 -1049 -140
		mu 0 3 553 79 430
		f 3 -1050 -1040 1050
		mu 0 3 79 553 443
		f 3 1051 1052 1053
		mu 0 3 263 203 620
		f 3 -1052 -145 1054
		mu 0 3 203 263 478
		f 3 -1055 1055 1056
		mu 0 3 203 478 438
		f 3 -147 -1048 -1056
		mu 0 3 478 250 438
		f 3 1057 1058 1059
		mu 0 3 732 783 733
		f 3 1060 1061 1062
		mu 0 3 747 748 796
		f 3 -1061 -224 -251
		mu 0 3 748 747 575
		f 3 1063 1064 1065
		mu 0 3 707 706 778
		f 3 -1064 1066 1067
		mu 0 3 706 707 709
		f 3 -274 1068 -1065
		mu 0 3 706 750 778
		f 3 1069 -271 1070
		mu 0 3 477 231 42
		f 3 1071 -207 -1071
		mu 0 3 42 588 477
		f 3 1072 -1072 -275
		mu 0 3 469 588 42
		f 3 -1073 -1068 1073
		mu 0 3 588 469 239
		f 3 1074 1075 1076
		mu 0 3 577 398 531
		f 3 -1075 -277 1077
		mu 0 3 398 577 345
		f 3 1078 -1078 -283
		mu 0 3 231 398 345
		f 3 -1079 -1070 1079
		mu 0 3 398 231 477
		f 3 1080 1081 1082
		mu 0 3 547 207 605
		f 3 -1081 -288 1083
		mu 0 3 207 547 447
		f 3 -1077 1084 -290
		mu 0 3 577 531 447
		f 3 -1084 -1085 1085
		mu 0 3 207 447 531
		f 3 1086 1087 1088
		mu 0 3 681 877 774
		f 3 1089 1090 1091
		mu 0 3 649 243 433
		f 3 -1091 1092 -401
		mu 0 3 433 243 262
		f 3 1093 -1092 -404
		mu 0 3 128 649 433
		f 3 -1094 1094 1095
		mu 0 3 649 128 318
		f 3 -409 1096 1097
		mu 0 3 419 40 153
		f 3 1098 1099 -1097
		mu 0 3 40 491 153
		f 3 1100 -1099 -413
		mu 0 3 262 491 40
		f 3 -1101 -1093 1101
		mu 0 3 491 262 243
		f 3 1102 1103 1104
		mu 0 3 216 92 358
		f 3 -1103 -419 1105
		mu 0 3 92 216 633
		f 3 -421 -1098 1106
		mu 0 3 633 419 153
		f 3 -1107 1107 -1106
		mu 0 3 633 153 92
		f 3 1108 1109 1110
		mu 0 3 105 889 841
		f 3 -1109 1111 1112
		mu 0 3 889 105 196
		f 3 1113 1114 1115
		mu 0 3 673 850 854
		f 3 1116 -1114 1117
		mu 0 3 461 850 673
		f 3 -1113 1118 1119
		mu 0 3 889 196 12
		f 3 -1120 1120 1121
		mu 0 3 889 12 711
		f 3 1122 1123 1124
		mu 0 3 890 567 237
		f 3 -1123 1125 1126
		mu 0 3 567 890 879
		f 3 1127 1128 1129
		mu 0 3 873 844 580
		f 3 1130 1131 -1129
		mu 0 3 844 180 580
		f 3 1132 1133 1134
		mu 0 3 846 299 401
		f 3 -1135 1135 1136
		mu 0 3 846 401 895
		f 3 1137 1138 1139
		mu 0 3 714 630 107
		f 3 -1140 1140 -16
		mu 0 3 714 107 867
		f 3 1141 1142 1143
		mu 0 3 848 104 273
		f 3 -1144 1144 1145
		mu 0 3 848 273 888
		f 3 1146 1147 1148
		mu 0 3 388 841 871
		f 3 -1147 1149 -1111
		mu 0 3 841 388 105
		f 3 1150 1151 -1136
		mu 0 3 401 41 895
		f 3 -1152 1152 1153
		mu 0 3 895 41 722
		f 3 1154 -1153 1155
		mu 0 3 567 722 41
		f 3 -1155 -1127 -527
		mu 0 3 722 567 879
		f 3 -1145 1156 1157
		mu 0 3 888 273 630
		f 3 -1158 -1138 1158
		mu 0 3 888 630 714
		f 3 -1121 1159 1160
		mu 0 3 711 12 673
		f 3 -1161 -1116 1161
		mu 0 3 711 673 854
		f 3 -1131 1162 1163
		mu 0 3 180 844 850
		f 3 -1117 1164 -1164
		mu 0 3 850 461 180
		f 3 1165 1166 -1149
		mu 0 3 871 107 388
		f 3 -1166 1167 -1141
		mu 0 3 107 871 867
		f 3 1168 1169 1170
		mu 0 3 892 587 299
		f 3 -1171 -1133 1171
		mu 0 3 892 299 846
		f 3 -1125 1172 1173
		mu 0 3 890 237 104
		f 3 -1174 -1142 1174
		mu 0 3 890 104 848
		f 3 1175 1176 -1162
		mu 0 3 854 785 711
		f 3 -1176 1177 1178
		mu 0 3 785 854 855
		f 3 1179 -691 1180
		mu 0 3 587 883 154
		f 3 -1180 -1169 1181
		mu 0 3 883 587 892
		f 3 1182 -1130 1183
		mu 0 3 586 873 580
		f 3 -1183 -722 1184
		mu 0 3 873 586 374
		f 3 1185 1186 1187
		mu 0 3 700 361 656
		f 3 1188 1189 -1187
		mu 0 3 361 20 656
		f 3 1190 -670 1191
		mu 0 3 326 282 290
		f 3 -1191 -665 1192
		mu 0 3 282 326 631
		f 3 1193 1194 1195
		mu 0 3 667 20 168
		f 3 -1194 1196 -1190
		mu 0 3 20 667 656
		f 3 1197 1198 1199
		mu 0 3 656 338 90
		f 3 -1198 -1197 1200
		mu 0 3 338 656 667
		f 3 1201 1202 1203
		mu 0 3 402 700 90
		f 3 -1203 -1188 -1200
		mu 0 3 90 700 656
		f 3 1204 1205 1206
		mu 0 3 542 149 561
		f 3 -1205 1207 1208
		mu 0 3 149 542 618
		f 3 1209 -1201 1210
		mu 0 3 229 338 667
		f 3 -1210 -1206 1211
		mu 0 3 338 229 327
		f 3 1212 1213 1214
		mu 0 3 282 684 608
		f 3 -1213 -1193 1215
		mu 0 3 684 282 631
		f 3 1216 -1215 1217
		mu 0 3 618 282 608
		f 3 -1217 -1208 -671
		mu 0 3 282 618 542
		f 3 1218 1219 1220
		mu 0 3 530 561 103
		f 3 -1219 -668 -1207
		mu 0 3 561 530 542
		f 3 1221 -1202 1222
		mu 0 3 789 700 402
		f 3 1223 -554 1224
		mu 0 3 402 456 699
		f 3 -1224 -1204 1225
		mu 0 3 456 402 90
		f 3 -558 -1226 1226
		mu 0 3 439 456 90
		f 3 -1199 1227 -1227
		mu 0 3 90 338 439
		f 3 -1212 1228 -1228
		mu 0 3 338 327 439
		f 3 1229 -560 -1229
		mu 0 3 327 30 439
		f 3 1230 1231 -564
		mu 0 3 490 618 414
		f 3 -1231 -1230 -1209
		mu 0 3 618 490 149
		f 3 1232 -570 -1232
		mu 0 3 618 360 414
		f 3 -1233 -1218 1233
		mu 0 3 360 618 608
		f 3 1234 1235 -574
		mu 0 3 360 684 683
		f 3 -1235 -1234 -1214
		mu 0 3 684 360 608
		f 3 1236 -617 1237
		mu 0 3 685 682 404
		f 3 -575 1238 -1238
		mu 0 3 404 683 685
		f 3 -1196 1239 1240
		mu 0 3 667 168 304
		f 3 -1241 -1220 -1211
		mu 0 3 667 304 229
		f 3 1241 1242 -1184
		mu 0 3 580 18 586
		f 3 -1242 1243 1244
		mu 0 3 18 580 503
		f 3 1245 1246 1247
		mu 0 3 424 624 459
		f 3 -1246 1248 1249
		mu 0 3 624 424 217
		f 3 1250 1251 -1245
		mu 0 3 503 459 18
		f 3 -1251 1252 -1248
		mu 0 3 459 503 424
		f 3 1253 -1252 1254
		mu 0 3 313 117 623
		f 3 -1254 1255 1256
		mu 0 3 117 313 614
		f 3 1257 -1247 1258
		mu 0 3 669 623 380
		f 3 -1258 1259 -1255
		mu 0 3 623 669 313
		f 3 1260 -1243 -1257
		mu 0 3 614 266 117
		f 3 -1261 1261 -723
		mu 0 3 266 614 211
		f 3 1262 -769 -781
		mu 0 3 187 613 310
		f 3 -1263 1263 -791
		mu 0 3 613 187 368
		f 3 1264 -774 -756
		mu 0 3 111 108 583
		f 3 1265 -1265 -747
		mu 0 3 85 108 111
		f 3 1266 -777 -767
		mu 0 3 569 450 484
		f 3 -1267 1267 -735
		mu 0 3 450 569 199
		f 3 1268 -1119 1269
		mu 0 3 461 12 196
		f 3 -1269 -1118 -1160
		mu 0 3 12 461 673
		f 3 1270 -1167 -1139
		mu 0 3 630 388 107
		f 3 -1271 -1157 1271
		mu 0 3 388 630 273
		f 3 -1151 1272 1273
		mu 0 3 41 401 237
		f 3 -1274 -1124 -1156
		mu 0 3 41 237 567
		f 3 1274 1275 1276
		mu 0 3 283 598 508
		f 3 1277 1278 -1277
		mu 0 3 508 507 283
		f 3 1279 1280 1281
		mu 0 3 189 532 486
		f 3 1282 1283 -1282
		mu 0 3 486 99 189
		f 3 1284 1285 1286
		mu 0 3 663 134 181
		f 3 1287 1288 -1287
		mu 0 3 181 522 663
		f 3 1289 1290 1291
		mu 0 3 370 75 134
		f 3 -1292 -1285 1292
		mu 0 3 370 134 663
		f 3 1293 1294 1295
		mu 0 3 617 370 218
		f 3 -1294 1296 -1290
		mu 0 3 370 617 75
		f 3 1297 1298 1299
		mu 0 3 301 248 481
		f 3 -1298 1300 1301
		mu 0 3 248 301 300
		f 3 1302 1303 -1278
		mu 0 3 508 481 507
		f 3 -1303 1304 -1300
		mu 0 3 481 508 301
		f 3 1305 1306 1307
		mu 0 3 336 636 598
		f 3 -1275 1308 -1308
		mu 0 3 598 283 336
		f 3 -1283 1309 1310
		mu 0 3 99 486 636
		f 3 -1306 1311 -1311
		mu 0 3 636 336 99
		f 3 1312 1313 1314
		mu 0 3 10 78 532
		f 3 -1280 1315 -1315
		mu 0 3 532 189 10
		f 3 -1288 1316 1317
		mu 0 3 522 181 78
		f 3 -1313 1318 -1318
		mu 0 3 78 10 522
		f 3 1319 1320 1321
		mu 0 3 277 421 4
		f 3 -1320 -794 1322
		mu 0 3 421 277 427
		f 3 1323 -1262 1324
		mu 0 3 425 211 614
		f 3 -1324 1325 1326
		mu 0 3 211 425 110
		f 3 1327 -1256 1328
		mu 0 3 102 614 313
		f 3 -1328 1329 -1325
		mu 0 3 614 102 425
		f 3 1330 -1260 1331
		mu 0 3 152 313 669
		f 3 -1331 1332 -1329
		mu 0 3 313 152 102
		f 3 1333 1334 1335
		mu 0 3 258 4 193
		f 3 -1334 -687 -1322
		mu 0 3 4 258 277
		f 3 -694 1336 1337
		mu 0 3 154 344 67
		f 3 -1336 1338 -1337
		mu 0 3 344 269 67
		f 3 -1268 1339 1340
		mu 0 3 199 569 314
		f 3 1341 1342 -1340
		mu 0 3 569 337 314
		f 3 1343 1344 1345
		mu 0 3 108 523 423
		f 3 -1344 -1266 1346
		mu 0 3 523 108 85
		f 3 1347 1348 1349
		mu 0 3 368 536 95
		f 3 -1348 -1264 1350
		mu 0 3 536 368 187
		f 3 1351 1352 1353
		mu 0 3 311 95 604
		f 3 -1352 -740 -1350
		mu 0 3 95 311 368
		f 3 1354 1355 -1323
		mu 0 3 427 604 421
		f 3 -1355 -783 -1354
		mu 0 3 604 427 311
		f 3 1356 -789 1357
		mu 0 3 50 599 363
		f 3 1358 1359 -1358
		mu 0 3 363 124 50
		f 3 -1342 -752 1360
		mu 0 3 337 569 599
		f 3 -1357 1361 -1361
		mu 0 3 599 50 337
		f 3 1362 -762 1363
		mu 0 3 677 175 199
		f 3 -1341 1364 -1364
		mu 0 3 199 314 677
		f 3 -1347 -733 1365
		mu 0 3 523 85 175
		f 3 -1363 1366 -1366
		mu 0 3 175 677 523
		f 3 1367 1368 1369
		mu 0 3 288 423 173
		f 3 -1368 -725 -1346
		mu 0 3 423 288 108
		f 3 1370 1371 -1351
		mu 0 3 187 173 536
		f 3 -1371 -758 -1370
		mu 0 3 173 187 288
		f 3 1372 1373 1374
		mu 0 3 4 617 485
		f 3 -1373 -1321 1375
		mu 0 3 617 4 421
		f 3 1376 -719 -1327
		mu 0 3 110 21 211
		f 3 -1377 1377 1378
		mu 0 3 21 110 183
		f 3 1379 1380 -1359
		mu 0 3 363 183 124
		f 3 -1380 -858 -1379
		mu 0 3 183 363 21
		f 3 1381 -1244 1382
		mu 0 3 176 503 580
		f 3 -1382 1383 1384
		mu 0 3 503 176 528
		f 3 1385 1386 1387
		mu 0 3 393 51 401
		f 3 -1387 1388 -1273
		mu 0 3 401 51 237
		f 3 -1272 1389 1390
		mu 0 3 388 273 73
		f 3 1391 1392 -1390
		mu 0 3 273 182 73
		f 3 -1270 1393 1394
		mu 0 3 461 196 407
		f 3 1395 1396 -1394
		mu 0 3 196 662 407
		f 3 1397 1398 1399
		mu 0 3 576 74 587
		f 3 -1399 1400 -1170
		mu 0 3 587 74 299
		f 3 1401 1402 -1401
		mu 0 3 74 393 299
		f 3 -1403 -1388 -1134
		mu 0 3 299 393 401
		f 3 1403 -1165 1404
		mu 0 3 64 180 461
		f 3 -1395 1405 -1405
		mu 0 3 461 407 64
		f 3 -1150 1406 1407
		mu 0 3 105 388 84
		f 3 -1391 1408 -1407
		mu 0 3 388 73 84
		f 3 -1396 -1112 1409
		mu 0 3 662 196 105
		f 3 -1408 1410 -1410
		mu 0 3 105 84 662
		f 3 1411 1412 -1389
		mu 0 3 51 330 237
		f 3 -1413 1413 -1173
		mu 0 3 237 330 104
		f 3 -1414 1414 1415
		mu 0 3 104 330 182
		f 3 -1416 -1392 -1143
		mu 0 3 104 182 273
		f 3 -1383 -1132 1416
		mu 0 3 176 580 180
		f 3 -1404 1417 -1417
		mu 0 3 180 64 176
		f 3 1418 -1400 -1181
		mu 0 3 154 576 587
		f 3 -1419 -1338 1419
		mu 0 3 576 154 67
		f 3 1420 -1253 -1385
		mu 0 3 528 424 503
		f 3 -1421 1421 1422
		mu 0 3 424 528 513
		f 3 1423 1424 1425
		mu 0 3 17 860 217
		f 3 -1424 1426 1427
		mu 0 3 860 17 808
		f 3 1428 1429 1430
		mu 0 3 353 517 463
		f 3 -1431 1431 1432
		mu 0 3 353 463 411
		f 3 1433 1434 1435
		mu 0 3 544 60 320
		f 3 -1436 1436 1437
		mu 0 3 544 320 648
		f 3 1438 1439 1440
		mu 0 3 280 76 445
		f 3 1441 1442 -1441
		mu 0 3 445 365 280
		f 3 1443 1444 1445
		mu 0 3 559 515 294
		f 3 -1446 1446 1447
		mu 0 3 559 294 8
		f 3 -1447 1448 1449
		mu 0 3 8 294 517
		f 3 -1450 -1429 1450
		mu 0 3 8 517 353
		f 3 1451 1452 -1439
		mu 0 3 280 557 76
		f 3 -1453 1453 1454
		mu 0 3 76 557 93
		f 3 1455 1456 1457
		mu 0 3 632 648 26
		f 3 -1437 1458 -1457
		mu 0 3 648 320 26
		f 3 -1442 1459 1460
		mu 0 3 365 445 632
		f 3 -1458 1461 -1461
		mu 0 3 632 26 365
		f 3 -1432 1462 1463
		mu 0 3 411 463 298
		f 3 -1464 1464 1465
		mu 0 3 411 298 394
		f 3 -1465 1466 1467
		mu 0 3 394 298 60
		f 3 -1468 -1434 1468
		mu 0 3 394 60 544
		f 3 -1433 1469 1470
		mu 0 3 353 411 393
		f 3 -1470 1471 -1386
		mu 0 3 393 411 51
		f 3 -1438 1472 1473
		mu 0 3 544 648 182
		f 3 -1473 1474 -1393
		mu 0 3 182 648 73
		f 3 -1397 1475 1476
		mu 0 3 407 662 76
		f 3 1477 -1440 -1476
		mu 0 3 662 445 76
		f 3 -1448 1478 1479
		mu 0 3 559 8 576
		f 3 -1479 1480 -1398
		mu 0 3 576 8 74
		f 3 -1451 1481 -1481
		mu 0 3 8 353 74
		f 3 -1482 -1471 -1402
		mu 0 3 74 353 393
		f 3 1482 -1406 1483
		mu 0 3 93 64 407
		f 3 -1477 -1455 -1484
		mu 0 3 407 76 93
		f 3 -1409 1484 1485
		mu 0 3 84 73 632
		f 3 -1475 -1456 -1485
		mu 0 3 73 648 632
		f 3 -1411 1486 -1478
		mu 0 3 662 84 445
		f 3 -1486 -1460 -1487
		mu 0 3 84 632 445
		f 3 -1466 1487 -1472
		mu 0 3 411 394 51
		f 3 -1488 1488 -1412
		mu 0 3 51 394 330
		f 3 -1489 -1469 1489
		mu 0 3 330 394 544
		f 3 -1490 -1474 -1415
		mu 0 3 330 544 182
		f 3 1490 -1384 -1418
		mu 0 3 64 528 176
		f 3 -1491 -1483 1491
		mu 0 3 528 64 93
		f 3 1492 1493 1494
		mu 0 3 568 272 31
		f 3 -1493 1495 1496
		mu 0 3 272 568 496
		f 3 1497 1498 1499
		mu 0 3 434 31 43
		f 3 -1498 1500 -1495
		mu 0 3 31 434 568
		f 3 1501 1502 1503
		mu 0 3 9 14 434
		f 3 -1500 1504 -1504
		mu 0 3 434 43 9
		f 3 1505 -1496 1506
		mu 0 3 457 496 568
		f 3 -1506 1507 1508
		mu 0 3 496 457 247
		f 3 1509 -1501 1510
		mu 0 3 369 568 434
		f 3 -1510 1511 -1507
		mu 0 3 568 369 457
		f 3 1512 1513 1514
		mu 0 3 14 278 369
		f 3 -1515 -1511 -1503
		mu 0 3 14 369 434
		f 3 1515 1516 1517
		mu 0 3 496 17 513
		f 3 -1516 -1509 1518
		mu 0 3 17 496 247
		f 3 1519 1520 1521
		mu 0 3 354 209 316
		f 3 -1520 1522 1523
		mu 0 3 209 354 940
		f 3 1524 -1523 1525
		mu 0 3 658 940 354
		f 3 -1525 1526 1527
		mu 0 3 940 658 384
		f 3 1528 1529 1530
		mu 0 3 383 354 678
		f 3 -1531 1531 1532
		mu 0 3 383 678 483
		f 3 1533 1534 1535
		mu 0 3 283 346 654
		f 3 -1534 -1279 1536
		mu 0 3 346 283 507
		f 3 1537 1538 1539
		mu 0 3 189 297 518
		f 3 -1538 -1284 1540
		mu 0 3 297 189 99
		f 3 1541 1542 1543
		mu 0 3 663 644 165
		f 3 -1542 -1289 1544
		mu 0 3 644 663 522
		f 3 1545 -1293 1546
		mu 0 3 403 370 663
		f 3 -1544 1547 -1547
		mu 0 3 663 165 403
		f 3 1548 1549 1550
		mu 0 3 218 403 610
		f 3 -1549 -1295 -1546
		mu 0 3 403 218 370
		f 3 1551 1552 -1537
		mu 0 3 507 397 346
		f 3 -1552 -1304 1553
		mu 0 3 397 507 481
		f 3 1554 -1309 1555
		mu 0 3 501 336 283
		f 3 -1536 1556 -1556
		mu 0 3 283 654 501
		f 3 -1541 -1312 1557
		mu 0 3 297 99 336
		f 3 -1555 1558 -1558
		mu 0 3 336 501 297
		f 3 1559 -1316 1560
		mu 0 3 315 10 189
		f 3 -1540 1561 -1561
		mu 0 3 189 518 315
		f 3 -1545 -1319 1562
		mu 0 3 644 522 10
		f 3 -1560 1563 -1563
		mu 0 3 10 315 644
		f 3 1564 1565 -706
		mu 0 3 668 610 675
		f 3 -1565 1566 -1551
		mu 0 3 610 668 218
		f 3 1567 -1548 1568
		mu 0 3 675 403 165
		f 3 -1568 -1566 -1550
		mu 0 3 403 675 610
		f 3 1569 -1543 -1564
		mu 0 3 315 165 644
		f 3 -1570 -1562 1570
		mu 0 3 165 315 518
		f 3 1571 -1539 -1559
		mu 0 3 501 518 297
		f 3 -1572 -1557 1572
		mu 0 3 518 501 654
		f 3 1573 -1530 -1522
		mu 0 3 316 678 354
		f 3 -1574 1574 1575
		mu 0 3 678 316 172
		f 3 -1573 1576 1577
		mu 0 3 518 654 949
		f 3 -1578 1578 1579
		mu 0 3 518 949 452
		f 3 1580 1581 -1571
		mu 0 3 518 454 165
		f 3 -1581 -1580 1582
		mu 0 3 454 518 452
		f 3 -1569 1583 1584
		mu 0 3 675 165 946
		f 3 -1584 -1582 1585
		mu 0 3 946 165 454
		f 3 -1554 -1299 1586
		mu 0 3 397 481 248
		f 3 1587 1588 -1587
		mu 0 3 248 316 397
		f 3 -1589 1589 -1553
		mu 0 3 397 316 346
		f 3 -1590 1590 -1535
		mu 0 3 346 316 654
		f 3 1591 -1577 -1591
		mu 0 3 316 949 654
		f 3 -1592 -1521 1592
		mu 0 3 949 316 209
		f 3 1593 1594 -1532
		mu 0 3 678 554 483
		f 3 -1594 -1576 1595
		mu 0 3 554 678 172
		f 3 1596 1597 -1596
		mu 0 3 172 248 554
		f 3 -1597 -1575 -1588
		mu 0 3 248 172 316
		f 3 1598 -1526 1599
		mu 0 3 324 658 354
		f 3 -1600 -1529 1600
		mu 0 3 324 354 383
		f 3 1601 1602 -1381
		mu 0 3 183 300 124
		f 3 -1602 1603 1604
		mu 0 3 300 183 212
		f 3 1605 1606 1607
		mu 0 3 551 483 212
		f 3 -1607 -1595 1608
		mu 0 3 212 483 554
		f 3 -1335 1609 1610
		mu 0 3 193 4 88
		f 3 -1375 -698 -1610
		mu 0 3 4 485 88
		f 3 -1339 1611 1612
		mu 0 3 67 269 475
		f 3 -1611 -700 -1612
		mu 0 3 269 629 475
		f 3 1613 -1343 1614
		mu 0 3 598 314 337
		f 3 1615 -1276 -1615
		mu 0 3 337 508 598
		f 3 1616 -1345 1617
		mu 0 3 532 423 523
		f 3 1618 -1281 -1618
		mu 0 3 523 486 532
		f 3 1619 -1286 1620
		mu 0 3 95 181 134
		f 3 -1620 -1349 1621
		mu 0 3 181 95 536
		f 3 1622 -1353 1623
		mu 0 3 75 604 95
		f 3 -1624 -1621 -1291
		mu 0 3 75 95 134
		f 3 1624 -1297 -1376
		mu 0 3 421 75 617
		f 3 -1625 -1356 -1623
		mu 0 3 75 421 604
		f 3 1625 -1301 1626
		mu 0 3 50 300 301
		f 3 -1626 -1360 -1603
		mu 0 3 300 50 124
		f 3 -1616 -1362 1627
		mu 0 3 508 337 50
		f 3 -1627 -1305 -1628
		mu 0 3 50 301 508
		f 3 1628 -1365 1629
		mu 0 3 636 677 314
		f 3 -1614 -1307 -1630
		mu 0 3 314 598 636
		f 3 -1619 -1367 1630
		mu 0 3 486 523 677
		f 3 -1629 -1310 -1631
		mu 0 3 677 636 486
		f 3 1631 -1314 1632
		mu 0 3 173 532 78
		f 3 -1632 -1369 -1617
		mu 0 3 532 173 423
		f 3 1633 -1317 -1622
		mu 0 3 536 78 181
		f 3 -1634 -1372 -1633
		mu 0 3 78 536 173
		f 3 1634 -1567 -699
		mu 0 3 485 218 668
		f 3 -1635 -1374 -1296
		mu 0 3 218 485 617
		f 3 1635 -1598 -1302
		mu 0 3 300 554 248
		f 3 -1636 -1605 -1609
		mu 0 3 554 300 212
		f 3 1636 1637 -1378
		mu 0 3 110 551 183
		f 3 -1638 -1608 -1604
		mu 0 3 183 551 212
		f 3 1638 1639 -1613
		mu 0 3 475 559 67
		f 3 -1640 -1480 -1420
		mu 0 3 67 559 576
		f 3 1640 -1330 1641
		mu 0 3 115 425 102
		f 3 -1641 1642 1643
		mu 0 3 425 115 616
		f 3 1644 -1326 -1644
		mu 0 3 616 110 425
		f 3 -1645 1645 -1637
		mu 0 3 110 616 551
		f 3 1646 -1643 1647
		mu 0 3 570 616 115
		f 3 -1647 1648 1649
		mu 0 3 616 570 420
		f 3 1650 1651 -1606
		mu 0 3 551 420 483
		f 3 -1651 -1646 -1650
		mu 0 3 420 551 616
		f 3 -1652 1652 -1533
		mu 0 3 483 420 383
		f 3 1653 -1653 -1649
		mu 0 3 570 383 420
		f 3 1654 -1333 1655
		mu 0 3 138 102 152
		f 3 -1655 1656 -1642
		mu 0 3 102 138 115
		f 3 1657 1658 1659
		mu 0 3 513 371 77
		f 3 -1422 1660 -1658
		mu 0 3 513 528 371;
	setAttr ".fc[1000:1499]"
		f 3 1661 1662 -1497
		mu 0 3 496 77 272
		f 3 -1662 -1518 -1660
		mu 0 3 77 496 513
		f 3 1663 -702 1664
		mu 0 3 515 475 268
		f 3 -1664 -1444 -1639
		mu 0 3 475 515 559
		f 3 -1492 1665 -1661
		mu 0 3 528 93 371
		f 3 -1666 -1454 1666
		mu 0 3 371 93 557
		f 3 1667 1668 1669
		mu 0 3 489 435 366
		f 3 1670 1671 -1670
		mu 0 3 366 664 489
		f 3 1672 1673 1674
		mu 0 3 194 366 119
		f 3 -1673 1675 1676
		mu 0 3 366 194 123
		f 3 1677 1678 1679
		mu 0 3 555 194 413
		f 3 -1675 1680 -1679
		mu 0 3 194 119 413
		f 3 1681 1682 1683
		mu 0 3 31 307 123
		f 3 -1682 -1494 1684
		mu 0 3 307 31 272
		f 3 1685 -1676 1686
		mu 0 3 43 123 194
		f 3 -1686 -1499 -1684
		mu 0 3 123 43 31
		f 3 -1505 1687 1688
		mu 0 3 9 43 555
		f 3 -1687 -1678 -1688
		mu 0 3 43 194 555
		f 3 1689 1690 -1685
		mu 0 3 272 142 307
		f 3 -1690 -1663 1691
		mu 0 3 142 272 77
		f 3 1692 -1425 1693
		mu 0 3 858 217 860
		f 3 -1693 1694 -1250
		mu 0 3 217 858 624
		f 3 1695 1696 -1259
		mu 0 3 380 811 669
		f 3 -1696 -1695 1697
		mu 0 3 811 380 227
		f 3 1698 1699 -1332
		mu 0 3 669 326 152
		f 3 -1699 -1697 -666
		mu 0 3 326 669 811
		f 3 1700 -1249 -1423
		mu 0 3 513 217 424
		f 3 -1701 -1517 -1426
		mu 0 3 217 513 17
		f 3 1701 -1508 1702
		mu 0 3 361 247 457
		f 3 -1702 1703 1704
		mu 0 3 247 361 251
		f 3 1705 -1512 1706
		mu 0 3 20 457 369
		f 3 -1706 -1189 -1703
		mu 0 3 457 20 361
		f 3 1707 -1514 1708
		mu 0 3 168 369 278
		f 3 -1708 -1195 -1707
		mu 0 3 369 168 20
		f 3 -1519 -1705 1709
		mu 0 3 17 247 251
		f 3 -1710 1710 -1427
		mu 0 3 17 251 808
		f 3 -1700 1711 -1656
		mu 0 3 152 326 138
		f 3 -1192 1712 -1712
		mu 0 3 326 290 138
		f 3 -1654 1713 -1601
		mu 0 3 383 570 324
		f 3 1714 -1714 1715
		mu 0 3 130 324 570
		f 3 1716 -1657 1717
		mu 0 3 130 115 138
		f 3 -1717 -1716 -1648
		mu 0 3 115 130 570
		f 3 1718 -1692 1719
		mu 0 3 557 142 77
		f 3 -1659 -1667 -1720
		mu 0 3 77 371 557
		f 3 1720 1721 1722
		mu 0 3 517 319 331
		f 3 -1723 1723 -1430
		mu 0 3 517 331 463
		f 3 1724 -1459 1725
		mu 0 3 643 26 320
		f 3 -1726 -1435 1726
		mu 0 3 643 320 60
		f 3 1727 -1445 1728
		mu 0 3 441 294 515
		f 3 -1728 1729 1730
		mu 0 3 294 441 464
		f 3 -1731 1731 1732
		mu 0 3 294 464 319
		f 3 -1733 -1721 -1449
		mu 0 3 294 319 517
		f 3 -1729 -1665 1733
		mu 0 3 441 515 268
		f 3 -708 1734 -1734
		mu 0 3 268 136 441
		f 3 1735 1736 1737
		mu 0 3 331 174 489
		f 3 1738 1739 1740
		mu 0 3 142 280 562
		f 3 -1739 -1719 -1452
		mu 0 3 280 142 557
		f 3 1741 1742 1743
		mu 0 3 307 562 186
		f 3 -1742 -1691 -1741
		mu 0 3 562 307 142
		f 3 1744 1745 1746
		mu 0 3 521 45 529
		f 3 -1745 1747 1748
		mu 0 3 45 521 22
		f 3 1749 1750 -1502
		mu 0 3 9 504 14
		f 3 -1751 1751 1752
		mu 0 3 14 504 584
		f 3 -1753 1753 -1513
		mu 0 3 14 584 278
		f 3 -1754 -1746 1754
		mu 0 3 278 584 72
		f 3 1755 1756 -1749
		mu 0 3 22 103 45
		f 3 -1756 1757 -1221
		mu 0 3 103 22 530
		f 3 -1755 1758 -1709
		mu 0 3 278 72 168
		f 3 -1759 -1757 -1240
		mu 0 3 168 72 304
		f 3 1759 -1752 1760
		mu 0 3 245 529 343
		f 3 -1760 1761 -1747
		mu 0 3 529 245 521
		f 3 1762 -1680 1763
		mu 0 3 442 555 413
		f 3 -1763 1764 1765
		mu 0 3 555 442 376
		f 3 1766 1767 1768
		mu 0 3 65 413 573
		f 3 -1767 1769 -1764
		mu 0 3 413 65 442
		f 3 1770 -1770 -1599
		mu 0 3 324 49 658
		f 3 -1771 1771 -1765
		mu 0 3 49 324 335
		f 3 -1766 1772 -1689
		mu 0 3 555 376 9
		f 3 -1773 1773 -1750
		mu 0 3 9 376 504
		f 3 1774 1775 -1762
		mu 0 3 245 130 521
		f 3 -1715 -1775 1776
		mu 0 3 324 130 245
		f 3 -1772 1777 -1774
		mu 0 3 335 324 343
		f 3 -1778 -1777 -1761
		mu 0 3 343 324 245
		f 3 -1776 1778 -1748
		mu 0 3 521 130 22
		f 3 -1779 1779 1780
		mu 0 3 22 130 1
		f 3 1781 -1758 -1781
		mu 0 3 1 530 22
		f 3 -1782 1782 -669
		mu 0 3 530 1 290
		f 3 -1713 -1783 1783
		mu 0 3 138 290 1
		f 3 -1718 -1784 -1780
		mu 0 3 130 138 1
		f 3 1784 1785 1786
		mu 0 3 951 408 24
		f 3 -1785 1787 1788
		mu 0 3 408 951 378
		f 3 1789 1790 1791
		mu 0 3 293 24 136
		f 3 -1790 1792 -1787
		mu 0 3 24 293 951
		f 3 -1735 1793 -1730
		mu 0 3 441 136 464
		f 3 -1791 1794 -1794
		mu 0 3 136 24 464
		f 3 1795 -1732 1796
		mu 0 3 174 319 464
		f 3 -1796 -1736 -1722
		mu 0 3 319 174 331
		f 3 -1797 -1795 1797
		mu 0 3 174 464 24
		f 3 -1786 1798 -1798
		mu 0 3 24 408 174
		f 3 1799 1800 1801
		mu 0 3 643 664 186
		f 3 -1671 1802 -1801
		mu 0 3 664 366 186
		f 3 1803 -707 1804
		mu 0 3 94 579 675
		f 3 -1585 1805 -1805
		mu 0 3 675 946 94
		f 3 -1792 -710 1806
		mu 0 3 293 136 19
		f 3 -1804 1807 -1807
		mu 0 3 19 619 293
		f 3 -1769 1808 -1527
		mu 0 3 65 573 221
		f 3 1809 1810 -1809
		mu 0 3 573 942 221
		f 3 -1789 1811 1812
		mu 0 3 408 378 254
		f 3 1813 -1812 1814
		mu 0 3 942 254 378
		f 3 1815 -1814 -1810
		mu 0 3 573 254 942
		f 3 -1816 1816 1817
		mu 0 3 254 573 5
		f 3 1818 1819 -1799
		mu 0 3 408 5 174
		f 3 -1819 -1813 -1818
		mu 0 3 5 408 254
		f 3 1820 -1820 1821
		mu 0 3 435 174 5
		f 3 -1821 -1668 -1737
		mu 0 3 174 435 489
		f 3 1822 -1683 -1744
		mu 0 3 186 123 307
		f 3 -1823 -1803 -1677
		mu 0 3 123 186 366
		f 3 1823 -1669 1824
		mu 0 3 178 366 435
		f 3 -1824 1825 -1674
		mu 0 3 366 178 119
		f 3 1826 -1825 -1822
		mu 0 3 5 178 435
		f 3 -1827 -1817 1827
		mu 0 3 178 5 573
		f 3 1828 -1826 -1828
		mu 0 3 573 119 178
		f 3 -1768 -1681 -1829
		mu 0 3 573 413 119
		f 3 -1802 -1743 1829
		mu 0 3 643 186 562
		f 3 1830 1831 -930
		mu 0 3 738 739 734
		f 3 1832 1833 1834
		mu 0 3 742 793 794
		f 3 1835 1836 1837
		mu 0 3 743 744 794
		f 3 -1836 -353 -383
		mu 0 3 744 743 129
		f 3 1838 1839 -1095
		mu 0 3 701 702 718
		f 3 1840 1841 1842
		mu 0 3 705 786 787
		f 3 1843 1844 1845
		mu 0 3 919 721 719
		f 3 1846 -296 1847
		mu 0 3 649 426 582
		f 3 -1848 1848 -1090
		mu 0 3 649 582 243
		f 3 1849 -298 1850
		mu 0 3 318 109 426
		f 3 -1851 -1847 -1096
		mu 0 3 318 426 649
		f 3 1851 -1100 1852
		mu 0 3 46 153 491
		f 3 -1852 -301 1853
		mu 0 3 153 46 516
		f 3 1854 -1853 -1102
		mu 0 3 243 46 491
		f 3 -1855 -1849 -307
		mu 0 3 46 243 582
		f 3 1855 -319 1856
		mu 0 3 92 516 364
		f 3 -1856 -1108 -1854
		mu 0 3 516 92 153
		f 3 1857 1858 1859
		mu 0 3 358 364 261
		f 3 -1858 -1104 -1857
		mu 0 3 364 358 92
		f 3 1860 1861 1862
		mu 0 3 754 753 797
		f 3 -1861 1863 -886
		mu 0 3 753 754 749
		f 3 -875 -880 -1862
		mu 0 3 753 752 797
		f 3 1864 -168 1865
		mu 0 3 531 590 59
		f 3 -1865 -1076 1866
		mu 0 3 590 531 398
		f 3 1867 -1867 -1080
		mu 0 3 477 590 398
		f 3 -1868 -206 -174
		mu 0 3 590 477 661
		f 3 1868 -186 1869
		mu 0 3 207 59 66
		f 3 -1869 -1086 -1866
		mu 0 3 59 207 531
		f 3 -321 -165 1870
		mu 0 3 364 148 246
		f 3 -1871 -684 -1859
		mu 0 3 364 246 261
		f 3 1871 1872 1873
		mu 0 3 707 784 708
		f 3 -1874 1874 -1067
		mu 0 3 707 708 709
		f 3 -1845 -712 1875
		mu 0 3 719 721 333
		f 3 -1876 1876 -300
		mu 0 3 719 333 208
		f 3 1877 -799 1878
		mu 0 3 473 256 295
		f 3 -1879 1879 -543
		mu 0 3 473 295 645
		f 3 1880 -802 1881
		mu 0 3 184 348 640
		f 3 -1881 -26 1882
		mu 0 3 348 184 235
		f 3 -172 1883 1884
		mu 0 3 639 455 597
		f 3 1885 -806 -1884
		mu 0 3 455 653 597
		f 3 1886 -159 1887
		mu 0 3 611 101 637
		f 3 -1887 -810 1888
		mu 0 3 101 611 38
		f 3 1889 -814 1890
		mu 0 3 428 671 396
		f 3 -1890 -537 1891
		mu 0 3 671 428 29
		f 3 1892 -187 1893
		mu 0 3 572 306 639
		f 3 -1894 -1885 -818
		mu 0 3 572 639 597
		f 3 -305 1894 1895
		mu 0 3 356 574 578
		f 3 1896 -821 -1895
		mu 0 3 574 328 578
		f 3 1897 -825 1898
		mu 0 3 116 572 62
		f 3 -1898 1899 -1893
		mu 0 3 572 116 306
		f 3 1900 -828 1901
		mu 0 3 213 640 80
		f 3 -1901 -21 -1882
		mu 0 3 640 213 184
		f 3 -175 1902 -1886
		mu 0 3 455 101 653
		f 3 -1889 -830 -1903
		mu 0 3 101 38 653
		f 3 1903 -833 1904
		mu 0 3 148 578 652
		f 3 -1904 -320 -1896
		mu 0 3 578 148 356
		f 3 1905 -675 1906
		mu 0 3 127 509 670
		f 3 -1907 1907 -836
		mu 0 3 127 670 271
		f 3 1908 -839 -1883
		mu 0 3 235 62 348
		f 3 -1909 -14 -1899
		mu 0 3 62 235 116
		f 3 1909 -841 -1888
		mu 0 3 637 652 611
		f 3 -1910 -166 -1905
		mu 0 3 652 637 148
		f 3 -1908 -39 1910
		mu 0 3 271 670 213
		f 3 -1911 -1902 -843
		mu 0 3 271 213 80
		f 3 1911 -846 1912
		mu 0 3 349 396 121
		f 3 -1912 -532 -1891
		mu 0 3 396 349 428
		f 3 -308 1913 -1897
		mu 0 3 574 395 328
		f 3 1914 -848 -1914
		mu 0 3 395 34 328
		f 3 -1892 -525 1915
		mu 0 3 671 29 509
		f 3 -1906 -851 -1916
		mu 0 3 509 127 671
		f 3 1916 -853 -1878
		mu 0 3 473 121 256
		f 3 -1917 -546 -1913
		mu 0 3 121 473 349
		f 3 1917 -293 -1877
		mu 0 3 333 395 208
		f 3 -1918 -855 -1915
		mu 0 3 395 333 34
		f 3 1918 1919 1920
		mu 0 3 702 717 716
		f 3 -1921 -1850 -1840
		mu 0 3 702 716 718
		f 3 1921 1922 1923
		mu 0 3 605 66 202
		f 3 -1922 -1082 -1870
		mu 0 3 66 605 207
		f 3 1924 1925 -685
		mu 0 3 285 241 417
		f 3 -162 -1925 -167
		mu 0 3 637 241 285
		f 3 1926 -1875 -1926
		mu 0 3 241 239 417
		f 3 -1927 -208 -1074
		mu 0 3 239 241 588
		f 3 1927 -713 -1844
		mu 0 3 919 347 721
		f 3 -1928 1928 -720
		mu 0 3 347 919 720
		f 3 1929 1930 -1043
		mu 0 3 514 219 443
		f 3 -1930 1931 -11
		mu 0 3 219 514 355
		f 3 1932 -23 1933
		mu 0 3 438 309 526
		f 3 -1933 -1047 1934
		mu 0 3 309 438 79
		f 3 1935 -1935 -1051
		mu 0 3 443 309 79
		f 3 -1936 -1931 -27
		mu 0 3 309 443 219
		f 3 -1923 1936 -679
		mu 0 3 202 66 23
		f 3 -188 1937 -1937
		mu 0 3 66 306 23
		f 3 1938 -38 1939
		mu 0 3 203 526 390
		f 3 -1939 -1057 -1934
		mu 0 3 526 203 438
		f 3 1940 1941 1942
		mu 0 3 620 390 39
		f 3 -1941 -1053 -1940
		mu 0 3 390 620 203
		f 3 -677 1943 1944
		mu 0 3 480 23 116
		f 3 -1900 -1944 -1938
		mu 0 3 306 116 23
		f 3 1945 1946 1947
		mu 0 3 133 539 355
		f 3 -1948 -1932 -1045
		mu 0 3 133 355 514
		f 3 1948 1949 1950
		mu 0 3 548 655 621
		f 3 -674 -524 -1950
		mu 0 3 655 509 621
		f 3 -1947 -680 1951
		mu 0 3 355 539 480
		f 3 -1952 -1945 -13
		mu 0 3 355 480 116
		f 3 1952 -1000 1953
		mu 0 3 13 492 468
		f 3 -1954 1954 -522
		mu 0 3 13 468 621
		f 3 -1942 1955 1956
		mu 0 3 39 390 589
		f 3 -40 -676 -1956
		mu 0 3 390 670 589
		f 3 1957 -534 1958
		mu 0 3 676 474 612
		f 3 -1958 -1006 1959
		mu 0 3 474 676 391
		f 3 1960 -538 -1960
		mu 0 3 391 13 474
		f 3 -1961 -1010 -1953
		mu 0 3 13 391 492
		f 3 1961 -540 1962
		mu 0 3 357 86 519
		f 3 -1962 -1012 1963
		mu 0 3 86 357 61
		f 3 1964 -545 -1964
		mu 0 3 61 612 86
		f 3 -1965 -1016 -1959
		mu 0 3 612 61 676
		f 3 1965 1966 -798
		mu 0 3 725 884 726
		f 3 -1966 -692 1967
		mu 0 3 884 725 883
		f 3 -1949 1968 1969
		mu 0 3 655 548 39
		f 3 -1970 -1957 -672
		mu 0 3 655 39 589
		f 3 1970 -1004 1971
		mu 0 3 548 468 206
		f 3 -1971 -1951 -1955
		mu 0 3 468 548 621
		f 3 1972 1973 1974
		mu 0 3 727 884 729
		f 3 1975 -1039 -90
		mu 0 3 757 799 759
		f 3 1976 1977 1978
		mu 0 3 800 765 764
		f 3 1979 1980 1981
		mu 0 3 760 761 765
		f 3 -1980 -72 -108
		mu 0 3 761 760 53
		f 3 1982 1983 1984
		mu 0 3 686 818 779
		f 3 1985 1986 1987
		mu 0 3 684 812 685
		f 3 1988 -927 1989
		mu 0 3 488 3 472
		f 3 -1989 -399 1990
		mu 0 3 3 488 375
		f 3 1991 1992 -405
		mu 0 3 488 7 373
		f 3 -1992 -1990 -931
		mu 0 3 7 488 472
		f 3 1993 -935 1994
		mu 0 3 276 482 118
		f 3 1995 -411 -1995
		mu 0 3 118 540 276
		f 3 -1996 -937 1996
		mu 0 3 540 118 3
		f 3 -1991 -414 -1997
		mu 0 3 3 375 540
		f 3 1997 -417 1998
		mu 0 3 47 325 48
		f 3 -1998 -939 1999
		mu 0 3 325 47 302
		f 3 2000 -422 -2000
		mu 0 3 302 276 325
		f 3 -2001 -943 -1994
		mu 0 3 276 302 482
		f 3 2001 2002 2003
		mu 0 3 793 741 787
		f 3 -2002 2004 -1999
		mu 0 3 741 793 740
		f 3 2005 2006 2007
		mu 0 3 774 911 745
		f 3 -2008 2008 2009
		mu 0 3 774 745 680
		f 3 2010 -881 2011
		mu 0 3 171 106 552
		f 3 -2011 -267 2012
		mu 0 3 106 171 113
		f 3 2013 -887 2014
		mu 0 3 666 552 389
		f 3 -2014 -273 -2012
		mu 0 3 552 666 171
		f 3 2015 -279 2016
		mu 0 3 281 449 510
		f 3 -2016 -891 2017
		mu 0 3 449 281 594
		f 3 -2018 -893 2018
		mu 0 3 449 594 106
		f 3 -2013 -282 -2019
		mu 0 3 106 113 449
		f 3 -2009 -895 2019
		mu 0 3 525 679 506
		f 3 -2020 2020 -285
		mu 0 3 525 506 500
		f 3 2021 -291 -2021
		mu 0 3 506 510 500
		f 3 -2022 -898 -2017
		mu 0 3 510 506 281
		f 3 2022 2023 2024
		mu 0 3 689 687 779
		f 3 -2023 -470 -954
		mu 0 3 687 689 159
		f 3 2025 2026 2027
		mu 0 3 822 694 692
		f 3 -2026 2028 -958
		mu 0 3 694 822 771
		f 3 -2027 -359 2029
		mu 0 3 692 694 693
		f 3 2030 2031 2032
		mu 0 3 704 710 786
		f 3 -2031 -1860 2033
		mu 0 3 710 704 703
		f 3 2034 -1946 -1034
		mu 0 3 782 697 696
		f 3 -2035 2035 2036
		mu 0 3 697 782 852
		f 3 2037 2038 2039
		mu 0 3 852 791 920
		f 3 -2038 2040 -19
		mu 0 3 791 852 715
		f 3 2041 -1704 -1186
		mu 0 3 700 251 361
		f 3 -2042 -1222 2042
		mu 0 3 251 700 789
		f 3 2043 2044 -2034
		mu 0 3 703 784 710
		f 3 -2044 -683 -1873
		mu 0 3 784 703 708
		f 3 2045 2046 2047
		mu 0 3 713 920 877
		f 3 -2046 -1924 2048
		mu 0 3 920 713 712
		f 3 2049 2050 -520
		mu 0 3 772 886 769
		f 3 2051 -1972 -2051
		mu 0 3 886 770 769
		f 3 2052 2053 2054
		mu 0 3 783 730 724
		f 3 -2053 2055 -1943
		mu 0 3 730 783 731
		f 3 2056 -530 2057
		mu 0 3 724 723 880
		f 3 -2057 2058 2059
		mu 0 3 723 724 886
		f 3 2060 2061 2062
		mu 0 3 766 729 898
		f 3 -2061 -1963 2063
		mu 0 3 729 766 728
		f 3 2064 2065 2066
		mu 0 3 800 762 733
		f 3 -2065 2067 -1030
		mu 0 3 762 800 763
		f 3 2068 2069 2070
		mu 0 3 735 739 790
		f 3 -2069 -1993 -1832
		mu 0 3 739 735 734
		f 3 2071 -1864 2072
		mu 0 3 778 749 754
		f 3 -2072 -1069 -2015
		mu 0 3 749 778 750
		f 3 2073 2074 2075
		mu 0 3 774 878 916
		f 3 -2074 -1088 2076
		mu 0 3 878 774 877
		f 3 2077 -2075 2078
		mu 0 3 914 916 878
		f 3 2079 2080 -2079
		mu 0 3 878 866 914
		f 3 2081 2082 2083
		mu 0 3 685 813 775
		f 3 -2082 -1987 2084
		mu 0 3 813 685 812
		f 3 2085 2086 2087
		mu 0 3 810 776 857
		f 3 -2086 2088 -2083
		mu 0 3 776 810 777
		f 3 2089 2090 2091
		mu 0 3 914 840 917
		f 3 -2090 -2081 2092
		mu 0 3 840 914 866
		f 3 2093 -1066 2094
		mu 0 3 917 707 778
		f 3 -2094 -2091 2095
		mu 0 3 707 917 840
		f 3 2096 -1984 2097
		mu 0 3 821 779 818
		f 3 2098 2099 -2098
		mu 0 3 818 819 821
		f 3 2100 2101 2102
		mu 0 3 821 826 820
		f 3 -2101 -2100 2103
		mu 0 3 826 821 819
		f 3 2104 2105 2106
		mu 0 3 820 824 828
		f 3 -2105 -2102 2107
		mu 0 3 824 820 826
		f 3 2108 2109 2110
		mu 0 3 828 692 780
		f 3 -2109 -2106 2111
		mu 0 3 692 828 824
		f 3 2112 2113 2114
		mu 0 3 838 782 781
		f 3 -2113 2115 2116
		mu 0 3 782 838 837
		f 3 2117 -2116 2118
		mu 0 3 830 837 838
		f 3 -2118 2119 2120
		mu 0 3 837 830 897
		f 3 2121 2122 2123
		mu 0 3 894 830 832
		f 3 -2122 2124 -2120
		mu 0 3 830 894 897
		f 3 -1059 2125 2126
		mu 0 3 733 783 832
		f 3 -2126 2127 -2124
		mu 0 3 832 783 894
		f 3 2128 2129 2130
		mu 0 3 839 842 876
		f 3 -2129 2131 2132
		mu 0 3 842 839 872
		f 3 2133 2134 2135
		mu 0 3 868 839 865
		f 3 -2134 2136 -2132
		mu 0 3 839 868 872
		f 3 2137 2138 2139
		mu 0 3 876 785 784
		f 3 -2138 -2130 2140
		mu 0 3 785 876 842
		f 3 2141 2142 2143
		mu 0 3 908 906 843
		f 3 -2144 2144 2145
		mu 0 3 908 843 870
		f 3 2146 -2146 2147
		mu 0 3 909 908 870
		f 3 2148 2149 -2148
		mu 0 3 870 875 909
		f 3 -2143 2150 2151
		mu 0 3 843 906 786
		f 3 2152 -1842 -2151
		mu 0 3 906 787 786
		f 3 2153 2154 2155
		mu 0 3 869 710 855
		f 3 -2156 2156 2157
		mu 0 3 869 855 856
		f 3 2158 -2158 2159
		mu 0 3 874 869 856
		f 3 -2160 2160 2161
		mu 0 3 874 856 851
		f 3 2162 -2041 2163
		mu 0 3 853 715 852
		f 3 -2163 2164 2165
		mu 0 3 715 853 849
		f 3 2166 2167 2168
		mu 0 3 849 836 891
		f 3 -2167 -2165 2169
		mu 0 3 836 849 853
		f 3 2170 -2088 2171
		mu 0 3 859 810 857
		f 3 -2171 2172 2173
		mu 0 3 810 859 864
		f 3 2174 2175 2176
		mu 0 3 788 859 789
		f 3 -2175 2177 -2173
		mu 0 3 859 788 864
		f 3 2178 2179 2180
		mu 0 3 909 702 790
		f 3 -2179 -2150 2181
		mu 0 3 702 909 875
		f 3 -2039 2182 2183
		mu 0 3 920 791 865
		f 3 -2183 2184 -2136
		mu 0 3 865 791 868
		f 3 2185 -2162 2186
		mu 0 3 882 874 851
		f 3 -2187 2187 2188
		mu 0 3 882 851 845
		f 3 2189 -2189 2190
		mu 0 3 717 882 845
		f 3 -2191 2191 2192
		mu 0 3 717 845 792
		f 3 2193 -2060 2194
		mu 0 3 847 723 886
		f 3 2195 2196 -2195
		mu 0 3 886 887 847
		f 3 2197 2198 2199
		mu 0 3 847 900 893
		f 3 -2198 -2197 2200
		mu 0 3 900 847 887
		f 3 -2058 2201 2202
		mu 0 3 724 880 896
		f 3 2203 2204 -2202
		mu 0 3 880 881 896
		f 3 2205 -2168 2206
		mu 0 3 896 891 836
		f 3 -2206 -2205 2207
		mu 0 3 891 896 881
		f 3 2208 2209 2210
		mu 0 3 729 885 902
		f 3 -2209 -1974 2211
		mu 0 3 885 729 884
		f 3 2212 -2210 2213
		mu 0 3 893 902 885
		f 3 -2213 -2199 2214
		mu 0 3 902 893 900
		f 3 2215 2216 2217
		mu 0 3 807 806 910
		f 3 -2218 2218 2219
		mu 0 3 807 910 905
		f 3 2220 -2220 2221
		mu 0 3 817 807 905
		f 3 2222 2223 -2222
		mu 0 3 905 907 817
		f 3 -2217 2224 2225
		mu 0 3 910 806 793
		f 3 2226 -1834 -2225
		mu 0 3 806 794 793
		f 3 2227 -2224 2228
		mu 0 3 739 817 907
		f 3 -2228 2229 2230
		mu 0 3 817 739 795
		f 3 2231 -901 2232
		mu 0 3 912 796 911
		f 3 -2232 2233 2234
		mu 0 3 796 912 804
		f 3 2235 -2234 2236
		mu 0 3 805 804 912
		f 3 2237 2238 -2237
		mu 0 3 912 915 805
		f 3 2239 2240 2241
		mu 0 3 805 913 815
		f 3 -2240 -2239 2242
		mu 0 3 913 805 915
		f 3 2243 -2241 2244
		mu 0 3 754 815 913
		f 3 -2244 -1863 2245
		mu 0 3 815 754 797
		f 3 2246 2247 2248
		mu 0 3 799 835 831
		f 3 -2247 2249 2250
		mu 0 3 835 799 798
		f 3 2251 -2248 2252
		mu 0 3 803 831 835
		f 3 -2252 2253 2254
		mu 0 3 831 803 833
		f 3 2255 2256 2257
		mu 0 3 904 803 802
		f 3 -2256 2258 -2254
		mu 0 3 803 904 833
		f 3 -1977 2259 2260
		mu 0 3 765 800 802
		f 3 -2260 2261 -2258
		mu 0 3 802 800 904
		f 3 -475 2262 2263
		mu 0 3 801 898 827
		f 3 2264 2265 -2263
		mu 0 3 898 899 827
		f 3 2266 -2266 2267
		mu 0 3 903 827 899
		f 3 -2267 2268 2269
		mu 0 3 827 903 825
		f 3 2270 2271 2272
		mu 0 3 823 772 822
		f 3 -2271 2273 2274
		mu 0 3 772 823 901
		f 3 2275 -2269 2276
		mu 0 3 901 825 903
		f 3 -2276 -2274 2277
		mu 0 3 825 901 823
		f 3 2278 -2257 2279
		mu 0 3 131 802 803
		f 3 -2280 2280 -53
		mu 0 3 131 803 615
		f 3 -2281 -2253 2281
		mu 0 3 615 803 835
		f 3 -2282 2282 -47
		mu 0 3 615 835 255
		f 3 2283 -2236 2284
		mu 0 3 32 804 805
		f 3 -2285 2285 -201
		mu 0 3 32 805 44
		f 3 -2286 -2242 2286
		mu 0 3 44 805 815
		f 3 -2287 2287 -195
		mu 0 3 44 815 416
		f 3 2288 -334 2289
		mu 0 3 806 35 15
		f 3 -2289 -2216 2290
		mu 0 3 35 806 807
		f 3 2291 -328 -2291
		mu 0 3 807 150 35
		f 3 -2292 -2221 2292
		mu 0 3 150 807 817
		f 3 2293 -1711 -2043
		mu 0 3 789 808 251
		f 3 -2294 -2176 2294
		mu 0 3 808 789 859
		f 3 2295 -619 2296
		mu 0 3 864 809 861
		f 3 -2297 2297 -2174
		mu 0 3 864 861 810
		f 3 2298 2299 -2085
		mu 0 3 812 227 813
		f 3 -2299 -663 -1698
		mu 0 3 227 812 811
		f 3 2300 -2288 -2246
		mu 0 3 797 416 815
		f 3 -2301 -879 -264
		mu 0 3 416 797 814
		f 3 -2293 -2231 2301
		mu 0 3 150 817 795
		f 3 -2302 -923 -395
		mu 0 3 150 795 816
		f 3 2302 -2099 -964
		mu 0 3 801 819 818
		f 3 -2303 -2264 2303
		mu 0 3 819 801 827
		f 3 2304 -2107 2305
		mu 0 3 558 820 828
		f 3 -2306 2306 -445
		mu 0 3 558 828 372
		f 3 2307 -2103 2308
		mu 0 3 520 821 820
		f 3 -2309 -2305 -451
		mu 0 3 520 820 558
		f 3 2309 2310 -2273
		mu 0 3 822 824 823
		f 3 -2310 -2028 -2112
		mu 0 3 824 822 692
		f 3 2311 -2278 2312
		mu 0 3 826 825 823
		f 3 -2313 -2311 -2108
		mu 0 3 826 823 824
		f 3 -2304 -2270 2313
		mu 0 3 819 827 825
		f 3 -2314 -2312 -2104
		mu 0 3 819 825 826
		f 3 -2307 -2111 2314
		mu 0 3 372 828 780
		f 3 -1017 -515 -2315
		mu 0 3 780 829 372
		f 3 2315 -2119 2316
		mu 0 3 833 830 838
		f 3 -2317 2317 -2255
		mu 0 3 833 838 831
		f 3 2318 -2259 2319
		mu 0 3 832 833 904
		f 3 -2319 -2123 -2316
		mu 0 3 833 832 830
		f 3 2320 -2283 -2251
		mu 0 3 798 255 835
		f 3 -2321 -233 -121
		mu 0 3 255 798 834
		f 3 2321 2322 -2170
		mu 0 3 853 897 836
		f 3 -2322 2323 -2121
		mu 0 3 897 853 837
		f 3 -2318 -2115 2324
		mu 0 3 831 838 781
		f 3 -1036 -2249 -2325
		mu 0 3 781 799 831
		f 3 2325 -2284 -227
		mu 0 3 747 804 32
		f 3 -2326 -1063 -2235
		mu 0 3 804 747 796
		f 3 2326 -2131 2327
		mu 0 3 866 839 876
		f 3 -2328 2328 -2093
		mu 0 3 866 876 840
		f 3 2329 -2227 -2290
		mu 0 3 15 794 806
		f 3 -2330 -356 -1838
		mu 0 3 794 15 743
		f 3 2330 -2133 2331
		mu 0 3 841 842 872
		f 3 -2331 -1110 2332
		mu 0 3 842 841 889
		f 3 2333 2334 -2152
		mu 0 3 786 869 843
		f 3 -2334 -2032 -2154
		mu 0 3 869 786 710
		f 3 2335 -2188 2336
		mu 0 3 844 845 851
		f 3 -2336 -1128 2337
		mu 0 3 845 844 873
		f 3 2338 -1137 2339
		mu 0 3 893 846 895
		f 3 2340 -2200 -2340
		mu 0 3 895 847 893
		f 3 2341 -1146 2342
		mu 0 3 891 848 888
		f 3 -2343 2343 -2169
		mu 0 3 891 888 849
		f 3 2344 -2161 2345
		mu 0 3 850 851 856
		f 3 -2345 -1163 -2337
		mu 0 3 851 850 844
		f 3 2346 -2036 -2117
		mu 0 3 837 852 782
		f 3 -2324 -2164 -2347
		mu 0 3 837 853 852
		f 3 2347 -2157 -1178
		mu 0 3 854 856 855
		f 3 -2348 -1115 -2346
		mu 0 3 856 854 850
		f 3 2348 -2087 2349
		mu 0 3 860 857 776
		f 3 -2300 -1694 -2350
		mu 0 3 776 858 860
		f 3 2350 -1428 -2295
		mu 0 3 859 860 808
		f 3 -2351 -2172 -2349
		mu 0 3 860 859 857
		f 3 2351 -2089 -2298
		mu 0 3 861 777 810
		f 3 -2352 -623 2352
		mu 0 3 777 861 342
		f 3 2353 -2084 -2353
		mu 0 3 862 685 775
		f 3 -2354 -613 -1237
		mu 0 3 685 862 682
		f 3 2354 -2178 -549
		mu 0 3 863 864 788
		f 3 -2355 -661 -2296
		mu 0 3 864 863 809
		f 3 2355 -2080 2356
		mu 0 3 865 866 878
		f 3 -2356 -2135 -2327
		mu 0 3 866 865 839
		f 3 2357 -2185 -18
		mu 0 3 867 868 791
		f 3 -2358 -1168 2358
		mu 0 3 868 867 871
		f 3 2359 -2145 -2335
		mu 0 3 869 870 843
		f 3 -2360 -2159 2360
		mu 0 3 870 869 874;
	setAttr ".fc[1500:1677]"
		f 3 2361 -2137 -2359
		mu 0 3 871 872 868
		f 3 -2362 -1148 -2332
		mu 0 3 872 871 841
		f 3 2362 -1929 -2192
		mu 0 3 845 374 792
		f 3 -2363 -2338 -1185
		mu 0 3 374 845 873
		f 3 2363 -2149 -2361
		mu 0 3 874 875 870
		f 3 -2364 -2186 2364
		mu 0 3 875 874 882
		f 3 -2329 -2140 2365
		mu 0 3 840 876 784
		f 3 -2366 -1872 -2096
		mu 0 3 840 784 707
		f 3 2366 -2077 -2047
		mu 0 3 920 878 877
		f 3 -2367 -2184 -2357
		mu 0 3 878 920 865
		f 3 -529 -1126 2367
		mu 0 3 880 879 890
		f 3 -2368 2368 -2204
		mu 0 3 880 890 881
		f 3 2369 -2365 -2190
		mu 0 3 717 875 882
		f 3 -2370 -1919 -2182
		mu 0 3 875 717 702
		f 3 -1968 -1182 2370
		mu 0 3 884 883 892
		f 3 -2371 2371 -2212
		mu 0 3 884 892 885
		f 3 2372 -2196 2373
		mu 0 3 901 887 886
		f 3 -2374 -2050 -2275
		mu 0 3 901 886 772
		f 3 -2344 -1159 2374
		mu 0 3 849 888 714
		f 3 -2375 -15 -2166
		mu 0 3 849 714 715
		f 3 2375 -2333 -1122
		mu 0 3 711 842 889
		f 3 -2376 -1177 -2141
		mu 0 3 842 711 785
		f 3 -2369 -1175 2376
		mu 0 3 881 890 848
		f 3 -2377 -2342 -2208
		mu 0 3 881 848 891
		f 3 -2372 -1172 2377
		mu 0 3 885 892 846
		f 3 -2339 -2214 -2378
		mu 0 3 846 893 885
		f 3 2378 -2128 -2055
		mu 0 3 724 894 783
		f 3 -2379 -2203 2379
		mu 0 3 894 724 896
		f 3 2380 -2194 -2341
		mu 0 3 895 723 847
		f 3 -2381 -1154 -526
		mu 0 3 723 895 722
		f 3 2381 -2125 -2380
		mu 0 3 896 897 894
		f 3 -2382 -2207 -2323
		mu 0 3 897 896 836
		f 3 2382 -2265 -2062
		mu 0 3 729 899 898
		f 3 -2383 -2211 2383
		mu 0 3 899 729 902
		f 3 2384 -2201 2385
		mu 0 3 903 900 887
		f 3 -2373 -2277 -2386
		mu 0 3 887 901 903
		f 3 -2384 -2215 2386
		mu 0 3 899 902 900
		f 3 -2387 -2385 -2268
		mu 0 3 899 900 903
		f 3 2387 -2262 -2067
		mu 0 3 733 904 800
		f 3 -2388 -2127 -2320
		mu 0 3 904 733 832
		f 3 2388 -473 -2025
		mu 0 3 779 520 689
		f 3 -2389 -2097 -2308
		mu 0 3 520 779 821
		f 3 2389 -2261 -2279
		mu 0 3 131 765 802
		f 3 -2390 -75 -1982
		mu 0 3 765 131 760
		f 3 2390 -2219 2391
		mu 0 3 906 905 910
		f 3 -2391 -2142 2392
		mu 0 3 905 906 908
		f 3 2393 -2223 -2393
		mu 0 3 908 907 905
		f 3 -2394 -2147 2394
		mu 0 3 907 908 909
		f 3 -2070 -2229 2395
		mu 0 3 790 739 907
		f 3 -2395 -2181 -2396
		mu 0 3 907 909 790
		f 3 2396 -2153 -2392
		mu 0 3 910 787 906
		f 3 -2397 -2226 -2004
		mu 0 3 787 910 793
		f 3 2397 -2233 2398
		mu 0 3 916 912 911
		f 3 -2006 -2076 -2399
		mu 0 3 911 774 916
		f 3 2399 -2092 2400
		mu 0 3 915 914 917
		f 3 -2401 2401 -2243
		mu 0 3 915 917 913
		f 3 2402 -2238 -2398
		mu 0 3 916 915 912
		f 3 -2403 -2078 -2400
		mu 0 3 915 916 914
		f 3 2403 -2245 -2402
		mu 0 3 917 754 913
		f 3 -2404 -2095 -2073
		mu 0 3 754 917 778
		f 3 2404 -2155 -2045
		mu 0 3 784 855 710
		f 3 -2405 -2139 -1179
		mu 0 3 855 784 785
		f 3 2405 -681 -2037
		mu 0 3 852 712 697
		f 3 -2406 -2040 -2049
		mu 0 3 712 852 920
		f 3 -2052 -2059 2406
		mu 0 3 770 886 724
		f 3 -2054 -1969 -2407
		mu 0 3 724 730 770
		f 3 2407 2408 2409
		mu 0 3 921 947 922
		f 3 -2408 2410 2411
		mu 0 3 947 921 936
		f 3 2412 2413 2414
		mu 0 3 936 924 923
		f 3 -2413 -2411 2415
		mu 0 3 924 936 921
		f 3 2416 -2414 2417
		mu 0 3 926 937 925
		f 3 -2417 2418 2419
		mu 0 3 937 926 952
		f 3 2420 -2419 2421
		mu 0 3 943 952 926
		f 3 2422 2423 -2422
		mu 0 3 926 927 943
		f 3 2424 2425 2426
		mu 0 3 938 928 948
		f 3 -2425 2427 2428
		mu 0 3 928 938 929
		f 3 2429 -2426 2430
		mu 0 3 944 948 928
		f 3 -2431 2431 2432
		mu 0 3 944 928 930
		f 3 2433 2434 2435
		mu 0 3 931 938 939
		f 3 -2434 2436 -2428
		mu 0 3 938 931 929
		f 3 2437 -2436 2438
		mu 0 3 933 964 932
		f 3 2439 2440 -2439
		mu 0 3 932 950 933
		f 3 2441 2442 -2424
		mu 0 3 927 941 943
		f 3 -2442 2443 2444
		mu 0 3 941 927 934
		f 3 2445 -2445 2446
		mu 0 3 950 941 934
		f 3 -2447 2447 -2441
		mu 0 3 950 934 933
		f 3 2448 -2433 2449
		mu 0 3 945 944 930
		f 3 -2450 2450 2451
		mu 0 3 945 930 935
		f 3 2452 -2409 2453
		mu 0 3 945 922 947
		f 3 -2453 -2452 2454
		mu 0 3 922 945 935
		f 3 2455 -1806 2456
		mu 0 3 923 94 946
		f 3 2457 -2415 -2457
		mu 0 3 946 936 923
		f 3 2458 -2420 2459
		mu 0 3 293 937 952
		f 3 -2459 -1808 -2456
		mu 0 3 937 293 619
		f 3 2460 2461 -1524
		mu 0 3 940 948 209
		f 3 -2461 2462 -2427
		mu 0 3 948 940 938
		f 3 2463 -2463 -1528
		mu 0 3 384 938 940
		f 3 -2464 2464 -2435
		mu 0 3 938 384 939
		f 3 2465 -1815 2466
		mu 0 3 941 942 378
		f 3 -2466 -2446 2467
		mu 0 3 942 941 950
		f 3 2468 -1788 2469
		mu 0 3 943 378 951
		f 3 -2469 -2443 -2467
		mu 0 3 378 943 941
		f 3 2470 2471 -1579
		mu 0 3 949 945 452
		f 3 -2471 2472 -2449
		mu 0 3 945 949 944
		f 3 2473 2474 -1583
		mu 0 3 452 947 454
		f 3 -2474 -2472 -2454
		mu 0 3 947 452 945
		f 3 -1586 -2475 2475
		mu 0 3 946 454 947
		f 3 -2476 -2412 -2458
		mu 0 3 946 947 936
		f 3 2476 -2473 -1593
		mu 0 3 209 944 949
		f 3 -2477 -2462 -2430
		mu 0 3 944 209 948
		f 3 2477 -1811 -2468
		mu 0 3 950 221 942
		f 3 -2478 -2440 -2465
		mu 0 3 221 950 932
		f 3 2478 -2421 -2470
		mu 0 3 951 952 943
		f 3 -2479 -1793 -2460
		mu 0 3 952 951 293
		f 3 2479 -2418 2480
		mu 0 3 953 926 925
		f 3 2481 2482 -2429
		mu 0 3 929 955 928
		f 3 2483 2484 2485
		mu 0 3 959 956 958
		f 3 -2484 2486 -2451
		mu 0 3 956 959 957
		f 3 2487 -2487 2488
		mu 0 3 960 957 959
		f 3 -2488 2489 -2455
		mu 0 3 957 960 966
		f 3 2490 2491 -2410
		mu 0 3 922 965 921
		f 3 2492 -2483 2493
		mu 0 3 958 954 963
		f 3 -2485 -2432 -2493
		mu 0 3 958 956 954
		f 3 2494 2495 -2423
		mu 0 3 926 960 927
		f 3 -2495 -2480 2496
		mu 0 3 960 926 953
		f 3 2497 2498 -2444
		mu 0 3 927 959 934
		f 3 -2498 -2496 -2489
		mu 0 3 959 927 960
		f 3 2499 2500 -2448
		mu 0 3 934 958 933
		f 3 -2500 -2499 -2486
		mu 0 3 958 934 959
		f 3 2501 -2494 2502
		mu 0 3 964 958 963
		f 3 -2502 -2438 -2501
		mu 0 3 958 964 933
		f 3 -1880 -1967 -1973
		mu 0 3 727 726 884
		f 3 -1975 -2064 -539
		mu 0 3 727 729 728
		f 3 -1013 -2063 -474
		mu 0 3 767 766 898
		f 3 -998 -476 -968
		mu 0 3 768 767 801
		f 3 -437 -965 -1983
		mu 0 3 686 688 818
		f 3 -1985 -2024 -508
		mu 0 3 686 779 687
		f 3 -1054 -2056 -1058
		mu 0 3 732 731 783
		f 3 -1060 -2066 -141
		mu 0 3 732 733 762
		f 3 -2068 -1979 -78
		mu 0 3 763 800 764
		f 3 -1981 -153 -1978
		mu 0 3 765 761 764
		f 3 -1083 -2048 -1087
		mu 0 3 681 713 877
		f 3 -284 -1089 -2010
		mu 0 3 680 681 774
		f 3 -896 -2007 -900
		mu 0 3 746 745 911
		f 3 -871 -902 -1062
		mu 0 3 748 746 796
		f 3 -1105 -2033 -1841
		mu 0 3 705 704 786
		f 3 -416 -1843 -2003
		mu 0 3 741 705 787
		f 3 -940 -2005 -1833
		mu 0 3 742 740 793
		f 3 -1835 -1837 -915
		mu 0 3 742 794 744
		f 3 -406 -2071 2503
		mu 0 3 701 735 790
		f 3 -2504 -2180 -1839
		mu 0 3 701 790 702
		f 3 -917 -924 2504
		mu 0 3 738 737 795
		f 3 -2505 -2230 -1831
		mu 0 3 738 795 739
		f 3 -1920 2505 -299
		mu 0 3 109 918 719
		f 3 -2193 -1846 -2506
		mu 0 3 918 919 719
		f 3 -131 -1037 2506
		mu 0 3 695 758 781
		f 3 -2507 -2114 -1033
		mu 0 3 695 781 782
		f 3 -228 -234 2507
		mu 0 3 757 756 798
		f 3 -2508 -2250 -1976
		mu 0 3 757 798 799
		f 3 -981 -2029 2508
		mu 0 3 773 771 822
		f 3 -2509 -2272 -519
		mu 0 3 773 822 772
		f 3 -490 -1018 2509
		mu 0 3 693 690 780
		f 3 -2030 -2510 -2110
		mu 0 3 692 693 780
		f 3 -2492 -2481 -2416
		mu 0 3 921 965 924
		f 3 -2437 -2503 -2482
		mu 0 3 929 931 955
		f 3 -2490 -2497 -2491
		mu 0 3 966 960 953
		f 3 -1216 -664 -1986
		mu 0 3 684 631 812
		f 3 -1988 -1239 -1236
		mu 0 3 684 685 683
		f 3 -550 2510 -1225
		mu 0 3 699 788 402
		f 3 -2177 -1223 -2511
		mu 0 3 788 789 402
		f 3 2511 -1725 -1830
		mu 0 3 562 26 643
		f 3 -2512 2512 -1462
		mu 0 3 26 562 365
		f 3 -2513 -1740 -1443
		mu 0 3 365 562 280
		f 3 2513 2514 -1467
		mu 0 3 298 331 60
		f 3 -2514 -1463 -1724
		mu 0 3 331 298 463
		f 3 2515 -1800 -1727
		mu 0 3 60 664 643
		f 3 2516 -1672 -2516
		mu 0 3 60 489 664
		f 3 -2515 -1738 -2517
		mu 0 3 60 331 489;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Left_Hand";
	rename -uid "4324A6D3-4328-86D7-995C-518C9AF03231";
createNode transform -n "Controls" -p "Left_Hand";
	rename -uid "665ACD92-44E6-0ABA-E1F2-42BAE8F25829";
createNode transform -n "COG_ctrl_grp" -p "|Left_Hand|Controls";
	rename -uid "9622A5E3-4A9A-6170-58E5-84806D4BA7C0";
	setAttr ".t" -type "double3" -2.2768974305753531e-05 0.00048780441284179688 -0.00037670135498046875 ;
	setAttr ".r" -type "double3" 85.662532054597207 104.34807247359534 7.0240588477041666 ;
	setAttr ".rp" -type "double3" 1.7749999761581436 4.9010000228881836 -7.1700000762939453 ;
	setAttr ".sp" -type "double3" 1.7749999761581436 4.9010000228881836 -7.1700000762939453 ;
createNode transform -n "COG_ctrl" -p "|Left_Hand|Controls|COG_ctrl_grp";
	rename -uid "29DEC4F0-4178-932F-18AF-94AA15251F44";
	setAttr ".t" -type "double3" 0 15.178 0 ;
	setAttr ".rp" -type "double3" 1.7749999761581436 4.9010000228881836 -7.1700000762939453 ;
	setAttr ".sp" -type "double3" 1.7749999761581436 4.9010000228881836 -7.1700000762939453 ;
createNode nurbsCurve -n "COG_ctrlShape" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl";
	rename -uid "BB5A7870-4ECE-C996-4110-B98D58295AC9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.70253599219707241 7.8294142879260393 -9.5925815656583708
		0.76477047338935522 5.1417046875451149 -10.001330412112413
		1.0725302517487949 2.4504232399861663 -10.092282997469965
		1.9685325140583216 1.1536409464443933 -7.6218161618622622
		2.7112781360613027 2.0849096968428045 -4.9443662160609003
		2.6107301419112972 4.7673222055110793 -4.5333452840979955
		2.341283876509578 7.4639007447826806 -4.4446647842493059
		1.4452816142000591 8.7606830383244318 -6.9151316198570365
		0.70253599219707241 7.8294142879260393 -9.5925815656583708
		0.76477047338935522 5.1417046875451149 -10.001330412112413
		1.0725302517487949 2.4504232399861663 -10.092282997469965
		;
createNode transform -n "pinky_01_ctrl_grp" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl";
	rename -uid "5ACB6426-48E5-5174-4C4D-47805EC2B197";
	setAttr ".t" -type "double3" -5.9700478730843027 2.6043922925582992 -1.3338670624991904 ;
	setAttr ".r" -type "double3" -56.85356334226875 3.6698983085436629 -13.310456210676996 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 4.6178975520775269 4.2034108614334018 -4.6853739128807552 ;
	setAttr ".sp" -type "double3" 4.6178975520775269 4.2034108614334018 -4.6853739128807552 ;
createNode transform -n "pinky_01_ctrl" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp";
	rename -uid "74D4908D-4006-22A0-35EC-3AB9A935CFAB";
	setAttr ".rp" -type "double3" 4.6178975520775269 4.2034108614334018 -4.6853739128807552 ;
	setAttr ".sp" -type "double3" 4.6178975520775269 4.2034108614334018 -4.6853739128807552 ;
createNode nurbsCurve -n "pinky_01_ctrlShape" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl";
	rename -uid "199144F1-4977-DAE0-F7AF-DD8BDB45E099";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2060915319698293 4.6297617036380663 -3.1055716599360541
		3.901680566737026 4.5499459279769754 -2.9169916760065804
		5.5729848932048043 5.0215228017225879 -3.0725972078879877
		6.2409771037811419 5.7682489879362144 -3.4812366453844525
		5.5143564210700342 6.3527024141130699 -3.9035345481310029
		3.8187673863028104 6.432518189774143 -4.0921145320604868
		2.147463059835049 5.9609413160285367 -3.9365090001790848
		1.4794708492586854 5.2142151298149075 -3.5278695626826266
		2.2060915319698293 4.6297617036380663 -3.1055716599360541
		3.901680566737026 4.5499459279769754 -2.9169916760065804
		5.5729848932048043 5.0215228017225879 -3.0725972078879877
		;
createNode transform -n "pinky_02_ctrl_grp" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl";
	rename -uid "DBD2A04D-4DDC-020E-D33D-BC82F2D25E12";
	setAttr ".t" -type "double3" -7.9010346392138464 -0.024662493209392622 -4.8612243609842558 ;
	setAttr ".r" -type "double3" 0.51295428684049627 -2.2420999580064596 -166.50804062291363 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 7.1618674673228622 4.471913348715713 0.029546451659753892 ;
	setAttr ".sp" -type "double3" 7.1618674673228622 4.471913348715713 0.029546451659753892 ;
createNode transform -n "pinky_02_ctrl" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp";
	rename -uid "66356D16-461E-3AE8-28AA-B198D53B41C1";
	setAttr ".rp" -type "double3" 7.1618674673228622 4.471913348715713 0.029546451659753892 ;
	setAttr ".sp" -type "double3" 7.1618674673228622 4.471913348715713 0.029546451659753892 ;
createNode nurbsCurve -n "pinky_02_ctrlShape" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl";
	rename -uid "55B147B6-4986-B857-EC30-4AB0C0BE3B94";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.56583634730928 3.2903251998899119 -0.39110668846675395
		7.5110697218897657 3.1645042973508577 -0.69693953560683974
		8.5025164145384515 3.1500277381458783 -0.55674450289913957
		8.9594003990717024 3.2553756943207546 -0.052645939126494651
		8.614085233780985 3.4188367619165283 0.52006205382588
		7.6688518592005011 3.5446576644555785 0.82589490096596152
		6.677405166551825 3.5591342236605614 0.6856998682582649
		6.2205211820185768 3.4537862674856834 0.18160130448562262
		6.56583634730928 3.2903251998899119 -0.39110668846675395
		7.5110697218897657 3.1645042973508577 -0.69693953560683974
		8.5025164145384515 3.1500277381458783 -0.55674450289913957
		;
createNode transform -n "pinky_03_ctrl_grp" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl";
	rename -uid "7912C412-4E1B-E1DE-C571-818E4B03D989";
	setAttr ".t" -type "double3" 1.9234959695669254 0.77735644356261524 -2.9202427664153059 ;
	setAttr ".r" -type "double3" 0 0 18.94593592861121 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
	setAttr ".rp" -type "double3" 8.573966628676347 3.6945569051531093 2.9497892180750438 ;
	setAttr ".sp" -type "double3" 8.573966628676347 3.6945569051531093 2.9497892180750438 ;
createNode transform -n "pinky_03_ctrl" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp";
	rename -uid "DB16D6C6-4A96-E885-5360-83B81461B13C";
	setAttr ".rp" -type "double3" 8.573966628676347 3.6945569051531093 2.9497892180750438 ;
	setAttr ".sp" -type "double3" 8.573966628676347 3.6945569051531093 2.9497892180750438 ;
createNode nurbsCurve -n "pinky_03_ctrlShape" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl";
	rename -uid "6B82150C-49FB-8B98-0CC6-C8AD0815DACE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		8.6367695944473653 4.1569579005317356 1.8950957697383359
		8.5140094026326043 3.3179515906610497 1.915079912262065
		8.426371340671956 2.7390877076760418 2.5287876551828821
		8.425192596681919 2.7594568634613936 3.3767173260311436
		8.511163662905286 3.3671270828121314 3.9621632235625004
		8.6339238547200612 4.2061333926828208 3.9421790810387658
		8.7215619166806881 4.7849972756678332 3.3284713381179531
		8.722740660670711 4.7646281198824809 2.4805416672696921
		8.6367695944473653 4.1569579005317356 1.8950957697383359
		8.5140094026326043 3.3179515906610497 1.915079912262065
		8.426371340671956 2.7390877076760418 2.5287876551828821
		;
createNode transform -n "pinky_04_ctrl_grp" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl";
	rename -uid "3AF2F568-4380-FBAE-7C1E-1BBEC0988833";
	setAttr ".t" -type "double3" 1.2851797351532639 0.89534193957384511 -1.4226220787034554 ;
	setAttr ".r" -type "double3" 0 0 5.3870980398218737 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 9.0306092554691908 2.7992149655792757 4.3724112967785072 ;
	setAttr ".sp" -type "double3" 9.0306092554691908 2.7992149655792757 4.3724112967785072 ;
createNode transform -n "pinky_04_ctrl" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp";
	rename -uid "90607E35-46EA-2971-0F48-D994A57C195A";
	setAttr ".rp" -type "double3" 9.0306092554691908 2.7992149655792757 4.3724112967785072 ;
	setAttr ".sp" -type "double3" 9.0306092554691908 2.7992149655792757 4.3724112967785072 ;
createNode nurbsCurve -n "pinky_04_ctrlShape" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp|pinky_04_ctrl";
	rename -uid "6CA8A61F-42C2-1FAD-ADF2-8AB93D8ADD2E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		9.0292119515946592 3.068371541727041 3.2974009980428876
		9.06955719415045 2.2303897797875676 3.422140112636411
		9.0870872624532151 1.725618097065468 4.1035351989680064
		9.0715332802405459 1.849744899397483 4.9424342567990518
		9.0320065593437242 2.5300583894315185 5.4474215955141281
		8.9916613167879387 3.3680401513709901 5.3226824809206104
		8.974131248485163 3.8728118340930853 4.6412873945889936
		8.9896852306978339 3.7486850317610632 3.8023883367579572
		9.0292119515946592 3.068371541727041 3.2974009980428876
		9.06955719415045 2.2303897797875676 3.422140112636411
		9.0870872624532151 1.725618097065468 4.1035351989680064
		;
createNode transform -n "ring_01_ctrl_grp" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl";
	rename -uid "1C670B70-42B6-FA42-E11F-8FB0EA7FD8BE";
	setAttr ".t" -type "double3" -12.443677014270381 0.70428823993736067 -8.5102196604254967 ;
	setAttr ".r" -type "double3" 70.245162519143975 -11.619163238915975 176.1844959591497 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 5.2655033530383815 5.4681097312159022 1.1548869282248706 ;
	setAttr ".sp" -type "double3" 5.2655033530383815 5.4681097312159022 1.1548869282248706 ;
createNode transform -n "ring_01_ctrl" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp";
	rename -uid "3A51BCA2-4352-ABDC-2D81-DC9D2BAAFCDA";
	setAttr ".rp" -type "double3" 5.2655033530383815 5.4681097312159022 1.1548869282248706 ;
	setAttr ".sp" -type "double3" 5.2655033530383815 5.4681097312159022 1.1548869282248706 ;
createNode nurbsCurve -n "ring_01_ctrlShape" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl";
	rename -uid "22E8D290-4131-D6DF-556B-8DB36FC4881A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.494194907964979 4.1591328178269631 0.50744671170810196
		5.5281777002623631 4.1110730313229693 0.33861259630603635
		6.5304041828259285 4.1514947110079463 0.64495110487001217
		6.9137836747394203 4.2567193851363365 1.2470132937603906
		6.4537376691756299 4.3651078667000105 1.7921192981172258
		5.4197548768782475 4.4131676532039998 1.9609534135192881
		4.4175283943146848 4.3727459735190228 1.6546149049553078
		4.0341489024011938 4.267521299390638 1.0525527160649317
		4.494194907964979 4.1591328178269631 0.50744671170810196
		5.5281777002623631 4.1110730313229693 0.33861259630603635
		6.5304041828259285 4.1514947110079463 0.64495110487001217
		;
createNode transform -n "ring_02_ctrl_grp" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl";
	rename -uid "C1BD32F5-4C72-7849-5534-0084004FF031";
	setAttr ".t" -type "double3" 2.4862355424887417 0.65570213067498706 -3.5452053038194791 ;
	setAttr ".r" -type "double3" 0 0 23.413729097573611 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 6.6364703404568646 4.812407600540916 4.7000922320443586 ;
	setAttr ".sp" -type "double3" 6.6364703404568646 4.812407600540916 4.7000922320443586 ;
createNode transform -n "ring_02_ctrl" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp";
	rename -uid "0AD2ED8E-4F5B-6481-E8C6-69BF454CA5C7";
	setAttr ".rp" -type "double3" 6.6364703404568646 4.812407600540916 4.7000922320443586 ;
	setAttr ".sp" -type "double3" 6.6364703404568646 4.812407600540916 4.7000922320443586 ;
createNode nurbsCurve -n "ring_02_ctrlShape" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl";
	rename -uid "11A02315-439C-4D3D-C5AD-BBA40DE3D743";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.7772043577387677 5.6700248140088698 3.7756747953230017
		6.5465124418779812 4.8277180468661731 3.548279219895619
		6.328227146319799 4.0805458603274074 4.0048900510722456
		6.2502170367355783 3.8661915878390194 4.8780308566760624
		6.3581793773175486 4.3102210550720939 5.6562275946457268
		6.5888712931783333 5.1525278222147906 5.8836231700731192
		6.8071565887365164 5.8997000087535563 5.4270123388964828
		6.8851666983207398 6.1140542812419438 4.5538715332926687
		6.7772043577387677 5.6700248140088698 3.7756747953230017
		6.5465124418779812 4.8277180468661731 3.548279219895619
		6.328227146319799 4.0805458603274074 4.0048900510722456
		;
createNode transform -n "ring_03_ctrl_grp" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl";
	rename -uid "0920A45F-4F97-F058-573D-D8A0D5EAE00A";
	setAttr ".t" -type "double3" 1.9325557989940902 1.4014803133222404 -2.0648385700699308 ;
	setAttr ".r" -type "double3" 0 0 9.6305628959719538 ;
	setAttr ".rp" -type "double3" 7.2814437334335986 3.4109272872186693 6.7649308021142787 ;
	setAttr ".sp" -type "double3" 7.2814437334335986 3.4109272872186693 6.7649308021142787 ;
createNode transform -n "ring_03_ctrl" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp";
	rename -uid "2DD30942-4648-75AE-9092-27A058B89755";
	setAttr ".rp" -type "double3" 7.2814437334335986 3.4109272872186693 6.7649308021142787 ;
	setAttr ".sp" -type "double3" 7.2814437334335986 3.4109272872186693 6.7649308021142787 ;
createNode nurbsCurve -n "ring_03_ctrlShape" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp|ring_03_ctrl";
	rename -uid "E78B566A-45DC-440D-30C3-05B25D076CA0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.3893371300153046 4.0635827843151144 5.8758334090165505
		7.2965729717038643 3.2462227906187935 5.6691489386585756
		7.1949463108020719 2.5253444572468391 6.1043586225104933
		7.1439886669675214 2.3232285350676474 6.9265225302479525
		7.1735503368519105 2.7582717901222344 7.6540281952120166
		7.2663144951633587 3.5756317838185647 7.8607126655699897
		7.3679411560651449 4.2965101171905067 7.4255029817180684
		7.4188987998996963 4.4986260393697037 6.6033390739806119
		7.3893371300153046 4.0635827843151144 5.8758334090165505
		7.2965729717038643 3.2462227906187935 5.6691489386585756
		7.1949463108020719 2.5253444572468391 6.1043586225104933
		;
createNode transform -n "middle_01_ctrl_grp" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl";
	rename -uid "488BAE05-4EC3-9AF7-DE8C-87A332B8C1E8";
	setAttr ".t" -type "double3" -10.401138411714197 -1.9546041281764763 -10.198467806155396 ;
	setAttr ".r" -type "double3" 80.801820648086547 -8.948405849624713 -175.43963324777016 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 3.033905492974875 5.9023886116092505 1.9445896895477297 ;
	setAttr ".sp" -type "double3" 3.033905492974875 5.9023886116092505 1.9445896895477297 ;
createNode transform -n "middle_01_ctrl" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp";
	rename -uid "919A4AB1-4358-CF02-9556-689F74C49335";
	setAttr ".rp" -type "double3" 3.033905492974875 5.9023886116092505 1.9445896895477297 ;
	setAttr ".sp" -type "double3" 3.033905492974875 5.9023886116092505 1.9445896895477297 ;
createNode nurbsCurve -n "middle_01_ctrlShape" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl";
	rename -uid "02462554-4898-8063-7CDD-4BA1C7A12D85";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.3979890177718959 4.7789003484575012 2.5275296376854088
		3.3565514909616652 4.8029418437015838 2.6552277331941374
		2.3569565424334056 4.7995073421806707 2.3354230077524711
		1.9847533361553353 4.7706087283057226 1.7554527322131428
		2.4579734624063927 4.7331744181509041 1.2550556282138283
		3.4994109892166185 4.7091329229068242 1.1273575327051055
		4.4990059377448803 4.7125674244277338 1.4471622581467682
		4.8712091440229655 4.7414660383026801 2.0271325336860926
		4.3979890177718959 4.7789003484575012 2.5275296376854088
		3.3565514909616652 4.8029418437015838 2.6552277331941374
		2.3569565424334056 4.7995073421806707 2.3354230077524711
		;
createNode transform -n "middle_02_ctrl_grp" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl";
	rename -uid "35C5FA22-4CDD-F5AA-06F5-D2A39D9EE54A";
	setAttr ".t" -type "double3" 3.6203286287181387 0.70764443339630834 -4.4357102294367117 ;
	setAttr ".r" -type "double3" 0 0 27.251855362361077 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 4.01031949426162 5.1947441782129582 6.3802999189844503 ;
	setAttr ".sp" -type "double3" 4.01031949426162 5.1947441782129582 6.3802999189844503 ;
createNode transform -n "middle_02_ctrl" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp";
	rename -uid "90DC51AD-4292-C3A1-CDD3-98A80B3ECDEB";
	setAttr ".rp" -type "double3" 4.01031949426162 5.1947441782129582 6.3802999189844503 ;
	setAttr ".sp" -type "double3" 4.01031949426162 5.1947441782129582 6.3802999189844503 ;
createNode nurbsCurve -n "middle_02_ctrlShape" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl";
	rename -uid "AEDE4264-45E4-A38A-FF17-72BCE323DEB6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.3633218340575795 6.3427916386380332 5.5396689343429282
		4.0643319983705668 5.5300213572905443 5.1225260728992081
		3.7189356317019477 4.6907050346972481 5.4391458440125389
		3.5294612412518198 4.3165027895121799 6.3040566798801922
		3.6069003552234875 4.6266172218942883 7.2106055430943465
		3.9058901909105099 5.4393875032417744 7.6277484045380719
		4.2512865575791201 6.2787038258350751 7.3111286334247438
		4.4407609480292498 6.6529060710201415 6.4462177975570878
		4.3633218340575795 6.3427916386380332 5.5396689343429282
		4.0643319983705668 5.5300213572905443 5.1225260728992081
		3.7189356317019477 4.6907050346972481 5.4391458440125389
		;
createNode transform -n "middle_03_ctrl_grp" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl";
	rename -uid "931C51FE-40D1-32B3-A06C-77AF080F71EA";
	setAttr ".t" -type "double3" 2.3849556536104606 1.7423919502809024 -2.3217008308066696 ;
	setAttr ".r" -type "double3" 0 0 7.5427697090752792 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
	setAttr ".rp" -type "double3" 4.58442355592216 3.4523522279320602 8.7020007497911216 ;
	setAttr ".sp" -type "double3" 4.58442355592216 3.4523522279320602 8.7020007497911216 ;
createNode transform -n "middle_03_ctrl" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp";
	rename -uid "AE76817D-42FC-D23D-8E2B-A7A71075AC82";
	setAttr ".rp" -type "double3" 4.58442355592216 3.4523522279320602 8.7020007497911216 ;
	setAttr ".sp" -type "double3" 4.58442355592216 3.4523522279320602 8.7020007497911216 ;
createNode nurbsCurve -n "middle_03_ctrlShape" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp|middle_03_ctrl";
	rename -uid "0FA8D61D-4A7A-1FF7-3A62-0DBB311651FC";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.6434926659761526 4.4721028583356173 7.9323141762139091
		4.5508819190926992 3.6648500620632753 7.5534664109307919
		4.467301741473479 2.8265215899883018 7.8600266555898148
		4.4417122676222718 2.448198891328683 8.672416076554132
		4.4891034642671261 2.7514982720056493 9.5147479689512835
		4.5817142111505653 3.5587510682779757 9.8935957342344025
		4.6652943887697926 4.3970795403529568 9.5870354895753778
		4.6908838626210105 4.7754022390125765 8.7746460686110623
		4.6434926659761526 4.4721028583356173 7.9323141762139091
		4.5508819190926992 3.6648500620632753 7.5534664109307919
		4.467301741473479 2.8265215899883018 7.8600266555898148
		;
createNode transform -n "index_01_ctrl_grp" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl";
	rename -uid "0FAC5757-4B86-F0D2-6DE1-11ADB6739D28";
	setAttr ".t" -type "double3" -7.5174362895938902 -3.5956024700489415 -10.01872731399709 ;
	setAttr ".r" -type "double3" -85.610317742900776 -167.2277446204231 13.54740486247708 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 0.58456578235358991 4.9866113239612977 2.1673308725374376 ;
	setAttr ".sp" -type "double3" 0.58456578235358991 4.9866113239612977 2.1673308725374376 ;
createNode transform -n "index_01_ctrl" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp";
	rename -uid "10CCEDA3-4537-66C8-EF9E-59A9E3677E62";
	setAttr ".rp" -type "double3" 0.58456578235358991 4.9866113239612977 2.1673308725374376 ;
	setAttr ".sp" -type "double3" 0.58456578235358991 4.9866113239612977 2.1673308725374376 ;
createNode nurbsCurve -n "index_01_ctrlShape" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl";
	rename -uid "4317FEA1-498C-06F1-4F6D-C1BE1B45ADC9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.0958964763394707 3.5861690635837773 2.8774138019901949
		1.1207058205268476 3.5590541631319041 3.1704030507535705
		0.11474203902685837 3.5762233623049431 3.0112904434224781
		-0.33271492821393267 3.6276191770824102 2.4932819874269434
		0.040449141635806721 3.6831346362168782 1.9198200108651806
		1.0156397974484321 3.7102495366687505 1.6268307621018074
		2.0216035789484197 3.6930803374957151 1.7859433694328934
		2.4690605461892061 3.6416845227182524 2.303951825428439
		2.0958964763394707 3.5861690635837773 2.8774138019901949
		1.1207058205268476 3.5590541631319041 3.1704030507535705
		0.11474203902685837 3.5762233623049431 3.0112904434224781
		;
createNode transform -n "index_02_ctrl_grp" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl";
	rename -uid "9EA0B253-4921-AF65-E53D-D589D731B0AB";
	setAttr ".t" -type "double3" 3.8488045010663692 1.0347026381337301 -4.014826524669088 ;
	setAttr ".r" -type "double3" 0 0 21.467660362608623 ;
	setAttr ".rp" -type "double3" 0.89323341492369401 3.9519086858275676 6.1821573972065353 ;
	setAttr ".sp" -type "double3" 0.89323341492369401 3.9519086858275676 6.1821573972065353 ;
createNode transform -n "index_02_ctrl" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp";
	rename -uid "3B9C92D1-4BCE-9B40-4427-C480ABA6D036";
	setAttr ".rp" -type "double3" 0.89323341492369401 3.9519086858275676 6.1821573972065353 ;
	setAttr ".sp" -type "double3" 0.89323341492369401 3.9519086858275676 6.1821573972065353 ;
createNode nurbsCurve -n "index_02_ctrlShape" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl";
	rename -uid "D040A40C-409D-D311-FFC5-7C99529447AD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.2085686949909562 5.1530890918357732 5.5360303721106723
		0.96683188184542146 4.4327487963466767 4.9394643751658567
		0.70323709326633377 3.5104361502091228 5.0538102848195665
		0.57219458143243573 2.9264293927822718 5.8120858179985495
		0.65046727252860559 3.0228317620492393 6.7701034513822602
		0.89220408567414033 3.7431720575383354 7.3666694483271016
		1.155798874253231 4.665484703675892 7.252323538673382
		1.2868413860871111 5.2494914611027408 6.4940480054943865
		1.2085686949909562 5.1530890918357732 5.5360303721106723
		0.96683188184542146 4.4327487963466767 4.9394643751658567
		0.70323709326633377 3.5104361502091228 5.0538102848195665
		;
createNode transform -n "index_03_ctrl_grp" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl";
	rename -uid "BF25D526-4246-E395-21FF-F197EE2BBE43";
	setAttr ".t" -type "double3" 1.8506506499312771 1.2668907829678435 -1.7803216510915201 ;
	setAttr ".r" -type "double3" 0 0 6.8332348324259016 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 1.2578833249899763 2.6850179028597303 7.9624790482980563 ;
	setAttr ".sp" -type "double3" 1.2578833249899763 2.6850179028597303 7.9624790482980563 ;
createNode transform -n "index_03_ctrl" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp";
	rename -uid "4DDB1EF4-4927-198A-7A79-FDBEFADC56C3";
	setAttr ".rp" -type "double3" 1.2578833249899763 2.6850179028597303 7.9624790482980563 ;
	setAttr ".sp" -type "double3" 1.2578833249899763 2.6850179028597303 7.9624790482980563 ;
createNode nurbsCurve -n "index_03_ctrlShape" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl";
	rename -uid "6D97A00A-43F2-8306-27F0-57B1D9EA5E9B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.3800706787935435 3.6749131330598424 7.2095921786323522
		1.3664299871749033 2.8931023918864893 6.7811705133575968
		1.3533033666454224 2.0373547223804112 7.0311362004569888
		1.3483802134831602 1.6089555033691165 7.8130627305556581
		1.3545444440409322 1.8588551872393717 8.6689081471011029
		1.368185135659572 2.6406659284127265 9.0973298123758752
		1.3813117561890502 3.4964135979188002 8.8473641252764708
		1.3862349093512969 3.9248128169300855 8.0654375951778015
		1.3800706787935435 3.6749131330598424 7.2095921786323522
		1.3664299871749033 2.8931023918864893 6.7811705133575968
		1.3533033666454224 2.0373547223804112 7.0311362004569888
		;
createNode transform -n "thumb_01_ctrl_grp" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl";
	rename -uid "C9E0E261-4859-4493-0A76-7A90D27A31FF";
	setAttr ".t" -type "double3" 0.19849990510054094 -1.3350630067283007 -1.470057161414255 ;
	setAttr ".r" -type "double3" -2.7972880372688675 -155.26694927546552 29.790557103969274 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
	setAttr ".rp" -type "double3" -1.0533405413538983 2.0890331529075019 -3.6435280722740941 ;
	setAttr ".sp" -type "double3" -1.0533405413538983 2.0890331529075019 -3.6435280722740941 ;
createNode transform -n "thumb_01_ctrl" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp";
	rename -uid "AA6CDFF8-46CB-747C-CFE0-DAA36E1D3FD3";
	setAttr ".rp" -type "double3" -1.0533405413538983 2.0890331529075019 -3.6435280722740941 ;
	setAttr ".sp" -type "double3" -1.0533405413538983 2.0890331529075019 -3.6435280722740941 ;
createNode nurbsCurve -n "thumb_01_ctrlShape" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl";
	rename -uid "12D65B5F-4CAC-49E6-1684-4D8D10582277";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.883375848070016 1.0005386165291097 -2.2365279437169123
		-2.19414185678826 1.0476012323245594 -1.3713327403144409
		-1.3816225948840453 0.56745922949237071 -2.1209073325444514
		-0.85681739912331079 0.53585749954896389 -3.8708883680756325
		-0.88958151839178146 1.372929918668961 -5.4948000236741796
		-1.4982906931682431 2.1867088050520982 -6.1427375421015658
		-2.3913347715777586 1.8060093057056972 -5.6104206348466477
		-2.9806172171168308 1.1483242422805406 -4.0344006044855947
		-2.883375848070016 1.0005386165291097 -2.2365279437169123
		-2.19414185678826 1.0476012323245594 -1.3713327403144409
		-1.3816225948840453 0.56745922949237071 -2.1209073325444514
		;
createNode transform -n "thumb_02_ctrl_grp" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl";
	rename -uid "61FE0FD3-4ACF-4F30-E2BB-58A0A4D3FA5D";
	setAttr ".t" -type "double3" 3.7111362200384281 1.59455600782291 -2.805534544428022 ;
	setAttr ".r" -type "double3" 0 0 16.367705922993007 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
	setAttr ".rp" -type "double3" -1.5056526513611983 0.49447714508459506 -0.83799352784607084 ;
	setAttr ".sp" -type "double3" -1.5056526513611983 0.49447714508459506 -0.83799352784607084 ;
createNode transform -n "thumb_02_ctrl" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp";
	rename -uid "D23F8D69-4BFA-1293-7EDF-AC84B335170C";
	setAttr ".rp" -type "double3" -1.5056526513611983 0.49447714508459506 -0.83799352784607084 ;
	setAttr ".sp" -type "double3" -1.5056526513611983 0.49447714508459506 -0.83799352784607084 ;
createNode nurbsCurve -n "thumb_02_ctrlShape" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl";
	rename -uid "94ABD014-41D9-D354-8620-88B2227F934A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.1723439611736519 -0.31394362121042746 0.40374648849156664
		-2.3532623802785562 -0.26473853371427453 0.89896139091269789
		-1.6365125520039947 -0.62465700468825647 0.37428820282583991
		-1.3821339194182274 -0.88906902975566693 -0.84283252167121081
		-1.6487445676621344 -0.45915657893247225 -2.0090653940371186
		-2.370561062717456 -0.030685587031924755 -2.4716095897015991
		-3.1845759768317925 -0.14844319545464296 -1.9796071083713904
		-3.5541275277845443 -0.44965394883048976 -0.80117221455847643
		-3.1723439611736519 -0.31394362121042746 0.40374648849156664
		-2.3532623802785562 -0.26473853371427453 0.89896139091269789
		-1.6365125520039947 -0.62465700468825647 0.37428820282583991
		;
createNode transform -n "thumb_03_ctrl_grp" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl";
	rename -uid "CF15182B-4797-6082-DD6F-CFA69CBCA1BB";
	setAttr ".t" -type "double3" 2.2729801484832226 1.1340016837594444 -2.3532676172945757 ;
	setAttr ".r" -type "double3" 0 0 -0.99933649539848723 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999944 ;
	setAttr ".rp" -type "double3" -1.1414791743561403 -0.63952453867483361 1.5152740894484951 ;
	setAttr ".sp" -type "double3" -1.1414791743561403 -0.63952453867483361 1.5152740894484951 ;
createNode transform -n "thumb_03_ctrl" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp";
	rename -uid "15CA7D7E-470F-D87F-4BA8-38A7FA002617";
	setAttr ".rp" -type "double3" -1.1414791743561403 -0.63952453867483361 1.5152740894484951 ;
	setAttr ".sp" -type "double3" -1.1414791743561403 -0.63952453867483361 1.5152740894484951 ;
createNode nurbsCurve -n "thumb_03_ctrlShape" -p "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp|thumb_03_ctrl";
	rename -uid "9A424C5F-4114-ECFF-A5AF-96A3DBCE4982";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.72337156725325857 -1.7921719853382949 2.3599761937039654
		-0.73453020832133264 -0.83523007932533599 3.0637782284512229
		-0.82893988888280556 0.33581324941256446 2.8878692596539417
		-0.95129669848408049 1.034976701027279 1.9352943754905085
		-1.0299256775094316 0.85269980787848842 0.76405902392787584
		-1.0187670364413586 -0.10424209813447062 0.060256989180617226
		-0.92435735587988288 -1.2752854268723719 0.23616595797789877
		-0.80200054627860939 -1.9744488784870859 1.1887408421413335
		-0.72337156725325857 -1.7921719853382949 2.3599761937039654
		-0.73453020832133264 -0.83523007932533599 3.0637782284512229
		-0.82893988888280556 0.33581324941256446 2.8878692596539417
		;
createNode transform -n "Transform_ctrl_grp" -p "|Left_Hand|Controls";
	rename -uid "2F58FAC4-42F7-4601-957B-5EB3E49D7AC3";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1.7749999761581421 4.9010000228881836 -7.1700000762939453 ;
	setAttr ".sp" -type "double3" 1.7749999761581421 4.9010000228881836 -7.1700000762939453 ;
createNode transform -n "Transform_ctrl" -p "|Left_Hand|Controls|Transform_ctrl_grp";
	rename -uid "1D9AB395-44CE-29C6-0311-8E8A88759404";
	setAttr ".rp" -type "double3" 1.7749999761581421 4.9010000228881836 -7.1700000762939453 ;
	setAttr ".sp" -type "double3" 1.7749999761581421 4.9010000228881836 -7.1700000762939453 ;
createNode nurbsCurve -n "Transform_ctrlShape" -p "|Left_Hand|Controls|Transform_ctrl_grp|Transform_ctrl";
	rename -uid "D5C4F503-4009-87D2-36B2-1A82231C0873";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.1986309566758377 2.1934190350575937 -9.9938911664531958
		5.102187147052474 4.6265978014601385 -9.7263992731265105
		4.7866708794393018 7.5643218526170592 -8.7853021068814137
		2.4369073042547629 9.2857122818702607 -7.721881624193391
		-0.5706439445283098 8.7824019219024692 -7.1590751213157464
		-2.4742001349049536 6.3492231554999181 -7.4265670146424334
		-2.1586838672917694 3.4114991043429987 -8.3676641808875338
		0.19107970789275397 1.6901086750898 -9.4310846635755556
		3.1986309566758377 2.1934190350575937 -9.9938911664531958
		5.102187147052474 4.6265978014601385 -9.7263992731265105
		4.7866708794393018 7.5643218526170592 -8.7853021068814137
		;
createNode transform -n "Skeleton" -p "Left_Hand";
	rename -uid "FB0D49AD-4AE1-A8F5-F574-B89CA48DEC25";
createNode joint -n "hands:b_l_hand" -p "|Left_Hand|Skeleton";
	rename -uid "E12DD2A3-4971-6BD6-408D-8AB38AF1349B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 85.662532054597222 104.34807247359537 7.0240588477041923 ;
	setAttr ".pa" -type "double3" 1.7493050748049341e-14 1.5902773407317587e-14 -9.5416640443905503e-15 ;
	setAttr ".bps" -type "matrix" -0.245952 -0.030304000000000001 -0.968808 0 0.94953500000000002 0.19319600000000001 -0.24710199999999999 0
		 0.194658 -0.98069200000000001 -0.018742200000000001 0 1.774977 4.9014879999999996 -7.1703770000000002 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_l_hand_ignore" -p "hands:b_l_hand";
	rename -uid "C3436094-43BA-425A-92D7-A1AD0DE5DABB";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".v" no;
	setAttr -l on ".t" -type "double3" -13.611392974853516 0 1.4210854715202004e-14 ;
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 26.246025347361975 -3.1805546814635176e-15 -6.3611093629270351e-15 ;
	setAttr ".bps" -type "matrix" -0.245952 -0.030304000000000001 -0.968808 0 0.937724 -0.26040999999999997 -0.22991500000000001 0
		 -0.24532000000000001 -0.96502200000000005 0.092465199999999997 0 5.1227280000000004 5.3139669999999999 6.0164520000000001 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_l_thumb1" -p "hands:b_l_hand";
	rename -uid "68E09ECF-425B-C410-C8E1-AA8D23AE6BE6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 177.20271196273112 -24.733050724534515 -150.20944289603074 ;
	setAttr ".pa" -type "double3" -1.1927080055488186e-15 9.5416640443905503e-15 -2.9817700138720468e-15 ;
	setAttr ".bps" -type "matrix" -0.153171 -0.473607 0.86731499999999995 0 0.95902299999999996 0.140456 0.246064 0
		 -0.23835700000000001 0.86946500000000004 0.43268600000000002 0 -1.115659 2.163284 -3.6363669999999999 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_l_thumb2" -p "hands:b_l_thumb1";
	rename -uid "0FFA8482-408D-1DB2-6BBA-A89C1BC449CE";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 4.9696166897867451e-15 6.3611093629270335e-15 16.367705922993 ;
	setAttr ".pa" -type "double3" 4.7708320221952736e-15 -5.9635400277440951e-15 6.3611093629270335e-15 ;
	setAttr ".bps" -type "matrix" 0.12329 -0.41483199999999998 0.90150600000000003 0
		 0.96331999999999995 0.26822600000000002 -0.0083183200000000006 0 -0.23835700000000001 0.86946500000000004 0.43268600000000002 0
		 -1.614816 0.61988399999999999 -0.80993999999999999 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_l_thumb3" -p "hands:b_l_thumb2";
	rename -uid "3A1DC03A-4D55-47EC-63F2-5AA0027CE2FE";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 1.3318572728628479e-14 1.232464939067113e-14 -0.99933649539848723 ;
	setAttr ".pa" -type "double3" -1.7095481412866407e-14 -1.3119788061037012e-14 -2.7829853462805764e-15 ;
	setAttr ".bps" -type "matrix" 0.10647 -0.41944700000000001 0.90151400000000004 0
		 0.96532399999999996 0.26095000000000002 0.0074059699999999996 0 -0.23835700000000001 0.86946500000000004 0.43268600000000002 0
		 -1.2896810000000001 -0.47409299999999999 1.5674710000000001 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_l_thumb_ignore" -p "hands:b_l_thumb3";
	rename -uid "C38718B6-44FC-15A2-5189-F99389F26239";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".t" -type "double3" 3.4079568386077881 -7.1054273576010019e-15 0 ;
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 1.84869740860067e-14 1.3517357396219949e-14 1.272221872585407e-14 ;
	setAttr ".bps" -type "matrix" 0.10647 -0.41944700000000001 0.90151400000000004 0
		 0.96532399999999996 0.26095000000000002 0.0074059699999999996 0 -0.23835700000000001 0.86946500000000004 0.43268600000000002 0
		 -0.92683499999999996 -1.903551 4.6397930000000001 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode parentConstraint -n "b_l_thumb3_parentConstraint1" -p "hands:b_l_thumb3";
	rename -uid "FC1B6389-458C-A383-7B87-47A1FD6A04CC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "thumb_03_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.3322676295501878e-15 -6.6613381477509392e-16 
		6.6613381477509392e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 2.3456590775793441e-14 ;
	setAttr ".lr" -type "double3" 0 0 -2.6637145457256954e-14 ;
	setAttr ".rst" -type "double3" 2.637153625488283 1.4210854715202004e-14 -1.0103029524088925e-14 ;
	setAttr ".rsrr" -type "double3" 0 0 -2.3456590775793441e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "b_l_thumb2_parentConstraint1" -p "hands:b_l_thumb2";
	rename -uid "A2E801C6-4936-0CC1-2AB7-618A5321FE44";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "thumb_02_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-16 0 1.6653345369377348e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 2.2263882770244617e-14 ;
	setAttr ".lr" -type "double3" 0 0 -2.8624992133171648e-14 ;
	setAttr ".rst" -type "double3" 3.2588241100311279 8.8817841970012523e-16 4.4408920985006262e-16 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.9083328088781101e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "b_l_thumb1_parentConstraint1" -p "hands:b_l_thumb1";
	rename -uid "E0F1E1A4-458D-B89A-2919-00830CCC814B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "thumb_01_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 2.2204460492503131e-16 
		9.9920072216264089e-16 ;
	setAttr ".tg[0].tor" -type "double3" -3.6178809501647508e-14 -3.1805546814635183e-15 
		2.1866313435061687e-14 ;
	setAttr ".lr" -type "double3" 3.4588532160915748e-14 -5.4466998920062703e-14 -2.226388277024463e-14 ;
	setAttr ".rst" -type "double3" -2.6298406124115017 -4.1470298767089844 2.0564148426055939 ;
	setAttr ".rsrr" -type "double3" 3.6576378836830429e-14 3.1805546814635239e-15 -2.5444437451708128e-14 ;
	setAttr -k on ".w0";
createNode joint -n "hands:b_l_index1" -p "hands:b_l_hand";
	rename -uid "C5A4764A-4559-7D8E-BABD-6B8320001527";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 94.389682257099224 -12.772255379576942 -166.45259513752291 ;
	setAttr ".pa" -type "double3" 2.4649298781342254e-14 1.987846675914698e-16 0 ;
	setAttr ".bps" -type "matrix" 0.059302000000000001 -0.232212 0.97085600000000005 0
		 0.26067200000000001 -0.93522000000000005 -0.23961099999999999 0 0.96360400000000002 0.26728400000000002 0.0050707699999999996 0
		 0.45119900000000002 5.1554960000000003 2.1459769999999998 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_l_index2" -p "hands:b_l_index1";
	rename -uid "B940E076-49D8-7528-5378-C3B5B1724C97";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 7.1562480332929135e-15 -4.7708320221952761e-14 21.467660362608623 ;
	setAttr ".pa" -type "double3" -3.89617948479281e-14 4.7708320221952761e-14 -1.2722218725854065e-14 ;
	setAttr ".bps" -type "matrix" 0.150588 -0.55837000000000003 0.81581000000000004 0
		 0.220885 -0.785354 -0.57829799999999998 0 0.96360400000000002 0.26728400000000002 0.0050707699999999996 0
		 0.69774599999999998 4.19008 6.1822819999999998 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_l_index3" -p "hands:b_l_index2";
	rename -uid "E17E9664-488F-22E2-1498-299FFF85B101";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" -1.8288189418415221e-14 0 6.8332348324258989 ;
	setAttr ".pa" -type "double3" 4.9298597562684502e-14 3.180554681463516e-15 -7.9513867036587821e-16 ;
	setAttr ".bps" -type "matrix" 0.17579900000000001 -0.64784600000000003 0.74120900000000001 0
		 0.20139899999999999 -0.713341 -0.67125500000000005 0 0.96360400000000002 0.26728400000000002 0.0050707699999999996 0
		 1.031342 2.953122 7.9895459999999998 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_l_index_ignore" -p "hands:b_l_index3";
	rename -uid "BFA3E3A5-43D8-F248-1C9F-829CD7ACFA7A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".t" -type "double3" 2.9121809005737305 -1.7763568394002505e-14 -7.1054273576010019e-15 ;
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" -1.9878466759146981e-14 -2.8624992133171654e-14 -6.361109362927032e-15 ;
	setAttr ".bps" -type "matrix" 0.17579900000000001 -0.64784600000000003 0.74120900000000001 0
		 0.20139899999999999 -0.713341 -0.67125500000000005 0 0.96360400000000002 0.26728400000000002 0.0050707699999999996 0
		 1.5432999999999999 1.066478 10.148080999999999 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode parentConstraint -n "b_l_index3_parentConstraint1" -p "hands:b_l_index3";
	rename -uid "4111FB88-4430-E505-DDD3-19AD414AF0EA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "index_03_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 1.7763568394002505e-15 
		-1.1102230246251565e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 3.180554681463516e-15 ;
	setAttr ".lr" -type "double3" 0 0 -4.6118042881220995e-14 ;
	setAttr ".rst" -type "double3" 2.2153005599975604 9.7699626167013776e-15 4.4408920985006262e-16 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.9756933518293944e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "b_l_index2_parentConstraint1" -p "hands:b_l_index2";
	rename -uid "42E2974A-4FBB-B632-3FA5-0498AD5D677C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "index_02_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-16 -8.8817841970012523e-16 
		-1.5543122344752192e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 3.1805546814635168e-15 ;
	setAttr ".lr" -type "double3" 0 0 -5.0888874903416268e-14 ;
	setAttr ".rst" -type "double3" 4.1574721336364755 1.7763568394002505e-15 8.4376949871511897e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 -6.3611093629270335e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "b_l_index1_parentConstraint1" -p "hands:b_l_index1";
	rename -uid "9AE9CF4E-4A98-87D9-E14B-2689BFE17CE8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "index_01_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 3.3306690738754696e-16 -8.8817841970012523e-16 
		-4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" -2.0673605429512861e-14 -1.709548141286641e-14 
		1.1131941385122315e-14 ;
	setAttr ".lr" -type "double3" -1.9083328088781107e-14 1.7493050748049328e-14 -5.1286444238599196e-14 ;
	setAttr ".rst" -type "double3" -8.7078704833984446 -3.5099911689758319 -0.68139636516571134 ;
	setAttr ".rsrr" -type "double3" 2.5444437451708134e-14 2.3854160110976374e-14 -6.162324695335558e-15 ;
	setAttr -k on ".w0";
createNode joint -n "hands:b_l_middle1" -p "hands:b_l_hand";
	rename -uid "5F21C5CA-4B07-945E-8F7C-CB80C52F929E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 80.801820648086505 -8.9484058496247147 -175.43963324777016 ;
	setAttr ".pa" -type "double3" 1.4312496066585827e-14 1.1927080055488186e-15 -4.7708320221952744e-15 ;
	setAttr ".bps" -type "matrix" 0.19788900000000001 -0.137875 0.97047899999999998 0
		 0.0093346000000000002 -0.98974799999999996 -0.142516 0 0.98018000000000005 0.037261500000000003 -0.194574 0
		 2.907432 6.0573269999999999 1.9425490000000001 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_l_middle2" -p "hands:b_l_middle1";
	rename -uid "0A653646-4634-6B6B-A1C4-83A615DD4B4D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 2.3854160110976392e-15 -1.272221872585407e-14 27.251855362361077 ;
	setAttr ".pa" -type "double3" -3.7371517507196321e-14 -3.180554681463514e-15 6.6208594470752454e-31 ;
	setAttr ".bps" -type "matrix" 0.180198 -0.57577999999999996 0.79749999999999999 0
		 -0.082315600000000003 -0.81675500000000001 -0.57108199999999998 0 0.98018000000000005 0.037261500000000003 -0.194574 0
		 3.8170790000000001 5.4235499999999996 6.4035929999999999 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_l_middle3" -p "hands:b_l_middle2";
	rename -uid "554DA704-45AE-1558-9A5C-0E8AE320EEB9";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 2.0673605429512864e-14 6.3611093629270335e-15 7.5427697090752792 ;
	setAttr ".pa" -type "double3" -7.951386703658803e-15 -1.2722218725854061e-14 4.7708320221952759e-15 ;
	setAttr ".bps" -type "matrix" 0.16783400000000001 -0.67801 0.71563500000000002 0
		 -0.105257 -0.73410699999999995 -0.67082600000000003 0 0.98018000000000005 0.037261500000000003 -0.194574 0
		 4.3502970000000003 3.7197830000000001 8.7634419999999995 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_l_middle_ignore" -p "hands:b_l_middle3";
	rename -uid "6123270A-47C0-C7F3-AF70-04966F5301C1";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".t" -type "double3" 2.6469612121582031 -1.7763568394002505e-15 -2.1316282072803006e-14 ;
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 1.908332808878111e-14 3.1805546814635168e-15 -3.1805546814635168e-15 ;
	setAttr ".bps" -type "matrix" 0.16783400000000001 -0.67801 0.71563500000000002 0
		 -0.105257 -0.73410699999999995 -0.67082600000000003 0 0.98018000000000005 0.037261500000000003 -0.194574 0
		 4.7945469999999997 1.925116 10.657700999999999 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode parentConstraint -n "b_l_middle3_parentConstraint1" -p "hands:b_l_middle3";
	rename -uid "8DD4DC43-40D0-2486-77FF-0B96530DB1DB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "middle_03_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 0 -4.4408920985006262e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 3.1805546814635168e-15 ;
	setAttr ".lr" -type "double3" 0 0 -3.1805546814635168e-15 ;
	setAttr ".rst" -type "double3" 2.9590597152709952 1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.1805546814635168e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "b_l_middle2_parentConstraint1" -p "hands:b_l_middle2";
	rename -uid "D5399D43-4573-21EB-7A30-0788887D812C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "middle_02_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 6.6613381477509392e-15 3.5527136788005009e-15 
		-2.6645352591003757e-15 ;
	setAttr ".rst" -type "double3" 4.5967426300048819 1.6875389974302379e-14 4.4408920985006262e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "b_l_middle1_parentConstraint1" -p "hands:b_l_middle1";
	rename -uid "5A8790A2-48D6-C560-EBBC-709344CE996D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "middle_01_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 4.4408920985006262e-15 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -4.1347210859025709e-14 -2.4649298781342248e-14 
		0 ;
	setAttr ".lr" -type "double3" 3.8166656177562201e-14 2.5444437451708134e-14 -1.9878466759146897e-15 ;
	setAttr ".rst" -type "double3" -9.142232894897468 -0.95321553945541426 -1.0838780403137234 ;
	setAttr ".rsrr" -type "double3" 3.8166656177562201e-14 2.5444437451708134e-14 -1.9878466759146897e-15 ;
	setAttr -k on ".w0";
createNode joint -n "hands:b_l_ring1" -p "hands:b_l_hand";
	rename -uid "7EDA1005-429E-B22C-C2B1-F3B74B3236BC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 70.245162519144003 -11.619163238915979 176.1844959591497 ;
	setAttr ".pa" -type "double3" -3.1805546814635176e-15 1.5902773407317582e-15 -3.1805546814635168e-15 ;
	setAttr ".bps" -type "matrix" 0.341474 -0.155307 0.92697099999999999 0 -0.193743 -0.97670400000000002 -0.092269199999999996 0
		 0.91970600000000002 -0.148086 -0.36360900000000002 0 5.1481890000000003 5.600187 1.192839 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_l_ring2" -p "hands:b_l_ring1";
	rename -uid "5CF3732A-48DA-F74D-B3FB-B6BB3D887F98";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" -6.3611093629270348e-14 -1.9083328088781107e-14 23.413729097573611 ;
	setAttr ".pa" -type "double3" 3.7371517507196346e-14 1.2722218725854088e-14 -9.5416640443905566e-15 ;
	setAttr ".bps" -type "matrix" 0.23637 -0.53063000000000005 0.81397900000000001 0
		 -0.31348100000000001 -0.83456699999999995 -0.45301999999999998 0 0.91970600000000002 -0.148086 -0.36360900000000002 0
		 6.4653239999999998 5.0011359999999998 4.7683540000000004 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_l_ring3" -p "hands:b_l_ring2";
	rename -uid "A7BFB504-4A84-DC86-21F2-54BD259A951F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" -2.862499213317166e-14 -3.1805546814635176e-15 9.6305628959719538 ;
	setAttr ".pa" -type "double3" 4.6118042881221007e-14 6.3611093629270304e-15 9.5416640443905519e-15 ;
	setAttr ".bps" -type "matrix" 0.18059500000000001 -0.66276999999999997 0.72672000000000003 0
		 -0.34860600000000003 -0.73403399999999996 -0.58281000000000005 0 0.91970600000000002 -0.148086 -0.36360900000000002 0
		 7.0745740000000001 3.6334230000000001 6.8664079999999998 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_l_ring_ignore" -p "hands:b_l_ring3";
	rename -uid "E7DCD238-4156-909B-255E-0A9AFAB48B2A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".t" -type "double3" 2.4214906692504883 -1.4210854715202004e-14 0 ;
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 2.2263882770244617e-14 0 6.3611093629270351e-15 ;
	setAttr ".bps" -type "matrix" 0.18059500000000001 -0.66276999999999997 0.72672000000000003 0
		 -0.34860600000000003 -0.73403399999999996 -0.58281000000000005 0 0.91970600000000002 -0.148086 -0.36360900000000002 0
		 7.5118830000000001 2.0285310000000001 8.6261530000000004 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode parentConstraint -n "b_l_ring3_parentConstraint1" -p "hands:b_l_ring3";
	rename -uid "538BAE7B-422E-13CB-8705-0E92C5CE22D7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ring_03_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 6.2172489379008766e-15 0 -2.6645352591003757e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 1.5902773407317584e-15 ;
	setAttr ".lr" -type "double3" 0 0 -1.5902773407317584e-15 ;
	setAttr ".rst" -type "double3" 2.5775291919708256 -1.7763568394002505e-15 -1.2878587085651816e-14 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.5902773407317584e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "b_l_ring2_parentConstraint1" -p "hands:b_l_ring2";
	rename -uid "FC05224E-48FF-DC26-BC7B-06A984C5F50E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ring_02_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-16 -3.5527136788005009e-15 
		-8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -3.1805546814635168e-15 ;
	setAttr ".lr" -type "double3" 0 0 -3.1805546814635168e-15 ;
	setAttr ".rst" -type "double3" 3.8572025299072275 -8.8817841970012523e-16 3.9968028886505635e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.1805546814635168e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "b_l_ring1_parentConstraint1" -p "hands:b_l_ring1";
	rename -uid "C53FBD99-416B-17F0-FDFC-608768357779";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ring_01_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 8.8817841970012523e-16 1.7763568394002505e-15 
		1.3322676295501878e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.9083328088781107e-14 -2.7034714792439897e-14 
		0 ;
	setAttr ".lr" -type "double3" -3.1805546814635168e-14 2.7034714792439894e-14 -7.5036407066852715e-30 ;
	setAttr ".rst" -type "double3" -8.9531736373901456 1.2713979482650766 -0.18533265590668258 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-14 2.7034714792439894e-14 -7.5036407066852715e-30 ;
	setAttr -k on ".w0";
createNode joint -n "hands:b_l_pinky0" -p "hands:b_l_hand";
	rename -uid "59E04988-4601-D5BF-7BAE-0B9662342AC0";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" -56.85356334226875 3.6698983085436598 -13.310456210676993 ;
	setAttr ".pa" -type "double3" -1.2722218725854064e-14 -9.1440947092076103e-15 -3.5781240166464568e-15 ;
	setAttr ".bps" -type "matrix" -0.469474 -0.011044999999999999 -0.88287700000000002 0
		 0.33617399999999997 0.922373 -0.190301 0 0.81644399999999995 -0.38614199999999999 -0.42931799999999998 0
		 4.5786860000000003 4.2360990000000003 -4.6335110000000004 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_l_pinky1" -p "hands:b_l_pinky0";
	rename -uid "1B89BBFE-4A16-4161-D07D-88B87CA71A04";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 0.51295428684049627 -2.2420999580064596 -166.50804062291363 ;
	setAttr ".pa" -type "double3" 5.6653630263568893e-15 -6.7586786981099735e-15 2.4320061675643882e-15 ;
	setAttr ".bps" -type "matrix" 0.40973700000000002 -0.21940799999999999 0.88542399999999999 0
		 -0.42924000000000001 -0.90284200000000003 -0.0250896 0 0.80490300000000004 -0.36977900000000002 -0.46410699999999999 0
		 7.0562149999999999 4.5766730000000004 0.112526 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_l_pinky2" -p "hands:b_l_pinky1";
	rename -uid "D23CA48A-4945-76D8-15E3-6E890F412001";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" -1.669791207768347e-14 9.5416640443905503e-15 18.94593592861121 ;
	setAttr ".pa" -type "double3" -1.5902773407317467e-15 3.1805546814635203e-15 -9.541664044390544e-15 ;
	setAttr ".bps" -type "matrix" 0.24817600000000001 -0.50065199999999999 0.82930999999999999 0
		 -0.539018 -0.782694 -0.31120599999999998 0 0.80490300000000004 -0.36977900000000002 -0.46410699999999999 0
		 8.4229330000000004 3.8448169999999999 3.065941 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_l_pinky3" -p "hands:b_l_pinky2";
	rename -uid "AA1CC875-4A14-CCA6-B696-B292AB24F249";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "liw1" -ln "liw1" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" -2.226388277024463e-14 3.339582415536694e-14 5.3870980398218737 ;
	setAttr ".pa" -type "double3" 1.510763473695171e-14 -3.0215269473903433e-14 1.113194138512231e-14 ;
	setAttr ".bps" -type "matrix" 0.19647500000000001 -0.57192399999999999 0.79642999999999997 0
		 -0.55993700000000002 -0.73223400000000005 -0.38769100000000001 0 0.80490300000000004 -0.36977900000000002 -0.46410699999999999 0
		 8.8552110000000006 2.972769 4.510453 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode joint -n "hands:b_l_pinky_ignore" -p "hands:b_l_pinky3";
	rename -uid "5F25402B-4726-E097-0AB6-518FC556EEC1";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".t" -type "double3" 1.9441238641738892 -6.2172489379008766e-15 7.1054273576010019e-15 ;
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" -3.6576378836830448e-14 3.1805546814635176e-15 -1.272221872585407e-14 ;
	setAttr ".bps" -type "matrix" 0.19647500000000001 -0.57192399999999999 0.79642999999999997 0
		 -0.55993700000000002 -0.73223400000000005 -0.38769100000000001 0 0.80490300000000004 -0.36977900000000002 -0.46410699999999999 0
		 9.2371829999999999 1.8608789999999999 6.0588119999999996 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode parentConstraint -n "b_l_pinky3_parentConstraint1" -p "hands:b_l_pinky3";
	rename -uid "584702AD-4A34-1DB8-E3C1-59BDF9DEA74C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pinky_04_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 5.3290705182007514e-15 1.3322676295501878e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -1.3517357396219947e-14 ;
	setAttr ".lr" -type "double3" 0 0 1.2722218725854067e-14 ;
	setAttr ".rst" -type "double3" 1.741822361946106 1.4210854715202004e-14 7.1054273576010019e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 1.2722218725854067e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "b_l_pinky2_parentConstraint1" -p "hands:b_l_pinky2";
	rename -uid "F2D04B28-4F9D-E8F8-E971-4BBB0AE0F61C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pinky_03_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 0 2.6645352591003757e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -2.2263882770244617e-14 ;
	setAttr ".lr" -type "double3" 0 0 1.9083328088781101e-14 ;
	setAttr ".rst" -type "double3" 3.3355951309204102 1.2434497875801753e-14 -1.6431300764452317e-14 ;
	setAttr ".rsrr" -type "double3" 0 0 1.9083328088781101e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "b_l_pinky1_parentConstraint1" -p "hands:b_l_pinky1";
	rename -uid "B911BDD6-45DC-5507-6A24-AFBB8282EA97";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pinky_02_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.9984014443252818e-15 8.8817841970012523e-16 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 2.286023677301903e-15 -2.5046868116525194e-14 
		6.7711027398344398e-16 ;
	setAttr ".lr" -type "double3" -2.6835930124848422e-15 2.4649298781342254e-14 -6.2120208622334891e-17 ;
	setAttr ".rst" -type "double3" -5.3570647239685059 0.24383999407291501 -0.14630399644374759 ;
	setAttr ".rsrr" -type "double3" -2.6835930124848422e-15 2.4649298781342254e-14 -6.2120208622334891e-17 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "b_l_pinky0_parentConstraint1" -p "hands:b_l_pinky0";
	rename -uid "E96F47F1-4D6D-275E-94AC-DB9F9C4034D1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pinky_01_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.4424906541753444e-15 -8.8817841970012523e-16 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -2.8624992133171654e-14 1.9083328088781104e-14 
		-1.113194138512231e-14 ;
	setAttr ".lr" -type "double3" 1.2026472389283922e-14 -1.5902773407317584e-14 1.2722218725854065e-14 ;
	setAttr ".rst" -type "double3" -3.1271502971649223 1.9068031311035147 1.1507591009139997 ;
	setAttr ".rsrr" -type "double3" 1.2026472389283922e-14 -1.5902773407317584e-14 1.2722218725854065e-14 ;
	setAttr -k on ".w0";
createNode joint -n "hands:b_l_grip" -p "hands:b_l_hand";
	rename -uid "BDE3A5D3-4955-9DB5-789C-A78700F47CAC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr -l on ".s";
	setAttr ".jo" -type "double3" 135.26018847904882 57.644851753580333 110.27294259977474 ;
	setAttr ".bps" -type "matrix" 0.35785 0.93104299999999995 0.071430800000000003 0
		 0.72344200000000003 -0.22806399999999999 -0.65162799999999999 0 -0.59040300000000001 0.28486099999999998 -0.75516799999999995 0
		 2.5936900000000001 2.9878659999999999 0.12986500000000001 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode parentConstraint -n "b_l_hand_parentConstraint1" -p "hands:b_l_hand";
	rename -uid "80340AF6-40A3-3E51-00D1-08B5A10BD305";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "COG_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-16 0 0 ;
	setAttr ".tg[0].tor" -type "double3" -1.4710065401768767e-14 -3.3793393490549872e-15 
		-1.7493050748049344e-14 ;
	setAttr ".lr" -type "double3" 6.3611093629270335e-15 -1.4124500153760511e-30 2.5444437451708134e-14 ;
	setAttr ".rst" -type "double3" 1.7749772071838381 4.9014878273010254 -7.1703767776489249 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270335e-15 -1.4124500153760511e-30 2.5444437451708134e-14 ;
	setAttr -k on ".w0";
createNode joint -n "hands:l_hand_world" -p "|Left_Hand|Skeleton";
	rename -uid "6C9414D3-4BE6-968F-9440-61A1633F9CC5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.7749772071838379 4.9014878273010254 -7.1703767776489258 ;
	setAttr ".r" -type "double3" -139.20938773242403 -4.0961743000334554 68.975548065109905 ;
	setAttr -l on ".s";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.35785 0.93104299999999995 0.071430800000000003 0
		 0.72344200000000003 -0.22806399999999999 -0.65162799999999999 0 -0.59040300000000001 0.28486099999999998 -0.75516799999999995 0
		 1.774977 4.9014879999999996 -7.1703770000000002 1;
	setAttr ".radi" 0.03;
	setAttr -k on ".liw";
createNode transform -n "Geometry" -p "Left_Hand";
	rename -uid "AEEB7395-4B8B-7348-3B1D-DDBF13F07794";
createNode transform -n "l_Hand" -p "|Left_Hand|Geometry";
	rename -uid "ADEF1DF4-4B2C-EBB4-42F7-9E89BF9AC001";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -l on ".t";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".r";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".s";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -k on ".currentUVSet" -type "string" "UVMap";
createNode mesh -n "l_HandShape" -p "l_Hand";
	rename -uid "E1943F6A-4532-7CDF-842A-B5B1FBCA6A97";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "UVMap";
	setAttr ".cuvs" -type "string" "UVMap";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "LhandShapeOrig" -p "l_Hand";
	rename -uid "42E46560-47BA-86AA-9600-AF87B57BEFAE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "skinCluster2";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "vtx[0:840]";
	setAttr ".uvst[0].uvsn" -type "string" "UVMap";
	setAttr -s 967 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.060988545 0.49048442 0.42554018
		 0.20476966 0.53764212 0.51118219 0.51415396 0.52170831 0.091834247 0.32519475 0.81393462
		 0.43929127 0.57578999 0.96134001 0.5333221 0.50275993 0.86766028 0.56699336 0.72032106
		 0.4067485 0.1843515 0.27206764 0.40524155 0.63363707 0.68479115 0.61543524 0.11210641
		 0.46569163 0.69419914 0.40377149 0.42026281 0.78016269 0.25233161 0.62662292 0.63019419
		 0.47638342 0.60905802 0.53945911 0.95268112 0.48637754 0.64948553 0.41284984 0.36963335
		 0.32616961 0.42558336 0.19252698 0.27205014 0.49433509 0.88691497 0.4564082 0.39565748
		 0.63726211 0.75091565 0.52208573 0.55199093 0.5605877 0.21073687 0.42218557 0.12335816
		 0.44965944 0.57026231 0.37932464 0.70697159 0.43967709 0.57931393 0.93639976 0.56212282
		 0.22123212 0.38894421 0.38849765 0.41492882 0.77175367 0.40430188 0.70164722 0.53264666
		 0.5890606 0.32210395 0.44133803 0.16889349 0.49730709 0.46184731 0.48729309 0.8372997
		 0.63916349 0.37533414 0.55760849 0.71505374 0.42252824 0.56971341 0.93203872 0.43479466
		 0.16317442 0.40211463 0.43193829 0.48156959 0.5578143 0.44719779 0.52783918 0.35426444
		 0.1304393 0.31391758 0.31084973 0.81312871 0.59180325 0.49601984 0.55524904 0.78190339
		 0.94910556 0.073032081 0.55253357 0.041727692 0.56884259 0.23291808 0.42557088 0.55933398
		 0.58010793 0.93875015 0.53529954 0.29789689 0.49771854 0.79189634 0.52982253 0.057862997
		 0.46664226 0.24964449 0.4638643 0.19066432 0.62704664 0.67535967 0.55279231 0.77462125
		 0.34693193 0.28782296 0.50398934 0.90777493 0.58095807 0.34728202 0.65815389 0.56072646
		 0.23938228 0.53732789 0.57391435 0.50262177 0.54779309 0.67470682 0.36978287 0.74912179
		 0.58057874 0.86423206 0.58502489 0.12563419 0.31156191 0.70111889 0.54166651 0.67490482
		 0.49287251 0.192366 0.30721581 0.21519566 0.54789704 0.18994278 0.4524332 0.089206606
		 0.51342946 0.55790305 0.55572045 0.59609622 0.26710761 0.73300833 0.57578284 0.25185752
		 0.37292686 0.070122838 0.43718269 0.408207 0.69338375 0.072118402 0.30932024 0.24529248
		 0.4265658 0.57832277 0.41012427 0.54363084 0.94637829 0.43309927 0.49885547 0.68687069
		 0.53309411 0.061558664 0.18837246 0.13978863 0.33565834 0.54894471 0.5722487 0.53010416
		 0.53015178 0.53131747 0.5170089 0.21895456 0.26505181 0.070994645 0.53987795 0.32964197
		 0.45959827 0.42130685 0.25208816 0.45575133 0.17100967 0.79203814 0.61440879 0.71969974
		 0.60738957 0.38917726 0.62955666 0.73981547 0.63321131 0.22415903 0.37480375 0.43119839
		 0.39836219 0.37396604 0.28905755 0.24447876 0.3886396 0.048482507 0.53541839 0.36810142
		 0.57743794 0.052958488 0.47675031 0.40735519 0.23849586 0.25155807 0.48540446 0.41920388
		 0.29444912 0.50682771 0.52944988 0.7593528 0.42538053 0.076394498 0.53199232 0.093065619
		 0.40932396 0.096897036 0.52073848 0.73134696 0.4438372 0.33923399 0.30248159 0.93593878
		 0.83110362 0.020769119 0.56368107 0.14158165 0.44194922 0.48756325 0.46135649 0.41977927
		 0.79932064 0.40392336 0.20048875 0.76706225 0.93656927 0.087153316 0.38312635 0.25446114
		 0.54973722 0.14132488 0.31167871 0.23373631 0.68311357 0.92826617 0.47895741 0.41332012
		 0.63073909 0.42627922 0.22633483 0.17964485 0.6279217 0.52455926 0.52378333 0.034725785
		 0.56401151 0.70039988 0.49662378 0.21775341 0.68013132 0.13560379 0.40442112 0.11784649
		 0.39394218 0.029285789 0.50399691 0.54270387 0.57586223 0.36430216 0.44582078 0.52860427
		 0.20721449 0.40977567 0.76329207 0.21805662 0.68810809 0.4346534 0.24272032 0.44425267
		 0.48589876 0.90632761 0.60344404 0.40928215 0.68722039 0.18843162 0.575297 0.045815587
		 0.47293863 0.26649025 0.42359582 0.96104497 0.81241441 0.7721687 0.95936686 0.40326193
		 0.77962124 0.17661631 0.57613719 0.95778209 0.82191646 0.53687274 0.52384174 0.13341081
		 0.21657299 0.59131718 0.24551572 0.22801661 0.68047714 0.65592647 0.39908704 0.553262
		 0.5662356 0.51299202 0.40338352 0.38104528 0.57242757 0.29553461 0.18463314 0.19939455
		 0.3400414 0.83390832 0.46254674 0.26887649 0.36717498 0.65511405 0.54638511 0.59484422
		 0.23762229 0.78154778 0.42470923 0.40576273 0.79749823 0.65638536 0.5801093 0.17328626
		 0.30992988 0.77925092 0.58673579 0.35798323 0.30284405 0.21356076 0.47421935 0.58371437
		 0.24652809 0.73364842 0.48796758 0.1873641 0.37082803 0.59490836 0.25128752 0.20322406
		 0.26860061 0.58705747 0.23430845 0.36401892 0.65050316 0.51797885 0.4232243 0.073190272
		 0.32463714 0.73652893 0.42437571 0.49145776 0.56045467 0.701594 0.60189593 0.21639872
		 0.63456029 0.25362098 0.42607328 0.28604689 0.3620345 0.25067383 0.56123137 0.20732528
		 0.68197381 0.27191138 0.5047065 0.18727803 0.54896897 0.55848897 0.56479591 0.52062118
		 0.39851794 0.10732859 0.50768095 0.31433755 0.56099313 0.41046593 0.39200777 0.25094414
		 0.12613703 0.54655439 0.37993988 0.38983753 0.31217706 0.34101576 0.2654756 0.19029588
		 0.47045323 0.50029457 0.43452588 0.027859509 0.51677614 0.43709034 0.51417917 0.61250281
		 0.4941946 0.1052897 0.27826741 0.23453671 0.50436312 0.22803944 0.68949687 0.81380618
		 0.34408602 0.20754546 0.69046295 0.2154007 0.57443053 0.55788314 0.24990208 0.41917044
		 0.64109683 0.093763173 0.50731307 0.46250439 0.27599931 0.49041778 0.40262088 0.59182155
		 0.37908977 0.040135503 0.47963655 0.36531746 0.56144649 0.39946061 0.76837957 0.76790029
		 0.94868642 0.059667945 0.54233283 0.23704809 0.48058745 0.52056241 0.40503213 0.8103925
		 0.61659598 0.3073588 0.40905297 0.3805787 0.53711182 0.73928857 0.95708495 0.34728605
		 0.48061708 0.57562643 0.94893092 0.45939082 0.46948001 0.029688895 0.56045443 0.38801819
		 0.1751271 0.36901373 0.45809492 0.64476597 0.45308283 0.31181777 0.23134591 0.50308752
		 0.39786291;
	setAttr ".uvst[0].uvsp[250:499]" 0.19780707 0.56064022 0.62435371 0.4460018
		 0.39925545 0.64742428 0.5436359 0.39688239 0.82867104 0.42215914 0.74746484 0.93517941
		 0.080709398 0.40549675 0.057636738 0.51961136 0.073085129 0.34688285 0.21654874 0.64262885
		 0.20325223 0.69602764 0.37410742 0.46745721 0.4740901 0.47472697 0.17849928 0.56191194
		 0.23165026 0.64275652 0.017347634 0.55440766 0.40887389 0.3137036 0.51265061 0.40815243
		 0.91842163 0.53259003 0.92908931 0.58302915 0.39372411 0.78572834 0.17700839 0.45191786
		 0.68763053 0.46523458 0.77148449 0.61837357 0.54396558 0.56706977 0.15489995 0.41202614
		 0.46676904 0.50642157 0.091690779 0.34699756 0.67493314 0.40144369 0.23270339 0.69472086
		 0.71387285 0.51882887 0.36419392 0.63987648 0.507254 0.23561306 0.25239116 0.25544852
		 0.94800317 0.82915539 0.35263124 0.46480229 0.021962106 0.5241133 0.0403561 0.52195835
		 0.20560953 0.37241301 0.04480511 0.56232721 0.44593772 0.21284463 0.24057293 0.6431669
		 0.35465524 0.6547035 0.94095337 0.44910783 0.87543237 0.52984107 0.06522429 0.4063386
		 0.40778258 0.7094242 0.20566326 0.22306232 0.80631161 0.53195471 0.8629998 0.60947251
		 0.32548815 0.26925072 0.30084908 0.2781643 0.48924077 0.54909927 0.17404056 0.41658768
		 0.65525609 0.3731586 0.040897518 0.56524676 0.2733779 0.48394415 0.71605879 0.47256607
		 0.51317525 0.53529423 0.21486759 0.50067019 0.174413 0.38499925 0.12485045 0.35365459
		 0.02389884 0.55434269 0.43129653 0.26643518 0.27261403 0.32850182 0.17569727 0.23413961
		 0.26733667 0.17049173 0.55791759 0.95771545 0.47985858 0.44894955 0.86125559 0.49870124
		 0.76675385 0.52437449 0.38445145 0.35382313 0.49320245 0.39826509 0.20145667 0.5746085
		 0.36121488 0.17395309 0.45552504 0.5187912 0.44974232 0.23206194 0.58051986 0.37927246
		 0.37417614 0.40342736 0.38385183 0.65340889 0.79627073 0.58940643 0.84079289 0.49391085
		 0.026090503 0.56125218 0.40041327 0.37876087 0.51348066 0.39812434 0.37203407 0.13766873
		 0.2323752 0.2610414 0.2983157 0.31976047 0.58030629 0.39885357 0.37963471 0.64337748
		 0.25359741 0.5752365 0.19120687 0.63593775 0.5164156 0.4555504 0.38958499 0.14918368
		 0.925295 0.60419947 0.34846395 0.56817091 0.25178021 0.20927876 0.39892617 0.34733742
		 0.23676178 0.46074721 0.088593066 0.4233028 0.048556566 0.5140993 0.36871719 0.66020167
		 0.23198628 0.63487458 0.84198153 0.56922239 0.30231076 0.14765826 0.24520791 0.50805104
		 0.37231144 0.43346313 0.047879815 0.46163255 0.42378455 0.50741225 0.52252072 0.41886517
		 0.52896595 0.24296926 0.63913 0.4277949 0.54526293 0.58837277 0.34791034 0.32937732
		 0.38368222 0.45791206 0.73358518 0.52084726 0.75970078 0.45326462 0.18198621 0.64560574
		 0.14113098 0.3612515 0.66915017 0.41673473 0.12462699 0.28101978 0.67813808 0.51052147
		 0.93156654 0.81144261 0.50172305 0.47068512 0.59929079 0.58576864 0.48172784 0.49072191
		 0.73562604 0.36446187 0.56306756 0.94664651 0.86516589 0.40806821 0.21050864 0.68709159
		 0.44852003 0.2758832 0.744991 0.94709688 0.33882418 0.39387152 0.34733579 0.18867467
		 0.30521351 0.088543959 0.38405937 0.69988 0.38811272 0.76990151 0.59611779 0.25904134
		 0.73770368 0.61305565 0.41297075 0.62046754 0.18315884 0.49860361 0.080443621 0.48053169
		 0.35995406 0.66456962 0.84168577 0.58833706 0.79963768 0.56865561 0.40062389 0.4000726
		 0.11120528 0.42008916 0.26832926 0.20248477 0.34082833 0.54963136 0.40134594 0.69760484
		 0.1944395 0.68792939 0.84137118 0.61383408 0.57596451 0.41848442 0.12054837 0.24080616
		 0.55690986 0.26289096 0.22549099 0.68590152 0.75545615 0.96214515 0.69064564 0.56122619
		 0.84642643 0.43802416 0.065855652 0.54675514 0.18346727 0.63660163 0.81532258 0.57125103
		 0.052567035 0.57189518 0.76020998 0.4072676 0.53151464 0.23091029 0.070365489 0.4975622
		 0.56034058 0.9275766 0.35977775 0.47546855 0.94484168 0.82162207 0.44978628 0.50005043
		 0.3687824 0.22592273 0.10825342 0.32687691 0.032892138 0.56690115 0.21605062 0.34041825
		 0.62117147 0.50940388 0.39550012 0.26970538 0.42330432 0.40942547 0.10753119 0.34662125
		 0.10646945 0.43502289 0.50287718 0.40747839 0.21516111 0.56025463 0.51273328 0.41279957
		 0.39352965 0.69861394 0.48140538 0.46748662 0.68867397 0.41955531 0.7911796 0.44859761
		 0.2507847 0.64408308 0.39066947 0.71117926 0.20071167 0.5481742 0.5701834 0.39830303
		 0.24125507 0.63499278 0.90576649 0.49305058 0.75303745 0.36281458 0.22576639 0.547916
		 0.19228846 0.64416772 0.7256822 0.55091077 0.2178182 0.69253087 0.32196373 0.57926881
		 0.54420161 0.58103156 0.35454786 0.58292478 0.30229819 0.37278572 0.037946582 0.50864166
		 0.17073518 0.16185503 0.24081695 0.68617725 0.13197637 0.17367436 0.30764639 0.46696487
		 0.56837022 0.4091318 0.65975434 0.43282416 0.030273974 0.52648985 0.60398412 0.51846266
		 0.048672736 0.56649905 0.67259914 0.59031433 0.58333188 0.28210947 0.82658231 0.53186679
		 0.88289315 0.48196003 0.049355805 0.48489958 0.40845713 0.6442821 0.033219159 0.51865566
		 0.099892914 0.49899063 0.38403049 0.55426872 0.074557006 0.49020708 0.50310689 0.56087047
		 0.525056 0.51073009 0.076231241 0.41854617 0.096813381 0.45272756 0.9100467 0.56474137
		 0.49092418 0.40966231 0.35465175 0.54418617 0.18766192 0.56122422 0.318598 0.40502715
		 0.25600192 0.49449673 0.28801835 0.24338409 0.50001049 0.53695166 0.33942378 0.21375617
		 0.30989143 0.37012014 0.09089762 0.30955854 0.23005602 0.30119154 0.079016566 0.50409973
		 0.49309719 0.47927439 0.80687177 0.47279775 0.53897035 0.21134804 0.45159382 0.47792575
		 0.089407623 0.4882741 0.49216413 0.41671431 0.037038445 0.52936411 0.58139646 0.26321957
		 0.66354954 0.45885825 0.49639285 0.56944346 0.042973638 0.57462496 0.5841651 0.25464723;
	setAttr ".uvst[0].uvsp[500:749]" 0.32844591 0.59383774 0.21746999 0.21895202
		 0.42057854 0.6978814 0.62774098 0.52672279 0.71635586 0.36234283 0.35003579 0.66999531
		 0.35073024 0.64580166 0.27014792 0.25013718 0.28404087 0.28515708 0.13577288 0.46158379
		 0.34225136 0.5879088 0.099621356 0.384828 0.51922035 0.54149598 0.64881587 0.49460253
		 0.24243245 0.54873729 0.89810669 0.53096384 0.38965112 0.44747338 0.85258007 0.52912903
		 0.18481791 0.2021022 0.059194744 0.43023783 0.94656104 0.80484325 0.4010435 0.182098
		 0.16137159 0.27628317 0.24107641 0.33772263 0.50896132 0.55359262 0.3170411 0.59887385
		 0.19489115 0.49768183 0.56555378 0.5527944 0.65257609 0.52521968 0.41284296 0.15585035
		 0.44506651 0.19683065 0.32835433 0.55483174 0.20968592 0.30494836 0.50344944 0.41304681
		 0.22560197 0.57432395 0.5028531 0.40188098 0.18274617 0.33982143 0.39284644 0.70367754
		 0.54277277 0.40588507 0.25968125 0.50490463 0.47406155 0.49881107 0.069377899 0.38115013
		 0.50993562 0.22317244 0.38893726 0.6943683 0.78372103 0.56588328 0.36898208 0.36659646
		 0.067796767 0.27438119 0.31363866 0.5829556 0.12745112 0.48581514 0.2413505 0.62616873
		 0.55323052 0.93850917 0.36166999 0.25900272 0.40180576 0.62464797 0.23228288 0.56040519
		 0.32462618 0.223141 0.73992699 0.40734363 0.20142686 0.68438327 0.69291478 0.51589698
		 0.93898946 0.80797189 0.89159369 0.56566089 0.21817815 0.70019352 0.51732892 0.20243596
		 0.71692002 0.50214875 0.21627605 0.6260199 0.56583798 0.56515259 0.95163071 0.8162629
		 0.18902048 0.41964325 0.81567317 0.64263844 0.67984468 0.43640819 0.31310523 0.35124817
		 0.38545084 0.21522735 0.098567694 0.51235807 0.26650932 0.46313974 0.79575992 0.39532474
		 0.38618943 0.41582477 0.58954567 0.95487958 0.88843322 0.58200085 0.33174503 0.57501811
		 0.35938463 0.42019251 0.065134645 0.21990061 0.62728924 0.56091177 0.086975157 0.50075006
		 0.4144429 0.41679564 0.23734182 0.3890287 0.69524497 0.36609632 0.20310766 0.62641579
		 0.60688144 0.55909544 0.88640302 0.60533619 0.36788577 0.539204 0.1701656 0.48052704
		 0.31653649 0.48977032 0.065969765 0.52487254 0.55327624 0.57477248 0.052545786 0.52822685
		 0.37604535 0.63478655 0.061388075 0.48065251 0.50976133 0.42875257 0.27846998 0.45759228
		 0.26212674 0.29195017 0.32751897 0.34056896 0.93619603 0.82268661 0.037231803 0.55866522
		 0.076371878 0.54428726 0.39833194 0.6904127 0.12413841 0.33124158 0.30347079 0.56771028
		 0.35408223 0.37960324 0.24958831 0.63533515 0.51819944 0.23972301 0.28697687 0.41607475
		 0.10242754 0.23980203 0.3343356 0.43832287 0.081236422 0.44066167 0.15723485 0.38173696
		 0.4077099 0.28570721 0.75720924 0.93611556 0.38431513 0.25400236 0.10856676 0.31004563
		 0.52079314 0.22725393 0.96168762 0.4582288 0.17515054 0.55030572 0.11926365 0.47519228
		 0.20064434 0.63533014 0.43756393 0.27860075 0.59964967 0.50931352 0.41693091 0.68546349
		 0.22591633 0.62589991 0.20130491 0.64332479 0.029299557 0.55555218 0.93124861 0.56827915
		 0.75732857 0.63637215 0.50607133 0.2509059 0.74057323 0.55556661 0.44290438 0.50775778
		 0.24180758 0.57474726 0.24225363 0.56079 0.24456099 0.29697347 0.34395361 0.45672348
		 0.064294875 0.53548849 0.28611332 0.47617963 0.21303988 0.4557052 0.32722628 0.40154806
		 0.030078441 0.57267255 0.75314152 0.49961686 0.15513289 0.23912236 0.066572547 0.41669759
		 0.42551929 0.6857546 0.41363546 0.69436866 0.75557172 0.55996025 0.4710176 0.45776394
		 0.41183969 0.78777909 0.37825352 0.70640075 0.35075951 0.43042883 0.30014449 0.44885698
		 0.2242623 0.18821643 0.13422811 0.47119042 0.58876431 0.41048944 0.5800696 0.27411675
		 0.32420355 0.12858538 0.53518736 0.58119947 0.75624311 0.95081073 0.33564046 0.48303404
		 0.71698529 0.57070941 0.14103121 0.27930596 0.78038996 0.48069736 0.083676428 0.53875786
		 0.3926771 0.56793731 0.59070057 0.39913338 0.085582435 0.27584043 0.44204512 0.25964746
		 0.1736722 0.4712787 0.12912178 0.43319276 0.52183354 0.41110221 0.66992563 0.60948366
		 0.54521704 0.51707393 0.083626568 0.21712822 0.070304394 0.47288489 0.2567566 0.33317515
		 0.30686188 0.17481458 0.339782 0.65071058 0.65886891 0.845281 0.66949809 0.83162916
		 0.55664909 0.27619755 0.52700269 0.25708467 0.51668221 0.2506181 0.52194434 0.2692889
		 0.9611125 0.77361417 0.9593643 0.7827611 0.95460224 0.7623862 0.95342869 0.80988801
		 0.90768272 0.80719799 0.92676938 0.82681644 0.90735501 0.78979236 0.90082037 0.80175924
		 0.89754987 0.79315001 0.71952218 0.8095113 0.72286731 0.79665476 0.72226727 0.74801183
		 0.54053557 0.41541344 0.56532538 0.42058459 0.5843215 0.42306432 0.48383757 0.66976625
		 0.49815941 0.67854124 0.60652471 0.70239621 0.54752749 0.7358191 0.53581792 0.74662572
		 0.58313143 0.79148448 0.60085225 0.78931147 0.61994684 0.7104134 0.59310621 0.77556354
		 0.61469531 0.68561625 0.67102182 0.64051056 0.71110547 0.7473945 0.67557424 0.81289297
		 0.74787664 0.66768402 0.73469311 0.71756166 0.55721051 0.62094426 0.56995177 0.62670857
		 0.49789321 0.66364747 0.41788247 0.38750497 0.41332227 0.34164971 0.41555867 0.37583154
		 0.84076387 0.6617586 0.85144913 0.70411915 0.81223446 0.72524399 0.92188817 0.63764632
		 0.92372131 0.66224593 0.92884612 0.67096055 0.9290601 0.68595445 0.91558808 0.68001324
		 0.81871057 0.74433857 0.81074476 0.80247861 0.81163132 0.81564766 0.79633451 0.82064092
		 0.43434542 0.71097684 0.47164378 0.68264884 0.39214122 0.7564702 0.42003566 0.72383177
		 0.42538738 0.71536028 0.44108212 0.7212162 0.4774574 0.77656835 0.51892966 0.7527979
		 0.4707514 0.7850278 0.42083979 0.78827178 0.46003848 0.78517646 0.63130903 0.89805657
		 0.62914658 0.90905482 0.58420461 0.9442547 0.6194768 0.91742021 0.55635506 0.86308938;
	setAttr ".uvst[0].uvsp[750:966]" 0.5792563 0.8082394 0.5397104 0.93169075 0.54909909
		 0.88463372 0.54980445 0.87195629 0.5666247 0.87122124 0.73106426 0.94557804 0.72337335
		 0.89908165 0.72023827 0.89006418 0.72256291 0.82481438 0.72223735 0.88025922 0.7736721
		 0.94169897 0.79594028 0.90411681 0.80711752 0.83053321 0.7996695 0.88560247 0.80099708
		 0.89577812 0.78558379 0.89791006 0.93936646 0.71809411 0.94535434 0.72813588 0.9459126
		 0.73702216 0.87570208 0.75961012 0.85800272 0.73511994 0.88536233 0.77410722 0.88621831
		 0.75681067 0.87810683 0.76936018 0.65338248 0.82852405 0.52198762 0.2866194 0.55617046
		 0.47519305 0.5482688 0.47150561 0.59557909 0.80166405 0.94930845 0.78087252 0.91356117
		 0.79839736 0.73490059 0.81626135 0.7350902 0.8025685 0.79784364 0.80712849 0.63470101
		 0.69774145 0.64118433 0.6838097 0.53208292 0.72997469 0.51990402 0.73737961 0.56481624
		 0.43257442 0.57710445 0.43573633 0.48688924 0.68654633 0.71368772 0.71669358 0.57762241
		 0.61843944 0.47062594 0.76631135 0.45958102 0.77195352 0.43173623 0.7292459 0.61287946
		 0.90475172 0.56306541 0.88161653 0.73442912 0.89374727 0.7338689 0.88206679 0.78780651
		 0.88607329 0.93583459 0.7385903 0.77585953 0.8967064 0.76011503 0.89503163 0.60338885
		 0.90026516 0.58822691 0.89264697 0.45421192 0.76392037 0.44610384 0.75027466 0.61219525
		 0.46181723 0.5329662 0.43332672 0.55178154 0.45760736 0.4554033 0.25186005 0.5099684
		 0.26651523 0.50986969 0.28499907 0.55128175 0.92893249 0.57263917 0.88590449 0.40274
		 0.75980914 0.43715101 0.73730373 0.94707024 0.7714991 0.93866706 0.77317941 0.93079185
		 0.78822738 0.94181967 0.78302318 0.89224333 0.76657015 0.90021676 0.76018715 0.91442198
		 0.78485417 0.91313851 0.7510463 0.92636776 0.77839971 0.92640787 0.74239558 0.92013007
		 0.79428893 0.93026 0.8194468 0.76543492 0.8190316 0.74416989 0.88215345 0.78408867
		 0.82052255 0.7609641 0.88286006 0.74023885 0.93938047 0.74427348 0.89416641 0.77234012
		 0.72794038 0.74714983 0.80352443 0.74672204 0.81815642 0.67213541 0.71352327 0.61270839
		 0.79361618 0.6998089 0.65263599 0.65671521 0.69040018 0.52587909 0.71998793 0.63265556
		 0.6105364 0.58638525 0.62837964 0.86976075 0.64999717 0.86440682 0.69703335 0.78056991
		 0.66862291 0.75006574 0.71668869 0.64779937 0.62575012 0.59960014 0.64496893 0.73258418
		 0.7341646 0.74983788 0.73287386 0.65424025 0.63257843 0.6225245 0.67330021 0.61371732
		 0.66526216 0.56236881 0.4628267 0.59248614 0.49948612 0.56859428 0.44944909 0.60197222
		 0.48125651 0.52575493 0.44392452 0.55666846 0.28935039 0.53713614 0.4248867 0.55724776
		 0.44517449 0.69332427 0.7243278 0.63082302 0.80173576 0.72970927 0.66474414 0.70026296
		 0.70941138 0.59928131 0.67300773 0.5153302 0.70404553 0.72031921 0.66135949 0.67877752
		 0.6990934 0.61425787 0.59417021 0.58759511 0.65506428 0.50437605 0.68862307 0.65029746
		 0.70450884 0.65979165 0.8162539 0.64873153 0.81028008 0.81345582 0.66750532 0.8122645
		 0.71016377 0.80142361 0.70920163 0.5759716 0.63796699 0.90555555 0.63888174 0.91241324
		 0.66954607 0.90032482 0.67443573 0.85700399 0.71528006 0.86954069 0.70797396 0.75786203
		 0.6682238 0.67963231 0.64366502 0.80268157 0.66881269 0.77411389 0.71225542 0.89270949
		 0.64126503 0.88226926 0.68503219 0.78565353 0.80635667 0.85057575 0.65871584 0.79549623
		 0.72455812 0.76650369 0.80446428 0.9319073 0.72859997 0.92221361 0.73175842 0.88678765
		 0.69584984 0.89410609 0.74969536 0.90399402 0.68511516 0.90797538 0.74029213 0.77771574
		 0.88434386 0.45675206 0.74301809 0.51311493 0.72802687 0.44710287 0.7292937 0.50283623
		 0.71242702 0.49252796 0.69702303 0.46544915 0.75754911 0.61863357 0.89522535 0.60896343
		 0.89027935 0.57670003 0.87529868 0.62474906 0.81470031 0.59305388 0.88232368 0.64224643
		 0.82305038 0.60705304 0.80672628 0.4354012 0.38617048 0.43117401 0.37595809 0.70988089
		 0.72825414 0.079133511 0.13141036 0.11850762 0.12024345 0.052227795 0.15001938 0.050796449
		 0.13627934 0.98014438 0.42194891 0.9564476 0.40840989 0.92199159 0.38748318 0.22352153
		 0.084830068 0.2522893 0.067714833 0.18515652 0.099098846 0.2759251 0.051153772 0.8413021
		 0.32615981 0.86726248 0.34359509 0.89383501 0.36442322 0.15202659 0.1100895 0.080991805
		 0.14415701 0.97530437 0.42608327 0.25803345 0.077248737 0.28237265 0.06003245 0.27975088
		 0.10737196 0.89078379 0.36956584 0.83644378 0.37794992 0.91783535 0.39117581 0.18933547
		 0.10959445 0.15544856 0.12036347 0.086099505 0.18318076 0.12188083 0.13199157 0.23030889
		 0.093643062 0.20691931 0.15006164 0.8642081 0.34904999 0.89764911 0.42395821 0.95097047
		 0.41282827 0.97663748 0.39032066 0.87470174 0.27712873 0.24186975 0.055822991 0.90515625
		 0.27693728 0.9316864 0.2938174 0.88915312 0.3102594 0.91782463 0.33412302 0.94639528
		 0.36025015 0.5186609 0.3865416 0.51049161 0.38874984 0.86363792 0.29199961 0.84645098
		 0.32130194 0.074451447 0.11239817 0.95981073 0.32100391;
	setAttr ".cuvs" -type "string" "UVMap";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 841 ".vt";
	setAttr ".vt[0:165]"  6.48927021 4.0031242371 7.32264805 7.34037638 4.18208742 7.24001741
		 7.92827225 3.76203895 6.82746553 7.29609156 1.78439391 8.39102268 7.5293026 2.14359236 8.80702019
		 7.77274418 2.090703964 7.78454447 7.094337463 1.95965731 7.79729557 6.90562153 2.52269959 8.71093941
		 7.54224825 2.57631397 8.6134491 8.0053052902 2.39104986 8.22361469 6.67322683 2.23430085 8.27549553
		 7.93456078 2.50308704 8.39744186 7.69046688 1.81573045 8.12347889 6.38712502 5.63035679 2.0098717213
		 7.10190344 2.2702601 8.90713882 6.9356041 4.22892094 7.39310074 7.56381941 2.30027246 8.81438255
		 5.684618 6.25917292 2.55332279 7.92284203 2.18385649 8.5438652 6.86795855 1.92508674 8.49729443
		 4.75943375 5.8744297 3.015669584 7.83396149 3.55475211 6.7163353 6.38864803 3.77983713 7.18803453
		 7.44652843 1.92865241 8.68675613 7.76280308 4.090161324 7.093074799 7.49197388 1.99681222 7.67050648
		 6.75955343 2.088024855 7.99114513 7.10895634 2.60094213 8.76338291 7.90136766 2.24080944 8.045899391
		 6.80233192 2.37483883 8.53311443 7.666049 4.24607515 6.79569674 6.27387047 3.89970446 6.88900185
		 7.72760773 3.63417363 6.41078901 6.85281467 4.37040138 7.076411724 6.16974163 6.15846729 2.1591084
		 5.1759181 6.23209667 2.92947316 7.84438229 2.31995416 8.59976768 7.23576069 2.38009071 8.8666544
		 7.83617735 1.96644342 8.41839314 6.63177586 4.87327719 2.35952377 7.015305996 2.058785915 8.78488731
		 4.70816374 5.21407509 3.28009868 7.85568857 3.9429338 6.56703424 7.2601757 4.375741 6.98046541
		 6.4023838 4.20137787 7.057148933 5.82691956 5.23962021 5.2882576 6.7140007 5.53653955 5.17083263
		 7.34715223 5.022398472 4.74899673 6.26458216 5.56476641 5.34362459 7.33590126 4.71372652 4.60877657
		 5.65317249 4.97722149 5.19322729 7.167871 5.42197037 5.0096569061 3.65009642 3.92185616 9.20265102
		 4.51854467 4.14677238 9.21860886 5.19678402 3.74785066 8.75916195 4.66079903 1.64743793 10.47868443
		 4.82400227 2.15092492 10.92180824 5.17730284 1.88542378 9.87040138 4.49147701 1.68603468 9.80220604
		 4.1510396 2.49572301 10.71133327 4.81175518 2.61635613 10.69324398 5.34679508 2.35069704 10.33434296
		 3.97453451 2.044117928 10.23328781 5.24446964 2.51469636 10.5098238 5.0904212 1.6604861 10.23723984
		 4.32338095 6.027414322 3.29869843 4.3568306 2.27376437 10.96356869 3.99149704 4.14844942 9.3470211
		 4.84300518 2.33535671 10.92457581 3.30008459 6.57625723 3.60507083 5.25361347 2.16384697 10.68037033
		 4.19304657 1.77148867 10.51949024 2.23606992 6.10153055 3.76372027 5.13396454 3.52924347 8.60169888
		 3.58304095 3.68809581 9.037031174 4.77510118 1.87921941 10.80214024 5.029276848 4.013045788 9.077877045
		 4.90533733 1.74183035 9.70559978 4.10903263 1.84407544 9.94805717 4.34765053 2.62283683 10.7921648
		 5.27453327 2.1277051 10.13600063 4.078054905 2.27448773 10.51358891 6.43765879 3.53619337 7.40696287
		 6.9135766 3.98517323 7.6584034 7.8690896 3.84152675 7.30411053 7.84822321 3.32502246 6.92599821
		 4.018963814 6.45140886 3.42742181 2.5574255 6.50026464 3.75261331 5.15352774 2.32577515 10.7229929
		 4.48923922 2.40719604 10.93277073 5.20235682 1.88495445 10.55427647 4.31524324 5.27618074 3.48849106
		 4.30557394 1.99487185 10.83747482 2.16020012 5.49815798 4.20150471 6.56478548 3.79663372 7.58506489
		 7.40349865 3.96757269 7.50041819 7.98289156 3.58559775 7.084520817 3.17111564 5.63721466 6.85995293
		 4.073742867 5.96402264 6.81776905 4.74705076 5.37701654 6.421206 3.60076523 6.0026597977 6.93735838
		 4.74474239 5.0535326 6.27656031 3.014541149 5.320889 6.75127506 4.5170598 5.81362247 6.7117753
		 0.22990072 2.65004492 8.5469265 0.91836309 3.10531378 8.86089134 1.76688397 3.030908585 8.61009789
		 1.53706622 1.0082440376 9.5882206 1.437549 1.35654569 10.11132813 2.1027472 1.480564 9.23483562
		 1.51635432 1.13286698 8.95497894 0.75449246 1.50676227 9.72257042 1.3402735 1.79482853 9.94822502
		 2.025393724 1.78941703 9.77777958 0.84715366 1.19910157 9.18034554 1.83006334 1.86158276 9.92026901
		 1.99742961 1.1805923 9.51911354 1.53399277 5.62484169 3.97789264 0.95038199 1.32297492 10.0010480881
		 0.43892217 2.91808176 8.84799004 1.39824581 1.51225305 10.14114189 0.48512945 5.63235521 4.0025391579
		 1.898983 1.53584671 10.042300224 1.057492733 0.96560287 9.47907639 -0.3352806 5.048877716 3.73024964
		 1.81327021 2.87355471 8.43678951 0.29636228 2.45724964 8.32833481 1.49652267 1.17228878 9.96643543
		 1.4324857 3.15874839 8.89595604 1.91463161 1.30841339 9.018281937 1.086783886 1.11758649 8.98256207
		 0.87581867 1.64981973 9.8784914 2.06975174 1.63278365 9.54671574 0.8027125 1.35302997 9.49155045
		 9.24624538 2.40465355 5.95005512 8.65782547 2.52344775 5.97486973 8.69864655 1.82518566 5.15999413
		 9.38589764 1.75515389 5.28504086 9.17940044 2.04026556 6.16391993 1.10603869 5.73192024 4.064692974
		 -0.13273318 5.45327568 3.86783814 1.74473011 1.63647258 10.063983917 1.039044857 1.47976053 10.033008575
		 1.95976007 1.34330368 9.88992977 1.76902092 5.10148573 4.18650246 1.012063265 1.13198745 9.84854507
		 -0.33103532 4.73471594 3.64625025 8.91122627 1.6774435 5.85760689 9.15108681 3.97926044 2.81935811
		 8.69056416 4.46749592 3.33811331 7.96520948 4.23241138 3.73402452 -0.1554874 3.96274924 6.89138699
		 0.54308271 4.49705172 7.15127611 1.46705627 4.34374762 6.89722443 0.1197176 4.35882378 7.20231104
		 1.63202643 4.11262465 6.71748066 -0.15990546 3.701612 6.71357441 0.95352501 4.56251001 7.23843384
		 9.65124226 2.077059746 5.66019344 8.38155746 2.18061352 5.61744261 9.60203266 2.22702122 5.79436731
		 9.2830677 1.59059954 5.64024496 8.80045795 2.2923913 6.19340277 8.32289982 4.48368692 3.57698202
		 9.23231411 2.18066645 6.15253353 9.55197144 1.9549737 5.95635557;
	setAttr ".vt[166:331]" 8.52710819 1.91613138 5.89449739 9.090558052 3.71543193 2.70365453
		 7.84276724 4.013291359 3.73432493 9.078546524 1.84898615 6.10528135 8.991395 4.33830166 3.090592146
		 9.10089111 1.76580107 5.047677517 8.37565899 2.039796352 5.32217789 8.85574341 2.55651402 6.028625965
		 9.53276062 1.91932535 5.52223492 8.53445911 2.35774255 5.84189272 8.40838623 3.42121935 4.95437431
		 9.16434002 3.46555114 4.80991459 9.63591194 3.02257061 4.37161732 9.49647331 2.10233712 5.98440886
		 8.93974781 2.34508276 6.15640259 9.44738007 1.76166224 5.89159584 8.69432926 2.096843243 6.13372469
		 9.54488468 3.31627655 4.60100412 8.76401043 3.56785297 4.97792435 9.58916759 2.8444562 4.28019094
		 8.25355721 3.23677182 4.89357138 7.062301159 5.026972771 1.87429678 7.74654865 4.9928236 1.38811934
		 8.29090786 4.42428207 0.78386116 7.28026009 5.1683259 1.79814816 8.18971729 4.15563869 0.77848023
		 6.8766737 4.46635103 2.1331768 8.22909451 4.74247074 0.94278288 -1.32034612 -1.14768517 1.11949253
		 -1.95711565 -0.64100415 1.5411669 -1.72842693 0.2231282 2.1260407 -0.62975651 -1.93146682 4.39348269
		 -1.14678431 -2.080130816 4.26172256 -0.67312175 -1.023466229 4.37116194 -0.15358914 -1.48104119 4.092849255
		 -0.72340554 -2.15365458 3.45025182 -1.2440393 -1.75343192 3.73826861 -1.22364473 -1.22169149 4.16582966
		 -0.12795997 -2.012870312 3.54392767 -1.34958506 -1.38464689 4.019386768 -0.76653039 -1.49294925 4.57156372
		 -0.89948773 -2.34865212 3.90754485 -1.69792092 -1.096687675 1.15696633 -1.25483334 -2.034902096 4.13252068
		 -1.28299856 -1.64624596 4.44476461 -0.39029989 -2.19528174 4.033088207 -1.4390316 0.39239374 2.24179816
		 -1.026419759 -1.09937942 1.16391838 -0.91639256 -2.073126316 4.37230301 -2.00094532967 -0.054913402 1.93316519
		 -0.40269834 -1.14631879 4.29337072 -0.052123986 -1.81678069 3.78292561 -0.97630882 -2.083488941 3.48421454
		 -0.97810173 -1.027183533 4.35995817 -0.39578536 -2.088184834 3.48994374 -0.59403104 -0.20613053 3.50453734
		 0.046140604 -0.6581679 3.047992468 -0.8202439 -1.79474938 2.44224095 -1.51826513 -1.37460721 2.87215567
		 -1.34712756 -0.58252555 3.37067771 -0.012307674 -1.47940063 2.53493881 -1.32149243 -1.70302439 4.27182722
		 -1.040028214 -2.22268343 3.87454438 -1.043352485 -1.6345005 4.55574799 -0.66294771 -2.33701348 4.017816067
		 -1.58768547 -0.87308335 3.24964452 -0.21808308 -0.29091054 3.3442595 0.1598413 -1.11263323 2.74838495
		 -1.17972422 -1.78637159 2.55054998 -1.035475135 -0.27881914 3.52444434 -0.40040243 -1.74632275 2.4003582
		 -1.27179623 1.64685369 0.80537206 -0.30461359 0.65502131 0.7378633 -1.52202582 -0.18000294 -1.14867747
		 -2.4524622 0.79209077 -0.98941267 -2.1179893 1.8478322 0.065984905 -0.47066939 -0.15433732 -0.19528885
		 -0.64113039 1.15015316 0.83274591 -0.20910895 0.19135718 0.39604205 -2.057584524 0.090155959 -1.31145525
		 -1.72545576 1.81548107 0.47945842 -1.0049164295 -0.28196609 -0.81406391 -2.420506 1.54073 -0.40776306
		 6.97687483 3.30945921 -1.73467052 7.2347064 4.56816769 -1.80655539 7.22723722 3.87402558 -1.83122575
		 6.17132139 3.31699634 -4.25350285 6.26673126 4.86921072 -4.26146412 6.35319805 4.11383772 -4.41172504
		 5.28096628 3.89483404 -6.17977238 5.24754 5.49434948 -6.0043578148 5.45588303 4.8366785 -6.109025
		 4.45485783 5.92518663 -7.057477951 -0.60398179 3.90955091 2.18982029 -0.62932944 5.43591213 2.2466743
		 -0.69564402 4.59309196 2.26489353 -0.78776687 3.57717586 1.37069893 -0.65662163 5.51313925 1.18637192
		 -0.94526714 4.34461975 1.15416205 5.5101018 6.36643124 -0.15482664 4.61085129 6.87465906 -0.033717267
		 3.947299 6.89249611 0.80850476 5.034098625 6.60349655 -0.34805506 4.11712885 6.86049223 0.28913039
		 3.70424223 6.9257102 0.89450467 2.68482757 7.053412437 0.76146346 1.71990955 6.78077745 1.39086008
		 3.25398755 6.96933126 0.63192242 2.051196098 6.88452053 0.88071859 1.42402625 6.65393162 1.45249164
		 0.46216822 6.5140686 1.093363523 0.98985702 6.61318302 1.042512417 -0.28154254 6.058555126 1.1437459
		 5.94959736 6.00074911118 -0.3805407 6.61283588 5.60888004 -1.44484341 6.18428135 5.85761309 -1.11731207
		 6.93982506 5.080607891 -1.7379756 7.76631737 4.5167594 -0.55129337 7.66761875 3.85451126 -0.58813316
		 7.40495825 3.33606315 -0.53974354 4.68934536 6.70143557 1.57458663 5.17346954 6.72987747 1.20678639
		 2.97839093 7.038712502 2.11600995 3.61776638 6.9093194 1.9784466 1.86305475 6.76455259 2.3762207
		 2.28079176 6.92691755 2.26784086 6.67707539 5.72969055 0.22828433 7.17130709 5.42442179 -0.11313134
		 4.031631947 6.77074528 1.87635303 0.46460801 6.32728767 2.40769911 1.10978699 6.42754745 2.46931863
		 4.32097483 6.69581461 1.77248323 5.58202696 6.54833364 0.85476881 1.55496931 6.59837437 2.45283031
		 5.83472252 6.32174253 0.65944874 6.3070507 5.95656538 0.337396 7.59495878 4.91009426 -0.45448554
		 -0.13814953 5.98316813 2.32882452 5.26540565 3.48967528 9.09950161 4.59164906 3.87406659 9.54623032
		 3.73235202 3.65813613 9.53677368 5.17492628 3.18193173 8.87116337 5.14142704 3.72869968 9.3317709
		 3.99587774 3.85589314 9.6547966 3.64873672 3.36043692 9.30327415 3.59394884 4.1424675 8.929636
		 4.46136236 4.36892796 8.94270515 5.14608669 3.97093391 8.48183918 3.98448682 4.36341858 9.022831917
		 5.053221703 3.64900947 8.2567482 3.49795818 3.82089663 8.70353413 4.85884237 4.26001024 8.78868294
		 1.84808826 2.80502224 8.84485054 1.01229775 2.85496426 9.094241142 0.32160813 2.43662357 8.78575802
		 1.91070855 2.57760549 8.55284882 1.60044909 2.93608546 9.046697617 0.4550468 2.65556359 9.0031137466
		 0.39802179 2.21501899 8.495368 0.16097392 2.88230968 8.28768158 0.84497821 3.36520123 8.58565903
		 1.71039343 3.25865173 8.35653877 0.49874693 3.23126101 8.52716637 1.80026972 2.96302938 8.087948799
		 0.25491214 2.59317398 8.024102211 1.19808137 3.40834141 8.56228638;
	setAttr ".vt[332:497]" 8.48811436 3.2337575 5.21460676 9.23088551 3.22267008 5.10971642
		 9.69813347 2.82137918 4.67430401 9.64974785 3.03142643 4.86046886 8.77803802 3.33808064 5.26245499
		 9.58897686 2.57649398 4.51554585 8.25475597 3.023934841 5.10988379 9.53246784 3.25717783 4.0077624321
		 9.068478584 3.71729183 4.47640657 8.31148243 3.61987996 4.67411327 8.67645073 3.75591326 4.63587427
		 9.43787003 2.95358682 3.82644176 8.11004448 3.32379341 4.61599684 9.37115669 3.57555962 4.26954365
		 8.40831661 4.30304193 3.84080076 9.17789841 3.48771405 2.95672178 7.8678546 3.76496696 3.95617533
		 9.09883976 4.16787815 3.37154055 9.26186371 3.81001353 3.13277841 8.79917049 4.29310369 3.62946486
		 8.061942101 4.085526466 3.97491097 7.81936598 4.42037487 3.42475581 8.53556347 4.67212296 2.98751521
		 9.013724327 4.16905546 2.45155787 8.21609402 4.67341852 3.22325468 8.9305706 3.80981684 2.30512714
		 7.62145567 4.064452171 3.45072818 8.83889484 4.53895235 2.70986867 7.25452232 5.14364672 5.43831778
		 6.83359814 5.30231619 5.64623928 5.71301556 4.6869669 5.56874943 5.95099163 5.041344643 5.71835709
		 7.43674755 4.39286375 5.0033798218 6.4321804 5.29825449 5.74563932 7.4544816 4.77886009 5.1987052
		 5.6868639 5.40198565 4.8928771 6.58556604 5.70731354 4.76040459 7.24782228 5.21344519 4.33878994
		 6.083220005 5.69133949 4.86058521 7.24536228 4.81246424 4.18149567 5.45811415 5.034072399 4.79256487
		 7.031712055 5.56837702 4.55802774 3.48973393 6.48221159 4.24764395 3.29602885 5.4111228 7.34285593
		 4.18089247 5.71049833 7.32439899 4.84321356 5.16622257 6.89517689 4.18628216 6.35607862 4.071589947
		 3.69910407 5.7026577 7.41311646 4.84104729 4.76314163 6.67163944 3.088442802 5.017988682 7.1782198
		 4.57541227 5.55958843 7.16466141 2.40435243 6.1265502 4.37085819 2.77506685 6.47285414 4.37751818
		 2.98489785 5.81159687 6.24464369 3.88168764 6.14959812 6.18701601 4.59226465 5.54980946 5.81294394
		 4.35713625 5.9751935 3.93952703 3.38285327 6.12655258 6.2817173 4.60757542 5.094836235 5.68601513
		 2.8122406 5.33640623 6.18141222 4.40912771 6.033063412 5.99012423 -0.052098211 3.67138171 7.26884842
		 0.63389999 4.18608665 7.54860163 1.53400683 4.039043903 7.29186249 0.28157666 4.050810814 7.50054455
		 1.75668895 3.7354269 7.024735928 -0.060439564 3.32339883 7.0057759285 0.99822819 4.22018433 7.51155472
		 -0.23200034 4.21432352 6.43614769 0.48895645 4.78644848 6.65792894 1.43325269 4.592031 6.48498392
		 0.11604461 4.63474226 6.60758352 1.65921438 4.26426935 6.24058628 -0.23672569 3.83102322 6.24183035
		 0.87867785 4.81697798 6.63949871 4.25032425 3.012187719 -0.096964747 3.82557821 3.49230337 0.92935801
		 5.13743496 3.10774875 0.20917034 4.68050194 2.84559703 -0.35003865 3.85778117 3.19112277 0.325463
		 2.34358001 3.27905703 0.7992847 1.68258226 3.18856382 1.49389029 3.3175323 3.5246973 1.10419095
		 2.88266802 3.3402884 0.68074358 1.81615531 3.015655518 0.92094487 0.54501796 3.12425947 1.20024943
		 1.25372922 3.23564959 1.61658037 1.010900021 3.085087299 1.13704109 -0.2068952 3.063573122 1.30140424
		 5.90362215 2.89268136 -1.13156223 5.52203369 3.0057678223 -0.081387863 6.51824188 3.072114229 -1.46004045
		 5.35973024 2.81895471 -0.82719749 2.71253896 3.67538714 2.045953512 2.13404655 3.64604878 2.15277576
		 1.34709346 3.51718473 2.32302976 1.055548668 3.47937465 2.30887628 1.87683439 3.6018002 2.20460272
		 5.4690752 3.30906224 0.79546142 5.3363533 3.34150553 0.93421698 0.40889651 3.5060277 2.2416482
		 -0.25120831 3.47374392 2.1795001 6.43845701 3.20321941 0.038156211 6.0072932243 3.12599874 0.37884656
		 4.15707636 3.54630947 1.67030072 3.63008475 3.6394012 1.85501182 4.91963768 3.42161846 1.24723077
		 4.42337608 3.44158983 1.55815279 3.31117129 3.64898705 1.92723191 5.83633947 3.1468513 0.49589446
		 7.043661594 3.21209431 -0.38478133 -1.38866055 -0.97791702 0.7357465 -2.045531511 -0.37868851 1.10461307
		 -1.83991909 0.44968948 1.80174422 -1.77299476 -0.88257772 0.72235405 -1.46635437 0.65051705 1.99115658
		 -0.96614218 -0.93273377 0.85040343 -2.10224462 0.19489591 1.56415522 -1.21853924 -1.32100153 1.4684875
		 -1.83572948 -0.8566485 1.90447366 -1.62003171 -0.011457501 2.45300794 -1.58442187 -1.28668344 1.52858675
		 -1.24061692 0.25737229 2.57139158 -0.79918909 -1.22457874 1.48392665 -1.8859936 -0.29586193 2.27969098
		 -0.10013916 1.66814768 0.39131999 -0.058280766 2.41535902 0.47220814 -0.71448255 2.088879585 0.58572793
		 -0.75320065 2.8458786 0.91978794 -1.1202507 2.3737216 0.54513597 -1.045502782 3.11057949 0.72267663
		 3.57930923 6.85240221 -3.012036085 4.31783724 6.5843544 -3.22211933 2.92988944 6.88464546 -2.85497189
		 1.86818123 6.94123554 -2.6093905 2.35841584 6.92246532 -2.71440005 1.18485677 6.74051142 -2.49626398
		 -0.046272598 6.2547636 -2.2663455 0.53706282 6.56071949 -2.36427879 -0.65294158 5.65658998 -2.15560484
		 5.45135927 6.029113293 -3.59328818 4.96909285 6.32836294 -3.41453648 5.89267015 5.52185869 -3.94185829
		 -1.12190509 4.48686743 0.4106288 -1.45493209 2.69907236 0.22748809 -1.33624852 3.4829464 0.28753549
		 6.93498659 4.58738232 -2.60739541 6.96822405 3.9331522 -2.67838669 6.70563126 3.32434297 -2.53038478
		 0.87165958 6.63217354 -0.0036139321 1.83074892 6.78101492 -0.11230381 3.0054399967 7.043723583 -0.37656599
		 3.80255914 6.95994043 -0.66685849 4.82727575 6.54742718 -1.22429395 5.93234968 5.94694853 -1.83881402
		 6.32477999 5.58509064 -2.11910939 6.64355803 5.11676407 -2.40217304 -0.381441 6.097985268 0.19609444
		 0.21208179 6.4884758 0.069495782 2.43037367 7.023077011 -0.23946527 4.30432606 6.85549164 -0.94957513
		 -0.68177432 5.54204845 0.3083764 0.39575016 2.72645164 0.4491806 0.38828722 2.22067046 0.15808001
		 3.93847895 2.84510779 -0.79520029 4.37219572 2.68353391 -1.047798991;
	setAttr ".vt[498:663]" 3.48821497 2.97369766 -0.56464922 2.37695503 2.9594965 -0.18613574
		 2.82359219 3.02635026 -0.28685534 1.92486954 2.84474659 -0.067431897 0.83539987 2.79151392 0.27887994
		 1.32520056 2.7838552 0.19186451 5.69891453 2.84232593 -1.85390949 6.31434345 2.99056411 -2.24089718
		 5.092026234 2.75700331 -1.49632919 0.31185299 1.30075109 -0.11417604 3.49763227 2.84035611 -2.50207663
		 3.89918423 2.67606783 -2.83336306 3.077241182 2.92190671 -2.34366965 2.33788967 2.82483673 -1.81660783
		 2.57768488 2.93823433 -2.037100792 2.048573017 2.64949608 -1.52616811 1.37917972 2.071690559 -0.72415268
		 1.79601979 2.36071038 -1.16282117 5.1446104 2.60990214 -3.6449635 5.73730516 2.86418223 -3.97527027
		 4.51969051 2.55196214 -3.30675459 4.87800169 2.78320789 -2.0077950954 4.21169043 2.78245592 -1.58887184
		 3.30217457 2.97997046 -1.20901072 2.74698853 3.060516119 -0.93626904 1.94924343 2.77191162 -0.64653903
		 1.60732865 2.56258345 -0.47928986 6.18084478 2.98632813 -2.7972126 5.57676125 2.82506752 -2.4162941
		 1.2342912 2.34225559 -0.26209611 2.37232447 2.95771933 -0.80242985 3.78730178 2.90015268 -1.38804018
		 -0.092737213 0.77871192 -4.047655106 0.84559071 0.78328121 -1.65685666 -1.25727463 1.35214782 -4.37237024
		 0.60495514 0.58616841 -3.20190406 0.24253272 0.50670052 -1.14376521 -0.08873596 0.26510048 -2.20337462
		 -0.64752364 0.37103695 -2.83697557 -1.70057869 0.96408117 -3.47732615 -0.91180825 4.61434984 -6.63248253
		 -1.076145411 3.49033213 -5.36754608 -0.41090003 5.91184902 -4.65504837 -1.038318276 4.60755825 -4.99272585
		 -1.15439284 4.95447063 -3.80918145 -1.91087174 3.41854501 -3.11888266 -0.956303 5.42289257 -3.63809967
		 -1.70302641 4.085906029 -2.73631191 0.84215981 6.91382456 -6.17758083 3.30712485 3.6079545 -7.26706791
		 0.98025656 3.080942869 -7.17850637 3.19037724 6.90300322 -4.12151814 3.85606337 6.70086956 -4.30502081
		 2.32047749 7.03113699 -4.77708578 1.59271586 6.91231775 -3.92100739 2.013731718 6.91695213 -3.97563314
		 0.86149073 6.94722176 -4.62324905 -0.16272444 6.22889709 -3.6499536 0.41043183 6.5314312 -3.74075723
		 4.89730358 6.24412584 -4.79216909 4.0837183 6.61802673 -5.23437214 5.35951233 5.85726261 -5.098052025
		 -0.99912035 5.16509008 -2.13650084 -1.35107458 4.70814228 -2.0084660053 6.7612133 4.017522335 -3.22328329
		 6.53768349 3.28858137 -3.097599745 1.52286518 6.84279156 -1.30940402 3.37166119 6.91453505 -1.74081039
		 5.51736641 6.16184664 -2.50355291 5.9791069 5.84578705 -2.69818425 6.35659599 5.31007385 -2.9461019
		 0.06082366 6.28398657 -1.039675117 2.16414022 7.008887291 -1.42376685 3.95443177 6.79258728 -1.94349205
		 6.69306183 4.71434975 -3.14731932 0.64879656 6.65695047 -1.16355705 2.69026518 7.0093197823 -1.54482317
		 4.59816504 6.50366068 -2.1465373 -0.55738312 5.73543167 -0.89039814 -0.85205108 5.26997519 -0.7235316
		 -1.19901407 4.66798782 -0.54735196 -1.74800372 2.93565249 -0.15399447 -1.57838202 3.7201488 -0.23768565
		 -1.91452134 3.36372781 -1.1975795 -1.5535115 3.99392152 -1.17902708 0.9722631 1.86266387 -0.40228111
		 0.80945987 1.49602795 -0.73992032 0.59600765 1.51726198 -5.3481555 1.93646681 1.72362506 -2.47853589
		 -0.40100542 2.098029613 -5.66588306 1.51835549 1.49971271 -4.49730968 1.40284705 1.071098685 -2.3893764
		 1.022710323 0.96154392 -4.032935619 0.25405431 1.15986526 -4.81204987 -0.83183825 1.72181094 -5.095970631
		 1.48133016 1.67866325 -1.32547593 -0.23058727 1.07114768 0.4425419 -0.63601065 1.53383946 0.58995253
		 -1.22062826 1.96416962 0.55766058 -1.56363285 2.18898058 0.28579095 -0.087315649 0.66820312 0.017919954
		 -0.20718786 0.15936856 -0.70581806 -0.65005225 -0.018220609 -1.52503753 -1.18621349 0.07864172 -1.97021866
		 -2.025965691 0.47906783 -2.19454575 -1.8953619 2.33159637 -0.097641058 -2.08632946 2.69674563 -1.393448
		 2.9811151 2.39084053 -5.03826046 3.65093422 2.38364816 -4.15002584 2.72548771 2.15784287 -4.35276937
		 2.31554103 2.2773819 -2.50983047 2.37749648 2.11588955 -3.71474719 1.8801403 1.95518517 -1.6067636
		 4.45814466 2.66041374 -5.32856655 5.27833986 3.039221525 -5.36541033 4.20965862 2.32356811 -4.34430361
		 0.1547986 2.58797646 -6.43064833 -2.39193797 1.97643447 -1.12952149 -1.97605908 2.040630102 -3.56623387
		 -2.2322464 2.42494488 -2.13714719 -2.14425254 2.70337558 -2.62715459 -2.20398998 1.72962987 -2.93111205
		 -2.42936063 1.20390964 -1.8388952 -1.36742163 2.70697379 -4.85686827 -1.6652925 2.38450575 -4.33852148
		 -2.16152 2.2088716 -0.70273566 3.84273982 3.051867723 -6.15414 2.66425419 2.91317201 -6.24409342
		 1.95451701 2.88906026 -6.48054218 4.81021786 5.10638857 -7.29341507 4.53944969 4.40612745 -7.31910849
		 -0.52306533 5.92472982 -6.36347771 -0.3358137 3.53734493 -6.94362688 2.071090698 7.033450603 -6.29486132
		 3.31217694 6.74741745 -6.60981131 2.29732394 3.23330998 -7.11504126 2.10773849 2.30787992 -5.59095716
		 1.88434291 1.90205443 -5.11520147 1.02184391 1.8360976 -5.62043905 -0.28970134 4.92975521 4.4180932
		 0.47132277 5.4592247 4.68441057 1.47269964 5.31547594 4.63026476 -0.12549031 5.28705072 4.56263733
		 2.10420394 5.71490622 3.95537114 -0.29473922 4.48939562 4.12053919 1.081118584 5.50354624 4.72473335
		 8.10146713 4.50054932 0.27131921 -0.48201311 4.62147951 3.26650071 -0.48034203 5.26622343 3.19284415
		 5.021345615 6.44995165 2.46802044 3.15190482 6.8160615 3.10978389 2.11035919 6.40744019 3.30193424
		 7.048770428 5.39514112 1.27176702 0.50176901 5.96833515 3.39238119 6.11562109 6.030712128 1.5557723
		 -0.11587054 5.72122574 3.29305077 8.054208755 4.067004204 0.3996489 6.85090303 4.84357738 1.9831723
		 5.4783144 6.4932332 2.08579278 3.89772677 6.68690395 2.9283824 2.46029162 6.74112558 3.25484776
		 7.54742765 5.16553926 0.87501997 4.1973114 6.33225918 2.80026531 1.13115442 6.11559296 3.46791315
		 4.68511724 6.21925592 2.59623194 5.9137249 6.36390543 1.76751661;
	setAttr ".vt[664:829]" 1.50385761 6.10085249 3.43784213 6.72483826 5.414505 1.27479053
		 8.0218153 4.84250402 0.45968908 1.71506572 5.38048792 4.0096693039 4.3325119 5.67079115 3.38248777
		 5.11997843 5.68331051 3.60995483 6.031217575 6.099099159 3.24492812 6.71415806 5.55919981 2.75202537
		 5.41006851 6.044765949 3.55706453 4.68220043 5.54488277 3.12744451 6.48559999 5.92583847 2.8936553
		 6.689641 5.13181686 2.15203857 7.3252821 4.76840115 2.3970654 8.0040845871 4.86920261 1.89247668
		 8.5316534 4.359478 1.33805013 7.52814531 4.99003744 2.29519057 8.38076305 4.008687973 1.17555046
		 8.4639492 4.65543365 1.46748161 4.50660849 4.58574152 5.87825108 4.57431936 4.46820688 6.24256802
		 4.3065362 4.22431803 6.18360376 4.22860622 4.3380332 5.82036304 -0.86945212 0.38184023 2.48397088
		 -0.96265942 0.59921217 2.17441082 -0.49335623 0.35131788 2.06615901 -0.43186492 0.17806266 2.39031529
		 3.68618631 4.20916557 6.30884743 3.60731244 4.32364273 5.94734383 3.1275928 4.3626399 6.49301863
		 3.047486305 4.47659254 6.13027048 9.27586079 2.56121492 3.96017575 9.34196758 2.36461902 4.28973818
		 9.067700386 2.22136569 4.23699665 8.99419403 2.4130857 3.9044857 8.59412575 2.28181386 4.42158508
		 8.50726318 2.48084331 4.097091675 8.19722652 2.48866558 4.67011356 8.095435143 2.69421005 4.35470104
		 8.065752029 2.95382357 4.54010725 8.16609097 2.74036765 4.8504138 5.60549259 4.24016142 4.61462069
		 5.72538424 4.16580772 4.98100996 6.15459251 4.093248367 4.36656809 6.26185942 4.017314911 4.73327732
		 6.76403332 4.055236816 4.25918007 6.86818743 3.95925903 4.62300062 5.62020302 4.43302345 5.14079237
		 5.48193264 4.52373505 4.78495884 2.99530411 4.2918911 3.104532 3.082194328 4.3812232 3.47051764
		 2.43141317 4.44537544 3.28410506 2.51981568 4.54891348 3.65197396 1.015319586 2.99059105 6.35401726
		 0.9637199 3.15328479 6.0054521561 1.59400797 3.22755599 6.44028711 1.56309903 3.39886308 6.093672752
		 1.73428237 4.64670944 3.92640328 1.7005229 4.37314081 3.54539585 2.09714818 4.559237 3.39434218
		 1.48378623 4.16874266 3.57608867 1.47570813 4.11724949 3.96515155 4.63175106 4.51028109 3.040554285
		 4.48643255 4.16644812 2.68223619 4.80344009 3.94588232 2.51214647 4.97856903 4.049104691 2.85072637
		 -0.30076775 0.0061828643 1.86351764 -0.23190331 -0.18176602 2.17677236 -0.23293364 -0.42392725 1.61979878
		 -0.15955281 -0.61899674 1.96158254 -0.42608708 -0.94137907 1.53610516 -0.50430489 -0.74924618 1.15026772
		 0.37574065 2.93725491 6.4056201 0.3131493 3.10077882 6.05978775 0.022523608 3.33748722 6.21427202
		 0.086568214 3.16761088 6.55671644 3.60309076 4.28013897 2.97101688 3.69467092 4.38031626 3.34479761
		 1.69593084 3.71027613 6.26391506 1.71552193 3.52608156 6.6041975 0.62394887 3.83204246 3.45010638
		 0.68448681 3.8136251 3.84546661 -0.09105397 3.79593825 3.40760326 -0.034883328 3.7790792 3.79570746
		 2.90549922 4.79636669 6.30378342 2.99966645 4.67996931 6.66271544 2.17335391 4.91413593 3.75957108
		 4.081545353 4.71475697 3.32969689 3.98879313 4.37530136 2.94914484 -0.320959 4.076094151 3.80689287
		 -0.38544154 4.11103868 3.42182016 6.77597237 3.9386363 1.97503757 6.50775576 3.72042179 1.63149464
		 6.68150902 3.4129343 1.48255622 6.87198544 3.45308304 1.82708144 6.34986305 4.36587429 2.11741281
		 6.098140717 3.93020606 1.74137819 5.76118326 4.03976202 1.90012932 5.92462826 4.10674524 2.22757387
		 5.36974859 3.83273911 2.12248254 5.51646805 3.93554068 2.47288156 8.068920135 3.62643719 0.88810992
		 7.91051388 3.61252642 0.53322023 7.64095116 3.36836886 0.69733703 7.82538652 3.37202239 1.042384386
		 7.10228968 3.3345623 1.13819981 7.29555416 3.34213495 1.47970557 7.14181566 4.18735266 4.6500206
		 7.044737339 4.30138683 4.29126692 1.2817291 1.95801902 7.85376167 1.21737361 2.18699288 7.54722834
		 1.81772709 2.1559732 7.95060062 1.76906216 2.39308524 7.64529037 0.71262103 1.87497997 7.92516136
		 0.62862551 2.10130882 7.62205267 0.36721024 2.24979162 7.8267293 0.45642695 2.020172358 8.12580013
		 1.89409161 2.62740517 7.87071323 1.94083762 2.38582325 8.17455292 4.98835945 3.2047298 8.16350555
		 5.031403542 2.97830534 8.47493076 4.76529264 2.74139166 8.37674522 4.71171093 2.9691534 8.067987442
		 4.17949581 2.72234702 8.48352623 4.10807133 2.95155644 8.17900276 3.64436674 2.88570213 8.68161201
		 3.56033945 3.11414099 8.37878513 3.4379487 3.38904548 8.59390354 3.52250648 3.16078138 8.89597225
		 6.26552343 3.29276776 6.6076107 6.36370754 3.070956469 6.91308355 6.7621398 3.15413094 6.3711853
		 6.84331083 2.93421841 6.68226957 7.33873653 3.10427856 6.24422264 7.40402508 2.88729095 6.56116247
		 6.2879982 3.29696107 7.11522532 6.18686914 3.51894426 6.81082726 7.68259335 3.047725677 6.6549015
		 7.62206936 3.26862693 6.33969116 8.79266453 3.31789327 2.51952934 8.92173862 3.18961787 2.86159348
		 8.65942955 2.98514318 2.89732838 8.52421951 3.11117482 2.55133581 7.61099815 3.59787583 3.42871618
		 7.76831341 3.45579123 3.76035929 7.79108667 3.18910027 3.57475328 7.61808968 3.31092429 3.24374151
		 8.19192505 2.99854493 3.23105812 8.042759895 3.12449718 2.89014316 4.059651852 5.35557365 -8.52516365
		 2.97710109 5.28756714 -8.33768082 1.59568357 5.13868713 -8.12744141 0.31888211 4.97773647 -7.93161821
		 -0.64769948 4.84495544 -7.76097965 4.29872799 6.52336264 -8.030035973 4.063402653 6.46536684 -8.2464323
		 4.30211878 5.34800863 -8.60176563 4.55928469 5.31099796 -8.44612503 4.36642218 4.34738874 -8.57449818
		 4.14383364 4.50501585 -8.73856926 -0.9286986 6.1547122 -7.19868183 -0.75561804 6.11706877 -7.46705341
		 -1.1827569 4.68305826 -7.48686123 -0.98849553 4.77903032 -7.71041059 -0.80687582 3.63440871 -7.86659336
		 -0.67778325 3.85765624 -8.057497025 1.65507734 3.27373576 -8.46467876;
	setAttr ".vt[830:840]" 1.57673597 3.52872515 -8.58185101 0.30144328 3.14140034 -8.21734905
		 0.27686623 3.41813803 -8.35373116 3.13262653 3.65096974 -8.56957531 3.024381399 3.89142084 -8.71018314
		 1.63588929 7.30979681 -7.36190319 1.58066177 7.12036896 -7.60912466 0.37285691 7.1639123 -7.17202806
		 0.39645943 6.97413111 -7.44101143 2.98786807 7.23741627 -7.60600042 2.87497044 7.078304768 -7.85911226;
	setAttr -s 2517 ".ed";
	setAttr ".ed[0:165]"  24 43 1 43 1 1 1 24 1 24 30 1 30 43 1 43 33 1 33 1 1
		 33 15 1 15 1 1 35 669 1 669 672 1 672 35 1 35 20 1 20 669 1 726 437 1 437 436 1 436 726 1
		 726 751 1 751 437 1 674 17 1 17 670 1 670 674 1 674 34 1 34 17 1 17 35 1 35 670 1
		 672 670 1 83 27 1 27 95 1 95 83 1 27 8 1 8 95 1 8 84 1 84 95 1 8 11 1 11 84 1 671 13 1
		 13 34 1 34 671 1 674 671 1 40 3 1 3 23 1 23 40 1 40 19 1 19 3 1 19 26 1 26 3 1 6 3 1
		 26 6 1 12 6 1 6 25 1 25 12 1 12 3 1 38 3 1 12 38 1 38 23 1 37 4 1 4 16 1 16 37 1
		 37 14 1 14 4 1 14 23 1 23 4 1 14 40 1 18 4 1 4 38 1 38 18 1 18 36 1 36 4 1 36 16 1
		 28 12 1 12 5 1 5 28 1 28 38 1 25 5 1 21 42 1 42 2 1 2 21 1 21 32 1 32 42 1 30 2 1
		 42 30 1 24 2 1 33 0 1 0 15 1 33 44 1 44 0 1 22 44 1 44 31 1 31 22 1 22 0 1 29 14 1
		 14 7 1 7 29 1 29 40 1 14 27 1 27 7 1 37 27 1 37 8 1 16 8 1 8 36 1 36 11 1 84 9 1
		 9 96 1 96 84 1 11 9 1 9 85 1 85 96 1 9 28 1 28 85 1 11 18 1 18 9 1 9 38 1 7 82 1
		 82 29 1 7 94 1 94 82 1 94 27 1 83 94 1 10 26 1 19 10 1 19 29 1 29 10 1 365 48 1 48 363 1
		 363 365 1 48 45 1 45 363 1 50 362 1 362 363 1 363 50 1 45 50 1 360 46 1 46 361 1
		 361 360 1 360 51 1 51 46 1 46 365 1 365 361 1 46 48 1 49 366 1 366 364 1 364 49 1
		 49 47 1 47 366 1 47 51 1 51 366 1 360 366 1 2 84 1 96 2 1 24 84 1 21 96 1 85 21 1
		 95 15 1 15 83 1 95 1 1 1 84 1 384 72 1 72 383 1 383 384 1 384 87 1 87 72 1 641 117 1
		 117 667 1 667 641 1 641 72 1;
	setAttr ".ed[166:331]" 72 117 1 86 374 1 374 378 1 378 86 1 86 69 1 69 374 1
		 69 384 1 384 374 1 69 87 1 309 79 1 79 305 1 305 309 1 79 60 1 60 305 1 63 305 1
		 60 63 1 63 308 1 308 305 1 388 65 1 65 86 1 86 388 1 378 388 1 92 55 1 55 75 1 75 92 1
		 92 71 1 71 55 1 71 78 1 78 55 1 58 55 1 78 58 1 64 58 1 58 77 1 77 64 1 64 55 1 90 55 1
		 64 90 1 90 75 1 383 385 1 385 384 1 389 384 1 385 389 1 89 56 1 56 68 1 68 89 1 89 66 1
		 66 56 1 66 92 1 92 56 1 75 56 1 70 56 1 56 90 1 90 70 1 88 68 1 56 88 1 70 88 1 80 64 1
		 64 57 1 57 80 1 80 90 1 77 57 1 94 22 1 22 82 1 94 0 1 15 94 1 82 10 1 798 10 1 82 798 1
		 81 66 1 66 59 1 59 81 1 81 92 1 89 59 1 89 79 1 79 59 1 89 60 1 68 60 1 60 88 1 88 63 1
		 308 61 1 61 304 1 304 308 1 63 61 1 307 61 1 61 80 1 80 307 1 307 304 1 88 61 1 70 61 1
		 61 90 1 59 310 1 310 81 1 59 306 1 306 310 1 79 306 1 309 306 1 62 78 1 71 62 1 71 81 1
		 81 62 1 379 100 1 100 375 1 375 379 1 100 97 1 97 375 1 102 381 1 381 375 1 375 102 1
		 97 102 1 382 98 1 98 376 1 376 382 1 382 103 1 103 98 1 98 100 1 100 376 1 379 376 1
		 101 377 1 377 380 1 380 101 1 101 99 1 99 377 1 99 103 1 103 377 1 382 377 1 640 140 1
		 140 637 1 637 640 1 140 124 1 124 637 1 642 124 1 124 146 1 146 642 1 642 637 1 643 139 1
		 139 638 1 638 643 1 139 121 1 121 638 1 640 121 1 121 140 1 640 638 1 323 131 1 131 319 1
		 319 323 1 131 112 1 112 319 1 112 322 1 322 319 1 112 115 1 115 322 1 643 639 1 639 139 1
		 639 117 1 117 139 1 145 107 1 107 127 1 127 145 1 145 123 1 123 107 1 123 110 1 110 107 1
		 123 130 1 130 110 1 116 107 1 107 129 1;
	setAttr ".ed[332:497]" 129 116 1 110 129 1 143 127 1 107 143 1 116 143 1 108 142 1
		 142 118 1 118 108 1 108 120 1 120 142 1 145 108 1 118 145 1 127 108 1 143 108 1 143 122 1
		 122 108 1 141 120 1 108 141 1 122 141 1 132 116 1 116 109 1 109 132 1 132 143 1 129 109 1
		 176 344 1 344 186 1 186 176 1 176 341 1 341 344 1 342 176 1 176 184 1 184 342 1 342 341 1
		 145 111 1 111 133 1 133 145 1 118 111 1 142 111 1 142 131 1 131 111 1 142 112 1 120 112 1
		 141 112 1 141 115 1 322 113 1 113 318 1 318 322 1 115 113 1 318 132 1 132 321 1 321 318 1
		 113 132 1 122 113 1 113 141 1 113 143 1 111 320 1 320 133 1 324 133 1 320 324 1 131 320 1
		 323 320 1 114 130 1 123 114 1 123 133 1 133 114 1 151 396 1 396 154 1 154 151 1 151 393 1
		 393 396 1 393 156 1 156 398 1 398 393 1 151 156 1 157 152 1 152 394 1 394 157 1 394 399 1
		 399 157 1 396 152 1 152 154 1 396 394 1 395 155 1 155 153 1 153 395 1 395 397 1 397 155 1
		 153 157 1 157 395 1 399 395 1 177 342 1 184 177 1 177 340 1 340 342 1 183 345 1 345 340 1
		 340 183 1 177 183 1 345 178 1 178 339 1 339 345 1 183 178 1 185 343 1 343 339 1 339 185 1
		 178 185 1 169 182 1 182 147 1 147 169 1 182 166 1 166 147 1 166 172 1 172 147 1 136 147 1
		 172 136 1 161 136 1 136 171 1 171 161 1 161 147 1 161 169 1 161 181 1 181 169 1 180 138 1
		 138 164 1 164 180 1 162 138 1 180 162 1 169 138 1 138 182 1 162 182 1 165 138 1 138 181 1
		 181 165 1 165 179 1 179 138 1 179 164 1 174 161 1 161 137 1 137 174 1 174 181 1 171 137 1
		 167 803 1 803 802 1 802 167 1 175 162 1 162 135 1 135 175 1 175 182 1 162 173 1 173 135 1
		 180 173 1 336 184 1 184 332 1 332 336 1 176 332 1 186 338 1 338 332 1 332 186 1 164 134 1
		 134 180 1 134 173 1 160 134 1 134 179 1 179 160 1 335 177 1 177 333 1;
	setAttr ".ed[498:663]" 333 335 1 335 183 1 184 333 1 336 333 1 165 158 1 158 179 1
		 158 160 1 174 158 1 158 181 1 185 334 1 334 337 1 337 185 1 178 334 1 178 335 1 335 334 1
		 159 172 1 166 159 1 166 175 1 175 159 1 358 806 1 806 168 1 168 358 1 190 676 1 676 679 1
		 679 190 1 190 187 1 187 676 1 441 759 1 759 430 1 430 441 1 441 755 1 755 759 1 188 681 1
		 681 193 1 193 188 1 188 677 1 677 681 1 188 190 1 190 677 1 679 677 1 191 678 1 678 680 1
		 680 191 1 191 189 1 189 678 1 189 193 1 193 678 1 681 678 1 236 733 1 733 226 1 226 236 1
		 236 455 1 455 733 1 223 455 1 236 223 1 223 450 1 450 455 1 234 450 1 223 234 1 234 453 1
		 453 450 1 224 451 1 451 234 1 234 224 1 451 453 1 224 456 1 456 451 1 224 231 1 231 456 1
		 225 456 1 231 225 1 225 452 1 452 456 1 235 452 1 225 235 1 235 454 1 454 452 1 230 197 1
		 197 214 1 214 230 1 230 211 1 211 197 1 217 200 1 200 197 1 197 217 1 211 217 1 200 206 1
		 206 197 1 200 216 1 216 206 1 229 214 1 197 229 1 206 229 1 198 228 1 228 207 1 207 198 1
		 198 209 1 209 228 1 207 214 1 214 198 1 207 230 1 210 198 1 198 229 1 229 210 1 210 227 1
		 227 198 1 227 209 1 219 206 1 206 199 1 199 219 1 219 229 1 216 199 1 232 199 1 216 232 1
		 232 221 1 221 199 1 235 219 1 199 235 1 221 235 1 222 217 1 217 233 1 233 222 1 222 200 1
		 222 216 1 222 232 1 207 201 1 201 230 1 201 220 1 220 230 1 218 207 1 228 218 1 218 201 1
		 218 234 1 234 201 1 223 201 1 236 220 1 201 236 1 228 202 1 202 218 1 209 202 1 227 202 1
		 227 205 1 205 202 1 224 202 1 202 231 1 205 231 1 218 224 1 227 203 1 203 205 1 210 203 1
		 219 203 1 203 229 1 219 225 1 225 203 1 203 231 1 204 217 1 211 204 1 220 211 1 220 204 1
		 220 226 1 226 204 1 226 233 1 233 204 1 687 237 1 237 447 1 447 687 1;
	setAttr ".ed[664:829]" 237 246 1 246 447 1 449 241 1 241 248 1 248 449 1 449 445 1
		 445 241 1 655 187 1 187 675 1 675 655 1 187 13 1 13 675 1 668 91 1 91 673 1 673 668 1
		 91 41 1 41 673 1 93 667 1 667 144 1 144 93 1 93 641 1 284 250 1 250 283 1 283 284 1
		 284 251 1 251 250 1 285 249 1 249 284 1 284 285 1 249 251 1 562 253 1 253 572 1 572 562 1
		 562 254 1 254 253 1 563 252 1 252 562 1 562 563 1 252 254 1 257 253 1 254 257 1 257 256 1
		 256 253 1 252 255 1 255 254 1 255 257 1 646 261 1 261 645 1 645 646 1 646 260 1 260 261 1
		 260 263 1 263 261 1 263 264 1 264 261 1 264 259 1 259 261 1 264 262 1 262 259 1 287 269 1
		 269 286 1 286 287 1 287 266 1 266 269 1 273 288 1 288 289 1 289 273 1 273 271 1 271 288 1
		 291 272 1 272 290 1 290 291 1 291 274 1 274 272 1 293 281 1 281 292 1 292 293 1 293 280 1
		 280 281 1 270 289 1 289 294 1 294 270 1 270 273 1 296 277 1 277 295 1 295 296 1 277 276 1
		 276 295 1 267 294 1 294 297 1 297 267 1 267 270 1 266 298 1 298 268 1 268 266 1 287 298 1
		 288 274 1 291 288 1 271 274 1 275 296 1 296 299 1 299 275 1 275 277 1 301 265 1 265 300 1
		 300 301 1 301 279 1 279 265 1 286 267 1 297 286 1 269 267 1 290 275 1 299 290 1 272 275 1
		 265 298 1 298 300 1 265 268 1 302 280 1 293 302 1 302 282 1 282 280 1 276 303 1 303 295 1
		 276 278 1 278 303 1 292 279 1 301 292 1 281 279 1 283 282 1 302 283 1 250 282 1 284 644 1
		 644 654 1 654 284 1 283 644 1 286 656 1 656 287 1 286 647 1 647 656 1 657 289 1 289 648 1
		 648 657 1 288 648 1 658 291 1 291 649 1 649 658 1 290 649 1 659 292 1 292 650 1 650 659 1
		 659 293 1 660 289 1 657 660 1 660 294 1 651 661 1 661 296 1 296 651 1 295 651 1 662 294 1
		 660 662 1 662 297 1 663 287 1 656 663 1 663 298 1 648 291 1 658 648 1;
	setAttr ".ed[830:995]" 664 296 1 661 664 1 664 299 1 665 300 1 300 652 1 652 665 1
		 665 301 1 297 647 1 662 647 1 649 299 1 664 649 1 652 298 1 663 652 1 293 666 1 666 302 1
		 659 666 1 653 651 1 295 653 1 303 653 1 665 292 1 665 650 1 644 302 1 666 644 1 653 260 1
		 646 653 1 303 260 1 303 263 1 278 263 1 305 67 1 67 309 1 305 53 1 53 67 1 53 308 1
		 308 76 1 76 53 1 304 54 1 54 76 1 76 304 1 73 304 1 307 73 1 73 54 1 74 310 1 306 74 1
		 306 52 1 52 74 1 309 52 1 67 52 1 310 62 1 791 62 1 310 791 1 67 314 1 314 52 1 314 311 1
		 311 52 1 74 311 1 311 316 1 316 74 1 317 53 1 76 317 1 317 312 1 312 53 1 312 314 1
		 314 53 1 73 313 1 313 54 1 73 315 1 315 313 1 317 54 1 313 317 1 73 783 1 783 782 1
		 782 73 1 319 119 1 119 323 1 319 105 1 105 119 1 319 128 1 128 105 1 322 128 1 106 128 1
		 128 318 1 318 106 1 318 125 1 125 106 1 321 125 1 324 104 1 104 126 1 126 324 1 320 104 1
		 119 104 1 104 323 1 324 114 1 779 114 1 324 779 1 325 119 1 119 328 1 328 325 1 325 104 1
		 126 325 1 325 330 1 330 126 1 128 331 1 331 105 1 331 326 1 326 105 1 119 326 1 326 328 1
		 327 125 1 125 329 1 329 327 1 327 106 1 327 331 1 331 106 1 332 173 1 173 336 1 332 135 1
		 338 135 1 338 175 1 160 333 1 333 134 1 160 335 1 134 336 1 334 174 1 174 337 1 334 158 1
		 335 158 1 341 348 1 348 344 1 341 352 1 352 348 1 346 341 1 342 346 1 346 352 1 694 803 1
		 803 343 1 343 694 1 803 347 1 347 343 1 340 346 1 340 351 1 351 346 1 345 351 1 345 349 1
		 349 351 1 339 349 1 339 350 1 350 349 1 347 339 1 347 350 1 352 168 1 168 348 1 352 150 1
		 150 168 1 150 346 1 346 163 1 163 150 1 351 163 1 351 149 1 149 163 1 349 170 1 170 149 1
		 149 349 1 350 170 1 350 148 1 148 170 1 167 350 1;
	setAttr ".ed[996:1161]" 347 167 1 167 148 1 163 353 1 353 150 1 163 356 1 356 353 1
		 150 358 1 353 358 1 354 170 1 170 359 1 359 354 1 354 149 1 354 356 1 356 149 1 167 355 1
		 355 148 1 167 357 1 357 355 1 355 359 1 359 148 1 159 338 1 338 703 1 703 159 1 33 365 1
		 365 44 1 363 44 1 362 44 1 362 31 1 361 30 1 30 360 1 361 43 1 33 361 1 366 42 1
		 42 364 1 32 364 1 360 42 1 50 372 1 372 711 1 711 50 1 710 799 1 799 362 1 362 710 1
		 799 31 1 48 370 1 370 45 1 370 367 1 367 45 1 50 367 1 367 372 1 51 368 1 368 46 1
		 51 373 1 373 368 1 368 48 1 368 370 1 49 369 1 369 47 1 49 371 1 371 369 1 369 373 1
		 373 47 1 49 770 1 770 771 1 771 49 1 307 57 1 57 783 1 783 307 1 748 102 1 102 747 1
		 747 748 1 748 381 1 102 391 1 391 747 1 100 389 1 389 97 1 385 97 1 102 385 1 385 391 1
		 103 386 1 386 98 1 103 392 1 392 386 1 386 100 1 386 389 1 101 387 1 387 99 1 101 390 1
		 390 387 1 387 392 1 392 99 1 101 683 1 683 682 1 682 101 1 400 151 1 151 403 1 403 400 1
		 154 403 1 156 400 1 400 405 1 405 156 1 157 406 1 406 152 1 406 401 1 401 152 1 154 401 1
		 401 403 1 155 402 1 402 153 1 155 404 1 404 402 1 402 406 1 406 153 1 426 412 1 412 425 1
		 425 426 1 426 416 1 416 412 1 428 418 1 418 427 1 427 428 1 428 419 1 419 418 1 429 413 1
		 413 426 1 426 429 1 413 416 1 431 409 1 409 430 1 430 431 1 431 410 1 410 409 1 420 432 1
		 432 433 1 433 420 1 420 417 1 417 432 1 435 424 1 424 434 1 434 435 1 421 434 1 424 421 1
		 437 408 1 408 436 1 437 414 1 414 408 1 439 411 1 411 438 1 438 439 1 407 438 1 411 407 1
		 425 415 1 415 440 1 440 425 1 412 415 1 441 422 1 422 435 1 435 441 1 422 424 1 441 409 1
		 409 422 1 408 439 1 439 436 1 408 411 1 418 429 1 429 427 1 418 413 1;
	setAttr ".ed[1162:1327]" 417 428 1 428 432 1 417 419 1 440 414 1 437 440 1 415 414 1
		 421 442 1 442 434 1 423 442 1 421 423 1 407 431 1 431 438 1 407 410 1 427 722 1 722 721 1
		 721 427 1 429 722 1 285 423 1 423 249 1 285 442 1 259 420 1 433 259 1 262 420 1 443 247 1
		 247 448 1 448 443 1 443 239 1 239 247 1 246 445 1 445 447 1 246 241 1 446 239 1 443 446 1
		 446 245 1 245 239 1 208 443 1 443 194 1 194 208 1 208 446 1 448 194 1 448 213 1 213 194 1
		 449 444 1 444 195 1 195 449 1 195 215 1 215 449 1 208 444 1 444 446 1 208 195 1 445 212 1
		 212 447 1 445 196 1 196 212 1 215 445 1 215 196 1 248 444 1 240 444 1 248 240 1 734 213 1
		 448 734 1 450 213 1 213 455 1 450 194 1 453 194 1 453 208 1 453 195 1 451 195 1 451 215 1
		 456 215 1 215 452 1 452 196 1 452 212 1 454 212 1 221 686 1 686 235 1 686 454 1 240 446 1
		 240 245 1 460 420 1 262 460 1 460 458 1 458 420 1 457 595 1 595 594 1 594 457 1 457 459 1
		 459 595 1 458 459 1 457 458 1 460 459 1 460 461 1 461 459 1 460 462 1 462 461 1 596 459 1
		 461 596 1 596 595 1 262 462 1 264 462 1 279 268 1 281 268 1 269 273 1 270 269 1 277 272 1
		 274 277 1 419 413 1 419 416 1 414 411 1 415 411 1 422 410 1 410 424 1 468 573 1 573 564 1
		 564 468 1 468 470 1 470 573 1 465 574 1 574 565 1 565 465 1 465 467 1 467 574 1 473 575 1
		 575 566 1 566 473 1 473 464 1 464 575 1 472 566 1 566 567 1 567 472 1 472 473 1 568 472 1
		 567 568 1 568 474 1 474 472 1 569 471 1 471 576 1 576 569 1 569 469 1 469 471 1 573 469 1
		 569 573 1 470 469 1 466 564 1 564 570 1 570 466 1 466 468 1 467 570 1 570 574 1 467 466 1
		 463 565 1 565 571 1 571 463 1 463 465 1 464 571 1 571 575 1 464 463 1 250 488 1 488 282 1
		 250 478 1 478 488 1 264 477 1 477 462 1 264 475 1 475 477 1 462 476 1;
	setAttr ".ed[1328:1493]" 476 461 1 477 476 1 461 597 1 597 596 1 476 597 1 251 478 1
		 251 479 1 479 478 1 249 480 1 480 251 1 480 479 1 482 277 1 274 482 1 482 481 1 481 277 1
		 269 483 1 483 273 1 269 484 1 484 483 1 281 485 1 485 268 1 281 486 1 486 485 1 280 486 1
		 280 487 1 487 486 1 282 487 1 488 487 1 490 278 1 276 490 1 490 489 1 489 278 1 481 276 1
		 481 490 1 491 274 1 271 491 1 491 482 1 483 271 1 483 491 1 266 484 1 266 492 1 492 484 1
		 268 492 1 485 492 1 478 568 1 568 488 1 478 572 1 572 568 1 263 475 1 263 493 1 493 475 1
		 278 493 1 489 493 1 494 458 1 458 495 1 495 494 1 494 420 1 506 424 1 424 497 1 497 506 1
		 410 497 1 415 500 1 500 411 1 498 411 1 500 498 1 419 503 1 503 416 1 501 416 1 503 501 1
		 505 423 1 423 504 1 504 505 1 421 504 1 421 506 1 506 504 1 417 502 1 502 419 1 502 503 1
		 412 499 1 499 415 1 499 500 1 501 412 1 501 499 1 407 496 1 496 410 1 496 497 1 498 407 1
		 498 496 1 494 417 1 494 502 1 249 505 1 505 480 1 495 457 1 457 507 1 507 495 1 598 238 1
		 238 244 1 244 598 1 598 594 1 594 238 1 520 509 1 509 519 1 519 520 1 518 519 1 509 518 1
		 522 512 1 512 521 1 521 522 1 510 521 1 512 510 1 524 515 1 515 523 1 523 524 1 513 523 1
		 515 513 1 526 516 1 516 525 1 525 526 1 517 525 1 516 517 1 518 526 1 526 519 1 518 516 1
		 524 514 1 514 515 1 524 527 1 527 514 1 528 511 1 511 522 1 522 528 1 511 512 1 513 528 1
		 528 523 1 513 511 1 529 508 1 508 520 1 520 529 1 508 509 1 510 529 1 529 521 1 510 508 1
		 519 506 1 506 520 1 497 520 1 521 498 1 498 522 1 500 522 1 503 524 1 524 501 1 523 501 1
		 525 505 1 505 526 1 504 526 1 504 519 1 502 527 1 527 503 1 499 528 1 528 500 1 523 499 1
		 496 529 1 529 497 1 521 496 1 495 502 1 495 527 1 531 535 1 535 533 1;
	setAttr ".ed[1494:1659]" 533 531 1 531 534 1 534 535 1 533 536 1 536 530 1 530 533 1
		 535 536 1 532 536 1 536 537 1 537 532 1 532 530 1 534 600 1 600 535 1 534 599 1 599 600 1
		 535 601 1 601 536 1 600 601 1 602 536 1 601 602 1 602 537 1 534 598 1 598 599 1 534 507 1
		 507 598 1 541 629 1 629 538 1 538 541 1 541 540 1 540 629 1 539 538 1 538 630 1 630 539 1
		 539 541 1 561 542 1 542 545 1 545 561 1 541 545 1 542 541 1 468 556 1 556 470 1 468 554 1
		 554 556 1 465 553 1 553 467 1 465 551 1 551 553 1 473 550 1 550 464 1 473 558 1 558 550 1
		 557 473 1 472 557 1 557 558 1 474 557 1 474 559 1 559 557 1 470 555 1 555 469 1 556 555 1
		 552 468 1 466 552 1 552 554 1 553 466 1 553 552 1 549 465 1 463 549 1 549 551 1 550 463 1
		 550 549 1 559 253 1 256 559 1 474 253 1 256 557 1 256 558 1 558 549 1 558 551 1 551 552 1
		 551 554 1 542 540 1 542 544 1 544 540 1 551 546 1 546 554 1 551 631 1 631 546 1 551 632 1
		 632 631 1 558 632 1 256 258 1 258 558 1 258 632 1 555 471 1 540 471 1 555 540 1 554 540 1
		 540 556 1 540 546 1 546 629 1 560 542 1 561 560 1 560 544 1 471 544 1 560 471 1 541 543 1
		 543 545 1 539 543 1 489 576 1 576 493 1 576 577 1 577 493 1 561 578 1 578 577 1 577 561 1
		 577 560 1 562 478 1 479 562 1 480 563 1 563 479 1 564 481 1 482 564 1 573 481 1 565 483 1
		 484 565 1 574 483 1 486 575 1 575 485 1 486 566 1 567 486 1 487 567 1 488 567 1 490 576 1
		 490 569 1 573 490 1 570 482 1 491 570 1 574 491 1 492 565 1 492 571 1 485 571 1 572 474 1
		 576 560 1 493 578 1 578 475 1 480 525 1 525 563 1 477 579 1 579 476 1 477 580 1 580 579 1
		 475 580 1 578 580 1 580 581 1 581 579 1 580 582 1 582 581 1 578 582 1 561 582 1 582 545 1
		 545 581 1 476 603 1 603 597 1 579 603 1 583 495 1 495 584 1 584 583 1;
	setAttr ".ed[1660:1825]" 507 584 1 584 534 1 531 584 1 563 517 1 517 252 1 583 527 1
		 583 514 1 635 607 1 607 588 1 588 635 1 607 609 1 609 588 1 588 591 1 591 585 1 585 588 1
		 588 590 1 590 591 1 587 591 1 591 592 1 592 587 1 587 585 1 589 533 1 533 590 1 590 589 1
		 589 531 1 590 530 1 530 591 1 592 530 1 532 592 1 593 531 1 589 593 1 593 584 1 594 243 1
		 243 238 1 595 243 1 595 237 1 237 243 1 596 237 1 596 246 1 597 246 1 594 507 1 599 247 1
		 247 600 1 599 242 1 242 247 1 239 600 1 239 601 1 245 601 1 245 602 1 598 242 1 244 242 1
		 603 246 1 603 241 1 581 543 1 543 604 1 604 581 1 579 604 1 604 603 1 593 514 1 514 584 1
		 509 606 1 606 518 1 613 518 1 606 613 1 511 608 1 608 512 1 608 510 1 516 612 1 612 517 1
		 516 611 1 611 612 1 613 516 1 613 611 1 612 252 1 612 255 1 606 607 1 607 605 1 605 606 1
		 610 515 1 515 593 1 593 610 1 610 589 1 589 586 1 586 610 1 620 617 1 617 619 1 619 620 1
		 620 615 1 615 617 1 537 616 1 616 532 1 537 619 1 619 616 1 602 619 1 602 620 1 240 615 1
		 620 240 1 248 615 1 245 620 1 619 618 1 618 616 1 617 618 1 621 587 1 592 621 1 592 622 1
		 622 621 1 539 614 1 614 587 1 587 539 1 621 539 1 543 621 1 622 543 1 532 622 1 616 622 1
		 543 618 1 618 604 1 617 604 1 616 543 1 615 604 1 615 623 1 623 604 1 248 623 1 241 623 1
		 603 623 1 625 547 1 547 624 1 624 625 1 625 633 1 633 547 1 624 628 1 628 255 1 255 624 1
		 547 628 1 611 255 1 611 624 1 605 611 1 613 605 1 605 624 1 605 625 1 586 609 1 609 608 1
		 608 586 1 586 588 1 627 256 1 257 627 1 627 258 1 628 257 1 628 627 1 630 614 1 630 548 1
		 548 614 1 626 633 1 625 626 1 626 548 1 548 633 1 614 626 1 626 634 1 634 614 1 634 625 1
		 605 634 1 605 635 1 635 634 1 586 590 1 636 588 1 585 636 1 636 635 1;
	setAttr ".ed[1826:1991]" 634 636 1 636 614 1 614 585 1 608 610 1 330 778 1 778 126 1
		 125 781 1 781 780 1 780 125 1 321 109 1 109 781 1 781 321 1 405 737 1 737 156 1 155 742 1
		 742 741 1 741 155 1 753 146 1 146 645 1 645 753 1 403 640 1 640 400 1 637 400 1 405 637 1
		 642 405 1 406 638 1 638 401 1 406 643 1 638 403 1 402 643 1 402 639 1 639 404 1 404 144 1
		 144 639 1 791 74 1 74 790 1 790 791 1 316 790 1 392 374 1 374 386 1 392 378 1 374 389 1
		 387 378 1 387 388 1 639 667 1 391 93 1 93 747 1 93 749 1 749 747 1 124 646 1 646 146 1
		 654 189 1 191 654 1 644 189 1 647 17 1 17 656 1 647 35 1 657 69 1 86 657 1 648 69 1
		 87 649 1 649 72 1 87 658 1 650 188 1 188 659 1 650 190 1 660 86 1 65 660 1 139 661 1
		 661 121 1 651 121 1 20 660 1 65 20 1 20 662 1 656 34 1 34 663 1 648 87 1 117 661 1
		 117 664 1 665 13 1 187 665 1 652 13 1 35 662 1 72 664 1 652 34 1 659 193 1 193 666 1
		 651 140 1 653 140 1 650 187 1 189 666 1 140 646 1 737 642 1 642 752 1 752 737 1 390 388 1
		 390 91 1 91 388 1 93 383 1 383 641 1 383 391 1 261 753 1 259 753 1 669 367 1 367 672 1
		 370 672 1 670 373 1 373 674 1 670 368 1 370 670 1 668 388 1 668 65 1 369 674 1 369 671 1
		 371 671 1 371 39 1 39 671 1 668 20 1 673 20 1 372 669 1 669 41 1 41 372 1 192 676 1
		 676 655 1 655 192 1 669 673 1 676 353 1 353 679 1 356 679 1 675 671 1 39 675 1 677 359 1
		 359 681 1 677 354 1 679 354 1 357 678 1 678 355 1 357 680 1 355 681 1 765 284 1 654 765 1
		 765 285 1 39 192 1 655 39 1 358 676 1 192 358 1 191 764 1 764 765 1 765 191 1 799 22 1
		 801 21 1 21 800 1 800 801 1 85 5 1 5 800 1 800 85 1 185 695 1 695 694 1 694 185 1
		 212 686 1 686 687 1 687 212 1 328 393 1 393 325 1 328 396 1 393 330 1;
	setAttr ".ed[1992:2157]" 398 330 1 399 326 1 331 399 1 394 326 1 394 328 1 395 329 1
		 329 397 1 395 327 1 327 399 1 780 397 1 329 780 1 780 742 1 742 397 1 683 315 1 315 782 1
		 782 683 1 683 380 1 380 315 1 314 379 1 379 311 1 375 311 1 311 381 1 381 316 1 317 376 1
		 376 312 1 317 382 1 312 379 1 380 313 1 377 313 1 382 313 1 337 137 1 137 695 1 695 337 1
		 344 807 1 807 702 1 702 344 1 348 807 1 702 186 1 404 720 1 720 144 1 741 720 1 404 741 1
		 711 41 1 41 725 1 725 711 1 725 751 1 726 725 1 725 750 1 750 751 1 448 242 1 242 734 1
		 749 144 1 720 749 1 682 750 1 750 390 1 390 682 1 750 91 1 358 754 1 754 806 1 192 754 1
		 771 39 1 371 771 1 771 758 1 758 39 1 758 755 1 755 754 1 754 758 1 758 759 1 802 764 1
		 764 357 1 357 802 1 764 680 1 364 801 1 801 770 1 770 364 1 32 801 1 398 778 1 738 778 1
		 398 738 1 316 748 1 748 790 1 685 683 1 683 684 1 684 685 1 685 682 1 690 685 1 684 690 1
		 690 691 1 691 685 1 688 686 1 686 689 1 689 688 1 688 687 1 730 729 1 729 688 1 688 730 1
		 689 730 1 690 693 1 693 691 1 690 692 1 692 693 1 692 747 1 747 693 1 692 748 1 696 694 1
		 695 696 1 696 697 1 697 694 1 696 699 1 699 697 1 696 698 1 698 699 1 698 701 1 701 699 1
		 698 700 1 700 701 1 700 702 1 702 701 1 700 703 1 703 702 1 705 711 1 711 704 1 704 705 1
		 705 710 1 710 711 1 707 704 1 704 706 1 706 707 1 707 705 1 709 707 1 707 708 1 708 709 1
		 706 708 1 770 709 1 709 771 1 708 771 1 713 714 1 714 712 1 712 713 1 713 715 1 715 714 1
		 740 713 1 713 739 1 739 740 1 712 739 1 715 722 1 722 714 1 715 749 1 749 722 1 717 719 1
		 719 716 1 716 717 1 718 716 1 719 718 1 735 717 1 716 735 1 735 736 1 736 717 1 719 741 1
		 741 718 1 742 718 1 720 724 1 724 721 1 721 720 1 724 723 1 723 721 1;
	setAttr ".ed[2158:2323]" 744 723 1 724 744 1 744 743 1 743 723 1 728 726 1 726 727 1
		 727 728 1 728 725 1 763 727 1 727 762 1 762 763 1 763 728 1 731 730 1 730 732 1 732 731 1
		 731 729 1 734 731 1 731 733 1 733 734 1 732 733 1 735 737 1 737 736 1 735 738 1 738 737 1
		 750 740 1 740 751 1 739 751 1 746 743 1 744 746 1 746 745 1 745 743 1 752 745 1 746 752 1
		 752 753 1 753 745 1 757 755 1 755 756 1 756 757 1 757 754 1 769 756 1 756 768 1 768 769 1
		 769 757 1 758 761 1 761 759 1 761 760 1 760 759 1 761 762 1 762 760 1 761 763 1 764 766 1
		 766 765 1 764 767 1 767 766 1 767 768 1 768 766 1 767 769 1 773 775 1 775 772 1 772 773 1
		 774 772 1 775 774 1 776 773 1 772 776 1 776 777 1 777 773 1 780 774 1 775 780 1 781 774 1
		 776 778 1 778 777 1 776 779 1 779 778 1 785 783 1 783 784 1 784 785 1 785 782 1 786 785 1
		 784 786 1 786 787 1 787 785 1 786 789 1 789 787 1 786 788 1 788 789 1 788 790 1 790 789 1
		 788 791 1 793 799 1 799 792 1 792 793 1 793 798 1 798 799 1 795 792 1 792 794 1 794 795 1
		 795 793 1 797 795 1 795 796 1 796 797 1 794 796 1 800 797 1 797 801 1 796 801 1 804 802 1
		 803 804 1 804 805 1 805 802 1 804 811 1 811 805 1 804 810 1 810 811 1 808 806 1 806 809 1
		 809 808 1 808 807 1 807 806 1 810 809 1 809 811 1 810 808 1 6 795 1 795 25 1 797 25 1
		 26 793 1 793 6 1 58 786 1 786 77 1 784 77 1 78 788 1 788 58 1 110 774 1 774 129 1
		 110 772 1 130 772 1 130 776 1 244 734 1 244 731 1 732 222 1 233 732 1 730 222 1 688 243 1
		 243 687 1 791 78 1 779 130 1 697 803 1 697 804 1 136 700 1 698 136 1 172 700 1 171 698 1
		 696 171 1 807 701 1 808 701 1 808 699 1 810 699 1 810 697 1 172 703 1 794 705 1 707 794 1
		 792 705 1 794 709 1 709 796 1 798 26 1 706 728 1 763 706 1 704 728 1;
	setAttr ".ed[2324:2489]" 792 710 1 57 784 1 693 715 1 715 691 1 713 691 1 781 129 1
		 714 425 1 425 712 1 714 426 1 741 724 1 719 724 1 745 432 1 432 743 1 745 433 1 768 435 1
		 434 768 1 756 435 1 762 439 1 438 762 1 727 439 1 743 428 1 428 723 1 725 704 1 723 427 1
		 238 688 1 729 238 1 731 238 1 222 689 1 689 232 1 232 686 1 226 732 1 691 740 1 740 685 1
		 739 437 1 739 440 1 717 724 1 717 744 1 712 440 1 259 745 1 736 744 1 736 746 1 749 693 1
		 685 750 1 759 431 1 760 431 1 752 736 1 765 442 1 766 442 1 754 809 1 757 809 1 727 436 1
		 429 714 1 760 438 1 766 434 1 708 758 1 708 761 1 756 441 1 761 706 1 764 805 1 805 767 1
		 811 757 1 769 811 1 805 769 1 796 770 1 695 171 1 25 800 1 773 718 1 718 775 1 773 716 1
		 777 716 1 777 735 1 738 777 1 742 775 1 684 782 1 785 684 1 789 692 1 692 787 1 690 787 1
		 787 684 1 790 692 1 749 721 1 750 41 1 192 758 1 818 839 1 839 817 1 817 818 1 818 840 1
		 840 839 1 819 817 1 817 820 1 820 819 1 819 818 1 822 820 1 820 821 1 821 822 1 822 819 1
		 821 833 1 833 822 1 833 834 1 834 822 1 824 825 1 825 823 1 823 824 1 824 826 1 826 825 1
		 823 837 1 837 824 1 837 838 1 838 824 1 827 825 1 825 828 1 828 827 1 826 828 1 832 827 1
		 828 832 1 831 827 1 832 831 1 830 834 1 834 829 1 829 830 1 833 829 1 831 830 1 829 831 1
		 832 830 1 836 838 1 838 835 1 835 836 1 837 835 1 835 840 1 840 836 1 835 839 1 820 258 1
		 627 820 1 817 258 1 628 820 1 628 821 1 538 823 1 825 538 1 629 823 1 630 825 1 827 630 1
		 548 829 1 829 633 1 548 831 1 633 833 1 833 547 1 835 546 1 631 835 1 837 546 1 839 631 1
		 632 839 1 839 258 1 837 629 1 630 831 1 547 821 1 812 819 1 822 812 1 824 816 1 816 826 1
		 814 815 1 815 838 1 838 814 1 836 814 1 813 814 1 836 813 1 840 813 1;
	setAttr ".ed[2490:2516]" 818 812 1 812 840 1 815 824 1 815 816 1 834 813 1 813 822 1
		 813 812 1 830 814 1 814 834 1 832 815 1 815 830 1 828 815 1 828 816 1 156 738 1 126 779 1
		 146 752 1 50 710 1 22 798 1 168 807 1 186 703 1 213 733 1 610 511 1 513 610 1 606 508 1
		 510 606 1 607 510 1 510 609 1;
	setAttr -s 841 ".n";
	setAttr ".n[0:165]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[166:331]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[332:497]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[498:663]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[664:829]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[830:840]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 1678 -ch 5034 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 622 563 197
		f 3 -1 3 4
		mu 0 3 563 622 585
		f 3 5 6 -2
		mu 0 3 563 626 197
		f 3 -7 7 8
		mu 0 3 197 626 352
		f 3 9 10 11
		mu 0 3 235 355 219
		f 3 -10 12 13
		mu 0 3 355 235 116
		f 3 14 15 16
		mu 0 3 715 867 714
		f 3 -15 17 18
		mu 0 3 867 715 791
		f 3 19 20 21
		mu 0 3 526 184 309
		f 3 -20 22 23
		mu 0 3 184 526 213
		f 3 24 25 -21
		mu 0 3 184 235 309
		f 3 -26 -12 26
		mu 0 3 309 235 219
		f 3 27 28 29
		mu 0 3 264 167 259
		f 3 30 31 -29
		mu 0 3 167 143 259
		f 3 -32 32 33
		mu 0 3 259 143 627
		f 3 -33 34 35
		mu 0 3 627 143 201
		f 3 36 37 38
		mu 0 3 390 670 213
		f 3 -39 -23 39
		mu 0 3 390 213 526
		f 3 40 41 42
		mu 0 3 240 660 406
		f 3 -41 43 44
		mu 0 3 660 240 381
		f 3 45 46 -45
		mu 0 3 381 255 660
		f 3 47 -47 48
		mu 0 3 615 660 255
		f 3 49 50 51
		mu 0 3 233 615 131
		f 3 -50 52 -48
		mu 0 3 615 233 660
		f 3 53 -53 54
		mu 0 3 160 660 233
		f 3 -54 55 -42
		mu 0 3 660 160 406
		f 3 56 57 58
		mu 0 3 405 446 151
		f 3 -57 59 60
		mu 0 3 446 405 220
		f 3 61 62 -61
		mu 0 3 220 560 446
		f 3 -62 63 -43
		mu 0 3 560 220 279
		f 3 64 65 66
		mu 0 3 222 446 260
		f 3 -63 -56 -66
		mu 0 3 446 560 260
		f 3 -65 67 68
		mu 0 3 446 222 379
		f 3 -69 69 -58
		mu 0 3 446 379 151
		f 3 70 71 72
		mu 0 3 53 233 760
		f 3 -71 73 -55
		mu 0 3 233 53 160
		f 3 -72 -52 74
		mu 0 3 760 233 131
		f 3 75 76 77
		mu 0 3 410 63 341
		f 3 -76 78 79
		mu 0 3 63 410 139
		f 3 80 -77 81
		mu 0 3 585 341 63
		f 3 -81 -4 82
		mu 0 3 341 585 622
		f 3 -8 83 84
		mu 0 3 352 626 440
		f 3 -84 85 86
		mu 0 3 440 626 549
		f 3 87 88 89
		mu 0 3 607 549 16
		f 3 -88 90 -87
		mu 0 3 549 607 440
		f 3 91 92 93
		mu 0 3 453 220 135
		f 3 -92 94 -64
		mu 0 3 220 453 279
		f 3 95 96 -93
		mu 0 3 220 167 135
		f 3 -96 -60 97
		mu 0 3 167 220 405
		f 3 -98 98 -31
		mu 0 3 167 405 143
		f 3 -99 -59 99
		mu 0 3 143 405 151
		f 3 -35 100 101
		mu 0 3 201 143 379
		f 3 -100 -70 -101
		mu 0 3 143 151 379
		f 3 102 103 104
		mu 0 3 627 556 444
		f 3 -103 -36 105
		mu 0 3 556 627 201
		f 3 -104 106 107
		mu 0 3 444 556 367
		f 3 -107 108 109
		mu 0 3 367 556 400
		f 3 110 111 -106
		mu 0 3 201 222 556
		f 3 -111 -102 -68
		mu 0 3 222 201 379
		f 3 -74 -109 112
		mu 0 3 260 400 556
		f 3 -113 -112 -67
		mu 0 3 260 556 222
		f 3 113 114 -94
		mu 0 3 135 436 453
		f 3 -114 115 116
		mu 0 3 436 135 291
		f 3 117 -28 118
		mu 0 3 291 167 264
		f 3 -118 -116 -97
		mu 0 3 167 291 135
		f 3 119 -46 120
		mu 0 3 834 255 381
		f 3 121 122 -121
		mu 0 3 381 755 834
		f 3 -122 -44 -95
		mu 0 3 755 381 240
		f 3 123 124 125
		mu 0 3 534 553 634
		f 3 -125 126 127
		mu 0 3 634 553 635
		f 3 128 129 130
		mu 0 3 200 340 634
		f 3 -128 131 -131
		mu 0 3 634 635 200
		f 3 132 133 134
		mu 0 3 323 430 223
		f 3 -133 135 136
		mu 0 3 430 323 250
		f 3 137 138 -134
		mu 0 3 430 534 223
		f 3 -138 139 -124
		mu 0 3 534 430 553
		f 3 140 141 142
		mu 0 3 263 156 162
		f 3 -141 143 144
		mu 0 3 156 263 478
		f 3 145 146 -145
		mu 0 3 478 250 156
		f 3 -147 -136 147
		mu 0 3 156 250 323
		f 3 148 -105 149
		mu 0 3 341 627 444
		f 3 -149 -83 150
		mu 0 3 627 341 622
		f 3 151 -108 152
		mu 0 3 410 444 367
		f 3 -152 -78 -150
		mu 0 3 444 410 341
		f 3 153 154 -30
		mu 0 3 259 352 264
		f 3 -154 155 -9
		mu 0 3 352 259 197
		f 3 156 -151 -3
		mu 0 3 197 627 622
		f 3 -157 -156 -34
		mu 0 3 627 197 259
		f 3 157 158 159
		mu 0 3 661 637 241
		f 3 -158 160 161
		mu 0 3 637 661 101
		f 3 162 163 164
		mu 0 3 285 148 246
		f 3 -163 165 166
		mu 0 3 148 285 637
		f 3 167 168 169
		mu 0 3 639 590 59
		f 3 -168 170 171
		mu 0 3 590 639 455
		f 3 172 173 -172
		mu 0 3 455 661 590
		f 3 -173 174 -161
		mu 0 3 661 455 101
		f 3 175 176 177
		mu 0 3 252 155 329
		f 3 178 179 -177
		mu 0 3 155 603 329
		f 3 180 -180 181
		mu 0 3 543 329 603
		f 3 -181 182 183
		mu 0 3 329 543 351
		f 3 184 185 186
		mu 0 3 66 306 639
		f 3 -187 -170 187
		mu 0 3 66 639 59
		f 3 188 189 190
		mu 0 3 91 377 317
		f 3 -189 191 192
		mu 0 3 377 91 550
		f 3 193 194 -193
		mu 0 3 550 416 377
		f 3 195 -195 196
		mu 0 3 44 377 416
		f 3 197 198 199
		mu 0 3 242 44 32
		f 3 -198 200 -196
		mu 0 3 44 242 377
		f 3 201 -201 202
		mu 0 3 6 377 242
		f 3 -202 203 -190
		mu 0 3 377 6 317
		f 3 204 205 -160
		mu 0 3 241 588 661
		f 3 206 -206 207
		mu 0 3 477 661 588
		f 3 208 209 210
		mu 0 3 87 36 399
		f 3 -209 211 212
		mu 0 3 36 87 647
		f 3 -213 213 214
		mu 0 3 36 647 502
		f 3 -215 -191 215
		mu 0 3 36 502 296
		f 3 216 217 218
		mu 0 3 537 36 437
		f 3 -216 -204 -218
		mu 0 3 36 296 437
		f 3 219 -210 220
		mu 0 3 432 399 36
		f 3 -217 221 -221
		mu 0 3 36 537 432
		f 3 222 223 224
		mu 0 3 575 242 747
		f 3 -223 225 -203
		mu 0 3 242 575 6
		f 3 -224 -200 226
		mu 0 3 747 242 32
		f 3 -117 227 228
		mu 0 3 436 291 607
		f 3 -228 229 -91
		mu 0 3 607 291 440
		f 3 230 -119 -155
		mu 0 3 352 291 264
		f 3 -231 -85 -230
		mu 0 3 291 352 440
		f 3 -115 231 -123
		mu 0 3 755 756 834
		f 3 232 -232 233
		mu 0 3 798 834 756
		f 3 234 235 236
		mu 0 3 646 647 625
		f 3 -235 237 -214
		mu 0 3 647 646 502
		f 3 238 -236 -212
		mu 0 3 87 625 647
		f 3 -239 239 240
		mu 0 3 625 87 155
		f 3 -240 241 -179
		mu 0 3 155 87 603
		f 3 -242 -211 242
		mu 0 3 603 87 399
		f 3 -182 243 244
		mu 0 3 543 603 432
		f 3 -243 -220 -244
		mu 0 3 603 399 432
		f 3 245 246 247
		mu 0 3 351 385 392
		f 3 -246 -183 248
		mu 0 3 385 351 543
		f 3 249 250 251
		mu 0 3 505 385 651
		f 3 -250 252 -247
		mu 0 3 385 505 392
		f 3 -245 253 -249
		mu 0 3 543 432 385
		f 3 254 -254 -222
		mu 0 3 537 385 432
		f 3 -226 -251 255
		mu 0 3 437 651 385
		f 3 -256 -255 -219
		mu 0 3 437 385 537
		f 3 256 257 -237
		mu 0 3 625 225 646
		f 3 -257 258 259
		mu 0 3 225 625 466
		f 3 260 -259 -241
		mu 0 3 155 466 625
		f 3 -261 -176 261
		mu 0 3 466 155 252
		f 3 262 -194 263
		mu 0 3 814 416 550
		f 3 264 265 -264
		mu 0 3 550 751 814
		f 3 -265 -192 -238
		mu 0 3 751 550 91
		f 3 266 267 268
		mu 0 3 113 231 171
		f 3 -268 269 270
		mu 0 3 171 231 42
		f 3 271 272 273
		mu 0 3 469 666 171
		f 3 -271 274 -274
		mu 0 3 171 42 469
		f 3 275 276 277
		mu 0 3 510 345 449
		f 3 -276 278 279
		mu 0 3 345 510 577
		f 3 -277 280 281
		mu 0 3 449 345 231
		f 3 -282 -267 282
		mu 0 3 449 231 113
		f 3 283 284 285
		mu 0 3 547 500 525
		f 3 -284 286 287
		mu 0 3 500 547 447
		f 3 288 289 -288
		mu 0 3 447 577 500
		f 3 -290 -279 290
		mu 0 3 500 577 510
		f 3 291 292 293
		mu 0 3 582 395 426
		f 3 -293 294 295
		mu 0 3 426 395 208
		f 3 296 297 298
		mu 0 3 109 208 719
		f 3 -297 299 -296
		mu 0 3 208 109 426
		f 3 300 301 302
		mu 0 3 516 356 46
		f 3 -302 303 304
		mu 0 3 46 356 574
		f 3 305 306 -292
		mu 0 3 582 574 395
		f 3 -306 307 -305
		mu 0 3 574 582 46
		f 3 308 309 310
		mu 0 3 97 27 512
		f 3 311 312 -310
		mu 0 3 27 274 512
		f 3 -313 313 314
		mu 0 3 512 274 524
		f 3 315 316 -314
		mu 0 3 274 70 524
		f 3 317 318 -301
		mu 0 3 516 364 356
		f 3 319 320 -319
		mu 0 3 364 148 356
		f 3 321 322 323
		mu 0 3 386 161 270
		f 3 -322 324 325
		mu 0 3 161 386 232
		f 3 326 327 -326
		mu 0 3 232 35 161
		f 3 -327 328 329
		mu 0 3 35 232 150
		f 3 330 331 332
		mu 0 3 650 161 15
		f 3 -328 333 -332
		mu 0 3 161 35 15
		f 3 334 -323 335
		mu 0 3 179 270 161
		f 3 -336 -331 336
		mu 0 3 179 161 650
		f 3 337 338 339
		mu 0 3 592 169 204
		f 3 -338 340 341
		mu 0 3 169 592 96
		f 3 342 -340 343
		mu 0 3 564 592 204
		f 3 -343 -324 344
		mu 0 3 592 564 57
		f 3 -335 345 -345
		mu 0 3 57 362 592
		f 3 -346 346 347
		mu 0 3 592 362 448
		f 3 348 -341 349
		mu 0 3 147 96 592
		f 3 -348 350 -350
		mu 0 3 592 448 147
		f 3 351 352 353
		mu 0 3 129 650 743
		f 3 -352 354 -337
		mu 0 3 650 129 179
		f 3 -353 -333 355
		mu 0 3 743 650 15
		f 3 356 357 358
		mu 0 3 100 665 602
		f 3 -357 359 360
		mu 0 3 665 100 120
		f 3 361 362 363
		mu 0 3 591 100 638
		f 3 -362 364 -360
		mu 0 3 100 591 120
		f 3 365 366 367
		mu 0 3 564 82 527
		f 3 -366 -344 368
		mu 0 3 82 564 204
		f 3 -369 -339 369
		mu 0 3 82 204 169
		f 3 -370 370 371
		mu 0 3 82 169 27
		f 3 372 -312 -371
		mu 0 3 169 274 27
		f 3 -373 -342 373
		mu 0 3 274 169 96
		f 3 -349 374 -374
		mu 0 3 96 147 274
		f 3 -316 -375 375
		mu 0 3 70 274 147
		f 3 376 377 378
		mu 0 3 524 659 471
		f 3 -377 -317 379
		mu 0 3 659 524 70
		f 3 380 381 382
		mu 0 3 471 37 497
		f 3 -381 -378 383
		mu 0 3 37 471 659
		f 3 384 385 -351
		mu 0 3 448 659 147
		f 3 -380 -376 -386
		mu 0 3 659 70 147
		f 3 -355 -384 386
		mu 0 3 362 37 659
		f 3 -387 -385 -347
		mu 0 3 362 659 448
		f 3 387 388 -367
		mu 0 3 82 164 527
		f 3 389 -389 390
		mu 0 3 674 527 164
		f 3 391 -388 -372
		mu 0 3 27 164 82
		f 3 -392 -309 392
		mu 0 3 164 27 97
		f 3 393 -329 394
		mu 0 3 816 150 232
		f 3 395 396 -395
		mu 0 3 232 736 816
		f 3 -396 -325 -368
		mu 0 3 736 232 386
		f 3 397 398 399
		mu 0 3 433 375 262
		f 3 -398 400 401
		mu 0 3 375 433 488
		f 3 402 403 404
		mu 0 3 488 128 373
		f 3 -403 -401 405
		mu 0 3 128 488 433
		f 3 406 407 408
		mu 0 3 419 40 540
		f 3 -409 409 410
		mu 0 3 419 540 276
		f 3 411 412 -399
		mu 0 3 375 40 262
		f 3 -412 413 -408
		mu 0 3 40 375 540
		f 3 414 415 416
		mu 0 3 325 216 633
		f 3 -415 417 418
		mu 0 3 216 325 48
		f 3 419 420 -417
		mu 0 3 633 419 325
		f 3 421 -421 -411
		mu 0 3 276 325 419
		f 3 422 -364 423
		mu 0 3 593 591 638
		f 3 -423 424 425
		mu 0 3 591 593 257
		f 3 426 427 428
		mu 0 3 287 350 257
		f 3 -429 -425 429
		mu 0 3 287 257 593
		f 3 430 431 432
		mu 0 3 350 467 451
		f 3 -431 -427 433
		mu 0 3 467 350 287
		f 3 434 435 436
		mu 0 3 215 146 451
		f 3 -437 -432 437
		mu 0 3 215 451 467
		f 3 438 439 440
		mu 0 3 284 125 418
		f 3 -440 441 442
		mu 0 3 418 125 600
		f 3 443 444 -443
		mu 0 3 600 372 418
		f 3 445 -445 446
		mu 0 3 558 418 372
		f 3 447 448 449
		mu 0 3 565 558 520
		f 3 -448 450 -446
		mu 0 3 558 565 418
		f 3 451 -441 -451
		mu 0 3 565 284 418
		f 3 -452 452 453
		mu 0 3 284 565 163
		f 3 454 455 456
		mu 0 3 305 422 141
		f 3 457 -455 458
		mu 0 3 55 422 305
		f 3 -439 459 460
		mu 0 3 498 642 422
		f 3 -458 461 -461
		mu 0 3 422 55 498
		f 3 462 463 464
		mu 0 3 332 422 126
		f 3 -460 -454 -464
		mu 0 3 422 642 126
		f 3 -463 465 466
		mu 0 3 422 332 244
		f 3 -467 467 -456
		mu 0 3 422 244 141
		f 3 468 469 470
		mu 0 3 159 565 689
		f 3 -469 471 -453
		mu 0 3 565 159 163
		f 3 -470 -450 472
		mu 0 3 689 565 520
		f 3 473 474 475
		mu 0 3 767 801 898
		f 3 476 477 478
		mu 0 3 412 55 460
		f 3 -477 479 -462
		mu 0 3 55 412 498
		f 3 480 481 -478
		mu 0 3 55 289 460
		f 3 -481 -459 482
		mu 0 3 289 55 305
		f 3 483 484 485
		mu 0 3 234 638 409
		f 3 -485 -363 486
		mu 0 3 409 638 100
		f 3 487 488 489
		mu 0 3 602 54 409
		f 3 -487 -359 -490
		mu 0 3 409 100 602
		f 3 490 491 -457
		mu 0 3 141 601 305
		f 3 492 -483 -492
		mu 0 3 601 289 305
		f 3 493 494 495
		mu 0 3 628 601 244
		f 3 -491 -468 -495
		mu 0 3 601 141 244
		f 3 496 497 498
		mu 0 3 494 593 112
		f 3 -497 499 -430
		mu 0 3 593 494 287
		f 3 -424 500 -498
		mu 0 3 593 638 112
		f 3 501 -501 -484
		mu 0 3 234 112 638
		f 3 502 503 -466
		mu 0 3 332 312 244
		f 3 504 -496 -504
		mu 0 3 312 628 244
		f 3 -472 505 506
		mu 0 3 126 265 312
		f 3 -507 -503 -465
		mu 0 3 126 312 332
		f 3 507 508 509
		mu 0 3 215 458 286
		f 3 -508 -438 510
		mu 0 3 458 215 467
		f 3 511 512 -511
		mu 0 3 467 494 458
		f 3 -512 -434 -500
		mu 0 3 494 467 287
		f 3 513 -444 514
		mu 0 3 829 372 600
		f 3 515 516 -515
		mu 0 3 600 691 829
		f 3 -516 -442 -480
		mu 0 3 691 600 125
		f 3 517 518 519
		mu 0 3 769 772 773
		f 3 520 521 522
		mu 0 3 29 621 13
		f 3 -521 523 524
		mu 0 3 621 29 509
		f 3 525 526 527
		mu 0 3 722 880 879
		f 3 -526 528 529
		mu 0 3 880 722 723
		f 3 530 531 532
		mu 0 3 428 612 349
		f 3 -531 533 534
		mu 0 3 612 428 474
		f 3 535 536 -534
		mu 0 3 428 29 474
		f 3 -537 -523 537
		mu 0 3 474 29 13
		f 3 538 539 540
		mu 0 3 645 86 519
		f 3 -539 541 542
		mu 0 3 86 645 473
		f 3 -543 543 544
		mu 0 3 86 473 349
		f 3 -545 -532 545
		mu 0 3 86 349 612
		f 3 546 547 548
		mu 0 3 698 788 863
		f 3 -547 549 550
		mu 0 3 788 698 699
		f 3 551 -550 552
		mu 0 3 538 699 698
		f 3 -552 553 554
		mu 0 3 699 538 456
		f 3 555 -554 556
		mu 0 3 253 456 538
		f 3 -556 557 558
		mu 0 3 456 253 439
		f 3 559 560 561
		mu 0 3 210 30 253
		f 3 -558 -561 562
		mu 0 3 439 253 30
		f 3 -560 563 564
		mu 0 3 490 33 414
		f 3 565 566 -564
		mu 0 3 33 69 414
		f 3 567 -567 568
		mu 0 3 224 414 69
		f 3 -568 569 570
		mu 0 3 414 224 360
		f 3 571 -570 572
		mu 0 3 404 360 224
		f 3 -572 573 574
		mu 0 3 360 404 683
		f 3 575 576 577
		mu 0 3 267 533 429
		f 3 -576 578 579
		mu 0 3 533 267 431
		f 3 580 581 582
		mu 0 3 192 596 533
		f 3 -583 -580 583
		mu 0 3 192 533 431
		f 3 584 585 -582
		mu 0 3 596 493 533
		f 3 -585 586 587
		mu 0 3 493 596 214
		f 3 588 -577 589
		mu 0 3 476 429 533
		f 3 -590 -586 590
		mu 0 3 476 533 493
		f 3 591 592 593
		mu 0 3 535 334 170
		f 3 -592 594 595
		mu 0 3 334 535 249
		f 3 596 597 -594
		mu 0 3 170 429 535
		f 3 -597 598 -578
		mu 0 3 429 170 267
		f 3 599 600 601
		mu 0 3 228 535 476
		f 3 -598 -589 -601
		mu 0 3 535 429 476
		f 3 -600 602 603
		mu 0 3 535 228 322
		f 3 -604 604 -595
		mu 0 3 535 322 249
		f 3 605 606 607
		mu 0 3 495 83 657
		f 3 -606 608 -591
		mu 0 3 83 495 387
		f 3 -607 -588 609
		mu 0 3 657 83 462
		f 3 610 -610 611
		mu 0 3 862 657 462
		f 3 -611 612 613
		mu 0 3 657 862 682
		f 3 614 -608 615
		mu 0 3 404 495 657
		f 3 -614 616 -616
		mu 0 3 657 682 404
		f 3 617 618 619
		mu 0 3 861 192 809
		f 3 -618 620 -581
		mu 0 3 192 861 596
		f 3 621 -587 -621
		mu 0 3 861 214 596
		f 3 -622 622 -612
		mu 0 3 214 861 342
		f 3 623 624 -599
		mu 0 3 170 236 267
		f 3 625 626 -625
		mu 0 3 236 672 267
		f 3 627 -593 628
		mu 0 3 205 170 334
		f 3 -628 629 -624
		mu 0 3 170 205 236
		f 3 630 631 -630
		mu 0 3 205 253 236
		f 3 -632 -557 632
		mu 0 3 236 253 538
		f 3 633 -626 634
		mu 0 3 698 672 236
		f 3 -633 -553 -635
		mu 0 3 236 538 698
		f 3 635 636 -629
		mu 0 3 334 961 205
		f 3 -636 -596 637
		mu 0 3 961 334 962
		f 3 -605 638 -638
		mu 0 3 177 166 190
		f 3 -639 639 640
		mu 0 3 190 166 185
		f 3 641 642 -566
		mu 0 3 33 190 69
		f 3 -641 643 -643
		mu 0 3 190 185 69
		f 3 644 -562 -631
		mu 0 3 205 210 253
		f 3 -645 -637 -642
		mu 0 3 210 205 961
		f 3 645 646 -640
		mu 0 3 166 499 185
		f 3 -646 -603 647
		mu 0 3 499 166 188
		f 3 -609 648 649
		mu 0 3 387 495 499
		f 3 -648 -602 -650
		mu 0 3 499 188 387
		f 3 650 651 -649
		mu 0 3 495 224 499
		f 3 -651 -615 -573
		mu 0 3 224 495 404
		f 3 652 -644 -647
		mu 0 3 499 69 185
		f 3 -653 -652 -569
		mu 0 3 69 499 224
		f 3 653 -584 654
		mu 0 3 359 192 431
		f 3 655 -579 -627
		mu 0 3 672 431 267
		f 3 -656 656 -655
		mu 0 3 431 672 359
		f 3 657 658 -657
		mu 0 3 672 863 359
		f 3 -658 -634 -549
		mu 0 3 863 672 698
		f 3 -659 659 660
		mu 0 3 359 863 809
		f 3 -661 -619 -654
		mu 0 3 359 809 192
		f 3 661 662 663
		mu 0 3 812 811 631
		f 3 664 665 -663
		mu 0 3 811 326 631
		f 3 666 667 668
		mu 0 3 542 290 530
		f 3 -667 669 670
		mu 0 3 290 542 282
		f 3 671 672 673
		mu 0 3 655 509 589
		f 3 674 675 -673
		mu 0 3 509 670 589
		f 3 676 677 678
		mu 0 3 23 202 480
		f 3 -678 679 680
		mu 0 3 480 202 539
		f 3 681 682 683
		mu 0 3 417 246 261
		f 3 -682 684 -165
		mu 0 3 246 417 285
		f 3 685 686 687
		mu 0 3 541 277 132
		f 3 -686 688 689
		mu 0 3 277 541 258
		f 3 690 691 692
		mu 0 3 883 154 725
		f 3 -692 693 -689
		mu 0 3 725 154 344
		f 3 694 695 696
		mu 0 3 88 668 485
		f 3 -695 697 698
		mu 0 3 668 88 546
		f 3 699 700 701
		mu 0 3 475 268 629
		f 3 -701 702 -698
		mu 0 3 629 268 58
		f 3 703 -699 704
		mu 0 3 579 668 546
		f 3 -704 705 706
		mu 0 3 668 579 675
		f 3 707 708 -703
		mu 0 3 268 136 58
		f 3 -709 709 -705
		mu 0 3 58 136 19
		f 3 710 711 712
		mu 0 3 333 347 721
		f 3 -711 713 714
		mu 0 3 347 333 321
		f 3 715 716 -715
		mu 0 3 321 21 347
		f 3 -717 717 718
		mu 0 3 347 21 211
		f 3 -719 719 720
		mu 0 3 347 211 720
		f 3 -720 721 722
		mu 0 3 720 211 266
		f 3 723 724 725
		mu 0 3 28 108 56
		f 3 -724 726 727
		mu 0 3 108 28 288
		f 3 728 729 730
		mu 0 3 85 609 158
		f 3 -729 731 732
		mu 0 3 609 85 175
		f 3 733 734 735
		mu 0 3 238 450 479
		f 3 -734 736 737
		mu 0 3 450 238 199
		f 3 738 739 740
		mu 0 3 145 368 144
		f 3 -739 741 742
		mu 0 3 368 145 311
		f 3 743 744 745
		mu 0 3 111 158 198
		f 3 -731 -744 746
		mu 0 3 85 158 111
		f 3 747 748 749
		mu 0 3 382 569 606
		f 3 -749 750 751
		mu 0 3 606 569 599
		f 3 752 753 754
		mu 0 3 583 198 89
		f 3 -753 755 -746
		mu 0 3 198 583 111
		f 3 756 757 758
		mu 0 3 288 566 187
		f 3 -757 -727 759
		mu 0 3 566 288 28
		f 3 760 -737 761
		mu 0 3 609 199 238
		f 3 -761 -733 762
		mu 0 3 199 609 175
		f 3 763 764 765
		mu 0 3 484 382 641
		f 3 -748 -764 766
		mu 0 3 569 382 484
		f 3 767 768 769
		mu 0 3 275 310 303
		f 3 -768 770 771
		mu 0 3 310 275 613
		f 3 772 -755 773
		mu 0 3 56 583 89
		f 3 -773 -725 774
		mu 0 3 583 56 108
		f 3 775 -766 776
		mu 0 3 479 484 641
		f 3 -776 -735 777
		mu 0 3 484 479 450
		f 3 778 779 -769
		mu 0 3 310 566 303
		f 3 -758 -779 780
		mu 0 3 187 566 310
		f 3 781 -742 782
		mu 0 3 511 311 145
		f 3 -782 783 784
		mu 0 3 311 511 427
		f 3 -752 785 786
		mu 0 3 606 599 545
		f 3 -786 787 788
		mu 0 3 545 599 363
		f 3 789 -771 790
		mu 0 3 144 613 275
		f 3 -790 -740 791
		mu 0 3 613 144 368
		f 3 792 -784 793
		mu 0 3 132 427 511
		f 3 -793 -687 794
		mu 0 3 427 132 277
		f 3 795 796 797
		mu 0 3 541 256 295
		f 3 -796 -688 798
		mu 0 3 256 541 132
		f 3 799 800 -726
		mu 0 3 56 640 28
		f 3 -800 801 802
		mu 0 3 640 56 348
		f 3 803 804 805
		mu 0 3 597 158 653
		f 3 -730 806 -805
		mu 0 3 158 609 653
		f 3 807 808 809
		mu 0 3 38 238 611
		f 3 -736 810 -809
		mu 0 3 238 479 611
		f 3 811 812 813
		mu 0 3 396 144 671
		f 3 -812 814 -741
		mu 0 3 144 396 145
		f 3 815 -804 816
		mu 0 3 572 158 597
		f 3 -816 817 -745
		mu 0 3 158 572 198
		f 3 818 819 820
		mu 0 3 328 578 382
		f 3 -821 -750 821
		mu 0 3 328 382 606
		f 3 822 -818 823
		mu 0 3 62 198 572
		f 3 -823 824 -754
		mu 0 3 198 62 89
		f 3 825 -801 826
		mu 0 3 80 28 640
		f 3 -826 827 -760
		mu 0 3 28 80 566
		f 3 828 -808 829
		mu 0 3 653 238 38
		f 3 -829 -807 -762
		mu 0 3 238 653 609
		f 3 830 -820 831
		mu 0 3 652 382 578
		f 3 -831 832 -765
		mu 0 3 382 652 641
		f 3 833 834 835
		mu 0 3 127 303 271
		f 3 -834 836 -770
		mu 0 3 303 127 275
		f 3 837 -802 -774
		mu 0 3 89 348 56
		f 3 -838 -825 838
		mu 0 3 348 89 62
		f 3 839 -833 840
		mu 0 3 611 641 652
		f 3 -840 -811 -777
		mu 0 3 641 611 479
		f 3 841 -828 842
		mu 0 3 271 566 80
		f 3 -842 -835 -780
		mu 0 3 566 271 303
		f 3 843 844 -783
		mu 0 3 145 121 511
		f 3 -844 -815 845
		mu 0 3 121 145 396
		f 3 846 -822 847
		mu 0 3 34 328 606
		f 3 -848 -787 848
		mu 0 3 34 606 545
		f 3 -837 849 -791
		mu 0 3 275 127 144
		f 3 -813 -850 850
		mu 0 3 671 144 127
		f 3 851 -845 852
		mu 0 3 256 511 121
		f 3 -852 -799 -794
		mu 0 3 511 256 132
		f 3 853 -714 854
		mu 0 3 34 321 333
		f 3 -854 -849 855
		mu 0 3 321 34 545
		f 3 856 -716 -856
		mu 0 3 545 21 321
		f 3 -857 -789 857
		mu 0 3 21 545 363
		f 3 858 859 -178
		mu 0 3 329 25 252
		f 3 -859 860 861
		mu 0 3 25 329 339
		f 3 862 863 864
		mu 0 3 339 351 191
		f 3 -863 -861 -184
		mu 0 3 351 339 329
		f 3 865 866 867
		mu 0 3 392 292 191
		f 3 -864 -248 -868
		mu 0 3 191 351 392
		f 3 868 -253 869
		mu 0 3 68 392 505
		f 3 -869 870 -866
		mu 0 3 392 68 292
		f 3 871 -260 872
		mu 0 3 137 225 466
		f 3 -873 873 874
		mu 0 3 137 466 11
		f 3 -874 -262 875
		mu 0 3 11 466 252
		f 3 -876 -860 876
		mu 0 3 11 252 25
		f 3 -258 877 -266
		mu 0 3 751 752 814
		f 3 878 -878 879
		mu 0 3 797 814 752
		f 3 -877 880 881
		mu 0 3 11 25 106
		f 3 -882 882 883
		mu 0 3 11 106 552
		f 3 884 885 886
		mu 0 3 137 552 389
		f 3 -885 -875 -884
		mu 0 3 552 137 11;
	setAttr ".fc[500:999]"
		f 3 887 -865 888
		mu 0 3 281 339 191
		f 3 -888 889 890
		mu 0 3 339 281 594
		f 3 891 892 -891
		mu 0 3 594 106 339
		f 3 -862 -893 -881
		mu 0 3 25 339 106
		f 3 893 894 -871
		mu 0 3 68 506 292
		f 3 -894 895 896
		mu 0 3 506 68 679
		f 3 897 -895 898
		mu 0 3 281 292 506
		f 3 -898 -889 -867
		mu 0 3 292 281 191
		f 3 899 900 901
		mu 0 3 746 796 911
		f 3 -311 902 903
		mu 0 3 97 512 140
		f 3 -903 904 905
		mu 0 3 140 512 308
		f 3 906 907 -905
		mu 0 3 512 71 308
		f 3 -907 -315 908
		mu 0 3 71 512 524
		f 3 909 910 911
		mu 0 3 52 71 471
		f 3 -909 -379 -911
		mu 0 3 71 524 471
		f 3 912 913 -912
		mu 0 3 471 195 52
		f 3 -913 -383 914
		mu 0 3 195 471 497
		f 3 915 916 917
		mu 0 3 674 98 2
		f 3 -916 -391 918
		mu 0 3 98 674 164
		f 3 919 920 -904
		mu 0 3 140 98 97
		f 3 -919 -393 -921
		mu 0 3 98 164 97
		f 3 -390 921 -397
		mu 0 3 736 737 816
		f 3 922 -922 923
		mu 0 3 795 816 737
		f 3 924 925 926
		mu 0 3 472 140 3
		f 3 -925 927 -920
		mu 0 3 140 472 98
		f 3 928 929 930
		mu 0 3 2 472 7
		f 3 -929 -917 -928
		mu 0 3 472 2 98
		f 3 931 932 -908
		mu 0 3 71 482 308
		f 3 -933 933 934
		mu 0 3 308 482 118
		f 3 935 936 -926
		mu 0 3 140 118 3
		f 3 -936 -906 -935
		mu 0 3 118 140 308
		f 3 937 938 939
		mu 0 3 302 195 47
		f 3 -938 940 -914
		mu 0 3 195 302 52
		f 3 941 942 -941
		mu 0 3 302 482 52
		f 3 -943 -932 -910
		mu 0 3 52 482 71
		f 3 943 944 -486
		mu 0 3 409 289 234
		f 3 -944 945 -482
		mu 0 3 289 409 460
		f 3 946 -946 -489
		mu 0 3 54 460 409
		f 3 -947 947 -479
		mu 0 3 460 54 412
		f 3 948 949 -494
		mu 0 3 628 112 601
		f 3 -949 950 -499
		mu 0 3 112 628 494
		f 3 951 -945 -493
		mu 0 3 601 234 289
		f 3 -952 -950 -502
		mu 0 3 234 601 112
		f 3 952 953 -509
		mu 0 3 458 265 286
		f 3 -953 954 -506
		mu 0 3 265 458 312
		f 3 955 -955 -513
		mu 0 3 494 312 458
		f 3 -956 -951 -505
		mu 0 3 312 494 628
		f 3 956 957 -361
		mu 0 3 120 122 665
		f 3 -957 958 959
		mu 0 3 122 120 81
		f 3 960 -365 961
		mu 0 3 487 120 591
		f 3 -961 962 -959
		mu 0 3 120 487 81
		f 3 963 964 965
		mu 0 3 818 801 688
		f 3 -965 966 967
		mu 0 3 688 801 768
		f 3 968 -962 -426
		mu 0 3 257 487 591
		f 3 -969 969 970
		mu 0 3 487 257 415
		f 3 971 -970 -428
		mu 0 3 350 415 257
		f 3 -972 972 973
		mu 0 3 415 350 0
		f 3 974 -973 -433
		mu 0 3 451 0 350
		f 3 -975 975 976
		mu 0 3 0 451 465
		f 3 977 -436 -968
		mu 0 3 230 451 146
		f 3 -978 978 -976
		mu 0 3 451 230 465
		f 3 979 980 -960
		mu 0 3 81 571 122
		f 3 -980 981 982
		mu 0 3 571 81 226
		f 3 983 984 985
		mu 0 3 226 487 581
		f 3 -984 -982 -963
		mu 0 3 487 226 81
		f 3 986 -985 -971
		mu 0 3 415 581 487
		f 3 -987 987 988
		mu 0 3 581 415 470
		f 3 989 990 991
		mu 0 3 0 595 470
		f 3 -988 -974 -992
		mu 0 3 470 415 0
		f 3 992 -990 -977
		mu 0 3 465 595 0
		f 3 -993 993 994
		mu 0 3 595 465 114
		f 3 995 -979 996
		mu 0 3 157 465 230
		f 3 -996 997 -994
		mu 0 3 465 157 114
		f 3 998 999 -986
		mu 0 3 581 468 226
		f 3 -999 1000 1001
		mu 0 3 468 581 492
		f 3 -520 -983 1002
		mu 0 3 206 571 226
		f 3 -1000 1003 -1003
		mu 0 3 226 468 206
		f 3 1004 1005 1006
		mu 0 3 391 595 676
		f 3 -1005 1007 -991
		mu 0 3 595 391 470
		f 3 1008 1009 -1008
		mu 0 3 391 492 470
		f 3 -1010 -1001 -989
		mu 0 3 470 492 581
		f 3 1010 1011 -998
		mu 0 3 157 61 114
		f 3 -1011 1012 1013
		mu 0 3 61 157 357
		f 3 1014 1015 -1012
		mu 0 3 61 676 114
		f 3 -1016 -1006 -995
		mu 0 3 114 676 595
		f 3 1016 1017 1018
		mu 0 3 829 690 780
		f 3 -1017 -517 -948
		mu 0 3 690 829 691
		f 3 1019 1020 -86
		mu 0 3 626 534 549
		f 3 -126 1021 -1021
		mu 0 3 534 634 549
		f 3 1022 -1022 -130
		mu 0 3 340 549 634
		f 3 -1023 1023 -89
		mu 0 3 549 340 16
		f 3 1024 1025 -135
		mu 0 3 223 585 323
		f 3 -1025 1026 -5
		mu 0 3 585 223 563
		f 3 -1020 1027 -139
		mu 0 3 534 626 223
		f 3 -1027 -1028 -6
		mu 0 3 563 223 626
		f 3 1028 1029 -142
		mu 0 3 156 63 162
		f 3 1030 -1030 -80
		mu 0 3 139 162 63
		f 3 1031 -1029 -148
		mu 0 3 323 63 156
		f 3 -1032 -1026 -82
		mu 0 3 63 323 585
		f 3 1032 1033 1034
		mu 0 3 695 696 782
		f 3 1035 1036 1037
		mu 0 3 781 799 758
		f 3 -1037 1038 -1024
		mu 0 3 758 799 759
		f 3 1039 1040 -127
		mu 0 3 553 443 635
		f 3 -1041 1041 1042
		mu 0 3 635 443 514
		f 3 1043 1044 -1033
		mu 0 3 200 514 133
		f 3 -1044 -132 -1043
		mu 0 3 514 200 635
		f 3 1045 1046 -137
		mu 0 3 250 79 430
		f 3 -1046 1047 1048
		mu 0 3 79 250 438
		f 3 1049 -140 -1047
		mu 0 3 79 553 430
		f 3 -1050 1050 -1040
		mu 0 3 553 79 443
		f 3 1051 1052 -144
		mu 0 3 263 203 478
		f 3 -1052 1053 1054
		mu 0 3 203 263 620
		f 3 1055 1056 -1053
		mu 0 3 203 438 478
		f 3 -1057 -1048 -146
		mu 0 3 478 438 250
		f 3 1057 1058 1059
		mu 0 3 732 733 783
		f 3 1060 1061 1062
		mu 0 3 748 747 796
		f 3 -1061 -252 -225
		mu 0 3 747 748 575
		f 3 1063 1064 1065
		mu 0 3 778 706 707
		f 3 -1064 1066 -272
		mu 0 3 706 778 750
		f 3 1067 1068 -1065
		mu 0 3 706 709 707
		f 3 1069 1070 -270
		mu 0 3 231 477 42
		f 3 -1071 -208 1071
		mu 0 3 42 477 588
		f 3 1072 1073 -1068
		mu 0 3 469 588 239
		f 3 -1073 -275 -1072
		mu 0 3 588 469 42
		f 3 1074 1075 -280
		mu 0 3 577 398 345
		f 3 -1075 1076 1077
		mu 0 3 398 577 531
		f 3 1078 -281 -1076
		mu 0 3 398 231 345
		f 3 -1079 1079 -1070
		mu 0 3 231 398 477
		f 3 1080 1081 -287
		mu 0 3 547 207 447
		f 3 -1081 1082 1083
		mu 0 3 207 547 605
		f 3 -1082 1084 1085
		mu 0 3 447 207 531
		f 3 -1086 -1077 -289
		mu 0 3 447 531 577
		f 3 1086 1087 1088
		mu 0 3 681 774 877
		f 3 1089 1090 1091
		mu 0 3 649 433 243
		f 3 -400 1092 -1091
		mu 0 3 433 262 243
		f 3 1093 1094 1095
		mu 0 3 128 649 318
		f 3 -1094 -406 -1090
		mu 0 3 649 128 433
		f 3 1096 1097 -407
		mu 0 3 419 153 40
		f 3 -1098 1098 1099
		mu 0 3 40 153 491
		f 3 1100 1101 -1093
		mu 0 3 262 491 243
		f 3 -1101 -413 -1100
		mu 0 3 491 262 40
		f 3 1102 1103 -416
		mu 0 3 216 92 633
		f 3 -1103 1104 1105
		mu 0 3 92 216 358
		f 3 1106 1107 -1104
		mu 0 3 92 153 633
		f 3 -420 -1108 -1097
		mu 0 3 419 633 153
		f 3 1108 1109 1110
		mu 0 3 889 105 841
		f 3 -1109 1111 1112
		mu 0 3 105 889 196
		f 3 1113 1114 1115
		mu 0 3 850 673 854
		f 3 -1114 1116 1117
		mu 0 3 673 850 461
		f 3 1118 1119 1120
		mu 0 3 711 12 889
		f 3 -1112 -1120 1121
		mu 0 3 196 889 12
		f 3 1122 1123 1124
		mu 0 3 890 567 879
		f 3 -1123 1125 1126
		mu 0 3 567 890 237
		f 3 1127 1128 1129
		mu 0 3 580 844 873
		f 3 -1128 1130 1131
		mu 0 3 844 580 180
		f 3 1132 1133 1134
		mu 0 3 895 401 846
		f 3 1135 -1134 1136
		mu 0 3 299 846 401
		f 3 1137 1138 -16
		mu 0 3 867 630 714
		f 3 -1138 1139 1140
		mu 0 3 630 867 107
		f 3 1141 1142 1143
		mu 0 3 888 273 848
		f 3 1144 -1143 1145
		mu 0 3 104 848 273
		f 3 1146 1147 1148
		mu 0 3 841 388 871
		f 3 -1147 -1110 1149
		mu 0 3 388 841 105
		f 3 1150 1151 1152
		mu 0 3 722 41 895
		f 3 -1133 -1152 1153
		mu 0 3 401 895 41
		f 3 -1151 1154 1155
		mu 0 3 41 722 567
		f 3 -528 -1124 -1155
		mu 0 3 722 879 567
		f 3 -1139 1156 1157
		mu 0 3 714 630 888
		f 3 -1142 -1157 1158
		mu 0 3 273 888 630
		f 3 -1115 1159 1160
		mu 0 3 854 673 711
		f 3 -1160 1161 -1119
		mu 0 3 711 673 12
		f 3 1162 1163 -1132
		mu 0 3 180 850 844
		f 3 -1163 1164 -1117
		mu 0 3 850 180 461
		f 3 1165 -1140 1166
		mu 0 3 871 107 867
		f 3 -1166 -1148 1167
		mu 0 3 107 871 388
		f 3 -1136 1168 1169
		mu 0 3 846 299 892
		f 3 1170 -1169 1171
		mu 0 3 587 892 299
		f 3 -1145 1172 1173
		mu 0 3 848 104 890
		f 3 -1126 -1173 1174
		mu 0 3 237 890 104
		f 3 1175 1176 1177
		mu 0 3 854 785 855
		f 3 -1176 -1161 1178
		mu 0 3 785 854 711
		f 3 1179 1180 -691
		mu 0 3 883 587 154
		f 3 -1180 1181 -1171
		mu 0 3 587 883 892
		f 3 1182 -1130 1183
		mu 0 3 374 580 873
		f 3 -1183 -723 1184
		mu 0 3 580 374 586
		f 3 1185 1186 1187
		mu 0 3 656 361 700
		f 3 1188 1189 -1186
		mu 0 3 656 20 361
		f 3 -666 1190 1191
		mu 0 3 631 326 282
		f 3 -671 -1191 1192
		mu 0 3 290 282 326
		f 3 1193 -1189 1194
		mu 0 3 667 20 656
		f 3 -1194 1195 1196
		mu 0 3 20 667 168
		f 3 1197 1198 1199
		mu 0 3 338 656 90
		f 3 -1198 1200 -1195
		mu 0 3 656 338 667
		f 3 -1199 -1188 1201
		mu 0 3 90 656 700
		f 3 -1202 1202 1203
		mu 0 3 90 700 402
		f 3 1204 1205 1206
		mu 0 3 542 561 149
		f 3 1207 1208 -1207
		mu 0 3 149 618 542
		f 3 1209 1210 -1201
		mu 0 3 338 229 667
		f 3 -1210 1211 -1206
		mu 0 3 229 338 327
		f 3 1212 1213 -1192
		mu 0 3 282 684 631
		f 3 -1213 1214 1215
		mu 0 3 684 282 608
		f 3 1216 -670 -1209
		mu 0 3 618 282 542
		f 3 -1217 1217 -1215
		mu 0 3 282 618 608
		f 3 -669 1218 -1205
		mu 0 3 542 530 561
		f 3 1219 -1219 1220
		mu 0 3 103 561 530
		f 3 1221 -1203 1222
		mu 0 3 789 402 700
		f 3 1223 1224 -555
		mu 0 3 456 402 699
		f 3 -1224 1225 -1204
		mu 0 3 402 456 90
		f 3 1226 -1226 -559
		mu 0 3 439 90 456
		f 3 -1227 1227 -1200
		mu 0 3 90 439 338
		f 3 1228 -1212 -1228
		mu 0 3 439 327 338
		f 3 -1229 -563 1229
		mu 0 3 327 439 30
		f 3 1230 -1208 -1230
		mu 0 3 490 618 149
		f 3 -1231 -565 1231
		mu 0 3 618 490 414
		f 3 1232 1233 -1218
		mu 0 3 618 360 608
		f 3 -1233 -1232 -571
		mu 0 3 360 618 414
		f 3 1234 -1216 -1234
		mu 0 3 360 684 608
		f 3 -1235 -575 1235
		mu 0 3 684 360 683
		f 3 1236 1237 -617
		mu 0 3 682 685 404
		f 3 -1238 1238 -574
		mu 0 3 404 685 683
		f 3 -1220 1239 -1211
		mu 0 3 229 304 667
		f 3 -1196 -1240 1240
		mu 0 3 168 667 304
		f 3 1241 -1185 1242
		mu 0 3 18 580 586
		f 3 -1242 1243 1244
		mu 0 3 580 18 503
		f 3 1245 1246 1247
		mu 0 3 424 624 217
		f 3 -1246 1248 1249
		mu 0 3 624 424 459
		f 3 1250 -1249 1251
		mu 0 3 503 459 424
		f 3 -1251 -1244 1252
		mu 0 3 459 503 18
		f 3 1253 1254 -1253
		mu 0 3 117 313 623
		f 3 -1254 1255 1256
		mu 0 3 313 117 614
		f 3 1257 -1255 1258
		mu 0 3 669 623 313
		f 3 -1258 1259 -1250
		mu 0 3 623 669 380
		f 3 1260 -1256 -1243
		mu 0 3 266 614 117
		f 3 -1261 -722 1261
		mu 0 3 614 266 211
		f 3 1262 -781 -772
		mu 0 3 613 187 310
		f 3 -1263 -792 1263
		mu 0 3 187 613 368
		f 3 1264 -747 1265
		mu 0 3 108 85 111
		f 3 -1266 -756 -775
		mu 0 3 108 111 583
		f 3 1266 -738 1267
		mu 0 3 569 450 199
		f 3 -1267 -767 -778
		mu 0 3 450 569 484
		f 3 1268 -1162 -1118
		mu 0 3 461 12 673
		f 3 -1269 1269 -1122
		mu 0 3 12 461 196
		f 3 1270 -1159 -1141
		mu 0 3 107 273 630
		f 3 -1271 -1168 1271
		mu 0 3 273 107 388
		f 3 1272 1273 -1154
		mu 0 3 41 237 401
		f 3 -1273 -1156 -1127
		mu 0 3 237 41 567
		f 3 1274 1275 1276
		mu 0 3 283 508 598
		f 3 -1275 1277 1278
		mu 0 3 508 283 507
		f 3 1279 1280 1281
		mu 0 3 189 486 532
		f 3 -1280 1282 1283
		mu 0 3 486 189 99
		f 3 1284 1285 1286
		mu 0 3 663 181 134
		f 3 -1285 1287 1288
		mu 0 3 181 663 522
		f 3 1289 1290 1291
		mu 0 3 370 134 75
		f 3 -1290 1292 -1287
		mu 0 3 134 370 663
		f 3 1293 -1292 1294
		mu 0 3 617 370 75
		f 3 -1294 1295 1296
		mu 0 3 370 617 218
		f 3 1297 1298 1299
		mu 0 3 301 248 300
		f 3 -1298 1300 1301
		mu 0 3 248 301 481
		f 3 1302 -1301 1303
		mu 0 3 508 481 301
		f 3 -1303 -1279 1304
		mu 0 3 481 508 507
		f 3 1305 1306 1307
		mu 0 3 336 598 636
		f 3 -1306 1308 -1277
		mu 0 3 598 336 283
		f 3 1309 1310 -1284
		mu 0 3 99 636 486
		f 3 -1310 1311 -1308
		mu 0 3 636 99 336
		f 3 1312 1313 1314
		mu 0 3 10 532 78
		f 3 -1313 1315 -1282
		mu 0 3 532 10 189
		f 3 1316 1317 -1289
		mu 0 3 522 78 181
		f 3 -1317 1318 -1315
		mu 0 3 78 522 10
		f 3 1319 1320 -795
		mu 0 3 277 421 427
		f 3 -1320 1321 1322
		mu 0 3 421 277 4
		f 3 1323 1324 -1262
		mu 0 3 211 425 614
		f 3 -1324 1325 1326
		mu 0 3 425 211 110
		f 3 1327 1328 -1257
		mu 0 3 614 102 313
		f 3 -1328 -1325 1329
		mu 0 3 102 614 425
		f 3 1330 1331 -1259
		mu 0 3 313 152 669
		f 3 -1331 -1329 1332
		mu 0 3 152 313 102
		f 3 1333 -1322 -690
		mu 0 3 258 4 277
		f 3 -1334 1334 1335
		mu 0 3 4 258 193
		f 3 1336 1337 -694
		mu 0 3 154 67 344
		f 3 -1338 1338 -1335
		mu 0 3 344 67 269
		f 3 1339 -1268 1340
		mu 0 3 314 569 199
		f 3 -1340 1341 1342
		mu 0 3 569 314 337
		f 3 1343 1344 -1265
		mu 0 3 108 523 85
		f 3 -1344 1345 1346
		mu 0 3 523 108 423
		f 3 1347 1348 -1264
		mu 0 3 368 536 187
		f 3 -1348 1349 1350
		mu 0 3 536 368 95
		f 3 1351 -1350 -743
		mu 0 3 311 95 368
		f 3 -1352 1352 1353
		mu 0 3 95 311 604
		f 3 1354 -1353 -785
		mu 0 3 427 604 311
		f 3 -1355 -1321 1355
		mu 0 3 604 427 421
		f 3 1356 -788 1357
		mu 0 3 50 363 599
		f 3 -1357 1358 1359
		mu 0 3 363 50 124
		f 3 1360 -751 -1343
		mu 0 3 337 599 569
		f 3 -1361 1361 -1358
		mu 0 3 599 337 50
		f 3 1362 -763 1363
		mu 0 3 677 199 175
		f 3 -1363 1364 -1341
		mu 0 3 199 677 314
		f 3 1365 -732 -1345
		mu 0 3 523 175 85
		f 3 -1366 1366 -1364
		mu 0 3 175 523 677
		f 3 1367 -1346 -728
		mu 0 3 288 423 108
		f 3 -1368 1368 1369
		mu 0 3 423 288 173
		f 3 1370 -1369 -759
		mu 0 3 187 173 288
		f 3 -1371 -1349 1371
		mu 0 3 173 187 536
		f 3 1372 1373 -1323
		mu 0 3 4 617 421
		f 3 -1373 1374 1375
		mu 0 3 617 4 485
		f 3 -718 1376 -1326
		mu 0 3 211 21 110
		f 3 1377 1378 -1377
		mu 0 3 21 183 110
		f 3 1379 -1378 -858
		mu 0 3 363 183 21
		f 3 -1380 -1360 1380
		mu 0 3 183 363 124
		f 3 1381 1382 1383
		mu 0 3 176 503 528
		f 3 -1382 1384 -1245
		mu 0 3 503 176 580
		f 3 1385 1386 1387
		mu 0 3 393 401 51
		f 3 -1274 1388 -1387
		mu 0 3 401 237 51
		f 3 1389 1390 -1272
		mu 0 3 388 73 273
		f 3 1391 -1391 1392
		mu 0 3 182 273 73
		f 3 1393 1394 -1270
		mu 0 3 461 407 196
		f 3 1395 -1395 1396
		mu 0 3 662 196 407
		f 3 1397 1398 1399
		mu 0 3 576 587 74
		f 3 -1172 1400 -1399
		mu 0 3 587 299 74
		f 3 -1401 1401 1402
		mu 0 3 74 299 393
		f 3 -1137 -1386 -1402
		mu 0 3 299 401 393
		f 3 1403 1404 -1165
		mu 0 3 180 64 461
		f 3 -1405 1405 -1394
		mu 0 3 461 64 407
		f 3 1406 1407 -1150
		mu 0 3 105 84 388
		f 3 -1408 1408 -1390
		mu 0 3 388 84 73
		f 3 -1396 1409 -1113
		mu 0 3 196 662 105
		f 3 -1410 1410 -1407
		mu 0 3 105 662 84
		f 3 1411 1412 -1175
		mu 0 3 104 330 237
		f 3 -1389 -1413 1413
		mu 0 3 51 237 330
		f 3 -1392 1414 -1146
		mu 0 3 273 182 104
		f 3 -1412 -1415 1415
		mu 0 3 330 104 182
		f 3 -1385 1416 -1131
		mu 0 3 580 176 180
		f 3 -1417 1417 -1404
		mu 0 3 180 176 64
		f 3 1418 1419 -1337
		mu 0 3 154 576 67
		f 3 -1419 -1181 -1398
		mu 0 3 576 154 587
		f 3 1420 1421 1422
		mu 0 3 528 424 513
		f 3 -1421 -1383 -1252
		mu 0 3 424 528 503
		f 3 1423 1424 1425
		mu 0 3 17 860 808
		f 3 -1424 1426 1427
		mu 0 3 860 17 217
		f 3 1428 1429 1430
		mu 0 3 411 463 353
		f 3 1431 -1430 1432
		mu 0 3 517 353 463
		f 3 1433 1434 1435
		mu 0 3 648 320 544
		f 3 1436 -1435 1437
		mu 0 3 60 544 320
		f 3 1438 1439 1440
		mu 0 3 76 280 445
		f 3 1441 -1440 1442
		mu 0 3 365 445 280
		f 3 1443 1444 1445
		mu 0 3 8 294 559
		f 3 1446 -1445 1447
		mu 0 3 515 559 294
		f 3 -1432 1448 1449
		mu 0 3 353 517 8
		f 3 -1444 -1449 1450
		mu 0 3 294 8 517
		f 3 -1439 1451 1452
		mu 0 3 280 76 557
		f 3 1453 1454 -1452
		mu 0 3 76 93 557
		f 3 1455 1456 1457
		mu 0 3 632 26 648
		f 3 -1434 -1457 1458
		mu 0 3 320 648 26
		f 3 -1442 1459 1460
		mu 0 3 445 365 632
		f 3 -1456 -1460 1461
		mu 0 3 26 632 365
		f 3 1462 1463 1464
		mu 0 3 394 298 411
		f 3 -1429 -1464 1465
		mu 0 3 463 411 298
		f 3 -1437 1466 1467
		mu 0 3 544 60 394
		f 3 -1463 -1467 1468
		mu 0 3 298 394 60
		f 3 1469 1470 -1431
		mu 0 3 353 393 411
		f 3 -1388 1471 -1471
		mu 0 3 393 51 411
		f 3 1472 1473 -1436
		mu 0 3 544 182 648
		f 3 -1393 1474 -1474
		mu 0 3 182 73 648
		f 3 1475 1476 -1397
		mu 0 3 407 76 662
		f 3 1477 -1477 -1441
		mu 0 3 445 662 76
		f 3 1478 1479 -1446
		mu 0 3 559 576 8
		f 3 -1400 1480 -1480
		mu 0 3 576 74 8
		f 3 -1481 1481 -1450
		mu 0 3 8 74 353
		f 3 -1403 -1470 -1482
		mu 0 3 74 393 353
		f 3 1482 1483 -1406
		mu 0 3 64 93 407
		f 3 -1476 -1484 -1454
		mu 0 3 76 407 93
		f 3 1484 1485 -1409
		mu 0 3 84 632 73
		f 3 -1486 -1458 -1475
		mu 0 3 73 632 648
		f 3 -1478 1486 -1411
		mu 0 3 662 445 84
		f 3 -1487 -1461 -1485
		mu 0 3 84 445 632
		f 3 1487 1488 -1414
		mu 0 3 330 394 51
		f 3 -1472 -1489 -1465
		mu 0 3 411 51 394
		f 3 -1473 1489 -1416
		mu 0 3 182 544 330
		f 3 -1490 -1468 -1488
		mu 0 3 330 544 394
		f 3 1490 -1418 -1384
		mu 0 3 528 64 176
		f 3 -1491 1491 -1483
		mu 0 3 64 528 93
		f 3 1492 1493 1494
		mu 0 3 272 568 31
		f 3 -1493 1495 1496
		mu 0 3 568 272 496
		f 3 1497 1498 1499
		mu 0 3 31 434 43
		f 3 -1498 -1494 1500
		mu 0 3 434 31 568
		f 3 1501 1502 1503
		mu 0 3 9 434 14
		f 3 -1502 1504 -1499
		mu 0 3 434 9 43
		f 3 1505 1506 -1497
		mu 0 3 496 457 568
		f 3 -1506 1507 1508
		mu 0 3 457 496 247
		f 3 1509 1510 -1501
		mu 0 3 568 369 434
		f 3 -1510 -1507 1511
		mu 0 3 369 568 457
		f 3 1512 -1511 1513
		mu 0 3 278 434 369
		f 3 -1513 1514 -1503
		mu 0 3 434 278 14
		f 3 1515 1516 -1508
		mu 0 3 496 17 247
		f 3 -1516 1517 1518
		mu 0 3 17 496 513
		f 3 1519 1520 1521
		mu 0 3 354 209 940
		f 3 -1520 1522 1523
		mu 0 3 209 354 316
		f 3 1524 1525 1526
		mu 0 3 658 940 384
		f 3 -1525 1527 -1522
		mu 0 3 940 658 354
		f 3 1528 1529 1530
		mu 0 3 483 678 383
		f 3 1531 -1530 1532
		mu 0 3 354 383 678
		f 3 1533 1534 -1278
		mu 0 3 283 346 507
		f 3 -1534 1535 1536
		mu 0 3 346 283 654
		f 3 1537 1538 -1283
		mu 0 3 189 297 99
		f 3 -1538 1539 1540
		mu 0 3 297 189 518
		f 3 1541 1542 -1288
		mu 0 3 663 644 522
		f 3 -1542 1543 1544
		mu 0 3 644 663 165
		f 3 1545 -1293 1546
		mu 0 3 403 663 370
		f 3 -1544 -1546 1547
		mu 0 3 165 663 403
		f 3 1548 -1547 -1297
		mu 0 3 218 403 370
		f 3 -1549 1549 1550
		mu 0 3 403 218 610
		f 3 1551 1552 -1305
		mu 0 3 507 397 481
		f 3 -1552 -1535 1553
		mu 0 3 397 507 346
		f 3 1554 -1309 1555
		mu 0 3 501 283 336
		f 3 -1536 -1555 1556
		mu 0 3 654 283 501
		f 3 1557 -1312 -1539
		mu 0 3 297 336 99
		f 3 -1558 1558 -1556
		mu 0 3 336 297 501
		f 3 1559 -1316 1560
		mu 0 3 315 189 10
		f 3 -1540 -1560 1561
		mu 0 3 518 189 315
		f 3 1562 -1319 -1543
		mu 0 3 644 10 522
		f 3 -1563 1563 -1561
		mu 0 3 10 644 315
		f 3 1564 -707 1565
		mu 0 3 610 668 675
		f 3 -1565 -1550 1566
		mu 0 3 668 610 218
		f 3 1567 -1551 -1566
		mu 0 3 675 403 610
		f 3 -1568 1568 -1548
		mu 0 3 403 675 165
		f 3 1569 -1564 -1545
		mu 0 3 165 315 644
		f 3 -1570 1570 -1562
		mu 0 3 315 165 518
		f 3 1571 -1559 -1541
		mu 0 3 518 501 297
		f 3 -1572 1572 -1557
		mu 0 3 501 518 654
		f 3 -1523 -1533 1573
		mu 0 3 316 354 678
		f 3 -1574 1574 1575
		mu 0 3 316 678 172
		f 3 1576 1577 -1573
		mu 0 3 518 949 654
		f 3 -1577 1578 1579
		mu 0 3 949 518 452
		f 3 1580 1581 -1579
		mu 0 3 518 454 452
		f 3 -1581 -1571 1582
		mu 0 3 454 518 165
		f 3 1583 1584 -1569
		mu 0 3 675 946 165
		f 3 1585 -1583 -1585
		mu 0 3 946 454 165
		f 3 1586 -1302 -1553
		mu 0 3 397 248 481
		f 3 1587 -1587 1588
		mu 0 3 316 248 397
		f 3 -1537 1589 1590
		mu 0 3 346 654 316
		f 3 -1591 -1589 -1554
		mu 0 3 346 316 397
		f 3 1591 1592 -1524
		mu 0 3 316 949 209
		f 3 -1592 -1590 -1578
		mu 0 3 949 316 654
		f 3 1593 -1529 1594
		mu 0 3 554 678 483
		f 3 -1594 1595 -1575
		mu 0 3 678 554 172
		f 3 1596 -1596 1597
		mu 0 3 248 172 554
		f 3 -1588 -1576 -1597
		mu 0 3 248 316 172
		f 3 1598 1599 -1532
		mu 0 3 354 324 383
		f 3 -1599 -1528 1600
		mu 0 3 324 354 658
		f 3 1601 1602 -1381
		mu 0 3 124 300 183
		f 3 1603 1604 -1603
		mu 0 3 300 212 183
		f 3 1605 1606 1607
		mu 0 3 483 551 212
		f 3 1608 -1595 -1608
		mu 0 3 212 554 483
		f 3 1609 -1336 1610
		mu 0 3 88 4 193
		f 3 -1610 -697 -1375
		mu 0 3 4 88 485
		f 3 1611 1612 -1339
		mu 0 3 67 475 269
		f 3 -1613 -702 -1611
		mu 0 3 269 475 629
		f 3 1613 -1342 1614
		mu 0 3 598 337 314
		f 3 -1614 -1276 1615
		mu 0 3 337 598 508
		f 3 1616 -1347 1617
		mu 0 3 532 523 423
		f 3 -1617 -1281 1618
		mu 0 3 523 532 486
		f 3 1619 1620 -1351
		mu 0 3 95 181 536
		f 3 -1620 1621 -1286
		mu 0 3 181 95 134
		f 3 1622 -1354 1623
		mu 0 3 75 95 604
		f 3 -1623 -1291 -1622
		mu 0 3 95 75 134
		f 3 1624 -1624 -1356
		mu 0 3 421 75 604
		f 3 -1625 -1374 -1295
		mu 0 3 75 421 617
		f 3 1625 -1602 -1359
		mu 0 3 50 300 124
		f 3 -1626 1626 -1300
		mu 0 3 300 50 301
		f 3 1627 -1362 -1616
		mu 0 3 508 50 337
		f 3 -1628 -1304 -1627
		mu 0 3 50 508 301
		f 3 1628 -1365 1629
		mu 0 3 636 314 677
		f 3 -1629 -1307 -1615
		mu 0 3 314 636 598
		f 3 1630 -1367 -1619
		mu 0 3 486 677 523
		f 3 -1631 -1311 -1630
		mu 0 3 677 486 636
		f 3 1631 -1618 -1370
		mu 0 3 173 532 423
		f 3 -1632 1632 -1314
		mu 0 3 532 173 78
		f 3 1633 -1633 -1372
		mu 0 3 536 78 173
		f 3 -1634 -1621 -1318
		mu 0 3 78 536 181
		f 3 1634 -1296 -1376
		mu 0 3 485 218 617
		f 3 -1635 -696 -1567
		mu 0 3 218 485 668
		f 3 1635 -1609 -1604
		mu 0 3 300 554 212
		f 3 -1636 -1299 -1598
		mu 0 3 554 300 248
		f 3 -1379 1636 1637
		mu 0 3 110 183 551
		f 3 -1605 -1607 -1637
		mu 0 3 183 212 551
		f 3 -1612 1638 1639
		mu 0 3 475 67 559
		f 3 -1420 -1479 -1639
		mu 0 3 67 576 559
		f 3 1640 1641 -1330
		mu 0 3 425 115 102
		f 3 -1641 1642 1643
		mu 0 3 115 425 616
		f 3 1644 -1643 -1327
		mu 0 3 110 616 425
		f 3 -1645 -1638 1645
		mu 0 3 616 110 551
		f 3 1646 1647 -1644
		mu 0 3 616 570 115
		f 3 -1647 1648 1649
		mu 0 3 570 616 420
		f 3 1650 -1649 -1646
		mu 0 3 551 420 616
		f 3 -1651 -1606 1651
		mu 0 3 420 551 483
		f 3 1652 1653 -1650
		mu 0 3 420 383 570
		f 3 -1653 -1652 -1531
		mu 0 3 383 420 483
		f 3 1654 1655 -1333
		mu 0 3 102 138 152
		f 3 -1655 -1642 1656
		mu 0 3 138 102 115
		f 3 1657 1658 1659
		mu 0 3 371 528 77
		f 3 -1423 1660 -1659
		mu 0 3 528 513 77;
	setAttr ".fc[1000:1499]"
		f 3 1661 -1496 1662
		mu 0 3 77 496 272
		f 3 -1662 -1661 -1518
		mu 0 3 496 77 513
		f 3 1663 1664 -700
		mu 0 3 475 515 268
		f 3 -1664 -1640 -1447
		mu 0 3 515 475 559
		f 3 1665 -1492 -1658
		mu 0 3 371 93 528
		f 3 -1666 1666 -1455
		mu 0 3 93 371 557
		f 3 1667 1668 1669
		mu 0 3 435 489 366
		f 3 -1669 1670 1671
		mu 0 3 366 489 664
		f 3 1672 1673 1674
		mu 0 3 366 194 119
		f 3 -1673 1675 1676
		mu 0 3 194 366 123
		f 3 1677 1678 1679
		mu 0 3 413 194 555
		f 3 -1678 1680 -1674
		mu 0 3 194 413 119
		f 3 1681 1682 1683
		mu 0 3 307 31 123
		f 3 -1682 1684 -1495
		mu 0 3 31 307 272
		f 3 1685 1686 -1677
		mu 0 3 123 43 194
		f 3 -1686 -1683 -1500
		mu 0 3 43 123 31
		f 3 1687 -1505 1688
		mu 0 3 555 43 9
		f 3 -1688 -1679 -1687
		mu 0 3 43 555 194
		f 3 1689 -1685 1690
		mu 0 3 142 272 307
		f 3 -1690 1691 -1663
		mu 0 3 272 142 77
		f 3 1692 1693 -1428
		mu 0 3 217 858 860
		f 3 -1693 -1247 1694
		mu 0 3 858 217 624
		f 3 1695 1696 -1695
		mu 0 3 380 811 227
		f 3 -1696 -1260 1697
		mu 0 3 811 380 669
		f 3 1698 -665 -1698
		mu 0 3 669 326 811
		f 3 -1699 -1332 1699
		mu 0 3 326 669 152
		f 3 1700 -1422 -1248
		mu 0 3 217 513 424
		f 3 -1701 -1427 -1519
		mu 0 3 513 217 17
		f 3 1701 1702 -1509
		mu 0 3 247 361 457
		f 3 -1702 1703 1704
		mu 0 3 361 247 251
		f 3 1705 -1703 -1190
		mu 0 3 20 457 361
		f 3 -1706 1706 -1512
		mu 0 3 457 20 369
		f 3 1707 -1707 -1197
		mu 0 3 168 369 20
		f 3 -1708 1708 -1514
		mu 0 3 369 168 278
		f 3 -1517 1709 -1704
		mu 0 3 247 17 251
		f 3 -1710 -1426 1710
		mu 0 3 251 17 808
		f 3 1711 -1700 -1656
		mu 0 3 138 326 152
		f 3 -1712 1712 -1193
		mu 0 3 326 138 290
		f 3 1713 1714 1715
		mu 0 3 570 324 130
		f 3 -1714 -1654 -1600
		mu 0 3 324 570 383
		f 3 1716 1717 -1657
		mu 0 3 115 130 138
		f 3 -1717 -1648 -1716
		mu 0 3 130 115 570
		f 3 -1692 1718 1719
		mu 0 3 77 142 557
		f 3 -1720 -1667 -1660
		mu 0 3 77 557 371
		f 3 1720 1721 -1433
		mu 0 3 463 331 517
		f 3 1722 -1722 1723
		mu 0 3 319 517 331
		f 3 1724 1725 -1459
		mu 0 3 26 643 320
		f 3 1726 -1438 -1726
		mu 0 3 643 60 320
		f 3 1727 1728 -1448
		mu 0 3 294 441 515
		f 3 -1728 1729 1730
		mu 0 3 441 294 464
		f 3 -1723 1731 -1451
		mu 0 3 517 319 294
		f 3 -1730 -1732 1732
		mu 0 3 464 294 319
		f 3 -1729 1733 -1665
		mu 0 3 515 441 268
		f 3 -708 -1734 1734
		mu 0 3 136 268 441
		f 3 1735 1736 1737
		mu 0 3 331 489 174
		f 3 1738 1739 1740
		mu 0 3 562 280 142
		f 3 -1453 -1719 -1740
		mu 0 3 280 557 142
		f 3 1741 1742 1743
		mu 0 3 562 307 186
		f 3 -1742 -1741 -1691
		mu 0 3 307 562 142
		f 3 1744 1745 1746
		mu 0 3 45 521 529
		f 3 -1745 1747 1748
		mu 0 3 521 45 22
		f 3 -1504 1749 1750
		mu 0 3 9 14 504
		f 3 1751 1752 -1750
		mu 0 3 14 584 504
		f 3 -1515 1753 -1752
		mu 0 3 14 278 584
		f 3 1754 -1747 -1754
		mu 0 3 278 72 584
		f 3 1755 -1748 1756
		mu 0 3 103 22 45
		f 3 -1756 -1221 1757
		mu 0 3 22 103 530
		f 3 -1709 1758 -1755
		mu 0 3 278 168 72
		f 3 -1241 -1757 -1759
		mu 0 3 168 304 72
		f 3 1759 1760 -1753
		mu 0 3 529 245 343
		f 3 -1760 -1746 1761
		mu 0 3 245 529 521
		f 3 1762 -1680 1763
		mu 0 3 442 413 555
		f 3 1764 1765 -1764
		mu 0 3 555 376 442
		f 3 1766 1767 1768
		mu 0 3 65 573 413
		f 3 -1769 -1763 1769
		mu 0 3 65 413 442
		f 3 1770 -1766 1771
		mu 0 3 324 49 335
		f 3 -1771 -1601 -1770
		mu 0 3 49 324 658
		f 3 -1765 -1689 1772
		mu 0 3 376 555 9
		f 3 -1751 1773 -1773
		mu 0 3 9 504 376
		f 3 -1715 1774 1775
		mu 0 3 130 324 245
		f 3 -1776 -1762 1776
		mu 0 3 130 245 521
		f 3 -1772 -1774 1777
		mu 0 3 324 335 343
		f 3 -1778 -1761 -1775
		mu 0 3 324 343 245
		f 3 -1749 1778 -1777
		mu 0 3 521 22 130
		f 3 1779 1780 -1779
		mu 0 3 22 1 130
		f 3 1781 -1780 -1758
		mu 0 3 530 1 22
		f 3 -1782 -668 1782
		mu 0 3 1 530 290
		f 3 1783 -1783 -1713
		mu 0 3 138 1 290
		f 3 -1784 -1718 -1781
		mu 0 3 1 138 130
		f 3 1784 1785 1786
		mu 0 3 408 951 24
		f 3 -1785 1787 1788
		mu 0 3 951 408 378
		f 3 1789 1790 1791
		mu 0 3 24 293 136
		f 3 -1790 -1786 1792
		mu 0 3 293 24 951
		f 3 1793 -1735 -1731
		mu 0 3 464 136 441
		f 3 -1794 1794 -1792
		mu 0 3 136 464 24
		f 3 1795 -1733 1796
		mu 0 3 174 464 319
		f 3 -1797 -1724 -1738
		mu 0 3 174 319 331
		f 3 -1796 1797 -1795
		mu 0 3 464 174 24
		f 3 -1798 1798 -1787
		mu 0 3 24 174 408
		f 3 1799 1800 1801
		mu 0 3 186 664 643
		f 3 1802 -1672 -1800
		mu 0 3 186 366 664
		f 3 1803 -706 1804
		mu 0 3 94 675 579
		f 3 -1804 1805 -1584
		mu 0 3 675 94 946
		f 3 1806 -710 -1791
		mu 0 3 293 19 136
		f 3 -1807 1807 -1805
		mu 0 3 19 293 619
		f 3 -1527 1808 -1767
		mu 0 3 65 221 573
		f 3 -1809 1809 1810
		mu 0 3 573 221 942
		f 3 1811 -1788 1812
		mu 0 3 254 378 408
		f 3 -1812 1813 1814
		mu 0 3 378 254 942
		f 3 1815 1816 1817
		mu 0 3 573 254 5
		f 3 -1816 -1811 -1814
		mu 0 3 254 573 942
		f 3 1818 -1799 1819
		mu 0 3 5 408 174
		f 3 -1819 -1817 -1813
		mu 0 3 408 5 254
		f 3 1820 1821 -1820
		mu 0 3 174 435 5
		f 3 -1821 -1737 -1668
		mu 0 3 435 174 489
		f 3 1822 -1676 -1803
		mu 0 3 186 123 366
		f 3 -1823 -1743 -1684
		mu 0 3 123 186 307
		f 3 1823 -1675 1824
		mu 0 3 178 366 119
		f 3 -1824 1825 -1670
		mu 0 3 366 178 435
		f 3 1826 1827 -1818
		mu 0 3 5 178 573
		f 3 -1827 -1822 -1826
		mu 0 3 178 5 435
		f 3 1828 -1681 -1768
		mu 0 3 573 119 413
		f 3 -1828 -1825 -1829
		mu 0 3 573 178 119
		f 3 1829 -1744 -1802
		mu 0 3 643 562 186
		f 3 -931 1830 1831
		mu 0 3 738 734 739
		f 3 1832 1833 1834
		mu 0 3 742 794 793
		f 3 1835 1836 1837
		mu 0 3 744 743 794
		f 3 -1836 -382 -354
		mu 0 3 743 744 129
		f 3 -1096 1838 1839
		mu 0 3 701 718 702
		f 3 1840 1841 1842
		mu 0 3 705 787 786
		f 3 1843 1844 1845
		mu 0 3 919 719 721
		f 3 1846 1847 -1092
		mu 0 3 243 582 649
		f 3 -1848 -294 1848
		mu 0 3 649 582 426
		f 3 1849 -300 1850
		mu 0 3 318 426 109
		f 3 -1850 -1095 -1849
		mu 0 3 426 318 649
		f 3 1851 1852 -1099
		mu 0 3 153 46 491
		f 3 -1852 1853 -303
		mu 0 3 46 153 516
		f 3 -1853 1854 -1102
		mu 0 3 491 46 243
		f 3 -308 -1847 -1855
		mu 0 3 46 582 243
		f 3 1855 -1854 -1107
		mu 0 3 92 516 153
		f 3 -1856 1856 -318
		mu 0 3 516 92 364
		f 3 1857 1858 1859
		mu 0 3 364 358 261
		f 3 -1858 -1857 -1106
		mu 0 3 358 364 92
		f 3 1860 1861 1862
		mu 0 3 797 753 754
		f 3 -1861 -880 -872
		mu 0 3 753 797 752
		f 3 -887 1863 -1862
		mu 0 3 753 749 754
		f 3 1864 1865 -1078
		mu 0 3 531 590 398
		f 3 -1865 1866 -169
		mu 0 3 590 531 59
		f 3 -1866 1867 -1080
		mu 0 3 398 590 477
		f 3 -174 -207 -1868
		mu 0 3 590 661 477
		f 3 1868 -1867 -1085
		mu 0 3 207 59 531
		f 3 -1869 1869 -188
		mu 0 3 59 207 66
		f 3 1870 -164 -320
		mu 0 3 364 246 148
		f 3 -1871 -1860 -683
		mu 0 3 246 364 261
		f 3 1871 1872 -1069
		mu 0 3 709 708 707
		f 3 -1873 1873 1874
		mu 0 3 707 708 784
		f 3 1875 1876 -298
		mu 0 3 208 333 719
		f 3 -1877 -713 -1845
		mu 0 3 719 333 721
		f 3 1877 -542 1878
		mu 0 3 295 473 645
		f 3 -1878 -797 1879
		mu 0 3 473 295 256
		f 3 1880 1881 -803
		mu 0 3 348 184 640
		f 3 -1881 1882 -25
		mu 0 3 184 348 235
		f 3 1883 -171 1884
		mu 0 3 597 455 639
		f 3 -1884 -806 1885
		mu 0 3 455 597 653
		f 3 1886 1887 -162
		mu 0 3 101 611 637
		f 3 -1887 1888 -810
		mu 0 3 611 101 38
		f 3 1889 1890 -814
		mu 0 3 671 428 396
		f 3 -1890 1891 -536
		mu 0 3 428 671 29
		f 3 1892 -186 1893
		mu 0 3 572 639 306
		f 3 -1893 -817 -1885
		mu 0 3 639 572 597
		f 3 1894 1895 -304
		mu 0 3 356 578 574
		f 3 -1896 -819 1896
		mu 0 3 574 578 328
		f 3 1897 -1894 1898
		mu 0 3 116 572 306
		f 3 -1898 1899 -824
		mu 0 3 572 116 62
		f 3 1900 1901 -827
		mu 0 3 640 213 80
		f 3 -1901 -1882 -24
		mu 0 3 213 640 184
		f 3 1902 -175 -1886
		mu 0 3 653 101 455
		f 3 -1903 -830 -1889
		mu 0 3 101 653 38
		f 3 1903 -1895 -321
		mu 0 3 148 578 356
		f 3 -1904 1904 -832
		mu 0 3 578 148 652
		f 3 1905 -675 1906
		mu 0 3 127 670 509
		f 3 -1906 -836 1907
		mu 0 3 670 127 271
		f 3 1908 -1900 -13
		mu 0 3 235 62 116
		f 3 -1909 -1883 -839
		mu 0 3 62 235 348
		f 3 1909 -1905 -167
		mu 0 3 637 652 148
		f 3 -1910 -1888 -841
		mu 0 3 652 637 611
		f 3 1910 -38 -1908
		mu 0 3 271 213 670
		f 3 -1911 -843 -1902
		mu 0 3 213 271 80
		f 3 1911 1912 -846
		mu 0 3 396 349 121
		f 3 -1912 -1891 -533
		mu 0 3 349 396 428
		f 3 -1897 1913 -307
		mu 0 3 574 328 395
		f 3 -1914 -847 1914
		mu 0 3 395 328 34
		f 3 1915 -524 -1892
		mu 0 3 671 509 29
		f 3 -1916 -851 -1907
		mu 0 3 509 671 127
		f 3 1916 -1913 -544
		mu 0 3 473 121 349
		f 3 -1917 -1880 -853
		mu 0 3 121 473 256
		f 3 -1876 -295 1917
		mu 0 3 333 208 395
		f 3 -1915 -855 -1918
		mu 0 3 395 34 333
		f 3 1918 1919 1920
		mu 0 3 702 716 717
		f 3 -1919 -1839 -1851
		mu 0 3 716 702 718
		f 3 1921 -1870 -1084
		mu 0 3 605 66 207
		f 3 -1922 1922 1923
		mu 0 3 66 605 202
		f 3 1924 1925 -685
		mu 0 3 417 241 285
		f 3 -159 -166 -1926
		mu 0 3 241 637 285
		f 3 -205 1926 -1074
		mu 0 3 588 241 239
		f 3 -1927 -1925 -1872
		mu 0 3 239 241 417
		f 3 -712 1927 -1846
		mu 0 3 721 347 919
		f 3 -721 1928 -1928
		mu 0 3 347 720 919
		f 3 1929 1930 -11
		mu 0 3 355 514 219
		f 3 1931 -1931 -1042
		mu 0 3 443 219 514
		f 3 1932 1933 -22
		mu 0 3 309 438 526
		f 3 -1933 1934 -1049
		mu 0 3 438 309 79
		f 3 -1932 1935 -27
		mu 0 3 219 443 309
		f 3 -1935 -1936 -1051
		mu 0 3 79 309 443
		f 3 -1924 -677 1936
		mu 0 3 66 202 23
		f 3 -1937 1937 -185
		mu 0 3 66 23 306
		f 3 1938 -1934 -1056
		mu 0 3 203 526 438
		f 3 -1939 1939 -40
		mu 0 3 526 203 390
		f 3 1940 -1940 -1055
		mu 0 3 620 390 203
		f 3 -1941 1941 1942
		mu 0 3 390 620 39
		f 3 -1899 -1938 1943
		mu 0 3 116 306 23
		f 3 -1944 -679 1944
		mu 0 3 116 23 480
		f 3 1945 1946 1947
		mu 0 3 133 355 539
		f 3 -1946 -1045 -1930
		mu 0 3 355 133 514
		f 3 1948 1949 1950
		mu 0 3 548 621 655
		f 3 -1950 -525 -672
		mu 0 3 655 621 509
		f 3 -681 -1947 1951
		mu 0 3 480 539 355
		f 3 -14 -1945 -1952
		mu 0 3 355 116 480
		f 3 1952 1953 -522
		mu 0 3 621 468 13
		f 3 1954 -1954 -1002
		mu 0 3 492 13 468
		f 3 1955 -1943 1956
		mu 0 3 589 390 39
		f 3 -1956 -676 -37
		mu 0 3 390 589 670
		f 3 1957 1958 -535
		mu 0 3 474 676 612
		f 3 -1958 1959 -1007
		mu 0 3 676 474 391
		f 3 1960 -1960 -538
		mu 0 3 13 391 474
		f 3 -1961 -1955 -1009
		mu 0 3 391 13 492
		f 3 1961 1962 -1014
		mu 0 3 357 86 61
		f 3 -1962 1963 -540
		mu 0 3 86 357 519
		f 3 1964 -1959 -1015
		mu 0 3 61 612 676
		f 3 -1965 -1963 -546
		mu 0 3 612 61 86
		f 3 1965 -798 1966
		mu 0 3 884 725 726
		f 3 -1966 1967 -693
		mu 0 3 725 884 883
		f 3 1968 -1951 1969
		mu 0 3 39 548 655
		f 3 -1970 -674 -1957
		mu 0 3 39 655 589
		f 3 1970 -1949 1971
		mu 0 3 206 621 548
		f 3 -1971 -1004 -1953
		mu 0 3 621 206 468
		f 3 1972 1973 1974
		mu 0 3 727 729 884
		f 3 -90 -1039 1975
		mu 0 3 757 759 799
		f 3 1976 1977 1978
		mu 0 3 800 764 765
		f 3 1979 1980 1981
		mu 0 3 761 760 765
		f 3 -1980 -110 -73
		mu 0 3 760 761 53
		f 3 1982 1983 1984
		mu 0 3 686 779 818
		f 3 1985 1986 1987
		mu 0 3 684 685 812
		f 3 1988 1989 -927
		mu 0 3 3 488 472
		f 3 -1989 1990 -402
		mu 0 3 488 3 375
		f 3 -1990 1991 -930
		mu 0 3 472 488 7
		f 3 1992 -1992 -405
		mu 0 3 373 7 488
		f 3 1993 -934 1994
		mu 0 3 276 118 482
		f 3 -1994 -410 1995
		mu 0 3 118 276 540
		f 3 -1996 1996 -937
		mu 0 3 118 540 3
		f 3 -1997 -414 -1991
		mu 0 3 3 540 375
		f 3 1997 1998 -418
		mu 0 3 325 47 48
		f 3 -1998 1999 -940
		mu 0 3 47 325 302
		f 3 2000 -1995 -942
		mu 0 3 302 276 482
		f 3 -2001 -2000 -422
		mu 0 3 276 302 325
		f 3 2001 -1999 2002
		mu 0 3 793 741 740
		f 3 -2002 2003 2004
		mu 0 3 741 793 787
		f 3 2005 2006 2007
		mu 0 3 774 745 911
		f 3 -2006 2008 2009
		mu 0 3 745 774 680
		f 3 2010 2011 -883
		mu 0 3 106 113 552
		f 3 -2012 -269 2012
		mu 0 3 552 113 171
		f 3 2013 2014 -886
		mu 0 3 552 666 389
		f 3 -2014 -2013 -273
		mu 0 3 666 552 171
		f 3 2015 2016 -890
		mu 0 3 281 449 594
		f 3 -2016 2017 -278
		mu 0 3 449 281 510
		f 3 2018 -2011 -892
		mu 0 3 594 113 106
		f 3 -2019 -2017 -283
		mu 0 3 113 594 449
		f 3 2019 -897 -2010
		mu 0 3 525 506 679
		f 3 -2020 -285 2020
		mu 0 3 506 525 500
		f 3 2021 -2021 -291
		mu 0 3 510 506 500
		f 3 -2022 -2018 -899
		mu 0 3 506 510 281
		f 3 2022 2023 2024
		mu 0 3 687 689 779
		f 3 -2023 -954 -471
		mu 0 3 689 687 159
		f 3 2025 2026 2027
		mu 0 3 694 822 692
		f 3 -2026 -958 2028
		mu 0 3 822 694 771
		f 3 2029 -358 -2028
		mu 0 3 692 693 694
		f 3 -1859 2030 2031
		mu 0 3 703 704 710
		f 3 2032 -2031 2033
		mu 0 3 786 710 704
		f 3 2034 2035 2036
		mu 0 3 782 697 852
		f 3 -2035 -1034 -1948
		mu 0 3 697 782 696
		f 3 2037 -18 2038
		mu 0 3 852 791 715
		f 3 -2038 2039 2040
		mu 0 3 791 852 920
		f 3 2041 2042 -1223
		mu 0 3 700 251 789
		f 3 -2042 -1187 -1705
		mu 0 3 251 700 361
		f 3 2043 -2032 2044
		mu 0 3 784 703 710
		f 3 -2044 -1874 -684
		mu 0 3 703 784 708
		f 3 2045 2046 2047
		mu 0 3 877 920 713
		f 3 2048 -1923 -2047
		mu 0 3 920 712 713
		f 3 2049 2050 -518
		mu 0 3 769 886 772
		f 3 -2050 -1972 2051
		mu 0 3 886 769 770
		f 3 2052 -1942 2053
		mu 0 3 783 730 731
		f 3 -2053 2054 2055
		mu 0 3 730 783 724
		f 3 2056 2057 2058
		mu 0 3 724 723 886
		f 3 -2057 2059 -530
		mu 0 3 723 724 880
		f 3 2060 2061 2062
		mu 0 3 898 729 766
		f 3 2063 -1964 -2062
		mu 0 3 729 728 766
		f 3 2064 2065 2066
		mu 0 3 762 800 733
		f 3 -2065 -1031 2067
		mu 0 3 800 762 763
		f 3 -1993 2068 -1831
		mu 0 3 734 735 739
		f 3 2069 -2069 2070
		mu 0 3 790 739 735
		f 3 2071 2072 -1864
		mu 0 3 749 778 754
		f 3 -2072 -2015 -1067
		mu 0 3 778 749 750
		f 3 2073 2074 2075
		mu 0 3 878 774 916
		f 3 -2074 2076 -1088
		mu 0 3 774 878 877
		f 3 2077 -2076 2078
		mu 0 3 914 878 916
		f 3 -2078 2079 2080
		mu 0 3 878 914 866
		f 3 2081 2082 2083
		mu 0 3 813 685 775
		f 3 -2082 2084 -1987
		mu 0 3 685 813 812
		f 3 2085 2086 2087
		mu 0 3 810 857 776
		f 3 -2088 -2084 2088
		mu 0 3 810 776 777
		f 3 2089 2090 -2080
		mu 0 3 914 840 866
		f 3 -2090 2091 2092
		mu 0 3 840 914 917
		f 3 2093 2094 -2093
		mu 0 3 917 707 840
		f 3 -2094 2095 -1066
		mu 0 3 707 917 778
		f 3 2096 -1984 2097
		mu 0 3 821 818 779
		f 3 -2097 2098 2099
		mu 0 3 818 821 819
		f 3 2100 2101 -2099
		mu 0 3 821 826 819
		f 3 -2101 2102 2103
		mu 0 3 826 821 820
		f 3 2104 2105 -2104
		mu 0 3 820 824 826
		f 3 -2105 2106 2107
		mu 0 3 824 820 828
		f 3 2108 2109 -2108
		mu 0 3 828 692 824
		f 3 -2109 2110 2111
		mu 0 3 692 828 780
		f 3 2112 2113 2114
		mu 0 3 838 782 837
		f 3 -2113 2115 2116
		mu 0 3 782 838 781
		f 3 2117 2118 2119
		mu 0 3 830 837 897
		f 3 -2118 2120 -2115
		mu 0 3 837 830 838
		f 3 2121 2122 2123
		mu 0 3 832 830 894
		f 3 -2120 2124 -2123
		mu 0 3 830 897 894
		f 3 -1059 2125 2126
		mu 0 3 783 733 832
		f 3 -2124 2127 -2127
		mu 0 3 832 894 783
		f 3 2128 2129 2130
		mu 0 3 839 842 872
		f 3 -2129 2131 2132
		mu 0 3 842 839 876
		f 3 2133 2134 2135
		mu 0 3 865 839 868
		f 3 -2131 2136 -2135
		mu 0 3 839 872 868
		f 3 2137 2138 -2133
		mu 0 3 876 785 842
		f 3 -2138 2139 2140
		mu 0 3 785 876 784
		f 3 2141 2142 2143
		mu 0 3 870 843 908
		f 3 2144 -2143 2145
		mu 0 3 906 908 843
		f 3 2146 -2144 2147
		mu 0 3 909 870 908
		f 3 -2147 2148 2149
		mu 0 3 870 909 875
		f 3 2150 2151 -2146
		mu 0 3 843 786 906
		f 3 -2152 -1842 2152
		mu 0 3 906 786 787
		f 3 2153 2154 2155
		mu 0 3 710 869 855
		f 3 -2155 2156 2157
		mu 0 3 855 869 856
		f 3 2158 -2157 2159
		mu 0 3 874 856 869
		f 3 -2159 2160 2161
		mu 0 3 856 874 851
		f 3 2162 2163 2164
		mu 0 3 853 715 849
		f 3 -2163 2165 -2039
		mu 0 3 715 853 852
		f 3 2166 2167 2168
		mu 0 3 836 849 891
		f 3 -2167 2169 -2165
		mu 0 3 849 836 853
		f 3 2170 2171 2172
		mu 0 3 859 810 864
		f 3 -2171 2173 -2086
		mu 0 3 810 859 857
		f 3 2174 2175 2176
		mu 0 3 789 859 788
		f 3 -2173 2177 -2176
		mu 0 3 859 864 788
		f 3 2178 2179 -2149
		mu 0 3 909 702 875
		f 3 -2179 2180 2181
		mu 0 3 702 909 790
		f 3 2182 2183 -2041
		mu 0 3 920 865 791
		f 3 -2136 2184 -2184
		mu 0 3 865 868 791
		f 3 2185 -2161 2186
		mu 0 3 882 851 874
		f 3 -2186 2187 2188
		mu 0 3 851 882 845
		f 3 2189 -2188 2190
		mu 0 3 717 845 882
		f 3 -2190 2191 2192
		mu 0 3 845 717 792
		f 3 2193 2194 2195
		mu 0 3 887 723 847
		f 3 -2194 2196 -2058
		mu 0 3 723 887 886
		f 3 2197 2198 2199
		mu 0 3 900 847 893
		f 3 -2198 2200 -2196
		mu 0 3 847 900 887
		f 3 2201 2202 -2060
		mu 0 3 724 896 880
		f 3 -2203 2203 2204
		mu 0 3 880 896 881
		f 3 2205 2206 -2204
		mu 0 3 896 891 881
		f 3 -2206 2207 -2169
		mu 0 3 891 896 836
		f 3 2208 2209 -1974
		mu 0 3 729 885 884
		f 3 -2209 2210 2211
		mu 0 3 885 729 902
		f 3 2212 2213 -2212
		mu 0 3 902 893 885
		f 3 -2213 2214 -2200
		mu 0 3 893 902 900
		f 3 2215 2216 2217
		mu 0 3 905 910 807
		f 3 2218 -2217 2219
		mu 0 3 806 807 910
		f 3 2220 -2218 2221
		mu 0 3 817 905 807
		f 3 -2221 2222 2223
		mu 0 3 905 817 907
		f 3 2224 -2220 2225
		mu 0 3 793 806 910
		f 3 -2225 -1834 2226
		mu 0 3 806 793 794
		f 3 2227 2228 -2223
		mu 0 3 817 739 907
		f 3 -2228 2229 2230
		mu 0 3 739 817 795
		f 3 2231 2232 2233
		mu 0 3 912 796 804
		f 3 -2232 2234 -901
		mu 0 3 796 912 911
		f 3 2235 -2234 2236
		mu 0 3 805 912 804
		f 3 -2236 2237 2238
		mu 0 3 912 805 915
		f 3 2239 2240 -2238
		mu 0 3 805 913 915
		f 3 -2240 2241 2242
		mu 0 3 913 805 815
		f 3 2243 2244 -2243
		mu 0 3 815 754 913
		f 3 -2244 2245 -1863
		mu 0 3 754 815 797
		f 3 2246 2247 2248
		mu 0 3 835 799 831
		f 3 -2247 2249 2250
		mu 0 3 799 835 798
		f 3 2251 2252 2253
		mu 0 3 803 831 833
		f 3 -2252 2254 -2249
		mu 0 3 831 803 835
		f 3 2255 2256 2257
		mu 0 3 802 803 904
		f 3 -2254 2258 -2257
		mu 0 3 803 833 904
		f 3 2259 2260 -1979
		mu 0 3 765 802 800
		f 3 -2258 2261 -2261
		mu 0 3 802 904 800
		f 3 2262 -475 2263
		mu 0 3 827 898 801
		f 3 -2263 2264 2265
		mu 0 3 898 827 899
		f 3 2266 2267 -2265
		mu 0 3 827 903 899
		f 3 -2267 2268 2269
		mu 0 3 903 827 825
		f 3 2270 2271 2272
		mu 0 3 823 772 901
		f 3 -2271 2273 2274
		mu 0 3 772 823 822
		f 3 2275 2276 -2270
		mu 0 3 825 901 903
		f 3 -2276 2277 -2273
		mu 0 3 901 825 823
		f 3 2278 2279 -51
		mu 0 3 615 803 131
		f 3 -2280 -2256 2280
		mu 0 3 131 803 802
		f 3 2281 2282 -49
		mu 0 3 255 835 615
		f 3 -2279 -2283 -2255
		mu 0 3 803 615 835
		f 3 2283 2284 -199
		mu 0 3 44 805 32
		f 3 -2285 -2237 2285
		mu 0 3 32 805 804
		f 3 2286 2287 -197
		mu 0 3 416 815 44
		f 3 -2284 -2288 -2242
		mu 0 3 805 44 815
		f 3 2288 2289 -334
		mu 0 3 35 806 15
		f 3 -2289 2290 -2219
		mu 0 3 806 35 807
		f 3 2291 -2291 -330
		mu 0 3 150 807 35
		f 3 -2292 2292 -2222
		mu 0 3 807 150 817
		f 3 2293 -2043 -1711
		mu 0 3 808 789 251
		f 3 -2294 2294 -2175
		mu 0 3 789 808 859
		f 3 2295 -620 2296
		mu 0 3 864 861 809
		f 3 -2296 -2172 2297
		mu 0 3 861 864 810
		f 3 2298 2299 -2085
		mu 0 3 813 227 812
		f 3 -1697 -662 -2300
		mu 0 3 227 811 812
		f 3 -879 2300 -263
		mu 0 3 814 797 416
		f 3 -2287 -2301 -2246
		mu 0 3 815 416 797
		f 3 -923 2301 -394
		mu 0 3 816 795 150
		f 3 -2293 -2302 -2230
		mu 0 3 817 150 795
		f 3 2302 -964 -2100
		mu 0 3 819 801 818
		f 3 -2303 2303 -2264
		mu 0 3 801 819 827
		f 3 2304 -2107 2305
		mu 0 3 558 828 820
		f 3 -2305 -447 2306
		mu 0 3 828 558 372
		f 3 2307 -2103 2308
		mu 0 3 520 820 821
		f 3 -2308 -449 -2306
		mu 0 3 820 520 558
		f 3 -2027 2309 -2110
		mu 0 3 692 822 824
		f 3 2310 -2310 -2274
		mu 0 3 823 824 822
		f 3 -2311 2311 -2106
		mu 0 3 824 823 826
		f 3 2312 -2312 -2278
		mu 0 3 825 826 823
		f 3 -2313 2313 -2102
		mu 0 3 826 825 819
		f 3 -2304 -2314 -2269
		mu 0 3 827 819 825
		f 3 2314 -2111 -2307
		mu 0 3 372 780 828
		f 3 -2315 -514 -1019
		mu 0 3 780 372 829
		f 3 2315 -2121 2316
		mu 0 3 833 838 830
		f 3 -2316 -2253 2317
		mu 0 3 838 833 831
		f 3 2318 2319 -2259
		mu 0 3 833 832 904
		f 3 -2319 -2317 -2122
		mu 0 3 832 833 830
		f 3 -233 2320 -120
		mu 0 3 834 798 255
		f 3 -2282 -2321 -2250
		mu 0 3 835 255 798
		f 3 2321 -2170 2322
		mu 0 3 897 853 836
		f 3 -2322 -2119 2323
		mu 0 3 853 897 837
		f 3 2324 -2116 -2318
		mu 0 3 831 781 838
		f 3 -2325 -2248 -1036
		mu 0 3 781 831 799
		f 3 -1062 2325 -2233
		mu 0 3 796 747 804
		f 3 -2326 -227 -2286
		mu 0 3 804 747 32
		f 3 2326 2327 -2091
		mu 0 3 840 876 866
		f 3 -2328 -2132 2328
		mu 0 3 866 876 839
		f 3 2329 -2290 -2227
		mu 0 3 794 15 806
		f 3 -2330 -1837 -356
		mu 0 3 15 794 743
		f 3 2330 2331 -2130
		mu 0 3 842 841 872
		f 3 -2331 2332 -1111
		mu 0 3 841 842 889
		f 3 -2033 2333 -2154
		mu 0 3 710 786 869
		f 3 2334 -2334 -2151
		mu 0 3 843 869 786
		f 3 2335 2336 -2189
		mu 0 3 845 844 851
		f 3 -2336 2337 -1129
		mu 0 3 844 845 873
		f 3 2338 -1135 2339
		mu 0 3 893 895 846
		f 3 -2339 -2199 2340
		mu 0 3 895 893 847
		f 3 2341 -1144 2342
		mu 0 3 891 888 848
		f 3 -2342 -2168 2343
		mu 0 3 888 891 849
		f 3 2344 2345 -2162
		mu 0 3 851 850 856
		f 3 -2345 -2337 -1164
		mu 0 3 850 851 844
		f 3 -2037 2346 -2114
		mu 0 3 782 852 837
		f 3 -2166 -2324 -2347
		mu 0 3 852 853 837
		f 3 2347 -1178 -2158
		mu 0 3 856 854 855
		f 3 -2348 -2346 -1116
		mu 0 3 854 856 850
		f 3 2348 -2087 2349
		mu 0 3 860 776 857
		f 3 -2349 -1694 -2299
		mu 0 3 776 860 858
		f 3 2350 -2350 -2174
		mu 0 3 859 860 857
		f 3 -2351 -2295 -1425
		mu 0 3 860 859 808
		f 3 2351 2352 -623
		mu 0 3 861 777 342
		f 3 -2352 -2298 -2089
		mu 0 3 777 861 810
		f 3 2353 -1237 -613
		mu 0 3 862 685 682
		f 3 -2354 -2353 -2083
		mu 0 3 685 862 775
		f 3 2354 -2297 -660
		mu 0 3 863 864 809
		f 3 -2355 -548 -2178
		mu 0 3 864 863 788
		f 3 2355 2356 -2081
		mu 0 3 866 865 878
		f 3 -2356 -2329 -2134
		mu 0 3 865 866 839
		f 3 2357 -19 -2185
		mu 0 3 868 867 791
		f 3 -2358 2358 -1167
		mu 0 3 867 868 871
		f 3 2359 -2335 -2142
		mu 0 3 870 869 843
		f 3 -2360 2360 -2160
		mu 0 3 869 870 874;
	setAttr ".fc[1500:1677]"
		f 3 2361 -2359 -2137
		mu 0 3 872 871 868
		f 3 -2362 -2332 -1149
		mu 0 3 871 872 841
		f 3 -1929 2362 -2193
		mu 0 3 792 374 845
		f 3 -1184 -2338 -2363
		mu 0 3 374 873 845
		f 3 2363 -2361 -2150
		mu 0 3 875 874 870
		f 3 -2364 2364 -2187
		mu 0 3 874 875 882
		f 3 -1875 2365 -2095
		mu 0 3 707 784 840
		f 3 -2366 -2140 -2327
		mu 0 3 840 784 876
		f 3 2366 -2046 -2077
		mu 0 3 878 920 877
		f 3 -2367 -2357 -2183
		mu 0 3 920 878 865
		f 3 2367 -1125 -527
		mu 0 3 880 890 879
		f 3 -2368 -2205 2368
		mu 0 3 890 880 881
		f 3 -1921 2369 -2180
		mu 0 3 702 717 875
		f 3 -2370 -2191 -2365
		mu 0 3 875 717 882
		f 3 2370 -1182 -1968
		mu 0 3 884 892 883
		f 3 -2371 -2210 2371
		mu 0 3 892 884 885
		f 3 -2051 2372 -2272
		mu 0 3 772 886 901
		f 3 -2373 -2197 2373
		mu 0 3 901 886 887
		f 3 2374 -1158 -2344
		mu 0 3 849 714 888
		f 3 -2375 -2164 -17
		mu 0 3 714 849 715
		f 3 -1179 2375 -2139
		mu 0 3 785 711 842
		f 3 -2376 -1121 -2333
		mu 0 3 842 711 889
		f 3 2376 -1174 -2369
		mu 0 3 881 848 890
		f 3 -2377 -2207 -2343
		mu 0 3 848 881 891
		f 3 2377 -1170 -2372
		mu 0 3 885 846 892
		f 3 -2378 -2214 -2340
		mu 0 3 846 885 893
		f 3 2378 -2055 -2128
		mu 0 3 894 724 783
		f 3 -2379 2379 -2202
		mu 0 3 724 894 896
		f 3 2380 -1153 -2341
		mu 0 3 847 722 895
		f 3 -2381 -2195 -529
		mu 0 3 722 847 723
		f 3 2381 -2323 -2208
		mu 0 3 896 897 836
		f 3 -2382 -2380 -2125
		mu 0 3 897 896 894
		f 3 2382 2383 -2211
		mu 0 3 729 899 902
		f 3 -2383 -2061 -2266
		mu 0 3 899 729 898
		f 3 2384 -2201 2385
		mu 0 3 903 887 900
		f 3 -2385 -2277 -2374
		mu 0 3 887 903 901
		f 3 2386 -2215 -2384
		mu 0 3 899 900 902
		f 3 -2387 -2268 -2386
		mu 0 3 900 899 903
		f 3 2387 -2066 -2262
		mu 0 3 904 733 800
		f 3 -2388 -2320 -2126
		mu 0 3 733 904 832
		f 3 2388 -2309 -2098
		mu 0 3 779 520 821
		f 3 -2389 -2024 -473
		mu 0 3 520 779 689
		f 3 2389 -1981 -75
		mu 0 3 131 765 760
		f 3 -2390 -2281 -2260
		mu 0 3 765 131 802
		f 3 2390 2391 -2216
		mu 0 3 905 906 910
		f 3 -2391 2392 -2145
		mu 0 3 906 905 908
		f 3 2393 -2393 -2224
		mu 0 3 907 908 905
		f 3 -2394 2394 -2148
		mu 0 3 908 907 909
		f 3 -2070 2395 -2229
		mu 0 3 739 790 907
		f 3 -2395 -2396 -2181
		mu 0 3 909 907 790
		f 3 2396 -2392 -2153
		mu 0 3 787 910 906
		f 3 -2397 -2004 -2226
		mu 0 3 910 787 793
		f 3 2397 -2235 2398
		mu 0 3 916 911 912
		f 3 -2398 -2075 -2008
		mu 0 3 911 916 774
		f 3 2399 2400 -2241
		mu 0 3 913 917 915
		f 3 2401 -2401 -2092
		mu 0 3 914 915 917
		f 3 2402 -2399 -2239
		mu 0 3 915 916 912
		f 3 -2403 -2402 -2079
		mu 0 3 916 915 914
		f 3 2403 -2400 -2245
		mu 0 3 754 917 913
		f 3 -2404 -2073 -2096
		mu 0 3 917 754 778
		f 3 2404 -1177 -2141
		mu 0 3 784 855 785
		f 3 -2405 -2045 -2156
		mu 0 3 855 784 710
		f 3 2405 -680 -2049
		mu 0 3 920 697 712
		f 3 -2406 -2040 -2036
		mu 0 3 697 920 852
		f 3 2406 -2059 -2052
		mu 0 3 770 724 886
		f 3 -2407 -1969 -2056
		mu 0 3 724 770 730
		f 3 2407 2408 2409
		mu 0 3 921 947 936
		f 3 -2408 2410 2411
		mu 0 3 947 921 922
		f 3 2412 2413 2414
		mu 0 3 924 936 923
		f 3 -2413 2415 -2410
		mu 0 3 936 924 921
		f 3 2416 2417 2418
		mu 0 3 926 937 952
		f 3 -2417 2419 -2415
		mu 0 3 937 926 925
		f 3 2420 2421 -2419
		mu 0 3 952 943 926
		f 3 -2422 2422 2423
		mu 0 3 926 943 927
		f 3 2424 2425 2426
		mu 0 3 928 938 948
		f 3 -2425 2427 2428
		mu 0 3 938 928 929
		f 3 2429 2430 -2427
		mu 0 3 948 944 928
		f 3 -2431 2431 2432
		mu 0 3 928 944 930
		f 3 2433 2434 2435
		mu 0 3 939 938 931
		f 3 -2429 2436 -2435
		mu 0 3 938 929 931
		f 3 2437 -2436 2438
		mu 0 3 933 932 964
		f 3 2439 -2438 2440
		mu 0 3 950 932 933
		f 3 2441 2442 2443
		mu 0 3 934 927 941
		f 3 2444 -2443 -2423
		mu 0 3 943 941 927
		f 3 2445 -2444 2446
		mu 0 3 950 934 941
		f 3 -2446 -2441 2447
		mu 0 3 934 950 933
		f 3 2448 2449 2450
		mu 0 3 935 930 945
		f 3 2451 -2450 -2432
		mu 0 3 944 945 930
		f 3 2452 2453 -2451
		mu 0 3 945 922 935
		f 3 -2453 2454 -2412
		mu 0 3 922 945 947
		f 3 2455 -1806 2456
		mu 0 3 923 946 94
		f 3 -2456 -2414 2457
		mu 0 3 946 923 936
		f 3 2458 -2457 -1808
		mu 0 3 293 937 619
		f 3 -2459 2459 -2418
		mu 0 3 937 293 952
		f 3 2460 -2426 2461
		mu 0 3 940 948 938
		f 3 -2461 -1521 2462
		mu 0 3 948 940 209
		f 3 2463 -2434 2464
		mu 0 3 384 938 939
		f 3 -2464 -1526 -2462
		mu 0 3 938 384 940
		f 3 2465 2466 -1815
		mu 0 3 942 941 378
		f 3 -2466 2467 -2447
		mu 0 3 941 942 950
		f 3 2468 2469 -1789
		mu 0 3 378 943 951
		f 3 -2469 -2467 -2445
		mu 0 3 943 378 941
		f 3 2470 -1580 2471
		mu 0 3 945 949 452
		f 3 -2471 -2452 2472
		mu 0 3 949 945 944
		f 3 2473 -1582 2474
		mu 0 3 947 452 454
		f 3 -2474 -2455 -2472
		mu 0 3 452 947 945
		f 3 -2409 2475 -2458
		mu 0 3 936 947 946
		f 3 -2476 -2475 -1586
		mu 0 3 946 947 454
		f 3 2476 -1593 -2473
		mu 0 3 944 209 949
		f 3 -2477 -2430 -2463
		mu 0 3 209 944 948
		f 3 2477 -2468 -1810
		mu 0 3 221 950 942
		f 3 -2478 -2465 -2440
		mu 0 3 950 221 932
		f 3 2478 -2460 -1793
		mu 0 3 951 952 293
		f 3 -2479 -2470 -2421
		mu 0 3 952 951 943
		f 3 2479 -2420 2480
		mu 0 3 953 925 926
		f 3 -2428 2481 2482
		mu 0 3 929 928 955
		f 3 2483 2484 2485
		mu 0 3 959 958 956
		f 3 -2486 -2449 2486
		mu 0 3 959 956 957
		f 3 2487 -2487 2488
		mu 0 3 960 959 957
		f 3 -2489 -2454 2489
		mu 0 3 960 957 966
		f 3 -2411 2490 2491
		mu 0 3 922 921 965
		f 3 2492 -2433 -2485
		mu 0 3 958 954 956
		f 3 2493 -2482 -2493
		mu 0 3 958 963 954
		f 3 -2424 2494 2495
		mu 0 3 926 927 960
		f 3 -2496 2496 -2481
		mu 0 3 926 960 953
		f 3 -2442 2497 2498
		mu 0 3 927 934 959
		f 3 -2499 -2488 -2495
		mu 0 3 927 959 960
		f 3 -2448 2499 2500
		mu 0 3 934 933 958
		f 3 -2501 -2484 -2498
		mu 0 3 934 958 959
		f 3 2501 -2500 -2439
		mu 0 3 964 958 933
		f 3 -2502 2502 -2494
		mu 0 3 958 964 963
		f 3 -1975 -1967 -1879
		mu 0 3 727 884 726
		f 3 -541 -2064 -1973
		mu 0 3 727 728 729
		f 3 -476 -2063 -1013
		mu 0 3 767 898 766
		f 3 -967 -474 -997
		mu 0 3 768 801 767
		f 3 -1985 -966 -435
		mu 0 3 686 818 688
		f 3 -510 -2025 -1983
		mu 0 3 686 687 779
		f 3 -1060 -2054 -1054
		mu 0 3 732 783 731
		f 3 -143 -2067 -1058
		mu 0 3 732 762 733
		f 3 -79 -1977 -2068
		mu 0 3 763 764 800
		f 3 -1978 -153 -1982
		mu 0 3 765 764 761
		f 3 -1089 -2048 -1083
		mu 0 3 681 877 713
		f 3 -2009 -1087 -286
		mu 0 3 680 774 681
		f 3 -902 -2007 -896
		mu 0 3 746 911 745
		f 3 -1063 -900 -870
		mu 0 3 748 796 746
		f 3 -1843 -2034 -1105
		mu 0 3 705 786 704
		f 3 -2005 -1841 -419
		mu 0 3 741 787 705
		f 3 -1835 -2003 -939
		mu 0 3 742 793 740
		f 3 -915 -1838 -1833
		mu 0 3 742 744 794
		f 3 2503 -2071 -404
		mu 0 3 701 790 735
		f 3 -1840 -2182 -2504
		mu 0 3 701 702 790
		f 3 2504 -924 -918
		mu 0 3 738 795 737
		f 3 -1832 -2231 -2505
		mu 0 3 738 739 795
		f 3 -299 2505 -1920
		mu 0 3 109 719 918
		f 3 -2506 -1844 -2192
		mu 0 3 918 719 919
		f 3 2506 -1038 -129
		mu 0 3 695 781 758
		f 3 -1035 -2117 -2507
		mu 0 3 695 782 781
		f 3 2507 -234 -229
		mu 0 3 757 798 756
		f 3 -1976 -2251 -2508
		mu 0 3 757 799 798
		f 3 2508 -2029 -981
		mu 0 3 773 822 771
		f 3 -519 -2275 -2509
		mu 0 3 773 772 822
		f 3 2509 -1018 -488
		mu 0 3 693 780 690
		f 3 -2112 -2510 -2030
		mu 0 3 692 780 693
		f 3 -2416 -2480 -2491
		mu 0 3 921 924 965
		f 3 -2483 -2503 -2437
		mu 0 3 929 955 931
		f 3 -2492 -2497 -2490
		mu 0 3 966 953 960
		f 3 -1988 -664 -1214
		mu 0 3 684 812 631
		f 3 -1236 -1239 -1986
		mu 0 3 684 683 685
		f 3 -1225 2510 -551
		mu 0 3 699 402 788
		f 3 -2511 -1222 -2177
		mu 0 3 788 402 789
		f 3 2511 -1462 2512
		mu 0 3 562 26 365
		f 3 -2512 -1830 -1725
		mu 0 3 26 562 643
		f 3 -1443 -1739 -2513
		mu 0 3 365 280 562
		f 3 2513 -1469 2514
		mu 0 3 331 298 60
		f 3 -2514 -1721 -1466
		mu 0 3 298 331 463
		f 3 2515 2516 -1671
		mu 0 3 489 60 664
		f 3 -1727 -1801 -2517
		mu 0 3 60 643 664
		f 3 -2516 -1736 -2515
		mu 0 3 60 489 331;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "F648D818-4550-230E-742C-D3A3BFF5272A";
	setAttr -s 9 ".lnk";
	setAttr -s 9 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "93F8F171-4C1B-F2A6-4AC7-7BB56D5C5804";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "5D205526-4025-47BC-AAD3-339972656A42";
createNode displayLayerManager -n "layerManager";
	rename -uid "C5C28EC1-415C-1BEB-1DA3-92BD95D0EEC6";
	setAttr ".cdl" 11;
	setAttr -s 14 ".dli[1:13]"  1 2 3 4 5 6 7 8 
		9 10 11 12 13;
	setAttr -s 7 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "167D930E-48B5-2EBA-A7C7-3D9D70A1E5AC";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5D57F3C6-47A5-63EA-7036-AAB38980D392";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "C59EDC48-4016-5207-9C03-1F8E0AFDB477";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "0381FAB9-4470-22C5-2604-A6A1E66A75C3";
	setAttr ".version" -type "string" "5.2.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "7742A68D-4220-D51A-93F7-1D946364F933";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "389F6512-4F82-DB97-0876-898D5F6E0109";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "3D7AE652-466A-3A5D-D1BE-A1A123D304A7";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "2B0F4343-4C6E-9FFF-B419-5CAD075D0AE4";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode shadingEngine -n "hands:RhandSG";
	rename -uid "2E62E679-4AE2-4B03-7351-2F9DC28847BD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "01E1ADD5-478B-B80D-DF9B-27A7EB639D5D";
createNode animCurveTL -n "b_r_grip_translateX";
	rename -uid "F47EB729-49E1-161C-EA23-E7BBD615F939";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 7.3359999656677246 2 7.4412083625793457
		 3 7.7206740379333496 4 8.1201562881469727 5 8.5854167938232422 6 9.0622158050537109
		 7 9.4963130950927734 8 9.8334693908691406 9 10.019445419311523 10 10 11 10 12 10
		 13 10 14 10 15 10 16 10 17 10 18 10 19 10 20 10 21 10 22 10 23 10 24 10 25 10 26 10
		 27 10 28 10 29 10 30 10 31 10 32 10 33 10 34 10 35 10 36 10 37 10 38 10 39 10 40 10
		 41 10 42 10 43 10 44 10 45 10 46 10 47 10 48 10 49 10 50 10 51 10 52 10 53 10 54 10
		 55 10 56 10 57 10 58 10 59 10 60 10 61 10 62 10 63 10 64 10 65 10 66 10 67 10 68 10
		 69 10 70 10 71 10 72 10 73 10 74 10 75 10 76 10 77 10 78 10 79 10 80 10 81 10 82 10
		 83 10 84 10 85 10 86 10 87 10 88 10 89 10 90 10 91 10 92 10 93 10 94 10 95 10 96 10
		 97 10 98 10 99 10 100 10 101 10 102 10 103 10 104 10 105 10 106 10 107 10 108 10
		 109 10 110 10 111 10 112 10 113 10 114 10 115 10 116 10 117 10 118 10 119 10 120 10;
	setAttr -s 120 ".kit[0:119]"  18 18 18 18 18 18 18 18 
		18 1 1 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9;
	setAttr -s 120 ".kot[0:119]"  18 18 18 18 18 18 18 18 
		18 1 1 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9;
	setAttr -s 120 ".kix[9:119]"  0.041262907477139864 0.041666666666666664 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 120 ".kiy[9:119]"  -0.13887599044833118 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 120 ".kox[9:119]"  0.041262907477139864 0.041666666666666664 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 120 ".koy[9:119]"  -0.13887599044833118 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "b_r_grip_translateY";
	rename -uid "84C1DC01-418B-390F-7B4A-798D9497CA71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 1.5779999494552612 2 1.7376663684844971
		 3 2.1617891788482666 4 2.7680535316467285 5 3.4741451740264893 6 4.197749137878418
		 7 4.8565516471862793 8 5.3682370185852051 9 5.6504917144775391 10 5.620999813079834
		 11 5.620999813079834 12 5.620999813079834 13 5.620999813079834 14 5.620999813079834
		 15 5.620999813079834 16 5.620999813079834 17 5.620999813079834 18 5.620999813079834
		 19 5.620999813079834 20 5.620999813079834 21 5.620999813079834 22 5.620999813079834
		 23 5.620999813079834 24 5.620999813079834 25 5.620999813079834 26 5.620999813079834
		 27 5.620999813079834 28 5.620999813079834 29 5.620999813079834 30 5.620999813079834
		 31 5.620999813079834 32 5.620999813079834 33 5.620999813079834 34 5.620999813079834
		 35 5.620999813079834 36 5.620999813079834 37 5.620999813079834 38 5.620999813079834
		 39 5.620999813079834 40 5.620999813079834 41 5.620999813079834 42 5.620999813079834
		 43 5.620999813079834 44 5.620999813079834 45 5.620999813079834 46 5.620999813079834
		 47 5.620999813079834 48 5.620999813079834 49 5.620999813079834 50 5.620999813079834
		 51 5.620999813079834 52 5.620999813079834 53 5.620999813079834 54 5.620999813079834
		 55 5.620999813079834 56 5.620999813079834 57 5.620999813079834 58 5.620999813079834
		 59 5.620999813079834 60 5.620999813079834 61 5.620999813079834 62 5.620999813079834
		 63 5.620999813079834 64 5.620999813079834 65 5.620999813079834 66 5.620999813079834
		 67 5.620999813079834 68 5.620999813079834 69 5.620999813079834 70 5.620999813079834
		 71 5.620999813079834 72 5.620999813079834 73 5.620999813079834 74 5.620999813079834
		 75 5.620999813079834 76 5.620999813079834 77 5.620999813079834 78 5.620999813079834
		 79 5.620999813079834 80 5.620999813079834 81 5.620999813079834 82 5.620999813079834
		 83 5.620999813079834 84 5.620999813079834 85 5.620999813079834 86 5.620999813079834
		 87 5.620999813079834 88 5.620999813079834 89 5.620999813079834 90 5.620999813079834
		 91 5.620999813079834 92 5.620999813079834 93 5.620999813079834 94 5.620999813079834
		 95 5.620999813079834 96 5.620999813079834 97 5.620999813079834 98 5.620999813079834
		 99 5.620999813079834 100 5.620999813079834 101 5.620999813079834 102 5.620999813079834
		 103 5.620999813079834 104 5.620999813079834 105 5.620999813079834 106 5.620999813079834
		 107 5.620999813079834 108 5.620999813079834 109 5.620999813079834 110 5.620999813079834
		 111 5.620999813079834 112 5.620999813079834 113 5.620999813079834 114 5.620999813079834
		 115 5.620999813079834 116 5.620999813079834 117 5.620999813079834 118 5.620999813079834
		 119 5.620999813079834 120 5.620999813079834;
	setAttr -s 120 ".kit[0:119]"  18 18 18 18 18 18 18 18 
		18 1 1 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9;
	setAttr -s 120 ".kot[0:119]"  18 18 18 18 18 18 18 18 
		18 1 1 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9;
	setAttr -s 120 ".kix[9:119]"  0.04075410815575118 0.041666666666666664 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 120 ".kiy[9:119]"  -0.20814210774203606 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 120 ".kox[9:119]"  0.04075410815575118 0.041666666666666664 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 120 ".koy[9:119]"  -0.20814210774203606 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "b_r_grip_translateZ";
	rename -uid "48C687C4-4C5F-CDF9-5CA8-2FB0B8A795B1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 -1.9520000219345093 2 -1.9983636140823364
		 3 -2.1215195655822754 4 -2.2975656986236572 5 -2.5025994777679443 6 -2.7127184867858887
		 7 -2.9040203094482422 8 -3.0526027679443359 9 -3.1345634460449219 10 -3.125999927520752
		 11 -3.125999927520752 12 -3.125999927520752 13 -3.125999927520752 14 -3.125999927520752
		 15 -3.125999927520752 16 -3.125999927520752 17 -3.125999927520752 18 -3.125999927520752
		 19 -3.125999927520752 20 -3.125999927520752 21 -3.125999927520752 22 -3.125999927520752
		 23 -3.125999927520752 24 -3.125999927520752 25 -3.125999927520752 26 -3.125999927520752
		 27 -3.125999927520752 28 -3.125999927520752 29 -3.125999927520752 30 -3.125999927520752
		 31 -3.125999927520752 32 -3.125999927520752 33 -3.125999927520752 34 -3.125999927520752
		 35 -3.125999927520752 36 -3.125999927520752 37 -3.125999927520752 38 -3.125999927520752
		 39 -3.125999927520752 40 -3.125999927520752 41 -3.125999927520752 42 -3.125999927520752
		 43 -3.125999927520752 44 -3.125999927520752 45 -3.125999927520752 46 -3.125999927520752
		 47 -3.125999927520752 48 -3.125999927520752 49 -3.125999927520752 50 -3.125999927520752
		 51 -3.125999927520752 52 -3.125999927520752 53 -3.125999927520752 54 -3.125999927520752
		 55 -3.125999927520752 56 -3.125999927520752 57 -3.125999927520752 58 -3.125999927520752
		 59 -3.125999927520752 60 -3.125999927520752 61 -3.125999927520752 62 -3.125999927520752
		 63 -3.125999927520752 64 -3.125999927520752 65 -3.125999927520752 66 -3.125999927520752
		 67 -3.125999927520752 68 -3.125999927520752 69 -3.125999927520752 70 -3.125999927520752
		 71 -3.125999927520752 72 -3.125999927520752 73 -3.125999927520752 74 -3.125999927520752
		 75 -3.125999927520752 76 -3.125999927520752 77 -3.125999927520752 78 -3.125999927520752
		 79 -3.125999927520752 80 -3.125999927520752 81 -3.125999927520752 82 -3.125999927520752
		 83 -3.125999927520752 84 -3.125999927520752 85 -3.125999927520752 86 -3.125999927520752
		 87 -3.125999927520752 88 -3.125999927520752 89 -3.125999927520752 90 -3.125999927520752
		 91 -3.125999927520752 92 -3.125999927520752 93 -3.125999927520752 94 -3.125999927520752
		 95 -3.125999927520752 96 -3.125999927520752 97 -3.125999927520752 98 -3.125999927520752
		 99 -3.125999927520752 100 -3.125999927520752 101 -3.125999927520752 102 -3.125999927520752
		 103 -3.125999927520752 104 -3.125999927520752 105 -3.125999927520752 106 -3.125999927520752
		 107 -3.125999927520752 108 -3.125999927520752 109 -3.125999927520752 110 -3.125999927520752
		 111 -3.125999927520752 112 -3.125999927520752 113 -3.125999927520752 114 -3.125999927520752
		 115 -3.125999927520752 116 -3.125999927520752 117 -3.125999927520752 118 -3.125999927520752
		 119 -3.125999927520752 120 -3.125999927520752;
	setAttr -s 120 ".kit[0:119]"  18 18 18 18 18 18 18 18 
		18 1 1 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9;
	setAttr -s 120 ".kot[0:119]"  18 18 18 18 18 18 18 18 
		18 1 1 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9;
	setAttr -s 120 ".kix[9:119]"  0.041587344307150699 0.041666666666666664 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 120 ".kiy[9:119]"  0.061675351994263924 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 120 ".kox[9:119]"  0.041587344307150699 0.041666666666666664 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 120 ".koy[9:119]"  0.061675351994263924 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "b_r_grip_rotateX";
	rename -uid "3F2EB715-467C-3F30-AE3C-7181FDE483B4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 -2.581089973449707 2 -4.2537221908569336
		 3 -8.790165901184082 4 -15.468243598937988 5 -23.565774917602539 6 -32.360584259033203
		 7 -41.130489349365234 8 -49.153312683105469 9 -55.706874847412109 10 -60.069000244140632
		 11 -60.069000244140632 12 -60.069000244140632 13 -60.069000244140632 14 -60.069000244140632
		 15 -60.069000244140632 16 -60.069000244140632 17 -60.069000244140632 18 -60.069000244140632
		 19 -60.069000244140632 20 -60.069000244140632 21 -60.069000244140632 22 -60.069000244140632
		 23 -60.069000244140632 24 -60.069000244140632 25 -60.069000244140632 26 -60.069000244140632
		 27 -60.069000244140632 28 -60.069000244140632 29 -60.069000244140632 30 -60.069000244140632
		 31 -60.069000244140632 32 -60.069000244140632 33 -60.069000244140632 34 -60.069000244140632
		 35 -60.069000244140632 36 -60.069000244140632 37 -60.069000244140632 38 -60.069000244140632
		 39 -60.069000244140632 40 -60.069000244140632 41 -60.069000244140632 42 -60.069000244140632
		 43 -60.069000244140632 44 -60.069000244140632 45 -60.069000244140632 46 -60.069000244140632
		 47 -60.069000244140632 48 -60.069000244140632 49 -60.069000244140632 50 -60.069000244140632
		 51 -60.069000244140632 52 -60.069000244140632 53 -60.069000244140632 54 -60.069000244140632
		 55 -60.069000244140632 56 -60.069000244140632 57 -60.069000244140632 58 -60.069000244140632
		 59 -60.069000244140632 60 -60.069000244140632 61 -60.069000244140632 62 -60.069000244140632
		 63 -60.069000244140632 64 -60.069000244140632 65 -60.069000244140632 66 -60.069000244140632
		 67 -60.069000244140632 68 -60.069000244140632 69 -60.069000244140632 70 -60.069000244140632
		 71 -60.069000244140632 72 -60.069000244140632 73 -60.069000244140632 74 -60.069000244140632
		 75 -60.069000244140632 76 -60.069000244140632 77 -60.069000244140632 78 -60.069000244140632
		 79 -60.069000244140632 80 -60.069000244140632 81 -60.069000244140632 82 -60.069000244140632
		 83 -60.069000244140632 84 -60.069000244140632 85 -60.069000244140632 86 -60.069000244140632
		 87 -60.069000244140632 88 -60.069000244140632 89 -60.069000244140632 90 -60.069000244140632
		 91 -60.069000244140632 92 -60.069000244140632 93 -60.069000244140632 94 -60.069000244140632
		 95 -60.069000244140632 96 -60.069000244140632 97 -60.069000244140632 98 -60.069000244140632
		 99 -60.069000244140632 100 -60.069000244140632 101 -60.069000244140632 102 -60.069000244140632
		 103 -60.069000244140632 104 -60.069000244140632 105 -60.069000244140632 106 -60.069000244140632
		 107 -60.069000244140632 108 -60.069000244140632 109 -60.069000244140632 110 -60.069000244140632
		 111 -60.069000244140632 112 -60.069000244140632 113 -60.069000244140632 114 -60.069000244140632
		 115 -60.069000244140632 116 -60.069000244140632 117 -60.069000244140632 118 -60.069000244140632
		 119 -60.069000244140632 120 -60.069000244140632;
	setAttr -s 120 ".kit[0:119]"  18 18 18 18 18 18 18 18 
		18 1 1 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9;
	setAttr -s 120 ".kot[0:119]"  18 18 18 18 18 18 18 18 
		18 1 1 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9;
	setAttr -s 120 ".kix[9:119]"  0.00024034548334160981 0.041666666666666664 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 120 ".kiy[9:119]"  -0.0003046123519482164 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 120 ".kox[9:119]"  0.00024034548334160981 0.041666666666666664 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 120 ".koy[9:119]"  -0.0003046123519482164 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "b_r_grip_rotateY";
	rename -uid "60DAA377-4982-A79F-DA46-168B51030D32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 -0.20749607682228088 2 -0.058800131082534797
		 3 0.34402915835380554 4 0.9361041784286499 5 1.6525371074676514 6 2.4284400939941406
		 7 3.1989259719848633 8 3.8991060256958008 9 4.4640936851501465 10 4.8289999961853027
		 11 4.8289999961853027 12 4.8289999961853027 13 4.8289999961853027 14 4.8289999961853027
		 15 4.8289999961853027 16 4.8289999961853027 17 4.8289999961853027 18 4.8289999961853027
		 19 4.8289999961853027 20 4.8289999961853027 21 4.8289999961853027 22 4.8289999961853027
		 23 4.8289999961853027 24 4.8289999961853027 25 4.8289999961853027 26 4.8289999961853027
		 27 4.8289999961853027 28 4.8289999961853027 29 4.8289999961853027 30 4.8289999961853027
		 31 4.8289999961853027 32 4.8289999961853027 33 4.8289999961853027 34 4.8289999961853027
		 35 4.8289999961853027 36 4.8289999961853027 37 4.8289999961853027 38 4.8289999961853027
		 39 4.8289999961853027 40 4.8289999961853027 41 4.8289999961853027 42 4.8289999961853027
		 43 4.8289999961853027 44 4.8289999961853027 45 4.8289999961853027 46 4.8289999961853027
		 47 4.8289999961853027 48 4.8289999961853027 49 4.8289999961853027 50 4.8289999961853027
		 51 4.8289999961853027 52 4.8289999961853027 53 4.8289999961853027 54 4.8289999961853027
		 55 4.8289999961853027 56 4.8289999961853027 57 4.8289999961853027 58 4.8289999961853027
		 59 4.8289999961853027 60 4.8289999961853027 61 4.8289999961853027 62 4.8289999961853027
		 63 4.8289999961853027 64 4.8289999961853027 65 4.8289999961853027 66 4.8289999961853027
		 67 4.8289999961853027 68 4.8289999961853027 69 4.8289999961853027 70 4.8289999961853027
		 71 4.8289999961853027 72 4.8289999961853027 73 4.8289999961853027 74 4.8289999961853027
		 75 4.8289999961853027 76 4.8289999961853027 77 4.8289999961853027 78 4.8289999961853027
		 79 4.8289999961853027 80 4.8289999961853027 81 4.8289999961853027 82 4.8289999961853027
		 83 4.8289999961853027 84 4.8289999961853027 85 4.8289999961853027 86 4.8289999961853027
		 87 4.8289999961853027 88 4.8289999961853027 89 4.8289999961853027 90 4.8289999961853027
		 91 4.8289999961853027 92 4.8289999961853027 93 4.8289999961853027 94 4.8289999961853027
		 95 4.8289999961853027 96 4.8289999961853027 97 4.8289999961853027 98 4.8289999961853027
		 99 4.8289999961853027 100 4.8289999961853027 101 4.8289999961853027 102 4.8289999961853027
		 103 4.8289999961853027 104 4.8289999961853027 105 4.8289999961853027 106 4.8289999961853027
		 107 4.8289999961853027 108 4.8289999961853027 109 4.8289999961853027 110 4.8289999961853027
		 111 4.8289999961853027 112 4.8289999961853027 113 4.8289999961853027 114 4.8289999961853027
		 115 4.8289999961853027 116 4.8289999961853027 117 4.8289999961853027 118 4.8289999961853027
		 119 4.8289999961853027 120 4.8289999961853027;
	setAttr -s 120 ".kit[0:119]"  18 18 18 18 18 18 18 18 
		18 1 1 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9;
	setAttr -s 120 ".kot[0:119]"  18 18 18 18 18 18 18 18 
		18 1 1 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9;
	setAttr -s 120 ".kix[9:119]"  0.0029820935749789502 0.041666666666666664 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 120 ".kiy[9:119]"  0.00030383624723488673 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 120 ".kox[9:119]"  0.0029820935749789502 0.041666666666666664 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 120 ".koy[9:119]"  0.00030383624723488673 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "b_r_grip_rotateZ";
	rename -uid "8B6B6850-4B86-4F1A-3054-E6AA1E15517C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 -0.60600000619888306 2 -0.9984363317489624
		 3 -2.0627861022949219 4 -3.6296117305755615 5 -5.5294742584228516 6 -7.5929350852966317
		 7 -9.6505565643310547 8 -11.532899856567383 9 -13.070527076721191 10 -14.0939998626709
		 11 -14.0939998626709 12 -14.0939998626709 13 -14.0939998626709 14 -14.0939998626709
		 15 -14.0939998626709 16 -14.0939998626709 17 -14.0939998626709 18 -14.0939998626709
		 19 -14.0939998626709 20 -14.0939998626709 21 -14.0939998626709 22 -14.0939998626709
		 23 -14.0939998626709 24 -14.0939998626709 25 -14.0939998626709 26 -14.0939998626709
		 27 -14.0939998626709 28 -14.0939998626709 29 -14.0939998626709 30 -14.0939998626709
		 31 -14.0939998626709 32 -14.0939998626709 33 -14.0939998626709 34 -14.0939998626709
		 35 -14.0939998626709 36 -14.0939998626709 37 -14.0939998626709 38 -14.0939998626709
		 39 -14.0939998626709 40 -14.0939998626709 41 -14.0939998626709 42 -14.0939998626709
		 43 -14.0939998626709 44 -14.0939998626709 45 -14.0939998626709 46 -14.0939998626709
		 47 -14.0939998626709 48 -14.0939998626709 49 -14.0939998626709 50 -14.0939998626709
		 51 -14.0939998626709 52 -14.0939998626709 53 -14.0939998626709 54 -14.0939998626709
		 55 -14.0939998626709 56 -14.0939998626709 57 -14.0939998626709 58 -14.0939998626709
		 59 -14.0939998626709 60 -14.0939998626709 61 -14.0939998626709 62 -14.0939998626709
		 63 -14.0939998626709 64 -14.0939998626709 65 -14.0939998626709 66 -14.0939998626709
		 67 -14.0939998626709 68 -14.0939998626709 69 -14.0939998626709 70 -14.0939998626709
		 71 -14.0939998626709 72 -14.0939998626709 73 -14.0939998626709 74 -14.0939998626709
		 75 -14.0939998626709 76 -14.0939998626709 77 -14.0939998626709 78 -14.0939998626709
		 79 -14.0939998626709 80 -14.0939998626709 81 -14.0939998626709 82 -14.0939998626709
		 83 -14.0939998626709 84 -14.0939998626709 85 -14.0939998626709 86 -14.0939998626709
		 87 -14.0939998626709 88 -14.0939998626709 89 -14.0939998626709 90 -14.0939998626709
		 91 -14.0939998626709 92 -14.0939998626709 93 -14.0939998626709 94 -14.0939998626709
		 95 -14.0939998626709 96 -14.0939998626709 97 -14.0939998626709 98 -14.0939998626709
		 99 -14.0939998626709 100 -14.0939998626709 101 -14.0939998626709 102 -14.0939998626709
		 103 -14.0939998626709 104 -14.0939998626709 105 -14.0939998626709 106 -14.0939998626709
		 107 -14.0939998626709 108 -14.0939998626709 109 -14.0939998626709 110 -14.0939998626709
		 111 -14.0939998626709 112 -14.0939998626709 113 -14.0939998626709 114 -14.0939998626709
		 115 -14.0939998626709 116 -14.0939998626709 117 -14.0939998626709 118 -14.0939998626709
		 119 -14.0939998626709 120 -14.0939998626709;
	setAttr -s 120 ".kit[0:119]"  18 18 18 18 18 18 18 18 
		18 1 1 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9;
	setAttr -s 120 ".kot[0:119]"  18 18 18 18 18 18 18 18 
		18 1 1 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9;
	setAttr -s 120 ".kix[9:119]"  0.0010240664192782288 0.041666666666666664 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 120 ".kiy[9:119]"  -0.000304525402574206 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 120 ".kox[9:119]"  0.0010240664192782288 0.041666666666666664 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 120 ".koy[9:119]"  -0.000304525402574206 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "b_r_grip_visibility";
	rename -uid "F4C1C286-4293-9D30-C44B-EFBC680283CA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1
		 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1
		 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1
		 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1
		 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1 110 1
		 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1;
	setAttr -s 120 ".kot[0:119]"  5 17 17 17 17 17 17 17 
		17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 
		17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 
		17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 
		17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 
		17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 
		17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 
		17 17 17 17 17 17 17 17 17 9;
	setAttr -s 120 ".kix[0:119]"  0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 
		0.041666666666666664 0.041666666666666664;
	setAttr -s 120 ".kiy[0:119]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "b_r_grip_lockInfluenceWeights";
	rename -uid "49F713BA-45AA-C185-7593-3C8652B95F61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0
		 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0
		 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0
		 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0
		 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0
		 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0;
	setAttr -s 120 ".kit[0:119]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9;
	setAttr -s 120 ".kot[0:119]"  5 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9;
	setAttr -s 120 ".kix[0:119]"  0.041666666666666664 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 120 ".kiy[0:119]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode skinCluster -n "skinCluster1";
	rename -uid "C97A0459-4758-7CD8-D864-A49B63A54FAE";
	setAttr ".ip[0].gtg" -type "string" "skinCluster1";
	setAttr -s 841 ".wl";
	setAttr ".wl[0:243].w"
		2 3 0.46980214075947269 4 0.53019785924052731
		2 3 0.47516057415672525 4 0.5248394258432747
		2 3 0.50258789729133835 4 0.4974121027086616
		2 4 0.99880363913205616 5 0.0011963608679438251
		2 4 0.99314081931538323 5 0.0068591806846167759
		2 4 0.99410537084467465 5 0.0058946291553253517
		2 4 0.9778913719698511 5 0.022108628030148944
		2 4 0.99363042471642615 5 0.0063695752835737996
		1 4 1
		2 4 0.99289037078809117 5 0.0071096292119088734
		2 4 0.94056425019236933 5 0.059435749807630729
		2 4 0.99736046217636776 5 0.0026395378236322427
		1 4 1
		3 1 0.19301819495697631 2 0.73893481492996216 15 0.068046990113061562
		2 4 0.99586415519523408 5 0.0041358448047659506
		2 3 0.47557851613293312 4 0.52442148386706688
		2 4 0.99515589364925072 5 0.0048441063507493332
		2 1 0.072190254702215781 2 0.92780974529778426
		1 4 1
		2 4 0.99438385623714987 5 0.0056161437628501889
		3 1 0.27573551787455858 2 0.57934152530113869 6 0.14492295682430267
		2 3 0.50234127675600482 4 0.49765872324399518
		2 3 0.45584709225232878 4 0.54415290774767122
		2 4 0.99675190448760986 5 0.0032480955123901367
		2 3 0.48826019570510598 4 0.51173980429489407
		2 4 0.99269731623349788 5 0.0073026837665020839
		2 4 0.9531424451352577 5 0.04685755486474226
		2 4 0.99828919994975618 5 0.0017108000502439071
		2 4 0.97863423686284445 5 0.021365763137155595
		2 4 0.97977977718278686 5 0.02022022281721312
		2 3 0.96109739131575278 4 0.038902608684247227
		2 3 0.93196295101110571 4 0.068037048988894275
		2 3 0.86109591570661759 4 0.13890408429338244
		2 3 0.95456080333820326 4 0.045439196661796744
		2 1 0.059045223686261743 2 0.94095477631373825
		2 1 0.098131522945753571 2 0.90186847705424644
		1 4 1
		2 4 0.99834159163383851 5 0.001658408366161468
		1 4 1
		2 2 0.9338940761622061 15 0.066105923837793928
		2 4 0.9965913593928446 5 0.0034086406071553591
		2 1 0.095817407469308946 2 0.90418259253069111
		2 3 0.89704341855237424 4 0.10295658144762582
		2 3 0.95248554361208015 4 0.047514456387919873
		2 3 0.94088016671046681 4 0.059119833289533186
		2 2 0.77208628178167571 3 0.22791371821832423
		3 1 0.0044633140787482262 2 0.48854086479153608 3 0.50699582112971575
		3 2 0.4564676580400075 3 0.54210948944091797 16 0.0014228525190745226
		2 2 0.57990138611719655 3 0.42009861388280345
		3 2 0.5033149322444731 3 0.49261745810508728 16 0.0040676096504396603
		3 1 0.0022939266636967659 2 0.76544077087258666 3 0.23226530246371657
		3 1 0.0013647843152284622 2 0.44519613316870704 3 0.55343908251606455
		2 7 0.43254678713972999 8 0.56745321286027006
		2 7 0.48423225789244601 8 0.51576774210755405
		2 7 0.44861481711352541 8 0.55138518288647465
		2 8 0.99701966883442894 9 0.002980331165571083
		2 8 0.99877941966917116 9 0.0012205803308288409
		2 8 0.99494412180888325 9 0.0050558781911167628
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		2 8 0.99832809590698812 9 0.0016719040930119045
		3 1 0.2371127624449382 2 0.23239058066037793 6 0.53049665689468384
		1 8 1
		2 7 0.47098131169842516 8 0.52901868830157484
		2 8 0.99789181164515373 9 0.0021081883548463155
		2 1 0.10813990865862946 6 0.89186009134137056
		1 8 1
		1 8 1
		3 1 0.1331214758622159 6 0.61305205495481596 10 0.25382646918296814
		2 7 0.42509779735786452 8 0.57490220264213554
		2 7 0.43886712054612681 8 0.56113287945387325
		2 8 0.99655622381089692 9 0.0034437761891031376
		2 7 0.48217397504325227 8 0.51782602495674779
		2 8 0.99813377843229545 9 0.0018662215677045808
		2 8 0.99859645638970862 9 0.0014035436102914146
		1 8 1
		1 8 1
		1 8 1
		2 3 0.0040009109276245482 4 0.99599908907237544
		1 4 1
		1 4 1
		3 3 0.062518277258515165 4 0.93595403432846069 5 0.0015276884130241402
		3 1 0.19624371054592843 2 0.091175310583679753 6 0.71258097887039185
		3 1 0.14212045269352863 6 0.84966480731964111 10 0.0082147399868302499
		1 8 1
		1 8 1
		1 8 1
		2 1 0.080469999014887619 6 0.91953000098511239
		1 8 1
		3 1 0.068496721867547669 6 0.69743166577435911 10 0.23407161235809326
		2 3 0.0057665426075605803 4 0.9942334573924394
		1 4 1
		2 3 0.0020913368944890172 4 0.99790866310551107
		2 6 0.57937043167874314 7 0.42062956832125686
		3 1 0.0030935939867049456 6 0.56696711905621444 7 0.42993928695708067
		2 6 0.45210667723342129 7 0.54789332276657876
		3 1 0.0011720828418038196 6 0.56475256162841103 7 0.43407535552978516
		2 6 0.47071193428511848 7 0.52928806571488152
		2 6 0.53933960423227123 7 0.46066039576772877
		3 1 0.0076418714597821236 6 0.51355046597948062 7 0.47880766256073731
		2 11 0.56032885522607445 12 0.43967114477392555
		2 11 0.54833602853184504 12 0.45166397146815496
		2 11 0.49683655456712034 12 0.50316344543287961
		1 12 1
		2 12 0.98554948413202137 13 0.014450515867978674
		2 12 0.99047978394291392 13 0.0095202160570861203
		2 12 0.98744619382738386 13 0.012553806172616115
		2 12 0.99354529408294046 13 0.0064547059170595947
		2 12 0.90606653826077044 13 0.093933461739229548
		2 12 0.94905243122554273 13 0.050947568774457316
		2 12 0.98959018059860759 13 0.01040981940139246
		2 12 0.81355794174642215 13 0.18644205825357785
		1 12 1
		3 1 0.094705226179656404 6 0.27009433293670709 10 0.63520044088363647
		2 12 0.96303330949874399 13 0.036966690501256005
		3 11 0.48955688251789026 12 0.50885742902755737 13 0.0015856884545523715
		2 12 0.92404472620503142 13 0.075955273794968525
		3 1 0.05229191854596138 10 0.94067435993398407 11 0.0070337215200545434
		2 12 0.99741409596122199 13 0.0025859040387779847
		2 12 0.99760699266784902 13 0.0023930073321509911
		3 1 0.13955146422058851 10 0.85298234224319458 11 0.0074661935362169097
		2 11 0.46036482812145635 12 0.5396351718785436
		3 11 0.52481919222413576 12 0.47417321801185608 13 0.001007589764008149
		1 12 1
		2 11 0.50121092297260306 12 0.49878907702739689
		3 11 0.0017249482601957378 12 0.90557259321212769 13 0.092702458527676571
		2 12 0.98856970394809562 13 0.011430296051904388
		2 12 0.83097663200596772 13 0.16902336799403228
		1 12 1
		2 12 0.99380851789985669 13 0.0061914821001433388
		2 17 0.95231345331823047 18 0.047686546681769484
		2 17 0.99852286376685573 18 0.0014771362331442457
		2 17 0.99412516663602846 18 0.005874833363971598
		2 17 0.99684129750301953 18 0.0031587024969805199
		1 17 1
		3 1 0.054748397320508957 10 0.93708032503741712 11 0.0081712776420739767
		3 1 0.082049606024061486 10 0.9109041690826416 11 0.0070462248932969054
		2 12 0.94152729708241223 13 0.058472702917587771
		2 12 0.81555116631943581 13 0.18444883368056425
		1 12 1
		3 1 0.043354364909527272 6 0.22875293823302034 10 0.72789269685745239
		2 12 0.97789027917506677 13 0.022109720824933191
		3 1 0.20020630281358223 10 0.79013258218765259 11 0.009661114998765187
		1 17 1
		2 15 0.61217715643355364 16 0.38782284356644631
		2 15 0.60762262315870441 16 0.39237737684129559
		3 15 0.48516276478767395 16 0.51061423755309543 17 0.0042229976592306658
		3 10 0.67562955617904663 11 0.31266766659604445 12 0.011702777224908941
		3 10 0.72055733203887939 11 0.2727585784712378 12 0.0066840894898828251
		3 10 0.55158034521355714 11 0.43653133511543274 12 0.011888319671010127
		3 10 0.72675138711929321 11 0.26341941109343076 12 0.0098292017872760231
		3 10 0.42423106455713128 11 0.55831331014633179 12 0.017455625296536947
		3 10 0.56344640557994041 11 0.4210415780544281 12 0.015512016365631442
		3 10 0.65857595205307007 11 0.33194941756277907 12 0.0094746303841508513
		2 17 0.97016700989673266 18 0.029832990103267291
		2 17 0.99746811517320277 18 0.0025318848267972451
		2 17 0.97120879651995018 18 0.028791203480049828
		2 17 0.99615248826836067 18 0.0038475117316393785
		1 17 1
		3 15 0.58380711078643799 16 0.41506905897045787 17 0.0011238302431041264
		2 17 0.99801099872323329 18 0.0019890012767667256
		2 17 0.98496948867663336 18 0.015030511323366582
		1 17 1
		3 15 0.60363064141346601 16 0.39520654082298279 17 0.0011628177635511845
		3 15 0.47205504775047302 16 0.51987063459057858 17 0.00807431765894835
		1 17 1
		2 15 0.60287033956560299 16 0.39712966043439701
		2 17 0.9962498058238316 18 0.0037501941761684883
		2 17 0.99882881989424799 18 0.0011711801057520178
		2 17 0.99144114675711303 18 0.0085588532428870143
		2 17 0.98289302933802492 18 0.017106970661975088
		1 17 1
		2 16 0.46118670098449349 17 0.53881329901550645
		2 16 0.36436666563807885 17 0.63563333436192115
		2 16 0.4269147782208641 17 0.5730852217791359
		2 17 0.9963981269431601 18 0.0036018730568399193
		2 17 0.99850630472315316 18 0.0014936952768468269
		2 17 0.99407353432224099 18 0.0059264656777590404
		1 17 1
		2 16 0.38561103365044075 17 0.6143889663495592
		2 16 0.38604233494371348 17 0.61395766505628657
		2 16 0.48312564990879397 17 0.51687435009120597
		3 15 0.0014171368834252278 16 0.48843702008755258 17 0.51014584302902222
		3 2 0.23632960021495819 14 0.11933226885826551 15 0.64433813092677628
		2 14 0.25418469401060145 15 0.74581530598939849
		3 14 0.30554265209386222 15 0.69339865446090698 16 0.0010586934452307829
		3 2 0.024843025952577591 14 0.29150049274857626 15 0.68365648129884615
		2 14 0.3009212251641859 15 0.69907877483581415
		3 2 0.09541301429271698 14 0.013287965101206865 15 0.89129902060607613
		3 14 0.36569028510898888 15 0.63330549001693726 16 0.0010042248740738439
		2 20 0.39056719486160452 21 0.60943280513839548
		2 20 0.24333553930630958 21 0.75666446069369042
		3 1 0.0043633994864451658 20 0.37988924980163574 21 0.61574735071191911
		1 21 1
		1 21 1
		3 1 0.0011249728207031926 21 0.8311278223991394 22 0.16774720478015739
		2 21 0.97134475999129277 22 0.028655240008707221
		2 21 0.99792050986838887 22 0.0020794901316111346
		1 21 1
		2 21 0.99833795132882086 22 0.0016620486711791645
		2 21 0.99040809843486477 22 0.0095919015651352319
		1 21 1
		2 21 0.99762307863912025 22 0.0023769213608797858
		2 21 0.99790620281258724 22 0.0020937971874127352
		2 20 0.29706811459831706 21 0.70293188540168294
		1 21 1
		2 21 0.99816110534990898 22 0.0018388946500910519
		1 21 1
		3 1 0.0057683737892088435 20 0.40183284878730774 21 0.59239877742348346
		2 20 0.42808389602532415 21 0.57191610397467585
		1 21 1
		2 20 0.2988089610932812 21 0.70119103890671886
		2 21 0.92512186636669136 22 0.074878133633308627
		2 21 0.98839475217177197 22 0.011605247828227996
		2 20 0.001053764551779939 21 0.99894623544822003
		2 21 0.87449968711322534 22 0.12550031288677468
		2 21 0.99576223782333628 22 0.0042377621766637097
		3 1 0.0079834972845131604 21 0.98480796813964844 24 0.007208534575838403
		3 1 0.0062874153579896824 20 0.025310259312391281 21 0.96840232532961901
		3 20 0.0026950482037164081 21 0.99621707201004028 22 0.0010878797862433089
		3 20 0.0033291462094901716 21 0.99444550677970911 22 0.0022253470108006502
		3 1 0.0036147030486200814 21 0.99146896600723267 22 0.0049163309441472526
		3 20 0.0026097159936242426 21 0.99610590934753418 22 0.0012843746588415777
		1 21 1
		1 21 1
		2 21 0.99846381888610802 22 0.0015361811138919479
		2 21 0.99763163763657381 22 0.0023683623634261617
		3 20 0.0010190489265446024 21 0.99737961878958126 22 0.0016013322838741562
		2 20 0.0051509728910796217 21 0.99484902710892043
		3 20 0.016441438727796132 21 0.97365987300872803 22 0.0098986882634758411
		3 20 0.013345397985448603 21 0.97932264730824081 22 0.007331954706310667
		3 1 0.011678744488500255 21 0.97690355777740479 24 0.011417697734094958
		1 21 1
		3 1 0.10686072690905525 19 0.051254842430353165 20 0.8418844306605916
		2 19 0.07194964915642249 20 0.92805035084357745
		2 19 0.10130407036508117 20 0.89869592963491884
		2 19 0.10727058678116723 20 0.89272941321883281
		3 1 0.0061702132737024434 19 0.13047689199447632 20 0.8633528947318212
		2 19 0.10416120889027902 20 0.89583879110972098
		2 1 0.038408506221988159 19 0.054483231157064438;
	setAttr ".wl[243:447].w"
		1 20 0.90710826262094735
		2 19 0.086856173396628128 20 0.9131438266033719
		2 19 0.10098885377393246 20 0.89901114622606748
		3 1 0.075663501958825985 19 0.074170775711536407 20 0.85016572232963761
		2 19 0.10630629998003245 20 0.89369370001996751
		2 19 0.11695955258126957 20 0.88304044741873045
		1 14 1
		2 14 0.99862967485325371 15 0.0013703251467463303
		2 14 0.99741511896130963 15 0.0025848810386904036
		3 1 0.24854362496518118 14 0.75003594975786203 15 0.001420425276956773
		3 1 0.17420164351159667 14 0.82475694487629925 15 0.0010414116121040193
		2 1 0.22787568363173039 14 0.77212431636826961
		3 0 0.0036981988232582808 1 0.5444957403386782 14 0.45180606083806352
		3 0 0.0032588520552963018 1 0.58022388664364666 14 0.41651726130105698
		3 0 0.0030515000689774752 1 0.53738052312017137 14 0.4595679768108511
		3 0 0.0035187034976626361 1 0.99341672658920288 14 0.003064569913134483
		3 1 0.77445226907730103 10 0.22439753435101104 24 0.0011501965716879334
		2 1 0.6884478874894675 10 0.3115521125105325
		2 1 0.69082830577694165 10 0.3091716942230584
		3 1 0.93020752312435806 19 0.0057248030789196491 20 0.064067673796722333
		3 1 0.94425637751757163 10 0.050577655434608459 20 0.0051659670478198909
		3 1 0.93954814646730189 10 0.0088855177164077759 20 0.051566335816290325
		3 1 0.81127887964248657 2 0.073110867900637144 14 0.11561025245687628
		1 1 1
		3 1 0.99655383825302124 2 0.0015664357069429496 6 0.0018797260400358104
		1 1 1
		2 1 0.99743378451002906 2 0.0025662154899709841
		2 1 0.99860821565669455 6 0.0013917843433055293
		1 1 1
		3 1 0.99035034529502164 6 0.0076583415212981409 10 0.0019913131836801767
		1 1 1
		1 1 1
		3 1 0.95869205561148496 6 0.013969825164801185 10 0.027338119223713875
		2 1 0.96375201410871281 10 0.036247985891287228
		2 1 0.97348193343166567 10 0.026518066568334303
		2 1 0.94826740417299304 10 0.051732595827006914
		3 1 0.44690877199172974 14 0.4499777468314205 15 0.10311348117684979
		3 1 0.004956908569192754 14 0.96838778257369995 15 0.026655308857107294
		3 1 0.16116636991500854 14 0.7944140091576567 15 0.044419620927334751
		2 14 0.99556379434675624 15 0.0044362056532437407
		2 14 0.86695606983881723 15 0.13304393016118274
		2 14 0.86942783088282571 15 0.13057216911717431
		2 14 0.88030567448848351 15 0.11969432551151647
		3 1 0.67594471733918471 2 0.26543891429901123 6 0.058616368361804026
		3 1 0.69253257889894226 2 0.30101901292800903 6 0.0064484081730486935
		2 1 0.74789763960036582 6 0.25210236039963418
		3 1 0.76591524354925411 2 0.0039841098357175208 6 0.23010064661502838
		3 1 0.72186434880536787 6 0.20216123893219243 10 0.075974412262439728
		3 1 0.75285615224198688 6 0.24318470060825348 10 0.0039591471497596393
		3 1 0.096965392462229669 14 0.71384329593994622 15 0.1891913115978241
		3 1 0.0012736392735391941 14 0.82526273303042352 15 0.17346362769603729
		3 1 0.74569615525119615 2 0.064637528835603419 6 0.18966631591320038
		3 1 0.67216232673288268 6 0.0018745635354431402 10 0.32596310973167419
		3 1 0.65213600366546198 6 0.039277071066364855 10 0.30858692526817322
		3 1 0.64834061450061786 2 0.19681742602291113 6 0.15484195947647095
		3 1 0.69651849344678862 2 0.30165252089500427 14 0.0018289856582071014
		3 1 0.62572780040482723 6 0.15426822217722697 10 0.22000397741794586
		3 1 0.62974731600187128 2 0.24851423501968384 14 0.12173844897844484
		3 1 0.33834755420684814 14 0.49703392349676273 15 0.1646185222963891
		2 14 0.85265698951789837 15 0.14734301048210163
		2 1 0.66982390083252774 10 0.33017609916747226
		3 7 0.093586419454263464 8 0.89791774749755859 9 0.0084958330481779351
		2 7 0.045629596193895068 8 0.95437040380610494
		3 7 0.068885751068592072 8 0.92797217961609291 9 0.0031420693153150193
		3 7 0.14860804378986359 8 0.83682900365629254 9 0.014562952553843862
		2 7 0.053136650730733474 8 0.94686334926926652
		2 7 0.051711854835500441 8 0.94828814516449955
		3 7 0.13765779137611389 8 0.85262731714583584 9 0.0097148914780503057
		2 7 0.82620071892586189 8 0.1737992810741382
		1 7 1
		2 7 0.93404510661799423 8 0.065954893382005747
		2 7 0.99215795376297278 8 0.0078420462370272174
		2 7 0.94463926122713104 8 0.05536073877286897
		2 7 0.80575711887375046 8 0.19424288112624957
		1 7 1
		3 11 0.10709352791309357 12 0.87593439533486617 13 0.016972076752040269
		3 11 0.079929254949092865 12 0.91471114208513937 13 0.0053596029657678032
		3 11 0.11781523615890588 12 0.86853539943695068 13 0.013649364404143438
		3 11 0.11514377593994141 12 0.8787515908687844 13 0.0061046331912742152
		3 11 0.094366289675235748 12 0.89004270103917127 13 0.01559100928559303
		3 11 0.10477391416534221 12 0.88054338585648018 13 0.014682699978177642
		3 11 0.14506413042545319 12 0.84420707071455714 13 0.010728798859989643
		2 11 0.95004392692616491 12 0.049956073073835067
		2 11 0.97787264993151235 12 0.022127350068487654
		2 11 0.90702017626399145 12 0.092979823736008577
		2 11 0.96396068015334702 12 0.036039319846652956
		2 11 0.82809588115281052 12 0.17190411884718942
		2 11 0.89645061457640163 12 0.10354938542359836
		2 11 0.96336652547211543 12 0.036633474527884527
		3 16 0.090450555086135864 17 0.90749497667050094 18 0.0020544682433632088
		2 16 0.058401592522534317 17 0.9415984074774657
		2 16 0.058138855625614251 17 0.94186114437438573
		2 16 0.058325869052476401 17 0.94167413094752361
		2 16 0.071852870426079463 17 0.92814712957392054
		2 16 0.076092152605527999 17 0.92390784739447196
		3 16 0.058509433487081042 17 0.93944615125656128 18 0.0020444152563576816
		2 16 0.93362400622350616 17 0.066375993776493877
		2 16 0.91338123880564881 17 0.086618761194351204
		2 16 0.91978070929625821 17 0.080219290703741813
		2 16 0.91050196665801775 17 0.089498033341982253
		2 16 0.97312760906928386 17 0.026872390930716125
		2 16 0.93358944897479856 17 0.06641055102520145
		2 16 0.91748789086406624 17 0.08251210913593382
		2 15 0.099410369626303674 16 0.90058963037369633
		3 15 0.18000105023384094 16 0.81384502222003374 17 0.0061539275461252969
		3 15 0.11606617271900177 16 0.84281062787570105 17 0.041123199405297212
		2 15 0.10934181533033381 16 0.89065818466966618
		2 15 0.1182252192737096 16 0.88177478072629045
		2 15 0.091006905902410867 16 0.9089930940975891
		3 15 0.10707654803991318 16 0.88062610615064785 17 0.012297345809438944
		3 2 0.0014391009656188195 15 0.86812913417816162 16 0.13043176485621957
		2 15 0.92722595005661623 16 0.072774049943383753
		2 15 0.96584834816834808 16 0.034151651831651871
		2 15 0.92082982416395853 16 0.079170175836041454
		2 15 0.94465220523131532 16 0.055347794768684629
		3 2 0.0011449465296353393 15 0.89911830425262451 16 0.099736749217740145
		2 15 0.9493369503096496 16 0.050663049690350369
		3 2 0.038595144369190412 3 0.95582056045532227 4 0.0055842951754873239
		3 1 0.0013268673792481422 2 0.041270555664789453 3 0.95740257695596243
		3 1 0.0072881027680616562 2 0.063342030383946396 3 0.92936986684799194
		3 1 0.0033490774221718311 2 0.12528576629485053 3 0.87136515628297762
		3 2 0.050614124701773233 3 0.94256317615509033 4 0.0068226991431364374
		2 2 0.030678560322037984 3 0.96932143967796203
		3 2 0.032477439889148738 3 0.96236079931259155 4 0.0051617607982597079
		2 2 0.92717985652019463 3 0.072820143479805394
		2 2 0.87320452153232775 3 0.12679547846767231
		2 2 0.86769619805296327 3 0.13230380194703673
		3 1 0.0012943514157086611 2 0.87571817768025273 3 0.12298747090403857
		2 2 0.8880599801006509 3 0.11194001989934907
		3 1 0.0054590371437370777 2 0.90776612011702607 3 0.086774842739236871
		2 2 0.85993656262020912 3 0.14006343737979093
		3 1 0.020850358530879021 6 0.96795239548494216 7 0.011197245984178771
		2 6 0.01571514965379292 7 0.98428485034620705
		2 6 0.010939868815278893 7 0.98906013118472114
		2 6 0.014270287360449512 7 0.98572971263955045
		2 1 0.033273663177988341 6 0.9667263368220117
		2 6 0.011490125457192713 7 0.98850987454280737
		3 1 0.0010138176148757339 6 0.04383674518689426 7 0.95514943719822998
		2 6 0.017301586492772782 7 0.9826984135072272
		2 6 0.0088632547358464472 7 0.99113674526415352
		3 1 0.014846155419945717 6 0.93802137561267462 10 0.047132468967379638
		3 1 0.018141910433769226 6 0.97382698874479168 7 0.008031100821439114
		2 6 0.89004669133342373 7 0.10995330866657625
		2 6 0.89063843548518418 7 0.10936156451481585
		2 6 0.91508191660848837 7 0.084918083391511717
		2 1 0.050692616530385898 6 0.94930738346961407
		2 6 0.90480913574245614 7 0.095190864257543889
		2 6 0.88563984511028915 7 0.11436015488971081
		2 6 0.84275838587447005 7 0.15724161412552998
		3 1 0.0064241201616823673 6 0.88209596712269189 7 0.11147991271562575
		3 10 0.087827980518341064 11 0.89497846469542808 12 0.017193554786230834
		3 10 0.07772374153137207 11 0.90568002393516656 12 0.016596234533461325
		3 10 0.06168181449174881 11 0.87202580417202191 12 0.06629238133622925
		3 10 0.082974754273891449 11 0.90059822269638234 12 0.01642702302972622
		3 10 0.061551131308078766 11 0.90170540725906767 12 0.036743461432853564
		3 10 0.053553558886051178 11 0.93012022175271836 12 0.016326219361230476
		3 10 0.078065015375614166 11 0.89451381275557118 12 0.027421171868814702
		2 10 0.95248514455410027 11 0.047514855445899756
		2 10 0.97451644564822726 11 0.025483554351772686
		2 10 0.94682634490475903 11 0.05317365509524094
		2 10 0.96820620586158279 11 0.031793794138417167
		2 10 0.91293821793219432 11 0.087061782067805696
		2 10 0.93085204321250992 11 0.069147956787490028
		2 10 0.97091830253386036 11 0.029081697466139596
		3 1 0.76734695065733416 14 0.18883667886257172 15 0.043816370480094145
		3 1 0.91395814846957413 2 0.076117746161871308 14 0.0099241053685545921
		3 1 0.14660686254501343 14 0.64895889546219088 15 0.2044342419927957
		3 1 0.24667696195386171 14 0.65985029935836792 15 0.093472738687770368
		3 1 0.85170834629956516 2 0.08909121037300799 14 0.05920044332742691
		3 1 0.98464173078536987 6 0.0070338871192821397 10 0.0083243820953479881
		2 1 0.96868775973697596 10 0.031312240263024017
		3 1 0.93548524379730225 2 0.031429191645972944 6 0.03308556455672481
		3 1 0.96558839082717896 2 0.013309327852345884 6 0.021102281320475161
		3 1 0.98953026533126831 6 0.0024941052795859546 10 0.0079756293891457344
		3 1 0.9835596858096276 10 0.0012583713474716009 20 0.015181942842900753
		2 1 0.95417254554669906 10 0.045827454453300956
		3 1 0.984884610929463 10 0.013998243195068141 20 0.0011171458754688501
		3 1 0.94707223071267121 19 0.0070058573037385941 20 0.045921911983590184
		2 14 0.99665142745779989 15 0.0033485725422001044
		3 1 0.065230011940002441 14 0.76573361738318724 15 0.16903637067681027
		2 14 0.9977782136878669 15 0.0022217863121330571
		3 1 0.023735126480460167 14 0.96812947640652924 15 0.0081353971130105427
		3 1 0.95362335443496704 6 0.030895865815236023 10 0.015480779749796938
		3 1 0.84097670165304572 6 0.12806113064289093 10 0.030962167704063386
		3 1 0.78799741738840545 6 0.0071226132531503278 10 0.20487996935844421
		3 1 0.70329816941600243 6 0.0029944002212961042 10 0.29370743036270142
		3 1 0.86218136548995972 6 0.084906861190826147 10 0.052911773319214137
		3 1 0.13869433104991913 14 0.70783670160913592 15 0.15346896734094495
		3 1 0.31642714142799377 2 0.26619858423217929 14 0.41737427433982699
		2 1 0.73728982981833291 10 0.26271017018166709
		2 1 0.78510828716052239 10 0.21489171283947761
		2 14 0.87143736030491603 15 0.12856263969508397
		3 1 0.0096054831519722939 14 0.84737940436613424 15 0.1430151124818935
		2 1 0.83578670130917743 2 0.1642132986908226
		3 1 0.95682883262634277 2 0.019885618132429447 6 0.02328554924122778
		3 1 0.58190230994375525 2 0.26696622371673584 14 0.15113146633950894
		3 1 0.73375027461237607 2 0.24262826144695282 14 0.023621463940671151
		3 1 0.96079832315444946 2 0.011443159901750351 6 0.027758516943800188
		3 1 0.051768139004707336 14 0.7851121073881856 15 0.16311975360710704
		2 14 0.90051262309919744 15 0.099487376900802574
		2 20 0.85271365757016193 21 0.14728634242983812
		2 20 0.83668698323161272 21 0.16331301676838725
		2 20 0.81001710627445966 21 0.18998289372554031
		2 20 0.83694131055980003 21 0.16305868944019997
		3 1 0.022253048815811905 20 0.75762124618044968 21 0.2201257050037384;
	setAttr ".wl[448:622].w"
		2 20 0.78660654903389204 21 0.21339345096610804
		2 20 0.80712091076881909 21 0.19287908923118097
		2 20 0.093148846749363898 21 0.90685115325063614
		2 20 0.046927973628044128 21 0.95307202637195587
		2 20 0.050333336327314071 21 0.94966666367268593
		2 20 0.072502689456435565 21 0.92749731054356443
		3 1 0.0017203476871734977 20 0.057957533746957779 21 0.94032211856586867
		2 20 0.12199255836549699 21 0.87800744163450306
		2 20 0.044136784970760345 21 0.95586321502923965
		3 1 0.44791691236424908 19 0.081343784928321838 20 0.47073930270742909
		3 1 0.79857687658262744 19 0.047786787152290344 20 0.15363633626508219
		3 1 0.43099999887032303 19 0.067467741668224335 20 0.50153225946145263
		3 1 0.76395926435157802 19 0.050258368253707886 20 0.18578236739471415
		3 1 0.43885811929382706 19 0.086677826941013336 20 0.47446405376515954
		3 1 0.7361998969631367 19 0.066147252917289734 20 0.19765285011957354
		3 1 0.95000943374632685 2 0.0017061138451209378 14 0.04828445240855217
		3 1 0.8827282019695003 2 0.0016270152488987838 14 0.11564478278160095
		3 1 0.99190610856067429 2 0.0012185478000833901 14 0.0068753436392423577
		3 1 0.99653113266562277 6 0.0014877456600300089 14 0.001981121674347277
		3 1 0.9966455853241093 6 0.0010191075967071921 14 0.0023353070791835482
		2 1 0.99806470320760099 6 0.0019352967923990426
		3 1 0.98924441035858424 10 0.0042233825100299596 19 0.0065322071313858032
		3 1 0.9961716767545673 10 0.0023459361400455236 19 0.0014823871053871597
		2 1 0.95758198518930493 19 0.042418014810695126
		3 1 0.25110461225875069 14 0.74504052209121552 15 0.0038548656500338144
		3 1 0.61555044384423963 14 0.38110652565956116 15 0.0033430304961992656
		3 1 0.14856051978692839 14 0.84977550203075836 15 0.0016639781823130717
		3 1 0.88460047754528182 19 0.044313978403806686 20 0.071085544050911539
		3 1 0.42869454367068666 19 0.13639050722122192 20 0.43491494910809142
		3 1 0.70004813731643978 19 0.10727956891059875 20 0.19267229377296147
		3 1 0.0025945035203094194 14 0.9906575405576532 15 0.0067479559220373631
		3 1 0.0050659320549911154 14 0.98900935507846421 15 0.0059247128665447235
		3 1 0.0044502481345942094 14 0.99196237325668335 15 0.0035873786087224401
		3 1 0.97539514236362768 6 0.019638125521818896 10 0.0049667321145534515
		3 1 0.97805339097976685 6 0.018497072694430051 10 0.0034495363258031015
		3 1 0.99110108613967896 2 0.0017043228923920108 6 0.0071945909679290336
		2 1 0.99852619776615226 6 0.0014738022338477664
		3 1 0.96444916725158691 2 0.0014642609877273788 14 0.034086571760685705
		3 1 0.25578361749649048 14 0.71403143143561509 15 0.030184951067894449
		3 1 0.039261992027644257 14 0.94442493583376663 15 0.016313072138589048
		3 1 0.0049151790699627582 14 0.98888116878934673 15 0.0062036521406905179
		2 1 0.99360484343491706 10 0.0063951565650829673
		2 1 0.99428639973310173 10 0.0057136002668983056
		2 1 0.98695991861678023 6 0.013040081383219833
		3 1 0.99750989675521851 2 0.0011733760719174256 14 0.0013167271728640685
		3 1 0.97922726219956224 10 0.0065508655973856777 20 0.014221872203052044
		3 1 0.93602546930403063 19 0.012961454689502716 20 0.051013076006466616
		3 1 0.83650895115230239 19 0.048931874334812164 20 0.11455917451288548
		3 1 0.75558711182437677 14 0.22483879547454574 15 0.019574092701077461
		3 1 0.32564735153610791 14 0.62841629981994629 15 0.04593634864394578
		3 1 0.89622769408180147 14 0.10233932733535767 15 0.0014329785828409063
		3 1 0.96116420055836682 6 0.031466951713857563 10 0.0073688477277755737
		3 1 0.95944476925915267 2 0.03750063099751088 10 0.0030545997433364391
		3 1 0.98291171628530138 6 0.0071179055840242308 10 0.0099703781306743622
		3 1 0.97120743751042615 19 0.0035714253317564726 20 0.025221137157817416
		3 1 0.97895292253074173 10 0.013530468430100608 20 0.007516609039157629
		3 1 0.0040478467892077234 14 0.99249422550201416 15 0.0034579277087781165
		3 1 0.0028545508969664989 14 0.99414831399917603 15 0.0029971351038574753
		3 1 0.011902587565672286 14 0.98353689908981323 15 0.0045605133445144816
		3 1 0.48948553907655773 19 0.10960715264081955 20 0.40090730828262272
		4 1 0.58307400296718737 14 0.40728126258805142 15 0.0013986310211081534 
		19 0.0082461034236530686
		3 1 0.31963531109931792 14 0.6724803497680355 15 0.0078843391326465836
		2 1 0.79708267829110369 14 0.20291732170889626
		3 1 0.95917554033104768 14 0.034229820397454563 20 0.0065946392714977264
		3 1 0.9072497272369423 14 0.091329652749098003 20 0.0014206200139597058
		3 1 0.98653218528408337 19 0.0045895935036242008 20 0.008878221212292434
		3 1 0.92249424142163428 19 0.032684799283742905 20 0.044820959294622868
		3 1 0.96231375457342561 19 0.017272362485527992 20 0.020413882941046377
		3 1 0.26778789971612932 14 0.73015481609881872 15 0.0020572841850520457
		3 1 0.25128124859489781 14 0.74710513793943034 15 0.0016136134656718388
		3 1 0.29871697805161068 14 0.69779150491967878 15 0.0034915170287104359
		3 1 0.021130127589255226 14 0.97306501865386963 15 0.0058048537568751446
		3 1 0.29900037768247684 14 0.67926633358001709 15 0.021733288737506053
		3 1 0.83629484755560257 2 0.021579814128433638 14 0.14212533831596375
		3 1 0.93926653741326671 10 0.0025409609079360962 14 0.058192501678797137
		3 1 0.99234081950338215 10 0.005969731660358339 20 0.0016894488362595439
		3 1 0.98051303869390538 19 0.0041634635999798775 20 0.015323497706114722
		3 1 0.0080724059380531069 14 0.98925262689590454 15 0.0026749671660423525
		3 1 0.0057349674589446589 14 0.99124252796173096 15 0.0030225045793243845
		3 1 0.93732302667188816 19 0.016876121982932091 20 0.045800851345179777
		3 1 0.98388531295558312 10 0.0051255808211863041 14 0.010989106223230599
		3 1 0.71416145850449708 14 0.27476138799905875 15 0.011077153496444225
		3 1 0.32361153805665072 19 0.39910202180930082 20 0.27728644013404846
		3 1 0.50812536894416183 19 0.21180878579616547 20 0.28006584525967271
		3 1 0.34917044135801262 19 0.36840811371803284 20 0.28242144492395455
		3 1 0.37521391487583483 19 0.35416561984553963 20 0.27062046527862549
		3 1 0.21523589684663441 19 0.24774673581123352 20 0.53701736734213201
		3 1 0.084811823754133236 19 0.33511346578598022 20 0.58007471045988657
		3 1 0.060653533445164658 19 0.37954866886138916 20 0.55979779769344618
		3 1 0.15146516540887381 19 0.339644444195008 20 0.50889039039611816
		3 0 0.0026412084168765449 1 0.99565047025680542 19 0.0017083213263180347
		3 1 0.86348688128266637 19 0.11384131759405136 20 0.022671801123282282
		3 0 0.0018568926025182009 1 0.9851987600445089 19 0.012944347352972924
		3 1 0.88199812905874331 19 0.1088336706161499 20 0.0091682003251067623
		3 1 0.81583446947625748 19 0.16383230686187744 20 0.020333223661865057
		3 1 0.55602737099454014 19 0.31288579106330872 20 0.13108683794215115
		2 1 0.89033232792271766 19 0.10966767207728235
		3 1 0.68075892984902853 19 0.26428288221359253 20 0.05495818793737893
		2 0 0.0047706027685433779 1 0.99522939723145665
		2 0 0.002209032777449898 1 0.99779096722255012
		1 1 1
		3 0 0.0046845641918480396 1 0.94507104249889595 14 0.050244393309255987
		3 0 0.0033702082000672817 1 0.88773584106271441 14 0.10889395073721833
		1 1 1
		3 0 0.0023268032819032669 1 0.9926140181168599 14 0.0050591786012368217
		3 0 0.0020834244787693024 1 0.99237331258976325 14 0.0055432629314674034
		2 0 0.0019976436677202618 1 0.99800235633227974
		3 0 0.0044106114655733109 1 0.98516417448980931 19 0.010425214044617338
		3 0 0.0024680071510374546 1 0.99372058525802764 19 0.0038114075909348576
		3 0 0.0038370015099644661 1 0.50545189981924799 14 0.49071109867078749
		3 0 0.0015016017714515328 1 0.99683448815644526 14 0.0016639100721032492
		3 0 0.0053165340796113014 1 0.48306326043597692 14 0.51162020548441178
		3 1 0.88275002057804153 19 0.10495864599943161 20 0.012291333422526873
		3 1 0.77518212717362012 19 0.18661738932132721 20 0.038200483505052674
		3 1 0.015656578733413733 14 0.97962111057078904 15 0.004722310695797205
		3 1 0.019044402749490964 14 0.97656184434890747 15 0.0043937529016015633
		3 1 0.98810478199468577 6 0.0070975623819080867 10 0.0047976556234061718
		3 1 0.99060457944869995 2 0.0055723742302360062 14 0.0038230463210640435
		3 1 0.43570410857010272 14 0.55237469649471804 15 0.011921194935179222
		3 1 0.12301520379427995 14 0.86737009924022179 15 0.0096146969654983105
		3 1 0.015958682398692071 14 0.9802704991792448 15 0.0037708184220632047
		3 1 0.99184031918328475 6 0.0022990727456264114 10 0.0058606080710887909
		2 1 0.99466618330323497 6 0.0053338166967649824
		3 1 0.96641838550567627 2 0.0065689504416374328 14 0.027012664052686298
		3 1 0.0095268698331123121 14 0.9873544267922485 15 0.0031187033746391535
		3 1 0.98969847790067444 6 0.0054447987386082091 10 0.0048567233607172966
		3 1 0.99339598417282104 2 0.002361183176042031 6 0.0042428326511369241
		3 1 0.84383443108001799 2 0.0042690853588283062 14 0.15189648356115376
		3 1 0.97746920739465015 19 0.020722756162285805 20 0.0018080364430640653
		3 1 0.92575945941876014 19 0.056662183254957199 20 0.017578357326282695
		3 1 0.82951823679215897 19 0.10818349570035934 20 0.062298267507481658
		3 1 0.39105607744058452 19 0.23234982788562775 20 0.37659409467378779
		3 1 0.65951074364432927 19 0.17641045153141022 20 0.16407880482426054
		3 1 0.3461908559441797 19 0.38880988955497742 20 0.26499925450084283
		3 1 0.62072440426775755 19 0.25516462326049805 20 0.12411097247174439
		3 1 0.83826578739736901 19 0.057772219181060791 20 0.10396199342157024
		3 1 0.70648873065801432 19 0.10766227543354034 20 0.18584899390844534
		3 1 0.8283799336165879 19 0.14853659272193909 20 0.023083473661473054
		3 1 0.86849846760865013 19 0.074334003031253815 20 0.057167529360096038
		3 1 0.8441252062708251 19 0.14013563096523285 20 0.015739162763942088
		3 1 0.82990676706314437 19 0.12532967329025269 20 0.044763559646602898
		3 1 0.70206705022573968 19 0.15989585220813751 20 0.13803709756612281
		3 1 0.58473189798875269 19 0.28743171068148199 20 0.12783639132976532
		3 1 0.68915566380965232 19 0.25602501630783081 20 0.05481931988251687
		3 1 0.7208322916783455 19 0.24858216941356659 20 0.030585538908087875
		3 1 0.84302115041450509 19 0.061145052313804626 20 0.095833797271690307
		3 1 0.10723336470417144 19 0.10939555615186691 20 0.78337107914396165
		3 1 0.17152614166295066 19 0.085513167083263397 20 0.74296069125378594
		3 1 0.22246289833524441 19 0.088405869901180267 20 0.68913123176357527
		3 1 0.22186405129483741 19 0.13311119377613068 20 0.64502475492903188
		3 1 0.020438633281928822 19 0.15416398644447327 20 0.82539738027359788
		3 1 0.0038574030591217953 19 0.21198537945747375 20 0.7841572174834045
		3 1 0.001722705452989945 19 0.22908094525337219 20 0.76919634929363789
		3 1 0.0022609909325912755 19 0.23480740189552307 20 0.76293160717188568
		3 1 0.0032988106645968841 19 0.22029715776443481 20 0.77640403157096827
		3 1 0.13567345364833824 19 0.23990200459957123 20 0.6244245417520905
		3 1 0.061344967421920638 19 0.47678007072505202 20 0.46187496185302734
		2 1 0.75571050780644033 14 0.24428949219355967
		3 1 0.48875039973434536 14 0.50410087155971195 19 0.0071487287059426308
		3 1 0.8010486717457751 14 0.19392939571935144 19 0.0050219325348734856
		3 1 0.91283129441140498 14 0.058722977465407 19 0.028445728123188019
		3 1 0.87457042120823891 14 0.07955296031703922 19 0.045876618474721909
		3 1 0.91651755763535714 19 0.041190307587385178 20 0.04229213477725767
		3 0 0.002805998781695962 1 0.52754711794199471 14 0.46964688327630932
		3 0 0.0016297063557431102 1 0.4893540859794136 14 0.50901620766484323
		3 0 0.0031601089482893928 1 0.48798843105629952 14 0.50885145999541104
		3 1 0.95517516136169434 19 0.043255757719420786 20 0.0015690809188848758
		3 1 0.0052299851010178854 19 0.2335074245929718 20 0.76126259030601029
		3 1 0.3087171737120068 19 0.39743292331695557 20 0.29384990297103769
		3 1 0.064822690613491218 19 0.42677745223045349 20 0.50839985715605529
		3 1 0.25903262453238901 19 0.41019296646118164 20 0.33077440900642929
		3 1 0.12593078074976172 19 0.37175589799880981 20 0.50231332125142847
		3 1 0.0030811321475431594 19 0.22625760734081268 20 0.77066126051164419
		3 1 0.82050728520049787 19 0.1671728640794754 20 0.012319850720026691
		2 1 0.66546765268785535 19 0.27580249309539795;
	setAttr ".wl[622:821].w"
		1 20 0.058729854216746716
		3 1 0.019029608420543444 19 0.26736155152320862 20 0.71360884005624792
		3 0 0.0035393391735851765 1 0.91314350526213151 14 0.083317155564283291
		2 0 0.0011511651485344397 1 0.99884883485146558
		1 1 1
		3 0 0.0015160926863393861 1 0.99590212106704712 14 0.0025817862466134944
		3 0 0.0069265196619875246 1 0.98284769058227539 14 0.010225789755737083
		1 1 1
		3 0 0.0017289936433090506 1 0.99518432394764289 19 0.0030866824090480804
		2 0 0.0048728294127344078 1 0.99512717058726563
		2 0 0.0027047163278960322 1 0.99729528367210396
		1 1 1
		2 0 0.0014918574833272561 1 0.99850814251667275
		2 1 0.93834701692522438 19 0.061652983074775645
		3 1 0.89650399515359935 19 0.087663695216178894 20 0.015832309630221728
		3 1 0.022882681339979172 10 0.9537692992363479 11 0.023348019423672966
		3 1 0.017955856397747993 10 0.96280928948628741 11 0.019234854115964626
		3 1 0.02983897365629673 6 0.055951609068346363 10 0.91420941727535687
		3 1 0.022172270342707634 10 0.95876075954212903 11 0.019066970115163381
		3 1 0.087449110728409149 6 0.55654829027066011 10 0.35600259900093079
		3 1 0.034018740125863992 10 0.93375736474990845 11 0.032223895124227561
		3 1 0.016070293262600899 10 0.95567372614622481 11 0.028255980591174287
		2 14 0.61886778059781999 15 0.38113221940218006
		3 1 0.38656376747086846 10 0.61076068878173828 11 0.002675543747393273
		3 1 0.36882837500979881 10 0.62953668832778931 11 0.001634936662411871
		3 1 0.43355696048506015 2 0.56542807817459106 6 0.0010149613403488112
		2 1 0.47292727964801945 6 0.52707272035198049
		3 1 0.45687814959143463 6 0.39514168194676569 10 0.14798016846179962
		3 2 0.021515365689992905 14 0.5513506289028125 15 0.42713400540719465
		3 1 0.26153779029846191 6 0.0042965528965409842 10 0.73416565680499712
		3 1 0.50024531240506431 2 0.49859783053398132 15 0.0011568570609544
		2 1 0.32431997326916956 10 0.67568002673083039
		2 14 0.58453611316178744 15 0.41546388683821256
		2 2 0.35710257879682461 15 0.64289742120317539
		2 1 0.38698876295878554 2 0.61301123704121441
		3 1 0.53578408237025399 2 0.0086609554715428444 6 0.45555496215820312
		3 1 0.48327929032969358 6 0.50660359859466553 10 0.0101171110756409
		3 2 0.0017322354157865906 14 0.57674166037240615 15 0.42152610421180725
		3 1 0.43297249080089073 2 0.24087557195278664 6 0.32615193724632263
		3 1 0.21646331250667572 6 0.06288418419525206 10 0.72065250329807218
		3 1 0.48899802576404411 2 0.4281749649753015 6 0.082827009260654449
		3 1 0.37678827060461673 2 0.62195181846618652 15 0.0012599109291967369
		3 1 0.2531562700677335 6 0.23891076894517543 10 0.50793296098709106
		3 2 0.13888265192508698 14 0.49874939908942445 15 0.36236794898548863
		2 14 0.62248044411111081 15 0.37751955588888914
		3 1 0.07424317523185589 6 0.3697324521904769 10 0.55602437257766724
		3 1 0.17073224815252994 2 0.3123065945255401 6 0.51696115732192993
		2 1 0.029682849747789567 2 0.97031715025221044
		2 1 0.017380174426684228 2 0.98261982557331573
		3 1 0.0075346175581216812 2 0.98668670310126705 3 0.0057786793406113162
		2 1 0.015815906589764832 2 0.98418409341023516
		3 1 0.28451593872662229 2 0.57534597161654788 6 0.14013808965682983
		3 1 0.013950144872069359 2 0.98402352035611329 3 0.0020263347718173785
		3 1 0.014069095857666141 2 0.70916837453842163 15 0.27676252960391223
		3 14 0.030732788145542145 15 0.950627288252342 16 0.018639923602115808
		2 14 0.032750186525909504 15 0.96724981347409045
		2 14 0.063552104757157959 15 0.936447895242842
		3 14 0.050615016371011734 15 0.94794759631247227 16 0.0014373873165160328
		3 14 0.07892773300409317 15 0.9170434037042815 16 0.0040288632916252948
		2 14 0.054120446724897672 15 0.94587955327510231
		2 6 0.68420883070127936 7 0.31579116929872064
		3 1 0.0041008349508047104 6 0.064584512618015386 7 0.93131465243117995
		2 6 0.012587583114057379 7 0.98741241688594261
		2 6 0.65855776387534448 7 0.34144223612465546
		3 1 0.0083332674864516672 20 0.10308494418859482 21 0.88858178832495349
		3 1 0.01957094439477108 20 0.72764992943793161 21 0.25277912616729736
		3 1 0.0010676089592071211 20 0.79004767500685735 21 0.20888471603393555
		3 1 0.0090310442887652082 20 0.092291487411369069 21 0.89867746829986572
		3 6 0.015835800681782371 7 0.98252904415130615 8 0.0016351551669114772
		2 6 0.60328780207021515 7 0.3967121979297849
		3 6 0.03939267504210206 7 0.95690953731536865 8 0.0036977876425292868
		2 6 0.63970611483478956 7 0.36029388516521044
		3 15 0.001152639175160883 16 0.82838839292526245 17 0.17045896789957665
		3 16 0.16029572486877441 17 0.83867603249192724 18 0.0010282426392983536
		2 16 0.14115830303508076 17 0.8588416969649193
		3 15 0.001624431159983289 16 0.83338236808776855 17 0.16499320075224816
		3 16 0.13331730663776398 17 0.86502176044412615 18 0.0016609329181099209
		2 16 0.83556271892396672 17 0.16443728107603325
		3 16 0.18416695296764374 17 0.81389463152030939 18 0.0019384155120469088
		3 15 0.0010538996294414016 16 0.87468862533569336 17 0.12425747503486524
		2 16 0.91401069810480418 17 0.085989301895195783
		3 16 0.10563783347606659 17 0.89228064724555323 18 0.0020815192783801757
		2 2 0.75290421744423952 3 0.24709578255576045
		2 2 0.14881636013974336 3 0.85118363986025669
		2 2 0.75551284008160169 3 0.24448715991839828
		2 2 0.19466030242843338 3 0.80533969757156665
		3 2 0.76942294112578113 3 0.22922024130821228 16 0.0013568175660066174
		3 2 0.20147729248846699 3 0.78857403993606567 4 0.0099486675754673348
		2 2 0.16534119058452346 3 0.83465880941547654
		2 2 0.75212761599187572 3 0.24787238400812422
		3 1 0.43104526400566101 6 0.56083314354763847 10 0.0081215924467004704
		2 1 0.11319176741097957 6 0.88680823258902042
		3 1 0.41103842854499817 6 0.53740154341232882 10 0.051560028042672998
		3 1 0.10004650056362152 6 0.89097766704353143 10 0.008975832392847093
		3 10 0.21378438419156082 11 0.7030479907989502 12 0.083167625009489002
		2 10 0.71924155181941263 11 0.28075844818058732
		3 10 0.24611939429645613 11 0.70061761140823364 12 0.053262994295310208
		2 10 0.73869258548158978 11 0.26130741451841016
		3 1 0.13983715022554699 6 0.28959118877896961 10 0.5705716609954834
		3 1 0.42543399454563785 6 0.18915888546496706 10 0.38540711998939514
		3 1 0.46774570433500812 6 0.3797327301084657 10 0.15252156555652618
		3 1 0.10053289900909254 6 0.0099859141241472101 10 0.88948118686676025
		1 10 1
		3 1 0.14257942906752863 2 0.85154432058334351 3 0.0058762503491278737
		3 1 0.44066483298674075 2 0.53999835252761841 6 0.019336814485640848
		3 1 0.37567066428029172 2 0.61323434114456177 6 0.011094994575146493
		3 1 0.15445774419986047 2 0.84086275100708008 3 0.0046795047930594438
		2 20 0.79619829843792267 21 0.2038017015620773
		3 1 0.0054265515975058694 20 0.15766212771615379 21 0.83691132068634033
		2 20 0.79976914440101043 21 0.20023085559898962
		2 20 0.15338286612329105 21 0.846617133876709
		2 20 0.21730929996452802 21 0.78269070003547203
		2 20 0.69341413610358882 21 0.30658586389641118
		3 10 0.17337333909987163 11 0.75750857591629028 12 0.069118084983838091
		3 10 0.71364824752268297 11 0.28073862195014954 12 0.0056131305271675015
		3 10 0.80217750082081529 11 0.19532549381256104 12 0.0024970053666236881
		3 10 0.14378366472772841 11 0.82167106866836548 12 0.034545266603906111
		3 1 0.4575362503528595 2 0.0022631532604308817 6 0.54020059638670959
		2 1 0.11661970350045411 6 0.88338029649954586
		3 10 0.74266793225235617 11 0.25580954551696777 12 0.0015225222306760862
		3 10 0.17526093134828677 11 0.73137587308883667 12 0.093363195562876547
		2 1 0.059763294325455817 10 0.9402367056745442
		1 10 1
		2 1 0.045682185412514488 10 0.95431781458748555
		1 10 1
		2 6 0.7315364940654171 7 0.2684635059345829
		3 6 0.15177354166249632 7 0.83686387538909912 8 0.011362582948404571
		3 1 0.15183570981025696 6 0.73570864036256234 10 0.11245564982718073
		2 1 0.1056347449665798 6 0.89436525503342024
		3 1 0.48569536209106445 2 0.0020246932280890612 6 0.51227994468084648
		3 1 0.023850523734090859 10 0.96307224035263062 11 0.013077235913278522
		2 1 0.050623100993818254 10 0.94937689900618172
		3 14 0.062822520732879639 15 0.92668637356561667 16 0.010491105701503703
		3 1 0.018629027210954684 14 0.29421988129615784 15 0.68715109149288744
		3 14 0.32423204183578491 15 0.673522347831359 16 0.0022456103328561106
		2 14 0.088394455747556541 15 0.91160554425244344
		3 2 0.78768526784984827 14 0.0064566135406494141 15 0.20585811860950232
		3 2 0.43102819979577517 14 0.15025167167186737 15 0.41872012853235752
		3 1 0.26123865700251331 2 0.59246162318700091 14 0.14629971981048584
		3 1 0.152330691092988 2 0.82909004752955817 14 0.018579261377453804
		3 1 0.39769583262640334 2 0.57785463333129883 14 0.024449534042297813
		3 1 0.20374181918943152 2 0.77362591028213501 15 0.022632270528433467
		2 14 0.14525652459807792 15 0.85474347540192208
		2 14 0.45106320708615427 15 0.54893679291384567
		2 14 0.32518092893794309 15 0.67481907106205685
		2 14 0.10191497326415135 15 0.89808502673584867
		2 14 0.30319361833556946 15 0.69680638166443054
		2 14 0.085255542439692134 15 0.91474445756030787
		3 2 0.19546263384779036 3 0.79330170154571533 4 0.011235664606494297
		2 2 0.78814802613688828 3 0.21185197386311172
		3 11 0.28895246982574463 12 0.70705134508577949 13 0.0039961850884758666
		2 11 0.63173811600566154 12 0.3682618839943384
		3 11 0.29009050130844116 12 0.70394806193309367 13 0.0059614367584652191
		2 11 0.63358036224389225 12 0.36641963775610775
		3 11 0.2968997061252594 12 0.70082290809341474 13 0.0022773857813258849
		2 11 0.6520185290147853 12 0.34798147098521465
		2 11 0.68868752099660957 12 0.31131247900339054
		3 11 0.30942633748054504 12 0.68237982623265836 13 0.0081938362867966033
		2 11 0.66503227670910292 12 0.33496772329089713
		3 11 0.27340653538703918 12 0.71050416165568053 13 0.016089302957280293
		2 7 0.67057482134122692 8 0.32942517865877313
		3 7 0.25092190504074097 8 0.74621053888584199 9 0.002867556073417054
		3 7 0.27224019169807434 8 0.72608559840342723 9 0.0016742098984983782
		2 7 0.69010405622594129 8 0.30989594377405866
		3 7 0.30110001564025879 8 0.69745543032935797 9 0.001444554030383186
		2 7 0.73969317688446379 8 0.26030682311553632
		3 7 0.30501413345336914 8 0.69262273710561406 9 0.0023631294410167663
		2 7 0.75884934223490852 8 0.24115065776509156
		2 7 0.73511368049856363 8 0.26488631950143637
		3 7 0.26543641090393066 8 0.72881186982949375 9 0.0057517192665755635
		2 3 0.62064786016009232 4 0.37935213983990773
		3 3 0.10672891192551555 4 0.89018523693084717 5 0.0030858511436372858
		2 3 0.68183185885926534 4 0.31816814114073466
		3 3 0.20528414370636633 4 0.79203283786773682 5 0.0026830184258968622
		2 3 0.70526516894836055 4 0.29473483105163945
		3 3 0.25065087239256595 4 0.74592608213424683 5 0.0034230454731871986
		3 3 0.056266641513274818 4 0.94160234928131104 5 0.002131009205414145
		2 3 0.74878085644036385 4 0.25121914355963615
		3 3 0.24956758862024628 4 0.74564510583877563 5 0.0047873055409780683
		2 3 0.7011005371634963 4 0.29889946283650376
		2 15 0.84684837858712825 16 0.15315162141287178
		3 15 0.2148914244775415 16 0.78032451868057251 17 0.0047840568418859785
		3 15 0.17902098687578424 16 0.81922930479049683 17 0.0017497083337189416
		2 15 0.86866739995404141 16 0.13133260004595862
		3 15 0.88382405042648315 16 0.11364550635365196 17 0.0025304432198648853
		3 15 0.11715200543403625 16 0.86676977872946614 17 0.016078215836497649
		3 15 0.053593866527080536 16 0.93994705083652663 17 0.0064590826363928253
		3 15 0.93775355815887451 16 0.061015489571863764 17 0.0012309522692617225
		2 15 0.070679010725588395 16 0.92932098927441165
		3 15 0.86002355813980103 16 0.1386376884342575 17 0.0013387534259414703
		2 0 0.0089032029945172574 1 0.9910967970054827
		1 1 1
		2 0 0.0015104118583039164 1 0.99848958814169608
		2 0 0.010730515398117181 1 0.9892694846018828
		2 0 0.0056926417255124479 1 0.99430735827448757
		2 0 0.002887482537615056 1 0.99711251746238494
		1 1 1
		1 1 1
		1 1 1
		2 0 0.0066978118461400353 1 0.99189609289169312;
	setAttr ".wl[821:840].w"
		1 14 0.0014060952621668501
		1 1 1
		2 0 0.0033651492698367788 1 0.99663485073016322
		1 1 1
		1 1 1
		2 0 0.003221213100859978 1 0.99677878689914001
		1 1 1
		2 0 0.0024604255994167545 1 0.99753957440058327
		2 0 0.0015505435760302974 1 0.99844945642396976
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		2 0 0.0012006299425990686 1 0.99879937005740094
		1 1 1
		1 1 1
		2 0 0.0029432880458347176 1 0.99705671195416534
		1 1 1;
	setAttr -s 25 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.35504799999999997 -0.71489800000000003 0.60238000000000003 0
		 -0.93119200000000002 -0.21351899999999999 0.29545100000000002 0 -0.082597599999999993 -0.66583099999999995 -0.74151699999999998 0
		 4.6017580000000002 -4.9964930000000001 -5.6954549999999999 1;
	setAttr ".pm[1]" -type "matrix" -0.25976399999999999 0.94508000000000003 0.19835900000000001 0
		 0.0144429 -0.20158499999999999 0.97936500000000004 0 0.96556399999999998 0.257268 0.038714800000000001 0
		 6.3912300000000002 4.5101000000000004 -4.1701930000000003 1;
	setAttr ".pm[2]" -type "matrix" 0.35542800000000002 -0.19107399999999999 0.91496500000000003 0
		 0.16999400000000001 0.97577199999999997 0.137736 0 -0.91911500000000002 0.106584 0.37929800000000002 0
		 2.0034329999999998 -6.4648199999999996 3.6265510000000001 1;
	setAttr ".pm[3]" -type "matrix" 0.25023499999999999 -0.31657600000000002 0.91496500000000003 0
		 0.54373700000000003 0.82787599999999995 0.137736 0 -0.80108199999999996 0.463034 0.37929800000000002 0
		 2.809151 -8.2613310000000002 3.626563 1;
	setAttr ".pm[4]" -type "matrix" 0.193747 -0.35397800000000001 0.91496500000000003 0
		 0.67457400000000001 0.725244 0.137736 0 -0.71232899999999999 0.590526 0.37929800000000002 0
		 3.9286919999999999 -9.0460899999999995 3.6265369999999999 1;
	setAttr ".pm[5]" -type "matrix" 0.193747 -0.35397800000000001 0.91496500000000003 0
		 0.67457400000000001 0.725244 0.137736 0 -0.71232899999999999 0.590526 0.37929800000000002 0
		 6.3501120000000002 -9.0460860000000007 3.6265350000000001 1;
	setAttr ".pm[6]" -type "matrix" 0.21241499999999999 0.011309700000000001 0.97711400000000004 0
		 0.153946 0.98705900000000002 -0.044891300000000002 0 -0.96497699999999997 0.15995899999999999 0.207925 0
		 1.612282 -6.1027459999999998 2.8251080000000002 1;
	setAttr ".pm[7]" -type "matrix" 0.194017 -0.087211200000000003 0.97711400000000004 0
		 0.588835 0.80700499999999997 -0.044891300000000002 0 -0.78462100000000001 0.58406899999999995 0.207925 0
		 2.7253370000000001 -8.2684660000000001 2.8251119999999998 1;
	setAttr ".pm[8]" -type "matrix" 0.18089 -0.111924 0.97711400000000004 0 0.68967299999999998 0.72272800000000004 -0.044891300000000002 0
		 -0.70116299999999998 0.68200899999999998 0.207925 0 4.5498070000000004 -8.9430680000000002 2.8251179999999998 1;
	setAttr ".pm[9]" -type "matrix" 0.18089 -0.111924 0.97711400000000004 0 0.68967299999999998 0.72272800000000004 -0.044891300000000002 0
		 -0.70116299999999998 0.68200899999999998 0.207925 0 7.1967590000000001 -8.9431080000000005 2.8250989999999998 1;
	setAttr ".pm[10]" -type "matrix" 0.074233099999999996 0.26099800000000001 0.96248100000000003 0
		 0.24887300000000001 0.92975699999999994 -0.27131899999999998 0 -0.96568699999999996 0.25967699999999999 0.0040633700000000002 0
		 0.89532199999999995 -5.0465730000000004 1.906787 1;
	setAttr ".pm[11]" -type "matrix" 0.164602 0.215723 0.96248100000000003 0 0.57187600000000005 0.774173 -0.27131899999999998 0
		 -0.80365600000000004 0.59508000000000005 0.0040633700000000002 0 2.8553540000000002 -6.5456459999999996 1.9068259999999999 1;
	setAttr ".pm[12]" -type "matrix" 0.18909899999999999 0.194606 0.96248100000000003 0
		 0.65992499999999998 0.70063200000000003 -0.27131899999999998 0 -0.72714500000000004 0.68647199999999997 0.0040633700000000002 0
		 4.2558319999999998 -7.1024339999999997 1.9068290000000001 1;
	setAttr ".pm[13]" -type "matrix" 0.18909899999999999 0.194606 0.96248100000000003 0
		 0.65992499999999998 0.70063200000000003 -0.27131899999999998 0 -0.72714500000000004 0.68647199999999997 0.0040633700000000002 0
		 7.1680099999999998 -7.1024599999999998 1.906725 1;
	setAttr ".pm[14]" -type "matrix" -0.482101 0.32963700000000001 0.81173700000000004 0
		 -0.00234586 -0.92700099999999996 0.37505100000000002 0 0.876112 0.17890800000000001 0.447681 0
		 1.888482 6.2570509999999997 4.2695800000000004 1;
	setAttr ".pm[15]" -type "matrix" 0.423346 -0.42587700000000001 0.79962900000000003 0
		 0.23306399999999999 0.90411300000000006 0.35813400000000001 0 -0.87547699999999995 0.034750400000000001 0.48200900000000002 0
		 2.015571 -7.0942189999999998 4.1110530000000001 1;
	setAttr ".pm[16]" -type "matrix" 0.26213900000000001 -0.54025599999999996 0.79962900000000003 0
		 0.51398200000000005 0.77946300000000002 0.35813400000000001 0 -0.81676499999999996 0.31711400000000001 0.48200900000000002 0
		 2.7579229999999999 -8.4473230000000008 4.1110220000000002 1;
	setAttr ".pm[17]" -type "matrix" 0.21026 -0.56247999999999998 0.79962900000000003 0
		 0.58489100000000005 0.72776600000000002 0.35813400000000001 0 -0.78338600000000003 0.39239499999999999 0.48200900000000002 0
		 3.6868259999999999 -8.8324200000000008 4.111103 1;
	setAttr ".pm[18]" -type "matrix" 0.21026 -0.56247999999999998 0.79962900000000003 0
		 0.58489100000000005 0.72776600000000002 0.35813400000000001 0 -0.78338600000000003 0.39239499999999999 0.48200900000000002 0
		 5.6309329999999997 -8.8324379999999998 4.1110340000000001 1;
	setAttr ".pm[19]" -type "matrix" -0.13872499999999999 0.96189000000000002 -0.23563400000000001 0
		 0.48933900000000002 -0.14028199999999999 -0.86073699999999997 0 -0.860989 -0.234711 -0.45123000000000002 0
		 -4.0131589999999999 -1.5753200000000001 0.40224300000000002 1;
	setAttr ".pm[20]" -type "matrix" 0.137958 0.96199999999999997 -0.23563400000000001 0
		 0.42997600000000002 -0.27249299999999999 -0.86073699999999997 0 -0.89223799999999998 0.0174284 -0.45123000000000002 0
		 -1.1680200000000001 -1.299091 0.40227099999999999 1;
	setAttr ".pm[21]" -type "matrix" 0.121159 0.96426000000000001 -0.23563400000000001 0
		 0.43466300000000002 -0.26495200000000002 -0.86073699999999997 0 -0.89240600000000003 0.00186443 -0.45123000000000002 0
		 1.4919169999999999 -1.2729509999999999 0.40224599999999999 1;
	setAttr ".pm[22]" -type "matrix" 0.121159 0.96426000000000001 -0.23563400000000001 0
		 0.43466300000000002 -0.26495200000000002 -0.86073699999999997 0 -0.89240600000000003 0.00186443 -0.45123000000000002 0
		 4.8998400000000002 -1.2729779999999999 0.40223399999999998 1;
	setAttr ".pm[23]" -type "matrix" -0.25976399999999999 0.935365 -0.24003099999999999 0
		 0.0144429 0.252299 0.96754200000000001 0 0.96556399999999998 0.247866 -0.079047400000000004 0
		 -7.2200990000000003 2.200888 -5.7347890000000001 1;
	setAttr ".pm[24]" -type "matrix" 0.44320100000000001 -0.69169000000000003 0.57020800000000005 0
		 -0.89641999999999999 -0.34054800000000002 0.28365099999999999 0 -0.0020149999999999999 -0.63685999999999998 -0.77097599999999999 0
		 3.6320399999999999 -0.68150500000000003 0.86888799999999999 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 25 ".ma";
	setAttr -s 25 ".dpf[0:24]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4;
	setAttr -s 25 ".lw";
	setAttr -s 25 ".lw";
	setAttr ".mi" 5;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
	setAttr -s 25 ".ifcl";
	setAttr -s 25 ".ifcl";
createNode dagPose -n "bindPose1";
	rename -uid "1868E849-43AE-D47B-0309-9AAB14189C18";
	setAttr -s 25 ".wm";
	setAttr -s 25 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 -2.4099219994011847 0.082691775335013554
		 -1.2065282750131123 0 -1.7749999761581421 4.9010000228881836 -7.1700000762939453 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 -8.3266726846886728e-17 0 -5.5511151231257827e-17 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.55640047299124407 0.018750937403111428 -0.76965180720134385 0.31257480972293683 1
		 1 1 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -5.5511151231257827e-17 2.7755575615628914e-17
		 -5.5511151231257827e-17 0 8.9531097412109339 -1.2713966369628906 0.18533061444759191 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.10180097943600398 0.56929920878800166 0.81520969163319279 -0.031114789514641986 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -1.110223024625157e-16 5.5511151231257839e-17
		 2.7755575615628918e-16 0 -3.8571979999542245 1.9344909114593634e-06 -1.1757956599911523e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.20290461358497638 0.97919850785524143 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -1.9428902930940239e-16 -5.5511151231257839e-17
		 1.6653345369377348e-16 0 -2.5775368213653556 2.3005763067018847e-05 2.6507696019972826e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.083943616539720087 0.99647050595701647 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.4214193820953369 -3.7899571907473728e-06
		 1.8703740352066234e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 4.163336342344336e-16 -4.4755865680201613e-16
		 -5.5511151231257815e-17 0 9.1422023773193342 0.9532635211944589 1.0838787555694562 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.033651810970388704 -0.64800881711039426 -0.75659454199909537 0.080726870264986636 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 -3.1918911957973241e-16 2.7755575615628904e-17
		 3.3306690738754691e-16 0 -4.5967020988464355 -6.4383804065926142e-08 -3.982895124376995e-06 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.23558192411222478 0.9718544937548943 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 -1.6653345369377346e-16 2.7755575615628914e-17
		 2.775557561562891e-17 0 -2.9590234756469727 -1.7799226045056571e-05 -6.361979558278108e-06 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.065775561660552817 0.99783444292539769 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.6469523906707764 4.0684230043552816e-05
		 1.9527813492459245e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 -1.2906342661267441e-15 -8.6389229103644993e-16
		 1.6653345369377351e-16 0 8.7077970504760707 3.5099971294403081 0.68147104978561135 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.010945052815995351 -0.73294134748942485 -0.66095210760655676 0.16068446847686182 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 -7.8799813896246472e-16 1.7000290064572714e-16
		 6.10622663543836e-16 0 -4.1574892997741699 -2.6226281987895561e-05 -3.8978716475623898e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.18624676479741861 0.98250299877531933 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 -8.9685203708000947e-16 2.4936649967166607e-16
		 3.3306690738754696e-16 0 -2.2152938842773433 -2.2278307371337291e-05 -3.5388047763262875e-06 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.059595889203378723 0.99822258539368791 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.9121782779693604 2.6586250896798447e-05
		 0.00010456444579176605 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 -7.2164496600635185e-16 3.4694469519536137e-16
		 -3.538835890992688e-16 0 3.1274726390838605 -1.9069268703460693 -1.1509166955947872 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.46932156704529338 0.083111494493031957 -0.086728355557106063 0.87481880325679162 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 -3.2439329000766293e-16 -1.9428902930940237e-16
		 1.6805133673525319e-18 0 5.3566212654113725 -0.24395067989826202 0.14644877612590701 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.018903390842771522 -0.0067427188449811788 -0.99286638333400301 0.1175310274033191 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 -4.163336342344337e-16 5.5511151231257827e-17
		 0 0 -3.3355846405029297 4.1931351006496698e-05 3.0447454264503904e-05 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.16458225990843306 0.98636336089872734 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 -4.1633363423443375e-16 -2.2204460492503131e-16
		 2.6367796834847468e-16 0 -1.741841912269591 -4.9037294957088307e-05 -8.0218647782182018e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.046993984558682152 0.99889517238562042 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.9441078901290894 1.8051705410471186e-05
		 6.8411703978199512e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 -8.8817841970012523e-16 1.1102230246251568e-16
		 8.4654505627668206e-16 0 2.6297216415405265 4.1471085548400879 -2.0563869476318368 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.24596230643843819 -0.94503698947379278 0.031994285534306457 0.21303520373624518 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 -5.9154070530809112e-16 4.4408920985006271e-16
		 2.7755575615628909e-16 0 -3.2585608959197998 0.00027154816780194935 -2.7681937353252195e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.1423499903111802 0.98981638714380094 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 -7.7628875549962098e-16 2.7755575615628909e-16
		 -7.9797279894933139e-17 0 -2.6375083923339835 -0.00031383399618833963 2.4626075174005724e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.0087207455487502503 0.99996197357553251 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.4079234600067139 2.7444757506600581e-05
		 1.2232365406816825e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 13.611329078674316 3.9665923395659775e-05
		 6.8139714130666107e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.227042483597305 0 0 0.97388485491970123 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 -0.045048518326909925 -0.0036214897255196395
		 -0.12442057250730487 0 7.3354516029357875 1.5777478218078613 -1.9518849849700941 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.55640047299124396 -0.018750937403111845 0.76965180720134374 0.31257480972293672 1
		 1 1 yes;
	setAttr -s 25 ".m";
	setAttr -s 25 ".p";
	setAttr ".bp" yes;
createNode displayLayer -n "R_Geo_Layer";
	rename -uid "2D7558F5-4FCD-7024-C761-F4BA232CFA2A";
	setAttr ".dt" 2;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 1;
createNode displayLayer -n "R_Skeleton_Layer";
	rename -uid "761F5CF5-4BD8-59E8-ED85-B58B02C5921D";
	setAttr ".v" no;
	setAttr ".c" 14;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 2;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "5A19429A-4660-10D8-3AF5-59BD36279EC6";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1202\n            -height 850\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n"
		+ "            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n"
		+ "            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n"
		+ "                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1202\\n    -height 850\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1202\\n    -height 850\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "568FC885-4B0A-23D4-6CAF-119688DCA00E";
	setAttr ".b" -type "string" "playbackOptions -min 201 -max 300 -ast 201 -aet 300 ";
	setAttr ".st" 6;
createNode shadingEngine -n "hands1:RhandSG";
	rename -uid "4BC819DD-42E8-4813-1387-2C9754B0DC0E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo1";
	rename -uid "ABF95256-4B68-3CD4-95C4-F58E36C1E24D";
createNode shadingEngine -n "hands2:RhandSG";
	rename -uid "E9E6A0F7-4098-F6A4-5773-DF979653D072";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo2";
	rename -uid "1C074E98-41C2-2B38-C3E7-E6A0A850932A";
createNode shadingEngine -n "hands3:RhandSG";
	rename -uid "86FFE5C0-4410-BD89-7439-0D9690CC251F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__materialInfo1";
	rename -uid "586C0FED-43BA-C33C-0D8A-D8AC7BA9AF3F";
createNode shadingEngine -n "hands4:RhandSG";
	rename -uid "918EF635-4A02-0301-D36E-E181B6760694";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo3";
	rename -uid "5DFE8C35-4F59-E2E1-051E-D1B3785BB483";
createNode shadingEngine -n "hands5:RhandSG";
	rename -uid "BA244D17-44EC-A321-0629-188EF3C80E62";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__materialInfo2";
	rename -uid "30538A1F-4FA1-5832-FB88-4DB0451395AF";
createNode phong -n "unnamed1";
	rename -uid "6A8BE3A8-4DF7-C05F-C476-509B557B9643";
	setAttr ".c" -type "float3" 0.52447551 0.52447551 0.52447551 ;
	setAttr ".rfl" 1;
	setAttr ".cp" 12.300000190734863;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "09164425-4930-743A-4FBC-E6818853C693";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -622.61902287839052 -402.3809363917706 ;
	setAttr ".tgi[0].vh" -type "double2" 1083.3332902855361 432.14283997104354 ;
	setAttr ".tgi[0].ni[0].x" 135.71427917480469;
	setAttr ".tgi[0].ni[0].y" 197.14285278320312;
	setAttr ".tgi[0].ni[0].nvs" 1923;
createNode displayLayer -n "R_Control_Layer";
	rename -uid "F8AB3F80-4AA9-85CC-4F65-F28EDAC4A2C8";
	setAttr ".v" no;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 3;
createNode phong -n "unnamed2";
	rename -uid "ADC16821-4DF1-2CC8-23F9-7DB8234F1DDB";
	setAttr ".c" -type "float3" 0.52447551 0.52447551 0.52447551 ;
	setAttr ".rfl" 1;
	setAttr ".cp" 12.300000190734863;
createNode shadingEngine -n "hands:LhandSG";
	rename -uid "F90B3B52-4102-D3B2-E1FB-D0852DC04C9D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "B17B8B5C-4ED4-1794-B98B-DE982B7BEDD5";
createNode animCurveTL -n "b_l_grip_translateX";
	rename -uid "660818DA-416A-349C-A5DD-E1A07E6D927F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 121 ".ktv[0:120]"  0 -7.2159080505371094 1 -7.3355369567871094
		 2 -7.6176490783691406 3 -7.9062948226928711 4 -8.2001686096191406 5 -8.4979629516601562
		 6 -8.798370361328125 7 -9.1000843048095703 8 -9.4017982482910156 9 -9.7022066116333008
		 10 -10 11 -10 12 -10 13 -10 14 -10 15 -10 16 -10 17 -10 18 -10 19 -10 20 -10 21 -10
		 22 -10 23 -10 24 -10 25 -10 26 -10 27 -10 28 -10 29 -10 30 -10 31 -10 32 -10 33 -10
		 34 -10 35 -10 36 -10 37 -10 38 -10 39 -10 40 -10 41 -10 42 -10 43 -10 44 -10 45 -10
		 46 -10 47 -10 48 -10 49 -10 50 -10 51 -10 52 -10 53 -10 54 -10 55 -10 56 -10 57 -10
		 58 -10 59 -10 60 -10 61 -10 62 -10 63 -10 64 -10 65 -10 66 -10 67 -10 68 -10 69 -10
		 70 -10 71 -10 72 -10 73 -10 74 -10 75 -10 76 -10 77 -10 78 -10 79 -10 80 -10 81 -10
		 82 -10 83 -10 84 -10 85 -10 86 -10 87 -10 88 -10 89 -10 90 -10 91 -10 92 -10 93 -10
		 94 -10 95 -10 96 -10 97 -10 98 -10 99 -10 100 -10 101 -10 102 -10 103 -10 104 -10
		 105 -10 106 -10 107 -10 108 -10 109 -10 110 -10 111 -10 112 -10 113 -10 114 -10 115 -10
		 116 -10 117 -10 118 -10 119 -10 120 -10;
	setAttr -s 121 ".kit[0:120]"  18 18 18 18 18 18 18 18 
		18 18 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 121 ".kot[0:120]"  18 18 18 18 18 18 18 18 
		18 18 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9;
createNode animCurveTL -n "b_l_grip_translateY";
	rename -uid "FCC1358A-4280-9B60-F8B6-5F99EF887258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 121 ".ktv[0:120]"  0 -1.3962129354476929 1 -1.5777467489242554
		 2 -2.0058441162109375 3 -2.443856954574585 4 -2.8898022174835205 5 -3.3416967391967773
		 6 -3.7975571155548096 7 -4.2554006576538086 8 -4.7132444381713867 9 -5.1691055297851562
		 10 -5.620999813079834 11 -5.620999813079834 12 -5.620999813079834 13 -5.620999813079834
		 14 -5.620999813079834 15 -5.620999813079834 16 -5.620999813079834 17 -5.620999813079834
		 18 -5.620999813079834 19 -5.620999813079834 20 -5.620999813079834 21 -5.620999813079834
		 22 -5.620999813079834 23 -5.620999813079834 24 -5.620999813079834 25 -5.620999813079834
		 26 -5.620999813079834 27 -5.620999813079834 28 -5.620999813079834 29 -5.620999813079834
		 30 -5.620999813079834 31 -5.620999813079834 32 -5.620999813079834 33 -5.620999813079834
		 34 -5.620999813079834 35 -5.620999813079834 36 -5.620999813079834 37 -5.620999813079834
		 38 -5.620999813079834 39 -5.620999813079834 40 -5.620999813079834 41 -5.620999813079834
		 42 -5.620999813079834 43 -5.620999813079834 44 -5.620999813079834 45 -5.620999813079834
		 46 -5.620999813079834 47 -5.620999813079834 48 -5.620999813079834 49 -5.620999813079834
		 50 -5.620999813079834 51 -5.620999813079834 52 -5.620999813079834 53 -5.620999813079834
		 54 -5.620999813079834 55 -5.620999813079834 56 -5.620999813079834 57 -5.620999813079834
		 58 -5.620999813079834 59 -5.620999813079834 60 -5.620999813079834 61 -5.620999813079834
		 62 -5.620999813079834 63 -5.620999813079834 64 -5.620999813079834 65 -5.620999813079834
		 66 -5.620999813079834 67 -5.620999813079834 68 -5.620999813079834 69 -5.620999813079834
		 70 -5.620999813079834 71 -5.620999813079834 72 -5.620999813079834 73 -5.620999813079834
		 74 -5.620999813079834 75 -5.620999813079834 76 -5.620999813079834 77 -5.620999813079834
		 78 -5.620999813079834 79 -5.620999813079834 80 -5.620999813079834 81 -5.620999813079834
		 82 -5.620999813079834 83 -5.620999813079834 84 -5.620999813079834 85 -5.620999813079834
		 86 -5.620999813079834 87 -5.620999813079834 88 -5.620999813079834 89 -5.620999813079834
		 90 -5.620999813079834 91 -5.620999813079834 92 -5.620999813079834 93 -5.620999813079834
		 94 -5.620999813079834 95 -5.620999813079834 96 -5.620999813079834 97 -5.620999813079834
		 98 -5.620999813079834 99 -5.620999813079834 100 -5.620999813079834 101 -5.620999813079834
		 102 -5.620999813079834 103 -5.620999813079834 104 -5.620999813079834 105 -5.620999813079834
		 106 -5.620999813079834 107 -5.620999813079834 108 -5.620999813079834 109 -5.620999813079834
		 110 -5.620999813079834 111 -5.620999813079834 112 -5.620999813079834 113 -5.620999813079834
		 114 -5.620999813079834 115 -5.620999813079834 116 -5.620999813079834 117 -5.620999813079834
		 118 -5.620999813079834 119 -5.620999813079834 120 -5.620999813079834;
	setAttr -s 121 ".kit[0:120]"  18 18 18 18 18 18 18 18 
		18 18 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 121 ".kot[0:120]"  18 18 18 18 18 18 18 18 
		18 18 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9;
createNode animCurveTL -n "b_l_grip_translateZ";
	rename -uid "9C1B3C03-4F90-EE56-08F4-659DFB79BF46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 121 ".ktv[0:120]"  0 1.8992198705673218 1 1.9519331455230713
		 2 2.0762426853179932 3 2.2034316062927246 4 2.3329236507415771 5 2.4641432762145996
		 6 2.5965147018432617 7 2.7294619083404541 8 2.8624091148376465 9 2.9947803020477295
		 10 3.125999927520752 11 3.125999927520752 12 3.125999927520752 13 3.125999927520752
		 14 3.125999927520752 15 3.125999927520752 16 3.125999927520752 17 3.125999927520752
		 18 3.125999927520752 19 3.125999927520752 20 3.125999927520752 21 3.125999927520752
		 22 3.125999927520752 23 3.125999927520752 24 3.125999927520752 25 3.125999927520752
		 26 3.125999927520752 27 3.125999927520752 28 3.125999927520752 29 3.125999927520752
		 30 3.125999927520752 31 3.125999927520752 32 3.125999927520752 33 3.125999927520752
		 34 3.125999927520752 35 3.125999927520752 36 3.125999927520752 37 3.125999927520752
		 38 3.125999927520752 39 3.125999927520752 40 3.125999927520752 41 3.125999927520752
		 42 3.125999927520752 43 3.125999927520752 44 3.125999927520752 45 3.125999927520752
		 46 3.125999927520752 47 3.125999927520752 48 3.125999927520752 49 3.125999927520752
		 50 3.125999927520752 51 3.125999927520752 52 3.125999927520752 53 3.125999927520752
		 54 3.125999927520752 55 3.125999927520752 56 3.125999927520752 57 3.125999927520752
		 58 3.125999927520752 59 3.125999927520752 60 3.125999927520752 61 3.125999927520752
		 62 3.125999927520752 63 3.125999927520752 64 3.125999927520752 65 3.125999927520752
		 66 3.125999927520752 67 3.125999927520752 68 3.125999927520752 69 3.125999927520752
		 70 3.125999927520752 71 3.125999927520752 72 3.125999927520752 73 3.125999927520752
		 74 3.125999927520752 75 3.125999927520752 76 3.125999927520752 77 3.125999927520752
		 78 3.125999927520752 79 3.125999927520752 80 3.125999927520752 81 3.125999927520752
		 82 3.125999927520752 83 3.125999927520752 84 3.125999927520752 85 3.125999927520752
		 86 3.125999927520752 87 3.125999927520752 88 3.125999927520752 89 3.125999927520752
		 90 3.125999927520752 91 3.125999927520752 92 3.125999927520752 93 3.125999927520752
		 94 3.125999927520752 95 3.125999927520752 96 3.125999927520752 97 3.125999927520752
		 98 3.125999927520752 99 3.125999927520752 100 3.125999927520752 101 3.125999927520752
		 102 3.125999927520752 103 3.125999927520752 104 3.125999927520752 105 3.125999927520752
		 106 3.125999927520752 107 3.125999927520752 108 3.125999927520752 109 3.125999927520752
		 110 3.125999927520752 111 3.125999927520752 112 3.125999927520752 113 3.125999927520752
		 114 3.125999927520752 115 3.125999927520752 116 3.125999927520752 117 3.125999927520752
		 118 3.125999927520752 119 3.125999927520752 120 3.125999927520752;
	setAttr -s 121 ".kit[0:120]"  18 18 18 18 18 18 18 18 
		18 18 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 121 ".kot[0:120]"  18 18 18 18 18 18 18 18 
		18 18 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9;
createNode animCurveTA -n "b_l_grip_rotateX";
	rename -uid "2D04003A-4E34-AB73-8F86-488ED656E5E4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 121 ".ktv[0:120]"  0 0 1 -2.581089973449707 2 -8.6678791046142578
		 3 -14.895648002624512 4 -21.236200332641602 5 -27.661340713500977 6 -34.142871856689453
		 7 -40.652603149414062 8 -47.162330627441406 9 -53.64385986328125 10 -60.069000244140632
		 11 -60.069000244140632 12 -60.069000244140632 13 -60.069000244140632 14 -60.069000244140632
		 15 -60.069000244140632 16 -60.069000244140632 17 -60.069000244140632 18 -60.069000244140632
		 19 -60.069000244140632 20 -60.069000244140632 21 -60.069000244140632 22 -60.069000244140632
		 23 -60.069000244140632 24 -60.069000244140632 25 -60.069000244140632 26 -60.069000244140632
		 27 -60.069000244140632 28 -60.069000244140632 29 -60.069000244140632 30 -60.069000244140632
		 31 -60.069000244140632 32 -60.069000244140632 33 -60.069000244140632 34 -60.069000244140632
		 35 -60.069000244140632 36 -60.069000244140632 37 -60.069000244140632 38 -60.069000244140632
		 39 -60.069000244140632 40 -60.069000244140632 41 -60.069000244140632 42 -60.069000244140632
		 43 -60.069000244140632 44 -60.069000244140632 45 -60.069000244140632 46 -60.069000244140632
		 47 -60.069000244140632 48 -60.069000244140632 49 -60.069000244140632 50 -60.069000244140632
		 51 -60.069000244140632 52 -60.069000244140632 53 -60.069000244140632 54 -60.069000244140632
		 55 -60.069000244140632 56 -60.069000244140632 57 -60.069000244140632 58 -60.069000244140632
		 59 -60.069000244140632 60 -60.069000244140632 61 -60.069000244140632 62 -60.069000244140632
		 63 -60.069000244140632 64 -60.069000244140632 65 -60.069000244140632 66 -60.069000244140632
		 67 -60.069000244140632 68 -60.069000244140632 69 -60.069000244140632 70 -60.069000244140632
		 71 -60.069000244140632 72 -60.069000244140632 73 -60.069000244140632 74 -60.069000244140632
		 75 -60.069000244140632 76 -60.069000244140632 77 -60.069000244140632 78 -60.069000244140632
		 79 -60.069000244140632 80 -60.069000244140632 81 -60.069000244140632 82 -60.069000244140632
		 83 -60.069000244140632 84 -60.069000244140632 85 -60.069000244140632 86 -60.069000244140632
		 87 -60.069000244140632 88 -60.069000244140632 89 -60.069000244140632 90 -60.069000244140632
		 91 -60.069000244140632 92 -60.069000244140632 93 -60.069000244140632 94 -60.069000244140632
		 95 -60.069000244140632 96 -60.069000244140632 97 -60.069000244140632 98 -60.069000244140632
		 99 -60.069000244140632 100 -60.069000244140632 101 -60.069000244140632 102 -60.069000244140632
		 103 -60.069000244140632 104 -60.069000244140632 105 -60.069000244140632 106 -60.069000244140632
		 107 -60.069000244140632 108 -60.069000244140632 109 -60.069000244140632 110 -60.069000244140632
		 111 -60.069000244140632 112 -60.069000244140632 113 -60.069000244140632 114 -60.069000244140632
		 115 -60.069000244140632 116 -60.069000244140632 117 -60.069000244140632 118 -60.069000244140632
		 119 -60.069000244140632 120 -60.069000244140632;
	setAttr -s 121 ".kit[0:120]"  18 18 18 18 18 18 18 18 
		18 18 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 121 ".kot[0:120]"  18 18 18 18 18 18 18 18 
		18 18 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9;
createNode animCurveTA -n "b_l_grip_rotateY";
	rename -uid "5ED9768F-43A9-BD4F-8EEB-9387853E4CBC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 121 ".ktv[0:120]"  0 0 1 0.20749607682228088 2 0.69681835174560547
		 3 1.1974742412567139 4 1.707196831703186 5 2.223719596862793 6 2.7447757720947266
		 7 3.2680985927581787 8 3.7914214134216304 9 4.3124771118164062 10 4.8289999961853027
		 11 4.8289999961853027 12 4.8289999961853027 13 4.8289999961853027 14 4.8289999961853027
		 15 4.8289999961853027 16 4.8289999961853027 17 4.8289999961853027 18 4.8289999961853027
		 19 4.8289999961853027 20 4.8289999961853027 21 4.8289999961853027 22 4.8289999961853027
		 23 4.8289999961853027 24 4.8289999961853027 25 4.8289999961853027 26 4.8289999961853027
		 27 4.8289999961853027 28 4.8289999961853027 29 4.8289999961853027 30 4.8289999961853027
		 31 4.8289999961853027 32 4.8289999961853027 33 4.8289999961853027 34 4.8289999961853027
		 35 4.8289999961853027 36 4.8289999961853027 37 4.8289999961853027 38 4.8289999961853027
		 39 4.8289999961853027 40 4.8289999961853027 41 4.8289999961853027 42 4.8289999961853027
		 43 4.8289999961853027 44 4.8289999961853027 45 4.8289999961853027 46 4.8289999961853027
		 47 4.8289999961853027 48 4.8289999961853027 49 4.8289999961853027 50 4.8289999961853027
		 51 4.8289999961853027 52 4.8289999961853027 53 4.8289999961853027 54 4.8289999961853027
		 55 4.8289999961853027 56 4.8289999961853027 57 4.8289999961853027 58 4.8289999961853027
		 59 4.8289999961853027 60 4.8289999961853027 61 4.8289999961853027 62 4.8289999961853027
		 63 4.8289999961853027 64 4.8289999961853027 65 4.8289999961853027 66 4.8289999961853027
		 67 4.8289999961853027 68 4.8289999961853027 69 4.8289999961853027 70 4.8289999961853027
		 71 4.8289999961853027 72 4.8289999961853027 73 4.8289999961853027 74 4.8289999961853027
		 75 4.8289999961853027 76 4.8289999961853027 77 4.8289999961853027 78 4.8289999961853027
		 79 4.8289999961853027 80 4.8289999961853027 81 4.8289999961853027 82 4.8289999961853027
		 83 4.8289999961853027 84 4.8289999961853027 85 4.8289999961853027 86 4.8289999961853027
		 87 4.8289999961853027 88 4.8289999961853027 89 4.8289999961853027 90 4.8289999961853027
		 91 4.8289999961853027 92 4.8289999961853027 93 4.8289999961853027 94 4.8289999961853027
		 95 4.8289999961853027 96 4.8289999961853027 97 4.8289999961853027 98 4.8289999961853027
		 99 4.8289999961853027 100 4.8289999961853027 101 4.8289999961853027 102 4.8289999961853027
		 103 4.8289999961853027 104 4.8289999961853027 105 4.8289999961853027 106 4.8289999961853027
		 107 4.8289999961853027 108 4.8289999961853027 109 4.8289999961853027 110 4.8289999961853027
		 111 4.8289999961853027 112 4.8289999961853027 113 4.8289999961853027 114 4.8289999961853027
		 115 4.8289999961853027 116 4.8289999961853027 117 4.8289999961853027 118 4.8289999961853027
		 119 4.8289999961853027 120 4.8289999961853027;
	setAttr -s 121 ".kit[0:120]"  18 18 18 18 18 18 18 18 
		18 18 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 121 ".kot[0:120]"  18 18 18 18 18 18 18 18 
		18 18 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9;
createNode animCurveTA -n "b_l_grip_rotateZ";
	rename -uid "51EC2CF5-47A2-EA4A-E02C-8CA90F263ED2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 121 ".ktv[0:120]"  0 0 1 -0.60560154914855957 2 -2.0337457656860352
		 3 -3.4949684143066406 4 -4.9826526641845703 5 -6.4901847839355469 6 -8.0109472274780273
		 7 -9.5383262634277344 8 -11.065705299377441 9 -12.586468696594238 10 -14.0939998626709
		 11 -14.0939998626709 12 -14.0939998626709 13 -14.0939998626709 14 -14.0939998626709
		 15 -14.0939998626709 16 -14.0939998626709 17 -14.0939998626709 18 -14.0939998626709
		 19 -14.0939998626709 20 -14.0939998626709 21 -14.0939998626709 22 -14.0939998626709
		 23 -14.0939998626709 24 -14.0939998626709 25 -14.0939998626709 26 -14.0939998626709
		 27 -14.0939998626709 28 -14.0939998626709 29 -14.0939998626709 30 -14.0939998626709
		 31 -14.0939998626709 32 -14.0939998626709 33 -14.0939998626709 34 -14.0939998626709
		 35 -14.0939998626709 36 -14.0939998626709 37 -14.0939998626709 38 -14.0939998626709
		 39 -14.0939998626709 40 -14.0939998626709 41 -14.0939998626709 42 -14.0939998626709
		 43 -14.0939998626709 44 -14.0939998626709 45 -14.0939998626709 46 -14.0939998626709
		 47 -14.0939998626709 48 -14.0939998626709 49 -14.0939998626709 50 -14.0939998626709
		 51 -14.0939998626709 52 -14.0939998626709 53 -14.0939998626709 54 -14.0939998626709
		 55 -14.0939998626709 56 -14.0939998626709 57 -14.0939998626709 58 -14.0939998626709
		 59 -14.0939998626709 60 -14.0939998626709 61 -14.0939998626709 62 -14.0939998626709
		 63 -14.0939998626709 64 -14.0939998626709 65 -14.0939998626709 66 -14.0939998626709
		 67 -14.0939998626709 68 -14.0939998626709 69 -14.0939998626709 70 -14.0939998626709
		 71 -14.0939998626709 72 -14.0939998626709 73 -14.0939998626709 74 -14.0939998626709
		 75 -14.0939998626709 76 -14.0939998626709 77 -14.0939998626709 78 -14.0939998626709
		 79 -14.0939998626709 80 -14.0939998626709 81 -14.0939998626709 82 -14.0939998626709
		 83 -14.0939998626709 84 -14.0939998626709 85 -14.0939998626709 86 -14.0939998626709
		 87 -14.0939998626709 88 -14.0939998626709 89 -14.0939998626709 90 -14.0939998626709
		 91 -14.0939998626709 92 -14.0939998626709 93 -14.0939998626709 94 -14.0939998626709
		 95 -14.0939998626709 96 -14.0939998626709 97 -14.0939998626709 98 -14.0939998626709
		 99 -14.0939998626709 100 -14.0939998626709 101 -14.0939998626709 102 -14.0939998626709
		 103 -14.0939998626709 104 -14.0939998626709 105 -14.0939998626709 106 -14.0939998626709
		 107 -14.0939998626709 108 -14.0939998626709 109 -14.0939998626709 110 -14.0939998626709
		 111 -14.0939998626709 112 -14.0939998626709 113 -14.0939998626709 114 -14.0939998626709
		 115 -14.0939998626709 116 -14.0939998626709 117 -14.0939998626709 118 -14.0939998626709
		 119 -14.0939998626709 120 -14.0939998626709;
	setAttr -s 121 ".kit[0:120]"  18 18 18 18 18 18 18 18 
		18 18 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 121 ".kot[0:120]"  18 18 18 18 18 18 18 18 
		18 18 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9;
createNode skinCluster -n "skinCluster2";
	rename -uid "8A5D7BAE-4625-E267-DD9D-A28430F64545";
	setAttr ".ip[0].gtg" -type "string" "skinCluster2";
	setAttr -s 841 ".wl";
	setAttr ".wl[0:268].w"
		2 16 0.49401858448982239 17 0.50598141551017761
		2 16 0.50407624244689941 17 0.49592375755310059
		2 16 0.42628333613418906 17 0.57371666386581088
		1 17 1
		1 17 1
		2 16 0.0010006427764892578 17 0.99899935722351074
		2 16 0.0023396611213684082 17 0.99766033887863159
		2 16 0.0012323260307312012 17 0.9987676739692688
		1 17 1
		2 16 0.0012698769569396973 17 0.9987301230430603
		1 17 1
		2 16 0.0010083913803100586 17 0.99899160861968994
		1 17 1
		3 15 0.9190451043287885 19 0.0017773167928680778 20 0.079177578878343396
		1 17 1
		2 16 0.49548572301864624 17 0.50451427698135376
		1 17 1
		2 1 0.001167884659869327 15 0.99883211534013072
		1 17 1
		1 17 1
		3 1 0.04007119691580633 11 0.286468505859375 15 0.6734602972248187
		3 15 0.0048321745315834073 16 0.32885780930519104 17 0.6663100161632256
		2 16 0.5009276270866394 17 0.4990723729133606
		1 17 1
		3 15 0.0013988902417062631 16 0.47993868589401245 17 0.5186624238642813
		2 16 0.002484440803527832 17 0.99751555919647217
		1 17 1
		2 16 0.0026046633720397949 17 0.99739533662796021
		1 17 1
		1 17 1
		2 16 0.96091993716436974 17 0.039080062835630279
		2 16 0.73661071062088013 17 0.26338928937911987
		3 15 0.0028680624682516235 16 0.89843052625656128 17 0.098701411275187098
		2 16 0.96668572644721551 17 0.033314273552784511
		1 15 1
		3 1 0.0078477390964609064 11 0.087919220328330994 15 0.90423304057520815
		1 17 1
		1 17 1
		1 17 1
		3 15 0.8007398247718811 16 0.017069400443581132 20 0.18219077478453777
		1 17 1
		2 11 0.13399637340528361 15 0.86600362659471641
		3 15 0.0010092492983141772 16 0.93215513229370117 17 0.066835618407984645
		2 16 0.99836719036102295 17 0.0016328096389770508
		2 16 0.96081286668777466 17 0.039187133312225342
		2 15 0.33167952299118042 16 0.66832047700881958
		2 15 0.24640603758491741 16 0.75359396241508259
		2 15 0.35649442672729492 16 0.64350557327270508
		2 15 0.30519294738769531 16 0.69480705261230469
		2 15 0.38445708854389921 16 0.61554291145610074
		3 15 0.33557434348471582 16 0.66334718465805054 17 0.0010784718572336492
		2 15 0.29992520809173584 16 0.70007479190826416
		2 12 0.4163382351398468 13 0.5836617648601532
		2 12 0.43013870716094971 13 0.56986129283905029
		2 12 0.4749692976474762 13 0.5250307023525238
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		2 12 0.01548551999053964 13 0.98451448000946029
		1 13 1
		2 12 0.0034239333317332859 13 0.9965760666682667
		1 13 1
		2 12 0.0035497778279156311 13 0.99645022217208434
		1 13 1
		3 1 0.0016806295002796076 11 0.97385728359222412 15 0.02446208690749627
		1 13 1
		2 12 0.43275138735771179 13 0.56724861264228821
		1 13 1
		2 1 0.011419514861731509 11 0.98858048513826846
		1 13 1
		1 13 1
		3 1 0.0031270914903766306 7 0.37087697450007134 11 0.625995934009552
		2 12 0.41768774390220642 13 0.58231225609779358
		2 12 0.38672271370887756 13 0.61327728629112244
		1 13 1
		2 12 0.45860636234283447 13 0.54139363765716553
		1 13 1
		1 13 1
		2 12 0.0013163643693783372 13 0.99868363563062157
		1 13 1
		2 12 0.0066493106108313242 13 0.99335068938916871
		2 16 0.12167174369096756 17 0.87832825630903244
		2 16 0.13573005795478821 17 0.86426994204521179
		2 16 0.083339080214500427 17 0.91666091978549957
		2 16 0.087315670830474937 17 0.91268432916952502
		3 1 0.01940935764670193 11 0.92375510271430195 15 0.056835539638996124
		3 1 0.0043188752282686312 7 0.0087832985769681852 11 0.98689782619476318
		1 13 1
		1 13 1
		1 13 1
		3 1 0.0018255131999892601 11 0.76509229664402778 15 0.23308219015598297
		1 13 1
		2 7 0.16238796746530501 11 0.83761203253469507
		2 16 0.10057510435581207 17 0.89942489564418793
		2 16 0.097317375242710114 17 0.90268262475728989
		2 16 0.073903389275074005 17 0.92609661072492599
		2 11 0.27236959327272103 12 0.72763040672727897
		2 11 0.25562458244987452 12 0.74437541755012548
		2 11 0.25791983931017076 12 0.74208016068982929
		2 11 0.25919431447982788 12 0.74080568552017212
		2 11 0.30767262629206943 12 0.69232737370793063
		2 11 0.28735247254371643 12 0.71264752745628357
		2 11 0.25145356957984882 12 0.74854643042015123
		2 8 0.2362585149374698 9 0.76374148506253026
		2 8 0.38316038250923157 9 0.61683961749076843
		2 8 0.30063268542289734 9 0.69936731457710266
		1 9 1
		1 9 1
		1 9 1
		2 8 0.0069599151611328125 9 0.99304008483886719
		2 8 0.0018311738967895508 9 0.99816882610321045
		2 8 0.0094352960586547852 9 0.99056470394134521
		1 9 1
		2 8 0.0017387866973876953 9 0.9982612133026123
		2 8 0.0014311075210571289 9 0.99856889247894287
		1 9 1
		3 1 0.0011537757076308119 7 0.95909559726715088 11 0.03975062702521831
		1 9 1
		2 8 0.35307899117469788 9 0.64692100882530212
		1 9 1
		2 1 0.016504007550864456 7 0.98349599244913555
		1 9 1
		2 8 0.0026240944862365723 9 0.99737590551376343
		2 1 0.0017545317047477328 7 0.99824546829525229
		2 8 0.34596952795982361 9 0.65403047204017639
		3 7 0.0019748638381063893 8 0.35172763466835022 9 0.64629750149354337
		1 9 1
		2 8 0.37021684646606445 9 0.62978315353393555
		2 8 0.0015527009963989258 9 0.99844729900360107
		2 8 0.009483635425567627 9 0.99051636457443237
		2 8 0.0027899742126464844 9 0.99721002578735352
		1 9 1
		2 8 0.0015631318092346191 9 0.99843686819076538
		1 22 1
		1 22 1
		2 21 0.0024110078811645508 22 0.99758899211883545
		1 22 1
		1 22 1
		2 1 0.0020386059059373197 7 0.9979613940940627
		2 1 0.016766196934052811 7 0.98323380306594721
		1 9 1
		1 9 1
		1 9 1
		3 1 0.014613145358346671 7 0.76684667789242389 11 0.21854017674922943
		1 9 1
		2 1 0.0032445412484778473 7 0.99675545875152216
		1 22 1
		2 20 0.32905504107475281 21 0.67094495892524719
		3 20 0.37856641411781311 21 0.61921045104956951 22 0.0022231348326173621
		3 20 0.37276968359947205 21 0.62604151571740041 22 0.0011888006831275804
		3 7 0.29032048583030701 8 0.69813225217656771 9 0.011547261993125245
		2 7 0.30471057300670423 8 0.69528942699329577
		3 7 0.29435205459594727 8 0.69650333809732001 9 0.0091446073067327702
		3 7 0.30043461918830872 8 0.69675323201679018 9 0.0028121487949011479
		3 7 0.30859142541885376 8 0.67027075771495759 9 0.021137816866188656
		3 7 0.33084699511528015 8 0.64232971709422204 9 0.0268232877904978
		3 7 0.30420362949371338 8 0.68810053632716217 9 0.0076958341791244552
		2 21 0.026447057723999023 22 0.97355294227600098
		2 21 0.013939082622528076 22 0.98606091737747192
		1 22 1
		1 22 1
		1 22 1
		3 20 0.34715956449508667 21 0.64815396375031142 22 0.0046864717546018942
		1 22 1
		1 22 1
		1 22 1
		2 20 0.37621128282414168 21 0.62378871717585838
		3 20 0.40983349084854126 21 0.58911841064275616 22 0.0010480985087025598
		1 22 1
		2 20 0.28638249635696411 21 0.71361750364303589
		2 21 0.013450920581817627 22 0.98654907941818237
		1 22 1
		1 22 1
		2 21 0.005920708179473877 22 0.99407929182052612
		2 21 0.0015311241149902344 22 0.99846887588500977
		3 20 0.0023800785667926149 21 0.59857114599871342 22 0.39904877543449402
		2 21 0.71303611993789673 22 0.28696388006210327
		2 21 0.75751012563705444 22 0.24248987436294556
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		2 21 0.69320821762084961 22 0.30679178237915039
		2 21 0.62451884150505066 22 0.37548115849494934
		2 21 0.75803197920322418 22 0.24196802079677582
		3 20 0.019179986019847609 21 0.53557746003079632 22 0.44524255394935608
		3 15 0.27737770130895217 19 0.028675632551312447 20 0.69394666613973544
		3 1 0.001459776012145346 19 0.050759495647705731 20 0.94778072834014893
		2 19 0.12631559718113466 20 0.87368440281886539
		3 15 0.044274549931287766 19 0.036468239025077905 20 0.91925721104363434
		2 19 0.1666620397673822 20 0.83333796023261775
		3 15 0.0091681173071265221 20 0.98698064158080612 21 0.0038512411120673468
		3 19 0.060455339351294761 20 0.92851477861404419 21 0.01102988203466105
		2 4 0.64515254088894169 5 0.35484745911105831
		2 4 0.68646604510408471 5 0.31353395489591529
		2 4 0.68848118127618851 5 0.31151881872381149
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		2 4 0.6710320320369122 5 0.3289679679630878
		1 5 1
		1 5 1
		1 5 1
		2 4 0.59261590665077257 5 0.40738409334922743
		2 4 0.62471921331687408 5 0.37528078668312598
		1 5 1
		2 4 0.7000260871369004 5 0.29997391286309966
		1 5 1
		1 5 1
		2 4 0.0026789307594299316 5 0.99732106924057007
		1 5 1
		1 5 1
		2 4 0.015544037386197137 5 0.98445596261380297
		2 4 0.0019217729568481445 5 0.99807822704315186
		2 4 0.0029653343183121679 5 0.99703466568168786
		1 5 1
		2 4 0.051046687784483284 5 0.94895331221551671
		2 4 0.0069032907485961914 5 0.99309670925140381
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		2 4 0.015722870826721191 5 0.98427712917327881
		2 4 0.011246764318857778 5 0.98875323568114226
		2 4 0.007543027400970459 5 0.99245697259902954
		2 4 0.0081312060356140137 5 0.99186879396438599
		2 4 0.011679672569510715 5 0.98832032743048936
		1 5 1
		3 1 0.033531580120325089 3 0.12644075106280814 4 0.84002766881686675
		3 1 0.0018389574252068996 3 0.073935476645504497 4 0.92422556592928862
		3 1 0.03867640346288681 3 0.18087755918587164 4 0.78044603735124152
		3 1 0.035186648368835449 3 0.21207460505472006 4 0.75273874657644446
		3 1 0.072569459676742554 3 0.22547176001406447 4 0.70195878030919301
		3 1 0.031351909041404724 3 0.1288299580630482 4 0.83981813289554708
		3 1 0.0054803988896310329 3 0.070743201972841757 4 0.92377639913752718
		3 1 0.022559791803359985 3 0.084656976232301867 4 0.89278323196433818
		3 1 0.037750732153654099 3 0.20814659375957981 4 0.75410267408676612
		3 1 0.053831420838832855 3 0.13853543905079976 4 0.80763314011036735
		3 1 0.034311678260564804 3 0.13399813295213264 4 0.83169018878730261
		3 1 0.043095093220472336 3 0.21051918796480665 4 0.74638571881472104
		3 1 0.020541697994436933 19 0.93636345837954071 20 0.043094843626022339
		3 1 0.077406397178083092 19 0.75653455583819806 20 0.16605904698371887
		3 1 0.043847336576747546 19 0.84737592269344364 20 0.10877674072980881
		2 1 0.27448368072509766 19 0.72551631927490234
		2 1 0.37184500694274902 19 0.62815499305725098
		2 1 0.26906365156173706 19 0.73093634843826294
		2 1 0.65504074096679688 19 0.34495925903320312
		2 1 0.92839020490646362 19 0.071609795093536377
		2 1 0.81484919786453247 19 0.18515080213546753
		2 1 0.98591423034667969 19 0.014085769653320312
		2 1 0.6840593483515709 7 0.3159406516484291
		2 1 0.55806793780659292 7 0.44193206219340708
		3 1 0.62841749105206324 3 0.0040164896512906185 7 0.36756601929664612
		3 1 0.89134302397973741 4 0.063903644329235926 7 0.044753331691026688
		2 1 0.88365816580490963 7 0.11634183419509037
		3 1 0.88623573470742845 4 0.015898810439990557 7 0.097865454852581024
		3 1 0.59888209674533566 15 0.25329529967132847 19 0.14782260358333588
		3 1 0.95584398508071899 15 0.040196376658868008 19 0.0039596382604129956
		3 1 0.67296710228968359 11 0.16859570527028342 15 0.15843719244003296
		3 1 0.86358784157886737 15 0.052706181815717318 19 0.083705976605415344;
	setAttr ".wl[269:475].w"
		3 1 0.97391611337661743 11 0.010551673510796999 15 0.015532213112585569
		3 1 0.67340912391605257 11 0.21257196645078774 15 0.11401890963315964
		2 1 0.97516685724258423 11 0.024833142757415771
		3 1 0.64497619867324829 7 0.095263353277802193 11 0.25976044804894954
		3 1 0.96426099538803101 11 0.032148564497250169 15 0.003590440114718822
		3 1 0.93725711107254028 7 0.011542971186889833 11 0.051199917740569881
		3 1 0.65209561586380005 7 0.15285231824585011 11 0.19505206589034985
		2 1 0.96125632524490356 7 0.038743674755096436
		3 1 0.97904324531555176 7 0.01281587702561394 11 0.0081408776588343043
		2 1 0.94781583547592163 7 0.052184164524078369
		3 1 0.5165323021424354 15 0.12843355536460876 19 0.35503414249295584
		3 1 0.23616869747638702 19 0.57901077832785441 20 0.18482052419575862
		3 1 0.40277099094374486 19 0.43334232785718135 20 0.16388668119907379
		3 1 0.13000386953353882 19 0.68542844800490788 20 0.18456768246155333
		3 1 0.029397401958703995 19 0.6343575753260442 20 0.33624502271525181
		3 1 0.012852484360337257 19 0.68580556696408523 20 0.30134194867557751
		2 19 0.82954040160939713 20 0.17045959839060282
		3 1 0.4573554652174 11 0.098111037687491923 15 0.44453349709510803
		3 1 0.41956770448412334 11 0.021503328993659872 15 0.5589289665222168
		3 1 0.50109043196630743 7 0.0038008478004485369 11 0.49510872023324404
		3 1 0.5129762579344278 11 0.40241126076950973 15 0.084612481296062469
		3 1 0.4864823122522523 7 0.17747834324836731 11 0.33603934449938033
		3 1 0.51692114057813709 7 0.076757296919822693 11 0.40632156250204016
		3 1 0.13989076018333435 19 0.3839729174219102 20 0.4761363223947554
		3 1 0.073957584798336029 19 0.52466264041533239 20 0.40137977478633152
		3 1 0.50749997585407602 11 0.29472649306663168 15 0.1977735310792923
		2 1 0.53276275465157819 7 0.46723724534842181
		3 1 0.5262189507484436 7 0.345781392607101 11 0.1279996566444554
		3 1 0.48742364619071576 11 0.19219742443268203 15 0.32037892937660217
		3 1 0.41668222548620315 15 0.56981387378467707 19 0.013503900729119778
		3 1 0.49069672822952271 7 0.29511174815009045 11 0.21419152362038682
		3 1 0.28479844812680111 15 0.61433673169087544 19 0.10086482018232346
		3 1 0.22219543159008026 19 0.28212018508659031 20 0.49568438332332948
		3 1 0.051251154392957687 19 0.57255776766726074 20 0.37619107793978152
		2 1 0.515125572681427 7 0.484874427318573
		2 12 0.12982010841369629 13 0.87017989158630371
		2 12 0.038711071014404297 13 0.9612889289855957
		2 12 0.045132160186767578 13 0.95486783981323242
		2 12 0.16010159254074097 13 0.83989840745925903
		2 12 0.060945808887481689 13 0.93905419111251831
		2 12 0.034204602241516113 13 0.96579539775848389
		2 12 0.09825463593006134 13 0.90174536406993866
		2 12 0.79544627666473389 13 0.20455372333526611
		2 12 0.8323664665222168 13 0.1676335334777832
		2 12 0.81086736917495728 13 0.18913263082504272
		2 12 0.81104105710983276 13 0.18895894289016724
		2 12 0.6961311809358276 13 0.3038688190641724
		2 12 0.69017434120178223 13 0.30982565879821777
		3 11 0.010848868069370229 12 0.82107120752334595 13 0.16807992440728381
		2 8 0.067193292081356049 9 0.93280670791864395
		2 8 0.070044860243797302 9 0.9299551397562027
		2 8 0.051207177993332659 9 0.94879282200666737
		2 8 0.14916391670703888 9 0.85083608329296112
		2 8 0.064738653600215912 9 0.93526134639978409
		2 8 0.065924987196922302 9 0.9340750128030777
		3 7 0.0010473100919960909 8 0.14083355665206909 9 0.85811913325593481
		3 7 0.0034410291849603898 8 0.55611962080001831 9 0.44043935001502132
		2 8 0.83900928497314453 9 0.16099071502685547
		2 8 0.57058387994766235 9 0.42941612005233765
		2 8 0.83729523420333862 9 0.16270476579666138
		2 8 0.52622693777084351 9 0.47377306222915649
		3 7 0.0011740714114554555 8 0.88201236724853516 9 0.11681356134000939
		2 8 0.81975030899047852 9 0.18024969100952148
		2 21 0.033152889460325241 22 0.96684711053967476
		2 21 0.071836933493614197 22 0.9281630665063858
		2 21 0.14170935750007629 22 0.85829064249992371
		2 21 0.039483111351728439 22 0.96051688864827156
		2 21 0.046832725405693054 22 0.95316727459430695
		2 21 0.15747931599617004 22 0.84252068400382996
		3 20 0.0022633440197745961 21 0.053980254441376524 22 0.94375640153884888
		3 20 0.0026608563805780422 21 0.90415890441882996 22 0.093180239200592041
		3 20 0.0010396817652705995 21 0.91800805386619533 22 0.080952264368534088
		3 20 0.010783350772656988 21 0.87433978288670577 22 0.11487686634063721
		2 21 0.90968723253248207 22 0.090312767467517985
		2 21 0.89283151669043292 22 0.10716848330956705
		3 20 0.0064747673128201944 21 0.86486510516661863 22 0.12866012752056122
		2 21 0.89667148143053055 22 0.10332851856946945
		2 20 0.06230608120963705 21 0.9376939187903629
		3 20 0.033140087676996832 21 0.96429663896560669 22 0.0025632733573964749
		2 20 0.047587984162111886 21 0.95241201583788815
		2 20 0.036033627185122749 21 0.96396637281487729
		2 20 0.041624076664447784 21 0.95837592333555222
		2 20 0.040202709720665988 21 0.95979729027933403
		2 20 0.096193110893597861 21 0.90380688910640217
		2 20 0.85409122660774972 21 0.14590877339225025
		2 20 0.77297447621822357 21 0.22702552378177643
		2 20 0.79202696681022644 21 0.20797303318977356
		2 20 0.78741031219880231 21 0.21258968780119766
		2 20 0.91908025011475614 21 0.080919749885243808
		2 20 0.90888922136530426 21 0.091110778634695688
		2 20 0.73678985238075256 21 0.26321014761924744
		2 15 0.017681419849395752 16 0.98231858015060425
		3 15 0.011367187809592111 16 0.98757249116897583 17 0.001060321021432059
		3 15 0.030063934759400834 16 0.96715933084487915 17 0.0027767343957200152
		2 15 0.010981058355647798 16 0.98901894164435222
		3 15 0.087991258072623479 16 0.91060695372153688 21 0.0014017882058396935
		2 15 0.015856609816225185 16 0.98414339018377484
		3 15 0.031504482490351211 16 0.96401488921291589 21 0.0044806282967329025
		2 15 0.85612702369689941 16 0.14387297630310059
		3 1 0.0018556089896581778 15 0.79594473821931855 16 0.20219965279102325
		2 15 0.82598595321178436 16 0.17401404678821564
		2 15 0.83174760639667511 16 0.16825239360332489
		2 15 0.86329543590545654 16 0.13670456409454346
		2 15 0.82780906269776056 16 0.17219093730223942
		2 15 0.80783912317846662 16 0.19216087682153338
		1 11 1
		2 11 0.064947735863669587 12 0.93505226413633036
		3 11 0.06952725398168276 12 0.92759966850280762 13 0.0028730775155096193
		2 11 0.093963346843012024 12 0.906036653156988
		3 11 0.99306229830435255 12 0.0046003607316430703 15 0.0023373409640043974
		3 11 0.070609560578955372 12 0.92809373140335083 13 0.0012967080176938045
		2 11 0.088688545137463895 12 0.91131145486253606
		2 11 0.065291204656410209 12 0.93470879534358975
		3 11 0.068657368628324278 12 0.92594540119171143 13 0.0053972301799642946
		1 11 1
		3 1 0.0048874566720799369 11 0.98991769552230835 12 0.0051948478056117135
		2 11 0.67258709669113159 12 0.32741290330886841
		2 11 0.67821806669235229 12 0.32178193330764771
		2 11 0.60379071525160266 12 0.39620928474839728
		3 11 0.9432106614112854 12 0.020817767144500888 15 0.035971571444213715
		3 1 0.0046939353643687216 11 0.68796581029891968 12 0.30734025433671158
		2 11 0.54107152401404912 12 0.45892847598595088
		2 11 0.63476830720901489 12 0.36523169279098511
		2 11 0.64744544526616143 12 0.35255455473383862
		3 7 0.078307352960109711 8 0.89449027423194927 9 0.027202372807941067
		2 7 0.076500760976753096 8 0.92349923902324693
		3 7 0.082773745059967041 8 0.88119599989520703 9 0.036030255044825973
		3 7 0.081505291163921356 8 0.91699098551574709 9 0.0015037233203315451
		3 7 0.11109583079814911 8 0.81605949674592948 9 0.072844672455921453
		3 7 0.11609996855258942 8 0.82201059665883636 9 0.061889434788574227
		3 7 0.071970410645008087 8 0.92600170704482221 9 0.0020278823101696555
		2 7 0.7493764326006408 8 0.25062356739935926
		2 7 0.68320143740216177 8 0.31679856259783823
		3 7 0.69372455842641234 8 0.30518856644630432 9 0.0010868751272833372
		2 7 0.71554887099588582 8 0.28445112900411423
		3 7 0.70740163257093724 8 0.29017746261572841 9 0.0024209048133343458
		3 7 0.73564274373318017 8 0.25292162553553521 9 0.011435630731284618
		2 7 0.69175001978874207 8 0.30824998021125793
		3 1 0.60046274320585036 15 0.04601118341088295 19 0.35352607338326675
		3 1 0.90968427852818246 11 0.0050142770633101463 15 0.085301444408507343
		3 1 0.12217094539267934 15 0.011292368173599243 19 0.86653668643372139
		3 1 0.24602373549083781 15 0.0025202254764735699 19 0.75145603903268865
		3 1 0.81457472748841941 15 0.053420802878478189 19 0.13200446963310242
		3 1 0.98742383694377844 7 0.0013505809557705687 11 0.011225582100450993
		3 1 0.98453883892250427 7 0.007970588281750679 11 0.0074905727957450324
		3 1 0.92900461999428408 11 0.01193440705537796 15 0.059060972950337909
		3 1 0.95844188265423547 11 0.010195720009505749 19 0.031362397336258833
		3 1 0.98132457312822818 7 0.008421496407384833 11 0.01025393046438694
		2 1 0.99164581567916188 7 0.0083541843208380772
		3 1 0.97336433842430625 7 0.022779736667871475 11 0.0038559249078223049
		2 1 0.99347034892862518 7 0.0065296510713748739
		3 1 0.96507754376376553 4 0.017472175748697069 7 0.017450280487537384
		2 1 0.018474635448495431 19 0.98152536455150452
		3 1 0.038867338678109695 19 0.9191110440285325 20 0.042021617293357849
		3 1 0.0076411699775854455 19 0.97451925297339759 20 0.017839577049016953
		3 1 0.068361260003363566 19 0.93046152288378225 20 0.0011772171128541231
		2 1 0.89958286803036669 11 0.10041713196963332
		3 1 0.85455679093956982 7 0.024551436849832155 11 0.12089177221059799
		3 1 0.86651623841811687 7 0.10101336393068762 11 0.032470397651195526
		2 1 0.85196015343687848 7 0.14803984656312158
		3 1 0.8328531753116073 7 0.068229481965976793 11 0.098917342722415924
		3 15 0.11856650561094284 19 0.73182440045727182 20 0.14960909393178537
		3 1 0.31887825071168918 15 0.15899269282817841 19 0.52212905646013241
		2 1 0.78210299389725502 7 0.21789700610274501
		2 1 0.76428576940039628 7 0.23571423059960367
		1 19 1
		2 19 0.88458025292065789 20 0.11541974707934217
		3 1 0.89027202129364014 11 0.020822438974111169 15 0.088905539732248698
		3 1 0.8947261171847003 11 0.091179363429546356 15 0.014094519385753361
		3 1 0.76378196477890015 15 0.14852155034457717 19 0.087696484876522665
		3 1 0.88878947496414185 11 0.0065180542676922639 15 0.10469247076816589
		2 1 0.91091074910215442 11 0.089089250897845626
		3 15 0.0051094782538712025 19 0.8476712058848892 20 0.14721931586123957
		2 19 0.90341876447200775 20 0.096581235527992249
		3 3 0.0042721149945497399 4 0.94083804213759903 5 0.054889842867851257
		3 3 0.0051156974339837636 4 0.93205130100250244 5 0.062833001563513791
		2 4 0.97930377990617934 5 0.020696220093820609
		3 3 0.0012856435973216112 4 0.96328410012535559 5 0.035430256277322769
		2 4 0.86855544166792797 5 0.13144455833207197
		3 3 0.0041658120276581133 4 0.86991827319840087 5 0.12591591477394104
		2 4 0.95626990999038564 5 0.04373009000961442
		2 4 0.30367701989709467 5 0.69632298010290528
		2 4 0.33871066570281982 5 0.66128933429718018
		2 4 0.3023586008404906 5 0.6976413991595094
		2 4 0.32921609282493591 5 0.67078390717506409
		2 4 0.25560965582678596 5 0.74439034417321404
		2 4 0.30177904628639052 5 0.69822095371360948
		2 4 0.33818456530570984 5 0.66181543469429016
		3 1 0.23135010898113251 3 0.18118168184020092 4 0.5874682091786666
		3 1 0.50515076581801011 4 0.48088080465381311 7 0.013968429528176785
		3 1 0.25841876864433289 3 0.20627849566094222 4 0.53530273569472486
		3 1 0.54433584869857921 4 0.43096757023576604 7 0.024696581065654755
		3 1 0.28857669234275818 3 0.22383905514535987 4 0.48758425251188192
		3 1 0.55799150539189024 4 0.41899017172307329 7 0.023018322885036469
		2 1 0.99700659513473511 19 0.0029934048652648926
		2 1 0.99159359931945801 19 0.0084064006805419922
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		2 1 0.93632364947575708 3 0.063676350524242961
		3 1 0.61610537767410278 19 0.38181628604008655 20 0.0020783362858106573
		2 1 0.79865813255310059 19 0.20134186744689941
		2 1 0.50954318046569824 19 0.49045681953430176
		1 1 0.90929137182449071;
	setAttr ".wl[475:676].w"
		2 4 0.042469393340599897 7 0.048239234834909439
		3 1 0.31900820136070251 3 0.28373088892302911 4 0.39726090971626832
		3 1 0.62481081318298248 4 0.35575803350469198 7 0.019431153312325478
		3 1 0.14399174995559752 19 0.81282489352088871 20 0.043183356523513794
		3 1 0.093507024243197109 19 0.87371580790010961 20 0.032777167856693268
		3 1 0.067151909643284269 19 0.91953945537520265 20 0.013308634981513023
		2 1 0.98804764524105271 7 0.011952354758947303
		2 1 0.99565901116136202 7 0.0043409888386379946
		1 1 1
		2 1 0.99875317830755883 15 0.0012468216924412252
		3 1 0.93525121850502047 15 0.03372897207736969 19 0.031019809417609855
		3 1 0.59549695253372192 19 0.37558455991442657 20 0.028918487551851512
		3 1 0.36798968911170959 19 0.5978297368040445 20 0.034180574084245942
		3 1 0.23351214146359711 19 0.72749034250036926 20 0.03899751603603363
		2 1 0.97404618620309691 7 0.025953813796903129
		2 1 0.97945791482925415 7 0.02054208517074585
		2 1 0.99883341789245605 11 0.0011665821075439453
		2 1 0.99634900759922918 15 0.0036509924007708913
		3 1 0.97187936305999756 3 0.0011867607084941711 7 0.02693387623150827
		3 1 0.72341860804943148 3 0.26537592362376144 7 0.011205468326807022
		3 1 0.65083692560959983 4 0.34335229719932742 7 0.0058107771910727024
		3 1 0.6646323194747793 15 0.011999727224744679 19 0.32336795330047607
		2 1 0.24888486735859208 19 0.75111513264140795
		3 1 0.84121618790391572 15 0.016790915300811428 19 0.14199289679527283
		3 1 0.96461422824336962 3 0.0076571061365418277 19 0.027728665620088577
		3 1 0.92786292572469808 7 0.0028753222063054359 19 0.069261752068996429
		3 1 0.95801163306809622 3 0.038060433879721571 7 0.0039279330521821976
		3 1 0.85901411437405517 3 0.13412510975287986 7 0.0068607758730649948
		3 1 0.91649766460592641 3 0.077713252431053939 7 0.0057890829630196095
		2 1 0.046897102220912298 19 0.95310289777908774
		2 1 0.049105005199948468 19 0.95089499480005157
		2 1 0.10023885716222426 19 0.89976114283777575
		3 1 0.24015218019485474 3 0.29255344653480586 4 0.4672943732703394
		3 1 0.76486812111849978 3 0.015455235271499626 19 0.21967664361000061
		2 1 0.52746488300896943 19 0.47253511699103062
		3 1 0.81968587636947632 3 0.045034126856120821 19 0.13527999677440286
		3 1 0.81700354814529419 3 0.11347231152971618 19 0.069524140324989631
		3 1 0.82988303899765015 3 0.081857010098692437 19 0.088259950903657403
		3 1 0.80430400371551514 3 0.16452243409956122 19 0.031173562184923648
		3 1 0.51482582092285156 3 0.35472983743366771 4 0.13044434164348076
		3 1 0.67647916078567505 3 0.26466877128220634 4 0.058852067932118585
		2 1 0.2370583148176332 19 0.76294168518236682
		2 1 0.20939715206623077 19 0.79060284793376923
		2 1 0.29774256722853537 19 0.70225743277146468
		2 1 0.12400017878583999 19 0.87599982121415998
		3 1 0.30510560706940648 19 0.69346654415130615 20 0.0014278487792873857
		2 1 0.85788460847133197 19 0.14211539152866801
		2 1 0.91120609488808091 19 0.088793905111919091
		3 1 0.88086497783660889 3 0.097917274491149203 19 0.021217747672241914
		2 1 0.84162633609506565 3 0.15837366390493435
		2 1 0.11456955910435546 19 0.88543044089564449
		2 1 0.090534347302143783 19 0.90946565269785618
		3 1 0.73029465416393435 3 0.26707721802458906 7 0.0026281278114765882
		3 1 0.8943706406643287 3 0.054797516168127877 19 0.050831843167543411
		2 1 0.7251359170976277 19 0.27486408290237224
		3 1 0.36019484172987698 3 0.58556711673736572 4 0.054238041532757318
		3 1 0.22739045321941376 3 0.57973573295655267 4 0.19287381382403354
		3 1 0.27445021271705627 3 0.7073204527341469 4 0.018229334548796834
		3 1 0.32878929376602173 3 0.55274914040873258 4 0.11846156582524568
		3 1 0.14872138202190399 3 0.50034264592248878 4 0.35093597205560717
		3 1 0.17432078719139099 3 0.64546012987922152 4 0.18021908292938749
		3 1 0.2309204488992691 3 0.63465269605885399 4 0.1344268550418769
		3 1 0.18902342021465302 3 0.67989418655550482 4 0.13108239322984214
		1 1 1
		2 1 0.94093310832977295 3 0.059066891670227051
		2 1 0.98710661812858302 3 0.012893381871417014
		2 1 0.9813881516456604 3 0.0186118483543396
		2 1 0.82172591598990241 3 0.17827408401009756
		3 1 0.40273374319076538 3 0.58266162022475809 4 0.014604636584476484
		2 1 0.85678125680542172 3 0.14321874319457828
		3 1 0.60335010290145874 3 0.3851054432996277 4 0.011544453798913562
		1 1 1
		1 1 1
		1 1 1
		2 1 0.97097617387771606 19 0.029023826122283936
		2 1 0.99355661869049072 19 0.0064433813095092773
		3 0 0.016146390491617871 1 0.96926259994506836 19 0.014591009563313767
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		2 1 0.98643678426742554 19 0.013563215732574463
		2 1 0.97886556386947632 19 0.021134436130523682
		2 1 0.92654883861541748 19 0.07345116138458252
		2 1 0.83883467323653305 3 0.16116532676346693
		3 1 0.74004930257797241 3 0.25746972112473904 4 0.0024809762972885438
		2 1 0.17337919771671295 19 0.82662080228328705
		2 1 0.14985993016527271 19 0.85014006983472734
		1 1 1
		3 1 0.99690812826156616 11 0.0015835547789197263 15 0.0015083169595141116
		2 1 0.64413958787918091 19 0.35586041212081909
		3 1 0.46454805135726929 19 0.51851555426343421 20 0.016936394379296463
		3 1 0.32930290699005127 19 0.65957707353988948 20 0.011120019470059275
		2 1 0.99352760566398501 7 0.006472394336014986
		1 1 1
		2 1 0.99735037158654694 15 0.0026496284134530823
		2 1 0.23099958896636966 19 0.76900041103363037
		1 1 1
		1 1 1
		3 1 0.95924681246475996 15 0.0076198549941182137 19 0.033133332541121822
		3 1 0.98405355215072632 3 0.0066500739988782 7 0.0092963738503954816
		3 1 0.97721868753433228 3 0.014362124200677184 7 0.008419188264990541
		3 1 0.77515238970553102 3 0.19925184845889385 7 0.025595761835575104
		3 1 0.35018959641456604 3 0.36261737178775633 4 0.28719303179767769
		3 1 0.65810252315407725 3 0.33513780907684837 7 0.00675966776907444
		3 1 0.42570868134498596 3 0.43205100501728788 4 0.14224031363772616
		3 1 0.57388925552368164 3 0.3221218103050672 4 0.10398893417125116
		3 1 0.40233355760574341 3 0.36325569661489904 4 0.23441074577935758
		3 1 0.27162587642669678 3 0.43621107328054948 4 0.29216305029275375
		2 1 0.60409224033355713 3 0.39590775966644287
		3 1 0.63070732355117798 3 0.32589915385612622 4 0.043393522592695771
		2 1 0.56706684827804565 3 0.43293315172195435
		3 1 0.66347229480743408 3 0.31518763753238799 19 0.021340067660177951
		3 1 0.43084856867790222 3 0.4946662970090987 4 0.074485134312999121
		3 1 0.4622875452041626 3 0.48737225503517578 4 0.050340199760661605
		3 1 0.41898998618125916 3 0.56709613678345172 4 0.013913877035289153
		3 1 0.3799365758895874 3 0.6168930005504758 4 0.0031704235599368268
		3 1 0.42807084321975708 3 0.39111313575777518 4 0.18081602102246774
		3 1 0.09672914445400238 3 0.13102116186972457 4 0.77224969367627305
		3 1 0.1028866246342659 3 0.13766423420274834 4 0.75944914116298579
		3 1 0.13279521465301514 3 0.1779018869980179 4 0.68930289834896696
		3 1 0.15966318547725677 3 0.21561665717618628 4 0.62472015734655695
		3 1 0.10231011360883713 3 0.18924202069092858 4 0.70844786570023432
		3 1 0.086501754820346832 3 0.30838287150406785 4 0.60511537367558532
		3 1 0.079439491033554077 3 0.40758222734057065 4 0.51297828162587522
		3 1 0.097795620560646057 3 0.47704113670439985 4 0.42516324273495409
		3 1 0.097747258841991425 3 0.49126926687594341 4 0.41098347428206516
		3 1 0.18636906147003174 3 0.39300390711531724 4 0.42062703141465108
		3 1 0.22160106897354126 3 0.61435576848547535 4 0.16404316254098333
		3 1 0.78086188894430675 3 0.034107039750418289 19 0.18503107130527496
		3 1 0.6023216940206465 3 0.029918810005766409 19 0.36775949597358704
		3 1 0.79860758781433105 3 0.10019927391611562 19 0.10119313826955331
		3 1 0.72659069299697876 3 0.21000140345570448 19 0.063407903547316735
		3 1 0.75439566373825073 3 0.17581835272446136 19 0.069785983537287904
		3 1 0.55526971817016602 3 0.35158725557515252 4 0.09314302625468146
		2 1 0.61442124367857587 19 0.38557875632142413
		2 1 0.53098839521408081 19 0.46901160478591919
		2 1 0.53397992489246504 19 0.46602007510753501
		2 1 0.94911700487136841 3 0.050882995128631592
		3 1 0.098321698606014252 3 0.44707685745328973 4 0.45460144394069602
		3 1 0.22761420905590057 3 0.76730123309772869 4 0.0050845578463707269
		3 1 0.16534782946109772 3 0.74925443115096202 4 0.085397739387940236
		3 1 0.23827838897705078 3 0.72171001452037054 4 0.04001159650257867
		3 1 0.16307508945465088 3 0.75134852565532328 4 0.085576384890025878
		3 1 0.092358857393264771 3 0.47031424178251258 4 0.4373269008242226
		2 1 0.52796590328216553 3 0.47203409671783447
		3 1 0.35379454493522644 3 0.64293126445735937 4 0.0032741906074141647
		3 1 0.11946588754653931 3 0.44594456447574832 4 0.43458954797771238
		3 1 0.90976566076278687 3 0.004898916641968014 19 0.085335422595245125
		2 1 0.99178404251690999 19 0.0082159574830900188
		2 1 0.99740093591886447 19 0.0025990640811354914
		2 1 0.99631482362747192 19 0.0036851763725280762
		2 1 0.99874007701873779 19 0.001259922981262207
		2 1 0.99834227561950684 3 0.0016577243804931641
		1 1 1
		1 1 1
		2 1 0.96603763103485107 19 0.033962368965148926
		1 1 1
		3 1 0.89326673746109009 3 0.085808413939923098 19 0.020924848598986811
		3 1 0.805522620677948 3 0.1642808086577571 19 0.030196570664294896
		2 1 0.80841523408889771 3 0.19158476591110229
		3 1 0.0068142108459769892 7 0.98937815427780151 8 0.0038076348762214971
		3 1 0.0019995739479382797 7 0.9919731616973877 8 0.0060272643546740246
		3 1 0.0015285230996754775 7 0.99014705419540405 8 0.0083244227049204689
		3 1 0.0027756768958274096 7 0.99461275339126587 8 0.0026115697129067213
		3 1 0.0043154988391538888 7 0.47186952494548356 11 0.52381497621536255
		1 7 1
		2 7 0.99734638989988489 8 0.0026536101001151378
		2 19 0.38440489768981934 20 0.61559510231018066
		3 1 0.089759234207124228 7 0.90839362144470215 8 0.0018471443481736225
		3 1 0.19050878286361694 7 0.80625364881829442 8 0.003237568318088684
		3 1 0.19293191094888712 11 0.086827658116817474 15 0.72024043093429535
		2 1 0.23243709746036043 11 0.76756290253963955
		3 1 0.13420997685802055 7 0.30188488960266113 11 0.56390513353931826
		3 15 0.08051909964832106 19 0.19082653522491455 20 0.7286543651267644
		3 1 0.23007333278656006 7 0.76877229645357414 8 0.0011543707598658157
		3 1 0.13565199100771658 15 0.84961544233015074 19 0.01473256666213274
		2 1 0.21597342193126678 7 0.78402657806873322
		2 19 0.38465800881385803 20 0.61534199118614197
		3 15 0.28999051640886558 19 0.010053383186459541 20 0.69995610040467493
		3 1 0.17720738053321838 15 0.81381455672149239 16 0.0089780627452892107
		3 1 0.23728787899017334 11 0.74303103625631695 15 0.019681084753509697
		3 1 0.2155267596244812 7 0.014952997224000916 11 0.7695202431515179
		3 1 0.01514337986651113 19 0.2833002507686615 20 0.70155636936482735
		3 1 0.23111951351165771 11 0.76096089217335461 15 0.0079195943149876595
		3 1 0.20834414744252103 7 0.74154714784151177 11 0.050108704715967178
		3 1 0.22051304578781128 11 0.30587071167022156 15 0.47361624254196716
		3 1 0.16040331125259399 15 0.83429551809547497 19 0.0053011706519310708
		3 1 0.18749178441828551 7 0.6812416663520926 11 0.13126654922962189
		3 15 0.34159798990105111 19 0.084548383951187134 20 0.57385362614776181
		2 19 0.33420569140554246 20 0.66579430859445754
		3 1 0.002852192870440765 7 0.77270982528561083 11 0.22443798184394836
		2 11 0.87984518357932562 15 0.12015481642067434
		2 11 0.0029584316983060441 15 0.99704156830169399
		1 15 1
		2 15 0.97807973192035969 20 0.021920268079640301
		1 15 1
		3 1 0.00429283806856699 11 0.32789182662963867 15 0.66781533530179438
		1 15 1
		3 1 0.0012031546533794509 15 0.75466269254684448 20 0.24413415279977607
		2 15 0.016208963468670845 20 0.97650680922819821;
	setAttr ".wl[676:840].w"
		1 21 0.0072842273031309577
		1 20 1
		2 19 0.023492339416475966 20 0.97650766058352401
		2 20 0.98594306635935736 21 0.014056933640642718
		3 19 0.042042339529336552 20 0.95519107580184937 21 0.00276658466881408
		3 19 0.010400309475155797 20 0.97824192047119141 21 0.011357770053652797
		2 11 0.50789445638656616 12 0.49210554361343384
		2 11 0.095381676071793445 12 0.90461832392820651
		2 11 0.032427855002901691 12 0.96757214499709832
		2 11 0.76780277490615845 12 0.23219722509384155
		2 4 0.21816787123680115 5 0.78183212876319885
		2 4 0.69972819755975246 5 0.30027180244024754
		2 4 0.65423495084723526 5 0.34576504915276468
		2 4 0.15434888005256653 5 0.84565111994743347
		2 11 0.058959199710165194 12 0.94104080028983483
		2 11 0.86445504426956177 12 0.13554495573043826
		2 11 0.067169714135229736 12 0.93283028586477024
		2 11 0.8401441962163515 12 0.15985580378364844
		2 21 0.80932899543784809 22 0.19067100456215194
		2 21 0.30085551738739014 22 0.69914448261260986
		2 21 0.25164246559143066 22 0.74835753440856934
		2 21 0.83570214326199022 22 0.16429785673800984
		2 21 0.21038788557052612 22 0.78961211442947388
		2 21 0.80965340137481689 22 0.19034659862518311
		2 21 0.25525826215744019 22 0.74474173784255981
		2 21 0.76766064784373222 22 0.23233935215626778
		3 20 0.0058105682549738965 21 0.7511725033106541 22 0.24301692843437195
		3 20 0.026264560424201125 21 0.25767128447402277 22 0.71606415510177612
		2 15 0.66092917323112488 16 0.33907082676887512
		2 15 0.24354594945907593 16 0.75645405054092407
		2 15 0.65328937768936157 16 0.34671062231063843
		2 15 0.20437006088231308 16 0.79562993911768687
		2 15 0.65418213605880737 16 0.34581786394119263
		2 15 0.16702300967040076 16 0.83297699032959927
		3 15 0.1771575668201365 16 0.82079404592514038 17 0.002048387254723115
		2 15 0.6398996114730835 16 0.3601003885269165
		3 1 0.46230439335200207 7 0.018516441284686169 11 0.51917916536331177
		2 1 0.0033137073308085788 11 0.99668629266919151
		3 1 0.43029568103515237 7 0.032488490069278772 11 0.53721582889556885
		2 1 0.003744902089919087 11 0.99625509791008093
		3 7 0.20709732174873352 8 0.7711746421807254 9 0.021728036070541128
		3 7 0.54307341575622559 8 0.45091154842737829 9 0.0060150358163961444
		3 7 0.21278898417949677 8 0.74634861934862207 9 0.04086239647188112
		3 7 0.54642927646636963 8 0.44419248868966049 9 0.0093782348439698966
		3 1 0.076545634857121972 7 0.7414418220606408 11 0.18201254308223724
		3 1 0.51087611051115578 7 0.35974341003385008 11 0.1293804794549942
		3 1 0.24199498066055317 7 0.34708261123550394 11 0.41092240810394287
		3 1 0.43590463490927706 7 0.54691465592240796 11 0.017180709168314934
		3 1 0.035948148311919552 7 0.92839509248733521 8 0.035656759200745236
		3 1 0.011639917859241887 11 0.028127585879161435 15 0.96023249626159668
		3 1 0.49985154094718132 11 0.057906760549324442 15 0.44224169850349426
		3 1 0.26146286010335268 11 0.015019900802866817 15 0.72351723909378052
		1 15 1
		2 4 0.65593636546702316 5 0.34406363453297684
		2 4 0.15801239013671875 5 0.84198760986328125
		2 4 0.67854490876197815 5 0.32145509123802185
		2 4 0.20572523772716522 5 0.79427476227283478
		2 4 0.28886821866035461 5 0.71113178133964539
		2 4 0.73584660435272486 5 0.26415339564727514
		3 7 0.20305603742599487 8 0.76558974244698053 9 0.031354220127024643
		3 7 0.56533509492874146 8 0.42082156149870353 9 0.013843343572554985
		3 7 0.63398134708404541 8 0.34537697378680399 9 0.020641679129150582
		3 7 0.19363819062709808 8 0.75808262568854123 9 0.048279183684360641
		3 1 0.50263275569946531 11 0.47938668727874756 15 0.017980557021787091
		3 1 0.004164467521718636 11 0.99400550127029419 15 0.0018300312079871743
		3 7 0.52229112386703491 8 0.46300137008543857 9 0.014707506047526544
		3 7 0.21333678066730499 8 0.70847620188952898 9 0.078187017443166015
		2 1 0.3469463387324494 7 0.6530536612675506
		1 7 1
		2 1 0.032693990884696073 7 0.96730600911530396
		2 1 0.0023997089387182789 7 0.99760029106128179
		2 11 0.66635000705718994 12 0.33364999294281006
		2 11 0.19352246874687151 12 0.80647753125312849
		2 7 0.0086309129059657461 11 0.99136908709403426
		3 1 0.0040460428125368769 11 0.95968449115753174 15 0.036269466029931384
		3 1 0.41258304642949045 11 0.48812100291252136 15 0.09929595065798813
		2 1 0.0046406047553263158 7 0.99535939524467365
		2 1 0.047297120094299316 7 0.95270287990570068
		3 15 0.014172254391668863 19 0.0016743556776060398 20 0.9841533899307251
		3 1 0.0010338062856466951 19 0.21683708480856106 20 0.78212910890579224
		2 19 0.14382291808701206 20 0.85617708191298791
		1 20 1
		3 1 0.0064202245366748577 15 0.79177570343017578 20 0.20180407203314937
		3 1 0.070680618286132812 15 0.50979941892226766 20 0.41951996279159953
		3 1 0.16904533163037133 15 0.65956950187683105 20 0.17138516649279761
		2 15 0.99844355525852624 20 0.0015564447414738146
		3 1 0.31030996132993571 15 0.65862852334976196 19 0.031061515320302317
		1 15 1
		2 19 0.052362763686201283 20 0.94763723631379881
		2 19 0.26447793949269582 20 0.73552206050730418
		2 19 0.19681691506805704 20 0.80318308493194301
		2 19 0.0071067542977462919 20 0.99289324570225368
		2 19 0.12747718197186572 20 0.87252281802813436
		1 20 1
		2 15 0.1786053854973127 16 0.82139461450268736
		3 15 0.66653170604498291 16 0.3321041464805603 20 0.0013641474744567977
		2 8 0.27487450838088989 9 0.72512549161911011
		2 8 0.8597521185874939 9 0.1402478814125061
		2 8 0.27232629060745239 9 0.72767370939254761
		2 8 0.82608681917190552 9 0.17391318082809448
		2 8 0.25681793689727783 9 0.74318206310272217
		2 8 0.88140588998794556 9 0.11859411001205444
		2 8 0.85926544666290283 9 0.14073455333709717
		2 8 0.22031235694885254 9 0.77968764305114746
		2 8 0.61873376369476318 9 0.38126623630523682
		2 8 0.25295311212539673 9 0.74704688787460327
		2 12 0.53004932403564453 13 0.46995067596435547
		2 12 0.22403633594512939 13 0.77596366405487061
		2 12 0.038613259792327881 13 0.96138674020767212
		2 12 0.48458373546600342 13 0.51541626453399658
		2 12 0.027614474296569824 13 0.97238552570343018
		2 12 0.45333926730811336 13 0.54666073269188664
		2 12 0.047164499759674072 13 0.95283550024032593
		2 12 0.50025826692581177 13 0.49974173307418823
		3 11 0.0069387076091656343 12 0.54001307487487793 13 0.45304821751595642
		3 11 0.0030731423439893566 12 0.14460565013266469 13 0.85232120752334595
		2 16 0.31934309005737305 17 0.68065690994262695
		2 16 0.056070625782012939 17 0.94392937421798706
		2 16 0.37990498542785645 17 0.62009501457214355
		2 16 0.061722934246063232 17 0.93827706575393677
		2 16 0.41417014598846436 17 0.58582985401153564
		2 16 0.091268956661224365 17 0.90873104333877563
		2 16 0.11169248819351196 17 0.88830751180648804
		2 16 0.238444983959198 17 0.761555016040802
		3 15 0.0033148118303903593 16 0.11518327509893093 17 0.88150191307067871
		3 15 0.017922888218401715 16 0.41249465942382812 17 0.56958245235777016
		2 20 0.73660051822662354 21 0.26339948177337646
		3 20 0.080389620239978823 21 0.91469532251358032 22 0.0049150572464408543
		2 20 0.049088054794188873 21 0.95091194520581113
		2 20 0.82774895429611206 21 0.17225104570388794
		3 20 0.569599449634552 21 0.41239613658260599 22 0.018004413782842021
		2 20 0.015978448604573245 21 0.9840215513954268
		2 20 0.012427611567757705 21 0.98757238843224227
		3 20 0.63273066282272339 21 0.36301532889312155 22 0.0042540082841550477
		2 20 0.026724227985279021 21 0.97327577201472093
		2 20 0.60062926838107289 21 0.39937073161892711
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		2 1 0.99480610409853121 19 0.0051938959014688106
		2 1 0.99842145144438343 19 0.0015785485556166342
		1 1 1
		2 1 0.99425548538937725 19 0.0057445146106227911
		2 1 0.99595022201538086 19 0.0040497779846191406
		1 1 1
		2 1 0.99674273331500207 3 0.0032572666849979138
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		2 1 0.99769797326544163 19 0.0023020267345583777
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		2 1 0.99745660804087977 19 0.0025433919591202228
		1 1 1;
	setAttr -s 25 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.35785 0.72344200000000003 -0.59040300000000001 0
		 0.93104299999999995 -0.22806399999999999 0.28486099999999998 0 0.071430800000000003 -0.65162799999999999 -0.75516799999999995 0
		 -4.6864850000000002 -4.8386570000000004 -5.7631309999999996 1;
	setAttr ".pm[1]" -type "matrix" -0.245952 0.94953500000000002 0.194658 0 -0.030304000000000001 0.19319600000000001 -0.98069200000000001 0
		 -0.968808 -0.24710199999999999 -0.018742200000000001 0 -6.3616260000000002 -4.4041639999999997 4.3269489999999999 1;
	setAttr ".pm[2]" -type "matrix" -0.245952 0.937724 -0.24532000000000001 0 -0.030304000000000001 -0.26040999999999997 -0.96502200000000005 0
		 -0.968808 -0.22991500000000001 0.092465199999999997 0 7.2497670000000003 -2.036619 5.8284929999999999 1;
	setAttr ".pm[3]" -type "matrix" -0.153171 0.95902299999999996 -0.23835700000000001 0
		 -0.473607 0.140456 0.86946500000000004 0 0.86731499999999995 0.246064 0.43268600000000002 0
		 4.007536 1.660876 -0.57342000000000004 1;
	setAttr ".pm[4]" -type "matrix" 0.12329 0.96331999999999995 -0.23835700000000001 0
		 -0.41483199999999998 0.26822600000000002 0.86946500000000004 0 0.90150600000000003 -0.0083183200000000006 0.43268600000000002 0
		 1.1864049999999999 1.3825780000000001 -0.57342000000000004 1;
	setAttr ".pm[5]" -type "matrix" 0.10647 0.96532399999999996 -0.23835700000000001 0
		 -0.41944700000000001 0.26095000000000002 0.86946500000000004 0 0.90151400000000004 0.0074059699999999996 0.43268600000000002 0
		 -1.474642 1.3570660000000001 -0.57342000000000004 1;
	setAttr ".pm[6]" -type "matrix" 0.10647 0.96532399999999996 -0.23835700000000001 0
		 -0.41944700000000001 0.26095000000000002 0.86946500000000004 0 0.90151400000000004 0.0074059699999999996 0.43268600000000002 0
		 -4.8825979999999998 1.3570660000000001 -0.57342000000000004 1;
	setAttr ".pm[7]" -type "matrix" 0.059302000000000001 0.26067200000000001 0.96360400000000002 0
		 -0.232212 -0.93522000000000005 0.26728400000000002 0 0.97085600000000005 -0.23961099999999999 0.0050707699999999996 0
		 -0.913022 5.218108 -1.823642 1;
	setAttr ".pm[8]" -type "matrix" 0.150588 0.220885 0.96360400000000002 0 -0.55837000000000003 -0.785354 0.26728400000000002 0
		 0.81581000000000004 -0.57829799999999998 0.0050707699999999996 0 -2.8090220000000001 6.7117769999999997 -1.823642 1;
	setAttr ".pm[9]" -type "matrix" 0.17579900000000001 0.20139899999999999 0.96360400000000002 0
		 -0.64784600000000003 -0.713341 0.26728400000000002 0 0.74120900000000001 -0.67125500000000005 0.0050707699999999996 0
		 -4.190067 7.261895 -1.823642 1;
	setAttr ".pm[10]" -type "matrix" 0.17579900000000001 0.20139899999999999 0.96360400000000002 0
		 -0.64784600000000003 -0.713341 0.26728400000000002 0 0.74120900000000001 -0.67125500000000005 0.0050707699999999996 0
		 -7.1022470000000002 7.261895 -1.823642 1;
	setAttr ".pm[11]" -type "matrix" 0.19788900000000001 0.0093346000000000002 0.98018000000000005 0
		 -0.137875 -0.98974799999999996 0.037261500000000003 0 0.97047899999999998 -0.142516 -0.194574 0
		 -1.6253979999999999 6.2449349999999999 -2.697543 1;
	setAttr ".pm[12]" -type "matrix" 0.180198 -0.082315600000000003 0.98018000000000005 0
		 -0.57577999999999996 -0.81675500000000001 0.037261500000000003 0 0.79749999999999999 -0.57108199999999998 -0.194574 0
		 -2.6719240000000002 8.4008970000000005 -2.697543 1;
	setAttr ".pm[13]" -type "matrix" 0.16783400000000001 -0.105257 0.98018000000000005 0
		 -0.67801 -0.73410699999999995 0.037261500000000003 0 0.71563500000000002 -0.67082600000000003 -0.194574 0
		 -4.4795059999999998 9.0673630000000003 -2.697543 1;
	setAttr ".pm[14]" -type "matrix" 0.16783400000000001 -0.105257 0.98018000000000005 0
		 -0.67801 -0.73410699999999995 0.037261500000000003 0 0.71563500000000002 -0.67082600000000003 -0.194574 0
		 -7.1264669999999999 9.0673630000000003 -2.697543 1;
	setAttr ".pm[15]" -type "matrix" 0.341474 -0.193743 0.91970600000000002 0 -0.155307 -0.97670400000000002 -0.148086 0
		 0.92697099999999999 -0.092269199999999996 -0.36360900000000002 0 -1.9939519999999999 6.5772110000000001 -3.4717820000000001 1;
	setAttr ".pm[16]" -type "matrix" 0.23637 -0.31348100000000001 0.91970600000000002 0
		 -0.53063000000000005 -0.83456699999999995 -0.148086 0 0.81397900000000001 -0.45301999999999998 -0.36360900000000002 0
		 -2.755795 8.3606999999999996 -3.4717820000000001 1;
	setAttr ".pm[17]" -type "matrix" 0.18059500000000001 -0.34860600000000003 0.91970600000000002 0
		 -0.66276999999999997 -0.73403399999999996 -0.148086 0 0.72672000000000003 -0.58281000000000005 -0.36360900000000002 0
		 -3.859461 9.1351089999999999 -3.4717820000000001 1;
	setAttr ".pm[18]" -type "matrix" 0.18059500000000001 -0.34860600000000003 0.91970600000000002 0
		 -0.66276999999999997 -0.73403399999999996 -0.148086 0 0.72672000000000003 -0.58281000000000005 -0.36360900000000002 0
		 -6.2809520000000001 9.1351089999999999 -3.4717820000000001 1;
	setAttr ".pm[19]" -type "matrix" -0.469474 0.33617399999999997 0.81644399999999995 0
		 -0.011044999999999999 0.922373 -0.38614199999999999 0 -0.88287700000000002 -0.190301 -0.42931799999999998 0
		 -1.8944570000000001 -6.3282610000000004 -4.0917560000000002 1;
	setAttr ".pm[20]" -type "matrix" 0.40973700000000002 -0.42924000000000001 0.80490300000000004 0
		 -0.21940799999999999 -0.90284200000000003 -0.36977900000000002 0 0.88542399999999999 -0.0250896 -0.46410699999999999 0
		 -1.9866699999999999 7.1636449999999998 -3.934984 1;
	setAttr ".pm[21]" -type "matrix" 0.24817600000000001 -0.539018 0.80490300000000004 0
		 -0.50065199999999999 -0.782694 -0.36977900000000002 0 0.82930999999999999 -0.31120599999999998 -0.46410699999999999 0
		 -2.7080709999999999 8.5035679999999996 -3.934984 1;
	setAttr ".pm[22]" -type "matrix" 0.19647500000000001 -0.55993700000000002 0.80490300000000004 0
		 -0.57192399999999999 -0.73223400000000005 -0.36977900000000002 0 0.79642999999999997 -0.38769100000000001 -0.46410699999999999 0
		 -3.6318890000000001 8.8837829999999993 -3.934984 1;
	setAttr ".pm[23]" -type "matrix" 0.19647500000000001 -0.55993700000000002 0.80490300000000004 0
		 -0.57192399999999999 -0.73223400000000005 -0.36977900000000002 0 0.79642999999999997 -0.38769100000000001 -0.46410699999999999 0
		 -5.5760129999999997 8.8837829999999993 -3.934984 1;
	setAttr ".pm[24]" -type "matrix" 0.35785 0.72344200000000003 -0.59040300000000001 0
		 0.93104299999999995 -0.22806399999999999 0.28486099999999998 0 0.071430800000000003 -0.65162799999999999 -0.75516799999999995 0
		 -3.7192599999999998 -1.110336 0.77826499999999998 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 25 ".ma";
	setAttr -s 25 ".dpf[0:24]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4;
	setAttr -s 25 ".lw";
	setAttr -s 25 ".lw";
	setAttr ".mi" 5;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
	setAttr -s 25 ".ifcl";
	setAttr -s 25 ".ifcl";
createNode dagPose -n "bindPose2";
	rename -uid "7216DFC3-4D2C-997A-89BD-C89C01312EF4";
	setAttr -s 25 ".wm";
	setAttr -s 25 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 -2.4296621656162025 -0.071491728271157864
		 1.2038504171037721 0 1.7749772071838379 4.9014878273010254 -7.1703767776489258 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 -2.7755575615628914e-17 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.31257480972293694 -0.76965180720134363 -0.018750937403111373 0.55640047299124407 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 -13.611392974853516 0
		 1.4210854715202004e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.22704248359730514 0 0 0.97388485491970123 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 8.5348395018058899e-16 1.1102230246251565e-16
		 -5.5511151231257827e-17 0 -2.6298406124115008 -4.1470298767089844 2.0564148426055939 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.24596230643843825 -0.94503698947379278 0.031994285534306638 0.21303520373624504 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 6.9085362430776362e-16 -4.4408920985006262e-16
		 1.6653345369377351e-16 0 3.2588241100311275 8.8817841970012523e-16 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.14234999031118031 0.98981638714380094 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 1.0499413838349625e-15 -3.8163916471489756e-16
		 2.0122792321330972e-16 0 2.637153625488283 1.4876988529977098e-14 -1.0325074129013956e-14 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.0087207455487503492 0.99996197357553251 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.4079568386077881 -7.1054273576010019e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 1.0824674490095276e-15 -2.0816681711721685e-17
		 -3.3306690738754691e-16 0 -8.7078704833984446 -3.5099911689758319 -0.68139636516571045 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.010945052815994893 -0.73294134748942497 -0.66095210760655687 0.16068446847686169 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 1.2845627339608257e-15 2.7495367094232407e-16
		 -4.9960036108132054e-16 0 4.1574721336364755 0 8.4376949871511897e-15 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.18624676479741858 0.98250299877531933 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 1.2962721174236693e-15 -4.5493123157491766e-16
		 -4.4408920985006271e-16 0 2.2153005599975599 7.1054273576010019e-15 6.6613381477509392e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.059595889203378695 0.99822258539368791 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.9121809005737305 -1.7763568394002505e-14
		 -7.1054273576010019e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 1.1102230246251563e-15 5.8980598183211429e-17
		 -3.3306690738754691e-16 0 -9.1422328948974663 -0.95321553945541426 -1.0838780403137234 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.033651810970388746 -0.64800881711039426 -0.75659454199909537 0.080726870264986678 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 6.5225602696727917e-16 -1.942890293094023e-16
		 -1.6653345369377346e-16 0 4.5967426300048828 1.3322676295501878e-14 6.6613381477509392e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.2355819241122247 0.97185449375489441 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 2.4980018054066002e-16 -3.3306690738754696e-16
		 -5.5511151231257747e-17 0 2.9590597152709956 3.5527136788005009e-15 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.065775561660553053 0.99783444292539769 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.6469612121582031 -1.7763568394002505e-15
		 -2.1316282072803006e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 7.7715611723760978e-16 1.6653345369377351e-16
		 -4.1633363423443375e-16 0 -8.9531736373901438 1.2713979482650757 -0.18533265590668169 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.10180097943600441 0.56929920878800144 0.8152096916331929 -0.031114789514641448 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 2.1094237467877978e-15 2.7755575615628963e-16
		 -3.3306690738754701e-16 0 3.8572025299072257 0 6.2172489379008766e-15 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.20290461358497658 0.97919850785524143 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 9.1593399531575434e-16 -1.6653345369377336e-16
		 -1.3877787807814469e-16 0 2.5775291919708261 -3.5527136788005009e-15 -1.4210854715202004e-14 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.083943616539720267 0.99647050595701647 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.4214906692504883 -1.4210854715202004e-14
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 -4.9960036108132064e-16 -1.9428902930940239e-16
		 -2.9143354396410359e-16 0 -3.127150297164921 1.9068031311035156 1.1507591009139997 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.46932156704529349 0.08311149449303154 -0.086728355557106368 0.87481880325679162 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 1.457167719820518e-16 4.3021142204224816e-16
		 3.7459185059374178e-17 0 -5.3570647239685076 0.24383999407291501 -0.14630399644374892 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.018903390842771508 -0.0067427188449813557 -0.9928663833340029 0.11753102740331932 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 1.0130785099704555e-15 -1.6653345369377338e-16
		 -4.4408920985006252e-16 0 3.335595130920411 1.3322676295501878e-14 -1.5987211554602254e-14 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.16458225990843303 0.98636336089872734 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 1.2212453270876726e-15 -5.2735593669694955e-16
		 -3.6082248300317592e-16 0 1.7418223619461064 1.2434497875801753e-14 7.1054273576010019e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.046993984558681756 0.99889517238562042 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.9441238641738892 -6.2172489379008766e-15
		 7.1054273576010019e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 -2.4980018054066027e-16 -5.5511151231257827e-16
		 -7.2164496600635185e-16 0 -7.2159080505371147 -1.3962129354476929 1.8992198705673209 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.31257480972293716 0.76965180720134374 0.018750937403111512 0.55640047299124396 1
		 1 1 yes;
	setAttr -s 25 ".m";
	setAttr -s 25 ".p";
	setAttr ".bp" yes;
createNode displayLayer -n "L_Geo_Layer";
	rename -uid "5A32C4FB-4A17-78D2-78C7-A7A141D70767";
	setAttr ".dt" 2;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 4;
createNode displayLayer -n "L_Skeleton_Layer";
	rename -uid "0082B74C-48B7-07DC-C7E1-2A831864E3C6";
	setAttr ".v" no;
	setAttr ".c" 14;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 5;
createNode displayLayer -n "L_Control_Layer";
	rename -uid "24F082FE-4175-1FFE-907A-B4B603DAB061";
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 6;
createNode animCurveTL -n "pinky_01_ctrl_translateX";
	rename -uid "B7A5BA82-46BF-E5C9-1D1F-5F98E2EC1EBE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTL -n "pinky_01_ctrl_translateY";
	rename -uid "B5BD0A0D-4B77-725A-5070-E394A8B5624A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTL -n "pinky_01_ctrl_translateZ";
	rename -uid "463169E0-412A-3429-6D23-DDAB0EAE39A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTL -n "thumb_01_ctrl_translateX";
	rename -uid "12F84B45-4172-9FC7-3506-05895F54493A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTL -n "thumb_01_ctrl_translateY";
	rename -uid "0AAD9F26-41A7-7139-4591-BFB65E27DAA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTL -n "thumb_01_ctrl_translateZ";
	rename -uid "91C4D308-456D-680A-3F3B-D8B3D85271BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTU -n "pinky_01_ctrl_visibility";
	rename -uid "C765D458-439D-AC99-C456-148D60A23FE4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "pinky_01_ctrl_rotateX";
	rename -uid "61BD4F51-4C66-CA7C-D256-149896D8D031";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTA -n "pinky_01_ctrl_rotateY";
	rename -uid "C9B935EB-4E1E-2170-7972-6686B24A4E8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTA -n "pinky_01_ctrl_rotateZ";
	rename -uid "E33E073A-4851-9F39-8135-5499912821BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTU -n "pinky_01_ctrl_scaleX";
	rename -uid "86FA66A3-4A68-2FF1-CE06-6E8B00C4B7E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode animCurveTU -n "pinky_01_ctrl_scaleY";
	rename -uid "FF251F9D-4B06-0168-FF21-2488964E636D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode animCurveTU -n "pinky_01_ctrl_scaleZ";
	rename -uid "231209F2-4597-F630-6222-70ACB5304CB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode animCurveTU -n "thumb_01_ctrl_visibility";
	rename -uid "EA4A009F-4D6F-F340-C06D-C094260383D8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "thumb_01_ctrl_rotateX";
	rename -uid "9AC455F4-4C00-57C8-7CAE-3EB20CF44773";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  201 0 208.07142925170069 0 215.14285867346939 -0.26437119462956321
		 222.21428775510205 0.079827805217394091 237.14286071428572 0.24828948038278453 254 -0.4192492113204116
		 262 11.775895071770615 272 11.777139965128439;
createNode animCurveTA -n "thumb_01_ctrl_rotateY";
	rename -uid "6A1B5AA0-46C0-2D93-B177-D187FF6AD1DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  201 0 208.07142925170069 2.7516865981435212
		 215.14285867346939 2.738967004859731 222.21428775510205 2.7505293221332061 237.14286071428572 2.7404704863691616
		 254 -9.5712778432088221 262 -0.84129615975701866 272 1.1798112584027769;
createNode animCurveTA -n "thumb_01_ctrl_rotateZ";
	rename -uid "7E914FCD-4CE2-CCF6-EE99-4FB627FAF958";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  201 0 208.07142925170069 0 215.14285867346939 -5.515363466942377
		 222.21428775510205 1.66305134623229 237.14286071428572 5.1789191008211439 254 12.332766921315098
		 262 17.562266118482508 272 17.983611127878085;
createNode animCurveTU -n "thumb_01_ctrl_scaleX";
	rename -uid "C311F2BF-4A95-7DEC-CC43-FF931EEAA85D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode animCurveTU -n "thumb_01_ctrl_scaleY";
	rename -uid "73CBE11B-4349-4591-BEF0-639D953F4BD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode animCurveTU -n "thumb_01_ctrl_scaleZ";
	rename -uid "4C3D5364-4607-E3A4-3AA5-348033CE67F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode timeEditor -s -n "timeEditor";
	rename -uid "29713992-4397-A7A1-64FC-B8BEFABDD4D6";
	setAttr ".ac" 0;
createNode timeEditorTracks -n "Composition1";
	rename -uid "0910F0DE-4692-0BD7-7AEB-F9A4FFC3B5A1";
createNode animCurveTL -n "COG_ctrl_translateX";
	rename -uid "FE625007-44BE-A4C4-0310-52ACD8EF63D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  201 -1.7763568394002505e-14 212.00000102040815 0.042950257488657891
		 215.92857295918367 0.042950257488657891 234.78571768707482 -0.55709489059169559 252 -0.19887579060121119
		 258 -0.19887579060121119 267 6.0053427995881892 278 4.0048744613830269;
	setAttr -s 8 ".kit[1:7]"  9 9 18 3 3 18 18;
	setAttr -s 8 ".kot[1:7]"  9 9 18 3 3 18 18;
createNode animCurveTL -n "COG_ctrl_translateY";
	rename -uid "4CB1D230-4FC2-7391-A563-33BEDEFE85F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  201 -15.178452798140921 212.00000102040815 -15.777926014059153
		 215.92857295918367 -15.777926014059153 234.78571768707482 -13.695531852484411 252 -15.307761724256265
		 258 -15.307761724256265 269 -18.839001560386269 270 -19.003550717540111 278 -19.162383119988984;
	setAttr -s 9 ".kit[1:8]"  9 9 18 3 3 18 18 18;
	setAttr -s 9 ".kot[1:8]"  9 9 18 3 3 18 18 18;
createNode animCurveTL -n "COG_ctrl_translateZ";
	rename -uid "82D03816-42C2-F5BB-2633-2999C6F1A21E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  201 -5.8286708792820718e-16 212.00000102040815 2.9124315699709786
		 215.92857295918367 2.9124315699709786 234.78571768707482 4.0398571455100045 252 5.8193345658895224
		 258 5.8193345658895224 269 6.7267213677625834 278 5.3680559868326663;
	setAttr -s 8 ".kit[1:7]"  9 9 18 3 3 18 1;
	setAttr -s 8 ".kot[1:7]"  9 9 18 3 3 18 1;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[7]"  1;
	setAttr -s 8 ".koy[7]"  0;
createNode animCurveTU -n "COG_ctrl_visibility";
	rename -uid "9364DCE1-4F7F-F59C-8E42-23BA9E9D29A0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  201 1 215.92857295918367 1 223.00000238095237 1
		 234.78571768707482 1 252 1 269 1 272 1 278 1;
	setAttr -s 8 ".kot[0:7]"  5 9 9 9 5 9 5 5;
createNode animCurveTA -n "COG_ctrl_rotateX";
	rename -uid "1C0385EB-472C-E1DF-9DA8-F4A8D9DBCD72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  201 0 212.00000119047618 -0.8980463576149158
		 223.00000204081633 18.296160055372528 234.78571785714286 67.835206061067794 237.14286071428572 66.352844532209033
		 252 21.482937344075456 255 18.609201480009325 261 22.548386132321077 269 0.52987343108186202
		 272 0.4852809913938978 278 0.5790990120759788;
	setAttr -s 11 ".kit[1:10]"  9 9 1 18 18 3 3 1 
		18 18;
	setAttr -s 11 ".kot[1:10]"  9 9 1 18 18 3 3 1 
		18 18;
	setAttr -s 11 ".ktl[3:10]" no yes yes yes yes yes yes yes;
	setAttr -s 11 ".kix[3:10]"  0.90999212303176658 0.78457700884759074 
		0.66603773745296579 1 1 0.99988239333007189 1 1;
	setAttr -s 11 ".kiy[3:10]"  0.41462553710563699 -0.62003138403452407 
		-0.74591804663014705 0 0 -0.015336215586890823 0 0;
	setAttr -s 11 ".kox[3:10]"  0.9711516075136476 0.78457700884759074 
		0.66603773745296579 1 1 0.9998823928986561 1 1;
	setAttr -s 11 ".koy[3:10]"  0.23846290114744945 -0.62003138403452407 
		-0.74591804663014716 0 0 -0.015336243714077288 0 0;
createNode animCurveTA -n "COG_ctrl_rotateY";
	rename -uid "C9600CAE-45EE-4D61-1ABB-BA944FA26AF3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  201 0 212.00000102040815 3.3433315304038924
		 218.28571581632653 -9.365744961328339 225.35714540816326 7.5776929649979694 234.78571751700682 17.775571891588033
		 237.14286071428572 17.482219980461807 241.85714693877551 3.9705397953847368 252 -23.086747141041297
		 261 -35.407726790489718 269 27.978676913327003 272 28.442600905368526 278 28.647497369439741;
	setAttr -s 12 ".kit[1:11]"  9 9 1 10 18 9 18 3 
		1 18 18;
	setAttr -s 12 ".kot[1:11]"  9 9 9 10 18 9 18 3 
		1 18 18;
	setAttr -s 12 ".ktl[3:11]" no yes yes yes yes yes yes yes yes;
	setAttr -s 12 ".kix[3:11]"  0.67194229776520453 1 0.98799071876657685 
		0.65819934840929861 0.75756122191299413 1 0.82959793592490061 0.99951586573076889 
		1;
	setAttr -s 12 ".kiy[3:11]"  0.74060350287722598 0 -0.15451323448527915 
		-0.75284368746345642 -0.6527641189998814 0 0.55836123138085469 0.031113247218372948 
		0;
	setAttr -s 12 ".kox[9:11]"  0.82959805814293364 0.99951586573076889 
		1;
	setAttr -s 12 ".koy[9:11]"  0.55836104979258161 0.031113247218372948 
		0;
createNode animCurveTA -n "COG_ctrl_rotateZ";
	rename -uid "C0E39330-4B82-06D7-E576-71AEFE0BC467";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  201 0 212.00000119047618 0.67459063373853501
		 215.92857295918367 -0.77677544278433253 223.00000204081633 0.85874874652919897 234.78571785714286 21.224849580070394
		 237.14286071428572 20.660569794049156 252 -2.4643249677265766 255 -2.3474773605383277
		 261 -6.4020469456133604 269 16.037820702086002 272 17.288843145811157 278 16.681434077888301;
	setAttr -s 12 ".kit[1:11]"  9 9 9 10 18 18 3 3 
		9 18 18;
	setAttr -s 12 ".kot[1:11]"  9 9 9 10 18 18 3 3 
		9 18 18;
	setAttr -s 12 ".ktl[4:11]" no yes yes yes yes yes yes yes;
createNode animCurveTU -n "COG_ctrl_scaleX";
	rename -uid "A0C64EE7-4B8B-F9DF-1DBB-DE8C85E1107D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  201 1 215.92857295918367 1 223.00000238095237 1
		 234.78571768707482 1 252 1 269 1 272 1 278 1;
	setAttr -s 8 ".kit[0:7]"  18 9 9 9 18 9 18 18;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 18 9 18 18;
createNode animCurveTU -n "COG_ctrl_scaleY";
	rename -uid "AADA4774-406E-2795-43BB-BC9C8DEEDA42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  201 1 215.92857295918367 1 223.00000238095237 1
		 234.78571768707482 1 252 1 269 1 272 1 278 1;
	setAttr -s 8 ".kit[0:7]"  18 9 9 9 18 9 18 18;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 18 9 18 18;
createNode animCurveTU -n "COG_ctrl_scaleZ";
	rename -uid "2FC3C0F5-4043-D581-B989-55881BEBB2BF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  201 1 215.92857295918367 1 223.00000238095237 1
		 234.78571768707482 1 252 1 269 1 272 1 278 1;
	setAttr -s 8 ".kit[0:7]"  18 9 9 9 18 9 18 18;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 18 9 18 18;
createNode animCurveTU -n "index_01_ctrl_visibility";
	rename -uid "9305A3E1-4184-B152-5DA2-6CB79AB62B52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  201 1 209.64285799319728 1 220.64285867346939 1
		 238.71428928571427 1 243.42857551020407 1 255 1 261 1;
	setAttr -s 7 ".kit[5:6]"  3 3;
	setAttr -s 7 ".kot[0:6]"  5 5 5 5 5 3 3;
createNode animCurveTL -n "index_01_ctrl_translateX";
	rename -uid "A60AD437-49AB-92BC-EAD2-BB8D4A95B333";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  201 0 209.64285799319728 0 220.64285867346939 0
		 238.71428928571427 0 243.42857551020407 0 255 0 261 0;
	setAttr -s 7 ".kit[5:6]"  3 3;
	setAttr -s 7 ".kot[5:6]"  3 3;
createNode animCurveTL -n "index_01_ctrl_translateY";
	rename -uid "87450D01-446A-3A75-FFA7-23BF53F78000";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  201 0 209.64285799319728 0 220.64285867346939 0
		 238.71428928571427 0 243.42857551020407 0 255 0 261 0;
	setAttr -s 7 ".kit[5:6]"  3 3;
	setAttr -s 7 ".kot[5:6]"  3 3;
createNode animCurveTL -n "index_01_ctrl_translateZ";
	rename -uid "37A4027E-4AB2-1304-332E-47B226153570";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  201 0 209.64285799319728 0 220.64285867346939 0
		 238.71428928571427 0 243.42857551020407 0 255 0 261 0;
	setAttr -s 7 ".kit[5:6]"  3 3;
	setAttr -s 7 ".kot[5:6]"  3 3;
createNode animCurveTA -n "index_01_ctrl_rotateX";
	rename -uid "B5D89314-46C2-F97D-8750-70849DA7F633";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  201 0 209.64285799319728 0 220.64285867346939 0.55794284201625211
		 238.71428928571427 0 243.42857551020407 0 255 -1.1980340375189775 261 0 272 0 278 1.916761663274573;
	setAttr -s 9 ".kit[5:8]"  3 3 18 18;
	setAttr -s 9 ".kot[5:8]"  3 3 18 18;
createNode animCurveTA -n "index_01_ctrl_rotateY";
	rename -uid "A93A4EB2-4D35-2F1D-91A9-37BD874E6304";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  201 0 209.64285799319728 0 220.64285867346939 -1.0953216640410959
		 238.71428928571427 0 243.42857551020407 0 255 0.28785621392279404 261 0 272 0 278 -2.7802427347268002;
	setAttr -s 9 ".kit[5:8]"  3 3 18 18;
	setAttr -s 9 ".kot[5:8]"  3 3 18 18;
createNode animCurveTA -n "index_01_ctrl_rotateZ";
	rename -uid "329E9508-485A-3F55-6CB5-31A6B38A974C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  201 0 209.64285799319728 5.2766728057154326
		 220.64285867346939 -45.712905238896646 238.71428928571427 39.511063841929889 243.42857551020407 31.86107661730788
		 255 -35.423314674497462 261 -45.662522440442885 272 -6.9650244246018476 278 -17.709389481265866;
	setAttr -s 9 ".kit[5:8]"  3 3 18 18;
	setAttr -s 9 ".kot[5:8]"  3 3 18 18;
createNode animCurveTU -n "index_01_ctrl_scaleX";
	rename -uid "51AE61A0-4BA5-DBD4-4F93-958C2EBD3C8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  201 1 209.64285799319728 1 220.64285867346939 1
		 238.71428928571427 1 243.42857551020407 1 255 1 261 1;
	setAttr -s 7 ".kit[5:6]"  3 3;
	setAttr -s 7 ".kot[5:6]"  3 3;
createNode animCurveTU -n "index_01_ctrl_scaleY";
	rename -uid "8A0F47A2-43B2-A5CE-0D2F-30B0FB6E2C10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  201 1 209.64285799319728 1 220.64285867346939 1
		 238.71428928571427 1 243.42857551020407 1 255 1 261 1;
	setAttr -s 7 ".kit[5:6]"  3 3;
	setAttr -s 7 ".kot[5:6]"  3 3;
createNode animCurveTU -n "index_01_ctrl_scaleZ";
	rename -uid "E6701237-4769-47F6-8336-7A8016D74A0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  201 1 209.64285799319728 1 220.64285867346939 1
		 238.71428928571427 1 243.42857551020407 1 255 1 261 1;
	setAttr -s 7 ".kit[5:6]"  3 3;
	setAttr -s 7 ".kot[5:6]"  3 3;
createNode animCurveTU -n "pinky_04_ctrl_visibility";
	rename -uid "DD954E0C-4E6D-F04A-31BA-39AD9E9D4750";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 1 210.42857244897959 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pinky_04_ctrl_translateX";
	rename -uid "11EFBBE2-40EA-6617-0DAE-36A6E732DC7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 0 210.42857244897959 0;
createNode animCurveTL -n "pinky_04_ctrl_translateY";
	rename -uid "FCC262D3-49EB-D98C-5B8B-BA9FA13D84CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 0 210.42857244897959 0;
createNode animCurveTL -n "pinky_04_ctrl_translateZ";
	rename -uid "0B06989F-4B78-1CFE-953F-2490D4B0786A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 0 210.42857244897959 0;
createNode animCurveTA -n "pinky_04_ctrl_rotateX";
	rename -uid "93000C3B-4044-9E9C-BAAB-23994A9A8579";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  201 0 210.42857244897959 0 219.07143044217688 0
		 229.28571717687075 -3.5348974709863303 252 -2.9784241020696545 272 -3.4767177471852446;
createNode animCurveTA -n "pinky_04_ctrl_rotateY";
	rename -uid "F7D6F57E-49C5-8013-35EC-65A5E432A704";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  201 0 210.42857244897959 0 219.07143044217688 0
		 229.28571717687075 1.138778121295495 252 -1.9034117191369024 272 -0.63533559742921364;
createNode animCurveTA -n "pinky_04_ctrl_rotateZ";
	rename -uid "103DE64B-4352-B8EE-E9FB-E1840A353193";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  201 0 210.42857244897959 16.618891436653392
		 219.07143044217688 0 229.28571717687075 87.468159840842588 252 55.193092197614661
		 272 77.402854853609696;
createNode animCurveTU -n "pinky_04_ctrl_scaleX";
	rename -uid "F7428076-478C-953D-3603-36B9B244814B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 1 210.42857244897959 1;
createNode animCurveTU -n "pinky_04_ctrl_scaleY";
	rename -uid "45D6B20A-42C1-ADE8-67E8-5C9EDA05ADE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 1 210.42857244897959 1;
createNode animCurveTU -n "pinky_04_ctrl_scaleZ";
	rename -uid "0A0F350F-4819-4177-41A2-A3B6E9A67330";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 1 210.42857244897959 1;
createNode animCurveTU -n "middle_01_ctrl_visibility";
	rename -uid "22571634-4B23-80AC-53D7-FE8CDFFA8FD0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "middle_01_ctrl_translateX";
	rename -uid "28CCF046-4F97-22A2-9B14-FA97C573C89F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTL -n "middle_01_ctrl_translateY";
	rename -uid "D476A954-480D-03D7-B80C-94ACE49DED9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTL -n "middle_01_ctrl_translateZ";
	rename -uid "1C4E00B7-47A3-68EE-11DA-D6901FC71561";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTA -n "middle_01_ctrl_rotateX";
	rename -uid "08F8D5BC-4342-CD95-60C0-DC81C98E0CCB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  201 0 209.64285799319728 -0.0017809659738992306
		 220.64285901360543 0.16328502758158367 235.57143180272109 -5.3999999910249974 259 -5.397051945525555
		 267 -5.3908827070514214 278 -5.4085041932930142;
createNode animCurveTA -n "middle_01_ctrl_rotateY";
	rename -uid "9ED28AB1-48DC-3EE5-295E-6BB530079092";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  201 0 209.64285799319728 -0.52866785517964421
		 220.64285901360543 -1.1192119963877041 235.57143180272109 3.975693351829396e-16 259 -0.17867478370797518
		 267 0.31412560125844613 278 3.6572218531930347;
createNode animCurveTA -n "middle_01_ctrl_rotateZ";
	rename -uid "5E564C41-4915-F6F8-95B4-E3960EF5B345";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  201 0 209.64285799319728 1.3199716485919024
		 220.64285901360543 -15.347599271032481 235.57143180272109 52.935689287599395 259 51.045158353085334
		 267 56.26069031388144 278 50.826058527732989;
createNode animCurveTU -n "middle_01_ctrl_scaleX";
	rename -uid "AAF1C41C-4EB8-60B4-50B3-03903DB22EED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode animCurveTU -n "middle_01_ctrl_scaleY";
	rename -uid "F79F9D47-44D8-0F7D-8989-00AF38D99F19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode animCurveTU -n "middle_01_ctrl_scaleZ";
	rename -uid "4B84A29D-46AA-7AF3-262C-0680C0E6C2A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode animCurveTU -n "ring_03_ctrl_visibility";
	rename -uid "469A62BE-48BE-8823-9359-34A923F6B6F5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "ring_03_ctrl_translateX";
	rename -uid "6B06B325-45D6-0202-F9BC-4898913D5481";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTL -n "ring_03_ctrl_translateY";
	rename -uid "CC6FC266-403F-7840-2590-459A1B1F974F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTL -n "ring_03_ctrl_translateZ";
	rename -uid "8982C25B-405A-86E9-F9D3-C6BC8668B101";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTA -n "ring_03_ctrl_rotateX";
	rename -uid "ED1D278B-4C8A-FFBB-38CF-A9B625960475";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  200.99998129251702 0 201 0 208.0714299319728 0
		 212.00000170068026 0 216.71428758503401 0 231.64286037414965 0;
createNode animCurveTA -n "ring_03_ctrl_rotateY";
	rename -uid "350BD3A4-4939-9E52-AB8D-C78FF9569198";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  200.99998129251702 0 201 0 208.0714299319728 0
		 212.00000170068026 0 216.71428758503401 0 231.64286037414965 0;
createNode animCurveTA -n "ring_03_ctrl_rotateZ";
	rename -uid "4B53AF46-406E-9157-99DA-24BB075701AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  200.99998129251702 69.400174396331082 201 0
		 208.0714299319728 12.505039262913376 212.00000170068026 15.777740647518344 216.71428758503401 10.894801850099082
		 231.64286037414965 74.892731836952279;
createNode animCurveTU -n "ring_03_ctrl_scaleX";
	rename -uid "E4228728-428A-6FF7-8A45-C38A7B8537FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode animCurveTU -n "ring_03_ctrl_scaleY";
	rename -uid "0FBED28B-4ECE-E6DF-89EC-DDA90393F9D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode animCurveTU -n "ring_03_ctrl_scaleZ";
	rename -uid "E8FD1872-4F38-57E2-5BA8-538D5BD610E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode animCurveTU -n "pinky_03_ctrl_visibility";
	rename -uid "7794F674-425D-105E-682B-78BA6B5FD4C0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 1 210.42857244897959 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pinky_03_ctrl_translateX";
	rename -uid "0B0A51D2-4BF5-9FE0-C2D8-38A2A55937FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 0 210.42857244897959 0;
createNode animCurveTL -n "pinky_03_ctrl_translateY";
	rename -uid "5AB25B79-425B-053E-A61F-0EB564DF7FDF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 0 210.42857244897959 0;
createNode animCurveTL -n "pinky_03_ctrl_translateZ";
	rename -uid "FDA5624E-4FAF-E07D-05EE-EFAC3F9B86E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 0 210.42857244897959 0;
createNode animCurveTA -n "pinky_03_ctrl_rotateX";
	rename -uid "E64D9BC2-4E44-2128-E44D-4289C839BD13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  201 0 210.42857244897959 0 219.07143044217688 0
		 229.28571717687075 -0.5270627551656778 252 0.7415127050783259 272 -0.62320460855909998;
createNode animCurveTA -n "pinky_03_ctrl_rotateY";
	rename -uid "E6C6E75D-4DD5-698A-8CB6-AA9D2CD2FB79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  201 0 210.42857244897959 0 219.07143044217688 0
		 229.28571717687075 -3.4947491331397447 252 -3.4556544737560042 272 -3.4789101007436982;
createNode animCurveTA -n "pinky_03_ctrl_rotateZ";
	rename -uid "C7958B15-47B0-7A3E-BB7C-CE9B9284C4D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  201 0 210.42857244897959 16.618891436653392
		 219.07143044217688 0 229.28571717687075 72.192715291311899 252 51.49213599493924
		 272 73.773399269191614;
createNode animCurveTU -n "pinky_03_ctrl_scaleX";
	rename -uid "5F8258B2-42BA-AEFB-A511-E19E36DD36EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 1 210.42857244897959 1;
createNode animCurveTU -n "pinky_03_ctrl_scaleY";
	rename -uid "D4289152-43ED-957F-ACA8-498C276E1E72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 1 210.42857244897959 1;
createNode animCurveTU -n "pinky_03_ctrl_scaleZ";
	rename -uid "EB9BAC06-4ACA-95B4-5802-509650EC27DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 1 210.42857244897959 1;
createNode animCurveTU -n "middle_03_ctrl_visibility";
	rename -uid "5A9D01F5-48A9-2BE7-CD4B-2FA8C4EF3A10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "middle_03_ctrl_translateX";
	rename -uid "507B82F2-41E9-3843-F821-048A09A1AE3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTL -n "middle_03_ctrl_translateY";
	rename -uid "0022BCEC-41C8-5D12-D7D7-DC8B5E63EE11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTL -n "middle_03_ctrl_translateZ";
	rename -uid "F4F0B69E-47EF-81FB-A1F1-57BD6BFCEA2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTA -n "middle_03_ctrl_rotateX";
	rename -uid "5CE711BB-4E28-1CA5-E4D0-57B9FD3CBC70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  201 0 209.64285799319728 0 220.64285901360543 0
		 228.5000025510204 0 235.57143180272109 0;
createNode animCurveTA -n "middle_03_ctrl_rotateY";
	rename -uid "176AA835-4078-42F8-2350-61B3A0BC8E78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  201 0 209.64285799319728 0 220.64285901360543 0
		 228.5000025510204 0 235.57143180272109 0;
createNode animCurveTA -n "middle_03_ctrl_rotateZ";
	rename -uid "073E7433-4395-8078-C8E5-7F96E530C41F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  201 0 209.64285799319728 10.541509854599742
		 220.64285901360543 4.6954635260510065 228.5000025510204 37.072140471557482 235.57143180272109 79.377054601656226;
createNode animCurveTU -n "middle_03_ctrl_scaleX";
	rename -uid "F6EEA443-40E7-B926-A16B-298D81AE0D23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode animCurveTU -n "middle_03_ctrl_scaleY";
	rename -uid "1AC7832D-4B06-97D9-EDC3-C2BDAB6D3F45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode animCurveTU -n "middle_03_ctrl_scaleZ";
	rename -uid "89377F83-49A6-AC50-F235-62B32D798B8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode animCurveTU -n "pinky_02_ctrl_visibility";
	rename -uid "1FEE6D90-4DCC-3C2D-6122-6B8C26885C49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 1 210.42857244897959 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pinky_02_ctrl_translateX";
	rename -uid "49EDF112-4FFB-A1EC-915B-DCB893AB06F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 0 210.42857244897959 0;
createNode animCurveTL -n "pinky_02_ctrl_translateY";
	rename -uid "9C8A1D9D-46C7-BC67-0478-72AD6C66330D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 0 210.42857244897959 0;
createNode animCurveTL -n "pinky_02_ctrl_translateZ";
	rename -uid "E9B66508-4D35-24D6-F675-7999D978BE61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 0 210.42857244897959 0;
createNode animCurveTA -n "pinky_02_ctrl_rotateX";
	rename -uid "F37CBDE8-40D6-FDB8-E51E-7FB2DA4BEF21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  201 0 210.42857244897959 0 219.07143044217688 0
		 223.78571666666667 1.0250528782750787 229.28571717687075 3.3576658823922774 252 4.6228943932903324
		 272 2.2995117067308546 280 3.8586583522957962;
createNode animCurveTA -n "pinky_02_ctrl_rotateY";
	rename -uid "A09D7D65-4181-4C0A-67D9-D49FB8398037";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  201 0 210.42857244897959 0 219.07143044217688 0
		 223.78571666666667 -2.9088467512339746 229.28571717687075 -6.109528361912556 252 -5.219723602443131
		 272 -6.5797415730304243 280 -1.4889252558214616;
createNode animCurveTA -n "pinky_02_ctrl_rotateZ";
	rename -uid "69C76205-4016-A015-7195-63890847DE49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  201 0 210.42857244897959 14.196312643538342
		 219.07143044217688 -4.5486907678751338 223.78571666666667 36.625469838920765 229.28571717687075 67.303999895639919
		 252 54.538701665511219 272 76.857307660330108 280 77.758566644511276;
createNode animCurveTU -n "pinky_02_ctrl_scaleX";
	rename -uid "65B2F1BF-4162-4C5B-AAC3-27B9D3957DE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 1 210.42857244897959 1;
createNode animCurveTU -n "pinky_02_ctrl_scaleY";
	rename -uid "7A224CA1-48DD-A0B3-5240-8CADD7A1F737";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 1 210.42857244897959 1;
createNode animCurveTU -n "pinky_02_ctrl_scaleZ";
	rename -uid "6CF444A1-4E76-471D-6D95-74A4D7DBEA61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 1 210.42857244897959 1;
createNode animCurveTU -n "index_03_ctrl_visibility";
	rename -uid "D94F284F-4EF1-7F0F-935C-84BFDBD1BD1F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  201 1 220.64285884353743 1 275 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "index_03_ctrl_translateX";
	rename -uid "A0E3F740-47DD-4E3B-55F1-D7B8A9007DD9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  201 0 220.64285884353743 0 275 0;
createNode animCurveTL -n "index_03_ctrl_translateY";
	rename -uid "60518269-4989-6862-258F-A18666955AAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  201 0 220.64285884353743 0 275 0;
createNode animCurveTL -n "index_03_ctrl_translateZ";
	rename -uid "AE413BF3-47F6-BCC5-12B4-BDAE7B50F09A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  201 0 220.64285884353743 0 275 0;
createNode animCurveTA -n "index_03_ctrl_rotateX";
	rename -uid "B4B44ECB-4DD2-D660-530B-B78FEB6FB214";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  201 0 209.64285782312925 1.4398509801336246
		 220.6428593537415 1.2676754520387259 232.42857465986395 1.2676754520387259 237.92857517006803 1.0316400818625304
		 253 1.0316400818625304 258 1.3276711985943586 275 1.2298698513698192;
createNode animCurveTA -n "index_03_ctrl_rotateY";
	rename -uid "30E4E014-40AF-E72E-7DFF-5CAC74642810";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  201 0 209.64285782312925 0.76095848110457476
		 220.6428593537415 -0.7143124709136226 232.42857465986395 -0.7143124709136226 237.92857517006803 -1.026154294199052
		 253 -1.026154294199052 258 -0.59540972406246628 275 -0.77760730336330985;
createNode animCurveTA -n "index_03_ctrl_rotateZ";
	rename -uid "DFAAC6D6-41F8-A3E6-CF1A-9586EE10718A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  201 0 209.64285782312925 15.128528304846634
		 220.6428593537415 -8.6943278239158417 232.42857465986395 -8.6943278239158417 237.92857517006803 6.7524536289597359
		 253 6.7524536289597359 258 -13.939982006481289 275 -5.7910902059027576;
createNode animCurveTU -n "index_03_ctrl_scaleX";
	rename -uid "6AF89F65-4B0B-90C5-1E71-69AF63214925";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  201 1 220.64285884353743 1 275 1;
createNode animCurveTU -n "index_03_ctrl_scaleY";
	rename -uid "C70FC4EF-416C-96F4-A2D8-9090148D434B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  201 1 220.64285884353743 1 275 1;
createNode animCurveTU -n "index_03_ctrl_scaleZ";
	rename -uid "AD545954-4438-39B4-5407-B4865371F1D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  201 1 220.64285884353743 1 275 1;
createNode animCurveTU -n "index_02_ctrl_visibility";
	rename -uid "D1078CEA-405D-5BB6-AE4B-9B9DB17253D9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 1 220.64285884353743 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "index_02_ctrl_translateX";
	rename -uid "553229AD-405A-2290-0391-7C905E07D37B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 0 220.64285884353743 0;
createNode animCurveTL -n "index_02_ctrl_translateY";
	rename -uid "3913C592-4966-B8BC-E087-709D5785520C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 0 220.64285884353743 0;
createNode animCurveTL -n "index_02_ctrl_translateZ";
	rename -uid "14398A07-4C51-79E6-D352-2182AF3B2726";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 0 220.64285884353743 0;
createNode animCurveTA -n "index_02_ctrl_rotateX";
	rename -uid "9F9D3893-4A46-45C1-8C10-E7B923C2A1D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  201 0 209.64285782312925 1.1639852959439039
		 220.6428593537415 1.1901290071570612 237.92857517006803 1.1521252862721925;
createNode animCurveTA -n "index_02_ctrl_rotateY";
	rename -uid "FEC07918-416B-8074-CD63-E28190FC9FCB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  201 0 209.64285782312925 1.1390449863950247
		 220.6428593537415 -0.28376371834367436 237.92857517006803 -0.41176145750956261;
createNode animCurveTA -n "index_02_ctrl_rotateZ";
	rename -uid "F6561719-4867-A646-7EAE-19AE396C55A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  201 0 209.64285782312925 5.4387288499477009
		 220.6428593537415 -8.7249345057617997 237.92857517006803 -2.4697999944040849;
createNode animCurveTU -n "index_02_ctrl_scaleX";
	rename -uid "BAB06D4B-4718-40E2-60F9-9F84AF6DDB76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 1 220.64285884353743 1;
createNode animCurveTU -n "index_02_ctrl_scaleY";
	rename -uid "713613CB-4B44-3280-DB7C-42B7E7C650A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 1 220.64285884353743 1;
createNode animCurveTU -n "index_02_ctrl_scaleZ";
	rename -uid "6C971166-459E-9283-90D0-A1AA364ABDBA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 1 220.64285884353743 1;
createNode animCurveTU -n "thumb_03_ctrl_visibility";
	rename -uid "79446398-48C9-7682-4C46-588FEEAAD45D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "thumb_03_ctrl_translateX";
	rename -uid "C020AAED-40CC-0D66-18CD-2A9D1FC34846";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTL -n "thumb_03_ctrl_translateY";
	rename -uid "C58A0F4B-4FA6-A252-B5C9-7380915CB6BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTL -n "thumb_03_ctrl_translateZ";
	rename -uid "84BE7922-4F49-40E9-A600-EE8F2AB7613A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTA -n "thumb_03_ctrl_rotateX";
	rename -uid "A7E52840-4C5A-DDFB-68D5-E89E4C8BFA58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  201 0 208.07142925170069 0 215.14285867346939 -0.26437119462956321
		 222.21428775510205 0.079827805217394091 237.14286071428572 0.24828948038278453 254 -0.4192492113204116
		 262 -8.8514313403882525 272 -8.8119103665058578;
createNode animCurveTA -n "thumb_03_ctrl_rotateY";
	rename -uid "81185050-4204-E3FF-B7CB-C7BA75E06BD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  201 0 208.07142925170069 2.7516865981435212
		 215.14285867346939 2.738967004859731 222.21428775510205 2.7505293221332061 237.14286071428572 2.7404704863691616
		 254 -9.5712778432088221 262 -3.3158571949938263 272 1.4506478852963742;
createNode animCurveTA -n "thumb_03_ctrl_rotateZ";
	rename -uid "1013BBDF-4909-4287-6C43-C8AA6CE37447";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  201 0 208.07142925170069 0 215.14285867346939 -5.515363466942377
		 222.21428775510205 1.66305134623229 237.14286071428572 5.1789191008211439 254 12.332766921315098
		 262 2.6982742657782901 272 19.804214012159481;
createNode animCurveTU -n "thumb_03_ctrl_scaleX";
	rename -uid "78CC2BFC-409B-062A-502B-E7A98D1D94E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode animCurveTU -n "thumb_03_ctrl_scaleY";
	rename -uid "6AC9AA7D-454A-07AA-4CD3-A4B42A41A0B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode animCurveTU -n "thumb_03_ctrl_scaleZ";
	rename -uid "99BB722F-48F1-C6FD-3F46-9482A89693BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode animCurveTU -n "thumb_02_ctrl_visibility";
	rename -uid "063CB02D-4854-CDFB-600F-7995D531A071";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "thumb_02_ctrl_translateX";
	rename -uid "A3E69416-4CB4-9002-D760-19B4AC6FE98E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTL -n "thumb_02_ctrl_translateY";
	rename -uid "9B16B06E-484E-F13A-E42E-D1917D4CAB16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTL -n "thumb_02_ctrl_translateZ";
	rename -uid "BD1A72D3-443D-9724-F4C0-B7B2BCD4ED5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTA -n "thumb_02_ctrl_rotateX";
	rename -uid "3E4CA7D4-452F-E438-2358-2194FB6CF45F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  201 0 208.07142925170069 0 215.14285867346939 -0.26437119462956321
		 222.21428775510205 0.079827805217394091 237.14286071428572 0.24828948038278453 254 -0.4192492113204116
		 262 -0.4192492113204116 272 0.77953154123267543;
createNode animCurveTA -n "thumb_02_ctrl_rotateY";
	rename -uid "0DE95506-4965-5892-1822-23A30536B562";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  201 0 208.07142925170069 2.7516865981435212
		 215.14285867346939 2.738967004859731 222.21428775510205 2.7505293221332061 237.14286071428572 2.7404704863691616
		 254 -9.5712778432088221 262 -9.5712778432088221 272 -7.4779931608146182;
createNode animCurveTA -n "thumb_02_ctrl_rotateZ";
	rename -uid "43526558-4660-0A1C-E0FD-ACAFA2B9F5BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  201 0 208.07142925170069 0 215.14285867346939 -5.515363466942377
		 222.21428775510205 1.66305134623229 237.14286071428572 5.1789191008211439 254 12.332766921315098
		 262 12.332766921315098 272 3.1605937358955671;
createNode animCurveTU -n "thumb_02_ctrl_scaleX";
	rename -uid "D851AA57-47D5-B391-E8F9-889EFCE61538";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode animCurveTU -n "thumb_02_ctrl_scaleY";
	rename -uid "01F7794F-44EB-6227-5902-05A1DF2D7538";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode animCurveTU -n "thumb_02_ctrl_scaleZ";
	rename -uid "F8AE1879-4F3C-345A-932C-44A22775485D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode animCurveTU -n "ring_02_ctrl_visibility";
	rename -uid "A9161883-4B2C-4B69-9FD1-8A85CF9AABD1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "ring_02_ctrl_translateX";
	rename -uid "6A31C5C8-447E-9C68-A099-CD897ABBE68A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTL -n "ring_02_ctrl_translateY";
	rename -uid "F39B7404-40B1-FC36-0B38-EA8FB090C5D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTL -n "ring_02_ctrl_translateZ";
	rename -uid "4168D00D-46F5-83AB-4444-05AF481008A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTA -n "ring_02_ctrl_rotateX";
	rename -uid "C5BBBBAD-4F63-1A63-E95A-CE85130B42AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  200.99998129251702 0 201 0 208.0714299319728 0
		 212.00000170068026 0 215.14285918367347 0 216.71428775510205 0 231.64286054421768 0
		 234.00000340136054 0;
createNode animCurveTA -n "ring_02_ctrl_rotateY";
	rename -uid "5302A96A-419F-BD88-572F-01BEAD673F2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  200.99998129251702 0 201 0 208.0714299319728 0
		 212.00000170068026 0 215.14285918367347 0 216.71428775510205 0 231.64286054421768 0
		 234.00000340136054 0;
createNode animCurveTA -n "ring_02_ctrl_rotateZ";
	rename -uid "6BFE3E08-4D3D-76EF-FB84-8AB6A0CEA4A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  200.99998129251702 61.020885604657508 201 0
		 208.0714299319728 12.536151342398403 212.00000170068026 14.232830782088211 215.14285918367347 4.8648841039213329
		 216.71428775510205 -2 231.64286054421768 61.997929986853045 234.00000340136054 66.513443045278734;
createNode animCurveTU -n "ring_02_ctrl_scaleX";
	rename -uid "B3DD657C-4CDA-722C-176B-CE9D9AE799A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode animCurveTU -n "ring_02_ctrl_scaleY";
	rename -uid "A2838EA9-4FE5-C1D8-AF82-04BA39425C6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode animCurveTU -n "ring_02_ctrl_scaleZ";
	rename -uid "138D3F1B-4AE9-F2FA-E609-F588371398E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode animCurveTU -n "middle_02_ctrl_visibility";
	rename -uid "FD8D613C-4AFE-E97E-2063-97AB7BD612CD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 1 235.57143180272109 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "middle_02_ctrl_translateX";
	rename -uid "61B5B897-46D8-C40D-C98F-1FB8A735A87E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 0 235.57143180272109 0;
createNode animCurveTL -n "middle_02_ctrl_translateY";
	rename -uid "F5166A84-4F4E-C0AB-8AC6-8680278D52E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 0 235.57143180272109 0;
createNode animCurveTL -n "middle_02_ctrl_translateZ";
	rename -uid "D6A2C88C-4D27-86DE-CBA4-7F8460976D2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 0 235.57143180272109 0;
createNode animCurveTA -n "middle_02_ctrl_rotateX";
	rename -uid "7BDAE138-45E6-A3FB-D974-09866160C9A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  201 0 209.64285799319728 -0.1793157049892157
		 220.64285901360543 -0.6109164614941669 228.5000025510204 0.04977188553546328 235.57143180272109 0.95997010682283668;
createNode animCurveTA -n "middle_02_ctrl_rotateY";
	rename -uid "CB7F6B20-4D6F-08FB-45BC-7DB603C8E0E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  201 0 209.64285799319728 0.60902250069104924
		 220.64285901360543 1.6284604293817402 228.5000025510204 2.7163461663878778 235.57143180272109 3.1119563053500428;
createNode animCurveTA -n "middle_02_ctrl_rotateZ";
	rename -uid "41890196-4FA9-3B65-6132-CBBBB9CF7243";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  201 0 209.64285799319728 8.7987473547427406
		 220.64285901360543 -3.2617043740067171 228.5000025510204 31.657055403180614 235.57143180272109 64.508053753310648;
createNode animCurveTU -n "middle_02_ctrl_scaleX";
	rename -uid "F71A6A2C-4558-90DC-8976-8C8885573F12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 1 235.57143180272109 1;
createNode animCurveTU -n "middle_02_ctrl_scaleY";
	rename -uid "78DDEF16-4792-83C4-AB7C-1A82ACEAB9F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 1 235.57143180272109 1;
createNode animCurveTU -n "middle_02_ctrl_scaleZ";
	rename -uid "2C0ADB06-4F01-55AC-3D8E-A2A94C4835B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 1 235.57143180272109 1;
createNode animCurveTU -n "ring_01_ctrl_visibility";
	rename -uid "34EAE3AD-4374-FF31-3249-5FBCB56C376C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "ring_01_ctrl_translateX";
	rename -uid "DB9AF077-4510-D97D-D1BE-8B9430650CA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTL -n "ring_01_ctrl_translateY";
	rename -uid "E05A24CB-4764-EAE6-6B76-3B9384071306";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTL -n "ring_01_ctrl_translateZ";
	rename -uid "3EA88819-4083-419D-C737-939C3CE13F1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 0;
createNode animCurveTA -n "ring_01_ctrl_rotateX";
	rename -uid "F7665CA2-477C-2E8B-9A9B-A9BBA93B41BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  200.99998129251702 0 201 0 208.0714299319728 0
		 212.00000170068026 0 220.6428593537415 0 231.64286037414965 0 268 0 279 0;
createNode animCurveTA -n "ring_01_ctrl_rotateY";
	rename -uid "8CF6A23D-48DD-F269-2854-A098B5732AA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  200.99998129251702 0 201 0 208.0714299319728 0
		 212.00000170068026 0 220.6428593537415 0 231.64286037414965 0 268 0 279 4.3327756032793792;
createNode animCurveTA -n "ring_01_ctrl_rotateZ";
	rename -uid "BDA4A08D-4244-8CD6-214B-97BC6F6CBE0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  200.99998129251702 55.034070412225127 201 0
		 208.0714299319728 0.39663289807659868 212.00000170068026 -2.902374264835172 220.6428593537415 -6.6846937924927348
		 231.64286037414965 57.313236194360449 268 55.034070412225127 279 60.325584289246713;
createNode animCurveTU -n "ring_01_ctrl_scaleX";
	rename -uid "4A9F67BB-4478-2B8E-B8F8-D083A4696CFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode animCurveTU -n "ring_01_ctrl_scaleY";
	rename -uid "1C841F20-4306-B839-E89F-CCAD6E88FD9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode animCurveTU -n "ring_01_ctrl_scaleZ";
	rename -uid "F68C540E-4AD6-5ABC-6417-F8BAC8E113A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  201 1;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "755FC52A-46A5-3AFB-1315-20AEA2C7C70A";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -679.76187775059464 -370.23808052615578 ;
	setAttr ".tgi[0].vh" -type "double2" 654.76187874400534 386.90474653054866 ;
	setAttr -s 8 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -105.71428680419922;
	setAttr ".tgi[0].ni[0].y" 367.14285278320312;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -105.71428680419922;
	setAttr ".tgi[0].ni[1].y" -282.85714721679688;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -105.71428680419922;
	setAttr ".tgi[0].ni[2].y" -412.85714721679688;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -105.71428680419922;
	setAttr ".tgi[0].ni[3].y" 237.14285278320312;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -105.71428680419922;
	setAttr ".tgi[0].ni[4].y" 497.14285278320312;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -105.71428680419922;
	setAttr ".tgi[0].ni[5].y" 107.14286041259766;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -105.71428680419922;
	setAttr ".tgi[0].ni[6].y" -152.85714721679688;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -105.71428680419922;
	setAttr ".tgi[0].ni[7].y" -22.857143402099609;
	setAttr ".tgi[0].ni[7].nvs" 18304;
createNode animCurveTU -n "Left_Hand_visibility";
	rename -uid "AB239D97-4CD6-81AB-0333-98A19E6781D1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  201 0 289 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
select -ne :time1;
	setAttr ".o" 201;
	setAttr ".unw" 201;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 9 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "R_Control_Layer.di" "|Right_Hand|Controls.do";
connectAttr "COG_ctrl_translateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl.tx"
		;
connectAttr "COG_ctrl_translateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl.ty"
		;
connectAttr "COG_ctrl_translateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl.tz"
		;
connectAttr "COG_ctrl_rotateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl.rx"
		;
connectAttr "COG_ctrl_rotateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl.ry"
		;
connectAttr "COG_ctrl_rotateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl.rz"
		;
connectAttr "COG_ctrl_scaleX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl.sx";
connectAttr "COG_ctrl_scaleY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl.sy";
connectAttr "COG_ctrl_scaleZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl.sz";
connectAttr "COG_ctrl_visibility.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl.v"
		;
connectAttr "pinky_01_ctrl_translateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl.tx"
		;
connectAttr "pinky_01_ctrl_translateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl.ty"
		;
connectAttr "pinky_01_ctrl_translateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl.tz"
		;
connectAttr "pinky_01_ctrl_rotateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl.rx"
		;
connectAttr "pinky_01_ctrl_rotateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl.ry"
		;
connectAttr "pinky_01_ctrl_rotateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl.rz"
		;
connectAttr "pinky_01_ctrl_scaleX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl.sx"
		;
connectAttr "pinky_01_ctrl_scaleY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl.sy"
		;
connectAttr "pinky_01_ctrl_scaleZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl.sz"
		;
connectAttr "pinky_01_ctrl_visibility.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl.v"
		;
connectAttr "pinky_02_ctrl_translateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl.tx"
		;
connectAttr "pinky_02_ctrl_translateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl.ty"
		;
connectAttr "pinky_02_ctrl_translateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl.tz"
		;
connectAttr "pinky_02_ctrl_rotateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl.rx"
		;
connectAttr "pinky_02_ctrl_rotateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl.ry"
		;
connectAttr "pinky_02_ctrl_rotateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl.rz"
		;
connectAttr "pinky_02_ctrl_scaleX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl.sx"
		;
connectAttr "pinky_02_ctrl_scaleY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl.sy"
		;
connectAttr "pinky_02_ctrl_scaleZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl.sz"
		;
connectAttr "pinky_02_ctrl_visibility.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl.v"
		;
connectAttr "pinky_03_ctrl_translateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl.tx"
		;
connectAttr "pinky_03_ctrl_translateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl.ty"
		;
connectAttr "pinky_03_ctrl_translateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl.tz"
		;
connectAttr "pinky_03_ctrl_rotateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl.rx"
		;
connectAttr "pinky_03_ctrl_rotateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl.ry"
		;
connectAttr "pinky_03_ctrl_rotateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl.rz"
		;
connectAttr "pinky_03_ctrl_scaleX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl.sx"
		;
connectAttr "pinky_03_ctrl_scaleY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl.sy"
		;
connectAttr "pinky_03_ctrl_scaleZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl.sz"
		;
connectAttr "pinky_03_ctrl_visibility.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl.v"
		;
connectAttr "pinky_04_ctrl_translateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp|pinky_04_ctrl.tx"
		;
connectAttr "pinky_04_ctrl_translateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp|pinky_04_ctrl.ty"
		;
connectAttr "pinky_04_ctrl_translateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp|pinky_04_ctrl.tz"
		;
connectAttr "pinky_04_ctrl_rotateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp|pinky_04_ctrl.rx"
		;
connectAttr "pinky_04_ctrl_rotateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp|pinky_04_ctrl.ry"
		;
connectAttr "pinky_04_ctrl_rotateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp|pinky_04_ctrl.rz"
		;
connectAttr "pinky_04_ctrl_scaleX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp|pinky_04_ctrl.sx"
		;
connectAttr "pinky_04_ctrl_scaleY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp|pinky_04_ctrl.sy"
		;
connectAttr "pinky_04_ctrl_scaleZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp|pinky_04_ctrl.sz"
		;
connectAttr "pinky_04_ctrl_visibility.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp|pinky_04_ctrl.v"
		;
connectAttr "ring_01_ctrl_translateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl.tx"
		;
connectAttr "ring_01_ctrl_translateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl.ty"
		;
connectAttr "ring_01_ctrl_translateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl.tz"
		;
connectAttr "ring_01_ctrl_rotateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl.rx"
		;
connectAttr "ring_01_ctrl_rotateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl.ry"
		;
connectAttr "ring_01_ctrl_rotateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl.rz"
		;
connectAttr "ring_01_ctrl_scaleX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl.sx"
		;
connectAttr "ring_01_ctrl_scaleY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl.sy"
		;
connectAttr "ring_01_ctrl_scaleZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl.sz"
		;
connectAttr "ring_01_ctrl_visibility.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl.v"
		;
connectAttr "ring_02_ctrl_translateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl.tx"
		;
connectAttr "ring_02_ctrl_translateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl.ty"
		;
connectAttr "ring_02_ctrl_translateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl.tz"
		;
connectAttr "ring_02_ctrl_rotateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl.rx"
		;
connectAttr "ring_02_ctrl_rotateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl.ry"
		;
connectAttr "ring_02_ctrl_rotateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl.rz"
		;
connectAttr "ring_02_ctrl_scaleX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl.sx"
		;
connectAttr "ring_02_ctrl_scaleY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl.sy"
		;
connectAttr "ring_02_ctrl_scaleZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl.sz"
		;
connectAttr "ring_02_ctrl_visibility.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl.v"
		;
connectAttr "ring_03_ctrl_translateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp|ring_03_ctrl.tx"
		;
connectAttr "ring_03_ctrl_translateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp|ring_03_ctrl.ty"
		;
connectAttr "ring_03_ctrl_translateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp|ring_03_ctrl.tz"
		;
connectAttr "ring_03_ctrl_rotateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp|ring_03_ctrl.rx"
		;
connectAttr "ring_03_ctrl_rotateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp|ring_03_ctrl.ry"
		;
connectAttr "ring_03_ctrl_rotateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp|ring_03_ctrl.rz"
		;
connectAttr "ring_03_ctrl_scaleX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp|ring_03_ctrl.sx"
		;
connectAttr "ring_03_ctrl_scaleY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp|ring_03_ctrl.sy"
		;
connectAttr "ring_03_ctrl_scaleZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp|ring_03_ctrl.sz"
		;
connectAttr "ring_03_ctrl_visibility.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp|ring_03_ctrl.v"
		;
connectAttr "middle_01_ctrl_translateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl.tx"
		;
connectAttr "middle_01_ctrl_translateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl.ty"
		;
connectAttr "middle_01_ctrl_translateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl.tz"
		;
connectAttr "middle_01_ctrl_rotateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl.rx"
		;
connectAttr "middle_01_ctrl_rotateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl.ry"
		;
connectAttr "middle_01_ctrl_rotateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl.rz"
		;
connectAttr "middle_01_ctrl_scaleX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl.sx"
		;
connectAttr "middle_01_ctrl_scaleY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl.sy"
		;
connectAttr "middle_01_ctrl_scaleZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl.sz"
		;
connectAttr "middle_01_ctrl_visibility.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl.v"
		;
connectAttr "middle_02_ctrl_translateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl.tx"
		;
connectAttr "middle_02_ctrl_translateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl.ty"
		;
connectAttr "middle_02_ctrl_translateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl.tz"
		;
connectAttr "middle_02_ctrl_rotateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl.rx"
		;
connectAttr "middle_02_ctrl_rotateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl.ry"
		;
connectAttr "middle_02_ctrl_rotateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl.rz"
		;
connectAttr "middle_02_ctrl_scaleX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl.sx"
		;
connectAttr "middle_02_ctrl_scaleY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl.sy"
		;
connectAttr "middle_02_ctrl_scaleZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl.sz"
		;
connectAttr "middle_02_ctrl_visibility.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl.v"
		;
connectAttr "middle_03_ctrl_translateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp|middle_03_ctrl.tx"
		;
connectAttr "middle_03_ctrl_translateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp|middle_03_ctrl.ty"
		;
connectAttr "middle_03_ctrl_translateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp|middle_03_ctrl.tz"
		;
connectAttr "middle_03_ctrl_rotateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp|middle_03_ctrl.rx"
		;
connectAttr "middle_03_ctrl_rotateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp|middle_03_ctrl.ry"
		;
connectAttr "middle_03_ctrl_rotateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp|middle_03_ctrl.rz"
		;
connectAttr "middle_03_ctrl_scaleX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp|middle_03_ctrl.sx"
		;
connectAttr "middle_03_ctrl_scaleY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp|middle_03_ctrl.sy"
		;
connectAttr "middle_03_ctrl_scaleZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp|middle_03_ctrl.sz"
		;
connectAttr "middle_03_ctrl_visibility.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp|middle_03_ctrl.v"
		;
connectAttr "index_01_ctrl_translateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl.tx"
		;
connectAttr "index_01_ctrl_translateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl.ty"
		;
connectAttr "index_01_ctrl_translateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl.tz"
		;
connectAttr "index_01_ctrl_rotateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl.rx"
		;
connectAttr "index_01_ctrl_rotateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl.ry"
		;
connectAttr "index_01_ctrl_rotateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl.rz"
		;
connectAttr "index_01_ctrl_scaleX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl.sx"
		;
connectAttr "index_01_ctrl_scaleY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl.sy"
		;
connectAttr "index_01_ctrl_scaleZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl.sz"
		;
connectAttr "index_01_ctrl_visibility.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl.v"
		;
connectAttr "index_02_ctrl_translateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl.tx"
		;
connectAttr "index_02_ctrl_translateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl.ty"
		;
connectAttr "index_02_ctrl_translateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl.tz"
		;
connectAttr "index_02_ctrl_rotateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl.rx"
		;
connectAttr "index_02_ctrl_rotateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl.ry"
		;
connectAttr "index_02_ctrl_rotateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl.rz"
		;
connectAttr "index_02_ctrl_scaleX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl.sx"
		;
connectAttr "index_02_ctrl_scaleY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl.sy"
		;
connectAttr "index_02_ctrl_scaleZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl.sz"
		;
connectAttr "index_02_ctrl_visibility.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl.v"
		;
connectAttr "index_03_ctrl_translateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl.tx"
		;
connectAttr "index_03_ctrl_translateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl.ty"
		;
connectAttr "index_03_ctrl_translateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl.tz"
		;
connectAttr "index_03_ctrl_rotateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl.rx"
		;
connectAttr "index_03_ctrl_rotateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl.ry"
		;
connectAttr "index_03_ctrl_rotateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl.rz"
		;
connectAttr "index_03_ctrl_scaleX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl.sx"
		;
connectAttr "index_03_ctrl_scaleY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl.sy"
		;
connectAttr "index_03_ctrl_scaleZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl.sz"
		;
connectAttr "index_03_ctrl_visibility.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl.v"
		;
connectAttr "thumb_01_ctrl_translateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl.tx"
		;
connectAttr "thumb_01_ctrl_translateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl.ty"
		;
connectAttr "thumb_01_ctrl_translateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl.tz"
		;
connectAttr "thumb_01_ctrl_rotateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl.rx"
		;
connectAttr "thumb_01_ctrl_rotateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl.ry"
		;
connectAttr "thumb_01_ctrl_rotateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl.rz"
		;
connectAttr "thumb_01_ctrl_scaleX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl.sx"
		;
connectAttr "thumb_01_ctrl_scaleY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl.sy"
		;
connectAttr "thumb_01_ctrl_scaleZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl.sz"
		;
connectAttr "thumb_01_ctrl_visibility.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl.v"
		;
connectAttr "makeNurbCircle1.oc" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_01_ctrlShape.cr"
		;
connectAttr "thumb_02_ctrl_translateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl.tx"
		;
connectAttr "thumb_02_ctrl_translateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl.ty"
		;
connectAttr "thumb_02_ctrl_translateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl.tz"
		;
connectAttr "thumb_02_ctrl_rotateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl.rx"
		;
connectAttr "thumb_02_ctrl_rotateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl.ry"
		;
connectAttr "thumb_02_ctrl_rotateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl.rz"
		;
connectAttr "thumb_02_ctrl_scaleX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl.sx"
		;
connectAttr "thumb_02_ctrl_scaleY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl.sy"
		;
connectAttr "thumb_02_ctrl_scaleZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl.sz"
		;
connectAttr "thumb_02_ctrl_visibility.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl.v"
		;
connectAttr "thumb_03_ctrl_translateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp|thumb_03_ctrl.tx"
		;
connectAttr "thumb_03_ctrl_translateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp|thumb_03_ctrl.ty"
		;
connectAttr "thumb_03_ctrl_translateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp|thumb_03_ctrl.tz"
		;
connectAttr "thumb_03_ctrl_rotateX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp|thumb_03_ctrl.rx"
		;
connectAttr "thumb_03_ctrl_rotateY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp|thumb_03_ctrl.ry"
		;
connectAttr "thumb_03_ctrl_rotateZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp|thumb_03_ctrl.rz"
		;
connectAttr "thumb_03_ctrl_scaleX.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp|thumb_03_ctrl.sx"
		;
connectAttr "thumb_03_ctrl_scaleY.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp|thumb_03_ctrl.sy"
		;
connectAttr "thumb_03_ctrl_scaleZ.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp|thumb_03_ctrl.sz"
		;
connectAttr "thumb_03_ctrl_visibility.o" "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp|thumb_03_ctrl.v"
		;
connectAttr "R_Skeleton_Layer.di" "hands:r_hand_world.do";
connectAttr "r_hand_world_parentConstraint1.ctx" "hands:r_hand_world.tx";
connectAttr "r_hand_world_parentConstraint1.cty" "hands:r_hand_world.ty";
connectAttr "r_hand_world_parentConstraint1.ctz" "hands:r_hand_world.tz";
connectAttr "r_hand_world_parentConstraint1.crx" "hands:r_hand_world.rx";
connectAttr "r_hand_world_parentConstraint1.cry" "hands:r_hand_world.ry";
connectAttr "r_hand_world_parentConstraint1.crz" "hands:r_hand_world.rz";
connectAttr "hands:r_hand_world.ro" "r_hand_world_parentConstraint1.cro";
connectAttr "hands:r_hand_world.pim" "r_hand_world_parentConstraint1.cpim";
connectAttr "hands:r_hand_world.rp" "r_hand_world_parentConstraint1.crp";
connectAttr "hands:r_hand_world.rpt" "r_hand_world_parentConstraint1.crt";
connectAttr "hands:r_hand_world.jo" "r_hand_world_parentConstraint1.cjo";
connectAttr "|Right_Hand|Controls|Transform_ctrl_grp|Transform_ctrl.t" "r_hand_world_parentConstraint1.tg[0].tt"
		;
connectAttr "|Right_Hand|Controls|Transform_ctrl_grp|Transform_ctrl.rp" "r_hand_world_parentConstraint1.tg[0].trp"
		;
connectAttr "|Right_Hand|Controls|Transform_ctrl_grp|Transform_ctrl.rpt" "r_hand_world_parentConstraint1.tg[0].trt"
		;
connectAttr "|Right_Hand|Controls|Transform_ctrl_grp|Transform_ctrl.r" "r_hand_world_parentConstraint1.tg[0].tr"
		;
connectAttr "|Right_Hand|Controls|Transform_ctrl_grp|Transform_ctrl.ro" "r_hand_world_parentConstraint1.tg[0].tro"
		;
connectAttr "|Right_Hand|Controls|Transform_ctrl_grp|Transform_ctrl.s" "r_hand_world_parentConstraint1.tg[0].ts"
		;
connectAttr "|Right_Hand|Controls|Transform_ctrl_grp|Transform_ctrl.pm" "r_hand_world_parentConstraint1.tg[0].tpm"
		;
connectAttr "r_hand_world_parentConstraint1.w0" "r_hand_world_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Skeleton_Layer.di" "hands:b_r_hand.do";
connectAttr "b_r_hand_parentConstraint1.ctx" "hands:b_r_hand.tx";
connectAttr "b_r_hand_parentConstraint1.cty" "hands:b_r_hand.ty";
connectAttr "b_r_hand_parentConstraint1.ctz" "hands:b_r_hand.tz";
connectAttr "b_r_hand_parentConstraint1.crx" "hands:b_r_hand.rx";
connectAttr "b_r_hand_parentConstraint1.cry" "hands:b_r_hand.ry";
connectAttr "b_r_hand_parentConstraint1.crz" "hands:b_r_hand.rz";
connectAttr "hands:b_r_hand.s" "hands:b_r_ring1.is";
connectAttr "R_Skeleton_Layer.di" "hands:b_r_ring1.do";
connectAttr "b_r_ring1_parentConstraint1.ctx" "hands:b_r_ring1.tx";
connectAttr "b_r_ring1_parentConstraint1.cty" "hands:b_r_ring1.ty";
connectAttr "b_r_ring1_parentConstraint1.ctz" "hands:b_r_ring1.tz";
connectAttr "b_r_ring1_parentConstraint1.crx" "hands:b_r_ring1.rx";
connectAttr "b_r_ring1_parentConstraint1.cry" "hands:b_r_ring1.ry";
connectAttr "b_r_ring1_parentConstraint1.crz" "hands:b_r_ring1.rz";
connectAttr "hands:b_r_ring1.s" "hands:b_r_ring2.is";
connectAttr "R_Skeleton_Layer.di" "hands:b_r_ring2.do";
connectAttr "b_r_ring2_parentConstraint1.ctx" "hands:b_r_ring2.tx";
connectAttr "b_r_ring2_parentConstraint1.cty" "hands:b_r_ring2.ty";
connectAttr "b_r_ring2_parentConstraint1.ctz" "hands:b_r_ring2.tz";
connectAttr "b_r_ring2_parentConstraint1.crx" "hands:b_r_ring2.rx";
connectAttr "b_r_ring2_parentConstraint1.cry" "hands:b_r_ring2.ry";
connectAttr "b_r_ring2_parentConstraint1.crz" "hands:b_r_ring2.rz";
connectAttr "hands:b_r_ring2.s" "hands:b_r_ring3.is";
connectAttr "R_Skeleton_Layer.di" "hands:b_r_ring3.do";
connectAttr "b_r_ring3_parentConstraint1.ctx" "hands:b_r_ring3.tx";
connectAttr "b_r_ring3_parentConstraint1.cty" "hands:b_r_ring3.ty";
connectAttr "b_r_ring3_parentConstraint1.ctz" "hands:b_r_ring3.tz";
connectAttr "b_r_ring3_parentConstraint1.crx" "hands:b_r_ring3.rx";
connectAttr "b_r_ring3_parentConstraint1.cry" "hands:b_r_ring3.ry";
connectAttr "b_r_ring3_parentConstraint1.crz" "hands:b_r_ring3.rz";
connectAttr "hands:b_r_ring3.s" "hands:b_r_ring_ignore.is";
connectAttr "R_Skeleton_Layer.di" "hands:b_r_ring_ignore.do";
connectAttr "hands:b_r_ring3.ro" "b_r_ring3_parentConstraint1.cro";
connectAttr "hands:b_r_ring3.pim" "b_r_ring3_parentConstraint1.cpim";
connectAttr "hands:b_r_ring3.rp" "b_r_ring3_parentConstraint1.crp";
connectAttr "hands:b_r_ring3.rpt" "b_r_ring3_parentConstraint1.crt";
connectAttr "hands:b_r_ring3.jo" "b_r_ring3_parentConstraint1.cjo";
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp|ring_03_ctrl.t" "b_r_ring3_parentConstraint1.tg[0].tt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp|ring_03_ctrl.rp" "b_r_ring3_parentConstraint1.tg[0].trp"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp|ring_03_ctrl.rpt" "b_r_ring3_parentConstraint1.tg[0].trt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp|ring_03_ctrl.r" "b_r_ring3_parentConstraint1.tg[0].tr"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp|ring_03_ctrl.ro" "b_r_ring3_parentConstraint1.tg[0].tro"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp|ring_03_ctrl.s" "b_r_ring3_parentConstraint1.tg[0].ts"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp|ring_03_ctrl.pm" "b_r_ring3_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_r_ring3_parentConstraint1.w0" "b_r_ring3_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_r_ring2.ro" "b_r_ring2_parentConstraint1.cro";
connectAttr "hands:b_r_ring2.pim" "b_r_ring2_parentConstraint1.cpim";
connectAttr "hands:b_r_ring2.rp" "b_r_ring2_parentConstraint1.crp";
connectAttr "hands:b_r_ring2.rpt" "b_r_ring2_parentConstraint1.crt";
connectAttr "hands:b_r_ring2.jo" "b_r_ring2_parentConstraint1.cjo";
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl.t" "b_r_ring2_parentConstraint1.tg[0].tt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl.rp" "b_r_ring2_parentConstraint1.tg[0].trp"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl.rpt" "b_r_ring2_parentConstraint1.tg[0].trt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl.r" "b_r_ring2_parentConstraint1.tg[0].tr"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl.ro" "b_r_ring2_parentConstraint1.tg[0].tro"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl.s" "b_r_ring2_parentConstraint1.tg[0].ts"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl.pm" "b_r_ring2_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_r_ring2_parentConstraint1.w0" "b_r_ring2_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_r_ring1.ro" "b_r_ring1_parentConstraint1.cro";
connectAttr "hands:b_r_ring1.pim" "b_r_ring1_parentConstraint1.cpim";
connectAttr "hands:b_r_ring1.rp" "b_r_ring1_parentConstraint1.crp";
connectAttr "hands:b_r_ring1.rpt" "b_r_ring1_parentConstraint1.crt";
connectAttr "hands:b_r_ring1.jo" "b_r_ring1_parentConstraint1.cjo";
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl.t" "b_r_ring1_parentConstraint1.tg[0].tt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl.rp" "b_r_ring1_parentConstraint1.tg[0].trp"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl.rpt" "b_r_ring1_parentConstraint1.tg[0].trt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl.r" "b_r_ring1_parentConstraint1.tg[0].tr"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl.ro" "b_r_ring1_parentConstraint1.tg[0].tro"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl.s" "b_r_ring1_parentConstraint1.tg[0].ts"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl.pm" "b_r_ring1_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_r_ring1_parentConstraint1.w0" "b_r_ring1_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_r_hand.s" "hands:b_r_middle1.is";
connectAttr "R_Skeleton_Layer.di" "hands:b_r_middle1.do";
connectAttr "b_r_middle1_parentConstraint1.ctx" "hands:b_r_middle1.tx";
connectAttr "b_r_middle1_parentConstraint1.cty" "hands:b_r_middle1.ty";
connectAttr "b_r_middle1_parentConstraint1.ctz" "hands:b_r_middle1.tz";
connectAttr "b_r_middle1_parentConstraint1.crx" "hands:b_r_middle1.rx";
connectAttr "b_r_middle1_parentConstraint1.cry" "hands:b_r_middle1.ry";
connectAttr "b_r_middle1_parentConstraint1.crz" "hands:b_r_middle1.rz";
connectAttr "hands:b_r_middle1.s" "hands:b_r_middle2.is";
connectAttr "R_Skeleton_Layer.di" "hands:b_r_middle2.do";
connectAttr "b_r_middle2_parentConstraint1.ctx" "hands:b_r_middle2.tx";
connectAttr "b_r_middle2_parentConstraint1.cty" "hands:b_r_middle2.ty";
connectAttr "b_r_middle2_parentConstraint1.ctz" "hands:b_r_middle2.tz";
connectAttr "b_r_middle2_parentConstraint1.crx" "hands:b_r_middle2.rx";
connectAttr "b_r_middle2_parentConstraint1.cry" "hands:b_r_middle2.ry";
connectAttr "b_r_middle2_parentConstraint1.crz" "hands:b_r_middle2.rz";
connectAttr "hands:b_r_middle2.s" "hands:b_r_middle3.is";
connectAttr "R_Skeleton_Layer.di" "hands:b_r_middle3.do";
connectAttr "b_r_middle3_parentConstraint1.ctx" "hands:b_r_middle3.tx";
connectAttr "b_r_middle3_parentConstraint1.cty" "hands:b_r_middle3.ty";
connectAttr "b_r_middle3_parentConstraint1.ctz" "hands:b_r_middle3.tz";
connectAttr "b_r_middle3_parentConstraint1.crx" "hands:b_r_middle3.rx";
connectAttr "b_r_middle3_parentConstraint1.cry" "hands:b_r_middle3.ry";
connectAttr "b_r_middle3_parentConstraint1.crz" "hands:b_r_middle3.rz";
connectAttr "hands:b_r_middle3.s" "hands:b_r_middle_ignore.is";
connectAttr "R_Skeleton_Layer.di" "hands:b_r_middle_ignore.do";
connectAttr "hands:b_r_middle3.ro" "b_r_middle3_parentConstraint1.cro";
connectAttr "hands:b_r_middle3.pim" "b_r_middle3_parentConstraint1.cpim";
connectAttr "hands:b_r_middle3.rp" "b_r_middle3_parentConstraint1.crp";
connectAttr "hands:b_r_middle3.rpt" "b_r_middle3_parentConstraint1.crt";
connectAttr "hands:b_r_middle3.jo" "b_r_middle3_parentConstraint1.cjo";
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp|middle_03_ctrl.t" "b_r_middle3_parentConstraint1.tg[0].tt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp|middle_03_ctrl.rp" "b_r_middle3_parentConstraint1.tg[0].trp"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp|middle_03_ctrl.rpt" "b_r_middle3_parentConstraint1.tg[0].trt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp|middle_03_ctrl.r" "b_r_middle3_parentConstraint1.tg[0].tr"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp|middle_03_ctrl.ro" "b_r_middle3_parentConstraint1.tg[0].tro"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp|middle_03_ctrl.s" "b_r_middle3_parentConstraint1.tg[0].ts"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp|middle_03_ctrl.pm" "b_r_middle3_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_r_middle3_parentConstraint1.w0" "b_r_middle3_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_r_middle2.ro" "b_r_middle2_parentConstraint1.cro";
connectAttr "hands:b_r_middle2.pim" "b_r_middle2_parentConstraint1.cpim";
connectAttr "hands:b_r_middle2.rp" "b_r_middle2_parentConstraint1.crp";
connectAttr "hands:b_r_middle2.rpt" "b_r_middle2_parentConstraint1.crt";
connectAttr "hands:b_r_middle2.jo" "b_r_middle2_parentConstraint1.cjo";
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl.t" "b_r_middle2_parentConstraint1.tg[0].tt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl.rp" "b_r_middle2_parentConstraint1.tg[0].trp"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl.rpt" "b_r_middle2_parentConstraint1.tg[0].trt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl.r" "b_r_middle2_parentConstraint1.tg[0].tr"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl.ro" "b_r_middle2_parentConstraint1.tg[0].tro"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl.s" "b_r_middle2_parentConstraint1.tg[0].ts"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl.pm" "b_r_middle2_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_r_middle2_parentConstraint1.w0" "b_r_middle2_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_r_middle1.ro" "b_r_middle1_parentConstraint1.cro";
connectAttr "hands:b_r_middle1.pim" "b_r_middle1_parentConstraint1.cpim";
connectAttr "hands:b_r_middle1.rp" "b_r_middle1_parentConstraint1.crp";
connectAttr "hands:b_r_middle1.rpt" "b_r_middle1_parentConstraint1.crt";
connectAttr "hands:b_r_middle1.jo" "b_r_middle1_parentConstraint1.cjo";
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl.t" "b_r_middle1_parentConstraint1.tg[0].tt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl.rp" "b_r_middle1_parentConstraint1.tg[0].trp"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl.rpt" "b_r_middle1_parentConstraint1.tg[0].trt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl.r" "b_r_middle1_parentConstraint1.tg[0].tr"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl.ro" "b_r_middle1_parentConstraint1.tg[0].tro"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl.s" "b_r_middle1_parentConstraint1.tg[0].ts"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl.pm" "b_r_middle1_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_r_middle1_parentConstraint1.w0" "b_r_middle1_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_r_hand.s" "hands:b_r_index1.is";
connectAttr "R_Skeleton_Layer.di" "hands:b_r_index1.do";
connectAttr "b_r_index1_parentConstraint1.ctx" "hands:b_r_index1.tx";
connectAttr "b_r_index1_parentConstraint1.cty" "hands:b_r_index1.ty";
connectAttr "b_r_index1_parentConstraint1.ctz" "hands:b_r_index1.tz";
connectAttr "b_r_index1_parentConstraint1.crx" "hands:b_r_index1.rx";
connectAttr "b_r_index1_parentConstraint1.cry" "hands:b_r_index1.ry";
connectAttr "b_r_index1_parentConstraint1.crz" "hands:b_r_index1.rz";
connectAttr "hands:b_r_index1.s" "hands:b_r_index2.is";
connectAttr "R_Skeleton_Layer.di" "hands:b_r_index2.do";
connectAttr "b_r_index2_parentConstraint1.ctx" "hands:b_r_index2.tx";
connectAttr "b_r_index2_parentConstraint1.cty" "hands:b_r_index2.ty";
connectAttr "b_r_index2_parentConstraint1.ctz" "hands:b_r_index2.tz";
connectAttr "b_r_index2_parentConstraint1.crx" "hands:b_r_index2.rx";
connectAttr "b_r_index2_parentConstraint1.cry" "hands:b_r_index2.ry";
connectAttr "b_r_index2_parentConstraint1.crz" "hands:b_r_index2.rz";
connectAttr "hands:b_r_index2.s" "hands:b_r_index3.is";
connectAttr "R_Skeleton_Layer.di" "hands:b_r_index3.do";
connectAttr "b_r_index3_parentConstraint1.ctx" "hands:b_r_index3.tx";
connectAttr "b_r_index3_parentConstraint1.cty" "hands:b_r_index3.ty";
connectAttr "b_r_index3_parentConstraint1.ctz" "hands:b_r_index3.tz";
connectAttr "b_r_index3_parentConstraint1.crx" "hands:b_r_index3.rx";
connectAttr "b_r_index3_parentConstraint1.cry" "hands:b_r_index3.ry";
connectAttr "b_r_index3_parentConstraint1.crz" "hands:b_r_index3.rz";
connectAttr "hands:b_r_index3.s" "hands:b_r_index_ignore.is";
connectAttr "R_Skeleton_Layer.di" "hands:b_r_index_ignore.do";
connectAttr "hands:b_r_index3.ro" "b_r_index3_parentConstraint1.cro";
connectAttr "hands:b_r_index3.pim" "b_r_index3_parentConstraint1.cpim";
connectAttr "hands:b_r_index3.rp" "b_r_index3_parentConstraint1.crp";
connectAttr "hands:b_r_index3.rpt" "b_r_index3_parentConstraint1.crt";
connectAttr "hands:b_r_index3.jo" "b_r_index3_parentConstraint1.cjo";
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl.t" "b_r_index3_parentConstraint1.tg[0].tt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl.rp" "b_r_index3_parentConstraint1.tg[0].trp"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl.rpt" "b_r_index3_parentConstraint1.tg[0].trt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl.r" "b_r_index3_parentConstraint1.tg[0].tr"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl.ro" "b_r_index3_parentConstraint1.tg[0].tro"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl.s" "b_r_index3_parentConstraint1.tg[0].ts"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl.pm" "b_r_index3_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_r_index3_parentConstraint1.w0" "b_r_index3_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_r_index2.ro" "b_r_index2_parentConstraint1.cro";
connectAttr "hands:b_r_index2.pim" "b_r_index2_parentConstraint1.cpim";
connectAttr "hands:b_r_index2.rp" "b_r_index2_parentConstraint1.crp";
connectAttr "hands:b_r_index2.rpt" "b_r_index2_parentConstraint1.crt";
connectAttr "hands:b_r_index2.jo" "b_r_index2_parentConstraint1.cjo";
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl.t" "b_r_index2_parentConstraint1.tg[0].tt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl.rp" "b_r_index2_parentConstraint1.tg[0].trp"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl.rpt" "b_r_index2_parentConstraint1.tg[0].trt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl.r" "b_r_index2_parentConstraint1.tg[0].tr"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl.ro" "b_r_index2_parentConstraint1.tg[0].tro"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl.s" "b_r_index2_parentConstraint1.tg[0].ts"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl.pm" "b_r_index2_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_r_index2_parentConstraint1.w0" "b_r_index2_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_r_index1.ro" "b_r_index1_parentConstraint1.cro";
connectAttr "hands:b_r_index1.pim" "b_r_index1_parentConstraint1.cpim";
connectAttr "hands:b_r_index1.rp" "b_r_index1_parentConstraint1.crp";
connectAttr "hands:b_r_index1.rpt" "b_r_index1_parentConstraint1.crt";
connectAttr "hands:b_r_index1.jo" "b_r_index1_parentConstraint1.cjo";
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl.t" "b_r_index1_parentConstraint1.tg[0].tt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl.rp" "b_r_index1_parentConstraint1.tg[0].trp"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl.rpt" "b_r_index1_parentConstraint1.tg[0].trt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl.r" "b_r_index1_parentConstraint1.tg[0].tr"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl.ro" "b_r_index1_parentConstraint1.tg[0].tro"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl.s" "b_r_index1_parentConstraint1.tg[0].ts"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl.pm" "b_r_index1_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_r_index1_parentConstraint1.w0" "b_r_index1_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_r_hand.s" "hands:b_r_pinky0.is";
connectAttr "R_Skeleton_Layer.di" "hands:b_r_pinky0.do";
connectAttr "b_r_pinky0_parentConstraint1.ctx" "hands:b_r_pinky0.tx";
connectAttr "b_r_pinky0_parentConstraint1.cty" "hands:b_r_pinky0.ty";
connectAttr "b_r_pinky0_parentConstraint1.ctz" "hands:b_r_pinky0.tz";
connectAttr "b_r_pinky0_parentConstraint1.crx" "hands:b_r_pinky0.rx";
connectAttr "b_r_pinky0_parentConstraint1.cry" "hands:b_r_pinky0.ry";
connectAttr "b_r_pinky0_parentConstraint1.crz" "hands:b_r_pinky0.rz";
connectAttr "hands:b_r_pinky0.s" "hands:b_r_pinky1.is";
connectAttr "R_Skeleton_Layer.di" "hands:b_r_pinky1.do";
connectAttr "b_r_pinky1_parentConstraint1.ctx" "hands:b_r_pinky1.tx";
connectAttr "b_r_pinky1_parentConstraint1.cty" "hands:b_r_pinky1.ty";
connectAttr "b_r_pinky1_parentConstraint1.ctz" "hands:b_r_pinky1.tz";
connectAttr "b_r_pinky1_parentConstraint1.crx" "hands:b_r_pinky1.rx";
connectAttr "b_r_pinky1_parentConstraint1.cry" "hands:b_r_pinky1.ry";
connectAttr "b_r_pinky1_parentConstraint1.crz" "hands:b_r_pinky1.rz";
connectAttr "hands:b_r_pinky1.s" "hands:b_r_pinky2.is";
connectAttr "R_Skeleton_Layer.di" "hands:b_r_pinky2.do";
connectAttr "b_r_pinky2_parentConstraint1.ctx" "hands:b_r_pinky2.tx";
connectAttr "b_r_pinky2_parentConstraint1.cty" "hands:b_r_pinky2.ty";
connectAttr "b_r_pinky2_parentConstraint1.ctz" "hands:b_r_pinky2.tz";
connectAttr "b_r_pinky2_parentConstraint1.crx" "hands:b_r_pinky2.rx";
connectAttr "b_r_pinky2_parentConstraint1.cry" "hands:b_r_pinky2.ry";
connectAttr "b_r_pinky2_parentConstraint1.crz" "hands:b_r_pinky2.rz";
connectAttr "hands:b_r_pinky2.s" "hands:b_r_pinky3.is";
connectAttr "R_Skeleton_Layer.di" "hands:b_r_pinky3.do";
connectAttr "b_r_pinky3_parentConstraint1.ctx" "hands:b_r_pinky3.tx";
connectAttr "b_r_pinky3_parentConstraint1.cty" "hands:b_r_pinky3.ty";
connectAttr "b_r_pinky3_parentConstraint1.ctz" "hands:b_r_pinky3.tz";
connectAttr "b_r_pinky3_parentConstraint1.crx" "hands:b_r_pinky3.rx";
connectAttr "b_r_pinky3_parentConstraint1.cry" "hands:b_r_pinky3.ry";
connectAttr "b_r_pinky3_parentConstraint1.crz" "hands:b_r_pinky3.rz";
connectAttr "hands:b_r_pinky3.s" "hands:b_r_pinky_ignore.is";
connectAttr "R_Skeleton_Layer.di" "hands:b_r_pinky_ignore.do";
connectAttr "hands:b_r_pinky3.ro" "b_r_pinky3_parentConstraint1.cro";
connectAttr "hands:b_r_pinky3.pim" "b_r_pinky3_parentConstraint1.cpim";
connectAttr "hands:b_r_pinky3.rp" "b_r_pinky3_parentConstraint1.crp";
connectAttr "hands:b_r_pinky3.rpt" "b_r_pinky3_parentConstraint1.crt";
connectAttr "hands:b_r_pinky3.jo" "b_r_pinky3_parentConstraint1.cjo";
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp|pinky_04_ctrl.t" "b_r_pinky3_parentConstraint1.tg[0].tt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp|pinky_04_ctrl.rp" "b_r_pinky3_parentConstraint1.tg[0].trp"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp|pinky_04_ctrl.rpt" "b_r_pinky3_parentConstraint1.tg[0].trt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp|pinky_04_ctrl.r" "b_r_pinky3_parentConstraint1.tg[0].tr"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp|pinky_04_ctrl.ro" "b_r_pinky3_parentConstraint1.tg[0].tro"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp|pinky_04_ctrl.s" "b_r_pinky3_parentConstraint1.tg[0].ts"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp|pinky_04_ctrl.pm" "b_r_pinky3_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_r_pinky3_parentConstraint1.w0" "b_r_pinky3_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_r_pinky2.ro" "b_r_pinky2_parentConstraint1.cro";
connectAttr "hands:b_r_pinky2.pim" "b_r_pinky2_parentConstraint1.cpim";
connectAttr "hands:b_r_pinky2.rp" "b_r_pinky2_parentConstraint1.crp";
connectAttr "hands:b_r_pinky2.rpt" "b_r_pinky2_parentConstraint1.crt";
connectAttr "hands:b_r_pinky2.jo" "b_r_pinky2_parentConstraint1.cjo";
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl.t" "b_r_pinky2_parentConstraint1.tg[0].tt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl.rp" "b_r_pinky2_parentConstraint1.tg[0].trp"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl.rpt" "b_r_pinky2_parentConstraint1.tg[0].trt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl.r" "b_r_pinky2_parentConstraint1.tg[0].tr"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl.ro" "b_r_pinky2_parentConstraint1.tg[0].tro"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl.s" "b_r_pinky2_parentConstraint1.tg[0].ts"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl.pm" "b_r_pinky2_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_r_pinky2_parentConstraint1.w0" "b_r_pinky2_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_r_pinky1.ro" "b_r_pinky1_parentConstraint1.cro";
connectAttr "hands:b_r_pinky1.pim" "b_r_pinky1_parentConstraint1.cpim";
connectAttr "hands:b_r_pinky1.rp" "b_r_pinky1_parentConstraint1.crp";
connectAttr "hands:b_r_pinky1.rpt" "b_r_pinky1_parentConstraint1.crt";
connectAttr "hands:b_r_pinky1.jo" "b_r_pinky1_parentConstraint1.cjo";
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl.t" "b_r_pinky1_parentConstraint1.tg[0].tt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl.rp" "b_r_pinky1_parentConstraint1.tg[0].trp"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl.rpt" "b_r_pinky1_parentConstraint1.tg[0].trt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl.r" "b_r_pinky1_parentConstraint1.tg[0].tr"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl.ro" "b_r_pinky1_parentConstraint1.tg[0].tro"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl.s" "b_r_pinky1_parentConstraint1.tg[0].ts"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl.pm" "b_r_pinky1_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_r_pinky1_parentConstraint1.w0" "b_r_pinky1_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_r_pinky0.ro" "b_r_pinky0_parentConstraint1.cro";
connectAttr "hands:b_r_pinky0.pim" "b_r_pinky0_parentConstraint1.cpim";
connectAttr "hands:b_r_pinky0.rp" "b_r_pinky0_parentConstraint1.crp";
connectAttr "hands:b_r_pinky0.rpt" "b_r_pinky0_parentConstraint1.crt";
connectAttr "hands:b_r_pinky0.jo" "b_r_pinky0_parentConstraint1.cjo";
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl.t" "b_r_pinky0_parentConstraint1.tg[0].tt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl.rp" "b_r_pinky0_parentConstraint1.tg[0].trp"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl.rpt" "b_r_pinky0_parentConstraint1.tg[0].trt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl.r" "b_r_pinky0_parentConstraint1.tg[0].tr"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl.ro" "b_r_pinky0_parentConstraint1.tg[0].tro"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl.s" "b_r_pinky0_parentConstraint1.tg[0].ts"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl.pm" "b_r_pinky0_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_r_pinky0_parentConstraint1.w0" "b_r_pinky0_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_r_hand.s" "hands:b_r_thumb1.is";
connectAttr "R_Skeleton_Layer.di" "hands:b_r_thumb1.do";
connectAttr "b_r_thumb1_parentConstraint1.ctx" "hands:b_r_thumb1.tx";
connectAttr "b_r_thumb1_parentConstraint1.cty" "hands:b_r_thumb1.ty";
connectAttr "b_r_thumb1_parentConstraint1.ctz" "hands:b_r_thumb1.tz";
connectAttr "b_r_thumb1_parentConstraint1.crx" "hands:b_r_thumb1.rx";
connectAttr "b_r_thumb1_parentConstraint1.cry" "hands:b_r_thumb1.ry";
connectAttr "b_r_thumb1_parentConstraint1.crz" "hands:b_r_thumb1.rz";
connectAttr "hands:b_r_thumb1.s" "hands:b_r_thumb2.is";
connectAttr "R_Skeleton_Layer.di" "hands:b_r_thumb2.do";
connectAttr "b_r_thumb2_parentConstraint1.ctx" "hands:b_r_thumb2.tx";
connectAttr "b_r_thumb2_parentConstraint1.cty" "hands:b_r_thumb2.ty";
connectAttr "b_r_thumb2_parentConstraint1.ctz" "hands:b_r_thumb2.tz";
connectAttr "b_r_thumb2_parentConstraint1.crx" "hands:b_r_thumb2.rx";
connectAttr "b_r_thumb2_parentConstraint1.cry" "hands:b_r_thumb2.ry";
connectAttr "b_r_thumb2_parentConstraint1.crz" "hands:b_r_thumb2.rz";
connectAttr "hands:b_r_thumb2.s" "hands:b_r_thumb3.is";
connectAttr "R_Skeleton_Layer.di" "hands:b_r_thumb3.do";
connectAttr "b_r_thumb3_parentConstraint1.ctx" "hands:b_r_thumb3.tx";
connectAttr "b_r_thumb3_parentConstraint1.cty" "hands:b_r_thumb3.ty";
connectAttr "b_r_thumb3_parentConstraint1.ctz" "hands:b_r_thumb3.tz";
connectAttr "b_r_thumb3_parentConstraint1.crx" "hands:b_r_thumb3.rx";
connectAttr "b_r_thumb3_parentConstraint1.cry" "hands:b_r_thumb3.ry";
connectAttr "b_r_thumb3_parentConstraint1.crz" "hands:b_r_thumb3.rz";
connectAttr "hands:b_r_thumb3.s" "hands:b_r_thumb_ignore.is";
connectAttr "R_Skeleton_Layer.di" "hands:b_r_thumb_ignore.do";
connectAttr "hands:b_r_thumb3.ro" "b_r_thumb3_parentConstraint1.cro";
connectAttr "hands:b_r_thumb3.pim" "b_r_thumb3_parentConstraint1.cpim";
connectAttr "hands:b_r_thumb3.rp" "b_r_thumb3_parentConstraint1.crp";
connectAttr "hands:b_r_thumb3.rpt" "b_r_thumb3_parentConstraint1.crt";
connectAttr "hands:b_r_thumb3.jo" "b_r_thumb3_parentConstraint1.cjo";
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp|thumb_03_ctrl.t" "b_r_thumb3_parentConstraint1.tg[0].tt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp|thumb_03_ctrl.rp" "b_r_thumb3_parentConstraint1.tg[0].trp"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp|thumb_03_ctrl.rpt" "b_r_thumb3_parentConstraint1.tg[0].trt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp|thumb_03_ctrl.r" "b_r_thumb3_parentConstraint1.tg[0].tr"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp|thumb_03_ctrl.ro" "b_r_thumb3_parentConstraint1.tg[0].tro"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp|thumb_03_ctrl.s" "b_r_thumb3_parentConstraint1.tg[0].ts"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp|thumb_03_ctrl.pm" "b_r_thumb3_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_r_thumb3_parentConstraint1.w0" "b_r_thumb3_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_r_thumb2.ro" "b_r_thumb2_parentConstraint1.cro";
connectAttr "hands:b_r_thumb2.pim" "b_r_thumb2_parentConstraint1.cpim";
connectAttr "hands:b_r_thumb2.rp" "b_r_thumb2_parentConstraint1.crp";
connectAttr "hands:b_r_thumb2.rpt" "b_r_thumb2_parentConstraint1.crt";
connectAttr "hands:b_r_thumb2.jo" "b_r_thumb2_parentConstraint1.cjo";
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl.t" "b_r_thumb2_parentConstraint1.tg[0].tt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl.rp" "b_r_thumb2_parentConstraint1.tg[0].trp"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl.rpt" "b_r_thumb2_parentConstraint1.tg[0].trt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl.r" "b_r_thumb2_parentConstraint1.tg[0].tr"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl.ro" "b_r_thumb2_parentConstraint1.tg[0].tro"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl.s" "b_r_thumb2_parentConstraint1.tg[0].ts"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl.pm" "b_r_thumb2_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_r_thumb2_parentConstraint1.w0" "b_r_thumb2_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_r_thumb1.ro" "b_r_thumb1_parentConstraint1.cro";
connectAttr "hands:b_r_thumb1.pim" "b_r_thumb1_parentConstraint1.cpim";
connectAttr "hands:b_r_thumb1.rp" "b_r_thumb1_parentConstraint1.crp";
connectAttr "hands:b_r_thumb1.rpt" "b_r_thumb1_parentConstraint1.crt";
connectAttr "hands:b_r_thumb1.jo" "b_r_thumb1_parentConstraint1.cjo";
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl.t" "b_r_thumb1_parentConstraint1.tg[0].tt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl.rp" "b_r_thumb1_parentConstraint1.tg[0].trp"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl.rpt" "b_r_thumb1_parentConstraint1.tg[0].trt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl.r" "b_r_thumb1_parentConstraint1.tg[0].tr"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl.ro" "b_r_thumb1_parentConstraint1.tg[0].tro"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl.s" "b_r_thumb1_parentConstraint1.tg[0].ts"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl.pm" "b_r_thumb1_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_r_thumb1_parentConstraint1.w0" "b_r_thumb1_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_r_hand.s" "hands:b_r_hand_ignore.is";
connectAttr "R_Skeleton_Layer.di" "hands:b_r_hand_ignore.do";
connectAttr "hands:b_r_hand.s" "hands:b_r_grip.is";
connectAttr "b_r_grip_translateX.o" "hands:b_r_grip.tx";
connectAttr "b_r_grip_translateY.o" "hands:b_r_grip.ty";
connectAttr "b_r_grip_translateZ.o" "hands:b_r_grip.tz";
connectAttr "b_r_grip_rotateX.o" "hands:b_r_grip.rx";
connectAttr "b_r_grip_rotateY.o" "hands:b_r_grip.ry";
connectAttr "b_r_grip_rotateZ.o" "hands:b_r_grip.rz";
connectAttr "b_r_grip_visibility.o" "hands:b_r_grip.v";
connectAttr "b_r_grip_lockInfluenceWeights.o" "hands:b_r_grip.liw";
connectAttr "R_Skeleton_Layer.di" "hands:b_r_grip.do";
connectAttr "hands:b_r_hand.ro" "b_r_hand_parentConstraint1.cro";
connectAttr "hands:b_r_hand.pim" "b_r_hand_parentConstraint1.cpim";
connectAttr "hands:b_r_hand.rp" "b_r_hand_parentConstraint1.crp";
connectAttr "hands:b_r_hand.rpt" "b_r_hand_parentConstraint1.crt";
connectAttr "hands:b_r_hand.jo" "b_r_hand_parentConstraint1.cjo";
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl.t" "b_r_hand_parentConstraint1.tg[0].tt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl.rp" "b_r_hand_parentConstraint1.tg[0].trp"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl.rpt" "b_r_hand_parentConstraint1.tg[0].trt"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl.r" "b_r_hand_parentConstraint1.tg[0].tr"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl.ro" "b_r_hand_parentConstraint1.tg[0].tro"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl.s" "b_r_hand_parentConstraint1.tg[0].ts"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl.pm" "b_r_hand_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_r_hand_parentConstraint1.w0" "b_r_hand_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Geo_Layer.di" "|Right_Hand|Geometry.do";
connectAttr "skinCluster1.og[0]" "r_HandShape.i";
connectAttr "Left_Hand_visibility.o" "Left_Hand.v";
connectAttr "L_Control_Layer.di" "|Left_Hand|Controls.do";
connectAttr "L_Skeleton_Layer.di" "hands:b_l_hand.do";
connectAttr "b_l_hand_parentConstraint1.ctx" "hands:b_l_hand.tx";
connectAttr "b_l_hand_parentConstraint1.cty" "hands:b_l_hand.ty";
connectAttr "b_l_hand_parentConstraint1.ctz" "hands:b_l_hand.tz";
connectAttr "b_l_hand_parentConstraint1.crx" "hands:b_l_hand.rx";
connectAttr "b_l_hand_parentConstraint1.cry" "hands:b_l_hand.ry";
connectAttr "b_l_hand_parentConstraint1.crz" "hands:b_l_hand.rz";
connectAttr "hands:b_l_hand.s" "hands:b_l_hand_ignore.is";
connectAttr "L_Skeleton_Layer.di" "hands:b_l_hand_ignore.do";
connectAttr "hands:b_l_hand.s" "hands:b_l_thumb1.is";
connectAttr "L_Skeleton_Layer.di" "hands:b_l_thumb1.do";
connectAttr "b_l_thumb1_parentConstraint1.ctx" "hands:b_l_thumb1.tx";
connectAttr "b_l_thumb1_parentConstraint1.cty" "hands:b_l_thumb1.ty";
connectAttr "b_l_thumb1_parentConstraint1.ctz" "hands:b_l_thumb1.tz";
connectAttr "b_l_thumb1_parentConstraint1.crx" "hands:b_l_thumb1.rx";
connectAttr "b_l_thumb1_parentConstraint1.cry" "hands:b_l_thumb1.ry";
connectAttr "b_l_thumb1_parentConstraint1.crz" "hands:b_l_thumb1.rz";
connectAttr "hands:b_l_thumb1.s" "hands:b_l_thumb2.is";
connectAttr "L_Skeleton_Layer.di" "hands:b_l_thumb2.do";
connectAttr "b_l_thumb2_parentConstraint1.ctx" "hands:b_l_thumb2.tx";
connectAttr "b_l_thumb2_parentConstraint1.cty" "hands:b_l_thumb2.ty";
connectAttr "b_l_thumb2_parentConstraint1.ctz" "hands:b_l_thumb2.tz";
connectAttr "b_l_thumb2_parentConstraint1.crx" "hands:b_l_thumb2.rx";
connectAttr "b_l_thumb2_parentConstraint1.cry" "hands:b_l_thumb2.ry";
connectAttr "b_l_thumb2_parentConstraint1.crz" "hands:b_l_thumb2.rz";
connectAttr "hands:b_l_thumb2.s" "hands:b_l_thumb3.is";
connectAttr "L_Skeleton_Layer.di" "hands:b_l_thumb3.do";
connectAttr "b_l_thumb3_parentConstraint1.ctx" "hands:b_l_thumb3.tx";
connectAttr "b_l_thumb3_parentConstraint1.cty" "hands:b_l_thumb3.ty";
connectAttr "b_l_thumb3_parentConstraint1.ctz" "hands:b_l_thumb3.tz";
connectAttr "b_l_thumb3_parentConstraint1.crx" "hands:b_l_thumb3.rx";
connectAttr "b_l_thumb3_parentConstraint1.cry" "hands:b_l_thumb3.ry";
connectAttr "b_l_thumb3_parentConstraint1.crz" "hands:b_l_thumb3.rz";
connectAttr "hands:b_l_thumb3.s" "hands:b_l_thumb_ignore.is";
connectAttr "L_Skeleton_Layer.di" "hands:b_l_thumb_ignore.do";
connectAttr "hands:b_l_thumb3.ro" "b_l_thumb3_parentConstraint1.cro";
connectAttr "hands:b_l_thumb3.pim" "b_l_thumb3_parentConstraint1.cpim";
connectAttr "hands:b_l_thumb3.rp" "b_l_thumb3_parentConstraint1.crp";
connectAttr "hands:b_l_thumb3.rpt" "b_l_thumb3_parentConstraint1.crt";
connectAttr "hands:b_l_thumb3.jo" "b_l_thumb3_parentConstraint1.cjo";
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp|thumb_03_ctrl.t" "b_l_thumb3_parentConstraint1.tg[0].tt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp|thumb_03_ctrl.rp" "b_l_thumb3_parentConstraint1.tg[0].trp"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp|thumb_03_ctrl.rpt" "b_l_thumb3_parentConstraint1.tg[0].trt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp|thumb_03_ctrl.r" "b_l_thumb3_parentConstraint1.tg[0].tr"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp|thumb_03_ctrl.ro" "b_l_thumb3_parentConstraint1.tg[0].tro"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp|thumb_03_ctrl.s" "b_l_thumb3_parentConstraint1.tg[0].ts"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl|thumb_03_ctrl_grp|thumb_03_ctrl.pm" "b_l_thumb3_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_l_thumb3_parentConstraint1.w0" "b_l_thumb3_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_l_thumb2.ro" "b_l_thumb2_parentConstraint1.cro";
connectAttr "hands:b_l_thumb2.pim" "b_l_thumb2_parentConstraint1.cpim";
connectAttr "hands:b_l_thumb2.rp" "b_l_thumb2_parentConstraint1.crp";
connectAttr "hands:b_l_thumb2.rpt" "b_l_thumb2_parentConstraint1.crt";
connectAttr "hands:b_l_thumb2.jo" "b_l_thumb2_parentConstraint1.cjo";
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl.t" "b_l_thumb2_parentConstraint1.tg[0].tt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl.rp" "b_l_thumb2_parentConstraint1.tg[0].trp"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl.rpt" "b_l_thumb2_parentConstraint1.tg[0].trt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl.r" "b_l_thumb2_parentConstraint1.tg[0].tr"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl.ro" "b_l_thumb2_parentConstraint1.tg[0].tro"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl.s" "b_l_thumb2_parentConstraint1.tg[0].ts"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl|thumb_02_ctrl_grp|thumb_02_ctrl.pm" "b_l_thumb2_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_l_thumb2_parentConstraint1.w0" "b_l_thumb2_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_l_thumb1.ro" "b_l_thumb1_parentConstraint1.cro";
connectAttr "hands:b_l_thumb1.pim" "b_l_thumb1_parentConstraint1.cpim";
connectAttr "hands:b_l_thumb1.rp" "b_l_thumb1_parentConstraint1.crp";
connectAttr "hands:b_l_thumb1.rpt" "b_l_thumb1_parentConstraint1.crt";
connectAttr "hands:b_l_thumb1.jo" "b_l_thumb1_parentConstraint1.cjo";
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl.t" "b_l_thumb1_parentConstraint1.tg[0].tt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl.rp" "b_l_thumb1_parentConstraint1.tg[0].trp"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl.rpt" "b_l_thumb1_parentConstraint1.tg[0].trt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl.r" "b_l_thumb1_parentConstraint1.tg[0].tr"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl.ro" "b_l_thumb1_parentConstraint1.tg[0].tro"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl.s" "b_l_thumb1_parentConstraint1.tg[0].ts"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|thumb_01_ctrl_grp|thumb_01_ctrl.pm" "b_l_thumb1_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_l_thumb1_parentConstraint1.w0" "b_l_thumb1_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_l_hand.s" "hands:b_l_index1.is";
connectAttr "L_Skeleton_Layer.di" "hands:b_l_index1.do";
connectAttr "b_l_index1_parentConstraint1.ctx" "hands:b_l_index1.tx";
connectAttr "b_l_index1_parentConstraint1.cty" "hands:b_l_index1.ty";
connectAttr "b_l_index1_parentConstraint1.ctz" "hands:b_l_index1.tz";
connectAttr "b_l_index1_parentConstraint1.crx" "hands:b_l_index1.rx";
connectAttr "b_l_index1_parentConstraint1.cry" "hands:b_l_index1.ry";
connectAttr "b_l_index1_parentConstraint1.crz" "hands:b_l_index1.rz";
connectAttr "hands:b_l_index1.s" "hands:b_l_index2.is";
connectAttr "L_Skeleton_Layer.di" "hands:b_l_index2.do";
connectAttr "b_l_index2_parentConstraint1.ctx" "hands:b_l_index2.tx";
connectAttr "b_l_index2_parentConstraint1.cty" "hands:b_l_index2.ty";
connectAttr "b_l_index2_parentConstraint1.ctz" "hands:b_l_index2.tz";
connectAttr "b_l_index2_parentConstraint1.crx" "hands:b_l_index2.rx";
connectAttr "b_l_index2_parentConstraint1.cry" "hands:b_l_index2.ry";
connectAttr "b_l_index2_parentConstraint1.crz" "hands:b_l_index2.rz";
connectAttr "hands:b_l_index2.s" "hands:b_l_index3.is";
connectAttr "L_Skeleton_Layer.di" "hands:b_l_index3.do";
connectAttr "b_l_index3_parentConstraint1.ctx" "hands:b_l_index3.tx";
connectAttr "b_l_index3_parentConstraint1.cty" "hands:b_l_index3.ty";
connectAttr "b_l_index3_parentConstraint1.ctz" "hands:b_l_index3.tz";
connectAttr "b_l_index3_parentConstraint1.crx" "hands:b_l_index3.rx";
connectAttr "b_l_index3_parentConstraint1.cry" "hands:b_l_index3.ry";
connectAttr "b_l_index3_parentConstraint1.crz" "hands:b_l_index3.rz";
connectAttr "hands:b_l_index3.s" "hands:b_l_index_ignore.is";
connectAttr "L_Skeleton_Layer.di" "hands:b_l_index_ignore.do";
connectAttr "hands:b_l_index3.ro" "b_l_index3_parentConstraint1.cro";
connectAttr "hands:b_l_index3.pim" "b_l_index3_parentConstraint1.cpim";
connectAttr "hands:b_l_index3.rp" "b_l_index3_parentConstraint1.crp";
connectAttr "hands:b_l_index3.rpt" "b_l_index3_parentConstraint1.crt";
connectAttr "hands:b_l_index3.jo" "b_l_index3_parentConstraint1.cjo";
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl.t" "b_l_index3_parentConstraint1.tg[0].tt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl.rp" "b_l_index3_parentConstraint1.tg[0].trp"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl.rpt" "b_l_index3_parentConstraint1.tg[0].trt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl.r" "b_l_index3_parentConstraint1.tg[0].tr"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl.ro" "b_l_index3_parentConstraint1.tg[0].tro"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl.s" "b_l_index3_parentConstraint1.tg[0].ts"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl.pm" "b_l_index3_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_l_index3_parentConstraint1.w0" "b_l_index3_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_l_index2.ro" "b_l_index2_parentConstraint1.cro";
connectAttr "hands:b_l_index2.pim" "b_l_index2_parentConstraint1.cpim";
connectAttr "hands:b_l_index2.rp" "b_l_index2_parentConstraint1.crp";
connectAttr "hands:b_l_index2.rpt" "b_l_index2_parentConstraint1.crt";
connectAttr "hands:b_l_index2.jo" "b_l_index2_parentConstraint1.cjo";
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl.t" "b_l_index2_parentConstraint1.tg[0].tt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl.rp" "b_l_index2_parentConstraint1.tg[0].trp"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl.rpt" "b_l_index2_parentConstraint1.tg[0].trt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl.r" "b_l_index2_parentConstraint1.tg[0].tr"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl.ro" "b_l_index2_parentConstraint1.tg[0].tro"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl.s" "b_l_index2_parentConstraint1.tg[0].ts"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl.pm" "b_l_index2_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_l_index2_parentConstraint1.w0" "b_l_index2_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_l_index1.ro" "b_l_index1_parentConstraint1.cro";
connectAttr "hands:b_l_index1.pim" "b_l_index1_parentConstraint1.cpim";
connectAttr "hands:b_l_index1.rp" "b_l_index1_parentConstraint1.crp";
connectAttr "hands:b_l_index1.rpt" "b_l_index1_parentConstraint1.crt";
connectAttr "hands:b_l_index1.jo" "b_l_index1_parentConstraint1.cjo";
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl.t" "b_l_index1_parentConstraint1.tg[0].tt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl.rp" "b_l_index1_parentConstraint1.tg[0].trp"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl.rpt" "b_l_index1_parentConstraint1.tg[0].trt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl.r" "b_l_index1_parentConstraint1.tg[0].tr"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl.ro" "b_l_index1_parentConstraint1.tg[0].tro"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl.s" "b_l_index1_parentConstraint1.tg[0].ts"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl.pm" "b_l_index1_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_l_index1_parentConstraint1.w0" "b_l_index1_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_l_hand.s" "hands:b_l_middle1.is";
connectAttr "L_Skeleton_Layer.di" "hands:b_l_middle1.do";
connectAttr "b_l_middle1_parentConstraint1.ctx" "hands:b_l_middle1.tx";
connectAttr "b_l_middle1_parentConstraint1.cty" "hands:b_l_middle1.ty";
connectAttr "b_l_middle1_parentConstraint1.ctz" "hands:b_l_middle1.tz";
connectAttr "b_l_middle1_parentConstraint1.crx" "hands:b_l_middle1.rx";
connectAttr "b_l_middle1_parentConstraint1.cry" "hands:b_l_middle1.ry";
connectAttr "b_l_middle1_parentConstraint1.crz" "hands:b_l_middle1.rz";
connectAttr "hands:b_l_middle1.s" "hands:b_l_middle2.is";
connectAttr "L_Skeleton_Layer.di" "hands:b_l_middle2.do";
connectAttr "b_l_middle2_parentConstraint1.ctx" "hands:b_l_middle2.tx";
connectAttr "b_l_middle2_parentConstraint1.cty" "hands:b_l_middle2.ty";
connectAttr "b_l_middle2_parentConstraint1.ctz" "hands:b_l_middle2.tz";
connectAttr "b_l_middle2_parentConstraint1.crx" "hands:b_l_middle2.rx";
connectAttr "b_l_middle2_parentConstraint1.cry" "hands:b_l_middle2.ry";
connectAttr "b_l_middle2_parentConstraint1.crz" "hands:b_l_middle2.rz";
connectAttr "hands:b_l_middle2.s" "hands:b_l_middle3.is";
connectAttr "L_Skeleton_Layer.di" "hands:b_l_middle3.do";
connectAttr "b_l_middle3_parentConstraint1.ctx" "hands:b_l_middle3.tx";
connectAttr "b_l_middle3_parentConstraint1.cty" "hands:b_l_middle3.ty";
connectAttr "b_l_middle3_parentConstraint1.ctz" "hands:b_l_middle3.tz";
connectAttr "b_l_middle3_parentConstraint1.crx" "hands:b_l_middle3.rx";
connectAttr "b_l_middle3_parentConstraint1.cry" "hands:b_l_middle3.ry";
connectAttr "b_l_middle3_parentConstraint1.crz" "hands:b_l_middle3.rz";
connectAttr "hands:b_l_middle3.s" "hands:b_l_middle_ignore.is";
connectAttr "L_Skeleton_Layer.di" "hands:b_l_middle_ignore.do";
connectAttr "hands:b_l_middle3.ro" "b_l_middle3_parentConstraint1.cro";
connectAttr "hands:b_l_middle3.pim" "b_l_middle3_parentConstraint1.cpim";
connectAttr "hands:b_l_middle3.rp" "b_l_middle3_parentConstraint1.crp";
connectAttr "hands:b_l_middle3.rpt" "b_l_middle3_parentConstraint1.crt";
connectAttr "hands:b_l_middle3.jo" "b_l_middle3_parentConstraint1.cjo";
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp|middle_03_ctrl.t" "b_l_middle3_parentConstraint1.tg[0].tt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp|middle_03_ctrl.rp" "b_l_middle3_parentConstraint1.tg[0].trp"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp|middle_03_ctrl.rpt" "b_l_middle3_parentConstraint1.tg[0].trt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp|middle_03_ctrl.r" "b_l_middle3_parentConstraint1.tg[0].tr"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp|middle_03_ctrl.ro" "b_l_middle3_parentConstraint1.tg[0].tro"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp|middle_03_ctrl.s" "b_l_middle3_parentConstraint1.tg[0].ts"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl|middle_03_ctrl_grp|middle_03_ctrl.pm" "b_l_middle3_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_l_middle3_parentConstraint1.w0" "b_l_middle3_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_l_middle2.ro" "b_l_middle2_parentConstraint1.cro";
connectAttr "hands:b_l_middle2.pim" "b_l_middle2_parentConstraint1.cpim";
connectAttr "hands:b_l_middle2.rp" "b_l_middle2_parentConstraint1.crp";
connectAttr "hands:b_l_middle2.rpt" "b_l_middle2_parentConstraint1.crt";
connectAttr "hands:b_l_middle2.jo" "b_l_middle2_parentConstraint1.cjo";
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl.t" "b_l_middle2_parentConstraint1.tg[0].tt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl.rp" "b_l_middle2_parentConstraint1.tg[0].trp"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl.rpt" "b_l_middle2_parentConstraint1.tg[0].trt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl.r" "b_l_middle2_parentConstraint1.tg[0].tr"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl.ro" "b_l_middle2_parentConstraint1.tg[0].tro"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl.s" "b_l_middle2_parentConstraint1.tg[0].ts"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl|middle_02_ctrl_grp|middle_02_ctrl.pm" "b_l_middle2_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_l_middle2_parentConstraint1.w0" "b_l_middle2_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_l_middle1.ro" "b_l_middle1_parentConstraint1.cro";
connectAttr "hands:b_l_middle1.pim" "b_l_middle1_parentConstraint1.cpim";
connectAttr "hands:b_l_middle1.rp" "b_l_middle1_parentConstraint1.crp";
connectAttr "hands:b_l_middle1.rpt" "b_l_middle1_parentConstraint1.crt";
connectAttr "hands:b_l_middle1.jo" "b_l_middle1_parentConstraint1.cjo";
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl.t" "b_l_middle1_parentConstraint1.tg[0].tt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl.rp" "b_l_middle1_parentConstraint1.tg[0].trp"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl.rpt" "b_l_middle1_parentConstraint1.tg[0].trt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl.r" "b_l_middle1_parentConstraint1.tg[0].tr"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl.ro" "b_l_middle1_parentConstraint1.tg[0].tro"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl.s" "b_l_middle1_parentConstraint1.tg[0].ts"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|middle_01_ctrl_grp|middle_01_ctrl.pm" "b_l_middle1_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_l_middle1_parentConstraint1.w0" "b_l_middle1_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_l_hand.s" "hands:b_l_ring1.is";
connectAttr "L_Skeleton_Layer.di" "hands:b_l_ring1.do";
connectAttr "b_l_ring1_parentConstraint1.ctx" "hands:b_l_ring1.tx";
connectAttr "b_l_ring1_parentConstraint1.cty" "hands:b_l_ring1.ty";
connectAttr "b_l_ring1_parentConstraint1.ctz" "hands:b_l_ring1.tz";
connectAttr "b_l_ring1_parentConstraint1.crx" "hands:b_l_ring1.rx";
connectAttr "b_l_ring1_parentConstraint1.cry" "hands:b_l_ring1.ry";
connectAttr "b_l_ring1_parentConstraint1.crz" "hands:b_l_ring1.rz";
connectAttr "hands:b_l_ring1.s" "hands:b_l_ring2.is";
connectAttr "L_Skeleton_Layer.di" "hands:b_l_ring2.do";
connectAttr "b_l_ring2_parentConstraint1.ctx" "hands:b_l_ring2.tx";
connectAttr "b_l_ring2_parentConstraint1.cty" "hands:b_l_ring2.ty";
connectAttr "b_l_ring2_parentConstraint1.ctz" "hands:b_l_ring2.tz";
connectAttr "b_l_ring2_parentConstraint1.crx" "hands:b_l_ring2.rx";
connectAttr "b_l_ring2_parentConstraint1.cry" "hands:b_l_ring2.ry";
connectAttr "b_l_ring2_parentConstraint1.crz" "hands:b_l_ring2.rz";
connectAttr "hands:b_l_ring2.s" "hands:b_l_ring3.is";
connectAttr "L_Skeleton_Layer.di" "hands:b_l_ring3.do";
connectAttr "b_l_ring3_parentConstraint1.ctx" "hands:b_l_ring3.tx";
connectAttr "b_l_ring3_parentConstraint1.cty" "hands:b_l_ring3.ty";
connectAttr "b_l_ring3_parentConstraint1.ctz" "hands:b_l_ring3.tz";
connectAttr "b_l_ring3_parentConstraint1.crx" "hands:b_l_ring3.rx";
connectAttr "b_l_ring3_parentConstraint1.cry" "hands:b_l_ring3.ry";
connectAttr "b_l_ring3_parentConstraint1.crz" "hands:b_l_ring3.rz";
connectAttr "hands:b_l_ring3.s" "hands:b_l_ring_ignore.is";
connectAttr "L_Skeleton_Layer.di" "hands:b_l_ring_ignore.do";
connectAttr "hands:b_l_ring3.ro" "b_l_ring3_parentConstraint1.cro";
connectAttr "hands:b_l_ring3.pim" "b_l_ring3_parentConstraint1.cpim";
connectAttr "hands:b_l_ring3.rp" "b_l_ring3_parentConstraint1.crp";
connectAttr "hands:b_l_ring3.rpt" "b_l_ring3_parentConstraint1.crt";
connectAttr "hands:b_l_ring3.jo" "b_l_ring3_parentConstraint1.cjo";
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp|ring_03_ctrl.t" "b_l_ring3_parentConstraint1.tg[0].tt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp|ring_03_ctrl.rp" "b_l_ring3_parentConstraint1.tg[0].trp"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp|ring_03_ctrl.rpt" "b_l_ring3_parentConstraint1.tg[0].trt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp|ring_03_ctrl.r" "b_l_ring3_parentConstraint1.tg[0].tr"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp|ring_03_ctrl.ro" "b_l_ring3_parentConstraint1.tg[0].tro"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp|ring_03_ctrl.s" "b_l_ring3_parentConstraint1.tg[0].ts"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl|ring_03_ctrl_grp|ring_03_ctrl.pm" "b_l_ring3_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_l_ring3_parentConstraint1.w0" "b_l_ring3_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_l_ring2.ro" "b_l_ring2_parentConstraint1.cro";
connectAttr "hands:b_l_ring2.pim" "b_l_ring2_parentConstraint1.cpim";
connectAttr "hands:b_l_ring2.rp" "b_l_ring2_parentConstraint1.crp";
connectAttr "hands:b_l_ring2.rpt" "b_l_ring2_parentConstraint1.crt";
connectAttr "hands:b_l_ring2.jo" "b_l_ring2_parentConstraint1.cjo";
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl.t" "b_l_ring2_parentConstraint1.tg[0].tt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl.rp" "b_l_ring2_parentConstraint1.tg[0].trp"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl.rpt" "b_l_ring2_parentConstraint1.tg[0].trt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl.r" "b_l_ring2_parentConstraint1.tg[0].tr"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl.ro" "b_l_ring2_parentConstraint1.tg[0].tro"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl.s" "b_l_ring2_parentConstraint1.tg[0].ts"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl|ring_02_ctrl_grp|ring_02_ctrl.pm" "b_l_ring2_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_l_ring2_parentConstraint1.w0" "b_l_ring2_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_l_ring1.ro" "b_l_ring1_parentConstraint1.cro";
connectAttr "hands:b_l_ring1.pim" "b_l_ring1_parentConstraint1.cpim";
connectAttr "hands:b_l_ring1.rp" "b_l_ring1_parentConstraint1.crp";
connectAttr "hands:b_l_ring1.rpt" "b_l_ring1_parentConstraint1.crt";
connectAttr "hands:b_l_ring1.jo" "b_l_ring1_parentConstraint1.cjo";
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl.t" "b_l_ring1_parentConstraint1.tg[0].tt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl.rp" "b_l_ring1_parentConstraint1.tg[0].trp"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl.rpt" "b_l_ring1_parentConstraint1.tg[0].trt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl.r" "b_l_ring1_parentConstraint1.tg[0].tr"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl.ro" "b_l_ring1_parentConstraint1.tg[0].tro"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl.s" "b_l_ring1_parentConstraint1.tg[0].ts"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|ring_01_ctrl_grp|ring_01_ctrl.pm" "b_l_ring1_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_l_ring1_parentConstraint1.w0" "b_l_ring1_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_l_hand.s" "hands:b_l_pinky0.is";
connectAttr "L_Skeleton_Layer.di" "hands:b_l_pinky0.do";
connectAttr "b_l_pinky0_parentConstraint1.ctx" "hands:b_l_pinky0.tx";
connectAttr "b_l_pinky0_parentConstraint1.cty" "hands:b_l_pinky0.ty";
connectAttr "b_l_pinky0_parentConstraint1.ctz" "hands:b_l_pinky0.tz";
connectAttr "b_l_pinky0_parentConstraint1.crx" "hands:b_l_pinky0.rx";
connectAttr "b_l_pinky0_parentConstraint1.cry" "hands:b_l_pinky0.ry";
connectAttr "b_l_pinky0_parentConstraint1.crz" "hands:b_l_pinky0.rz";
connectAttr "hands:b_l_pinky0.s" "hands:b_l_pinky1.is";
connectAttr "L_Skeleton_Layer.di" "hands:b_l_pinky1.do";
connectAttr "b_l_pinky1_parentConstraint1.ctx" "hands:b_l_pinky1.tx";
connectAttr "b_l_pinky1_parentConstraint1.cty" "hands:b_l_pinky1.ty";
connectAttr "b_l_pinky1_parentConstraint1.ctz" "hands:b_l_pinky1.tz";
connectAttr "b_l_pinky1_parentConstraint1.crx" "hands:b_l_pinky1.rx";
connectAttr "b_l_pinky1_parentConstraint1.cry" "hands:b_l_pinky1.ry";
connectAttr "b_l_pinky1_parentConstraint1.crz" "hands:b_l_pinky1.rz";
connectAttr "hands:b_l_pinky1.s" "hands:b_l_pinky2.is";
connectAttr "L_Skeleton_Layer.di" "hands:b_l_pinky2.do";
connectAttr "b_l_pinky2_parentConstraint1.ctx" "hands:b_l_pinky2.tx";
connectAttr "b_l_pinky2_parentConstraint1.cty" "hands:b_l_pinky2.ty";
connectAttr "b_l_pinky2_parentConstraint1.ctz" "hands:b_l_pinky2.tz";
connectAttr "b_l_pinky2_parentConstraint1.crx" "hands:b_l_pinky2.rx";
connectAttr "b_l_pinky2_parentConstraint1.cry" "hands:b_l_pinky2.ry";
connectAttr "b_l_pinky2_parentConstraint1.crz" "hands:b_l_pinky2.rz";
connectAttr "hands:b_l_pinky2.s" "hands:b_l_pinky3.is";
connectAttr "L_Skeleton_Layer.di" "hands:b_l_pinky3.do";
connectAttr "b_l_pinky3_parentConstraint1.ctx" "hands:b_l_pinky3.tx";
connectAttr "b_l_pinky3_parentConstraint1.cty" "hands:b_l_pinky3.ty";
connectAttr "b_l_pinky3_parentConstraint1.ctz" "hands:b_l_pinky3.tz";
connectAttr "b_l_pinky3_parentConstraint1.crx" "hands:b_l_pinky3.rx";
connectAttr "b_l_pinky3_parentConstraint1.cry" "hands:b_l_pinky3.ry";
connectAttr "b_l_pinky3_parentConstraint1.crz" "hands:b_l_pinky3.rz";
connectAttr "hands:b_l_pinky3.s" "hands:b_l_pinky_ignore.is";
connectAttr "L_Skeleton_Layer.di" "hands:b_l_pinky_ignore.do";
connectAttr "hands:b_l_pinky3.ro" "b_l_pinky3_parentConstraint1.cro";
connectAttr "hands:b_l_pinky3.pim" "b_l_pinky3_parentConstraint1.cpim";
connectAttr "hands:b_l_pinky3.rp" "b_l_pinky3_parentConstraint1.crp";
connectAttr "hands:b_l_pinky3.rpt" "b_l_pinky3_parentConstraint1.crt";
connectAttr "hands:b_l_pinky3.jo" "b_l_pinky3_parentConstraint1.cjo";
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp|pinky_04_ctrl.t" "b_l_pinky3_parentConstraint1.tg[0].tt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp|pinky_04_ctrl.rp" "b_l_pinky3_parentConstraint1.tg[0].trp"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp|pinky_04_ctrl.rpt" "b_l_pinky3_parentConstraint1.tg[0].trt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp|pinky_04_ctrl.r" "b_l_pinky3_parentConstraint1.tg[0].tr"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp|pinky_04_ctrl.ro" "b_l_pinky3_parentConstraint1.tg[0].tro"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp|pinky_04_ctrl.s" "b_l_pinky3_parentConstraint1.tg[0].ts"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl|pinky_04_ctrl_grp|pinky_04_ctrl.pm" "b_l_pinky3_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_l_pinky3_parentConstraint1.w0" "b_l_pinky3_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_l_pinky2.ro" "b_l_pinky2_parentConstraint1.cro";
connectAttr "hands:b_l_pinky2.pim" "b_l_pinky2_parentConstraint1.cpim";
connectAttr "hands:b_l_pinky2.rp" "b_l_pinky2_parentConstraint1.crp";
connectAttr "hands:b_l_pinky2.rpt" "b_l_pinky2_parentConstraint1.crt";
connectAttr "hands:b_l_pinky2.jo" "b_l_pinky2_parentConstraint1.cjo";
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl.t" "b_l_pinky2_parentConstraint1.tg[0].tt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl.rp" "b_l_pinky2_parentConstraint1.tg[0].trp"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl.rpt" "b_l_pinky2_parentConstraint1.tg[0].trt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl.r" "b_l_pinky2_parentConstraint1.tg[0].tr"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl.ro" "b_l_pinky2_parentConstraint1.tg[0].tro"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl.s" "b_l_pinky2_parentConstraint1.tg[0].ts"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl|pinky_03_ctrl_grp|pinky_03_ctrl.pm" "b_l_pinky2_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_l_pinky2_parentConstraint1.w0" "b_l_pinky2_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_l_pinky1.ro" "b_l_pinky1_parentConstraint1.cro";
connectAttr "hands:b_l_pinky1.pim" "b_l_pinky1_parentConstraint1.cpim";
connectAttr "hands:b_l_pinky1.rp" "b_l_pinky1_parentConstraint1.crp";
connectAttr "hands:b_l_pinky1.rpt" "b_l_pinky1_parentConstraint1.crt";
connectAttr "hands:b_l_pinky1.jo" "b_l_pinky1_parentConstraint1.cjo";
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl.t" "b_l_pinky1_parentConstraint1.tg[0].tt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl.rp" "b_l_pinky1_parentConstraint1.tg[0].trp"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl.rpt" "b_l_pinky1_parentConstraint1.tg[0].trt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl.r" "b_l_pinky1_parentConstraint1.tg[0].tr"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl.ro" "b_l_pinky1_parentConstraint1.tg[0].tro"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl.s" "b_l_pinky1_parentConstraint1.tg[0].ts"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl|pinky_02_ctrl_grp|pinky_02_ctrl.pm" "b_l_pinky1_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_l_pinky1_parentConstraint1.w0" "b_l_pinky1_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_l_pinky0.ro" "b_l_pinky0_parentConstraint1.cro";
connectAttr "hands:b_l_pinky0.pim" "b_l_pinky0_parentConstraint1.cpim";
connectAttr "hands:b_l_pinky0.rp" "b_l_pinky0_parentConstraint1.crp";
connectAttr "hands:b_l_pinky0.rpt" "b_l_pinky0_parentConstraint1.crt";
connectAttr "hands:b_l_pinky0.jo" "b_l_pinky0_parentConstraint1.cjo";
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl.t" "b_l_pinky0_parentConstraint1.tg[0].tt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl.rp" "b_l_pinky0_parentConstraint1.tg[0].trp"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl.rpt" "b_l_pinky0_parentConstraint1.tg[0].trt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl.r" "b_l_pinky0_parentConstraint1.tg[0].tr"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl.ro" "b_l_pinky0_parentConstraint1.tg[0].tro"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl.s" "b_l_pinky0_parentConstraint1.tg[0].ts"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl|pinky_01_ctrl_grp|pinky_01_ctrl.pm" "b_l_pinky0_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_l_pinky0_parentConstraint1.w0" "b_l_pinky0_parentConstraint1.tg[0].tw"
		;
connectAttr "hands:b_l_hand.s" "hands:b_l_grip.is";
connectAttr "b_l_grip_translateX.o" "hands:b_l_grip.tx";
connectAttr "b_l_grip_translateY.o" "hands:b_l_grip.ty";
connectAttr "b_l_grip_translateZ.o" "hands:b_l_grip.tz";
connectAttr "b_l_grip_rotateX.o" "hands:b_l_grip.rx";
connectAttr "b_l_grip_rotateY.o" "hands:b_l_grip.ry";
connectAttr "b_l_grip_rotateZ.o" "hands:b_l_grip.rz";
connectAttr "L_Skeleton_Layer.di" "hands:b_l_grip.do";
connectAttr "hands:b_l_hand.ro" "b_l_hand_parentConstraint1.cro";
connectAttr "hands:b_l_hand.pim" "b_l_hand_parentConstraint1.cpim";
connectAttr "hands:b_l_hand.rp" "b_l_hand_parentConstraint1.crp";
connectAttr "hands:b_l_hand.rpt" "b_l_hand_parentConstraint1.crt";
connectAttr "hands:b_l_hand.jo" "b_l_hand_parentConstraint1.cjo";
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl.t" "b_l_hand_parentConstraint1.tg[0].tt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl.rp" "b_l_hand_parentConstraint1.tg[0].trp"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl.rpt" "b_l_hand_parentConstraint1.tg[0].trt"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl.r" "b_l_hand_parentConstraint1.tg[0].tr"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl.ro" "b_l_hand_parentConstraint1.tg[0].tro"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl.s" "b_l_hand_parentConstraint1.tg[0].ts"
		;
connectAttr "|Left_Hand|Controls|COG_ctrl_grp|COG_ctrl.pm" "b_l_hand_parentConstraint1.tg[0].tpm"
		;
connectAttr "b_l_hand_parentConstraint1.w0" "b_l_hand_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Skeleton_Layer.di" "hands:l_hand_world.do";
connectAttr "L_Geo_Layer.di" "|Left_Hand|Geometry.do";
connectAttr "skinCluster2.og[0]" "l_HandShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "hands:RhandSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "hands1:RhandSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "hands2:RhandSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "hands3:RhandSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "hands4:RhandSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "hands5:RhandSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "hands:LhandSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "hands:RhandSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "hands1:RhandSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "hands2:RhandSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "hands3:RhandSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "hands4:RhandSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "hands5:RhandSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "hands:LhandSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "unnamed1.oc" "hands:RhandSG.ss";
connectAttr "r_HandShape.iog" "hands:RhandSG.dsm" -na;
connectAttr "hands:RhandSG.msg" "materialInfo1.sg";
connectAttr "unnamed1.msg" "materialInfo1.m";
connectAttr "RhandShapeOrig.w" "skinCluster1.ip[0].ig";
connectAttr "RhandShapeOrig.o" "skinCluster1.orggeom[0]";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "hands:r_hand_world.wm" "skinCluster1.ma[0]";
connectAttr "hands:b_r_hand.wm" "skinCluster1.ma[1]";
connectAttr "hands:b_r_ring1.wm" "skinCluster1.ma[2]";
connectAttr "hands:b_r_ring2.wm" "skinCluster1.ma[3]";
connectAttr "hands:b_r_ring3.wm" "skinCluster1.ma[4]";
connectAttr "hands:b_r_ring_ignore.wm" "skinCluster1.ma[5]";
connectAttr "hands:b_r_middle1.wm" "skinCluster1.ma[6]";
connectAttr "hands:b_r_middle2.wm" "skinCluster1.ma[7]";
connectAttr "hands:b_r_middle3.wm" "skinCluster1.ma[8]";
connectAttr "hands:b_r_middle_ignore.wm" "skinCluster1.ma[9]";
connectAttr "hands:b_r_index1.wm" "skinCluster1.ma[10]";
connectAttr "hands:b_r_index2.wm" "skinCluster1.ma[11]";
connectAttr "hands:b_r_index3.wm" "skinCluster1.ma[12]";
connectAttr "hands:b_r_index_ignore.wm" "skinCluster1.ma[13]";
connectAttr "hands:b_r_pinky0.wm" "skinCluster1.ma[14]";
connectAttr "hands:b_r_pinky1.wm" "skinCluster1.ma[15]";
connectAttr "hands:b_r_pinky2.wm" "skinCluster1.ma[16]";
connectAttr "hands:b_r_pinky3.wm" "skinCluster1.ma[17]";
connectAttr "hands:b_r_pinky_ignore.wm" "skinCluster1.ma[18]";
connectAttr "hands:b_r_thumb1.wm" "skinCluster1.ma[19]";
connectAttr "hands:b_r_thumb2.wm" "skinCluster1.ma[20]";
connectAttr "hands:b_r_thumb3.wm" "skinCluster1.ma[21]";
connectAttr "hands:b_r_thumb_ignore.wm" "skinCluster1.ma[22]";
connectAttr "hands:b_r_hand_ignore.wm" "skinCluster1.ma[23]";
connectAttr "hands:b_r_grip.wm" "skinCluster1.ma[24]";
connectAttr "hands:r_hand_world.liw" "skinCluster1.lw[0]";
connectAttr "hands:b_r_hand.liw" "skinCluster1.lw[1]";
connectAttr "hands:b_r_ring1.liw" "skinCluster1.lw[2]";
connectAttr "hands:b_r_ring2.liw" "skinCluster1.lw[3]";
connectAttr "hands:b_r_ring3.liw" "skinCluster1.lw[4]";
connectAttr "hands:b_r_ring_ignore.liw" "skinCluster1.lw[5]";
connectAttr "hands:b_r_middle1.liw" "skinCluster1.lw[6]";
connectAttr "hands:b_r_middle2.liw" "skinCluster1.lw[7]";
connectAttr "hands:b_r_middle3.liw" "skinCluster1.lw[8]";
connectAttr "hands:b_r_middle_ignore.liw" "skinCluster1.lw[9]";
connectAttr "hands:b_r_index1.liw" "skinCluster1.lw[10]";
connectAttr "hands:b_r_index2.liw" "skinCluster1.lw[11]";
connectAttr "hands:b_r_index3.liw" "skinCluster1.lw[12]";
connectAttr "hands:b_r_index_ignore.liw" "skinCluster1.lw[13]";
connectAttr "hands:b_r_pinky0.liw" "skinCluster1.lw[14]";
connectAttr "hands:b_r_pinky1.liw" "skinCluster1.lw[15]";
connectAttr "hands:b_r_pinky2.liw" "skinCluster1.lw[16]";
connectAttr "hands:b_r_pinky3.liw" "skinCluster1.lw[17]";
connectAttr "hands:b_r_pinky_ignore.liw" "skinCluster1.lw[18]";
connectAttr "hands:b_r_thumb1.liw" "skinCluster1.lw[19]";
connectAttr "hands:b_r_thumb2.liw" "skinCluster1.lw[20]";
connectAttr "hands:b_r_thumb3.liw" "skinCluster1.lw[21]";
connectAttr "hands:b_r_thumb_ignore.liw" "skinCluster1.lw[22]";
connectAttr "hands:b_r_hand_ignore.liw" "skinCluster1.lw[23]";
connectAttr "hands:b_r_grip.liw" "skinCluster1.lw[24]";
connectAttr "hands:r_hand_world.obcc" "skinCluster1.ifcl[0]";
connectAttr "hands:b_r_hand.obcc" "skinCluster1.ifcl[1]";
connectAttr "hands:b_r_ring1.obcc" "skinCluster1.ifcl[2]";
connectAttr "hands:b_r_ring2.obcc" "skinCluster1.ifcl[3]";
connectAttr "hands:b_r_ring3.obcc" "skinCluster1.ifcl[4]";
connectAttr "hands:b_r_ring_ignore.obcc" "skinCluster1.ifcl[5]";
connectAttr "hands:b_r_middle1.obcc" "skinCluster1.ifcl[6]";
connectAttr "hands:b_r_middle2.obcc" "skinCluster1.ifcl[7]";
connectAttr "hands:b_r_middle3.obcc" "skinCluster1.ifcl[8]";
connectAttr "hands:b_r_middle_ignore.obcc" "skinCluster1.ifcl[9]";
connectAttr "hands:b_r_index1.obcc" "skinCluster1.ifcl[10]";
connectAttr "hands:b_r_index2.obcc" "skinCluster1.ifcl[11]";
connectAttr "hands:b_r_index3.obcc" "skinCluster1.ifcl[12]";
connectAttr "hands:b_r_index_ignore.obcc" "skinCluster1.ifcl[13]";
connectAttr "hands:b_r_pinky0.obcc" "skinCluster1.ifcl[14]";
connectAttr "hands:b_r_pinky1.obcc" "skinCluster1.ifcl[15]";
connectAttr "hands:b_r_pinky2.obcc" "skinCluster1.ifcl[16]";
connectAttr "hands:b_r_pinky3.obcc" "skinCluster1.ifcl[17]";
connectAttr "hands:b_r_pinky_ignore.obcc" "skinCluster1.ifcl[18]";
connectAttr "hands:b_r_thumb1.obcc" "skinCluster1.ifcl[19]";
connectAttr "hands:b_r_thumb2.obcc" "skinCluster1.ifcl[20]";
connectAttr "hands:b_r_thumb3.obcc" "skinCluster1.ifcl[21]";
connectAttr "hands:b_r_thumb_ignore.obcc" "skinCluster1.ifcl[22]";
connectAttr "hands:b_r_hand_ignore.obcc" "skinCluster1.ifcl[23]";
connectAttr "hands:b_r_grip.obcc" "skinCluster1.ifcl[24]";
connectAttr "hands:r_hand_world.msg" "bindPose1.m[0]";
connectAttr "hands:b_r_hand.msg" "bindPose1.m[1]";
connectAttr "hands:b_r_ring1.msg" "bindPose1.m[2]";
connectAttr "hands:b_r_ring2.msg" "bindPose1.m[3]";
connectAttr "hands:b_r_ring3.msg" "bindPose1.m[4]";
connectAttr "hands:b_r_ring_ignore.msg" "bindPose1.m[5]";
connectAttr "hands:b_r_middle1.msg" "bindPose1.m[6]";
connectAttr "hands:b_r_middle2.msg" "bindPose1.m[7]";
connectAttr "hands:b_r_middle3.msg" "bindPose1.m[8]";
connectAttr "hands:b_r_middle_ignore.msg" "bindPose1.m[9]";
connectAttr "hands:b_r_index1.msg" "bindPose1.m[10]";
connectAttr "hands:b_r_index2.msg" "bindPose1.m[11]";
connectAttr "hands:b_r_index3.msg" "bindPose1.m[12]";
connectAttr "hands:b_r_index_ignore.msg" "bindPose1.m[13]";
connectAttr "hands:b_r_pinky0.msg" "bindPose1.m[14]";
connectAttr "hands:b_r_pinky1.msg" "bindPose1.m[15]";
connectAttr "hands:b_r_pinky2.msg" "bindPose1.m[16]";
connectAttr "hands:b_r_pinky3.msg" "bindPose1.m[17]";
connectAttr "hands:b_r_pinky_ignore.msg" "bindPose1.m[18]";
connectAttr "hands:b_r_thumb1.msg" "bindPose1.m[19]";
connectAttr "hands:b_r_thumb2.msg" "bindPose1.m[20]";
connectAttr "hands:b_r_thumb3.msg" "bindPose1.m[21]";
connectAttr "hands:b_r_thumb_ignore.msg" "bindPose1.m[22]";
connectAttr "hands:b_r_hand_ignore.msg" "bindPose1.m[23]";
connectAttr "hands:b_r_grip.msg" "bindPose1.m[24]";
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
connectAttr "bindPose1.m[1]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[1]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[1]" "bindPose1.p[23]";
connectAttr "bindPose1.m[1]" "bindPose1.p[24]";
connectAttr "hands:r_hand_world.bps" "bindPose1.wm[0]";
connectAttr "hands:b_r_hand.bps" "bindPose1.wm[1]";
connectAttr "hands:b_r_ring1.bps" "bindPose1.wm[2]";
connectAttr "hands:b_r_ring2.bps" "bindPose1.wm[3]";
connectAttr "hands:b_r_ring3.bps" "bindPose1.wm[4]";
connectAttr "hands:b_r_ring_ignore.bps" "bindPose1.wm[5]";
connectAttr "hands:b_r_middle1.bps" "bindPose1.wm[6]";
connectAttr "hands:b_r_middle2.bps" "bindPose1.wm[7]";
connectAttr "hands:b_r_middle3.bps" "bindPose1.wm[8]";
connectAttr "hands:b_r_middle_ignore.bps" "bindPose1.wm[9]";
connectAttr "hands:b_r_index1.bps" "bindPose1.wm[10]";
connectAttr "hands:b_r_index2.bps" "bindPose1.wm[11]";
connectAttr "hands:b_r_index3.bps" "bindPose1.wm[12]";
connectAttr "hands:b_r_index_ignore.bps" "bindPose1.wm[13]";
connectAttr "hands:b_r_pinky0.bps" "bindPose1.wm[14]";
connectAttr "hands:b_r_pinky1.bps" "bindPose1.wm[15]";
connectAttr "hands:b_r_pinky2.bps" "bindPose1.wm[16]";
connectAttr "hands:b_r_pinky3.bps" "bindPose1.wm[17]";
connectAttr "hands:b_r_pinky_ignore.bps" "bindPose1.wm[18]";
connectAttr "hands:b_r_thumb1.bps" "bindPose1.wm[19]";
connectAttr "hands:b_r_thumb2.bps" "bindPose1.wm[20]";
connectAttr "hands:b_r_thumb3.bps" "bindPose1.wm[21]";
connectAttr "hands:b_r_thumb_ignore.bps" "bindPose1.wm[22]";
connectAttr "hands:b_r_hand_ignore.bps" "bindPose1.wm[23]";
connectAttr "hands:b_r_grip.bps" "bindPose1.wm[24]";
connectAttr "layerManager.dli[1]" "R_Geo_Layer.id";
connectAttr "layerManager.dli[2]" "R_Skeleton_Layer.id";
connectAttr "hands1:RhandSG.msg" "pasted__materialInfo1.sg";
connectAttr "hands2:RhandSG.msg" "pasted__materialInfo2.sg";
connectAttr "hands3:RhandSG.msg" "pasted__pasted__materialInfo1.sg";
connectAttr "hands4:RhandSG.msg" "pasted__materialInfo3.sg";
connectAttr "hands5:RhandSG.msg" "pasted__pasted__materialInfo2.sg";
connectAttr "unnamed1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "layerManager.dli[10]" "R_Control_Layer.id";
connectAttr "unnamed2.oc" "hands:LhandSG.ss";
connectAttr "l_HandShape.iog" "hands:LhandSG.dsm" -na;
connectAttr "hands:LhandSG.msg" "materialInfo2.sg";
connectAttr "unnamed2.msg" "materialInfo2.m";
connectAttr "LhandShapeOrig.w" "skinCluster2.ip[0].ig";
connectAttr "LhandShapeOrig.o" "skinCluster2.orggeom[0]";
connectAttr "bindPose2.msg" "skinCluster2.bp";
connectAttr "hands:l_hand_world.wm" "skinCluster2.ma[0]";
connectAttr "hands:b_l_hand.wm" "skinCluster2.ma[1]";
connectAttr "hands:b_l_hand_ignore.wm" "skinCluster2.ma[2]";
connectAttr "hands:b_l_thumb1.wm" "skinCluster2.ma[3]";
connectAttr "hands:b_l_thumb2.wm" "skinCluster2.ma[4]";
connectAttr "hands:b_l_thumb3.wm" "skinCluster2.ma[5]";
connectAttr "hands:b_l_thumb_ignore.wm" "skinCluster2.ma[6]";
connectAttr "hands:b_l_index1.wm" "skinCluster2.ma[7]";
connectAttr "hands:b_l_index2.wm" "skinCluster2.ma[8]";
connectAttr "hands:b_l_index3.wm" "skinCluster2.ma[9]";
connectAttr "hands:b_l_index_ignore.wm" "skinCluster2.ma[10]";
connectAttr "hands:b_l_middle1.wm" "skinCluster2.ma[11]";
connectAttr "hands:b_l_middle2.wm" "skinCluster2.ma[12]";
connectAttr "hands:b_l_middle3.wm" "skinCluster2.ma[13]";
connectAttr "hands:b_l_middle_ignore.wm" "skinCluster2.ma[14]";
connectAttr "hands:b_l_ring1.wm" "skinCluster2.ma[15]";
connectAttr "hands:b_l_ring2.wm" "skinCluster2.ma[16]";
connectAttr "hands:b_l_ring3.wm" "skinCluster2.ma[17]";
connectAttr "hands:b_l_ring_ignore.wm" "skinCluster2.ma[18]";
connectAttr "hands:b_l_pinky0.wm" "skinCluster2.ma[19]";
connectAttr "hands:b_l_pinky1.wm" "skinCluster2.ma[20]";
connectAttr "hands:b_l_pinky2.wm" "skinCluster2.ma[21]";
connectAttr "hands:b_l_pinky3.wm" "skinCluster2.ma[22]";
connectAttr "hands:b_l_pinky_ignore.wm" "skinCluster2.ma[23]";
connectAttr "hands:b_l_grip.wm" "skinCluster2.ma[24]";
connectAttr "hands:l_hand_world.liw" "skinCluster2.lw[0]";
connectAttr "hands:b_l_hand.liw" "skinCluster2.lw[1]";
connectAttr "hands:b_l_hand_ignore.liw" "skinCluster2.lw[2]";
connectAttr "hands:b_l_thumb1.liw" "skinCluster2.lw[3]";
connectAttr "hands:b_l_thumb2.liw" "skinCluster2.lw[4]";
connectAttr "hands:b_l_thumb3.liw" "skinCluster2.lw[5]";
connectAttr "hands:b_l_thumb_ignore.liw" "skinCluster2.lw[6]";
connectAttr "hands:b_l_index1.liw" "skinCluster2.lw[7]";
connectAttr "hands:b_l_index2.liw" "skinCluster2.lw[8]";
connectAttr "hands:b_l_index3.liw" "skinCluster2.lw[9]";
connectAttr "hands:b_l_index_ignore.liw" "skinCluster2.lw[10]";
connectAttr "hands:b_l_middle1.liw" "skinCluster2.lw[11]";
connectAttr "hands:b_l_middle2.liw" "skinCluster2.lw[12]";
connectAttr "hands:b_l_middle3.liw" "skinCluster2.lw[13]";
connectAttr "hands:b_l_middle_ignore.liw" "skinCluster2.lw[14]";
connectAttr "hands:b_l_ring1.liw" "skinCluster2.lw[15]";
connectAttr "hands:b_l_ring2.liw" "skinCluster2.lw[16]";
connectAttr "hands:b_l_ring3.liw" "skinCluster2.lw[17]";
connectAttr "hands:b_l_ring_ignore.liw" "skinCluster2.lw[18]";
connectAttr "hands:b_l_pinky0.liw" "skinCluster2.lw[19]";
connectAttr "hands:b_l_pinky1.liw" "skinCluster2.lw[20]";
connectAttr "hands:b_l_pinky2.liw" "skinCluster2.lw[21]";
connectAttr "hands:b_l_pinky3.liw" "skinCluster2.lw[22]";
connectAttr "hands:b_l_pinky_ignore.liw" "skinCluster2.lw[23]";
connectAttr "hands:b_l_grip.liw" "skinCluster2.lw[24]";
connectAttr "hands:l_hand_world.obcc" "skinCluster2.ifcl[0]";
connectAttr "hands:b_l_hand.obcc" "skinCluster2.ifcl[1]";
connectAttr "hands:b_l_hand_ignore.obcc" "skinCluster2.ifcl[2]";
connectAttr "hands:b_l_thumb1.obcc" "skinCluster2.ifcl[3]";
connectAttr "hands:b_l_thumb2.obcc" "skinCluster2.ifcl[4]";
connectAttr "hands:b_l_thumb3.obcc" "skinCluster2.ifcl[5]";
connectAttr "hands:b_l_thumb_ignore.obcc" "skinCluster2.ifcl[6]";
connectAttr "hands:b_l_index1.obcc" "skinCluster2.ifcl[7]";
connectAttr "hands:b_l_index2.obcc" "skinCluster2.ifcl[8]";
connectAttr "hands:b_l_index3.obcc" "skinCluster2.ifcl[9]";
connectAttr "hands:b_l_index_ignore.obcc" "skinCluster2.ifcl[10]";
connectAttr "hands:b_l_middle1.obcc" "skinCluster2.ifcl[11]";
connectAttr "hands:b_l_middle2.obcc" "skinCluster2.ifcl[12]";
connectAttr "hands:b_l_middle3.obcc" "skinCluster2.ifcl[13]";
connectAttr "hands:b_l_middle_ignore.obcc" "skinCluster2.ifcl[14]";
connectAttr "hands:b_l_ring1.obcc" "skinCluster2.ifcl[15]";
connectAttr "hands:b_l_ring2.obcc" "skinCluster2.ifcl[16]";
connectAttr "hands:b_l_ring3.obcc" "skinCluster2.ifcl[17]";
connectAttr "hands:b_l_ring_ignore.obcc" "skinCluster2.ifcl[18]";
connectAttr "hands:b_l_pinky0.obcc" "skinCluster2.ifcl[19]";
connectAttr "hands:b_l_pinky1.obcc" "skinCluster2.ifcl[20]";
connectAttr "hands:b_l_pinky2.obcc" "skinCluster2.ifcl[21]";
connectAttr "hands:b_l_pinky3.obcc" "skinCluster2.ifcl[22]";
connectAttr "hands:b_l_pinky_ignore.obcc" "skinCluster2.ifcl[23]";
connectAttr "hands:b_l_grip.obcc" "skinCluster2.ifcl[24]";
connectAttr "hands:l_hand_world.msg" "bindPose2.m[0]";
connectAttr "hands:b_l_hand.msg" "bindPose2.m[1]";
connectAttr "hands:b_l_hand_ignore.msg" "bindPose2.m[2]";
connectAttr "hands:b_l_thumb1.msg" "bindPose2.m[3]";
connectAttr "hands:b_l_thumb2.msg" "bindPose2.m[4]";
connectAttr "hands:b_l_thumb3.msg" "bindPose2.m[5]";
connectAttr "hands:b_l_thumb_ignore.msg" "bindPose2.m[6]";
connectAttr "hands:b_l_index1.msg" "bindPose2.m[7]";
connectAttr "hands:b_l_index2.msg" "bindPose2.m[8]";
connectAttr "hands:b_l_index3.msg" "bindPose2.m[9]";
connectAttr "hands:b_l_index_ignore.msg" "bindPose2.m[10]";
connectAttr "hands:b_l_middle1.msg" "bindPose2.m[11]";
connectAttr "hands:b_l_middle2.msg" "bindPose2.m[12]";
connectAttr "hands:b_l_middle3.msg" "bindPose2.m[13]";
connectAttr "hands:b_l_middle_ignore.msg" "bindPose2.m[14]";
connectAttr "hands:b_l_ring1.msg" "bindPose2.m[15]";
connectAttr "hands:b_l_ring2.msg" "bindPose2.m[16]";
connectAttr "hands:b_l_ring3.msg" "bindPose2.m[17]";
connectAttr "hands:b_l_ring_ignore.msg" "bindPose2.m[18]";
connectAttr "hands:b_l_pinky0.msg" "bindPose2.m[19]";
connectAttr "hands:b_l_pinky1.msg" "bindPose2.m[20]";
connectAttr "hands:b_l_pinky2.msg" "bindPose2.m[21]";
connectAttr "hands:b_l_pinky3.msg" "bindPose2.m[22]";
connectAttr "hands:b_l_pinky_ignore.msg" "bindPose2.m[23]";
connectAttr "hands:b_l_grip.msg" "bindPose2.m[24]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[1]" "bindPose2.p[2]";
connectAttr "bindPose2.m[1]" "bindPose2.p[3]";
connectAttr "bindPose2.m[3]" "bindPose2.p[4]";
connectAttr "bindPose2.m[4]" "bindPose2.p[5]";
connectAttr "bindPose2.m[5]" "bindPose2.p[6]";
connectAttr "bindPose2.m[1]" "bindPose2.p[7]";
connectAttr "bindPose2.m[7]" "bindPose2.p[8]";
connectAttr "bindPose2.m[8]" "bindPose2.p[9]";
connectAttr "bindPose2.m[9]" "bindPose2.p[10]";
connectAttr "bindPose2.m[1]" "bindPose2.p[11]";
connectAttr "bindPose2.m[11]" "bindPose2.p[12]";
connectAttr "bindPose2.m[12]" "bindPose2.p[13]";
connectAttr "bindPose2.m[13]" "bindPose2.p[14]";
connectAttr "bindPose2.m[1]" "bindPose2.p[15]";
connectAttr "bindPose2.m[15]" "bindPose2.p[16]";
connectAttr "bindPose2.m[16]" "bindPose2.p[17]";
connectAttr "bindPose2.m[17]" "bindPose2.p[18]";
connectAttr "bindPose2.m[1]" "bindPose2.p[19]";
connectAttr "bindPose2.m[19]" "bindPose2.p[20]";
connectAttr "bindPose2.m[20]" "bindPose2.p[21]";
connectAttr "bindPose2.m[21]" "bindPose2.p[22]";
connectAttr "bindPose2.m[22]" "bindPose2.p[23]";
connectAttr "bindPose2.m[1]" "bindPose2.p[24]";
connectAttr "hands:l_hand_world.bps" "bindPose2.wm[0]";
connectAttr "hands:b_l_hand.bps" "bindPose2.wm[1]";
connectAttr "hands:b_l_hand_ignore.bps" "bindPose2.wm[2]";
connectAttr "hands:b_l_thumb1.bps" "bindPose2.wm[3]";
connectAttr "hands:b_l_thumb2.bps" "bindPose2.wm[4]";
connectAttr "hands:b_l_thumb3.bps" "bindPose2.wm[5]";
connectAttr "hands:b_l_thumb_ignore.bps" "bindPose2.wm[6]";
connectAttr "hands:b_l_index1.bps" "bindPose2.wm[7]";
connectAttr "hands:b_l_index2.bps" "bindPose2.wm[8]";
connectAttr "hands:b_l_index3.bps" "bindPose2.wm[9]";
connectAttr "hands:b_l_index_ignore.bps" "bindPose2.wm[10]";
connectAttr "hands:b_l_middle1.bps" "bindPose2.wm[11]";
connectAttr "hands:b_l_middle2.bps" "bindPose2.wm[12]";
connectAttr "hands:b_l_middle3.bps" "bindPose2.wm[13]";
connectAttr "hands:b_l_middle_ignore.bps" "bindPose2.wm[14]";
connectAttr "hands:b_l_ring1.bps" "bindPose2.wm[15]";
connectAttr "hands:b_l_ring2.bps" "bindPose2.wm[16]";
connectAttr "hands:b_l_ring3.bps" "bindPose2.wm[17]";
connectAttr "hands:b_l_ring_ignore.bps" "bindPose2.wm[18]";
connectAttr "hands:b_l_pinky0.bps" "bindPose2.wm[19]";
connectAttr "hands:b_l_pinky1.bps" "bindPose2.wm[20]";
connectAttr "hands:b_l_pinky2.bps" "bindPose2.wm[21]";
connectAttr "hands:b_l_pinky3.bps" "bindPose2.wm[22]";
connectAttr "hands:b_l_pinky_ignore.bps" "bindPose2.wm[23]";
connectAttr "hands:b_l_grip.bps" "bindPose2.wm[24]";
connectAttr "layerManager.dli[11]" "L_Geo_Layer.id";
connectAttr "layerManager.dli[12]" "L_Skeleton_Layer.id";
connectAttr "layerManager.dli[13]" "L_Control_Layer.id";
connectAttr ":timeEditor.cmp[0]" "Composition1.cmp";
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|COG_ctrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl|index_03_ctrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_02_ctrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_02_ctrl_grp|index_02_ctrl|index_03_ctrl_grp|index_03_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl|index_01_ctrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "|Right_Hand|Controls|COG_ctrl_grp|COG_ctrl|index_01_ctrl_grp|index_01_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "hands:RhandSG.pa" ":renderPartition.st" -na;
connectAttr "hands1:RhandSG.pa" ":renderPartition.st" -na;
connectAttr "hands2:RhandSG.pa" ":renderPartition.st" -na;
connectAttr "hands3:RhandSG.pa" ":renderPartition.st" -na;
connectAttr "hands4:RhandSG.pa" ":renderPartition.st" -na;
connectAttr "hands5:RhandSG.pa" ":renderPartition.st" -na;
connectAttr "hands:LhandSG.pa" ":renderPartition.st" -na;
connectAttr "unnamed1.msg" ":defaultShaderList1.s" -na;
connectAttr "unnamed2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of TutorialHands.ma
