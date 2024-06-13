local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "MR", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Tab 1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Button!",
	Callback = function()
      		-- Encontre os jogadores
local jogadores = game.Players:GetPlayers()
local minhaParte = game.Workspace.MinhaParteVermelha

-- Crie uma linha vermelha para cada jogador
for _, jogador in pairs(jogadores) do
    local outraParte = jogador.Character:FindFirstChild("HumanoidRootPart") -- Ou outra parte relevante do jogador
    if outraParte then
        local linha = Instance.new("Beam")
        linha.Parent = game.Workspace
        linha.Color = Color3.new(1, 0, 0) -- Vermelho
        linha.Attachment0 = minhaParte:FindFirstChild("Attachment") -- Ponto de conexão na sua parte
        linha.Attachment1 = outraParte:FindFirstChild("Attachment") -- Ponto de conexão na parte do jogador
    end
end

  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
