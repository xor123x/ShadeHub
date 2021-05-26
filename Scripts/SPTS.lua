local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("ShadeHub - SuperPowerTrainningSim", "Ocean")
 
    -- MAIN
    local Main = Window:NewTab("Farming")
    local AFSection = Main:NewSection("AutoFarming")
    
    AFSection:NewToggle("Body Toughness", "Enables Body Toughness farm.", function(state)
    if state then
    getgenv().bt = true;

while wait() do
 if getgenv().bt == true then
local args = {
    [1] = {
        [1] = "+BT1"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))

    end
 end 
    else
    getgenv().bt = false;
    end
end)

 AFSection:NewToggle("Psychic Power", "Enables Psychic Power farm.", function(state)
    if state then
    getgenv().pp = true;

while wait() do
 if getgenv().pp == true then
local args = {
    [1] = {
        [1] = "+PP1"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))

    end
 end 
    else
    getgenv().pp = false;
    end
end)

AFSection:NewToggle("Movement Speed", "Enables Movement Speed farm.", function(state)
    if state then
    getgenv().ms = true;

while wait() do
 if getgenv().ms == true then
local args = {
    [1] = {
        [1] = "+MS1"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))

    end
 end 
    else
    getgenv().ms = false;
    end
end)

AFSection:NewToggle("Fist Strength", "Enables Fist Strength farm.", function(state)
    if state then
    getgenv().fs = true;

while wait() do
 if getgenv().fs == true then
local args = {
    [1] = {
        [1] = "+FS1"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))

    end
 end 
    else
    getgenv().fs = false;
    end
end)

AFSection:NewToggle("Jump Power", "Enables Jump Power farm.", function(state)
    if state then
    getgenv().jp = true;

while wait() do
 if getgenv().jp == true then
local args = {
    [1] = {
        [1] = "+JF1"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))

    end
 end 
    else
    getgenv().jp = false;
    end
end)
