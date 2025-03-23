-- ~/.config/nvim/lua/plugins/extras/lang/typescript.lua
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        eslint = {
          on_attach = function(client, bufnr)
            vim.api.nvim_create_autocmd("BufWritePre", {
              buffer = bufnr,
              command = "EslintFixAll",
            })
          end,
        },
      },
    },
  },
  { "MunifTanjim/prettier.nvim", config = true }, -- 自动格式化
}
