local M = {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
  },
}

function M.config()
  local servers ={
    "cssls",
    "yamlls",
    "bashls",
    "jsonls",
    "lua_ls",
    "rust_analyzer",
    "gopls",
    "tsserver",
    "jdtls",
    "cssls",
    "html",
    "pyright"
  }

  require("mason").setup({
    ui = { border = "rounded" }
  })
  require("mason-lspconfig").setup{
    ensure_installed = servers,
  }
end

return M
