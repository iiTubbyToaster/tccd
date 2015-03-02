AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "init.lua" )

concommand.Add("tccd_combineassasin", function()
	enableAssasin()
end )

if SERVER then
	if GetConVarString("tccd_combineassasin") == "1" then
		timer.Simple( 3, function() enableAssasin() end )
	end
end

if SERVER then
	if GetConVarString("tccd_combinecremator") == "1" then
		timer.Simple( 3, function() enableCremator() end )
	end
end

if SERVER then
	if GetConVarString("tccd_paydaymusic") == "1" then
		timer.Simple( 2, function() enablePaydayMusic() end )
	end
end

if SERVER then
	if GetConVarString("tccd_starttimer") != 25 then
		startTimer = (GetConVarNumber("tccd_starttimer"))
	end
end 

GM.Name = "The Combine Carnage Defence"
GM.Author = "iiTubbyToaster"
GM.Email = "N/A"
GM.Website = "N/A"

function enablePaydayMusic()
	paydayMusic = 1
end

function enableAssasin()
	combineAssasin = 1
end

function enableCremator()
	combineCremator = 1
end

if game.GetMap() == "gm_construct" then
	timer.Simple( 0.5, function() include("tccd/maps/gm_construct.lua"); end )
end

function GM:Initialize()
		self.BaseClass.Initialize( self )
end

-- What happens when a player spawns
function GM:PlayerSpawn( ply )
    self.BaseClass:PlayerSpawn( ply )   
 
ply.WalkSpeed 			= 200		-- How fast to move when not running
ply.RunSpeed				= 400		-- How fast to move when running
ply:SetModel("models/player/Group03/Male_0" .. math.random(1,9) .. ".mdl")
ply.CrouchedWalkSpeed 	= 0.3		-- Multiply move speed by this when crouching
ply.DuckSpeed			= 0.1		-- How fast to go from not ducking, to ducking
ply.UnDuckSpeed			= 0.1		-- How fast to go from ducking, to not ducking
ply.JumpPower			= 150		-- How powerful our jump should be
ply.CanUseFlashlight     = false		-- Can we use the flashlight
ply.MaxHealth			= 100		-- Max health we can have
ply.StartHealth			= 100		-- How much health we start with
ply.StartArmor			= 100			-- How much armour we start with
ply.DropWeaponOnDie		= true		-- Do we drop our weapon when we die
ply.TeammateNoCollide 	= true		-- Do we collide with teammates or run straight through them
ply.AvoidPlayers			= true		-- Automatically swerves around other players
ply.UseVMHands			= true		-- Uses viewmodel hands
end

function GM:PlayerLoadout( ply )

	ply:Give("weapon_bfg_ar1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("item_ammo_smg1")
	ply:Give("weapon_frag")
	ply:Give("item_battery")
	ply:Give("item_battery")
	ply:Give("item_battery")
	ply:Give("item_battery")
end