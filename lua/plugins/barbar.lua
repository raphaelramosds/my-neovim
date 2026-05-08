return {
    {
        'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
            'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        init = function() 
            vim.g.barbar_auto_setup = false
            vim.keymap.set('n', '<c-f>', '<Cmd>BufferClose<CR>', {})
            -- ALT + h to go to previous tab
            -- ALT + l to go to next tab
            vim.keymap.set('n', '<A-h>', '<Cmd>BufferPrevious<CR>', {})
            vim.keymap.set('n', '<A-l>', '<Cmd>BufferNext<CR>', {})
        end,
        opts = {},
        version = '^1.0.0', -- optional: only update when a new 1.x version is released
        -- config = function ()
        -- vim.keymap.set('n', '<C-w>s', '<Cmd>BufferClose<CR>', {})
        -- end
    },
}
