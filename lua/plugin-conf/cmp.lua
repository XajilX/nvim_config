local cmp = require'cmp'
require'cmp'.setup {
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end
    },
    sources = cmp.config.sources {
        { name = 'vsnip' },
        { name = 'nvim_lsp' },
        { name = 'path' }
    },
    mapping = require'keybinding'.cmp()
}

require'cmp'.setup.cmdline("/", {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})
