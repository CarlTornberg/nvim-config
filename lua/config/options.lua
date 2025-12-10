local opt = vim.opt

--- opt.guicursor = "" --- Always fat cursor.
opt.nu = true
opt.relativenumber = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = false
opt.mouse = "a"

-- LSP Diagnostics Options Setup 
vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    update_in_insert = true,
    underline = true,
    severity_sort = true,
    float = {
        border = 'rounded',
        source = 'always',
        header = '',
        prefix = '',
    },
})

vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])

--- Long term Undo's
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"
vim.opt.undofile = true

--- None highlighted search, also allows to do * and more in search
vim.opt.hlsearch = false
vim.opt.incsearch = true

--- Actually dont know, nice colors somewhere?..
vim.opt.termguicolors = true

--- Better scrolling experience
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

--- Fast updates
vim.opt.updatetime = 50

--- Colored column
vim.opt.colorcolumn = "80"

--- Spellchecking
vim.opt.spelllang = "en_us"
vim.opt.spell = true        --- To see suggestions: z=    To go to next error: ]s    prev error [s
