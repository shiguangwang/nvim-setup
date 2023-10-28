local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {import = "me.plugins"},
  {import = "me.plugins.lsp"}
}, {
  install = {
    colorscheme = { "nightfly" }, -- always enable colorscheme when installing new plugins
  },
  checker = {
    enable = true, -- enable the update checker for plugins
    notify = false, -- no notification of the available updates when starting neovim
  },
  change_detection = {
    notify = false, -- no notification of plugin config changes
  },
})
