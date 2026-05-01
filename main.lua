print("---------------------------------")
print("CHETSON SYSTEM: СВЯЗЬ УСТАНОВЛЕНА")
print("---------------------------------")

-- Наша первая функция "Анти-АФК"
local VirtualUser = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
    print("AI: Предотвратил кик за АФК")
end)
