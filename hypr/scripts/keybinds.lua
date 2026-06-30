-- App Shortcuts
hl.bind("SUPER + T", hl.dsp.exec_cmd("alacritty"))
hl.bind("SUPER + space", hl.dsp.exec_cmd("vicinae toggle"))
hl.bind("SUPER + F", hl.dsp.exec_cmd("firefox"))
hl.bind("SUPER + D", hl.dsp.exec_cmd("vesktop"))
hl.bind("SUPER + S", hl.dsp.exec_cmd("spotify"))
hl.bind("SUPER + N", hl.dsp.exec_cmd("nautilus"))
hl.bind("SUPER + M", hl.dsp.exec_cmd("hyprshutdown"))

-- Window Management
hl.bind("SUPER + F11", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + SHIFT + left", hl.dsp.window.move({direction = "left"}))
hl.bind("SUPER + SHIFT + right", hl.dsp.window.move({direction = "right"}))
hl.bind("SUPER + SHIFT + up", hl.dsp.window.move({direction = "up"}))
hl.bind("SUPER + SHIFT + down", hl.dsp.window.move({direction = "down"}))

-- Focus Movement
hl.bind("SUPER + left", hl.dsp.focus({direction = "left"}))
hl.bind("SUPER + right", hl.dsp.focus({direction = "right"}))
hl.bind("SUPER + up", hl.dsp.focus({direction = "up"}))
hl.bind("SUPER + down", hl.dsp.focus({direction = "down"}))

-- Workspaces
hl.bind("SUPER + bracketright", hl.dsp.focus({workspace = "r+1"}))
hl.bind("SUPER + bracketleft", hl.dsp.focus({workspace = "r-1"}))
hl.bind("SUPER + SHIFT + bracketright", hl.dsp.window.move({workspace = "r+1"}))
hl.bind("SUPER + SHIFT + bracketleft", hl.dsp.window.move({workspace = "r-1"}))
hl.bind("SUPER + U", hl.dsp.workspace.toggle_special(special))
hl.bind("SUPER + SHIFT + U", hl.dsp.window.move({workspace = "special"}))

-- Extra
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd("grim -g \"$(slurp)\" - | wl-copy"))
hl.bind("SUPER + CTRL + Q", hl.dsp.dpms({action = "toggle"}))
