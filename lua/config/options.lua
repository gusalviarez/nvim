local options = {
	backup = false,         -- creates a backup file
	clipboard = "unnamedplus", -- allows neovim to access the system clipboard
	fileencoding = "utf-8", -- the encoding written to a file
	hidden = true,          -- required to keep multiple buffers and open multiple buffers
	hlsearch = true,        -- highlight all matches on previous search pattern
	ignorecase = true,      -- ignore case in search patterns
	mouse = "a",            -- allow the mouse to be used in neovim
	showmode = false,       -- we don't need to see things like -- INSERT -- anymore
	--showtabline = '',                         -- always show tabs
	smartcase = true,       -- smart case
	smartindent = true,     -- make indenting smarter again
	splitbelow = true,      -- force all horizontal splits to go below current window
	splitright = true,      -- force all vertical splits to go to the right of current window
	swapfile = false,       -- creates a swapfile
	termguicolors = true,   -- set term gui colors (most terminals support this)                        -- time to wait for a mapped sequence to complete (in milliseconds)
	undofile = true,        -- enable persistent undo
	updatetime = 50,        -- faster completion (4000ms default)
	writebackup = false,    -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
	expandtab = true,       -- convert tabs to spaces
	shiftwidth = 4,         -- the number of spaces inserted for each indentation
	tabstop = 4,            -- insert 2 spaces for a tab
	softtabstop = 4,
	cursorline = true,      -- highlight the current line
	number = true,          -- set numbered lines
	relativenumber = true,  -- set relative numbered lines
	numberwidth = 4,        -- set number column width to 2 {default 4}
	signcolumn = "yes",     -- always show the sign column, otherwise it would shift the text each time
	wrap = true,            -- display lines as one long line
	cmdheight = 0,
	linebreak = true
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
	vim.opt[k] = v
end

--vim.cmd('au ColorScheme * hi clear SignColumn')
--vim.cmd('au ColorScheme * hi VertSplit guifg=bg guibg=bg')

