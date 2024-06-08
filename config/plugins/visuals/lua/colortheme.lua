vim.cmd([[
  set background=light
  let g:everforest_background = 'soft'
  colorscheme everforest
]])
if vim.g.neovide then
  vim.g.neovide_cursor_animation_length = 0.12
end
