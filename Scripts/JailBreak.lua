local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local JailBreak = Library.CreateLib("ShadeHub - JailBreak", "Ocean")

local Main = JailBreak:NewTab("Main")
local Guns = Main:NewSection("Gun Stuff")
Guns:NewButton("Get All Guns", "Gives All Guns", function()
    for i=1,7 do
        wait(.02)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(11.8937483, 19.668396, -1723.76379) + Vector3.new(1,0,0)
        end
        wait(0.05)
        local UI = require(game:GetService("ReplicatedStorage").Module:WaitForChild("UI"));
        for i,v in pairs (UI.CircleAction.Specs) do
        if v.Name == "Grab" then
        v:Callback(v, true)
        end
        end
        wait(0.1)
        for i=1,7 do
        wait(.02)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(788.144226, 20.6668549, -148.559204) + Vector3.new(1,0,0)
        end
        wait(0.05)
        local UI = require(game:GetService("ReplicatedStorage").Module:WaitForChild("UI"));
        for i,v in pairs (UI.CircleAction.Specs) do
        if v.Name == "Grab" then
        v:Callback(v, true)
        end
        end
        wait(0.1)
        for i=1,7 do
        wait(.02)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-309.690399, 19.3684883, 288.376099) + Vector3.new(1,0,0)
        end
        wait(0.05)
        local UI = require(game:GetService("ReplicatedStorage").Module:WaitForChild("UI"));
        for i,v in pairs (UI.CircleAction.Specs) do
        if v.Name == "Grab" then
        v:Callback(v, true)
        end
        end
end)

local Mods = Main:NewSection("Mods")
Mods:NewButton("Inf Nitro", "Mods Your Car And Jetpack", function()
    local mouse = game:GetService('Players').LocalPlayer:GetMouse()

    local function hotkeyHandler(key)
      if (key == 'q') then
        for _, v in next, getgc(true) do
          if (type(v) == 'table' and rawget(v, 'Nitro')) then
            v.Nitro = 250
          end
        end
      end
    end
    
    mouse.KeyDown:connect(hotkeyHandler)
end)

Mods:NewButton("Inf Jetpack Fuel", "Mods Your Jetpack", function()
    for _, v in next, getgc(true) do
        if (type(v) == 'table' and rawget(v, 'LocalMaxFuel')) then
          v.LocalMaxFuel = math.huge
          v.LocalFuel = math.huge
          v.LocalFuelType = 'Rocket'
        end
      end
end)


Mods:NewButton("Gun Mod", "Mods Your Guns", function()
    for i,v in pairs(game:GetService("ReplicatedStorage").Game.ItemConfig:GetChildren()) do
        local a = require(v)
        a.MagSize = math.huge
        a.CamShakeMagnitude = 0
        a.FireAuto = true
        a.FireFreq = 100
        end
end)





local Tool = JailBreak:NewTab("Tools")
local Get = Tool:NewSection("Get")
Get:NewButton("Give Keycard (THE ITEM WILL BE INVISIBLE)", "Gives Keycard", function()
    if not getgenv().MTAPIMutex then loadstring(game:HttpGet("https://raw.githubusercontent.com/KikoTheDon/MT-Api-v2/main/__source/mt-api%20v2.lua", true))() end
    game.Players.LocalPlayer.TeamValue:AddGetHook("Value", "Police")
end)

local Player = JailBreak:NewTab("Local Player")
    local MovementSection = Player:NewSection("Movement")
    MovementSection:NewSlider("WalkSpeed", "Changes Player's Speed", 200, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)

    MovementSection:NewSlider("Jumppower", "Changes Player's JumpPower", 250, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)


    local HumanoidSection = Player:NewSection("Humanoid")
    
    HumanoidSection:NewButton("Noclip (PRESS E TO ACTIVATE)", "Walk Thro Walls (PRESS B TO ACTIVATE)", function()
        loadstring(game:HttpGet('https://pastebin.com/raw/aH7AFwGq'))()
    end)

    local About = JailBreak:NewTab("About")
    local Version = About:NewSection("Version 0.0.1")
    local Credit = About:NewSection("Ui Library - xheptc")
    local Close = About:NewSection("Scripter - Shade")
    Close:NewKeybind("Close/Open UI", "Opens And Closes The Gui", Enum.KeyCode.G, function()
        Library:ToggleUI()
    end)
