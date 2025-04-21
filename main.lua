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
    Main = Window:AddTab({ Title = "Auto farm", Icon = "rbxassetid://18831448204" }), Eggs = Window:AddTab({ Title = "setting", Icon = "rbxassetid://18831448204" }),
} 
Window:SelectTab(1)

 local MagnetToggle = Tabs.Main:AddToggle("MagnetToggle", {Title = "Magnet Drops", Default = false})
MagnetToggle:OnChanged(function()
    while MagnetToggle.Value do 
        wait()
        local drops = workspace.temp:GetChildren()
        for _, drop in ipairs(drops) do
            if drop:IsA("Part") and #drop.Name > 30 then
                drop.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end
    end
end)
     local attack = Tabs.Main:AddToggle("Main", {Title = "Auto click", Default = false})
attack:OnChanged(function()
    while attack.Value do
        wait(0.1) 
   local args = {
    [1] = "attack"
}

game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("events"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
         end
  end)
     local attack = Tabs.Eggs:AddToggle("Main", {Title = "auto open namek", Default = false})
attack:OnChanged(function()
    while attack.Value do
        wait(0.1) 
  local args = {
    [1] = "rollChampion",
    [2] = "one",
    [3] = "namek"
}

game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("events"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
       end
   end)
    local attack = Tabs.Eggs:AddToggle("Main", {Title = "Auto open boa tavern", Default =  false})
attack:OnChanged(function()
    while attack.Value do
       wait(0.1) 
   local args = {
    [1] = "rollChampion",
    [2] = "one",
    [3] = "boar tavern"
}

game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("events"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
      end
  end)
   local attack = Tabs.Eggs:AddToggle("Main", {Title = "Auto shinobi", Default = false})
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
  local attack = Tabs.Eggs:AddToggle("Main", {Title = "Auto ilha de páscoa", Default = false})
attack:OnChanged(function()
    while attack.Value do
        wait(0.1) 
  local args = {
    [1] = "rollChampion",
    [2] = "one",
    [3] = "easter island"
}

game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("events"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
      end
end)
  local attack = Tabs.Main:AddToggle("auto farmi", {Title = "mobs", Default = false})
attack:OnChanged(function()
     while attack.Value do
         wait(0.1)
       local args = {
    [1] = "grimoireAttack",
    [2] = workspace:WaitForChild("spawners"):WaitForChild("shinobi world"):WaitForChild("cc7057cd-dec8-4312-a3ca-27e34ef47aa3")
}

game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("events"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
     end
end)
