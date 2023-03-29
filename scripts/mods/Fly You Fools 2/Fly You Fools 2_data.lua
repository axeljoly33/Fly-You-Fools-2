local mod = get_mod("Fly You Fools 2")

return {
	name = "Fly You Fools 2",
	description = mod:localize("mod_description"),
	is_togglable = true,
	options = {
		widgets = {
			{
				setting_id      = "toggle_FYF2_id",
				type            = "keybind",
				default_value   = {},
				keybind_trigger = "pressed",
				keybind_type    = "function_call",
				function_name   = "toggle_FYF2"
			},
			{
				setting_id  = "settings_group_FYF2",
				type        = "group",
				sub_widgets = {
					{
						setting_id  = "speed_group_FYF2",
						type        = "group",
						sub_widgets = {
							{
								setting_id      = "min_speed_FYF2",
								type            = "numeric",
								default_value   = 5,
								range           = {0, 200}
							},
							{
								setting_id      = "max_speed_FYF2",
								type            = "numeric",
								default_value   = 100,
								range           = {0, 200}
							},
							{
								setting_id    = "step_speed_FYF2",
								type          = "dropdown",
								default_value = 5,
								options = {
								  {text = "step_speed_1", value = 1},
								  {text = "step_speed_2", value = 2},
								  {text = "step_speed_5", value = 5},
								  {text = "step_speed_10", value = 10},
								  {text = "step_speed_25", value = 25},
								  {text = "step_speed_50", value = 50}
								}
							}
						}
					},
					{
						setting_id  = "hide_group_FYF2",
						type        = "group",
						sub_widgets = {
							{
								setting_id    = "hide_ui_FYF2",
								type          = "checkbox",
								default_value = false
							},
							{
								setting_id      = "hide_arms_FYF2",
								type            = "checkbox",
								default_value   = false
							},
							{
								setting_id      = "hide_weapon_FYF2",
								type            = "checkbox",
								default_value   = false
							}
						}
					},
					{
						setting_id    = "custom_fov_group_FYF2",
						type          = "checkbox",
						default_value = false,
						sub_widgets   = {
							{
								setting_id      = "custom_fov_FYF2",
								type            = "numeric",
								default_value   = 105,
								range           = {10, 160}
							}
						}
					},
					{
						setting_id    = "display_ui_widget_FYF2",
						type          = "checkbox",
						default_value = false,
						sub_widgets   = {
							{
								setting_id      = "display_speed_multiplier_FYF2",
								type            = "checkbox",
								default_value   = false
							},
							{
								setting_id      = "offset_x_FYF2",
								type            = "numeric",
								default_value   = 0,
								range           = {-3840, 3840}
							},
							{
								setting_id      = "offset_y_FYF2",
								type            = "numeric",
								default_value   = 0,
								range           = {-2160, 2160}
							},
							{
								setting_id    = "font_size_FYF2",
								type          = "numeric",
								default_value = 32,
								range         = {0, 128}
							}
						}
					}
				}
			}
		}
	}
}
