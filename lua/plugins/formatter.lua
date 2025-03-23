return {
  {
    "mhartington/formatter.nvim",
    event = "BufWritePre",
    config = function()
      require("formatter").setup({
        filetype = {
          javascript = { require("formatter.filetypes.javascript").prettier },
          typescript = { require("formatter.filetypes.typescript").prettier },
          css = { require("formatter.filetypes.css").prettier },
          html = { require("formatter.filetypes.html").prettier },
          c = { require("formatter.filetypes.c").clangformat },
          cpp = { require("formatter.filetypes.cpp").clangformat },
          java = { require("formatter.filetypes.java").google_java_format },
        },
      })
    end,
  },
}
