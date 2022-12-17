local status, telescope = pcall(require, "telescope")
if (not status) then return end
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  },
  pickers = {
    find_files = {
      theme = 'ivy'
    },
    buffers = {
      theme = 'ivy'
    },
    live_grep = {
      theme = 'ivy'
    },
  },
}

vim.keymap.set('n', 'ff',
  function()
    builtin.find_files({
      no_ignore = false,
      hidden = true,
      previewer = false,
    })
  end)
vim.keymap.set('n', 'fg', function()
  builtin.live_grep()
end)
vim.keymap.set('n', 'fb', function()
  builtin.buffers()
end)
vim.keymap.set('n', 'fd', function()
  builtin.diagnostics()
end)
