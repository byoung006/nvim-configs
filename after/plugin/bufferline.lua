vim.opt.termguicolors = true
require("bufferline").setup {
    options = {
        mode = "tabs",
        indicator = {
            icon = "▎",
        },
        diagnostics = "nvim_lsp",
        show_close_icon = true,
        separator_style = "thick",
    }
}
