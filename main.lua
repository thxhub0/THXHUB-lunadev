-- Verifica o jogo pelo PlaceId
if game.PlaceId == 4058282580 then
    -- Tente carregar a OrionLib e capture erros
    local OrionLib, err = pcall(function()
        return loadstring(game:HttpGet("https://raw.githubusercontent.com/jensonhirst/Orion/main/source"))()
    end)

    -- Verifica se a biblioteca foi carregada corretamente
    if not OrionLib then
        warn("Erro ao carregar a OrionLib: " .. err)
        return
    end

    local Window = OrionLib:MakeWindow({
        Name = "thx Hubi",
        HidePremium = false,
        SaveConfig = true,
        ConfigFolder = "Devi thx",
        IntroEnabled = true
    })

    -- AutoClick
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

    -- AutoClick toggle
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

-- Segundo jogo
elseif game.PlaceId == 1234567890 then -- Troque esse número pelo PlaceId correto do segundo jogo
    -- Tente carregar a OrionLib e capture erros
    local OrionLib, err = pcall(function()
        return loadstring(game:HttpGet("https://raw.githubusercontent.com/jensonhirst/Orion/main/source"))()
    end)

    -- Verifica se a biblioteca foi carregada corretamente
    if not OrionLib then
        warn("Erro ao carregar a OrionLib: " .. err)
        return
    end

    local Window = OrionLib:MakeWindow({
        Name = "thx Hubi",
        HidePremium = false,
        SaveConfig = true,
        ConfigFolder = "Devi thx",
        IntroEnabled = true
    })

    local Main = Window:MakeTab({
        Name = "auto farm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local Section = Main:AddSection({
        Name = "Main"
    })

    local autoAttack = false

    Main:AddToggle({
        Name = "Auto Attack",
        Default = false,
        Callback = function(Value)
            autoAttack = Value
            if autoAttack then
                task.spawn(function()
                    while autoAttack do
                        pcall(function()
                            local event = game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("events"):WaitForChild("RemoteEvent")
                            event:FireServer()
                        end)
                        task.wait(0.1)
                    end
                end)
            end
        end
    })
end
