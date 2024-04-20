local c = require('onedark.palette')["dark"]
local M = {}
function M.setup()
	vim.api.nvim_command(string.format("hi Normal guifg=%s guibg=%s", c.fg , c.bg0 ))
	vim.api.nvim_command(string.format("hi Visual guibg=%s",c.bg3 ))
	vim.api.nvim_command(string.format("hi Terminal guifg=%s guibg=%s",c.fg,c.bg0 ))
	vim.api.nvim_command(string.format("hi EndOfBuffer guifg=%s guibg=%s",c.grey ,"nil"))
	vim.api.nvim_command(string.format("hi LineNr guifg=%s",c.grey ))
	vim.api.nvim_command(string.format("hi ErrorMsg guifg=%s guibg=%s",c.red,"nil" ))
	vim.api.nvim_command(string.format("hi NonText guifg=%s",c.grey ))
	vim.api.nvim_command(string.format("hi Pmenu guifg=%s guibg=%s", c.fg , c.bg0 ))
	vim.api.nvim_command(string.format("hi Question guifg=%s", c.yellow  ))
	vim.api.nvim_command(string.format("hi NormalFloat guifg=%s guibg=%s", c.fg , c.bg0 ))
	vim.api.nvim_command(string.format("hi SignColumn guibg=%s", "nil" ))
	vim.api.nvim_command(string.format("hi TabLine guibg=%s", "nil" ))
	vim.api.nvim_command(string.format("hi MatchParen guibg=%s", c.grey ))
	vim.api.nvim_command(string.format("hi MiniIndentscopeSymbol guifg=%s", c.grey))
	vim.api.nvim_command(string.format("hi CocMenuSel ctermfg=0 guibg=%s",c.fg))
end

return M
