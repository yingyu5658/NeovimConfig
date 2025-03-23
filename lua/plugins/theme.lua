return {
  -- 添加gruvbox.nvim插件
  { "ellisonleao/gruvbox.nvim" },
  -- 覆盖LazyVim默认主题配置
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight", -- 设置主题为gruvbox
      -- vim.o.background == "dark", -- 或 "light" 切换为亮色模式
    },
  },

  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {
      style = "night",
      transparent = true, -- 启用透明背景
      styles = {
        sidebars = "transparent", -- 浮动窗口透明
        floats = "transparent", -- 侧边栏透明
      },
    },
  },

  -- 或者带配置安装
  --[[ {
    "projekt0n/github-nvim-theme",
    lazy = false, -- 确保如果它是主要配色方案，则在启动时加载
    priority = 1000, -- 确保先于其他启动插件加载
    config = function()
      require("github-theme").setup({
        -- ...
      })

      --vim.cmd("colorscheme github_dark_dimmed")
    end,
  },
  --]]
}
