local M = {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
  },
}

function M.config()
  local servers = {
    "tailwindscc",
    "jdtls",
    "tsserver",
    "yamlls",
    "rust_analyzer",
    "postgres_lsp",
    "prismals",
    "pyright",
    "cssls",
    "eslint",
    "vuels",
    "vimls",
    "lua_ls",
    "gopls",
    "jsonls",
    "bashls",
    "html"
  }

  require("mason").setup({
    ui = { border = "rounded" }
  })
  require("mason-lspconfig").setup{
    ensure_installed = servers,
  }
end

return M
