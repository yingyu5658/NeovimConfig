require("config.lazy")
require("plugins.markdown")
vim.opt.number = true -- 绝对行号
vim.opt.relativenumber = false -- 相对行号
vim.api.nvim_set_hl(0, "LineNr", { fg = "#FFD700" }) -- 所有行号设为金色
vim.api.nvim_set_hl(1, "CursorLineNr", { fg = "#FFD700" }) -- 保持当前行与普通行一致
vim.opt.guicursor = "n-v-c-sm-i-ci-ve-r-cr-o:block" -- 光标样式全部为方块
vim.opt.list = false -- 禁用空白字符符号
vim.opt.conceallevel = 0 -- 完全禁用符号隐藏
vim.opt.textwidth = 80 -- 自动折行宽度
vim.opt.wrap = true -- 启用软折
vim.opt.smoothscroll = false -- 关闭原生平滑滚动（若存在）
-- vim.g.autoformat = false                                   -- 禁用保存自动格式化

-- 禁用markdown中文拼写检查
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.spell = false -- 关闭拼写检查
    -- 若需要保留其他语言的拼写检查（如英文），可单独设置语言：
    -- vim.opt_local.spelllang = "en"
  end,
})
