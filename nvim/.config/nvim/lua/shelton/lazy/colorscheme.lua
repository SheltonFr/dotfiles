-- function ColorMyPencils(color)
--   color = color or "rose-pine-moon"
--   vim.cmd.colorscheme(color)
--
--   vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--   vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require('rose-pine').setup({
      disable_background = true,
      styles = {
        italic = false,
      },
    })
  vim.cmd.colorscheme('rose-pine-moon')
  end
}
