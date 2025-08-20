vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter", version = 'main' },
	"https://github.com/nvim-treesitter/nvim-treesitter-context",
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/ellisonleao/gruvbox.nvim",
	"https://github.com/nvim-tree/nvim-web-devicons",
	"https://github.com/folke/lazydev.nvim",
	"https://github.com/echasnovski/mini.nvim",
	"https://github.com/MeanderingProgrammer/render-markdown.nvim",
	"https://github.com/akinsho/toggleterm.nvim",
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/lewis6991/gitsigns.nvim",
})

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

vim.o.wrap = false
vim.o.number = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = false
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.showmode = false
vim.o.termguicolors = true
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.signcolumn = 'yes'
vim.o.ignorecase = true
vim.o.winborder = "rounded"
vim.o.scrolloff = 8
vim.g.mapleader = ' '

vim.lsp.enable({'pylsp', 'lua_ls', 'luals', 'clangd'})

require('toggleterm').setup({open_mapping = {[[<c-\>]], [[<c-`>]]}})
require('lazydev').setup()
require('render-markdown').setup()
require('mini.basics').setup()
require('mini.cursorword').setup()
require('mini.indentscope').setup()
require('mini.animate').setup()
require('mini.tabline').setup()
require('mini.statusline').setup()
require('mini.pairs').setup()
require('mini.files').setup()
require('mini.extra').setup()
require('mini.pick').setup()
require("mason").setup()
require('gitsigns').setup()

local lsp_pickers = {
  gr = 'references',
  gd = 'definition',
  gD = 'declaration',
  gi = 'implementation',
  gt = 'type_definition',
}

for keys, scope_txt in pairs(lsp_pickers) do
  vim.keymap.set('n', keys, function()
    MiniExtra.pickers.lsp({scope = scope_txt})
  end, { desc = 'LSP ' .. scope_txt })
end

vim.keymap.set('n', '<leader>ff', MiniPick.builtin.files)
vim.keymap.set('n', '<leader>e', MiniFiles.open)
vim.keymap.set('n', '<leader>fg', MiniPick.builtin.grep)
vim.keymap.set('n', '<leader>fb', MiniPick.builtin.buffers)
vim.keymap.set('n', '<leader>fh', MiniPick.builtin.help)
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float)
vim.keymap.set('n', 'gh', vim.lsp.buf.hover )
vim.keymap.set('n', '<Tab>', ':bn<CR>' )
vim.keymap.set('n', '<S-Tab>', ':bp<CR>' )
vim.keymap.set('i', '<C-Space>', '<C-x><C-o>', { noremap = true, silent = true })
vim.keymap.set('t', '<esc>', '<C-\\><C-N>')
