return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
  require("lspconfig").clangd.setup({
    cmd = { "clangd", "--compile-commands-dir=build", "-std=c++23" },
  }),
}
