return {
   "stevearc/conform.nvim",
   event = { "BufReadPre", "BufNewFile" },
   config = function()
      local conform = require("conform")
      conform.setup({
         formatters_by_ft = {
            lua = { "stylua" },
            rust = { "rustfmt" },
            yaml = { "prettierd" },

            -- Use a sub-list to run only the first available formatter
            javascript = { { "prettierd", "prettier" } },
            typescript = { { "prettierd", "prettier" } },
            typescriptreact = { { "prettierd", "prettier" } },
            javascriptreact = { { "prettierd", "prettier" } },
            css = { { "prettierd", "prettier" } },
            scss = { { "prettierd", "prettier" } },
            less = { { "prettierd", "prettier" } },
            json = { { "prettierd", "prettier" } },
            vue = { { "prettierd", "prettier" } },
            html = { { "prettierd", "prettier" } },
            htmldjango = { { "prettierd", "prettier" } },
         },
         format_on_save = {
            -- These options will be passed to conform.format()
            timeout_ms = 500,
            async = false,
            lsp_fallback = true,
         },
      })

      vim.keymap.set({ "n", "v" }, "<leader>mp", function()
         conform.format({
            lsp_fallback = true,
            async = false,
            timeout_ms = 500,
         })
      end, { desc = "Format file or range (in visual mode)" })
   end,
}
