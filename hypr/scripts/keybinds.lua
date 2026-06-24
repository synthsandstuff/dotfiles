-- App Shortcuts
hl.bind("SUPER + T", hl.dsp.exec_cmd("alacritty"))
hl.bind("SUPER + space", hl.dsp.exec_cmd("rofi -show drun -show-icons"))
hl.bind("SUPER + F", hl.dsp.exec_cmd("firefox"))
hl.bind("SUPER + D", hl.dsp.exec_cmd("vesktop"))
hl.bind("SUPER + S", hl.dsp.exec_cmd("spotify"))
hl.bind("SUPER + M", hl.dsp.exec_cmd("hyprshutdown"))

-- Window Management
hl.bind("SUPER + F11", hl.dsp.fullscreen())
hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + SHIFT + left", hl.dsp.window.move({direction = l}))
hl.bind("SUPER + SHIFT + right", hl.dsp.window.move({direction = r}))
hl.bind("SUPER + SHIFT + up", hl.dsp.window.move({direction = u}))
hl.bind("SUPER + SHIFT + down", hl.dsp.window.move({direction = d}))

-- Focus Movement
hl.bind("SUPER + left", hl.dsp.focus({direction = l}))
hl.bind("SUPER + right", hl.dsp.focus({direction = r}))
hl.bind("SUPER + up", hl.dsp.focus({direction = u}))
hl.bind("SUPER + down", hl.dsp.focus({direction = d}))

-- Workspaces
hl.bind("SUPER + N", hl.dsp.focus({workspace = m+1}))
hl.bind("SUPER + P", hl.dsp.focus({workspace = m-1}))
hl.bind("SUPER + SHIFT + N", hl.dsp.window.move({workspace = m+1}))
hl.bind("SUPER + SHIFT + P", hl.dsp.window.move({workspace = m-1}))
hl.bind("SUPER + U", hl.dsp.workspace.toggle_special(special))
hl.bind("SUPER + SHIFT + U", hl.dsp.window.move({workspace = special}))

-- Extra
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd("grim -g \"$(slurp)\" - | wl-copy"))
