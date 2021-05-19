--library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Main = Library.CreateLib("ShadeHub - Arsenal", "Ocean")

--tabs
local Combat = Main:NewTab("Combat")
local Visuals = Main:NewTab("Visuals")

--Sections
local cbSection = Combat:NewSection("Combat")
local vSection = Visuals:NewSection("Combat")

cbSection:NewToggle("SilentAim", "Enables SilentAim.", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)
