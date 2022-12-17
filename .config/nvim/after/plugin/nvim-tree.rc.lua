local status, nvim_tree = pcall(require, "nvim-tree")
if (not status) then return end

local config_status, nvim_tree_config = pcall(require, "nvim-tree.config")
if (not config_status) then return end

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup({
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  sort_by = "case_sensitive",
  view = {
    side = 'right',
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = { "l", "<CR>", 'o' }, cb = tree_cb "edit" },
        { key = "h", cb = tree_cb "close_node" },
        { key = 'v', cb = tree_cb "vsplit" },
      },
    },
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {},
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  diagnostics = {
    enable = true,
    icons = {
      error = " ",
      warning = " ",
      hint = " ",
      info = " "
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
