
require("config.lazy")

-- ### LEONS STUFF ###

-- lazyvim sets this for us already
-- vim.g.mapleader = " "

-- in normal mode, turn the 2nd argument into the 3rd argument
vim.keymap.set('n', '<leader>n', ':bnext<CR>')
vim.keymap.set('n', '<leader>p', ':bprevious<CR>')


vim.opt.wrap = true

