return {
  {
    "nvim-tree/nvim-tree.lua",
    keys = {
      -- Unmap the default <leader>fe if you want
      { "<leader>fe", false },
      -- Map Ctrl+b to toggle the file tree
      { "<C-b>",      "<cmd>NvimTreeToggle<CR>", desc = "Toggle File Tree" },
    },
  },
}
