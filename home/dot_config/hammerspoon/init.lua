-- Automatic config reloading
hs.loadSpoon("ReloadConfiguration")
spoon.ReloadConfiguration:start()

-- Center the kitty window when launched
function kittyCentering(appName, eventType, appObject)
  if (eventType == hs.application.watcher.launched) then
    if (appName == 'kitty') then
      appObject:mainWindow():centerOnScreen()
    end
  end
end

hs.application.watcher.new(kittyCentering):start()
