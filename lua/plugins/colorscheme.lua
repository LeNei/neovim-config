return {
   {
      "catppuccin/nvim",
      lazy = false,
      name = "catppuccin",
      priority = 1000,
      enabled = false,
      config = function()
         require("catppuccin").setup({
            flavour = "frappe",
            transparent_background = true,
            dim_inactive = {
               enabled = false,
               shade = "dark",
               percentage = 0.15, -- percentage of the shade to apply to the inactive window
            },
            integrations = {
               aerial = true,
               alpha = true,
               cmp = true,
               dashboard = true,
               flash = true,
               gitsigns = true,
               headlines = true,
               illuminate = true,
               indent_blankline = { enabled = true },
               leap = true,
               lsp_trouble = true,
               mason = true,
               markdown = true,
               mini = true,
               native_lsp = {
                  enabled = true,
                  underlines = {
                     errors = { "undercurl" },
                     hints = { "undercurl" },
                     warnings = { "undercurl" },
                     information = { "undercurl" },
                  },
               },
               navic = { enabled = true, custom_bg = "lualine" },
               neotest = true,
               neotree = true,
               noice = true,
               notify = true,
               semantic_tokens = true,
               telescope = true,
               treesitter = true,
               treesitter_context = true,
               which_key = true,
            },
         })
         vim.cmd.colorscheme("catppuccin")
      end,
   },
   {
      "rose-pine/neovim",
      name = "rose-pine",
      lazy = false,
      priority = 1000,
      config = function()
         require("rose-pine").setup({
            variant = "moon", -- auto, main, moon, or dawn
            dim_inactive_windows = true,
            extend_background_behind_borders = true,

            styles = {
               bold = true,
               italic = true,
               transparency = true,
            },
         })
         vim.cmd.colorscheme("rose-pine")
      end,
   },
}
