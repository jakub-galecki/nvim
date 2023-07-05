function ColorMyPencils(color)
    require('onedark').setup {
        style = 'darker'
    }
	color = color or "tokyonight-night"
	vim.cmd.colorscheme(color)
end	

ColorMyPencils()

