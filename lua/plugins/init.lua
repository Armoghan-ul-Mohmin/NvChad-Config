return {
    {
        "stevearc/conform.nvim",
        event = "BufWritePre",
        opts = require "configs.conform"
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end
    },
    {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
            require("custom.configs.null-ls")
        end,
        requires = {"nvim-lua/plenary.nvim"}
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim",
                "vimdoc",
                "lua",
                "python",
                "vimdoc",
                "javascript",
                "typescript",
                "html",
                "css",
                "bash",
                "ruby",
                "markdown",
                "powershell",
                "sql",
                "json",
                "comment",
                "c",
                "cpp",
                "dockerfile",
                "xml",
                "toml",
                "go"
            }
        }
    }
}
