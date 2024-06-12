local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
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

-- Função para desenhar a linha vermelha
local function DrawLineToPlayers()
    local players = game.Players:GetPlayers()

    for _, otherPlayer in pairs(players) do
        if otherPlayer ~= player then
            -- Cria uma linha vermelha
            local line = Instance.new("LineHandleAdornment")
            line.Parent = player.Character
            line.Adornee = otherPlayer.Character
            line.Length = (otherPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
            line.Color3 = Color3.new(1, 0, 0) -- Vermelho

            -- Atualiza a posição da linha a cada quadro
            game:GetService("RunService").RenderStepped:Connect(function()
                line.Length = (otherPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
            end)
        end
    end
end

-- Chama a função para desenhar a linha
DrawLineToPlayers()

  	end    
})
