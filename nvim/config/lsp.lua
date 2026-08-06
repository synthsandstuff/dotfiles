vim.lsp.config("*", {
  root_markers = { ".git" },
})

vim.lsp.enable({
  "lua_ls",
  "clangd"
})

vim.diagnostic.config({
  virtual_lines = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = true,
  },
  signed = {
    text = {
      [vim.diagnostic.severity.ERROR] = "󰅚 ",
      [vim.diagnostic.severity.WARN] = "󰀪 ",
      [vim.diagnostic.severity.INFO] = "󰋽 ",
      [vim.diagnostic.severity.HINT] = " ",
    },
    numhl = {
      [vim.diagnostic.severity.ERROR] = "ErrorMsg",
      [vim.diagnostic.severity.WARN] = "WarningMsg",
    },
  },
})

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {clear = true}),

  callback = function(ev)

    local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))

    local opts = { silent = true, buffer = ev.buf}

    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

    if client:supports_method('textDocument/code_action') then
      vim.keymap({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, opts)
    end
      
    if client:supports_method('textDocument/implementation') then
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
    end

    if client:supports_method('textDocument/definition') then
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    end

    if client:supports_method('textDocument/declaration') then
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    end

    if client:supports_method('textDocument/references') then
      vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    end

    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, ev.buf, {autotrigger = true})
    end

    if client:supports_method('textDocument/formatting') then
      local format_opts = {bufnr = ev.bug, id = client.id, timeout_ms = 1000}
      vim.keymap.set("n", "<leader>F", vim.lsp.buf.format, format_opts)
      vim.api.nvim_create_user_command('Format', vim.lsp.buf.format(format_opts))
    end
  end
})
