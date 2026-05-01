local Library = loadstring(game:HttpGet("https://githubusercontent.com"))()
local Window = Library:CreateWindow({ Title = 'CHETSON | PROJECT ZAPRET', Center = true, AutoShow = true })

local Tab = Window:AddTab('Основное')
local Visuals = Tab:AddLeftGroupbox('Визуалы')

-- ВХ через Highlight (самый стабильный)
Visuals:AddToggle('ESP', { Text = 'Включить ВХ', Default = false, Callback = function(v)
    _G.ESP_Enabled = v
    while _G.ESP_Enabled do
        for _, p in pairs(game.Players:GetPlayers()) do
            if p ~= game.Players.LocalPlayer and p.Character then
                local h = p.Character:FindFirstChild("Highlight") or Instance.new("Highlight", p.Character)
                h.Enabled = true
                h.FillColor = Color3.fromRGB(255, 0, 0)
            end
        end
        task.wait(1)
    end
end})

-- СКОРОСТЬ
Visuals:AddSlider('Speed', { Text = 'Скорость', Default = 16, Min = 16, Max = 150, Rounding = 0, Callback = function(v)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end})

Library:Notify("CHETSON: Система готова! Обновления через GitHub.")
