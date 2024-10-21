-- Carregar a biblioteca Orion local OrionLib =
loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Criar a janela principal local Window =
OrionLib:MakeWindow({ Name = "Onion Library Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OnionLibrary" })

-- Criar uma aba local Tab =
Window:MakeTab({ Name = "Scripts", Icon = "rbxassetid://4483345998", PremiumOnly = false })

-- Criar uma seção local Section =
Tab:AddSection({ Name = "Admin Scripts" })

-- Criar uma aba
local Tab = Window:MakeTab({
    Name = "Scripts",
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
        print("Script 1 executado")
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
