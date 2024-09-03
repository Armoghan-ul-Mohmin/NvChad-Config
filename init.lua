vim.g.base46_cache = vim.fn.stdpath("data") .. "/nvchad/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Use vim.loop instead of vim.uv
if not vim.loop.fs_stat(lazypath) then
    local repo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system {"git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath}
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup(
    {
        {
            "NvChad/NvChad",
            lazy = false,
            branch = "v2.5",
            import = "nvchad.plugins"
        },
        {import = "plugins"}
    },
    lazy_config
)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(
    function()
        require "mappings"
    end
)

-- Set up Python3 provider
vim.g.loaded_python3_provider = 1
vim.g.python3_host_prog = "/usr/bin/python3"

-- Enable Ruby provider
vim.g.loaded_ruby_provider = 1
vim.g.ruby_host_prog = "/usr/bin/ruby"

-- Enable Node.js provider
-- vim.g.loaded_node_provider = 1
-- vim.g.node_host_prog = '/usr/bin/npm'

-- Load custom headers module
local custom_headers = require("header_templates")

-- Set up autocmd for BufNewFile
vim.api.nvim_create_autocmd(
    "BufNewFile",
    {
        pattern = "*",
        callback = function()
            custom_headers.insert_header()
        end
    }
)
