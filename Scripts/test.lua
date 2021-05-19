--library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xor123x/ShadeHub/master/UILIBS/kevouilib"))()
local Main = Library.CreateLib("ShadeHub - Arsenal", "Ocean")

--tabs
local Combat = Main:NewTab("Combat")
local Visuals = Main:NewTab("Visuals")
local Misc = Main:NewTab("Misc")
local Credits = Main:NewTab("Credits")

--Sections
local cbSection = Combat:NewSection("Combat")
local vSection = Visuals:NewSection("Visuals")
local mSection = Misc:NewSection("Misc")
local mpSection = Misc:NewSection("Player")
local cSection = Credits:NewSection("Credits")


--toggles
cbSection:NewToggle("SilentAim", "Enables SilentAim.", function(state)
    if state then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xor123x/arsenal-script-testing-kavoui/master/silentaim"))()
    else
        getgenv().saim = false;
    end
end)


--buttons
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

--sliders
mpSection:NewSlider("WalkSpeed", "Changes walk speed.", 50, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

mpSection:NewSlider("JumpPower", "Changes Jumper Power.", 100, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.jumppower = s
end)

--dropdowns
