vim.pack.add({ 'https://github.com/saghen/blink.lib', 'https://github.com/saghen/blink.cmp' })
local cmp = require('blink.cmp')
cmp.build():pwait()
cmp.setup({
	signature = {
		enabled = true
	},
	appearance = {
		nerd_font_variant = "normal",
	},
  fuzzy = {implementation = "lua"},
	sources = {
		default = {
			"lsp",
			"path",
			"snippets",
			"buffer"
		},
	},
	keymap = { preset = 'enter' }
})
