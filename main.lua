-- CHETSON V2.0: ORION ENGINE [FIXED]
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/ttwizz/Roblox/master/Orion.lua"))()
local Window = OrionLib:MakeWindow({Name = "CHETSON V2.0", HidePremium = false})

local Tab = Window:MakeTab({Name = "Main"})

_G.InfJump = false

Tab:AddSlider({
    Name = "Speed", Min = 16, Max = 250, Default = 16, 
    Callback = function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end
})

Tab:AddToggle({
    Name = "Infinite Jump", Default = false, 
    Callback = function(v) _G.InfJump = v end
})

-- Исправленная логика прыжка
game:GetService("UserInputService").JumpRequest:Connect(function()
    if _G.InfJump then
        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
    end
end)

OrionLib:MakeNotification({Name = "CHETSON", Content = "Подключено!"})

