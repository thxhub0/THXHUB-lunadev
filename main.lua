if game.PlaceId == 4058282580 then
    local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/jensonhirst/Orion/main/source"))()

    local Window = OrionLib:MakeWindow({
        Name = "thx Hubi",
        HidePremium = false,
        SaveConfig = true,
        ConfigFolder = "Devi thx",
        IntroEnabled = true
    })

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
_G.loopAtivo = true

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

if game.PlaceId == 76598287484083 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "thx Hubi", HidePremium = false, SaveConfig = true, ConfigFolder = "Devi thx", IntroEnable = true })

 _G.loopAtivo = true

local Main = Window:MakeTab({
    Name = "auto farm",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Main"
}) 

 Main:AddToggle({
    Name = "auto attack",
    Default = false,
    Callback = function(Value)
        game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("events"):WaitForChild("RemoteEvent"()
    end)
        task.wait(0.1)
})
end
