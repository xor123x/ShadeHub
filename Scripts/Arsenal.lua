local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("ShadeHub - Arsenal", "Ocean")
 

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
        getgenv().saim = true;

while wait() do
 if getgenv().saim == true then
local Client
for i,v in pairs(getgc(true)) do
	if type(v) == "table" and rawget(v, "mode") then
		Client = v;
	end
end

local wkspc = Client.wkspc
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

function isSameTeam(Player, Player2)
	if wkspc.FFA.Value == true then
		return false
	else
		return Player.TeamColor == Player2.TeamColor and true or false
	end
end

function getClosestToMouse()
	local closestdis = math.huge
	local closestplr
	local mspos = Mouse.hit.p
	for i,v in pairs(Players:GetPlayers()) do
		if v:DistanceFromCharacter(mspos) < closestdis and not isSameTeam(LocalPlayer, v) and v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("Spawned") then
			closestplr = v
			closestdis = v:DistanceFromCharacter(mspos)
		end
	end
	if not closestplr then return LocalPlayer end
	return closestplr
end

rawset(Client, "firebullet", 
	newcclosure(function()
		local Random
		repeat
			Random = getClosestToMouse()
			until Random.Character and Random.Character:FindFirstChild("Head")
		local Gun = ReplicatedStorage.Weapons:FindFirstChild(LocalPlayer.NRPBS.EquippedTool.Value);
		local Distance = (LocalPlayer.Character.Head.Position - Random.Character.Head.Position).magnitude
		
		for i = 1, 5 do
			ReplicatedStorage.Events.HitPart:FireServer(
				Random.Character.Head,
				Random.Character.Head.Position + Vector3.new(math.random(), math.random(), math.random()),
				Gun.Name,
				2,
				Distance,
				false,
				true,
				false,
				1,
				false,
				Gun.FireRate.Value,
				Gun.ReloadTime.Value,
				Gun.Ammo.Value,
				Gun.StoredAmmo.Value,
				Gun.Bullets.Value,
				Gun.EquipTime.Value,
				Gun.RecoilControl.Value,
				Gun.Auto.Value,
				Gun['Speed%'].Value,
				wkspc.DistributedTime.Value
			)
		end
	end)
)
    end
 end 
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
