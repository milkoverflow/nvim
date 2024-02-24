return {
    'folke/which-key.nvim',
    opts = {},
    event = 'VeryLazy',
    config = function()
        local wk = require('which-key')
        wk.setup()
        wk.register({
            g = { name = 'Git...' },
            L = { name = 'Lazy...' },
            p = { name = 'Project...' },
            w = { name = 'Wiki...' },
            s = { name = 'Filesys...' },
            r = { name = 'Refactoring...' }
        }, { prefix = '<leader>' })

        wk.register({
            r = { name = 'Refactoring...' }
        }, { prefix = '<leader>', mode = 'v' })

        vim.api.nvim_create_autocmd('LspAttach', {
            callback = function(ev)
                wk.register({
                    g = { name = 'Git...' },
                    l = { name = 'LSP...' }
                }, { prefix = '<leader>', buffer = ev.buf })
            end
        })
    end
}
