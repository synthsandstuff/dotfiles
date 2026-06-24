hl.on("hyprland.start", function ()
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("waybar")
	hl.exec_cmd("alacritty")
)

require("scripts/general")
require("scripts/displays")
require("scripts/keybinds")
