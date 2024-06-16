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

    require("tokyonight").setup({
         transparent = true,
         day_brightness = 0.2
    })
    require("catppuccin").setup({
        flavour = "auto", -- latte, frappe, macchiato, mocha
        background = { -- :h background
            light = "latte",
            dark = "mocha",
        },
        transparent_background = true,
    })
    vim.g.gruvbox_baby_function_style = "NONE"
    color = color or "catppuccin"
    vim.cmd.colorscheme(color)
end	

ColorMyPencils()

vim.cmd[[ hi Normal guibg='#171717' ]]
