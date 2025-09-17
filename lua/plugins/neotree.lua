return {
  --- Nicer file explorer in nvim 

  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    --- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  lazy = false,
  ---@module "neo-tree"
  ---@type neotree.Config?
  opts = {
    -- options here..
  },
  config = function ()
    vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>")
  end
}
