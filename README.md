-- Carregar a biblioteca Orion
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Criar a janela principal
local Window = OrionLib:MakeWindow({
    Name = "Onion Library Hub",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "OnionLibrary"
})



-- Criar uma aba
local Tab = Window:MakeTab({
    Name = "saitama",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Criar uma seção com o nome "TBS"
local Section = Tab:AddSection({
    Name = "TBS"
})

-- Adicionar scripts à seção
Section:AddButton({
    Name = "Script 1",
    Callback = function()
        getgenv().ToggleKeybind = Enum.KeyCode.RightControl
getgenv().FreeEmotesTab = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/ATrainz/main/main/Phantasm-Loader.lua"))(
    end
})

Section:AddButton({
    Name = "Script 2",
    Callback = function()
        print("Script 2 executado")
    end
})

Section:AddButton({
    Name = "Script 3",
    Callback = function()
        print("Script 3 executado")
    end
})

Section:AddButton({
    Name = "Script 4",
    Callback = function()
        print("Script 4 executado")
    end
})

Section:AddButton({
    Name = "Script 5",
    Callback = function()
        print("Script 5 executado")
    end
})

Section:AddButton({
    Name = "Script 6",
    Callback = function()
        print("Script 6 executado")
    end
})

Section:AddButton({
    Name = "Script 7",
    Callback = function()
        print("Script 7 executado")
    end
})

Section:AddButton({
    Name = "Script 8",
    Callback = function()
        print("Script 8 executado")
    end
})

Section:AddButton({
    Name = "Script 9",
    Callback = function()
        print("Script 9 executado")
    end
})

Section:AddButton({
    Name = "Script 10",
    Callback = function()
        print("Script 10 executado")
    end
})



-- Criar uma aba
local Tab = Window:MakeTab({
    Name = "Scripts",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Criar uma seção
local Section = Tab:AddSection({
    Name = "Admin Scripts"
})

-- Adicionar botões e funcionalidades
Section:AddButton({
    Name = "Infinite Yield",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end
})

Section:AddButton({
    Name = "Dex Explorer V3",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/peyton2465/Dex/master/out.lua"))()
    end
})

Section:AddButton({
    Name = "Admin Scripts",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
    end
})

Section:AddButton({
    Name = "Debug Log",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/debugnation/main/decompilers%20and%20debugging/Debuggers.txt"))()
    end
})

Section:AddButton({
    Name = "Remove Cooldown",
    Callback = function()
        local function removeCooldown(tool)
            if tool:IsA("Tool") then
                tool.Cooldown = 0
            else
                warn("Object is not a tool.")
            end
        end

        local function removeCooldownsInBackpack(player)
            local backpack = player.Backpack
            if backpack then
                for _, item in ipairs(backpack:GetChildren()) do
                    removeCooldown(item)
                end
            end
        end

        local function removeCooldownsInCharacter(player)
            local character = player.Character
            if character then
                for _, item in ipairs(character:GetChildren()) do
                    if item:IsA("Tool") then
                        removeCooldown(item)
                    end
                end
            end
        end

        local player = game.Players.LocalPlayer
        if player then
            removeCooldownsInBackpack(player)
            removeCooldownsInCharacter(player)
            print("Cooldowns removed from all tools.")
        else
            warn("Local player not found.")
        end
    end
})

Section:AddButton({
    Name = "FE Tool Giver",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/Fj8KWmLC"))()
    end
})

Section:AddButton({
    Name = "ESP",
    Callback = function()
        local ESP = loadstring(game:HttpGet("https://pastebin.com/raw/Fj8KWmLC"))()
        ESP:Toggle(true)
    end
})

Section:AddButton({
    Name = "OwlHub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))()
    end
})

Section:AddButton({
    Name = "Dark Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/init"))()
    end
})

-- Adicionar novos scripts
Section:AddButton({
    Name = "Blox Fruit Auto Farm",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/username/blox-fruit-auto-farm/main/script.lua"))()
    end
})

Section:AddButton({
    Name = "Arsenal Aimbot",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/username/arsenal-aimbot/main/script.lua"))()
    end
})

Section:AddButton({
    Name = "Tower of Hell Skip Stage",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/username/tower-of-hell-skip-stage/main/script.lua"))()
    end
})

Section:AddButton({
    Name = "Adopt Me Auto Farm",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/username/adopt-me-auto-farm/main/script.lua"))()
    end
})

Section:AddButton({
    Name = "Murder Mystery 2 ESP",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Doggo-cryto/EclipseMM2/master/Script"))()
    end
})

-- Função para mostrar/ocultar a janela ao pressionar LeftControl
local function toggleWindow()
    local isVisible = true

    game:GetService("UserInputService").InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.LeftControl then
            isVisible = not isVisible
            Window.Enabled = isVisible
        end
    end)
end

-- Iniciar o script
toggleWindow()
