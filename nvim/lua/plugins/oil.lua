return {
  "stevearc/oil.nvim",
  lazy = false,   -- load immediately
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup()
  end,
}
