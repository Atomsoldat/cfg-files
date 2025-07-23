-- https://github.com/folke/lazy.nvim

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- see here for more options
-- http://neovim.io/doc/user/options.html
-- vim.o is equivalent to :set
vim.o.wrap = true
vim.o.number = true
vim.o.relativenumber = true

-- http://neovim.io/doc/user/change.html#fo-table
-- disable automatic addition of comment symbols on newlines while in a comment
local function remove_ro_from_formatoptions()
  vim.opt.formatoptions:remove('r')
  vim.opt.formatoptions:remove('o')
end

-- Apply this function on every FileType event (i.e., every buffer once filetype assigned)
-- I only got this to work this way, because the package provided filetype based files
-- under /usr/share/nvim/runtime/ftplugin get executed after this file it seems...
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = remove_ro_from_formatoptions,
})

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  -- notify false means we don't get the little popup window each time
  checker = { enabled = true, notify = false },
})
