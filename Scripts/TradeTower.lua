local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("ShadeHub - Arsenal", "Ocean")
 
    -- MAIN
    local Main = Window:NewTab("AutoFarm")
    local MainSection = Main:NewSection("AutoFarm")
local Misc = Window:NewTab("Misc")
local Credits = Window:NewTab("Credits")
local mSection = Misc:NewSection("Misc")
local mpSection = Misc:NewSection("Player")
local cSection = Credits:NewSection("Credits")

MainSection:NewToggle("Auto Robux", "Enables RobuxFarm.", function(state)
    if state then
        getgenv().rbx = true;

while wait() do
 if getgenv().rbx == true then
game:GetService("ReplicatedStorage").Events.Click:FireServer()
    end
 end 
    else
        getgenv().rbx = false;
    end
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


