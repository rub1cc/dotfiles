local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

keymap.set('i', 'kk', '<esc>')
keymap.set('i', 'jj', '<esc>')
keymap.set('n', ';', ':')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit<CR>')
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- formatting
keymap.set('n', 'fn', ':lua vim.lsp.buf.format { async = true }<CR>')

-- GitSigns
keymap.set('n', 'bl', ':Gitsigns blame_line<CR>')

-- nvim tree
keymap.set('n', 'fe', ':NvimTreeOpen<CR>')
keymap.set('n', 'fc', ':NvimTreeFindFile<CR>')

-- floaterm
keymap.set('n', '<C-\\>', ':Lspsaga open_floaterm<CR>')
keymap.set('t', '<C-\\>', '<C-\\><C-n>:Lspsaga close_floaterm<CR>')

-- go to top/bottom with centered cursor
keymap.set('', '<C-u>', '<C-u>zz')
keymap.set('', '<C-d>', '<C-d>zz')

-- open fugitive diff
keymap.set('n', 'gv', ':Gvdiffsplit<CR>')
