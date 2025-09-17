return {
  --- Rust things

  'mrcjkb/rustaceanvim',
  version = '^6', -- Recommended
  lazy = false, -- This plugin is already lazy
  dependencies = {
    "mfussenegger/nvim-dap",
    "nvim-treesitter/nvim-treesitter",
  },
  ["rust-analyzer"] = {
    cargo = {
      allFeatures = true,
    }
  },
  }
