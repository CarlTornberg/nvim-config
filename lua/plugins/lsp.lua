return {
  --- Binds the LSP 

  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    lspconfig.lua_ls.setup({})
    lspconfig.ts_ls.setup({})
    vim.keymap.set("n", "<C-i>", vim.lsp.buf.hover, {})

    vim.keymap.set("n", "<leader>f", function()
      vim.lsp.buf.format()
    end)
  end,
}
