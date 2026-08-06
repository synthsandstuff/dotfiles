vim.pack.add({"https://github.com/mason-org/mason.nvim"})
vim.pack.add({"https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim"})

require("mason").setup()

require("mason-tool-installer").setup({
  ensure_installed = {
    "lua-language-server",
    "kotlin-lsp",
  },
  run_on_start = true,

  auto_update = false})
