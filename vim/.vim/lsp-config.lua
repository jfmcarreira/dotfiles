require'lspconfig'.clangd.setup{}

--  Commands:
--  - ClangdSwitchSourceHeader: Switch between source/header
--
--  Default Values:
--    capabilities = default capabilities, with offsetEncoding utf-8
--    cmd = { "clangd", "--background-index" }
--    filetypes = { "c", "cpp", "objc", "objcpp" }
--    on_init = function to handle changing offsetEncoding
--    root_dir = root_pattern("compile_commands.json", "compile_flags.txt", ".git") or dirname

require'lspconfig'.jedi_language_server.setup{}

--  Commands:
--
--  Default Values:
--    cmd = { "jedi-language-server" }
--    filetypes = { "python" }
--    root_dir = vim's starting directory

 require'lspconfig'.bashls.setup{}

 -- Commands:
 --
 -- Default Values:
 --   cmd = { "bash-language-server", "start" }
 --   cmd_env = {
 --     GLOB_PATTERN = "*@(.sh|.inc|.bash|.command)"
 --   }
 --   filetypes = { "sh" }
 --   root_dir = vim's starting directory
