-- Must have

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
  hs.alert.show("Hello World!")
end)

-- Wifi Changes

wifiWatcher = nil
lastSSID = hs.wifi.currentNetwork()

function ssidChangedCallback()
    newSSID = hs.wifi.currentNetwork()

    if newSSID == nil then
      hs.notify.new({
          title = string.format("Disconnected from Wifi", newSSID),
          informativeText = "Connection lost"
        }):send()
    elseif newSSID ~= lastSSID and newSSID ~= nil then
      hs.notify.new({
        title = string.format("Connected to %s", newSSID),
        informativeText = "Wifi Network was changed"
      }):send()
    end
      
    lastSSID = newSSID
end

wifiWatcher = hs.wifi.watcher.new(ssidChangedCallback)
wifiWatcher:start()
