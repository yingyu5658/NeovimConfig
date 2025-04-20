return {

    -- 针对 C/C++ 的增强配置
    {
        "p00f/clangd_extensions.nvim",
        ft = { "c", "cpp" },
        dependencies = {
            {
                "williamboman/mason.nvim",
                opts = {
                    ensure_installed = { "clang-format", "cpplint" }
                }
            }
        },
        config = function()
            require("clangd_extensions").setup({
                ast = {
                    role_icons = {
                        type = "🅣",
                        declaration = "🅓",
                        expression = "🅔"
                    }
                }
            })
        end
    }
}
