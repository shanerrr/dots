rex.bind("ctrl+s>t", "client.tab.new")
rex.bind("ctrl+s>,", "client.tab.previous")
rex.bind("ctrl+s>.", "client.tab.next")
rex.bind("ctrl+s>b", "client.sidebar.toggle")
rex.bind("ctrl+s>shift+n", "session.new")

rex.action{
  name = "session_goto",
  title = "Go to Session by Number",
  args = { index = "integer" },
  run = function(ctx, args)
    local result, err = rex.call("session.list")
    if not result then error(err) end
    local session = (result.sessions or {})[args.index]
    if session then
      rex.client.queue("session.select", { session_id = session.session_id })
    end
  end,
}
for i = 1, 9 do
  rex.bind("ctrl+s>w>" .. i, "session_goto", { index = i })
end
rex.bind("ctrl+s>w>w", "session.switch")
rex.bind("ctrl+s>shift+w", "session.rename")
rex.bind("ctrl+s>shift+d", "session.close")
rex.bind("ctrl+s>shift+x", "session.close")
rex.bind("ctrl+s>shift+t", "client.tab.rename")
rex.bind("ctrl+s>x", "pane.close")
for i = 1, 9 do
  rex.bind("ctrl+s>" .. i, "client.tab.goto", { index = i })
end
rex.bind("ctrl+s>h", "pane.focus.left")
rex.bind("ctrl+s>j", "pane.focus.down")
rex.bind("ctrl+s>k", "pane.focus.up")
rex.bind("ctrl+s>l", "pane.focus.right")
rex.bind("ctrl+s>tab", "pane.focus_next")
rex.bind("ctrl+s>shift+tab", "pane.focus_previous")
rex.bind("ctrl+s>v", "pane.split.right")
rex.bind("ctrl+s>-", "pane.split.down")
rex.bind("ctrl+s>q", "client.tab.close")
rex.bind("ctrl+s>z", "pane.zoom")
rex.bind("ctrl+s>shift+p", "pane.rename")
rex.bind("ctrl+s>shift+r", "client.config.reload")

-- Floating panes
rex.bind("ctrl+s>f", "pane.new_floating")
rex.bind("ctrl+s>m", "pane.minimize_floating")
rex.bind("ctrl+s>shift+m", "pane.minimize_all_floating")

-- ctrl+s now starts a sequence; press it twice to send it to the program
rex.bind("ctrl+s>ctrl+s", "pane.send_key", { key = "ctrl+s" })
