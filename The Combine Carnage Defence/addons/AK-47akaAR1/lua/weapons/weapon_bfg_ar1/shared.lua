// Variables that are used on both client and server

SWEP.Base 				= "weapon_mad_base"

SWEP.Category			= "HL2 Beta Weapons(Edited for TCCD)"
SWEP.Author				= "Kalashnikov(Edited by iiTubbyToaster)"
SWEP.Instructions		= "M1 to shoot, M2 to sight in, USE + M2 to switch secondary firemode to melee"

SWEP.ViewModelFlip		= false
SWEP.ViewModel			= "models/weapons/v_ar1.mdl"
SWEP.WorldModel			= "models/weapons/w_ar1.mdl"
SWEP.HoldType				= "ar2"
SWEP.Spawnable			= false
SWEP.AdminSpawnable		= false

SWEP.Primary.Reload		= Sound("weapons/smg2/smg2_reload.wav")
SWEP.Primary.Sound 		= Sound("weapons/ak47_shot.wav")
SWEP.Primary.Recoil		= 1.2
SWEP.Primary.Damage		= 25
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.018
SWEP.Primary.Delay 		= 0.1

SWEP.SightedCone		= 0.013
SWEP.HipfireCone		= 0.075

SWEP.Penetration			= true
SWEP.Ricochet			= false

SWEP.Primary.ClipSize		= 30					// Size of a clip
SWEP.Primary.DefaultClip	= 60					// Default number of bullets in a clip
SWEP.Primary.Automatic		= true				// Automatic/Semi Auto
SWEP.Primary.Ammo			= "smg1"

SWEP.Secondary.ClipSize		= -1					// Size of a clip
SWEP.Secondary.DefaultClip	= -1					// Default number of bullets in a clip
SWEP.Secondary.Automatic	= false				// Automatic/Semi Auto
SWEP.Secondary.Ammo		= "none"

SWEP.ShellEffect			= "effect_mad_shell_rifle"	// "effect_mad_shell_pistol" or "effect_mad_shell_rifle" or "effect_mad_shell_shotgun"

SWEP.Pistol				= false
SWEP.Rifle				= true
SWEP.Shotgun			= false
SWEP.Sniper				= false

SWEP.IronSightsPos = Vector(-4.52, -7, 2.16)
SWEP.IronSightsAng = Vector(0.462, 0, 0)
SWEP.RunArmOffset = Vector(5.276, -4, -2.757)
SWEP.RunArmAngle = Vector(-15, 27.283, -26.733)

/*---------------------------------------------------------
   Name: SWEP:Precache()
   Desc: Use this function to precache stuff.
---------------------------------------------------------*/
function SWEP:Precache()

    	util.PrecacheSound("weapons/ak47_shot.wav")
end


function SWEP:Reload()

	// When the weapon is already doing an animation, just return end because we don't want to interrupt it
	if (self.ActionDelay > CurTime()) then return end 

	// Need to call the default reload before the real reload animation (don't try to understand my reason)
	self.Weapon:DefaultReload(ACT_VM_RELOAD)

	if (IsValid(self.Owner) and self.Owner:GetViewModel()) then
		self:IdleAnimation(self.Owner:GetViewModel():SequenceDuration())
	end

	if (self.Weapon:Clip1() < self.Primary.ClipSize) and (self.Owner:GetAmmoCount(self.Primary.Ammo) > 0) then
		self:SetIronsights(false)
		self:ReloadAnimation()
		self:EmitSound( "weapons/smg2/smg2_reload.wav" )
		if not (CLIENT) then
			self.Owner:DrawViewModel(true)
		end
	end
end

function SWEP:SecondThink()
if not (self.Weapon:GetDTBool(1)) then
		self.Primary.Cone = self.HipfireCone
	else
		self.Primary.Cone = self.SightedCone
end
end

function SWEP:FireAnimationEvent( pos,ang,event,name ) --overriding muzzle effects here since Worshipper has his own
	if not event == CL_EVENT_EJECTBRASS1 then return true end
end