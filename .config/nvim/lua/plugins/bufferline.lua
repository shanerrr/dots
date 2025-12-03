return {
  {
    "akinsho/bufferline.nvim",
    event = { "BufNewFile", "BufReadPost" },
    opts = { 
      options = {
        offsets = {
          {
            filetype = 'snacks_layout_box',
            text = '',
            separator = true,
          }
        }
      }
    },
    keys = {
      { "<Leader>m", "<Cmd>BufferLineCyclePrev<Cr>", desc = "Previous buffer" },
      { "<Leader>.", "<Cmd>BufferLineCycleNext<Cr>", desc = "Next buffer" },
      { "<Leader>M", "<Cmd>BufferLineMovePrev<Cr>",  desc = "Move buffertab left" },
      { "<Leader>:", "<Cmd>BufferLineMoveNext<Cr>",  desc = "Move buffertab right" },
      { "<Leader>,", "<Cmd>BufferLinePick<Cr>",      desc = "Show buffertab targets" },

    }
  }
}
