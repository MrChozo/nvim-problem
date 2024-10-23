-- Plugin manager
require("config.lazy")

-- Show line numbers
vim.opt.number = true

vim.opt.relativenumber = true

vim.opt.ignorecase = true



vim.keymap.set('n', '<Leader>yq', 'gg0vG$"+y:q!<cr>')

vim.g.markdown_folding = 1


