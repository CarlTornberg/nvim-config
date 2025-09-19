return {
  --- Binds the LSP 

  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.config('lua_ls', {})
    vim.lsp.enable('lua_ls')

    vim.lsp.config('ts_ls', {})
    vim.lsp.enable('ts_ls')

    vim.keymap.set("n", "<C-i>", vim.lsp.buf.hover, {})
    vim.keymap.set("n", "<leader>f", function()
      vim.lsp.buf.format()
    end)
  end,
}
