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
-- Obtém o jogador local (você)
local player = game.Players.LocalPlayer

-- Função para teletransportar até a mansão
local function TeleportToMansion()
    local mansionPosition = Vector3.new(player + 88) -- Substitua pelos valores reais da posição da mansão

    -- Teleporta o jogador até a posição da mansão
    player.Character.HumanoidRootPart.CFrame = CFrame.new(mansionPosition)
end

-- Chama a função para se teletransportar até a mansão
TeleportToMansion()

})
