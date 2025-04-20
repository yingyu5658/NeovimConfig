local opt          = vim.opt
local g            = vim.g
local o            = vim.o
local api          = vim.api

g.snacks_animate   = false
g.encoding         = "UTF-8"
opt.number         = true
opt.tabstop        = 4
opt.shiftwidth     = 4
opt.softtabstop    = 4
opt.expandtab      = true
opt.autoindent     = true
opt.smartindent    = true
opt.relativenumber = false
opt.shortmess:remove("I")
o.fileencoding = "utf-8"
api.nvim_set_hl(0, "LineNr", { fg = "#fffb0d" })
vim.g.lazyvim_check_order = false
