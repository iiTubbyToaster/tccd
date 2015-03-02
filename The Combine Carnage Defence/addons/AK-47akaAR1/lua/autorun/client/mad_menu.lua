/*---------------------------------------------------------
------mmmm---mmmm-aaaaaaaa----ddddddddd---------------------------------------->
     mmmmmmmmmmmm aaaaaaaaa   dddddddddd	  Name: Mad Cows Weapons
     mmm mmmm mmm aaa    aaa  ddd     ddd	  Author: Worshipper
    mmm  mmm  mmm aaaaaaaaaaa ddd     ddd	  Project Start: October 23th, 2009
    mmm       mmm aaa     aaa dddddddddd	  File: mad_menu.lua
---mmm--------mmm-aaa-----aaa-ddddddddd---------------------------------------->
---------------------------------------------------------*/

/*---------------------------------------------------------
   Name: CrosshairOptions()
---------------------------------------------------------*/
local function MadCrosshairOptions(panel)

	local MadCrosshairOptions = {Options = {}, CVars = {}, Label = "#Presets", MenuButton = "1", Folder = "mad_cows_crosshair"}

	MadCrosshairOptions.Options["#Default"] = {	mad_crosshair_r =	"255",
								mad_crosshair_g =	"255",
								mad_crosshair_b =	"255",
								mad_crosshair_a =	"200",
								mad_crosshair_l =	"30",
								mad_crosshair_t =	"1"
							   }
									
	MadCrosshairOptions.CVars = { 	"mad_crosshair_r",
						"mad_crosshair_g",
						"mad_crosshair_b",
						"mad_crosshair_a",
						"mad_crosshair_l",
						"mad_crosshair_t"
					 }
						
	panel:AddControl("ComboBox", MadCrosshairOptions)

	panel:AddControl("CheckBox", {
		Label = "Enable Crosshair",
		Command = "mad_crosshair_t",
	})

	panel:AddControl("Color", {
		Label 	= "Crosshair Color",
		Red 		= "mad_crosshair_r",
		Green 	= "mad_crosshair_g",
		Blue 		= "mad_crosshair_b",
		Alpha 	= "mad_crosshair_a",
	})

	panel:AddControl("Slider", {
		Label 	= "Crosshair Length",
		Command 	= "mad_crosshair_l",
		Type 		= "Integer",
		Min 		= "5",
		Max 		= "100",
	})
end

/*---------------------------------------------------------
   Name: AdminOptions()
---------------------------------------------------------*/
local function AdminOptions(panel)
	if not LocalPlayer():IsAdmin() then return end

	panel:AddControl("Label", {Text = ""})
	
	panel:AddControl("Label", {
		Text = "Normal Weapon Settings:"
	})

	local AdminOptions = {Options = {}, CVars = {}, Label = "#Presets", MenuButton = "1", Folder = "mad_cows_weapon"}

	AdminOptions.Options["#Default"] = {mad_recoilmul 	=	"1", mad_damagemul 	=	"1", sim_accuracymul 	=	"1", sim_walk_speed 	=	"250", sim_run_speed 	=	"500"}
									
	AdminOptions.CVars = {"mad_recoilmul", "mad_damagemul", "sim_accuracymul", "sim_walk_speed", "sim_run_speed","sim_weightmod_t","sim_manualholster_t","sim_flash_t","sim_shell_t"}
						
	panel:AddControl("ComboBox", AdminOptions)

	panel:AddControl("Slider", {
		Label 	= "Damage Multiplier",
		Command 	= "mad_damagemul",
		Type 		= "Float",
		Min 		= "0",
		Max 		= "10",
	})
	
	panel:AddControl("Slider", {
		Label 	= "Recoil Multiplier",
		Command 	= "mad_recoilmul",
		Type 		= "Float",
		Min 		= "0",
		Max 		= "10",
	})
	
	panel:AddControl("Slider", {
		Label 	= "Accuracy Multiplier",
		Command 	= "sim_accuracymul",
		Type 		= "Float",
		Min 		= "0",
		Max 		= "2",
	})
	
	panel:AddControl("Slider", {
		Label 	= "Walk Speed",
		Command 	= "sim_walk_speed",
		Type 		= "Float",
		Min 		= "0",
		Max 		= "1000",
	})
	
	panel:AddControl("Slider", {
		Label 	= "Run Speed",
		Command 	= "sim_run_speed",
		Type 		= "Float",
		Min 		= "0",
		Max 		= "1000",
	})
	panel:AddControl("CheckBox", {
		Label = "Weight Mod",
		Command = "sim_weightmod_t",
	})
	panel:AddControl("CheckBox", {
		Label = "Manual Holster",
		Command = "sim_manualholster_t",
	})
		panel:AddControl("CheckBox", {
		Label = "Shell Eject",
		Command = "sim_shell_t",
	})
		panel:AddControl("CheckBox", {
		Label = "Muzzle Flash",
		Command = "sim_flash_t",
	})
end	
/*---------------------------------------------------------
   Name: MadCowsToolMenu()
---------------------------------------------------------*/
function MadCowsToolMenu()

	spawnmenu.AddToolMenuOption("Options", "Mad Cows Weapons", "Crosshair Options", "Crosshair Options", "", "", MadCrosshairOptions, {SwitchConVar = 'mad_crosshair_t'})
	spawnmenu.AddToolMenuOption("Options", "Mad Cows Weapons", "Admin Options", "Admin Options", "", "", AdminOptions)
end
hook.Add("PopulateToolMenu", "MadCowsToolMenu", MadCowsToolMenu)