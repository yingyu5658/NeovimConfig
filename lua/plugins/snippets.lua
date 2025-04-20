return {
    {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" }, -- 社区代码片段库
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load() -- 加载 VSCode 格式片段
            require("luasnip").setup({
                update_events = { "TextChanged", "TextChangedI" }, -- 动态更新片段
            })
        end,
    }
}
