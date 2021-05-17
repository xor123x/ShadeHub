local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
--tabs/windows
local Main = Library.CreateLib("ShadeHub - Arsenal", "Ocean")
local Combat = Main:NewTab("Combat")
local MainSection = Combat:NewSection("Combat")

MainSection:NewToggle("SilentAim", "Enables SilentAim.", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)
