return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",

  main = "nvim-treesitter.configs",

  opts = {
    ensure_installed = {
      "lua",
      "bash",
      "c",
      "vim",
      "vimdoc",
      "python",
      "javascript",
      "html",
      "css",
    },
    highlight = {
      enable = true,
    },

    indent = {
      enable = true,
    },
  },
}

