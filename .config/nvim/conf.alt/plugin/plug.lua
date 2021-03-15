-- This is where NVIM plugins in Lua will be

local iron = require('iron')

iron.core.add_repl_definitions {
  python = {
    python = {
      command = {"python"}
    }
  },
  rust = {
    evcxr = {
      command = {"evcxr"}
    }
  }
  clojure = {
    lein_connect = {
      command = {"lein", "repl", ":connect"}
    }
  }
}

iron.core.set_config {
  preferred = {
    python = "ipython",
    clojure = "lein",
    rust = "evcxr"
  }
}
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}

EOF
-- nvim_lsp object
local nvim_lsp = require'nvim_lsp'

-- function to attach completion and diagnostics
-- when setting up lsp
local on_attach = function(client)
    require'completion'.on_attach(client)
    require'diagnostic'.on_attach(client)
end

-- Enable rust_analyzer
nvim_lsp.rust_analyzer.setup({ on_attach=on_attach })

