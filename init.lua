-- Must have

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
  hs.alert.show("Hello World!")
end)

-- Spoons

hs.loadSpoon("WifiNotifier")
spoon.WifiNotifier:init()
spoon.WifiNotifier:start()

mapping = {
  f = "Firefox",
  t = "Terminal",
  v = "Sublime Text",
  w = "WhatsApp"
}

hs.loadSpoon("AppLauncher")
spoon.AppLauncher:bindHotkeys(mapping)