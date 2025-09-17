return {
  --- Packer Manager

  "mason-org/mason.nvim",
  opts = { 
    ensure_installed = {
      "rust-analyzer",
      "typescript-language-server",
    }
  },
}
