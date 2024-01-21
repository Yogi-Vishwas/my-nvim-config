local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim" -- check if lazy is already install
if not vim.loop.fs_stat(lazypath) then                       -- else get it from github
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    -- fuzzy finder
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    -- colorscheme
    { 'rose-pine/neovim',                 name = 'rose-pine' },
    -- treesitter for syntax highlighting
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile" },
        build = ":TSUpdate",
    },
    -- Quick switch between active files
    {

        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }

    },
    -- LSP (lsp zero)
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter"
    }
}
local opts = {}
require("lazy").setup(plugins, opts)
