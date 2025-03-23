-- ~/.config/nvim/lua/plugins/editor.lua
return {
  { "L3MON4D3/LuaSnip" }, -- 代码片段引擎
  { "rafamadriz/friendly-snippets" }, -- 通用片段库
  { "nvim-telescope/telescope.nvim", tag = "0.1.6" }, -- 文件搜索
  --[[{
    "lukas-reineke/lsp-format.nvim",
    event = "BufWritePre", -- 绑定到保存前事件
    config = function()
      require("lsp-format").setup()
    end,
  },
  --]]

  {
    "godlygeek/tabular",
    keys = {
      { "<leader>ta", ":Tabularize /", mode = { "n", "x" }, desc = "Align by Symbol" },
    },
  },
}
