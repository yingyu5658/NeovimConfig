local opt          = vim.opt
local g            = vim.g
local o            = vim.o
local api          = vim.api

g.snacks_animate   = false
g.encoding         = "UTF-8"
opt.number         = true
opt.tabstop        = 4
opt.shiftwidth     = 2
opt.softtabstop    = 4
opt.expandtab      = true
opt.autoindent     = true
opt.smartindent    = true
opt.relativenumber = false
--vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })    -- 透明背景（需终端支持）
-- 或指定颜色值
vim.api.nvim_set_hl(0, 'Normal', { bg = '#12171A' }) -- 与终端背景色一致
opt.shortmess:remove("I")
o.fileencoding = "utf-8"
api.nvim_set_hl(0, "LineNr", { fg = "#fffb0d" })
vim.g.lazyvim_check_order = false
