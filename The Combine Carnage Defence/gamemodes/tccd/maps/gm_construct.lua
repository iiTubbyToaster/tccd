combineAssasin = 0
combineCremator = 0
squadTimer = 30
paydayMusic = 0
if SERVER then

game.CleanUpMap()
-- To get the position/angle of a entity use this command in console "lua_run print("Position:") print( Entity( 1 ):GetEyeTrace().Entity:GetPos() ) print("Angle:") print( Entity( 1 ):GetEyeTrace().Entity:GetAngles() ) print(Entity(1):GetEyeTrace().Entity)"
FENCE_SPAWNS = {
Vector(1024.561279, 812.471741, -95.458389),
Vector(770.438049, 812.471741, -95.458389),
Vector(516.314758, 812.471741, -95.458389),
Vector(262.191467, 812.471741, -95.458389),
Vector(8.068176, 812.471741, -95.458389),
Vector(-246.055115, 812.471741, -95.458389),
Vector(-500.178406, 812.471741, -95.458389),
Vector(-754.301636, 812.471741, -95.458389),
Vector(-1008.424927, 812.471741, -95.458389),
Vector(-1135.360840, 685.593506, -93.496498),
Vector(-1135.360840, 431.649414, -93.496498),
Vector(-1135.360840, 177.705383, -93.496498),
Vector(-1135.360840, -76.238647, -93.496498),
Vector(-1135.360840, -330.182709, -93.496498),
Vector(-1135.360840, -584.126709, -93.496498),
Vector(-1135.360840, -838.070801, -93.496498),
Vector(-1135.360840, -1092.014893, -93.496498),
Vector(-894.655090, -1024.776489, -89.695930),
Vector(-640.792786, -1024.776489, -89.695930),
Vector(-386.930481, -1024.776489, -89.695930),
Vector(-133.068176, -1024.776489, -89.695930),
Vector(120.794189, -1024.776489, -89.695930),
Vector(374.656525, -1024.776489, -89.695930),
Vector(628.518921, -1024.776489, -89.695930),
Vector(882.381226, -1024.776489, -89.695930),
Vector(701.378662, -1480.169189, -89.677803),
Vector(701.378662, -1734.031738, -89.677803)
}
FENCE_SPAWNS_ANG = {
Angle(0.021, -89.794, -0.131),
Angle(0.021, -89.794, -0.131),
Angle(0.021, -89.794, -0.131),
Angle(0.021, -89.794, -0.131),
Angle(0.021, -89.794, -0.131),
Angle(0.021, -89.794, -0.131),
Angle(0.021, -89.794, -0.131),
Angle(0.021, -89.794, -0.131),
Angle(0.021, -89.794, -0.131),
Angle(1.112, 179.984, -0.045),
Angle(1.112, 179.984, -0.045),
Angle(1.112, 179.984, -0.045),
Angle(1.112, 179.984, -0.045),
Angle(1.112, 179.984, -0.045),
Angle(1.112, 179.984, -0.045),
Angle(1.112, 179.984, -0.045),
Angle(1.112, 179.984, -0.045),	
Angle(0.021, -89.794, -0.131),
Angle(0.021, -89.794, -0.131),
Angle(0.021, -89.794, -0.131),
Angle(0.021, -89.794, -0.131),
Angle(0.021, -89.794, -0.131),
Angle(0.021, -89.794, -0.131),
Angle(0.021, -89.794, -0.131),
Angle(0.021, -89.794, -0.131),
Angle(-0.005, -179.959, -0.000),
Angle(-0.005, -179.959, -0.000)
}

BLAST_DOOR_SPAWNS = {
Vector(154.215698, -661.161377, -147.599792),
Vector(248.336395, 188.552002, -147.757996),
Vector(384.049500, 418.209686, -147.757996)
}
BLAST_DOOR_SPAWNS_ANG = {
Angle(0.036, 44.996, -0.025),
Angle(0.036, 70.098, -0.025),
Angle(0.036, -35.700, -0.025)
}

BLAST_DOOR_SMALL_SPAWNS = {
Vector(-1036.771729, -981.655518, -148.184464),
Vector(-1036.771729, -827.092773, -148.184464),
Vector(-1036.771729, -672.530029, -148.184464),
Vector(-1036.771729, -517.967285, -148.184464),
Vector(-1036.771729, -363.404541, -148.184464),
Vector(-1036.771729, -208.841797, -148.184464),
Vector(-1036.771729, -54.279083, -148.184464),
Vector(-1036.771729, 100.283638, -148.184464),
Vector(-1036.771729, 254.846359, -148.184464),
Vector(-1036.771729, 409.409058, -148.184464),
Vector(-1036.771729, 563.971741, -148.184464),
Vector(-1036.771729, 718.534485, -148.184464)
}
BLAST_DOOR_SMALL_ANG = {
Angle(-0.000, 180.000, 0.000),
Angle(-0.000, 180.000, 0.000),
Angle(-0.000, 180.000, 0.000),
Angle(-0.000, 180.000, 0.000),
Angle(-0.000, 180.000, 0.000),
Angle(-0.000, 180.000, 0.000),
Angle(-0.000, 180.000, 0.000),
Angle(-0.000, 180.000, 0.000),
Angle(-0.000, 180.000, 0.000),
Angle(-0.000, 180.000, 0.000),
Angle(-0.000, 180.000, 0.000),
Angle(-0.000, 180.000, 0.000),
Angle(0.036, 44.996, -0.025),
Angle(0.036, 70.098, -0.025),
Angle(0.036, -35.700, -0.025)
}

BLAST_DOOR_BLOCK_POS = {
Vector(1127.519043, 619.711792, -143.688873),
Vector(1127.519043, 619.711792, -44.111588),
Vector(1127.519043, 458.129028, -143.688873),
Vector(1127.519043, 458.129028, -44.111588),
Vector(1031.864502, 84.383835, -143.643982),
Vector(1031.864502, 84.383835, -44.003876),
Vector(1029.622559, -344.521088, -143.574692),
Vector(1031.434326, -591.237366, -146.116806),
Vector(1028.451172, -959.019043, -143.746063),
Vector(1028.451172, -959.019043, -44.183121)
}
BLAST_DOOR_BLOCK_ANG = {
Angle(-0.080, 0.117, -0.001),
Angle(-0.080, 0.117, -0.001),
Angle(-0.080, 0.117, -0.001),
Angle(-0.080, 0.117, -0.001),
Angle(-0.305, -179.801, 0.010),
Angle(-0.305, -179.801, 0.010),
Angle(-0.084, 179.991, 0.043),
Angle(0.000, -180.000, 0.000),
Angle(0.000, 180.000, 0.000),
Angle(0.000, -180.000, 0.000)
}

BLAST_DOOR_SMALL = "models/props_lab/blastdoor001b.mdl"
BLAST_DOOR = "models/props_lab/blastdoor001c.mdl"
RED_CONTAINER = "models/props_wasteland/cargo_container01.mdl"
FENCE_LONG = "models/props_c17/fence03a.mdl"

TRASHED_CONTAINER_POS = {
Vector(-14.121193, 616.849182, -87.203331),
Vector(-275.458588, 164.623489, -87.224930),
Vector(-201.773727, -584.280212, -87.245537)
}
TRASHED_CONTAINER_ANG = {
Angle(-0.060, 38.096, 0.008),
Angle(-0.059, -18.275, 0.001),
Angle(0.076, 146.817, 0.001)
}

RED_OPEN_CONTAINER_POS = {
Vector(20.538132, -956.862305, -82.882339),
Vector(-494.880493, 614.744995, -87.101028),
Vector(404.837646, 638.675354, -87.750412)
}
RED_OPEN_CONTAINER_ANG = {
Angle(0.000, 89.972, 0.000),
Angle(0.000, 120.464, 0.000),
Angle(0.000, 66.564, 0.000)
}

DUMPSTER_POS = {
Vector(-323.747986, -214.158096, -84.274498),
Vector(-497.594788, -700.488770, -84.392303),
Vector(-279.583313, 519.352417, -84.276001)
}
DUMPSTER_ANG = {
Angle(-0.027, -167.421, -0.005),
Angle(0.006, 109.427, -0.003),
Angle(0.077, -125.771, 0.047)
}

FENCE_PPOS = {
Vector(32.664398, -200.505905, -93.744400),
Vector(-527.377075, 22.711300, -93.872704),
Vector(53.907398, 207.696701, -93.699501)
}
FENCE_AANG = {
Angle(-0.000, 45.000, 0.000),
Angle(-0.000, -0.738, 0.000),
Angle(-0.136, 134.998, -0.000)
}

KITCHEN_TABLE_POS = {
Vector(251.172501, -450.084595, -127.620102),
Vector(218.752808, -192.428406, -127.726196),
Vector(40.370800, -61.690800, -127.725998)
}
KITCHEN_TABLE_ANG = {
Angle(-0.000, 8.751, -0.013),
Angle(-0.000, -0.738, 0.000),
Angle(-0.013, -38.226, 0.018)
}

LONG_BOX_POS = {
Vector(298.805511, -160.853302, -127.603302),
Vector(175.714493, -76.397598, -127.618797),
Vector(135.393402, 74.024696, -127.573502),
Vector(-127.305199, -244.066803, -113.313599)
}
LONG_BOX_ANG = {
Angle(-0.016, -28.369, -0.098),
Angle(-0.034, 58.568, -0.041),
Angle(0.228, -12.552, -0.120),
Angle(-0.087, 29.993, 90.004)
}

GREEN_DUMPSTER_POS = {
Vector(79.478699, -149.131302, -122.432297),
Vector(-8.725900, -403.304901, -122.341904),
Vector(-311.117401, -390.317200, -122.407097)
}
GREEN_DUMPSTER_ANG = {
Angle(0.012, 65.725, -0.009),
Angle(-0.153, 104.726, 0.025),
Angle(-0.019, 59.721, -0.006)
}

TABLE_POS = {
Vector(-409.770508, 217.273499, -131.512878),
Vector(-337.481140, 331.171417, -131.418915),
Vector(-461.688965, 444.455383, -132.400360),
Vector(-141.399307, 106.378700, -131.105103)
}
TABLE_ANG = {
Angle(0.267, -174.296, 0.155),
Angle(-0.156, 175.323, 0.031),
Angle(0.333, -138.875, 0.437),
Angle(-0.378, 176.027, -0.009)
}

FRIDGE_KITCHEN_POS = {
Vector(-399.506897, -521.349121, -147.632599),
Vector(-195.126801, -330.542206, -147.648193),
Vector(-122.945503, -103.789101, -147.623093)
}
FRIDGE_KITCHEN_ANG = {
Angle(-0.011, 98.710, -0.098),
Angle(-0.004, -163.272, -0.129),
Angle(-0.006, -99.312, -0.084)
}

TABLE_LONG_POS = {
Vector(526.943298, -642.992004, -127.498116),
Vector(526.729309, -806.704285, -127.534500),
Vector(346.000153, -796.846252, -127.682327)
}
TABLE_LONG_ANG = {
Angle(-0.208, 112.039, 0.103),
Angle(-0.069, 11.375, -0.000),
Angle(-0.067, 68.206, -0.075)
}

BROKEN_STATUE_POS = {
Vector(-614.067078, -339.407410, -89.731400),
Vector(-552.869324, -444.268799, -89.653999),
Vector(-492.893585, -207.530701, -89.655296)
}
BROKEN_STATUE_ANG = {
Angle(-0.082, -33.725, 0.083),
Angle(-0.082, -33.879, 0.083),
Angle(-0.082, -71.455, 0.083)
}

VENDING_MACHINE_POS = {
Vector(-457.857605, 104.303902, -99.953201),
Vector(-203.219604, -69.819298, -99.590302),
Vector(-66.350601, -7.194700, -99.611298)
}
VENDING_MACHINE_ANG = {
Angle(-0.534, -32.688, 0.035),
Angle(-0.029, -116.455, -0.026),
Angle(0.022, -56.246, -0.030)
}

METAL_RACK_POS = {
Vector(-498.234009, 322.118591, -149.117996),
Vector(-426.520111, -72.456100, -147.564896),
Vector(-51.620399, 296.410187, -147.563202)
}
METAL_RACK_ANG = {
Angle(-0.538, -31.008, 0.343),
Angle(-0.111, 112.291, -0.206),
Angle(-0.144, -133.745, -0.059)
}

WOODEN_RACK_POS = {
Vector(337.899597, -602.884827, -148.016205),
Vector(435.167877, -490.512421, -148.842468),
Vector(362.562103, -355.095001, -148.016205)
}
WOODEN_RACK_ANG = {
Angle(0.058, 38.564, 0.129),
Angle(-0.004, 71.320, 0.297),
Angle(0.058, 73.060, 0.129)
}

COOKER_POS = {
Vector(-100.435997, 427.651703, -127.566704),
Vector(190.165070, 420.345612, -127.600586),
Vector(293.897614, 300.804413, -127.521500)
}
COOKER_ANG = {
Angle(0.043, 78.657, -0.023),
Angle(0.057, -159.797, -0.004),
Angle(0.029, 140.182, -0.015)
}

BLUE_BARREL_POS = {
Vector(289.282288, 18.794001, -121.978699),
Vector(443.977112, -123.961098, -122.040001),
Vector(390.639099, -212.975693, -121.985703)
}
BLUE_BARREL_ANG = {
Angle(0.016, -59.631, -0.076),
Angle(0.108, -4.210, -0.413),
Angle(-0.043, 11.771, -0.098)
}

GREEN_CABNET_POS = {
Vector(531.491882, -85.722000, -104.543297),
Vector(647.155823, 15.193900, -99.977303),
Vector(472.823914, 161.024002, -104.355400)
}
GREEN_CABNET_ANG = {
Angle(1.107, 29.716, -0.551),
Angle(-0.019, -2.192, 0.022),
Angle(0.354, -18.339, 0.283)
}

GREEN_CABNET2_POS = {
Vector(384.511292, -688.763489, -103.992599),
Vector(615.150513, -744.529480, -103.998901),
Vector(598.538208, -830.915710, -103.982399)
}
GREEN_CABNET2_ANG = {
Angle(-0.101, 30.267, 0.041),
Angle(0.038, 16.108, 0.004),
Angle(-0.105, 0.754, -0.008)
}

COMBINE_DEFENCE_POS = {
Vector(708.353699, -515.594910, -113.397598),
Vector(569.154175, -261.161285, -117.513199),
Vector(405.586792, 161.083893, -117.938599)
}
COMBINE_DEFENCE_ANG = {
Angle(-0.486, 135.204, 0.039),
Angle(-0.486, 145.368, 0.039),
Angle(-0.486, -179.828, 0.039)
}


DUMPSTER = "models/props_junk/TrashDumpster02.mdl"
RED_OPEN_CONTAINER = "models/props_wasteland/cargo_container01b.mdl"
TRASHED_CONTAINER = "models/props_wasteland/cargo_container01c.mdl"
FFENCE_LONG = "models/props_c17/fence03a.mdl"
KITCHEN_TABLE = "models/props_wasteland/kitchen_counter001a.mdl"
LONG_BOX = "models/props_junk/wood_crate002a.mdl"
GREEN_DUMPSTER = "models/props_junk/TrashDumpster01a.mdl"
TABLE = "models/props_wasteland/controlroom_desk001b.mdl"
FRIDGE_KITCHEN = "models/props_wasteland/kitchen_fridge001a.mdl"
TABLE_LONG = "models/props_wasteland/kitchen_counter001d.mdl"
BROKEN_STATUE = "models/props_c17/gravestone_cross001b.mdl"
VENDING_MACHINE = "models/props_interiors/VendingMachineSoda01a.mdl"
METAL_RACK = "models/props_wasteland/kitchen_shelf001a.mdl"
WOODEN_RACK = "models/props_c17/shelfunit01a.mdl"
COOKER = "models/props_c17/furnitureStove001a.mdl"
BLUE_BARREL = "models/props_borealis/bluebarrel001.mdl"
GREEN_CABNET = "models/props_wasteland/controlroom_storagecloset001a.mdl"
GREEN_CABNET2 = "models/props_wasteland/controlroom_storagecloset001a.mdl"
COMBINE_DEFENCE = "models/props_combine/combine_barricade_short02a.mdl"

a = math.random(1,3)
a1 = math.random(1,3)
a2 = math.random(1,3)
a3 = math.random(1,3)
a4 = math.random(1,3)
a5 = math.random(1,3)
a6 = math.random(1,3)
a7 = math.random(1,3)
a8 = math.random(1,3)
a9 = math.random(1,3)
a10 = math.random(1,3)
a11 = math.random(1,3)
a12 = math.random(1,3)
a13 = math.random(1,3)
a14 = math.random(1,3)
a15 = math.random(1,3)
a16 = math.random(1,3)
a17 = math.random(1,3)
a18 = math.random(1,3)
b = math.random(1,4)
b1 = math.random(1,4)
b2 = math.random(1,4)
b3 = math.random(1,4)
b4 = math.random(1,4)

function spawnCombine( pos )
	local spawn_combine = ents.Create( "npc_combine_s" )
	spawn_combine:SetPos(pos)
	spawn_combine:SetModel( "models/Combine_Soldier.mdl" )
	spawn_combine:SetCollisionGroup(  COLLISION_GROUP_NONE  )
	spawn_combine:Give("ai_weapon_smg1")
	spawn_combine:SetMoveType(MOVETYPE_STEP)
	spawn_combine:Activate()
	spawn_combine:Spawn()
end

policeGun1 = "ai_weapon_pistol"
policeGun2 = "ai_weapon_smg1"
policeGun3 = "ai_weapon_ar2"

function rebelSpawn()
	local spawn_rebel = ents.Create( "npc_citizen" )
	spawn_rebel:SetPos(Vector(1069.451294, 285.158997, -143.968750))
	spawn_rebel:SetModel( "models/Humans/Group03/male_0" .. math.random(1,9) .. ".mdl" )
	spawn_rebel:SetCollisionGroup(  COLLISION_GROUP_NONE  )
	spawn_rebel:Give(policeGun2)
	spawn_rebel:SetMoveType(MOVETYPE_STEP)
	spawn_rebel:Activate()
	spawn_rebel:Spawn()
end

function spawnCombine2Metro1( pos )
	local spawn_combine = ents.Create( "npc_metropolice" )
	spawn_combine:SetPos(pos)
	spawn_combine:SetModel( "models/Police.mdl" )
	spawn_combine:SetCollisionGroup(  COLLISION_GROUP_NONE  )
	spawn_combine:Give(policeGun1)
	spawn_combine:SetMoveType(MOVETYPE_STEP)
	spawn_combine:Activate()
	spawn_combine:Spawn()
end

function spawnCombine2Metro2( pos )
	local spawn_combine2 = ents.Create( "npc_metropolice" )
	spawn_combine2:SetPos(pos)
	spawn_combine2:SetModel( "models/Police.mdl" )
	spawn_combine2:SetCollisionGroup(  COLLISION_GROUP_NONE  )
	spawn_combine2:Give(policeGun2)
	spawn_combine2:SetMoveType(MOVETYPE_STEP)
	spawn_combine2:Activate()
	spawn_combine2:Spawn()
end

function spawnCombine3( pos )
	local spawn_combine3 = ents.Create( "npc_combine_s" )
	spawn_combine3:SetPos(pos)
	spawn_combine3:SetModel( "models/Combine_Super_Soldier.mdl" )
	spawn_combine3:SetCollisionGroup(  COLLISION_GROUP_NONE  )
	spawn_combine3:Give("ai_weapon_ar2")
	spawn_combine3:SetMoveType(MOVETYPE_STEP)
	spawn_combine3:Activate()
	spawn_combine3:Spawn()
end

function spawnCombineAssasin( pos )
	local spawnCombineAssasin = ents.Create( "npc_fassassin" )
	spawnCombineAssasin:SetPos(pos)
	spawnCombineAssasin:SetModel( "models/fassassin.mdl" )
	spawnCombineAssasin:SetCollisionGroup(  COLLISION_GROUP_NONE  )
	spawnCombineAssasin:SetMoveType(MOVETYPE_STEP)
	spawnCombineAssasin:Activate()
	spawnCombineAssasin:Spawn()
end

function spawnCombineCremator( pos )
	local spawnCombineCremator = ents.Create( "npc_cremator" )
	spawnCombineCremator:SetPos(pos)
	spawnCombineCremator:SetModel( "models/cremator.mdl" )
	spawnCombineCremator:SetCollisionGroup(  COLLISION_GROUP_NONE  )
	spawnCombineCremator:SetMoveType(MOVETYPE_STEP)
	spawnCombineCremator:Activate()
	spawnCombineCremator:Spawn()
end

combineSquad = 0
function startRound()
	timer.Simple( squadTimer, function() infiniteRound() end )
end

randomVoice = math.random(1,8)
randomHlMusic = math.random(1,3)

voiceSelection = {
"vo/npc/male01/takecover02.wav",
"vo/npc/male01/incoming02.wav",
"vo/npc/male01/civilprotection01.wav",
"vo/npc/male01/civilprotection02.wav",
"vo/npc/male01/combine02.wav",
"vo/npc/male01/combine02.wav",
"vo/npc/male01/heretheycome01.wav",
"vo/canals/male01/stn6_incoming.wav"
}
hlMusicSelection = {
"music/HL2_song14.mp3",
"music/HL2_song16.mp3",
"music/HL2_song29.mp3"
}
paydayMusicSelection = {
"The_Combine_Carnage_Defence/tccd_music_1.wav",
"The_Combine_Carnage_Defence/tccd_music_2.wav",
"The_Combine_Carnage_Defence/tccd_music_3.wav"
}

function stopTheSound()
	RunConsoleCommand("stopsound")
end

function repeatMusic()
	if paydayMusic == 1 then
		RunConsoleCommand( "play", paydayMusicSelection[randomHlMusic] )
	else
		RunConsoleCommand( "play", hlMusicSelection[randomHlMusic] )
	end
timer.Simple( 100, function() repeatMusic() end )
stopTheSound()
end

function startRound2()
	timer.Simple( 1, function() RunConsoleCommand( "play", "The_Combine_Carnage_Defence/start_siren.wav" ) end )
	infiniteRound()
	if paydayMusic == 1 then
		timer.Simple( 13, function() RunConsoleCommand( "play", paydayMusicSelection[randomHlMusic] ) end )
	else
		timer.Simple( 13, function() RunConsoleCommand( "play", hlMusicSelection[randomHlMusic] ) end )
	end
	timer.Simple( 11, function() PrintMessage(HUD_PRINTTALK, "[TCCD]: We must fight back!") end )
	sound.Play( voiceSelection[randomVoice], Vector(711.649414, -136.013214, -117.950577), 160, 100, 1)
	repeatMusic()
end

function infiniteRound()
	combineSquad = combineSquad + 1
			PrintMessage(HUD_PRINTTALK, "[TCCD]: Squad #" .. combineSquad .. " Inbound!")
		if combineSquad == 4 then
			PrintMessage(HUD_PRINTTALK, "[TCCD]: They are advancing!")
		end
		if combineSquad == 8 then
			PrintMessage(HUD_PRINTTALK, "[TCCD]: They are advancing even more!")
		end
		
	if combineSquad == 15 && combineAssasin >= 1 then
		spawnCombineAssasin(Vector( -1079.902344, 101.383179, 461.890060 ))
		PrintMessage(HUD_PRINTTALK, "[TCCD]: What the fuck is that?!") 
	else
		if combineSquad >= 15 && combineAssasin <= 0 then
			spawnCombine3(Vector( -1079.902344, -360.867004, 461.890060 ))
		end
	end
		
	if combineSquad == 9 && combineCremator >= 1 then
		spawnCombineCremator(Vector( -1079.902344, 101.383179, 461.890060 ))
		PrintMessage(HUD_PRINTTALK, "[TCCD]: What the fuck is that?!") 
	else
		if combineSquad >= 9 && combineCremator <= 0 then
			spawnCombine3(Vector( -1079.902344, 101.383179, 461.890060 ))
		end
	end
	
	if combineSquad >= 8 then
		spawnCombine3(Vector( -1079.902344, -828.632568, 461.890060 ))
		spawnCombine3(Vector( -1079.902344, -675.632568, 461.890060 ))
		spawnCombine3(Vector( -1079.902344, -515.632568, 461.890060 ))
		spawnCombine3(Vector( -1079.902344, -360.867004, 461.890060 ))
		spawnCombine3(Vector( -1079.902344, -210.867004, 461.890060 ))
		spawnCombine3(Vector( -1079.902344, -57.738678, 461.890060 ))
		spawnCombine3(Vector( -1079.902344, 261.894592, 461.890060 ))
		spawnCombine3(Vector( -1079.902344, 409.170746, 461.890060 ))
		spawnCombine3(Vector( -1079.902344, 564.687012, 461.890060 ))
		spawnCombine3(Vector( -1079.902344, 723.638672, 461.890060 ))
	elseif combineSquad >= 4 then
		spawnCombine(Vector( -1079.902344, -828.632568, 461.890060 ))
		spawnCombine(Vector( -1079.902344, -675.632568, 461.890060 ))
		spawnCombine(Vector( -1079.902344, -515.632568, 461.890060 ))
		spawnCombine(Vector( -1079.902344, -360.867004, 461.890060 ))
		spawnCombine(Vector( -1079.902344, -210.867004, 461.890060 ))
		spawnCombine(Vector( -1079.902344, -57.738678, 461.890060 ))
		spawnCombine(Vector( -1079.902344, 261.894592, 461.890060 ))
		spawnCombine(Vector( -1079.902344, 409.170746, 461.890060 ))
		spawnCombine(Vector( -1079.902344, 564.687012, 461.890060 ))
		spawnCombine(Vector( -1079.902344, 723.638672, 461.890060 ))
		spawnCombine(Vector( -1079.902344, 101.383179, 461.890060 ))
	else
		spawnCombine2Metro1(Vector( -1079.902344, -828.632568, 461.890060 ))
		spawnCombine2Metro2(Vector( -1079.902344, -675.632568, 461.890060 ))
		spawnCombine2Metro1(Vector( -1079.902344, -515.632568, 461.890060 ))
		spawnCombine2Metro2(Vector( -1079.902344, -360.867004, 461.890060 ))
		spawnCombine2Metro1(Vector( -1079.902344, -210.867004, 461.890060 ))
		spawnCombine2Metro2(Vector( -1079.902344, -57.738678, 461.890060 ))
		spawnCombine2Metro1(Vector( -1079.902344, 261.894592, 461.890060 ))
		spawnCombine2Metro2(Vector( -1079.902344, 409.170746, 461.890060 ))
		spawnCombine2Metro1(Vector( -1079.902344, 564.687012, 461.890060 ))
		spawnCombine2Metro2(Vector( -1079.902344, 723.638672, 461.890060 ))
		spawnCombine2Metro1(Vector( -1079.902344, 101.383179, 461.890060 ))
	end
	sound.Play( voiceSelection[randomVoice], Vector(711.649414, -136.013214, -117.950577), 160, 100, 1)
	startRound()
end

	timer.Simple( startTimer, function() startRound2() end )
	timer.Simple( 2, function() PrintMessage(HUD_PRINTTALK, "[TCCD]: The round will start in " .. startTimer .. " seconds! Prepare you're self!") end )
	
	
for ie = 1, # FENCE_SPAWNS do
	ITEM = ents.Create("prop_physics" )
	ITEM:SetPos(FENCE_SPAWNS[ie])
	ITEM:SetAngles(FENCE_SPAWNS_ANG[ie])
	ITEM:SetModel(FENCE_LONG)
	ITEM:Spawn()
	ITEM:Fire("DisableMotion","",0)
end
for ie = 1, # BLAST_DOOR_SMALL_SPAWNS do
	ITEM = ents.Create("prop_physics" )
	ITEM:SetPos(BLAST_DOOR_SMALL_SPAWNS[ie])
	ITEM:SetAngles(BLAST_DOOR_SMALL_ANG[ie])
	ITEM:SetModel(BLAST_DOOR_SMALL)
	ITEM:Spawn()
	ITEM:Fire("DisableMotion","",0)
end
for ie = 1, # BLAST_DOOR_BLOCK_POS do
	ITEM = ents.Create("prop_physics" )
	ITEM:SetPos(BLAST_DOOR_BLOCK_POS[ie])
	ITEM:SetAngles(BLAST_DOOR_BLOCK_ANG[ie])
	ITEM:SetModel(BLAST_DOOR)
	ITEM:Spawn()
	ITEM:Fire("DisableMotion","",0)
end


--...........................RANDOM SPAWNS...........................--

for ie = 1, # KITCHEN_TABLE_POS do
	ITEM = ents.Create("prop_physics" )
	ITEM:SetPos(KITCHEN_TABLE_POS[a1])
	ITEM:SetAngles(KITCHEN_TABLE_ANG[a1])
	ITEM:SetModel(KITCHEN_TABLE)
	ITEM:Spawn()
	ITEM:Fire("DisableMotion","",0)
end
for ie = 1, # BLAST_DOOR_SPAWNS do
	ITEM = ents.Create("prop_physics" )
	ITEM:SetPos(BLAST_DOOR_SPAWNS[a2])
	ITEM:SetAngles(BLAST_DOOR_SPAWNS_ANG[a2])
	ITEM:SetModel(BLAST_DOOR)
	ITEM:Spawn()
	ITEM:Fire("DisableMotion","",0)
end
for ie = 1, # DUMPSTER_POS do
	ITEM = ents.Create("prop_physics" )
	ITEM:SetPos(DUMPSTER_POS[a3])
	ITEM:SetAngles(DUMPSTER_ANG[a3])
	ITEM:SetModel(DUMPSTER)
	ITEM:Spawn()
	ITEM:Fire("DisableMotion","",0)
end
for ie = 1, # TRASHED_CONTAINER_POS do
	ITEM = ents.Create("prop_physics" )
	ITEM:SetPos(TRASHED_CONTAINER_POS[a4])
	ITEM:SetAngles(TRASHED_CONTAINER_ANG[a4])
	ITEM:SetModel(TRASHED_CONTAINER)
	ITEM:Spawn()
	ITEM:Fire("DisableMotion","",0)
end
for ie = 1, # RED_OPEN_CONTAINER_POS do
	ITEM = ents.Create("prop_physics" )
	ITEM:SetPos(RED_OPEN_CONTAINER_POS[a5])
	ITEM:SetAngles(RED_OPEN_CONTAINER_ANG[a5])
	ITEM:SetModel(RED_OPEN_CONTAINER)
	ITEM:Spawn()
	ITEM:Fire("DisableMotion","",0)
end
for ie = 1, # FENCE_PPOS do
	ITEM = ents.Create("prop_physics" )
	ITEM:SetPos(FENCE_PPOS[a6])
	ITEM:SetAngles(FENCE_AANG[a6])
	ITEM:SetModel(FFENCE_LONG)
	ITEM:Spawn()
	ITEM:Fire("DisableMotion","",0)
end
for ie = 1, # LONG_BOX_POS do
	ITEM = ents.Create("prop_physics" )
	ITEM:SetPos(LONG_BOX_POS[b1])
	ITEM:SetAngles(LONG_BOX_ANG[b1])
	ITEM:SetModel(LONG_BOX)
	ITEM:Spawn()
	ITEM:Fire("DisableMotion","",0)
end
for ie = 1, # GREEN_DUMPSTER_POS do
	ITEM = ents.Create("prop_physics" )
	ITEM:SetPos(GREEN_DUMPSTER_POS[a7])
	ITEM:SetAngles(GREEN_DUMPSTER_ANG[a7])
	ITEM:SetModel(GREEN_DUMPSTER)
	ITEM:Spawn()
	ITEM:Fire("DisableMotion","",0)
end
for ie = 1, # TABLE_POS do
	ITEM = ents.Create("prop_physics" )
	ITEM:SetPos(TABLE_POS[b2])
	ITEM:SetAngles(TABLE_ANG[b2])
	ITEM:SetModel(TABLE)
	ITEM:Spawn()
	ITEM:Fire("DisableMotion","",0)
end
for ie = 1, # TABLE_LONG_POS do
	ITEM = ents.Create("prop_physics" )
	ITEM:SetPos(TABLE_LONG_POS[a8])
	ITEM:SetAngles(TABLE_LONG_ANG[a8])
	ITEM:SetModel(TABLE_LONG)
	ITEM:Spawn()
	ITEM:Fire("DisableMotion","",0)
end
for ie = 1, # FRIDGE_KITCHEN_POS do
	ITEM = ents.Create("prop_physics" )
	ITEM:SetPos(FRIDGE_KITCHEN_POS[a9])
	ITEM:SetAngles(FRIDGE_KITCHEN_ANG[a9])
	ITEM:SetModel(FRIDGE_KITCHEN)
	ITEM:Spawn()
	ITEM:Fire("DisableMotion","",0)
end
for ie = 1, # BROKEN_STATUE_POS do
	ITEM = ents.Create("prop_physics" )
	ITEM:SetPos(BROKEN_STATUE_POS[a10])
	ITEM:SetAngles(BROKEN_STATUE_ANG[a10])
	ITEM:SetModel(BROKEN_STATUE)
	ITEM:Spawn()
	ITEM:Fire("DisableMotion","",0)
end
for ie = 1, # VENDING_MACHINE_POS do
	ITEM = ents.Create("prop_physics" )
	ITEM:SetPos(VENDING_MACHINE_POS[a11])
	ITEM:SetAngles(VENDING_MACHINE_ANG[a11])
	ITEM:SetModel(VENDING_MACHINE)
	ITEM:Spawn()
	ITEM:Fire("DisableMotion","",0)
end
for ie = 1, # METAL_RACK_POS do
	ITEM = ents.Create("prop_physics" )
	ITEM:SetPos(METAL_RACK_POS[a11])
	ITEM:SetAngles(METAL_RACK_ANG[a12])
	ITEM:SetModel(METAL_RACK)
	ITEM:Spawn()
	ITEM:Fire("DisableMotion","",0)
end
for ie = 1, # WOODEN_RACK_POS do
	ITEM = ents.Create("prop_physics" )
	ITEM:SetPos(WOODEN_RACK_POS[a13])
	ITEM:SetAngles(WOODEN_RACK_ANG[a13])
	ITEM:SetModel(WOODEN_RACK)
	ITEM:Spawn()
	ITEM:Fire("DisableMotion","",0)
end
for ie = 1, # COOKER_POS do
	ITEM = ents.Create("prop_physics" )
	ITEM:SetPos(COOKER_POS[a14])
	ITEM:SetAngles(COOKER_ANG[a14])
	ITEM:SetModel(COOKER)
	ITEM:Spawn()
	ITEM:Fire("DisableMotion","",0)
end
for ie = 1, # BLUE_BARREL_POS do
	ITEM = ents.Create("prop_physics" )
	ITEM:SetPos(BLUE_BARREL_POS[a15])
	ITEM:SetAngles(BLUE_BARREL_ANG[a15])
	ITEM:SetModel(BLUE_BARREL)
	ITEM:Spawn()
	ITEM:Fire("DisableMotion","",0)
end
for ie = 1, # GREEN_CABNET_POS do
	ITEM = ents.Create("prop_physics" )
	ITEM:SetPos(GREEN_CABNET_POS[a16])
	ITEM:SetAngles(GREEN_CABNET_ANG[a16])
	ITEM:SetModel(GREEN_CABNET)
	ITEM:Spawn()
	ITEM:Fire("DisableMotion","",0)
end
for ie = 1, # GREEN_CABNET2_POS do
	ITEM = ents.Create("prop_physics" )
	ITEM:SetPos(GREEN_CABNET2_POS[a17])
	ITEM:SetAngles(GREEN_CABNET2_ANG[a17])
	ITEM:SetModel(GREEN_CABNET2)
	ITEM:Spawn()
	ITEM:Fire("DisableMotion","",0)
end
for ie = 1, # COMBINE_DEFENCE_POS do
	ITEM = ents.Create("prop_physics" )
	ITEM:SetPos(COMBINE_DEFENCE_POS[a18])
	ITEM:SetAngles(COMBINE_DEFENCE_ANG[a18])
	ITEM:SetModel(COMBINE_DEFENCE)
	ITEM:Spawn()
	ITEM:Fire("DisableMotion","",0)
end
function spawnRebelWall()
	ITEM = ents.Create("prop_physics")
	ITEM:SetPos(Vector(1024.919678, 271.353119, -91.701935))
	ITEM:SetAngles(Angle(-0.000, 180.000, 0.000))
	ITEM:SetModel("models/props_building_details/Storefront_Template001a_Bars.mdl")
	ITEM:Spawn()
	ITEM:Fire("DisableMotion","",0)
	end
	spawnRebelWall()
end