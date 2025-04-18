-- Verifica o jogo pelo PlaceId
if game.PlaceId == 4058282580 then
    -- Tente carregar a Fluent e capture erros
    local Fluent, err = pcall(function()
        return loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
    end)

    -- Verifica se a biblioteca foi carregada corretamente
    if not Fluent then
        warn("Erro ao carregar a Fluent: " .. err)
        return
    end

    local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
    local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

    -- Verificar se a função 'CreateWindow' existe (caso o Fluent tenha sido carregado corretamente)
    if not Fluent.CreateWindow then
        warn("A função CreateWindow não foi encontrada no Fluent")
        return
    end

    local Window = Fluent:CreateWindow({
        Title = "thx Hub",
        SubTitle = "by thx",
        TabWidth = 160,
        Size = UDim2.fromOffset(580, 460),
        Acrylic = true,
        Theme = "Dark",
        MinimizeKey = Enum.KeyCode.LeftControl
    })

    -- Adiciona as abas
    local Tabs = {
        Main = Window:AddTab({ Title = "Main", Icon = "" }),
        Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
    }

     _G.loopAtivo = true

    -- Lógica de AutoClick
    local autoClickEnabled = true
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

    -- Aba Principal com Auto Vender e Auto Click
    local Main = Tabs.Main:AddSection({
        Name = "Auto Farming"
    })

    -- Auto Sell
    local autoSellEnabled = true
    Main:AddToggle({
        Title = "Auto Vende",
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

    -- Toggle de AutoClick
    Main:AddToggle({
        Title = "AutoClick",
        Default = false,
        Callback = function(state)
            autoClickEnabled = state
            if autoClickEnabled then
                startAutoClick()
            end
        end
    })

    -- Adiciona SaveManager e InterfaceManager
    SaveManager:SetLibrary(Fluent)
    InterfaceManager:SetLibrary(Fluent)
    SaveManager:SetFolder("FluentHub/specific-game")
    InterfaceManager:SetFolder("FluentHub")

    InterfaceManager:BuildInterfaceSection(Tabs.Settings)
    SaveManager:BuildConfigSection(Tabs.Settings)

    -- Carregar configuração salva
    SaveManager:LoadAutoloadConfig()

    -- Usar Fluent:Notify para exibir notificações
    Fluent:Notify({
        Title = "Fluent",
        Content = "O script foi carregado com sucesso!",
        Duration = 8
    })

elseif game.PlaceId == 76598287484083 then -- Troque esse número pelo PlaceId correto do segundo jogo
    -- Tente carregar a Fluent e capture erros
    local Fluent, err = pcall(function()
        return loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
    end)

    -- Verifica se a biblioteca foi carregada corretamente
    if not Fluent then
        warn("Erro ao carregar a Fluent: " .. err)
        return
    end

    local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
    local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

    -- Verificar se a função 'CreateWindow' existe (caso o Fluent tenha sido carregado corretamente)
    if not Fluent.CreateWindow then
        warn("A função CreateWindow não foi encontrada no Fluent")
        return
    end
     _G.loopAtivo = true

    local Main = Fluent:CreateWindow({
        Title = "thx",
        SubTitle = "by thx",
        TabWidth = 160,
        Size = UDim2.fromOffset(580, 460),
        Acrylic = true,
        Theme = "Dark",
        MinimizeKey = Enum.KeyCode.LeftControl
    })

    -- Adiciona as abas
    local Main = {
        Main = Window:AddTab({ Title = "Main", Icon = "" }),
        Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
    }

    -- Lógica de Auto Ataque
    local autoAttackEnabled = true
    local function startAutoAttack()
        task.spawn(function()
            while autoAttackEnabled do
                pcall(function()
                    local event = game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("events"):WaitForChild("RemoteEvent")
                    event:FireServer()
                end)
                task.wait(0.1)
            end
        end)
    end

    -- Aba Principal com Auto Ataque
    local Main = Tabs.Main:AddSection({
        Name = "Auto Attack"
    })

    Main:AddToggle({
        Title = "Auto Ataque",
        Default = false,
        Callback = function(Value)
            autoAttackEnabled = Value
            if autoAttackEnabled then
                startAutoAttack()
            end
        end
    })

    -- Adiciona SaveManager e InterfaceManager
    SaveManager:SetLibrary(Fluent)
    InterfaceManager:SetLibrary(Fluent)
    SaveManager:SetFolder("FluentHub/specific-game")
    InterfaceManager:SetFolder("FluentHub")

    InterfaceManager:BuildInterfaceSection(Tabs.Settings)
    SaveManager:BuildConfigSection(Tabs.Settings)

    -- Carregar configuração salva
    SaveManager:LoadAutoloadConfig()

    -- Usar Fluent:Notify para exibir notificações
    Fluent:Notify({
        Title = "Fluent",
        Content = "O script foi carregado com sucesso!",
        Duration = 8
    })
end
