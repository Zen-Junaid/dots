vim.opt.guicursor = ''
vim.opt.cursorline = true

vim.o.termguicolors = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.scrolloff = 10

vim.g.mapleader = ' '

vim.o.foldmethod = 'expr'
vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.o.foldlevel = 3

vim.o.undofile = true

if vim.fn.has("wsl") == 1 then
    vim.opt.clipboard = "unnamedplus"
    vim.g.clipboard = {
        name = "win32yank",
        copy = { ["+"] = "win32yank -i --crlf", ["*"] = "win32yank -i --crlf" },
        paste = { ["+"] = "win32yank -o --lf", ["*"] = "win32yank -o --lf" },
        cache_enabled = 0,
    }
end

vim.opt.splitbelow = true

vim.filetype.add({
    extension = {
        blade = "blade",
    },
    pattern = {
        ['.*%.blade%.php'] = 'blade',
    }
})

vim.api.nvim_create_autocmd("TermOpen", {
  callback = function()
    vim.b.tmux_navigator_disable = true
  end,
})
