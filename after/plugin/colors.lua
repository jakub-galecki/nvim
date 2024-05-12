function ColorMyPencils(color)
    require('onedark').setup {
        style = 'darker'
    }
    require('kanagawa').setup {
        compile = false,             -- enable compiling the colorscheme
        undercurl = true,            -- enable undercurls
        commentStyle = { italic = true },
        keywordStyle = { italic = false},
        statementStyle = { bold = true },
        transparent = true,         -- do not set background color
        dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
        terminalColors = true,       -- define vim.g.terminal_color_{0,17}
        theme = "wave",              -- Load "wave" theme when 'background' option is not set
    }
    color = color or "base16-tomorrow-night"
    vim.cmd.colorscheme(color)
end

ColorMyPencils()

