-- CHETSON V2.0: FULL AUTO-PILOT
local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local Window = Library:CreateWindow({ Title = 'CHETSON V2.0 | Cloud Active', Center = true, AutoShow = true })

local Tab = Window:AddTab('Main'):AddLeftGroupbox('Features')
Tab:AddSlider('Spd', { Text = 'SpeedHack', Default = 16, Min = 16, Max = 250, Rounding = 0 })
Tab:AddToggle('InfJ', { Text = 'Infinite Jump' })

-- Логика
game:GetService("UserInputService").JumpRequest:Connect(function()
    if Toggles.InfJ and Toggles.InfJ.Value then
        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
    end
end)

task.spawn(function()
    while task.wait() do
        pcall(function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Options.Spd.Value end)
    end
end)

Library:Notify('CHETSON: ОБЛАКО ПОДКЛЮЧЕНО')


