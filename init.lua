-- #######################################
-- ######### Setting Vim options #########
-- #######################################

-- Show line numbers
vim.opt.number = true

vim.opt.relativenumber = true

vim.opt.ignorecase = true

-- Recommended session config for auto-session plugin
vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"


-- #######################################
-- ######## Mapping keys (keymap) ########
-- #######################################

-- Yank buffer into system clipboard and then quit
vim.keymap.set('n', '<Leader>yq', 'gg0vG$"+y:q!<cr>')

-- Yank full path of current buffer into clipboard register
vim.keymap.set('n', '<Leader>yp', ':let @+ = expand("%:p")<CR>')

-- Avoid yanking the text being replaced by a "Visual selection + regular
-- paste" replacement, instead keeping the text being pasted in the " register
vim.keymap.set('v', '<Leader>p', '"_dP')

-- Telescope keymaps below, after its initialization


-- #######################################
-- ###### Setting global variables #######
-- #######################################

-- Global variables look like "g:[variable name]".
-- For example, setting the "g:markdown_folding" global variable here enables
-- folding in Markdown files and creates folds for each heading level in them
-- for you.
vim.g.markdown_folding = 1


-- #######################################
-- ############### Plugins ###############
-- #######################################

-- Boot and configure the Lazy plugin manager
require("config.lazy")

-- Plugins have individual boot files in the _lua/plugins/_ directory

-- But some plugins need to be configured after 
require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- MASTER BRANCH HAS THESE. INCLUDE THEM AFTER NEXT RELEASE?
        -- ["<Left>"] = "results_scrolling_left",
        -- ["<Right>"] = "results_scrolling_right"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>fs', '<cmd>SessionSearch<CR>', { desc = 'Telescope switch auto-session' })



















