if game.PlaceId == 4058282580 then
    local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Thx hubi " .. Fluent.Version,
    SubTitle = "by thx",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}


_G.loopAtivo = true
    -- AutoClick control
    local autoClickEnabled = false

    local function startAutoClick()
        task.spawn(function()
            while autoClickEnabled do
                pcall(function()
                    local vim = game:GetService("VirtualInputManager")
                    vim:SendMouseButtonEvent(0, 0, 0, true, game, 0)
                    vim:SendMouseButtonEvent(0, 0, 0, false, game, 0)
                end)
                task.wait(0.1)
            end
        end)
    end

    local Main = Window:MakeTab({
        Name = "auto farmi",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local Section = Main:AddSection({
        Name = "Main"
    })

    -- Auto Sell
    local autoSellEnabled = false

    Main:AddToggle({
        Name = "Auto Vende",
        Default = false,
        Callback = function(Value)
            autoSellEnabled = Value
            if autoSellEnabled then
                task.spawn(function()
                    while autoSellEnabled do
                        pcall(function()
                            game:GetService("ReplicatedStorage").Events.SellRequest:FireServer()
                        end)
                        task.wait(0.5)
                    end
                end)
            end
        end
    })

    -- AutoClick
    Main:AddToggle({
        Name = "AutoClick",
        Default = false,
        Callback = function(state)
            autoClickEnabled = state
            if autoClickEnabled then
                startAutoClick()
            end
        end
    })
end
