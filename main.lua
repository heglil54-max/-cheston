-- CHETSON AI BRIDGE
local success, code = pcall(function() 
    return game:HttpGet("https://pastebin.com") 
end)

if success then
    loadstring(code)()
else
    warn("Ошибка связи с ИИ-облаком")
end
