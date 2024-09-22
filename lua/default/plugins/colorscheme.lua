return {
  "folke/tokyonight.nvim",
  priority = 1000,
  config = function()
    local bg_search = "#011628"
    local bg_dark = "#011423"
    local bg_visual = "#275378"
    local fg = "#CBE0F0"
    local fg_dark = "#B4D0E9"
    local border = "#547998"

    require("tokyonight").setup({
      style = "night",
      on_colors = function(colors)
        colors.bg_float = bg_dark
        colors.bg_popup = bg_dark
        colors.bg_search = bg_search
        colors.bg_sidebar = bg_dark
        colors.bg_statusline = bg_dark
        colors.bg_visual = bg_visual
        colors.border = border
        colors.fg_float = fg
        colors.fg_sidebar = fg_dark
      end,
    })

    vim.cmd("colorscheme tokyonight")
  end,
}
