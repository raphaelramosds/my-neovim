return {
    -- amongst your other plugins
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        -- config = true
        opts = {
            -- CTRL + j to toggle terminal
            open_mapping = [[<c-j>]],
            size = function(term)
                if term.direction == "horizontal" then
                    return 30
                elseif term.direction == "vertical" then
                    return vim.o.columns * 0.4
                end
            end
        }
    }
    -- or
    -- {'akinsho/toggleterm.nvim', version = "*", opts = {--[[ things you want to change go here]]}}
}
