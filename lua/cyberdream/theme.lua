local colors = require("cyberdream.colors")

local M = {}
function M.setup()
    local config = require("cyberdream.config")
    local opts = config.options

    local theme = {}
    local t = colors.default

    if opts.transparent then
        t.bg = "NONE"
    end

    if opts.hide_fillchars then
        vim.opt.fillchars:append({
            horiz = " ",
            horizup = " ",
            horizdown = " ",
            vert = " ",
            vertleft = " ",
            vertright = " ",
            verthoriz = " ",
            eob = " ",
        })
    end

    theme.highlights = {
        Comment = { fg = t.grey, italic = opts.italic_comments },
        ColorColumn = { bg = t.bg },
        Conceal = { fg = t.grey },
        Cursor = { fg = t.bg, bg = t.fg },
        ICursor = { fg = t.bg, bg = t.fg },
        CursorIM = { fg = t.bg, bg = t.fg },
        CursorColumn = { bg = t.bgHighlight },
        CursorLine = { bg = t.bgHighlight },
        Directory = { fg = t.blue },
        DiffAdd = { fg = t.green },
        DiffChange = { fg = t.cyan },
        DiffDelete = { fg = t.red },
        DiffText = { fg = t.blue },
        EndOfBuffer = { fg = t.bg },
        ErrorMsg = { fg = t.red },
        VertSplit = { fg = t.bg, bg = t.bg },
        WinSeperator = { fg = t.bg, bg = t.bg },
        Folded = { fg = t.grey, bg = t.bgHighlight },
        FoldColumn = { fg = t.grey, bg = t.bgHighlight },
        SignColumn = { fg = t.grey, bg = t.bg },
        SignColumnSB = { fg = t.grey, bg = t.bg },
        Substitute = { fg = t.red, bg = t.bgHighlight },
        LineNr = { fg = t.bgHighlight },
        CursorLineNr = { fg = t.grey },
        MatchParen = { fg = t.pink, bg = t.bgHighlight },
        ModeMsg = { fg = t.fg },
        MsgArea = { fg = t.fg },
        MoreMsg = { fg = t.fg },
        NonText = { fg = t.grey },
        Normal = { fg = t.fg, bg = t.bg },
        NormalNC = { fg = t.fg, bg = t.bg },
        NormalFloat = { fg = t.fg, bg = t.bg },
        FloatTitle = { fg = t.fg, bg = t.bgHighlight },
        FloatBorder = { fg = t.grey, bg = t.bgHighlight },
        Pmenu = { fg = t.fg, bg = t.bgHighlight },
        PmenuSel = { fg = t.fg, bg = t.bgHighlight },
        PmenuSbar = { fg = t.bg, bg = t.bgHighlight },
        PmenuThumb = { fg = t.bg, bg = t.bgHighlight },
        Question = { fg = t.yellow },
        QuickFixLine = { fg = t.bg, bg = t.blue },
        Search = { fg = t.bgAlt, bg = t.fg },
        IncSearch = { fg = t.bgAlt, bg = t.fg },
        CurSearch = { fg = t.bgAlt, bg = t.cyan },
        SpecialKey = { fg = t.grey },
        SpellBad = { fg = t.red, style = "undercurl" },
        SpellCap = { fg = t.yellow, style = "undercurl" },
        SpellLocal = { fg = t.blue, style = "undercurl" },
        SpellRare = { fg = t.purple, style = "undercurl" },
        StatusLine = { fg = t.fg, bg = t.bgHighlight },
        StatusLineNC = { fg = t.grey, bg = t.bgHighlight },
        TabLine = { fg = t.grey, bg = t.bgHighlight },
        TabLineFill = { fg = t.grey, bg = t.bgHighlight },
        TabLineSel = { fg = t.fg, bg = t.bgHighlight },
        Title = { fg = t.fg },
        Visual = { fg = t.bg, bg = t.blue },
        VisualNOS = { fg = t.bg, bg = t.blue },
        WarningMsg = { fg = t.orange },
        Whitespace = { fg = t.grey },
        WildMenu = { fg = t.bg, bg = t.blue },

        Constant = { fg = t.fg },
        String = { fg = t.green },
        Character = { fg = t.green },

        Identifier = { fg = t.fg },
        Function = { fg = t.blue },
        Statement = { fg = t.magenta },
        Operator = { fg = t.purple },
        Keyword = { fg = t.orange },
        PreProc = { fg = t.cyan },

        Type = { fg = t.purple },

        Special = { fg = t.pink },

        Debug = { fg = t.orange },

        Underlined = { style = "underline" },
        Bold = { style = "bold" },
        Italic = { style = "italic" },

        Error = { fg = t.red },
        Todo = { fg = t.purple, style = "bold" },

        qfLineNr = { fg = t.grey },
        qfFileName = { fg = t.blue },

        htmlH1 = { fg = t.orange, bold = true },
        htmlH2 = { fg = t.orange, bold = true },

        mkdCodeDelimiter = { fg = t.grey },
        mkdCodeStart = { fg = t.blue },
        mkdCodeEnd = { fg = t.blue },

        markdownHeadingDelimiter = { fg = t.grey },
        markdownCode = { fg = t.cyan },
        markdownCodeBlock = { fg = t.cyan },
        markdownH1 = { fg = t.orange, bold = true },
        markdownH2 = { fg = t.orange, bold = true },
        markdownLinkText = { fg = t.blue, underline = true },

        LspReferenceText = { bg = t.bgHighlight },
        LspReferenceRead = { bg = t.bgHighlight },
        LspReferenceWrite = { bg = t.bgHighlight },

        -- LspDiagnostics
        DiagnosticError = { fg = t.red },
        DiagnosticWarn = { fg = t.yellow },
        DiagnosticInfo = { fg = t.blue },
        DiagnosticHint = { fg = t.cyan },
        DiagnosticUnnecessary = { fg = t.grey },

        DiagnosiiucVirtualTextError = { fg = t.red },
        DiagnosticVirtualTextWarn = { fg = t.yellow },
        DiagnosticVirtualTextInfo = { fg = t.blue },
        DiagnosticVirtualTextHint = { fg = t.cyan },

        DiagnosticUnderlineError = { undercurl = true, sp = t.red },
        DiagnosticUnderlineWarn = { undercurl = true, sp = t.yellow },
        DiagnosticUnderlineInfo = { undercurl = true, sp = t.blue },
        DiagnosticUnderlineHint = { undercurl = true, sp = t.cyan },

        LspSignatureActiveParameter = { fg = t.orange },
        LspCodeLens = { fg = t.grey },
        LspInlayHint = { fg = t.grey },

        LspInfoBorder = { fg = t.bg },

        -- WhichKey
        WhichKey = { fg = t.cyan },
        WhichKeyGroup = { fg = t.blue },
        WhichKeyDesc = { fg = t.pink },
        WhichKeySeperator = { fg = t.bg },
        WhichKeyFloat = { bg = t.bg },
        WhichKeyValue = { fg = t.blue },

        -- Alpha
        AlphaShortcut = { fg = t.orange },
        AlphaHeader = { fg = t.purple },
        AlphaHeaderLabel = { fg = t.orange },
        AlphaFooter = { fg = t.cyan },
        AlphaButtons = { fg = t.blue },

        -- Telescope
        TelescopeBorder = { fg = t.bgAlt, bg = t.bgAlt },
        TelescopeNormal = { bg = t.bgAlt },
        TelescopePreviewBorder = { fg = t.bgAlt, bg = t.bgAlt },
        TelescopePreviewNormal = { bg = t.bgAlt },
        TelescopePreviewTitle = { fg = t.bgAlt, bg = t.green },
        TelescopePromptBorder = { fg = t.bgAlt, bg = t.bgAlt },
        TelescopePromptNormal = { fg = t.fg, bg = t.bgAlt },
        TelescopePromptPrefix = { fg = t.red, bg = t.bgAlt },
        TelescopePromptTitle = { fg = t.bgAlt, bg = t.red },
        TelescopeResultsBorder = { fg = t.bgAlt, bg = t.bgAlt },
        TelescopeResultsNormal = { bg = t.bgAlt },
        TelescopeResultsTitle = { fg = t.bgAlt, bg = t.bgAlt },

        -- Cmp
        CmpDocumentation = { fg = t.fg, bg = t.bgAlt },
        CmpDocumentationBorder = { fg = t.bgAlt, bg = t.bgAlt },
        CmpGhostText = { fg = t.grey, bg = t.bg },

        CmpItemAbbr = { fg = t.fg, bg = t.bg },
        CmpItemAbbrDeprecated = { fg = t.grey, bg = t.bg, strikethrough = true },
        CmpItemAbbrMatch = { fg = t.blue, bg = t.bg },
        CmpItemAbbrMatchFuzzy = { fg = t.blue, bg = t.bg },

        CmpItemMenu = { fg = t.grey, bg = t.bg },

        CmpItemKindDefault = { fg = t.bgHighlight, bg = t.bg },

        -- Leap
        LeapMatch = { fg = t.fg, bg = t.magenta },
        LeapLabelPrimary = { fg = t.blue, bg = t.bg, bold = true },
        LeapLabelSecondary = { fg = t.green, bg = t.bg },
        LeapBackdrop = { fg = t.bgHighlight },

        -- Lazy
        LazyProgressDone = { bold = true, fg = t.magenta },
        LazyProgressTodo = { bold = true, fg = t.grey },
    }

    return theme
end

return M
