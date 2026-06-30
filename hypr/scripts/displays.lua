hl.monitor({
	output = "DP-1",
	mode = "3840x2160@143.96300",
	position = "0x0",
	scale = 1.25,
	bitdepth = 10,
})

hl.monitor({
	output = "DP-2",
	mode = "1920x1080@60",
	position = "3072x0",
	scale = 1,
	transform = 3,
})

hl.monitor({
	output = "HDMI-A-1",
	mode = "3840x2160@60",
	position = "-3072x0",
	scale = 1.25,
})
