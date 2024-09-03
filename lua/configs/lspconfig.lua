-- Load defaults, i.e., lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

-- LSP servers
local servers = {
    "html",
    "cssls",
    "tsserver",
    "pylsp",
    "gopls",
    "solargraph",
    "clangd",
    "taplo",
    "bashls",
    "dockerls",
    "ruby_lsp",
    "powershell_es",
    "markdown_oxide"
}

-- Set up each LSP server
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = nvlsp.on_attach,
        on_init = nvlsp.on_init,
        capabilities = nvlsp.capabilities
    }
end

-- Optional: Example of configuring a single LSP server individually
-- lspconfig.tsserver.setup {
--     on_attach = nvlsp.on_attach,
--     on_init = nvlsp.on_init,
--     capabilities = nvlsp.capabilities,
-- }
