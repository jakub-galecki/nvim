function ColorMyPencils(color)
    require('onedark').setup {
        style = 'darker'
    }
	color = color or "material-darker"
	vim.cmd.colorscheme(color)
end	

ColorMyPencils()

