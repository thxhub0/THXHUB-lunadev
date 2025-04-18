 if game.PlaceId == 76598287484083 then 

local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/discoart/FluentPlus/refs/heads/main/release.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()



--ISSO DAKI É A UI VC MODIFCA COMO QUISER

local Window = Fluent:CreateWindow({
    Title = "thx",
    SubTitle = "pelo thx",
    TabWidth = 100, -- ISSO DAKI É BAGULHO DAS TAB
    Size = UDim2.fromOffset(330, 300),-- TAMANHO DA UI
    Acrylic = false,-- IGNORA
    Theme = "Dark", -- THEMA PADRAO 
    MinimizeKey = Enum.KeyCode.LeftControl -- ISSO DAKI É A LETRA QUE VAI MINIMIZAR NO PC
})
local Tabs = {-- as tabs, vc cria como quiser
    Main = Window:AddTab({ Title = "• Infor", Icon = "rbxassetid://18831448204" }),
    Settings = Window:AddTab({ Title = "• Settings", Icon = "rbxassetid://18319394996" }),
}
 _G.loopAtivo = true
local attack = Tabs.Main2:AddToggle("Auto Click", {Title = "Auto", Default = false})

attack:OnChanged(function()
    while attack.Value do
        wait(0.1)
        local args = {
            [1] = "Anime Power"
        }

      
        game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("events"):WaitForChild("RemoteEvent")
      
    end
end)
    
