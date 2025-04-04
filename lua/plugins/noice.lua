-- 在 plugins/noice.lua 或类似文件中
return {
  {
    "folke/noice.nvim",
    enabled = true, -- 完全禁用插件（不加载）
    dir = "~/.local/share/nvim/lazy/noice.nvim", -- 指向本地路径
    lazy = true, -- 阻止自动加载
    config = function() end,
  },
}
