-- Creazione di un'interfaccia grafica di base
local GuiLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/valentio3074/FishOverride1/refs/heads/main/fish_gui.lua"))()

-- Lista dei pesci
local fishList = {
    "Roslit Volcano", "Ember Snapper", "Obsidian Salmon", "Volcanic Geode", "Herring", "Arctic Char", "Glacier Pike",
    "Pond Emperor", "Glacierfish", "Swamp Bass", "Bowfin", "Marsh Gar", "Alligator", "Haddock", "Mackerel", "Sea Bass",
    "Smallmouth Bass", "White Bass", "Golden Smallmouth Bass", "Gazerfish", "Globe Jellyfish", "Eyefestation",
    "Skate Tuna", "Phantom Ray", "Cockatoo Squid", "Shortfin Mako Shark", "Galleon Goliath", "Shipwreck Barracuda",
    "Captain’s Goldfish", "Deep-Sea Hatchetfish", "Deep-Sea Dragonfish", "Candy Fish", "Skelefish", "Lego Fish",
    "Phantom Megalodon", "Megalodon", "Ancient Megalodon"
}

-- Variabile per il pesce selezionato
local selectedFish = nil

-- Funzione per iniziare la pesca
local function startFishing()
    if selectedFish then
        print("Iniziando a pescare il pesce: " .. selectedFish)
        -- Logica per simulare la pesca, aggiungi qui il tuo codice di pesca
        wait(2)  -- Simula il tempo per la pesca
        print("Pesca completata! Pesce catturato: " .. selectedFish)
    else
        print("Seleziona un pesce prima di pescare!")
    end
end

-- Funzione per creare il menu a tendina
local function createDropdownMenu()
    local dropdown = GuiLibrary.CreateDropdown({
        Title = "Seleziona il Pesce",
        Items = fishList,
        Callback = function(selected)
            selectedFish = selected
            print("Pesce selezionato: " .. selectedFish)
        end
    })
    return dropdown
end

-- Funzione per creare il pulsante di pesca
local function createFishingButton()
    local button = GuiLibrary.CreateButton({
        Title = "Inizia la Pesca",
        Callback = startFishing
    })
    return button
end

-- Funzione principale che esegue lo script
local function main()
    -- Crea la GUI con il menu a tendina e il pulsante di pesca
    local dropdown = createDropdownMenu()
    local fishingButton = createFishingButton()

    -- Mostra la GUI
    dropdown:Show()
    fishingButton:Show()

    -- Loop principale per l'interazione dell'utente (simulazione di un gioco)
    while true do
        wait(1)  -- Attendi un secondo prima di ripetere il ciclo
    end
end

-- Esegui lo script principale
main()
