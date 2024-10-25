-- ######### Setting Vim options #########

-- Show line numbers
vim.opt.number = true

vim.opt.relativenumber = true

vim.opt.ignorecase = true



-- ######### Mapping keys (keymap) #########

-- Yank buffer into system clipboard and then quit
vim.keymap.set('n', '<Leader>yq', 'gg0vG$"+y:q!<cr>')


-- ######### Setting global variables #########

-- Global variables look like "g:[variable name]".
-- For example, setting the "g:markdown_folding" global variable here enables
-- folding in Markdown files and creates folds for each heading level in them
-- for you.
vim.g.markdown_folding = 1


-- ######### Plugin manager #########
-- Plugins have individual config files in _lua/plugins/_ directory.
require("config.lazy")



