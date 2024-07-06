return {
  "mfussenegger/nvim-dap",
  dependencies = {
    -- ui plugins to make debugging simplier
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
    "jay-babu/mason-nvim-dap.nvim",
  },
  config = function()
    require("mason-nvim-dap").setup({
      ensure_installed = { "java-debug-adapter", "java-test" },
    })

    local dap = require("dap")
    local dapui = require("dapui")

    dapui.setup()

    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end

  end
}
