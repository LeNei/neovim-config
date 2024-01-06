return {
   "epwalsh/obsidian.nvim",
   version = "*",
   lazy = true,
   ft = "markdown",
   dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      -- see below for full list of optional dependencies 👇
   },
   opts = {
      -- dir = "~/Documents/Vault", -- no need to call 'vim.fn.expand' here
      workspaces = {
         {
            name = "Work",
            path = "~/Documents/Vault",
         },
      },

      templates = {
         subdir = "Templates",
         date_format = "%d.%m.%Y",
         time_format = "%H:%M",
      },
   },

   ui = {
      enable = true,
   },
   keys = {
      { "<leader>on", ":ObsidianNew<Return>", desc = "Open new obsidian file" },
      { "<leader>of", ":ObsidianQuickSwitch<Return>", desc = "Open obsidian switch" },
      { "<leader>ow", ":ObsidianSearch<Return>", desc = "Open obsidian grep" },
      { "<leader>on", ":ObsidianToday<Return>", desc = "Open obsidian with a file for today" },
   },
}
