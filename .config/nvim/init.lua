require('rub1cc.base')
require('rub1cc.highlights')
require('rub1cc.maps')
require('rub1cc.plugins')
require('rub1cc.commands')

local has = function(x)
  return vim.fn.has(x) == 1
end
local is_mac = has "macunix"
local is_win = has "win32"

-- Use node 12 for github copilot
--vim.g.copilot_node_command = "~/.nvm/versions/node/v12.22.12/bin/node"

if is_mac then
  require('rub1cc.macos')
end
if is_win then
  require('rub1cc.windows')
end
