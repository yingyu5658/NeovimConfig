return {
  {
    "nvimdev/indentmini.nvim",
    event = "VeryLazy",
    config = function()
      require("indentmini").setup({
        char = "│", -- 更细的竖线字符
      })
      vim.cmd("highlight IndentLine guifg=#4a5262") -- 自定义颜色
    end,
  },
}
