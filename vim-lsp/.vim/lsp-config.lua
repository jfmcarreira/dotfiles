local lsp = require 'lspconfig'

lsp.clangd.setup{}
--  Commands:
--  - ClangdSwitchSourceHeader: Switch between source/header
--
--  Default Values:
--    capabilities = default capabilities, with offsetEncoding utf-8
--    cmd = { "clangd", "--background-index" }
--    filetypes = { "c", "cpp", "objc", "objcpp" }
--    on_init = function to handle changing offsetEncoding
--    root_dir = root_pattern("compile_commands.json", "compile_flags.txt", ".git") or dirname

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
end
lsp.clangd.setup{ on_attach = on_attach }


lsp.jedi_language_server.setup{}

--  Commands:
--
--  Default Values:
--    cmd = { "jedi-language-server" }
--    filetypes = { "python" }
--    root_dir = vim's starting directory

-- lsp.bashls.setup{}

 -- Commands:
 --
 -- Default Values:
 --   cmd = { "bash-language-server", "start" }
 --   cmd_env = {
 --     GLOB_PATTERN = "*@(.sh|.inc|.bash|.command)"
 --   }
 --   filetypes = { "sh" }
 --   root_dir = vim's starting directory
