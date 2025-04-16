-- enable relative line numbers
vim.opt.nu = true
vim.opt.rnu = true

-- disable showing the mode below the statusline
vim.opt.showmode = false

-- set tabs to 2 spaces
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- enable auto indenting and set it to space
vim.opt.smartindent = true
vim.opt.shiftwidth = 2

-- enable smart indenting (see https://stackoverflow.com/questions/1204149/smart-wrap-in-vim)
vim.opt.breakindent = true

-- enable incremental searching
vim.opt.incsearch = true
vim.opt.hlsearch = true

-- disable text wrap
vim.opt.wrap = false

-- set leader to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- better splitting
vim.opt.splitbelow = true
vim.opt.splitright = true

-- enable mouse mode
vim.opt.mouse = "a"

-- enable ingnorecase + smartcase for better searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- decrease updating to 250ms
vim.opt.updatetime = 250

-- set completeopt to have a better completion experience
vim.opt.completeopt = { "menu", "menuone", "noselect" }

-- enable persistant undo history
vim.opt.undofile = true

-- enable 24-bit color
vim.opt.termguicolors = true

-- enable the sign column to prevent screen from jumping
vim.opt.signcolumn = "yes"

-- enable access to system clipboard
vim.opt.clipboard = "unnamed,unnamedplus"

-- Enable cursor line highlight
vim.opt.cursorline = true

-- Set fold settings
-- These options were reccommended by nvim-ufo
-- See: https://github.com/kevinhwang91/nvim-ufo#minimal-configuration
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true
vim.opt.foldcolumn = "0"
vim.opt.foldnestmax = 5
vim.opt.foldtext = ""

-- Always keep 8 lines above/below cursor unless at start/end of file
vim.opt.scrolloff = 8

-- Place a column line
vim.opt.colorcolumn = "80"

vim.opt.guicursor = {
	"n-v-c:block", -- Normal, visual, command-line: block cursor
	"i-ci-ve:ver25", -- Insert, command-line insert, visual-exclude: vertical bar cursor with 25% width
	"r-cr:hor20", -- Replace, command-line replace: horizontal bar cursor with 20% height
	"o:hor50", -- Operator-pending: horizontal bar cursor with 50% height
	"a:blinkwait700-blinkoff400-blinkon250", -- All modes: blinking settings
	"sm:block-blinkwait175-blinkoff150-blinkon175", -- Showmatch: block cursor with specific blinking settings
}

-- Enable virtual lines for diagnostics
-- vim.lsp.diagnostic.config({ virtual_lines = { current_line = true } })
