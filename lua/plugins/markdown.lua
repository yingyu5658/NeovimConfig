-- LazyVim Markdown 配置 (Arch Linux)
-- 快捷键说明：
--   <leader>mp = 打开/关闭 Markdown 实时预览
--   <leader>mt = 生成/更新目录 (需安装 vim-markdown-toc)
-- 依赖：需安装 nodejs 和浏览器（如 Firefox/Chrome）

return {
  -- Markdown 实时预览插件（核心插件）
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    keys = {
      { "<leader>mp", "<cmd>MarkdownPreviewToggle<CR>", desc = "Markdown 预览切换" },
    },
    config = function()
      vim.g.mkdp_browser = "firefox" -- 指定 Linux 默认浏览器
      vim.g.mkdp_auto_close = 0 -- 关闭自动退出预览
    end,
  },

  -- 自动生成目录
  {
    "mzlogin/vim-markdown-toc",
    ft = "markdown",
    keys = {
      { "<leader>mt", "<cmd>GenTocGFM<CR>", desc = "生成目录" },
    },
    config = function()
      vim.g.vmt_auto_update_on_save = 1 -- 保存时自动更新目录
    end,
  },

  -- Markdown 语法增强
  {
    "preservim/vim-markdown",
    ft = "markdown",
    dependencies = { "godlygeek/tabular" },
    config = function()
      vim.g.vim_markdown_folding_disabled = 1 -- 禁用折叠
      vim.g.vim_markdown_conceal_code_blocks = 0 -- 显示代码块符号
    end,
  },

  {
    "dhruvasagar/vim-table-mode",
    ft = "markdown",
    init = function()
      vim.g.table_mode_corner = "|" -- 表格符号风格
    end,
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local null_ls = require("null-ls")
      opts.sources = {
        null_ls.builtins.diagnostics.markdownlint.with({
          extra_args = { "--config", "/home/yingyu5658/.markdownlint.json" },
        }),
      }
      return opts
    end,
  },
}
