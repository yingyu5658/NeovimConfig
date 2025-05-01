-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.js", "*.ts", "*.jsx", "*.tsx" },
  callback = function()
    require("conform").format({ async = true })
  end,
})

vim.keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format({ async = true })
end, { desc = "Format code" })

-- 十六进制文件
vim.keymap.set("n", "0x", function()
  vim.cmd("%!xxd")
end, { desc = "查看十六进制文件" })
