local caps = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("rust_analyzer", {
  cmd = { "rust-analyzer" },
  filetypes = { "rust" },
  root_markers = { "Cargo.toml", "Cargo.lock" },
  capabilities = caps,
  settings = {
    ["rust-analyzer"] = {
      cargo = { allFeatures = true },
      checkOnSave = true,
      check = { command = "clippy" },
    },
  },
})
vim.lsp.enable("rust_analyzer")

vim.lsp.config("clangd", {
  cmd = { "clangd" },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_markers = { "compile_commands.json", "compile_flags.txt", ".git" },
  capabilities = caps,
})
vim.lsp.enable("clangd")

vim.lsp.config("pyright", {
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  root_markers = { "pyproject.toml", "setup.py", "setup.cfg", ".git" },
  capabilities = caps,
})
vim.lsp.enable("pyright")

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local opts = { buffer = args.buf }
    vim.keymap.set("n", "gd",          vim.lsp.buf.definition,     opts)
    vim.keymap.set("n", "gD",          vim.lsp.buf.declaration,    opts)
    vim.keymap.set("n", "gi",          vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "gr",          vim.lsp.buf.references,     opts)
    vim.keymap.set("n", "gt",          vim.lsp.buf.type_definition,opts)
    vim.keymap.set("n", "K",           vim.lsp.buf.hover,          opts)
    vim.keymap.set("n", "<C-k>",       vim.lsp.buf.signature_help, opts)
    vim.keymap.set("n", "<leader>rn",  vim.lsp.buf.rename,         opts)
    vim.keymap.set("n", "<leader>ca",  vim.lsp.buf.code_action,    opts)
    vim.keymap.set("n", "<leader>f",   function()
      vim.lsp.buf.format({ async = true })
    end, opts)
    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev,  opts)
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next,  opts)
    vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
    vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, opts)
  end,
})
