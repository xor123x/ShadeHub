local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("ShadeHub - WorldZero", "Ocean")
 

local Farming = Window:NewTab("Farming")
local fmSection = Farming:NewSection("Farming")

cbSection:NewToggle("Kill aura", "Enables kill aura.", function(state)
    if state then
        getgenv().kaura = true;

while wait() do
 if getgenv().kaura == true then

    else
        getgenv().kaura = false;
    end
end)
