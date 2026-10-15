
return {
  {
    "tiagovla/tokyodark.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent_background = false,
      gamma = 1.00,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        identifiers = { italic = true },
        functions = {},
        variables = {},
      },
    },
    config = function(_, opts)
      require("tokyodark").setup(opts)
      vim.cmd("colorscheme tokyodark")
    end,
  },

  {
    "nvim-tree/nvim-web-devicons",
    tag = "nerd-v3.2-compat",
    opts = {
      default = true,
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    tag = "compat-nvim-0.9",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      on_attach = function(bufnr)
        local api = require("nvim-tree.api")

        -- Keep all default NvimTree shortcuts
        api.config.mappings.default_on_attach(bufnr)

        -- Open file in vertical split
        vim.keymap.set("n", "v", api.node.open.vertical, {
          buffer = bufnr,
          desc = "Open vertical split",
        })

        -- Open file in horizontal split
        vim.keymap.set("n", "s", api.node.open.horizontal, {
          buffer = bufnr,
          desc = "Open horizontal split",
        })
      end,

      renderer = {
        icons = {
          web_devicons = {
            file = { enable = true },
            folder = { enable = true },
          },
          show = {
            file = true,
            folder = true,
            folder_arrow = false,
            git = false,
            modified = false,
            diagnostics = false,
          },
        },
      },

      git = {
        enable = false,
      },
    },
  },
}

