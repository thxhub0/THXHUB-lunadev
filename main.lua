local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/discoart/FluentPlus/refs/heads/main/release.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
     
local Window = Fluent:CreateWindow({
    Title = "thx",
    SubTitle = "pelo thx",
    TabWidth = 100, 
    Size = UDim2.fromOffset(430, 300),
    Acrylic = false,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl 
})
local Tabs = {
    Main1 = Window:AddTab({ Title = "Main3", Icon = "rbxassetid://18831448204" }),
    Settings = Window:AddTab({ Title = "• Settings", Icon = "rbxassetid://18319394996" }),
     Main2 = Window:AddTab({ Title = "Eggs", Icon = "rbxassetid://18831448204" }),
} 
Window:SelectTab(1)


 local attack = Tabs.Main1:AddToggle("Auto Click", {Title = "Auto", Default = false})
attack:OnChanged(function()
    while attack.Value do
        wait(0.1)
     local args = {
    [1] = "attack"
}
game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("events"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
          end
     end)

 local attack = Tabs.Main2:AddToggle("eggs", {Title = "auto open", Default = false})
attack:OnChanged(function()
     while attack.Value do
         wait(0.1)
      local args = {
    [1] = "rollChampion",
    [2] = "one",
    [3] = "shinobi world"
}

game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("events"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
    end
end)
