vim.opt.number = true
-- vim.opt.relativenumber = true

vim.opt.clipboard = "unnamedplus"

vim.opt.colorcolumn = "80"

vim.opt.cursorcolumn = true
vim.opt.cursorline = true

vim.opt.list = true
										

vim.opt.mouse = "a"








-- vim.cmd("colorscheme koehler")

local highlight_groups = {
    "Normal",
    "Comment",
    "Identifier",
    "Statement",
    "PreProc",
    "Type",
    "Constant",
    "String",
    "Special",
    "Number",
    "Function",
    "Operator",
    "Keyword",
    "Variable",
    "Todo",
    "SpecialKey",
    "Visual",
    "CursorLine",
    "CursorColumn",
    "StatusLine",
    "LineNr",
    "NonText",
    "Whitespace",
    "Error",
    "Warning",
    "Search",
    "IncSearch",
    "DiffAdd",
    "DiffChange",
    "DiffDelete"
}
for _, group in ipairs(highlight_groups) do
    vim.cmd(string.format("highlight %s ctermfg=white", group))
end




-- What do highlight group do
-- LineNr - changes the line numbers :set nu
-- NonText - changes the 

-- cterm options bold,underline,italic,reverse,strikethrough,standout,conceal

vim.opt.background = dark

vim.cmd("highlight LineNr ctermfg=grey cterm=bold")

