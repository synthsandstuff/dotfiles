return {
  cmd = {"clangd"},
  filetypes = {"c", "c++", "objc", "objcpp"},
  root_markers = {
    "compile_commands.json",
    "compile_flags.txt",
    ".git"
  },
}
