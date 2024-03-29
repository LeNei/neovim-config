return {
   -- Treesitter is a new parser generator tool that we can
   -- use in Neovim to power faster and more accurate
   -- syntax highlighting.
   {
      "nvim-treesitter/nvim-treesitter",
      version = false, -- last release is way too old and doesn't work on Windows
      build = ":TSUpdate",
      init = function(plugin)
         -- PERF: add nvim-treesitter queries to the rtp and it's custom query predicates early
         -- This is needed because a bunch of plugins no longer `require("nvim-treesitter")`, which
         -- no longer trigger the **nvim-treeitter** module to be loaded in time.
         -- Luckily, the only thins that those plugins need are the custom queries, which we make available
         -- during startup.
         require("lazy.core.loader").add_to_rtp(plugin)
         require("nvim-treesitter.query_predicates")
      end,
      dependencies = {
         "nvim-treesitter/nvim-treesitter-textobjects",
      },
      cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
      keys = {
         { "<c-space>", desc = "Increment selection" },
         { "<bs>", desc = "Decrement selection", mode = "x" },
      },
      opts = {
         highlight = { enable = true },
         indent = { enable = true },
         ensure_installed = {
            "bash",
            "c",
            "diff",
            "html",
            "javascript",
            "jsdoc",
            "json",
            "jsonc",
            "lua",
            "luadoc",
            "luap",
            "markdown",
            "markdown_inline",
            "python",
            "query",
            "regex",
            "toml",
            "tsx",
            "typescript",
            "vim",
            "vimdoc",
            "yaml",
            "rust",
         },
      },
   },
   -- Show context of the current function
   {
      "nvim-treesitter/nvim-treesitter-context",
      enabled = true,
      opts = { mode = "cursor", max_lines = 3 },
   },

   -- Automatically add closing tags for HTML and JSX
   {
      "windwp/nvim-ts-autotag",
      opts = {},
   },
}
