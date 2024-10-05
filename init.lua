vim.opt.number = true

vim.o.background = "dark"

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
}

for _, group in ipairs(highlight_groups) do
    vim.cmd(string.format("highlight %s guifg=#FFFFFF ctermfg=white", group))
end
