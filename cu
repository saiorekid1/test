-- Carregar a biblioteca Orion
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Criar a janela principal
local Window = OrionLib:MakeWindow({
    Name = "Onion Library Hub",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "OnionLibrary"
})

-- Criar a aba principal de Scripts
local Tab = Window:MakeTab({
    Name = "Scripts",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Criar a seção de Admin Scripts
local Section = Tab:AddSection({
    Name = "Admin Scripts"
})

-- Adicionar os botões e funcionalidades na aba Scripts
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

-- Adicionar uma nova aba chamada TSB para scripts de Saitama Battleground
local TS_Tab = Window:MakeTab({
    Name = "TSB",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local TSB_Section = TS_Tab:AddSection({
    Name = "Saitama Battleground Scripts"
})

-- Adicionar 5 scripts na aba TSB, incluindo o script fornecido
TSB_Section:AddButton({
    Name = "Phantasm Loader",
    Callback = function()
        getgenv().ToggleKeybind = Enum.KeyCode.RightControl
        getgenv().FreeEmotesTab = false
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ATrainz/main/main/Phantasm-Loader.lua"))()
    end
})

TSB_Section:AddButton({
    Name = "One Punch Kill",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/username/one-punch-kill/main/script.lua"))()
    end
})

TSB_Section:AddButton({
    Name = "Auto Block",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/username/auto-block/main/script.lua"))()
    end
})

TSB_Section:AddButton({
    Name = "Saitama to Gojo",
    Callback = function()
        

    end
})

TSB_Section:AddButton({
    Name = "Saitma To Gojo",
    Callback = function()
        _G.settings = {
    ["RedStartupId"] = "rbxassetid://1177475221",
    ["RedHitId"] = "rbxassetid://8625377966",
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/BaldyToSorcerer/main/Latest.lua"))()

    end
})

-- Adicionar uma nova aba chamada TSB para scripts de Saitama Battleground
local TS_Tab = Window:MakeTab({
    Name = "TESTE",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local TSB_Section = TS_Tab:AddSection({
    Name = "Teste"
})

-- Adicionar uma aba chamada Extras para mais 5 scripts adicionais
local Extra_Tab = Window:MakeTab({
    Name = "Extras",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Extra_Section = Extra_Tab:AddSection({
    Name = "Extra Scripts"
})

-- Adicionar 5 scripts na aba Extras
Extra_Section:AddButton({
    Name = "BTools",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/username/btools/main/script.lua"))()
    end
})

Extra_Section:AddButton({
    Name = "Speed Hack",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/username/speed-hack/main/script.lua"))()
    end
})

Extra_Section:AddButton({
    Name = "No Clip",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/username/no-clip/main/script.lua"))()
    end
})

Extra_Section:AddButton({
    Name = "Gravity Modifier",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/username/gravity-modifier/main/script.lua"))()
    end
})

Extra_Section:AddButton({
    Name = "Fly Script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/username/fly-script/main/script.lua"))()
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
