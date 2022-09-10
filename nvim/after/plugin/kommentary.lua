local Remap = require("wafle.keymap")
local nmap = Remap.nmap
local xmap = Remap.xmap

vim.g.kommentary_create_default_mappings = 0

nmap("<leader>cc", "<Plug>kommentary_line_default")
nmap("<leader>c", "<Plug>kommentary_motion_default")
xmap("<leader>c", "<Plug>kommentary_visual_default")
