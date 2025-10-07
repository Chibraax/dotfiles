local inlay_hint = require("vim.lsp.inlay_hint")
return {
  {
    "VonHeikemen/lsp-zero.nvim",
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()),
    branch = "v3.x",
    lazy = true,
    config = false,
    init = function()
      vim.g.lsp_zero_extend_lspconfig = 0
    end,
    inlay_hint.enable(false, vim.lsp.inlay_hint.Filter),
  },
}
