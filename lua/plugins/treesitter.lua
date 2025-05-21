return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = { -- Use 'opts' here for the plugin's configuration
    ensure_installed = { "astro", "tsx", "typescript", "html", "lua", "javascript", "php", "blade" },
    auto_install = true,
    highlight = {
      enable = true,
    },
    indent = {
      enable = true
    }
  },
  config = function(_, opts) -- 'config' function runs after plugin is loaded.
    -- Apply the opts here, as LazyVim passes them to 'config'
    require("nvim-treesitter.configs").setup(opts)

    -- Define the blade parser for treesitter (this part was correct)
    local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
    parser_config.blade = {
      install_info = {
        url = "https://github.com/EmranMR/tree-sitter-blade",
        files = { "src/parser.c" },
        branch = "main",
      },
      filetype = "blade",
      indent = {
        enable = true
      }
    }
  end,
}
