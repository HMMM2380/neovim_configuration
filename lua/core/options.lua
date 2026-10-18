local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.tabstop = 4
opt.shiftwidth = 0
opt.expandtab = true
opt.autoindent = true

opt.cursorline = true
opt.colorcolumn = "80"

vim.opt.autoread = true

opt.wrap = false

opt.mouse = "a"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true
opt.signcolumn = "yes"

opt.hlsearch = false

opt.showmode = false

opt.nrformats = "bin,hex,alpha"
