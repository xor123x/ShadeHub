  
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Xarkkz/newui/main/libary"))()
local ShadeHub = library.new("ShadeHub", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local page = ShadeHub:addPage("Arsenal", 5012544693)
local section1 = page:addSection("Section 1")
local section2 = page:addSection("Section 2")

section1:addToggle("SilentAim", nil, function(value)
loadstring(game:HttpGet("https://pastebin.com/raw/DUeHdyvk", value))()
end)
section1:addButton("ESP gui", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Xarkkz/Dex-Explorer/main/esp_script.txt", true))()
end)
section1:addTextbox("Notification", "Default", function(value, focusLost)
print("Input", value)

if focusLost then
ShadeHub:Notify("Title", value)
end
end)

section2:addKeybind("Toggle Keybind", Enum.KeyCode.One, function()
print("Activated Keybind")
ShadeHub:toggle()
end, function()
print("Changed Keybind")
end)
section2:addColorPicker("ColorPicker", Color3.fromRGB(50, 50, 50))
section2:addColorPicker("ColorPicker2")
section2:addSlider("Slider", 0, -100, 100, function(value)
print("Dragged", value)
end)
section2:addDropdown("Dropdown", {"Hello", "World", "Hello World", "Word", 1, 2, 3})
section2:addDropdown("Dropdown", {"Hello", "World", "Hello World", "Word", 1, 2, 3}, function(text)
print("Selected", text)
end)
section2:addButton("Button")

-- second page
local theme = ShadeHub:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
ShadeHub:setTheme(theme, color3)
end)
end

-- load
ShadeHub:SelectPage(ShadeHub.pages[1], true)
