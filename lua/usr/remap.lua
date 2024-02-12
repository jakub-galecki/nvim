vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>ggt", vim.cmd.GitGutterToggle)
vim.keymap.set("n", "<leader>ggb", vim.cmd.BlamerToggle)
vim.keymap.set("n", "]h", vim.cmd.GitGutterNextHunk)
vim.keymap.set("n", "[h", vim.cmd.GitGutterPrevHunk)
vim.keymap.set("n", "<leader>ggs", vim.cmd.GitGutterPreviewHunk)

