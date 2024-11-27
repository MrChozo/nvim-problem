local M = {
    "nvim-treesitter/nvim-treesitter",
    init = function()
        require('nvim-treesitter.install').compilers = { 'zig' }
    end,
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
}

return { M }

