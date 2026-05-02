-- CHETSON V2.0: GOD MODE [STABLE]
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("CHETSON V2.0", "BloodTheme")

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Features")

Section:NewSlider("Speed", "Быстрый бег", 250, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewToggle("Fly Mode", "Полет по камере", function(state)
    _G.Fly = state
end)

Section:NewToggle("Inf Jump", "Бесконечный прыжок", function(state)
    _G.InfJump = state
end)

-- Логика
game:GetService("UserInputService").JumpRequest:Connect(function()
    if _G.InfJump then game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping") end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Fly then
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = workspace.CurrentCamera.CFrame.LookVector * 100
            end
        end)
    end
end)
