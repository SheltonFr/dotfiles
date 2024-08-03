local M = {
  "nvim-tree/nvim-web-devicons",
  dependencies ={
    "echasnovski/mini.icons",
  },
  event = "VeryLazy",
}

function M.config()
  require "nvim-web-devicons"
end

return M
