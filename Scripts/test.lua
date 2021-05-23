local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("ShadeHub - Arsenal", "Ocean")
 
    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
local Combat = Window:NewTab("Combat")
local Visuals = Window:NewTab("Visuals")
local Misc = Window:NewTab("Misc")
local Credits = Window:NewTab("Credits")
local cbSection = Combat:NewSection("Combat")
local vSection = Visuals:NewSection("Visuals")
local mSection = Misc:NewSection("Misc")
local mpSection = Misc:NewSection("Player")
local cSection = Credits:NewSection("Credits")


cbSection:NewToggle("SilentAim", "Enables SilentAim.", function(state)
    if state then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xor123x/arsenal-script-testing-kavoui/master/silentaim"))()
    else
        getgenv().saim = false;
    end
end)

vSection:NewButton("Box esp", "Esp.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xor123x/arsenal-script-testing-kavoui/master/boxesp"))()
end)

mSection:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)

cSection:NewButton("Uilib - xHeptc", "Maker of gui lib", function()
    print("TY xHeptc")
end)

cSection:NewButton("Scripting - Shade/tim", "Owner of script", function()
    print("ShadeHubOnTop")
end)

mpSection:NewSlider("WalkSpeed", "Changes walk speed.", 50, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

mpSection:NewSlider("JumpPower", "Changes Jumper Power.", 100, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.jumppower = s
end)


