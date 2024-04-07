return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup()

        local keymap = vim.keymap

        keymap.set("n", "<C-^>", "<cmd>ToggleTerm direction=float<CR>", { desc = "Opens floating terminal" })
        keymap.set("n", "<C-t>", "<cmd>ToggleTerm direction=horizontal<CR>", { desc = "Opens horizontal terminal" })
    end,
}
