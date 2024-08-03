local M = {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "windwp/nvim-ts-autotag"
  },
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
}
function M.config()
  require("nvim-treesitter.configs").setup({
    ensure_installed = {
      "vimdoc", "javascript", "typescript", "c", "lua", "rust",
      "jsdoc", "bash",
    },
    sync_install = false,
    auto_install = true,
    indent = {
      enable = true
    },

    highlight = {
      enable = true,
      additional_vim_regex_highlighting = { "markdown" },
    },
    autotag = {
      enable = true
    }
  })

  local treesitter_parser_config = require("nvim-treesitter.parsers").get_parser_configs()
  treesitter_parser_config.templ = {
    install_info = {
      url = "https://github.com/vrischmann/tree-sitter-templ.git",
      files = {"src/parser.c", "src/scanner.c"},
      branch = "master",
    },
  }

  vim.treesitter.language.register("templ", "templ")
end

return M
