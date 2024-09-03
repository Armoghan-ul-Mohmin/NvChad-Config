local options = {
  formatters_by_ft = {
      -- Prettier
      html = {"prettier"},
      xml = {"prettier"},
      js = {"prettier"},
      jsx = {"prettier"},
      ejs = {"prettier"},
      ts = {"prettier"},
      tsx = {"prettier"},
      ps1 = {"prettier"},
      powershell = {"prettier"},
      java = {"prettier"},
      vue = {"prettier"},
      graphql = {"prettier"},
      -- Stylelint
      css = {"stylelint"},
      scss = {"stylelint"},
      sass = {"stylelint"},
      less = {"stylelint"},
      postcss = {"stylelint"},
      -- Markdownlint
      markdown = {"markdownlint"},
      md = {"markdownlint"},
      mdx = {"markdownlint"},
      rmd = {"markdownlint"},
      markdownml = {"markdownlint"},
      -- SQL Formatter
      sql = {"sqlfmt"},
      mysql = {"sqlfmt"},
      postgres = {"sqlfmt"},
      sqlite = {"sqlfmt"},
      tsql = {"sqlfmt"},
      -- Lua Formatter
      lua = {"stylua"},
      torch = {"stylua"},
      nvim = {"stylua"},
      -- Black
      python = {"black"},
      py = {"black"},
      ipynb = {"black"},
      wsgi = {"black"},
      pyi = {"black"},
      pyc = {"black"},
      -- Rufo
      ruby = {"rufo"},
      rb = {"rufo"},
      rake = {"rufo"},
      gemspec = {"rufo"},
      -- Shfmt
      bash = {"shfmt"},
      sh = {"shfmt"},
      zsh = {"shfmt"},
      fish = {"shfmt"},
      ksh = {"shfmt"},
      -- Clang-Format
      c = {"clang-format"},
      cpp = {"clang-format"},
      h = {"clang-format"},
      hpp = {"clang-format"},
      m = {"clang-format"},
      -- JQ
      json = {"jq"},
      jsonc = {"jq"},
      json5 = {"jq"},
      yaml = {"jq"},
      yml = {"jq"},
      toml = {"jq"},
      env = {"jq"},
      -- Go Formatter
      go = {"gofmt"},
      gomod = {"gofmt"},
      gql = {"gofmt"},
      proto = {"gofmt"},
      gohtml = {"gofmt"}
  },
  format_on_save = {
      timeout_ms = 10000,
      lsp_fallback = true
  }
}

return options
