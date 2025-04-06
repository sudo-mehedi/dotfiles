return {
  "windwp/nvim-ts-autotag",
  event = "InsertEnter", -- Or other events you prefer
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("nvim-ts-autotag").setup()
  end,
}
