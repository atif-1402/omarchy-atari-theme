return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#292329", -- Default background
                base01 = "#877887", -- Lighter background (status bars)
                base02 = "#292329", -- Selection background
                base03 = "#877887", -- Comments, invisibles
                base04 = "#dcd8d6", -- Dark foreground
                base05 = "#dcd6d6", -- Default foreground
                base06 = "#dcd6d6", -- Light foreground
                base07 = "#dcd8d6", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#b9746f", -- Variables, errors, red
                base09 = "#d9aeab", -- Integers, constants, orange
                base0A = "#c3b283", -- Classes, types, yellow
                base0B = "#79be9a", -- Strings, green
                base0C = "#a2d2b9", -- Support, regex, cyan
                base0D = "#9db9b2", -- Functions, keywords, blue
                base0E = "#cd9b98", -- Keywords, storage, magenta
                base0F = "#e3d9bf", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
