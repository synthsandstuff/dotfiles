hl.config({
	general = {
		gaps_in = 4
		gaps_out = 5
		gaps_workspaces = 50

		border_size = 1
		col.active_border = rgba(DCC8FFFF)
		col.inactive_border = rgba(AE81FF00)
		resize_on_border = true

		snap {
			enabled = true
		}
	}

	decoration = {
		rounding = 14
		dim_inactive = true
		dim_strength = 0.25
		dim_special = 0.5

		shadow {
			enabled = true
			range = 30
			offset = 0 25
			render_power = 4
			color = rgba(00000010)
		}
	}
	
	input {
		sensitivity = -0.5
	}

	misc {
		disable_hyprland_logo = true
		disable_splash_rendering = true
		key_press_enables_dpms = true
		mouse_move_enables_dpms = true
	}
})
