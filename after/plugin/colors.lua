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
            light = "macchiato",
            dark = "frappe",
        },
        transparent_background = true,
    })

    require('material').setup({
        disable = {
            background = true,
        },
    })

    require('nightfox').setup({
      options = {
       transparent = true,
      }
    })

    vim.g.everforest_transparent_background = 1
    vim.g.everforest_background = 'medium'

    vim.g.gruvbox_material_transparent_background = 1
    vim.g.gruvbox_material_background = 'hard'

    vim.g.gruvbox_transparent_bg = 1
    vim.g.gruvbox_contrast_dark = 'hard'
    color = color or "nightfox"
    vim.cmd.colorscheme(color)
end

ColorMyPencils()

-- vim.cmd[[ hi Normal guibg='#171717' ]]
