return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },

    keys = {
      {
        "<leader>ff",
        "<cmd>Telescope find_files<CR>",
        desc = "Find files",
      },
      {
        "<leader>fb",
        "<cmd>Telescope buffers<CR>",
        desc = "Find buffers",
      },
      {
        "<leader>fg",
        "<cmd>Telescope live_grep<CR>",
        desc = "Search text",
      },
    },

    config = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")

      telescope.setup({
        defaults = {
          mappings = {
            i = {
              ["<C-x>"] = actions.select_horizontal,
              ["<C-S-v>"] = actions.select_vertical,
            },
            n = {
              ["<C-x>"] = actions.select_horizontal,
              ["<C-S-v>"] = actions.select_vertical,
            },
          },
        },
      })
    end,
  },
}
