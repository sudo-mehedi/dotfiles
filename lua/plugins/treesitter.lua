return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("lazy").setup({
      {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        lazy = false,
        opts = {
          ensure_installed = { "astro", "tsx", "typescript", "html", "lua", "php", "html", "javascript"},
          auto_install = true,
          highlight = {
            enable = true,
          },
        },
      },
    })
  end,
}

--          ensure_installed = {'astro','lua', 'javascript', "php", "html"},
