
-- disable animation
hs.window.animationDuration = 0

-- hotkey mash
local mash   = {"ctrl", "alt"}
local mash_app   = {"cmd", "alt", "ctrl"}
local mash_shift = {"ctrl", "alt", "shift"}

-- Launch applications
hs.hotkey.bind(mash_app, 't', function () 
  hs.application.launchOrFocus("iTerm") 
  local chrome = hs.appfinder.appFromName("iTerm")
  chrome:selectMenuItem({"Shell", "New Window"})
end)

--launch new chrome window
hs.hotkey.bind(mash_app, 'c', function () 
  hs.application.launchOrFocus("Google Chrome") 
  local chrome = hs.appfinder.appFromName("Google Chrome")
  chrome:selectMenuItem({"File", "New Window"})
end)

--left half screen
hs.hotkey.bind({"cmd"}, "Left", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

--right half screen
hs.hotkey.bind({"cmd"}, "Right", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

--top half screen
hs.hotkey.bind({"cmd"}, "Up", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w 
  f.h = max.h / 2
  win:setFrame(f)
end)

--bottom half screen
hs.hotkey.bind({"cmd"}, "Down", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.h / 2
  f.w = max.w 
  f.h = max.h / 2
  win:setFrame(f)
end)


hs.hotkey.bind({"cmd", "alt", "ctrl"}, "m", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end)


-- resize windows
hs.hotkey.bind(mash_app, 'h', hs.grid.resizeWindowThinner)
hs.hotkey.bind(mash_app, 'j', hs.grid.resizeWindowShorter)
hs.hotkey.bind(mash_app, 'k', hs.grid.resizeWindowTaller)
hs.hotkey.bind(mash_app, 'l', hs.grid.resizeWindowWider)



--reload bind
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
end)
hs.alert.show("Config loaded")

