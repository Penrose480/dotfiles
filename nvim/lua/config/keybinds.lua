vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", "<cmd>Oil<CR>", { desc = "Open Oil"})
vim.keymap.set("n", "<leader>-", "<cmd>Oil --float<CR>", { desc = "Open Oil (float)" })
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Toggle Undotree' })

