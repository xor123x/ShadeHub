--library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Main = Library.CreateLib("ShadeHub - Arsenal", "Ocean")

--tabs
local Combat = Main:NewTab("Combat")
local Visuals = Main:NewTab("Visuals")

--Sections
local cbSection = Combat:NewSection("Combat")
local vSection = Visuals:NewSection("Visuals")

cbSection:NewToggle("SilentAim", "Enables SilentAim.", function(state)
    if state then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xor123x/arsenal-script-testing-kavoui/master/silentaim"))()
    else
        getgenv().saim = false;
    end
end)

vSection:NewToggle("Esp", "Enables Esp.", function(state)
    if state then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xor123x/arsenal-script-testing-kavoui/master/boxesp"))()
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xor123x/arsenal-script-testing-kavoui/master/toggleoff"))()
    end
end)
