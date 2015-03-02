AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include( "shared.lua" )

playerLifes = 5

function GM:DoPlayerDeath( ply, attacker, dmginfo )
	playerLifes = playerLifes - 1
	ply:CreateRagdoll()
	PrintMessage(HUD_PRINTTALK, "[TCCD]: " .. playerLifes .. " Team lifes left!")
		if playerLifes <= 0 then
		    RunConsoleCommand("changelevel", "gm_construct")
		end
	end