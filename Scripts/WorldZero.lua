local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("ShadeHub - WorldZero", "Ocean")
 

local Farming = Window:NewTab("Farming")
local fmSection = Farming:NewSection("Farming")

cbSection:NewToggle("Kill aura", "Enables kill aura.", function(state)
    if state then
        getgenv().kaura = true;
      
while wait() do
 if getgenv().kaura == true then
local delay = .5
local e = require(game:GetService("ReplicatedStorage").Shared.Combat)
local attack = e.AttackTargets
local player = game:GetService("Players").LocalPlayer
local name = game.ReplicatedStorage.Profiles[player.Name].Class.Value..'2'
function kill()
    for i , v in pairs(workspace.Mobs:GetChildren()) do
        if v:FindFirstChild("Collider") and (v.Collider.Position-player.Character.Head.Position).magnitude <= 30 then
            attack(e,{v},{player.Character.Head.Position },name)
        end
    end
end;
while wait(delay) do
    kill()
end
    else
        getgenv().kaura = false;
    end
end)
