local null_ls = require("null-ls")

null_ls.setup(
    {
        sources = {
            -- Linters
            null_ls.builtins.diagnostics.stylelint, -- CSS linter
            null_ls.builtins.diagnostics.markdownlint, -- Markdown linter
            null_ls.builtins.diagnostics.rufo, -- Ruby linter
            null_ls.builtins.diagnostics.shellcheck, -- Bash linter (added for completeness)
            -- Formatters
            null_ls.builtins.formatting.prettier, -- JavaScript, HTML, PowerShell, and other formatters
            null_ls.builtins.formatting.stylua, -- Lua formatter
            null_ls.builtins.formatting.sqlfmt, -- SQL formatter
            null_ls.builtins.formatting.black, -- Python formatter
            null_ls.builtins.formatting.gofmt, -- Go formatter
            null_ls.builtins.formatting.clang_format, -- C/C++ and related file formatter
            null_ls.builtins.formatting.shfmt, -- Shell script formatter (Bash, Zsh, Fish, Ksh)
            null_ls.builtins.formatting.jq -- JSON and YAML formatter (JSON, JSONC, JSON5, YAML, YML)
        }
    }
)
