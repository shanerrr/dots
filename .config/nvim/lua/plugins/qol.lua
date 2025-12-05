return {
  {
    'nvim-mini/mini.nvim', 
    version = '*',
    config = function()
      require('mini.pairs').setup()
    end,
  },
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    ---@type snacks.Config
    opts = {
      explorer = { 
        enabled = true, 
        replace_netrw = true,
      },
      bigfile = { enabled = true },
      dashboard = { enabled = true },
      indent = { enabled = true },
      input = { enabled = true },
      picker = { 
        enabled = true, 
        layout = "telescope", 
      },
      notifier = { enabled = true },
      quickfile = { enabled = true },
      scope = { enabled = true },
      scroll = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
      terminal = { enabled = true },
      dashboard = {
        preset = {
        pick = nil,
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
        header = [[
                                                                             
               ████ ██████           █████      ██                     
              ███████████             █████                             
              █████████ ███████████████████ ███   ███████████   
             █████████  ███    █████████████ █████ ██████████████   
            █████████ ██████████ █████████ █████ █████ ████ █████   
          ███████████ ███    ███ █████████ █████ █████ ████ █████  
         ██████  █████████████████████ ████ █████ █████ ████ ██████ 
         ]],
       },
       sections = {
         { section = 'header' },
         {
           section = "keys",
           indent = 1,
           padding = 1,
         },
         { section = 'recent_files', icon = ' ', title = 'Recent Files', indent = 3, padding = 2 },
         { section = "startup" },
       },
     },
   },
   keys = {
     { "<C-b>", function() Snacks.explorer() end,             desc = "Open explorer",       mode = "n" },
     { "<leader>bd", function() Snacks.bufdelete() end,       desc = "Buffer delete",       mode = "n" },
     { "<leader>ba", function() Snacks.bufdelete.all() end,   desc = "Buffer delete all",   mode = "n" },
     { "<leader>bo", function() Snacks.bufdelete.other() end, desc = "Buffer delete other", mode = "n" },
     { "<leader>ff", function() Snacks.picker("files") end,   desc = "Pick Files",          mode = "n" },
     { "<leader>fb", function() Snacks.picker("buffers") end, desc = "Pick Buffers",        mode = "n" },
     { "<leader>fg", function() Snacks.picker("grep") end,    desc = "Live Grep",           mode = "n" },
     { "<C-j>", function() Snacks.terminal.toggle() end,      desc = "Terminal (cwd)",      mode = {"n", "t"} },
     { "<C-t>", function() Snacks.terminal.open() end,        desc = "New Terminal (cwd)",  mode = "t" },
     { "<leader>tl", function() Snacks.terminal.list() end,   desc = "List Terminal (cwd)",  mode = "n" },
   }
  }
}
