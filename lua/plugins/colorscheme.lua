return {
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
               --transparency = true,
            },
         })
         vim.cmd.colorscheme("rose-pine")
      end,
   },
}
