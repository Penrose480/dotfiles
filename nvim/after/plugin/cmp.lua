local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "clangd" },
})

require("mason-lspconfig").setup_handlers({
  function(server)
    require("lspconfig")[server].setup({
      capabilities = capabilities,
    })
  end,
})

