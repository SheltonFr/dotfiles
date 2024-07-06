return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make", lazy = true },
    },
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      local actions = require("telescope.actions")
      local icons = require("shelton.core.icons")

      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          },
          fzf = {
            fuzzy = true, -- false will only do exact matching
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
          },
        },
        defaults = {
          prompt_prefix = icons.ui.Telescope .. " ",
          selection_caret = icons.ui.Forward .. " ",
          entry_prefix = "   ",
          initial_mode = "insert",
          selection_strategy = "reset",
          path_display = { "smart" },
          color_devicons = true,
          vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
            "--hidden",
            "--glob=!.git/",
          },
        },
        -- set keymappings to navigate through items in the telescope io
        mappings = {
          i = {
            -- ["<C-p>"] = actions.cycle_history_prev,
            -- ["<C-n>"] = actions.cycle_history_next,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
          },
          n = {
            ["<esc>"] = actions.close,
            ["<C-c>"] = actions.close,
            ["j"] = actions.move_selection_next,
            ["k"] = actions.move_selection_previous,
            ["q"] = actions.close,
          },
        },
        pickers = {
          live_grep = {
            theme = "dropdown",
          },

          grep_string = {
            theme = "dropdown",
          },

          find_files = {
            theme = "dropdown",
            previewer = false,
          },

          buffers = {
            theme = "dropdown",
            previewer = false,
            initial_mode = "normal",
            mappings = {
              i = {
                ["<C-d>"] = actions.delete_buffer,
              },
              n = {
                ["dd"] = actions.delete_buffer,
              },
            },
          },

          planets = {
            show_pluto = true,
            show_moon = true,
          },

          colorscheme = {
            enable_preview = true,
          },

          lsp_references = {
            theme = "dropdown",
            initial_mode = "normal",
          },

          lsp_definitions = {
            theme = "dropdown",
            initial_mode = "normal",
          },

          lsp_declarations = {
            theme = "dropdown",
            initial_mode = "normal",
          },

          lsp_implementations = {
            theme = "dropdown",
            initial_mode = "normal",
          },
        },
      })
      -- load the ui-select extension
      require("telescope").load_extension("ui-select")
    end
  }
}