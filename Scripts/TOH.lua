local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("ShadeHub - TowerOfHell", "Ocean")

local Main = Window:NewTab("Main")

local Bypass = Main:NewSection("Bypass")

Bypass:NewButton("Bypass AntiCheat", "Bypasses AntiCheat", function()
    game.Players.LocalPlayer.PlayerScripts:Destroy()
end)

local Items = Main:NewSection("Items")

Items:NewButton("Give All Stuff", "Gives All Gear", function()
    local a = game:GetService("ReplicatedStorage").Gear:Clone()
    for i,v in pairs(a:GetChildren()) do if v.ClassName == "Tool"
    then v.Parent = game:GetService("Players").LocalPlayer.Backpack
    end
    end
end)

local Tps = Main:NewSection("Teleport")

Tps:NewButton("TP On Top", "Teleports Yuo On Top", function()
    local ts = game.TweenService

    ts:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(3), {CFrame = game.workspace.tower.sections.finish.FinishGlow.CFrame}):Play()

    local plr = game.Players.LocalPlayer.Character
    if plr:FindFirstChild("KillScript") then
    plr.KillScript:Destroy() else return nil
    end
    if plr:FindFirstChild("ExplosiveDeath") then
    plr.ExplosiveDeath:Destroy() else return nil
    end
    if plr:FindFirstChild("hitboxScript") then
    plr.hitboxScript:Destroy() else return nil
    end
end)

local other = Main:NewSection("Other")

other:NewButton("Remove Bunny Jump", "Deletes Bunny Jump", function()
    if plr:FindFirstChild("bunnyJump") then
        plr.bunnyJump:Destroy() else return nil
        end
end)

local Player = Window:NewTab("Local Player")
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

    HumanoidSection:NewButton("God Mode", "Removes Kill Script", function()
        local plr = game.Players.LocalPlayer.Character
        if plr:FindFirstChild("KillScript") then
        plr.KillScript:Destroy() else return nil
        end
        if plr:FindFirstChild("ExplosiveDeath") then
        plr.ExplosiveDeath:Destroy() else return nil
        end
        if plr:FindFirstChild("hitboxScript") then
        plr.hitboxScript:Destroy() else return nil
        end
    end)
    
    local misc = Window:NewTab("Misc")
    local csSection = misc:NewSection("Ui Library - xHeptc")
    local cs2Section = misc:NewSection("Scripter - Shade")
    cs2Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)

    
