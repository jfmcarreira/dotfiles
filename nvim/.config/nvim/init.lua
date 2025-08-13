require("config.lazy")

vim.g.mapleader = " "
vim.o.tabstop = 4 
vim.o.shiftwidth=2   
vim.o.softtabstop=2 
vim.o.expandtab = true       

vim.opt.laststatus = 2
vim.opt.termguicolors = true
vim.opt.hlsearch = false
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.expand("~/.vim/undodir")
vim.opt.undofile = true
vim.opt.incsearch = true
vim.opt.scrolloff = 16
vim.opt.showmode = true
vim.opt.signcolumn = "yes"
vim.opt.clipboard = "unnamedplus"

-- Completion behavior
vim.opt.completeopt = { "noinsert", "noselect" }

vim.opt.cmdheight = 2
vim.opt.updatetime = 50
vim.opt.shortmess:append("c")

vim.opt.autochdir = true
vim.opt.colorcolumn = "80"

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move lines up and down
vim.keymap.set("n", "<A-Up>", ":m-2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<A-Down>", ":m+<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<A-Up>", "<Esc>:m-2<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<A-Down>", "<Esc>:m+<CR>", { noremap = true, silent = true })

vim.lsp.enable('luals')
vim.lsp.enable('clangd')

vim.keymap.set('n', '<leader>td', function()
  vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, { silent = true, noremap = true })

vim.diagnostic.config({
  virtual_text = {
    prefix = "●", -- Could be '■', 'x', '>', etc.
    spacing = 2,  -- Space between text and line
  },
  signs = true,     -- Keep gutter signs
  underline = true, -- Underline errors/warnings
  update_in_insert = false, -- Don't update while typing
})

