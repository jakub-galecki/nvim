vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>ggt", vim.cmd.GitGutterToggle)
vim.keymap.set("n", "<leader>ggb", vim.cmd.BlamerToggle)
vim.keymap.set("n", "]c", vim.cmd.GitGutterNextHunk)
vim.keymap.set("n", "[c", vim.cmd.GitGutterPrevHunk)
vim.keymap.set("n", "<leader>ggs", vim.cmd.GitGutterPreviewHunk)

local api = require "nvim-tree.api"
vim.keymap.set("n", "<leader>fe", api.tree.toggle)

require("nvim-tree").setup()


