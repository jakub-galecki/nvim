function ColorMyPencils(color)
    vim.g.gruvbox_material_transparent_background = 1
    vim.g.gruvbox_material_background = 'medium'
    vim.g.gruvbox_material_foreground = 'mix'
    require("catppuccin").setup({
        flavour = "auto", -- latte, frappe, macchiato, mocha
        background = {    -- :h background
            light = "latte",
            dark = "mocha",
        },
        transparent_background = true,
    })
    require('nightfox').setup({
        options = {
            transparent = true,
        }
    })
    require('tairiki').setup {
--        style = 'dimmed',
--         transparent = true,
    }
    require('lualine').setup()
    color = color or "catppuccin-macchiato"
    vim.cmd.colorscheme(color)
end

ColorMyPencils()

-- vim.cmd[[ hi Normal guibg='#171717' ]]
