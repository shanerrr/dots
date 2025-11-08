return {
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup({
        sync_root_with_cwd = true,
        update_focused_file = {
          enable = true,
          update_root = true,
          ignore_list = { "help" },
        },
        sort = {
          sorter = "case_sensitive",
        },
        view = {
          width = 30
        },
        renderer = {
          full_name = true,
          group_empty = true,
          special_files = {},
          symlink_destination = false,
          indent_markers = {
            enable = true,
          },
          icons = {
            git_placement = "signcolumn",
            show = {
              file = true,
              folder = false,
              folder_arrow = false,
              git = true,
            },
          },
        },
        filters = {
          dotfiles = false,
        },
            actions = {
      change_dir = {
        enable = false,
        restrict_above_cwd = true,
      },
      open_file = {
        resize_window = true,
        window_picker = {
          chars = "aoeui",
        },
      },
      remove_file = {
        close_window = false,
      },
    },
      })
      vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", { noremap = true, silent = true, desc = "Toggle NvimTree" })
    end,
  }
}
