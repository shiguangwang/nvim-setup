-- for conciseness
local opt = vim.opt
local cmd = vim.cmd

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true
opt.smarttab = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- cursor line
opt.cursorline = false

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

--clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true
opt.splitbelow = true

-- turn off swapfile
opt.swapfile = false

-- turn off relativenumber in INS mode
cmd[[autocmd InsertEnter * :set norelativenumber]]
cmd[[autocmd InsertLeave * :set relativenumber]]
