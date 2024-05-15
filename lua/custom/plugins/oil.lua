return {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function ()
        local oil = require('oil')
        oil.setup()
        vim.keymap.set('n', '<leader>st', oil.open)
    end
}
