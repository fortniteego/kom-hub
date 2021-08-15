local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Tower of Hell | Kom Hub", "Ocean")
local CoreGui = game:GetService("StarterGui")

local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Teleport To end", "If you crash or smething, its your exploit lol", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").tower.sections.finish.start.CFrame
end)

MainSection:NewButton("God Mode", "If you crash or smething, its your exploit lol", function()
for i,v in pairs(game.Workspace:GetDescendants()) do
	if v:FindFirstChild("kills") then 
		v:destroy()
	   end
    end
end)

local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

PlayerSection:NewSlider("JumpPower", "Changes the JumpPower", 250, 50, function(v)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)
