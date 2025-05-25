return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- solargraph will be automatically installed with mason and loaded with lspconfig
        solargraph = {
          -- cmd = { "test"},
          autoformat = true,
          formatting = true,
          settings = {
            solargraph = {
              autoformat = true,
              formatting = true,
            },
          },
        },
      },
      config = function ()
        local lspconfig = require("lspconfig")
        -- Capabilites -> "Useful for broadcasting to the server additional functionality (snippets, off-protocol features) provided by plugins."
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        -- Typescript / Javascript
        lspconfig.ts_ls.setup({
          filetypes = {
            "javascript",
            "javascriptreact",
            "javascript.jsx",
            "typescript",
            "typescriptreact",
            "typescript.tsx",
          },

          init_options = {
            hostInfo = "neovim",
          },

          capabilities = capabilities,
        })
      end
    },
  },
}
