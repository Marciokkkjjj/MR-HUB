local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "MK-HUB", HidePremium = false, SaveConfig = true})

OrionLib:MakeNotification({
	Name = "Title!",
	Content = "Notification content... what will it say??",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local Tab = Window:MakeTab({
	Name = "Tab 1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Button!",
	Callback = function()
local player = game.Players.LocalPlayer
  	end    
})
