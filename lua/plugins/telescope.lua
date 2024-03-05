return {
   {
      "telescope.nvim",
      dependencies = {
         "nvim-lua/plenary.nvim",
         {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
         },
         "nvim-telescope/telescope-file-browser.nvim",
      },
      keys = {
         {
            "<leader>f",
            function()
               local builtin = require("telescope.builtin")
               builtin.find_files()
            end,
            desc = "Lists files in your current working directory, respects .gitignore",
         },
         {
            "<leader>w",
            function()
               local builtin = require("telescope.builtin")
               builtin.live_grep()
            end,
            desc = "Search for a string in your current working directory and get results live as you type, respects .gitignore",
         },
         {
            "<leader>pb",
            function()
               local builtin = require("telescope.builtin")
               builtin.buffers()
            end,
            desc = "Lists open buffers",
         },
         {
            "<leader>ph",
            function()
               local builtin = require("telescope.builtin")
               builtin.help_tags()
            end,
            desc = "Lists available help tags and opens a new window with the relevant help info on <cr>",
         },
         {
            "<leader>r",
            function()
               local builtin = require("telescope.builtin")
               builtin.resume()
            end,
            desc = "Resume the previous telescope picker",
         },
         {
            "<leader>e",
            function()
               local builtin = require("telescope.builtin")
               builtin.diagnostics()
            end,
            desc = "Lists Diagnostics for all open buffers or a specific buffer",
         },
         {
            "<leader>pv",
            function()
               local telescope = require("telescope")

               local function telescope_buffer_dir()
                  return vim.fn.expand("%:p:h")
               end

               telescope.extensions.file_browser.file_browser({
                  path = "%:p:h",
                  cwd = telescope_buffer_dir(),
                  respect_gitignore = false,
                  hidden = true,
                  grouped = true,
                  previewer = false,
                  initial_mode = "normal",
                  layout_config = { height = 40 },
               })
            end,
            desc = "Open File Browser with the path of the current buffer",
         },
      },
   },
   {
      "nvim-telescope/telescope-ui-select.nvim",
      config = function()
         require("telescope").setup({
            extensions = {
               ["ui-select"] = {
                  require("telescope.themes").get_dropdown({}),
               },
            },
         })
         require("telescope").load_extension("ui-select")
      end,
   },
}
