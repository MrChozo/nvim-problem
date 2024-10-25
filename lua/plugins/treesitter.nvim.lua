return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 

-- Uncomment and add your configuration here, I guess. Using just this
-- currently breaks stuff for me for whatever reason.
--
--       local configs = require("nvim-treesitter.configs")

--       configs.setup({
--         ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
--         sync_install = false,
--         highlight = { enable = true },
--         indent = { enable = true },  
--       })
    end
 }
