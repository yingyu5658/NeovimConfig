--[[ return {
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                c = { "clang_format" },
                cpp = { "clang_format" },
            },
            formatters = {
                clang_format = {
                    prepend_args = { "-style=file" }, -- 读取项目根目录的 .clang-format 文件
                },
            },
        },
    },
}

--]]


return {
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                c = { "clang_format" },
                cpp = { "clang_format" },
                javascript = { "prettier" },      -- JS 基础格式化
                javascriptreact = { "prettier" }, -- React JSX 支持
                typescript = { "prettier" },      -- TypeScript 支持
                typescriptreact = { "prettier" }, -- TSX 支持
            },
            formatters = {
                clang_format = {
                    prepend_args = { "-style=file" },
                },
                prettier = {
                    command = "/home/yingyu5658/.local/share/nvim/mason/bin/prettier",
                    args = { "--stdin-filepath", "$FILENAME" },
                    prepend_args = {
                        "--config-precedence", "prefer-file", -- 优先使用项目配置文件
                        "--single-quote",                     -- 强制单引号（可选）
                        "--trailing-comma", "all"             -- 尾随逗号规则（可选）
                    },
                    -- 若需指定全局 fallback 配置（当项目无配置文件时）
                    -- cwd = require("conform.util").root_file({ ".prettierrc", ".editorconfig" }),
                    -- condition = function(ctx)
                    --   return vim.fs.find({ ".prettierrc" }, { path = ctx.filename, upward = true })[1]
                    -- end
                }
            },
        },
    }
}
