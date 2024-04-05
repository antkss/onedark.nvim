local c = require('onedark.palette')["dark"]
local cfg = "dark"
-- local util = require("onedark.util")

local M = {}
local common = {}

local function vim_highlights(highlights)
    for group_name, group_settings in pairs(highlights) do
        vim.api.nvim_command(string.format("hi %s guifg=%s guibg=%s guisp=%s gui=%s", group_name,
            group_settings.fg or "none",
            group_settings.bg or "none",
            "none",
             "none"
	    ))
    end
end


common = {
    Normal = {fg = c.fg, bg = c.none and c.none or c.bg0},
    Terminal = {fg = c.fg, bg = c.none and c.none or c.bg0},
    EndOfBuffer = {fg = c.grey , bg = c.none },
    -- FoldColumn = {fg = c.fg, bg = cfg.transparent and c.none or c.bg1},
    -- Folded = {fg = c.fg, bg = cfg.transparent and c.none or c.bg1},
    SignColumn = { bg = c.transparent },
    -- ToolbarLine = {fg = c.fg},
    -- Cursor = {fmt = "reverse"},
    -- vCursor = {fmt = "reverse"},
    -- iCursor = {fmt = "reverse"},
    -- lCursor = {fmt = "reverse"},
    -- CursorIM = {fmt = "reverse"},
    -- CursorColumn = {bg = c.bg1},
    -- CursorLine = {bg = c.bg1},
    -- ColorColumn = {bg = c.bg1},
    -- CursorLineNr = {fg = c.fg},
    LineNr = {fg = c.grey},
    -- Conceal = {fg = c.grey, bg = c.bg1},
    -- DiffAdd = {fg = c.none, bg = c.diff_add},
    -- DiffChange = {fg = c.none, bg = c.diff_change},
    -- DiffDelete = {fg = c.none, bg = c.diff_delete},
    -- DiffText = {fg = c.none, bg= c.diff_text},
    -- DiffAdded = colors.Green,
    -- DiffRemoved = colors.Red,
    -- DiffFile = colors.Cyan,
    -- DiffIndexLine = colors.Grey,
    -- Directory = {fg = c.blue},
    ErrorMsg = {fg = c.red, bg = c.none},
    -- WarningMsg = {fg = c.yellow, fmt = "bold"},
    -- MoreMsg = {fg = c.blue, fmt = "bold"},
    -- CurSearch = {fg = c.bg0, bg = c.orange},
    -- IncSearch = {fg = c.bg0, bg = c.orange},
    -- Search = {fg = c.bg0, bg = c.bg_yellow},
    -- Substitute = {fg = c.bg0, bg = c.green},
    -- MatchParen = {fg = c.none, bg = c.grey},
    NonText = {fg = c.grey},
    -- Whitespace = {fg = c.grey},
    -- SpecialKey = {fg = c.grey},
    Pmenu = {fg = c.fg, bg = c.bg0},
    -- PmenuSbar = {fg = c.none, bg = c.bg1},
    -- PmenuSel = {fg = c.bg0, bg = c.bg_blue},
    -- WildMenu = {fg = c.bg0, bg = c.blue},
    -- PmenuThumb = {fg = c.none, bg = c.grey},
    Question = {fg = c.yellow},
    -- SpellBad = {fg = c.none, fmt = "undercurl", sp = c.red},
    -- SpellCap = {fg = c.none, fmt = "undercurl", sp = c.yellow},
    -- SpellLocal = {fg = c.none, fmt = "undercurl", sp = c.blue},
    -- SpellRare = {fg = c.none, fmt = "undercurl", sp = c.purple},
    -- StatusLine = {fg = c.fg, bg = c.bg2},
    -- StatusLineTerm = {fg = c.fg, bg = c.bg2},
    -- StatusLineNC = {fg = c.grey, bg = c.bg1},
    -- StatusLineTermNC = {fg = c.grey, bg = c.bg1},
    -- TabLine = {fg = c.fg, bg = c.bg1},
    -- TabLineFill = {fg = c.grey, bg = c.bg1},
    -- TabLineSel =  {fg = c.bg0, bg = c.fg},
    -- WinSeparator = {fg = c.bg3},
    Visual = {bg = c.bg3},
    -- VisualNOS = {fg = c.none, bg = c.bg2, fmt = "underline"},
    -- QuickFixLine = {fg = c.blue, fmt = "underline"},
    -- Debug = {fg = c.yellow},
    -- debugPC = {fg = c.bg0, bg = c.green},
    -- debugBreakpoint = {fg = c.bg0, bg = c.red},
    -- ToolbarButton = {fg = c.bg0, bg = c.bg_blue},
    -- FloatBorder = {fg = c.grey, bg = c.bg1},
    NormalFloat = {fg = c.fg, bg = c.bg0},
}


function M.setup()
     vim_highlights(common)
end

return M
