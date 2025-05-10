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
    Main = Window:AddTab({ Title = "Auto farm", Icon = "rbxassetid://18831448204" }),
    Eggs = Window:AddTab({ Title = "• eggs", Icon = "rbxassetid://18319394996" }),
     Settings = Window:AddTab({ Title = "setting", Icon = "rbxassetid://18831448204" }),
} 
Window:SelectTab(1)


 local attack = Tabs.Main:AddToggle("main", {Title = "Auto open dragon ball", Default = false})
attack:OnChanged(function()
    while attack.Value do
        wait(0.1)
local args = {
	"DragonBall",
	"Normal",
	1
}
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.5.1"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("UnitHatchService"):WaitForChild("RF"):WaitForChild("hatch_unit"):InvokeServer(unpack(args))
     end
end)
   local attack = Tabs.Main:AddToggle("main", {Title = "Auto click Frozen captain", Default = false})
attack:OnChanged(function()
    while attack.Value do
        wait(0.1)
  local args = {
	{
		workspace:WaitForChild("Worlds"):WaitForChild("DragonBall"):WaitForChild("FriezaCaptain")
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.5.1"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("UnitsInventoryService"):WaitForChild("RF"):WaitForChild("deal_damage"):InvokeServer(unpack(args))
    end
end)
  local attack = Tabs.Main:AddToggle("main", {Title = "Auto click frieza boss", Default = false})
attack:OnChanged(function()
    while attack.Value do
        wait(0.1)
  local args = {
	{
		workspace:WaitForChild("Worlds"):WaitForChild("DragonBall"):WaitForChild("Frieza")
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.5.1"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("UnitsInventoryService"):WaitForChild("RF"):WaitForChild("deal_damage"):InvokeServer(unpack(args))
    end
end)
   local attack = Tabs.Main:AddToggle("main", {Title = "Auto open bleach", Default = false})
attack:OnChanged(function()
    while attack.Value do
        wait(0.1)
local args = {
	"Bleach",
	"Normal",
	1
}
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.5.1"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("UnitHatchService"):WaitForChild("RF"):WaitForChild("hatch_unit"):InvokeServer(unpack(args))
     end
end)
