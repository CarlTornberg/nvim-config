return {
  --- Highlightning, indenting, etc

  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate',
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "lua", "rust", "toml" },
      auto_install = true,
      highlight = { 
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
    })
    -- Treesitter folding 
    vim.wo.foldmethod = 'expr'
    vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
  end,

}
