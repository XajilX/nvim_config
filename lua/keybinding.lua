vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.api.nvim_set_keymap
local key_opt = { noremap = true, silent = true }

keymap('n', 's', '', key_opt)
keymap('n', 'sv', ':vsp<CR>', key_opt)
keymap('n', 'sh', ':sp<CR>', key_opt)
keymap('n', 'sc', '<C-w>c', key_opt)
keymap('n', 'so', '<C-w>o', key_opt)

keymap('n', '<C-Left>', ':vertical resize -2<CR>', key_opt)
keymap('n', '<C-Right>', ':vertical resize +2<CR>', key_opt)
keymap('n', '<C-Up>', ':resize -2<CR>', key_opt)
keymap('n', '<C-Down>', ':resize +2<CR>', key_opt)

keymap('n', 'sth', ':sp | terminal<CR>', key_opt)
keymap('t', '<ESC>', [[<C-\><C-n>]], key_opt)
keymap('t', '<A-h>', [[<C-\><C-n><C-w>h]], key_opt)
keymap('t', '<A-j>', [[<C-\><C-n><C-w>j]], key_opt)
keymap('t', '<A-k>', [[<C-\><C-n><C-w>k]], key_opt)
keymap('t', '<A-l>', [[<C-\><C-n><C-w>l]], key_opt)

keymap('n', '<A-m>', ':NvimTreeToggle<CR>', key_opt)
keymap("n", "<A-h>", "<C-w>h", key_opt)
keymap("n", "<A-j>", "<C-w>j", key_opt)
keymap("n", "<A-k>", "<C-w>k", key_opt)
keymap("n", "<A-l>", "<C-w>l", key_opt)


return {
    cmp = function()
        local cmp = require'cmp'
        return {
            ['<C-k>'] = cmp.mapping.select_prev_item(),
            ['<C-j>'] = cmp.mapping.select_next_item(),
            ['<CR>'] = cmp.mapping.confirm {
                select = true,
                behavior = cmp.ConfirmBehavior.Replace
            },
            ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), {'i','c'}),
            ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), {'i','c'}),
        }
    end,
}
