-- Constants
MODIFIERS = {"cmd"}    -- Modifiers used for app shortcuts

-- App configuration
APPS = {
    {shortcut = "1", name = "Firefox"},
    {shortcut = "2", name = "Google Chrome"},
    {shortcut = "3", name = "iTerm"},
    {shortcut = "4", name = "Visual Studio Code"},
}

-- Bind application shortcuts
for _, app in ipairs(APPS) do
  hs.hotkey.bind(MODIFIERS, app.shortcut, function()
    hs.application.launchOrFocus(app.name)
  end)
end
