vim.pack.add({ 'https://github.com/saghen/blink.lib', 'https://github.com/saghen/blink.cmp' })
local cmp = require('blink.cmp')
cmp.setup({
	signature = {
		enabled = true
	},
	appearance = {
		nerd_font_variant = "normal",
	},
  fuzzy = {implementation = "lua"},
  completion = {
    accept = {
      auto_brackets = {
        enabled = true
      }
    },
    list = {
      selection = {
        preselect = false,
        auto_insert = false,
      }
    }
  },
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
