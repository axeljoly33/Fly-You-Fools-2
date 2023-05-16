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
								setting_id      = "speed_FYF2",
								type            = "numeric",
								default_value   = 25,
								range           = {1, 100}
							},
							{
								setting_id      = "step_FYF2",
								type            = "numeric",
								default_value   = 1,
								range           = {1, 100}
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
								range         = {1, 128}
							},
							{
								setting_id    = "font_type_FYF2",
								type          = "dropdown",
								default_value = 7,
								options = {
									{text = "Arial", value = 1},
									{text = "Arial_2", value = 2},
									{text = "Hell_Shark_Arial", value = 3},
									{text = "Hell_Shark_Arial_2", value = 4},
									{text = "Hell_Shark", value = 5},
									{text = "Hell_Shark_2", value = 6},
									{text = "Hell_Shark_Header", value = 7},
									{text = "Hell_Shark_Header_2", value = 8},
									{text = "Chat_Output", value = 9},
								}
							},
							{
								setting_id  = "font_color_group_FYF2",
								type        = "group",
								sub_widgets = {
									{
										setting_id    = "font_color_alpha_FYF2",
										type          = "numeric",
										default_value = 255,
										range         = {0, 255}
									},
									{
										setting_id    = "font_color_red_FYF2",
										type          = "numeric",
										default_value = 255,
										range         = {0, 255}
									},
									{
										setting_id    = "font_color_green_FYF2",
										type          = "numeric",
										default_value = 255,
										range         = {0, 255}
									},
									{
										setting_id    = "font_color_blue_FYF2",
										type          = "numeric",
										default_value = 255,
										range         = {0, 255}
									}
								}
							}
						}
					}
				}
			}
		}
	}
}
