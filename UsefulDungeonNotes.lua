
local loc = GetLocale()
if loc == "esES" or loc == "esMX" then
	print("|cff00ff00UsefulDungeonNotes cargado. Utiliza /udn para abir la ventana o pulsa el botón en el minimapa.|r")
else
	print("|cff00ff00UsefulDungeonNotes loaded. Use /udn to open the window or press the button on the minimap.|r")
end
---------------------------------------------------------
-- NAMESPACE
---------------------------------------------------------

local ADDON_NAME, ns = ...
ns = ns or {}

---------------------------------------------------------
-- LOCALIZACIÓN
---------------------------------------------------------

ns.L = ns.L or {}
local L = ns.L

-- Tabs
L["Trash"] = "Pulls"
L["Boss 1"] = "Boss 1"
L["Boss 2"] = "Boss 2"
L["Boss 3"] = "Boss 3"
L["Boss 4"] = "Boss 4"
L["Info"] = "Info"

-- UI messages
L["NoNotes"] = "No hay notas para esta pestaña."
L["WindowTitle"] = "Useful Dungeon Notes"

-- Dropdown
L["SelectDungeon"] = "Selecciona mazmorra"

-- Slash command
L["AddonLoaded"] = "UsefulDungeonNotes cargado. Usa /udn para abrir la ventana o pulse el botón del minimapa."

-- Info Page ES
L["InfoPageText"] = [[
|cffffd100Useful Dungeon Notes|r

|cffffffffEste addon muestra una lista con mecánicas importantes para cada mazmorra.|r
|cffffffffTodas las mecánicas han sido extraidas de las guías de Topicx. Para más información en detalle|r
|cffffffffno olvides echarle un ojo a sus vídeos. Están muy bien hechos y son fáciles de entender (en inglés)|r
|cffffffffGracias por tu esfuerzo!|r

|cff80bfffCOLORES POR ROL|r
• |cff1e90ffAzul|r|cffffffff: Mecánicas específicas del tanque|r
• |cff4dff4dVerde|r|cffffffff: Mecánicas específicas del healer|r
• |cffff4d4dRojo|r|cffffffff: Mecánicas específicas del DPS|r
• |cffffffffBlanco|r|cffffffff: Mecánicas generales|r

|cff80bfffCONSEJO|r  
|cffffffffPuedes cambiar de mazmorra con el menú superior y navegar entre secciones con las pestañas.|r
]]

-- Info Page EN
L["InfoPageText_en"] = [[
|cffffd100Useful Dungeon Notes|r

|cffffffffThis addon provides a simple list of important mechanics for every dungeon.|r
|cffffffffAll the mechanics have been extracted from Topicx dungeon guides. For more detailed information|r
|cffffffffdo not hesitate on watching his videos, they're very well made and easy to understand!|r
|cffffffffThank you for your hard work!|r

|cff80bfffROLE COLORS|r
• |cff1e90ffBlue|r|cffffffff: Tank specific mechanics|r
• |cff4dff4dGreen|r|cffffffff: Healer specific mechanics|r
• |cffff4d4dRed|r|cffffffff: DPS specific mechanics|r
• |cffffffffWhite|r|cffffffff: General Mechanics|r

|cff80bfffTIP|r  
|cffffffffYou can switch dungeons using the top menu and navigate sections with the tabs.|r
]]

-- PERSONAL NOTES
L["PersonalNotes"] = "Notas personales"
L["PersonalNotes_en"] = "Personal Notes"

-- ICON LIST

TANK_ICON = CreateAtlasMarkup("Adventures-Tank", 16, 16, 0 , -5)
HEALER_ICON = CreateAtlasMarkup("Adventures-Healer", 16, 16, 0 , -5)
DPS_ICON = CreateAtlasMarkup("Adventures-DPS", 16, 16, 0 , -5)
INTERRUPT_ICON = "|TInterface\\Icons\\Ability_Kick:16:16:0:-5|t"

---------------------------------------------------------
-- VARIABLES PRINCIPALES
---------------------------------------------------------

UsefulDungeonNotesEnabledDungeons = {
    2813,2859,2825,2923,2993,2521,1877,1762
}

UsefulDungeonNotesDB = UsefulDungeonNotesDB or {}
UsefulDungeonNotesDB.minimap = UsefulDungeonNotesDB.minimap or { angle = 45 }
UsefulDungeonNotesDB.lastDungeon = UsefulDungeonNotesDB.lastDungeon or UsefulDungeonNotesEnabledDungeons[0]

UsefulDungeonNotesCharDB = UsefulDungeonNotesCharDB or {}
UsefulDungeonNotesCharDB.personalNotes = UsefulDungeonNotesCharDB.personalNotes or {} --Used to save the personal notes for each tab in each dungeon.

local data = UsefulDungeonNotesData

function UsefulDungeonNotes_GetEnabledDungeons()
    local list = {}
    for _, id in ipairs(UsefulDungeonNotesEnabledDungeons) do
        if data[id] then table.insert(list, id) end
    end
    return list
end

---------------------------------------------------------
-- DETECTAR MAZMORRA
---------------------------------------------------------
local function GetPersonalNote(dungeonID, tab)
    UsefulDungeonNotesCharDB.personalNotes[dungeonID] =
        UsefulDungeonNotesCharDB.personalNotes[dungeonID] or {}

    return UsefulDungeonNotesCharDB.personalNotes[dungeonID][tab] or ""
end

local function SavePersonalNote(dungeonID, tab, text)
    UsefulDungeonNotesCharDB.personalNotes[dungeonID] =
        UsefulDungeonNotesCharDB.personalNotes[dungeonID] or {}

    UsefulDungeonNotesCharDB.personalNotes[dungeonID][tab] = text
end

local function DetectCurrentDungeon()
    local _, instanceType, _, _, _, _, _, mapID = GetInstanceInfo()
    if instanceType ~= "party" then return UsefulDungeonNotesEnabledDungeons[1] end
    return data[mapID] and mapID or UsefulDungeonNotesEnabledDungeons[1]
end

---------------------------------------------------------
-- VARIABLES INTERNAS
---------------------------------------------------------

local currentDungeon = UsefulDungeonNotesDB.lastDungeon
local currentTab = "Info"

ns.currentDungeon = function() return currentDungeon end
ns.setDungeon = function(id) currentDungeon = id end
ns.currentTab = function() return currentTab end
ns.setTab = function(tab) currentTab = tab end

---------------------------------------------------------
-- CREAR VENTANA PRINCIPAL
---------------------------------------------------------

local frame = CreateFrame("Frame", "UsefulDungeonNotesFrame", UIParent, "BackdropTemplate")
ns.frame = frame

frame:SetSize(500, 420)
frame:SetPoint("CENTER")
frame:Hide()
frame:SetMovable(true)
frame:EnableMouse(true)
frame:RegisterForDrag("LeftButton")
frame:SetScript("OnDragStart", frame.StartMoving)
frame:SetScript("OnDragStop", frame.StopMovingOrSizing)

frame:SetBackdrop({
    bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background-Dark",
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
    tile = true, tileSize = 16, edgeSize = 16,
    insets = { left = 4, right = 4, top = 4, bottom = 4 }
})
frame:SetBackdropColor(0, 0, 0, 0.85)

frame.title = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
frame.title:SetPoint("TOP", 0, -12)
frame.title:SetText("|cff00ccff" .. (L["WindowTitle"] or "Useful Dungeon Notes") .. "|r")

local close = CreateFrame("Button", nil, frame, "UIPanelCloseButton")
close:SetPoint("TOPRIGHT", -5, -5)

---------------------------------------------------------
-- DROPDOWN MODERNO
---------------------------------------------------------

local function GetDungeonDisplayName(id)
    local d = data[id]
    if not d then return "Unknown" end
    local loc = GetLocale()
    return (loc == "esES" or loc == "esMX") and d.name.es or d.name.en
end

-- Botón principal
local dropdown = CreateFrame("Button", "UDNDungeonDropdown", frame, "BackdropTemplate")
dropdown:SetPoint("TOPLEFT", 15, -55)
dropdown:SetSize(200, 28)

dropdown:SetBackdrop({
    bgFile = "Interface\\Buttons\\WHITE8x8",
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
    edgeSize = 12,
})
dropdown:SetBackdropColor(0, 0, 0, 0.9)
dropdown:SetBackdropBorderColor(0.2, 0.6, 1, 1)

dropdown.text = dropdown:CreateFontString(nil, "OVERLAY", "GameFontNormal")
dropdown.text:SetPoint("LEFT", 10, 0)
dropdown.text:SetText(L["SelectDungeon"])

dropdown.arrow = dropdown:CreateTexture(nil, "OVERLAY")
dropdown.arrow:SetTexture("Interface\\Buttons\\UI-ScrollBar-ScrollDownButton-Up")
dropdown.arrow:SetSize(16, 16)
dropdown.arrow:SetPoint("RIGHT", -8, 0)

-- Menú flotante
local menu = CreateFrame("Frame", "UDNDungeonDropdownMenu", frame, "BackdropTemplate")
menu:SetPoint("TOPLEFT", dropdown, "BOTTOMLEFT", 0, -4)
menu:SetSize(200, 10)
menu:Hide()

menu:SetBackdrop({
    bgFile = "Interface\\Buttons\\WHITE8x8",
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
    edgeSize = 12,
})
menu:SetBackdropColor(0, 0, 0, 0.95)
menu:SetBackdropBorderColor(0.2, 0.6, 1, 1)

menu.buttons = {}

menu:SetParent(UIParent)
menu:SetFrameStrata("TOOLTIP")
menu:SetFrameLevel(2000)
menu:SetBackdropColor(0, 0, 0, 1)

local function RefreshDropdownMenu()
    for _, b in ipairs(menu.buttons) do b:Hide() end
    wipe(menu.buttons)

    local enabled = UsefulDungeonNotes_GetEnabledDungeons()
    local y = -5

    for _, id in ipairs(enabled) do
        local btn = CreateFrame("Button", nil, menu, "BackdropTemplate")
        btn:SetPoint("TOPLEFT", 5, y)
        btn:SetSize(190, 22)

        btn.text = btn:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        btn.text:SetPoint("LEFT", 8, 0)
        btn.text:SetText(GetDungeonDisplayName(id))

        btn:SetBackdrop({ bgFile = "Interface\\Buttons\\WHITE8x8" })
        btn:SetBackdropColor(0.12, 0.12, 0.12, 0.8)

        btn:SetScript("OnEnter", function()
            btn:SetBackdropColor(0.2, 0.4, 0.8, 1)
        end)
        btn:SetScript("OnLeave", function()
            btn:SetBackdropColor(0.12, 0.12, 0.12, 0.8)
        end)

        btn:SetScript("OnClick", function()
            currentDungeon = id
            UsefulDungeonNotesDB.lastDungeon = id
            dropdown.text:SetText(GetDungeonDisplayName(id))
            menu:Hide()

            frame:GenerateTabs()
            frame:SelectTab("Info")
        end)

        table.insert(menu.buttons, btn)
        y = y - 24
    end

    menu:SetHeight(-y + 5)
end

dropdown:SetScript("OnClick", function()
    if menu:IsShown() then
        menu:Hide()
    else
        RefreshDropdownMenu()
        menu:Show()
    end
end)

-- Cerrar menú al hacer clic fuera
local clickCatcher = CreateFrame("Frame", nil, UIParent)
clickCatcher:SetFrameStrata("FULLSCREEN_DIALOG")
clickCatcher:SetFrameLevel(1)
clickCatcher:EnableMouse(true)
clickCatcher:Hide()

clickCatcher:SetScript("OnMouseDown", function()
    menu:Hide()
    clickCatcher:Hide()
end)

dropdown:HookScript("OnClick", function()
    clickCatcher:SetAllPoints(UIParent)
    clickCatcher:Show()
end)

menu:HookScript("OnHide", function()
    clickCatcher:Hide()
end)

dungeonDropdown = dropdown

---------------------------------------------------------
-- INFO PAGE
---------------------------------------------------------

function ns.InfoPage()
    local loc = GetLocale()
    if loc == "esES" or loc == "esMX" then
        return L["InfoPageText"]
    end
    return L["InfoPageText_en"]
end

---------------------------------------------------------
-- RENDERIZADO DE ENTRADAS
---------------------------------------------------------

local roleColors = {
    tank   = "|cff1e90ff",
    healer = "|cff4dff4d",
    dps    = "|cffff4d4d",
    all    = "|cffffffff",
}

local function RenderEntry(entry)
    local loc = GetLocale()
	local text

	if loc == "esES" or loc == "esMX" then
		text = entry.es ~= "" and entry.es or entry.en
	else
		text = entry.en ~= "" and entry.en or entry.es
	end
    local t = entry.type
    local r = entry.role or "all"
	local prop = entry.text_prop

    if t == "title" then
        return "\n|cffffd100" .. text .. "|r"

    elseif t == "note" then
        return "\n|cff80bfff" .. text .. "|r\n"

    elseif t == "mechanic" then
        local color = roleColors[r] or "|cffffffff"
		
		if r == "tank" then
			if prop == "tab" then
				return "    • " .. TANK_ICON .. color .. text .. "|r\n" --Sets indentation if prop = "tab"
			else
				return "• " .. TANK_ICON .. color .. text .. "|r\n"
			end
		elseif r == "healer" then
			if prop == "tab" then
				return "    • " .. HEALER_ICON .. color .. text .. "|r\n"--Sets indentation if prop = "tab"
			else
				return "• " .. HEALER_ICON .. color .. text .. "|r\n"
			end
		elseif r == "dps" then
			if prop == "tab" then
				return "    • " .. DPS_ICON .. color .. text .. "|r\n"--Sets indentation if prop = "tab"
			else
				return "• " .. DPS_ICON .. color .. text .. "|r\n"
			end
		elseif r == "interrupt" then
			if prop == "tab" then
				return "    • " .. INTERRUPT_ICON .. color .. text .. "|r\n"--Sets indentation if prop = "tab"
			else
				return "• " .. INTERRUPT_ICON .. color .. text .. "|r\n"
			end
		else
			if prop == "tab" then
				return "    • ".. color .. text .. "|r\n"--Sets indentation if prop = "tab"
			else
				return "• " .. color .. text .. "|r\n"
			end
			
		end
    end

    return text .. "\n"
end

---------------------------------------------------------
-- CONSTRUIR TEXTO FINAL
---------------------------------------------------------

local function BuildText(id, tab)
    local dungeon = data[id]
    if not dungeon then return L["NoNotes"] end

    if tab == "Info" then
        return ns.InfoPage()
    end

    local list = dungeon[tab]
    if not list then return L["NoNotes"] end

    local final = ""
    for _, entry in ipairs(list) do
        final = final .. RenderEntry(entry)
    end

    return final
end

---------------------------------------------------------
-- SCROLLFRAME + TEXTO (MODERNO)
---------------------------------------------------------

local scrollFrame = CreateFrame("ScrollFrame", "UDNScrollFrame", frame, "UIPanelScrollFrameTemplate")
scrollFrame:SetPoint("TOPLEFT", 20, -140)
scrollFrame:SetPoint("BOTTOMRIGHT", -35, 20)

-- Fondo del scroll (oscuro)
local scrollBG = scrollFrame:CreateTexture(nil, "BACKGROUND")
scrollBG:SetAllPoints()
scrollBG:SetColorTexture(0, 0, 0, 0.25)

-- Contenedor del texto
local textContainer = CreateFrame("Frame", nil, scrollFrame)
textContainer:SetPoint("TOPLEFT")
textContainer:SetWidth(440)
scrollFrame:SetScrollChild(textContainer)

local textFont = textContainer:CreateFontString(nil, "ARTWORK", "GameFontNormal")
textFont:SetPoint("TOPLEFT", 0, -4)
textFont:SetPoint("TOPRIGHT", 0, -4)
textFont:SetJustifyH("LEFT")
textFont:SetFont("Fonts\\FRIZQT__.TTF", 14)
textFont:SetSpacing(6)

---------------------------------------------------------
-- PERSONAL NOTES
---------------------------------------------------------

-- FIX: Reduced icons to 14px so they don't expand the line height and break the cursor!
local ED_TANK_ICON = CreateAtlasMarkup("Adventures-Tank", 12, 12, 0, -3)
local ED_HEALER_ICON = CreateAtlasMarkup("Adventures-Healer", 12, 12, 0, -3)
local ED_DPS_ICON = CreateAtlasMarkup("Adventures-DPS", 12, 12, 0, -3)
local ED_INTERRUPT_ICON = "|TInterface\\Icons\\Ability_Kick:12:12:0:-3|t"

local notesTitle = textContainer:CreateFontString(nil, "OVERLAY", "GameFontHighlight")

local notesHeader
if GetLocale() == "esES" or GetLocale() == "esMX" then
    notesHeader = L["PersonalNotes"]
else
    notesHeader = L["PersonalNotes_en"]
end
notesTitle:SetText("|cff80bfff" .. notesHeader .. "|r")

local notesBG = CreateFrame("Frame", nil, textContainer, "BackdropTemplate")
notesBG:SetSize(420, 30)
notesBG:SetBackdrop({
    bgFile = "Interface\\Buttons\\WHITE8x8",
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
    edgeSize = 12,
})
notesBG:SetBackdropColor(0.05,0.05,0.05,0.9)
notesBG:SetBackdropBorderColor(0.2,0.6,1,1)

local notesEditBox = CreateFrame("EditBox", "UDNPersonalNotesEditBox", notesBG, "BackdropTemplate")
notesEditBox:SetMultiLine(true)
notesEditBox:SetAutoFocus(false)
notesEditBox:SetFont("Fonts\\FRIZQT__.TTF", 14, "") 
notesEditBox:SetJustifyH("LEFT")
notesEditBox:SetJustifyV("TOP")
-- FIX: Add a little spacing between lines to help the cursor align properly
notesEditBox:SetSpacing(4) 

-- Anchor to all 4 corners with 5px padding
notesEditBox:ClearAllPoints()
notesEditBox:SetPoint("TOPLEFT", notesBG, "TOPLEFT", 5, -5)
notesEditBox:SetPoint("TOPRIGHT", notesBG, "TOPRIGHT", -5, -5)
notesEditBox:SetPoint("BOTTOMLEFT", notesBG, "BOTTOMLEFT", 5, 5)
notesEditBox:SetPoint("BOTTOMRIGHT", notesBG, "BOTTOMRIGHT", -5, 5)
-- FIX: Y insets must be 0 so they don't desync the cursor!
notesEditBox:SetTextInsets(5, 5, 0, 0)

---------------------------------------------------------
-- ICON INSERT BUTTONS (TEXTURE BASED)
---------------------------------------------------------

local buttonContainer = CreateFrame("Frame", nil, textContainer)
buttonContainer:SetSize(120, 24)
buttonContainer:SetPoint("LEFT", notesTitle, "RIGHT", 10, -3)

local function CreateIconInsertButton(markup, atlas, texture, tooltipEN, tooltipES, anchorFrame)
    local btn = CreateFrame("Button", nil, buttonContainer)
    btn:SetSize(20, 20)
    
    if anchorFrame then
        btn:SetPoint("LEFT", anchorFrame, "RIGHT", 5, 0)
    else
        btn:SetPoint("LEFT", buttonContainer, "LEFT", 0, 0)
    end

    -- Buttons remain 16px so they look good on the UI
    btn.icon = btn:CreateTexture(nil, "ARTWORK")
    if atlas then
        btn.icon:SetAtlas(atlas)
    else
        btn.icon:SetTexture(texture)
    end
    btn.icon:SetSize(16, 16)
    btn.icon:SetPoint("CENTER")

    local loc = GetLocale()
    local finalTooltip = (loc == "esES" or loc == "esMX") and tooltipES or tooltipEN

    btn:SetScript("OnEnter", function()
        GameTooltip:SetOwner(btn, "ANCHOR_TOP")
        GameTooltip:SetText(finalTooltip, 1, 1, 1, 1, true)
    end)
    btn:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)

    btn:SetScript("OnClick", function()
        notesEditBox:Insert(markup)
        notesEditBox:SetFocus()
    end)

    return btn
end

local tankBtn = CreateIconInsertButton(ED_TANK_ICON, "Adventures-Tank", nil, "Tank Icon", "Icono de Tanque")
local healerBtn = CreateIconInsertButton(ED_HEALER_ICON, "Adventures-Healer", nil, "Healer Icon", "Icono de Healer", tankBtn)
local dpsBtn = CreateIconInsertButton(ED_DPS_ICON, "Adventures-DPS", nil, "DPS Icon", "Icono de DPS", healerBtn)
local interruptBtn = CreateIconInsertButton(ED_INTERRUPT_ICON, nil, "Interface\\Icons\\Ability_Kick", "Interrupt Icon", "Icono de Interrupción", dpsBtn)

---------------------------------------------------------
-- MEASURING & LAYOUT LOGIC
---------------------------------------------------------

local notesMeasure = textContainer:CreateFontString(nil, "ARTWORK", "ChatFontNormal")
notesMeasure:Hide()
notesMeasure:SetPoint("TOPLEFT", 5, 0)
notesMeasure:SetPoint("TOPRIGHT", -5, 0)
notesMeasure:SetJustifyH("LEFT")
notesMeasure:SetJustifyV("TOP")
-- FIX: Match the spacing of the EditBox!
notesMeasure:SetSpacing(4) 
notesMeasure:SetWidth(410)
notesMeasure:SetFont("Fonts\\FRIZQT__.TTF", 14, "") 

local function UpdateLayout()
    local textHeight = textFont:GetStringHeight()
    local titleHeight = notesTitle:IsShown() and notesTitle:GetStringHeight() or 0
    local notesHeight = notesBG:IsShown() and notesBG:GetHeight() or 0
    
    local totalHeight = textHeight + 4 + 20 + titleHeight + 10 + notesHeight + 20
    textContainer:SetHeight(totalHeight)
    scrollFrame:UpdateScrollChildRect()
end

notesEditBox:SetScript("OnTextChanged", function(self, isUserInput)
    if isUserInput then
        local id = ns.currentDungeon()
        local tab = ns.currentTab()
        SavePersonalNote(id, tab, self:GetText())
    end

    local measureText = self:GetText()
    if measureText:sub(-1) == "\n" then
        measureText = measureText .. " "
    end
    
    notesMeasure:SetText(measureText)
    local textHeight = notesMeasure:GetStringHeight()
    
    -- 10px added for top/bottom padding (5px each)
    local newHeight = math.max(30, textHeight + 10)
    notesBG:SetHeight(newHeight)
    
    UpdateLayout()
end)

function ns.SetText(text)
    textFont:SetText(text)
    
    notesTitle:ClearAllPoints()
    notesTitle:SetPoint("TOPLEFT", textFont, "BOTTOMLEFT", 0, -20)
    
    notesBG:ClearAllPoints()
    notesBG:SetPoint("TOPLEFT", notesTitle, "BOTTOMLEFT", 0, -10)
    notesBG:SetWidth(420)
    
    UpdateLayout()
end

---------------------------------------------------------
-- SCROLLBAR MODERNO
---------------------------------------------------------

local scrollbar = _G["UDNScrollFrameScrollBar"]

scrollbar:ClearAllPoints()
scrollbar:SetPoint("TOPRIGHT", scrollFrame, "TOPRIGHT", 16, -16)
scrollbar:SetPoint("BOTTOMRIGHT", scrollFrame, "BOTTOMRIGHT", 16, 16)

-- Fondo del scrollbar
local sbBG = scrollbar:CreateTexture(nil, "BACKGROUND")
sbBG:SetAllPoints()
sbBG:SetColorTexture(0, 0, 0, 0.4)

-- Thumb (barra deslizante)
local thumb = scrollbar:GetThumbTexture()
thumb:SetColorTexture(0.2, 0.6, 1, 0.9)
thumb:SetWidth(10)
thumb:SetBlendMode("ADD")

thumb:SetScript("OnEnter", function()
    thumb:SetColorTexture(0.3, 0.7, 1, 1)
end)

thumb:SetScript("OnLeave", function()
    thumb:SetColorTexture(0.2, 0.6, 1, 0.9)
end)

---------------------------------------------------------
-- SELECT TAB
---------------------------------------------------------

function frame:SelectTab(tab)
    ns.setTab(tab)

    local id = ns.currentDungeon()
    local text = BuildText(id, tab)
	
	notesEditBox:SetText(
    GetPersonalNote(id, tab)
	)
    local offset = (frame.tabsHeight or 22)
	
    scrollFrame:ClearAllPoints()
    scrollFrame:SetPoint("TOPLEFT", 20, -(100 + offset))
    scrollFrame:SetPoint("BOTTOMRIGHT", -35, 20)

    textFont:ClearAllPoints()
    textFont:SetPoint("TOPLEFT", 0, -4)
    textFont:SetPoint("TOPRIGHT", 0, -4)
	
	if tab == "Info" then
	    notesTitle:Hide()
	    notesEditBox:Hide()
		notesBG:Hide()
	else
	    notesTitle:Show()
	    notesEditBox:Show()
		notesBG:Show()
	end
	
    ns.SetText(text)
    frame:UpdateTabHighlight(tab)
end

---------------------------------------------------------
-- GENERATE TABS (MODERNAS)
---------------------------------------------------------

function frame:GenerateTabs()
    if frame.tabContainer then frame.tabContainer:Hide() end

    local id = ns.currentDungeon()
    local dungeon = data[id]
    if not dungeon then return end

    local container = CreateFrame("Frame", nil, frame)
    container:SetPoint("TOPLEFT", 15, -100)
    container:SetSize(450, 60)
    frame.tabContainer = container

    local tabs = { "Info" }

    for key, value in pairs(dungeon) do
        if type(value) == "table" and key ~= "name" then
            table.insert(tabs, key)
        end
    end

    table.sort(tabs, function(a, b)
    -- Info siempre primero
    if a == "Info" then return true end
    if b == "Info" then return false end

    -- Trash/Pulls siempre último
    if a == "Trash" or a == "Pulls" then return false end
    if b == "Trash" or b == "Pulls" then return true end

    -- El resto alfabético
    return a < b
end)

    frame.tabButtons = {}

    local rowWidth = 0
    local row = 1
    local maxWidth = 430

    for _, name in ipairs(tabs) do
        local btn = CreateFrame("Button", nil, container, "BackdropTemplate")

        btn.text = btn:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        btn.text:SetPoint("CENTER")
        local displayName = name

		-- Si es un jefe, usar su nombre traducido
		if dungeon[name] and dungeon[name].name then
			local loc = GetLocale()
			if loc == "esES" or loc == "esMX" then
				displayName = dungeon[name].name.es
			else
				displayName = dungeon[name].name.en
			end
		end

		btn.text:SetText(displayName)

        local width = btn.text:GetStringWidth() + 20
        btn:SetSize(width, 24)

        if rowWidth + width > maxWidth then
            row = row + 1
            rowWidth = 0
        end

        btn:SetPoint("TOPLEFT", rowWidth, -(row - 1) * 28)
        rowWidth = rowWidth + width + 5

        btn:SetBackdrop({
            bgFile = "Interface\\Buttons\\WHITE8x8",
        })
        btn:SetBackdropColor(0.15, 0.15, 0.15, 0.6)

        btn:SetScript("OnClick", function()
            frame:SelectTab(name)
        end)

        frame.tabButtons[name] = btn
    end

    frame:UpdateTabHighlight(ns.currentTab())

    local totalRows = row
    frame.tabsHeight = totalRows * 28 + 10
end

---------------------------------------------------------
-- HIGHLIGHT DE TABS (MODERNO)
---------------------------------------------------------

function frame:UpdateTabHighlight(selected)
    for name, btn in pairs(frame.tabButtons) do
        if name == selected then
            btn:SetBackdrop({
                bgFile = "Interface\\Buttons\\WHITE8x8",
                edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
                edgeSize = 12,
            })
            btn:SetBackdropColor(0.1, 0.4, 0.8, 0.8)
            btn:SetBackdropBorderColor(0.2, 0.6, 1)
            btn.text:SetTextColor(1, 1, 1)
        else
            btn:SetBackdrop({ bgFile = "Interface\\Buttons\\WHITE8x8" })
            btn:SetBackdropColor(0.15, 0.15, 0.15, 0.6)
            btn.text:SetTextColor(0.8, 0.8, 0.8)
        end
    end
end

---------------------------------------------------------
-- MINIMAP BUTTON (MODERNO)
---------------------------------------------------------

local miniButton = CreateFrame("Button", "UsefulDungeonNotes_MinimapButton", Minimap)
miniButton:SetSize(32, 32)
miniButton:SetFrameStrata("HIGH")
miniButton:SetFrameLevel(999)
miniButton:EnableMouse(true)
miniButton:SetMovable(true)

-- Icono
miniButton.icon = miniButton:CreateTexture(nil, "ARTWORK")
miniButton.icon:SetTexture("Interface\\Icons\\INV_Misc_Note_01")
miniButton.icon:SetSize(20, 20)
miniButton.icon:SetPoint("CENTER")

-- Fondo circular moderno
local bg = miniButton:CreateTexture(nil, "OVERLAY")
bg:SetTexture("Interface\\Minimap\\UI-Minimap-Background")
bg:SetSize(24, 24)
bg:SetPoint("CENTER")
bg:SetVertexColor(0, 0, 0, 0.7)

-- Borde suave
local border = miniButton:CreateTexture(nil, "OVERLAY")
border:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")
border:SetSize(54, 54)
border:SetPoint("CENTER", miniButton, "CENTER", 10, -10)

miniButton:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")

---------------------------------------------------------
-- DRAG DEL BOTÓN
---------------------------------------------------------

miniButton:RegisterForDrag("LeftButton")
miniButton:SetScript("OnDragStart", function(self)
    self:SetScript("OnUpdate", function()
        local mx, my = Minimap:GetCenter()
        local cx, cy = GetCursorPosition()
        local scale = UIParent:GetEffectiveScale()
        cx, cy = cx / scale, cy / scale

        local angle = math.deg(math.atan2(cy - my, cx - mx))
        UsefulDungeonNotesDB.minimap.angle = angle

        local radius = (Minimap:GetWidth() / 2) + 10
        local x = math.cos(math.rad(angle)) * radius
        local y = math.sin(math.rad(angle)) * radius

        self:ClearAllPoints()
        self:SetPoint("CENTER", Minimap, "CENTER", x, y)
    end)
end)

miniButton:SetScript("OnDragStop", function(self)
    self:SetScript("OnUpdate", nil)
end)

---------------------------------------------------------
-- CLICK DEL BOTÓN
---------------------------------------------------------

miniButton:SetScript("OnClick", function()
    if frame:IsShown() then
        frame:Hide()
    else
        frame:Show()

        currentDungeon = DetectCurrentDungeon()
        dropdown.text:SetText(GetDungeonDisplayName(currentDungeon))

        frame:GenerateTabs()
        frame:SelectTab("Info")
    end
end)

---------------------------------------------------------
-- ACTUALIZAR POSICIÓN DEL BOTÓN
---------------------------------------------------------

local function UpdateMinimapButtonPosition()
    local angle = UsefulDungeonNotesDB.minimap.angle or 45
    local radius = (Minimap:GetWidth() / 2) + 10

    local x = math.cos(math.rad(angle)) * radius
    local y = math.sin(math.rad(angle)) * radius

    miniButton:ClearAllPoints()
    miniButton:SetPoint("CENTER", Minimap, "CENTER", x, y)
end

---------------------------------------------------------
-- SLASH COMMAND
---------------------------------------------------------

SLASH_UsefulDungeonNotes1 = "/udn"
SlashCmdList["UsefulDungeonNotes"] = function()
    if frame:IsShown() then
        frame:Hide()
    else
        frame:Show()

        currentDungeon = DetectCurrentDungeon()
        dropdown.text:SetText(GetDungeonDisplayName(currentDungeon))

        frame:GenerateTabs()
        frame:SelectTab("Info")
    end
end

---------------------------------------------------------
-- INICIALIZACIÓN FINAL
---------------------------------------------------------

C_Timer.After(0.1, function()
    UpdateMinimapButtonPosition()

    currentDungeon = DetectCurrentDungeon()
    dropdown.text:SetText(GetDungeonDisplayName(currentDungeon))

    frame:GenerateTabs()
    frame:SelectTab("Info")
end)
