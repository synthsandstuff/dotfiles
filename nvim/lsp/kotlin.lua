return {
  cmd = { "intellij-server", "--stdio"},
  filetypes = { "kotlin" },
  root_dir = function(bufnr, on_dir)
    local fname = vim.api.nvim_buf_get_name(bufnr)
    fname = vim.fs.normalize(fname)

    -- If we're inside a Flutter plugin's android/ source (but not inside example/),
    -- prefer the example app's android/ project, since that's where the Gradle
    -- graph actually resolves (com.android.library plugin version, etc.)
    if fname:find('/android/', 1, true) and not fname:find('/example/', 1, true) then
      -- walk up from the file to find the plugin root (parent of "android")
      local android_dir = vim.fs.find('android', {
        path = fname,
        upward = true,
        type = 'directory',
      })[1]

      if android_dir then
        local plugin_root = vim.fs.dirname(android_dir)
        local example_android = plugin_root .. '/example/android'
        local settings_kts = example_android .. '/settings.gradle.kts'
        local settings_groovy = example_android .. '/settings.gradle'

        if vim.uv.fs_stat(settings_kts) or vim.uv.fs_stat(settings_groovy) then
          on_dir(example_android)
          return
        end
      end
    end
  end,
  root_markers = {
    "settings.gradle.kts",
    "settings.gradle",
    "build.gradle",
    "build.gradle.kts"
  },
  offset_encoding = "utf-8",
  inlay_hints = {
    enabled = true,                     -- Enable inlay hints (auto-enable on LSP attach)
    parameters = true,                  -- Show parameter names
    parameters_compiled = true,         -- Show compiled parameter names
    parameters_excluded = false,        -- Show excluded parameter names
    parameters_context = false,         -- Show context parameter hints
    types_property = true,              -- Show property types
    types_variable = true,              -- Show local variable types
    function_return = true,             -- Show function return types
    function_parameter = true,          -- Show function parameter types
    lambda_return = true,               -- Show lambda return types
    lambda_receivers_parameters = true, -- Show lambda receivers/parameters
    value_ranges = true,                -- Show value ranges
    kotlin_time = true,                 -- Show kotlin.time warnings
    call_chains = false,                -- Show call-chain intermediate types (default false)
  },
}
