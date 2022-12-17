local status, plugin = pcall(require, "indent_blankline")
if (not status) then return end

vim.opt.background = "dark"
vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent guifg=#404040 gui=nocombine]]

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

plugin.setup({
  space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = true,
  char_highlight_list = {
    "IndentBlanklineIndent",
  },
})
