-- example file i.e lua/custom/init.lua

-- load your globals, autocmds here or anything .__.
vim.cmd [[
set autoindent expandtab tabstop=2 shiftwidth=2
]]
vim.opt.mouse = "a"
vim.g.nvim_tree_show_icons = {
  git = 1,
  folders = 0,
}
-- Set font size for Neovide & vfx mode
vim.g.neovide_cursor_vfx_mode = "railgun"
vim.g.gui_font_default_size = 10.5
vim.g.gui_font_size = vim.g.gui_font_default_size
vim.g.gui_font_face = "JetBrainsMono Nerd Font"
vim.g.neovide_transparency = 0.85
function font_set()
  vim.opt.guifont = string.format("%s:h%s", vim.g.gui_font_face, vim.g.gui_font_size)
end
function increment_font(increment)
  vim.g.gui_font_size = vim.g.gui_font_size + increment
  font_set()
end
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "=", ":lua increment_font(0.5)<CR>", { silent = true })
map("n", "-", ":lua increment_font(-0.5)<CR>", { silent = true })
map("n", "-r", ":lua vim.g.gui_font_size = vim.g.gui_font_default_size; font_set()<CR>", { silent = true })
font_set()
