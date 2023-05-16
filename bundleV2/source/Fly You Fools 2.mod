return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`Fly You Fools 2` mod must be lower than Vermintide Mod Framework in your launcher's load order.")

		new_mod("Fly You Fools 2", {
			mod_script       = "scripts/mods/Fly You Fools 2/Fly You Fools 2",
			mod_data         = "scripts/mods/Fly You Fools 2/Fly You Fools 2_data",
			mod_localization = "scripts/mods/Fly You Fools 2/Fly You Fools 2_localization",
		})
	end,
	packages = {
		"resource_packages/Fly You Fools 2/Fly You Fools 2",
	},
}
