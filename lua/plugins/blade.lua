return {
  -- Auto-detect .blade.php files as 'blade' filetype
  {
    "EmranMR/tree-sitter-blade", -- Mentioning this plugin helps lazy.nvim know about it
    lazy = false, -- Load this early if needed for filetype detection
    config = function()
      vim.filetype.add({
        pattern = {
          ['%.*%.blade%.php'] = 'blade',
        },
      })
      vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
        pattern = "*.blade.php",
        callback = function()
          vim.opt.filetype = "blade"
        end,
      })
    end
  }
}
