return {
   "folke/zen-mode.nvim",
   opts = {},
   config = function()
      vim.keymap.set("n", "<leader>z", ":ZenMode<Return>")
   end,
}
