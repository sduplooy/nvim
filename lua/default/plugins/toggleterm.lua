return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            size = function(term)
                if term.direction == "horizontal" then
                    return 15
                elseif term.direction == "vertical" then
                    return vim.o.columns * 0.4
                end
            end,
            shade_terminals = true,
            shading_factor = "50",
        })

        local keymap = vim.keymap

        keymap.set("n", "<leader>^", "<cmd>ToggleTerm direction=float<CR>", { desc = "Toggles floating terminal" })
        keymap.set(
            "n",
            "<leader>th",
            "<cmd>ToggleTerm direction=horizontal<CR>",
            { desc = "Toggles horizontal terminal" }
        )
        keymap.set(
            "n",
            "<leader>tv",
            "<cmd>ToggleTerm direction=vertical size=100<CR>",
            { desc = "Toggles vertical terminal" }
        )
        keymap.set("n", "<leader>ta", "<cmd>ToggleTermToggleAll<CR>", { desc = "Toggles all terminals" })
        keymap.set("t", "<esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
    end,
}
