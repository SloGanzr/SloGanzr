if game.CoreGui:FindFirstChild("HolyScript") then game.CoreGui:FindFirstChild("HolyScript"):Destroy() end
if game.CoreGui:FindFirstChild("KeySystemGui") then game.CoreGui:FindFirstChild("KeySystemGui"):Destroy() end

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local KeySystemGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local UIGradient_2 = Instance.new("UIGradient")
local TextButton_2 = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local UIGradient_3 = Instance.new("UIGradient")
local lock = Instance.new("ImageButton")
local TextBox = Instance.new("TextBox")
local UICorner_4 = Instance.new("UICorner")
local ImageButton = Instance.new("ImageButton")
local UICorner_5 = Instance.new("UICorner")
--test
local TextButton1 = Instance.new("TextButton")
local UICorner_1 = Instance.new("UICorner")
local UIGradient1 = Instance.new("UIGradient")
local UIGradient_1 = Instance.new("UIGradient")
--

KeySystemGui.Name = "KeySystemGui"
KeySystemGui.Parent = game.CoreGui
KeySystemGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = KeySystemGui
Main.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, -175, 0.5, -62)
Main.Size = UDim2.new(0, 350, 0, 125)

UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = Main

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.121428572, 0, 0, 4)
TextLabel.Size = UDim2.new(0, 113, 0, 36)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.RichText = true
TextLabel.Text = 'Key System\n<font size="14">Discord : WjGEt7pGDM</font>'
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 18.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

TextButton.Parent = Main
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0056999992, 0, 0.751999974, 0)
TextButton.Size = UDim2.new(0, 113, 0, 25)
TextButton.ClipsDescendants = true
TextButton.Font = Enum.Font.SourceSansBold
TextButton.Text = "Copy Linkvertise Link"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 16.000
TextButton.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 6)
UICorner_2.Parent = TextButton

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 97, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(96, 239, 255))}
UIGradient.Parent = TextButton

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 97, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(96, 239, 255))}
UIGradient_2.Parent = TextButton

--test
TextButton1.Parent = Main
TextButton1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton1.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton1.BorderSizePixel = 0
TextButton1.Position = UDim2.new(0.3369999992, 0, 0.751999974, 0)
TextButton1.Size = UDim2.new(0, 113, 0, 25)
TextButton1.ClipsDescendants = true
TextButton1.Font = Enum.Font.SourceSansBold
TextButton1.Text = "Copy Workink Link"
TextButton1.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton1.TextSize = 16.000
TextButton1.TextWrapped = true

UICorner_1.CornerRadius = UDim.new(0, 6)
UICorner_1.Parent = TextButton1

UIGradient1.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 97, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(96, 239, 255))}
UIGradient1.Parent = TextButton1

UIGradient_1.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 97, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(96, 239, 255))}
UIGradient_1.Parent = TextButton1
--End

TextButton_2.Parent = Main
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.668285743, 0, 0.751999974, 0)
TextButton_2.Size = UDim2.new(0, 115, 0, 25)
TextButton_2.Font = Enum.Font.SourceSansBold
TextButton_2.Text = "Copy Discord Link"
TextButton_2.ClipsDescendants = true
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 16.000

UICorner_3.CornerRadius = UDim.new(0, 6)
UICorner_3.Parent = TextButton_2

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 97, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(96, 239, 255))}
UIGradient_3.Parent = TextButton_2

lock.Name = "lock"
lock.Parent = Main
lock.BackgroundTransparency = 1.000
lock.Position = UDim2.new(0.0285714287, 0, 0.115999997, 0)
lock.Size = UDim2.new(0, 25, 0, 25)
lock.ZIndex = 2
lock.Image = "rbxassetid://3926305904"
lock.ImageRectOffset = Vector2.new(4, 684)
lock.ImageRectSize = Vector2.new(36, 36)

TextBox.Parent = Main
TextBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.0285714287, 0, 0.416000009, 0)
TextBox.Size = UDim2.new(0, 295, 0, 35)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "insert key (if you can't copy just join discord)"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255,255,255)
TextBox.TextSize = 16.000

UICorner_4.CornerRadius = UDim.new(0, 6)
UICorner_4.Parent = TextBox

ImageButton.Parent = Main
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 0.750
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.885714293, 0, 0.432000011, 0)
ImageButton.Size = UDim2.new(0, 32, 0, 32)
ImageButton.Image = "rbxassetid://3926305904"
ImageButton.ImageRectOffset = Vector2.new(84, 204)
ImageButton.ImageRectSize = Vector2.new(40, 40)

UICorner_5.CornerRadius = UDim.new(0, 6)
UICorner_5.Parent = ImageButton

local function RippleEffect(object)
    spawn(function()
        local Ripple = Instance.new("ImageLabel")
        Ripple.Name = "Ripple"
        Ripple.Parent = object
        Ripple.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Ripple.BackgroundTransparency = 1.000
        Ripple.ZIndex = 8
        Ripple.Image = "rbxassetid://2708891598"
        Ripple.ImageTransparency = 0.5
        Ripple.ScaleType = Enum.ScaleType.Fit
        Ripple.Position = UDim2.new((Mouse.X - Ripple.AbsolutePosition.X) / object.AbsoluteSize.X, 0, (Mouse.Y - Ripple.AbsolutePosition.Y) / object.AbsoluteSize.Y, 0)
        TweenService:Create(Ripple, TweenInfo.new(1.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(-5.5, 0, -15, 0), Size = UDim2.new(12, 0, 30, 0)}):Play()
        wait(0.75)
        TweenService:Create(Ripple, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {ImageTransparency = 1}):Play()
        wait(.75)
        Ripple:Destroy()
    end)
end

TextButton.MouseButton1Down:Connect(function()
    RippleEffect(TextButton)
    TextButton.Text = "Copy Link Success"
    setclipboard('https://direct-link.net/972521/holyshz-hub-key-1')
    delay(.5,function()
        TextButton.Text = "Copy Linkvertise Link"
    end)
end)

TextButton1.MouseButton1Down:Connect(function()
    RippleEffect(TextButton1)
    TextButton1.Text = "Copy Link Success"
    setclipboard('https://workink.xyz/1Sec/key-part-1')
    delay(.5,function()
        TextButton1.Text = "Copy Workink Link"
    end)
end)

TextButton_2.MouseButton1Down:Connect(function()
    RippleEffect(TextButton_2)
    TextButton_2.Text = "Copy Link Success"
	setclipboard("https://discord.gg/WjGEt7pGDM")
    delay(.5,function()
        TextButton_2.Text = "Copy Link Discord"
    end)
end)

KeySuccess = false

if not isfolder("HolyShz") then makefolder("HolyShz") end
if not isfile("/HolyShz/SaveKey.txt") then
    writefile("/HolyShz/SaveKey.txt", "")
else
    SaveKeyCheck = readfile("/HolyShz/SaveKey.txt")
end

if SaveKeyCheck == game:HttpGet('https://pastebin.com/raw/05m0bkNr') then
    KeySuccess = true
else
    ImageButton.MouseButton1Click:Connect(function()
        if TextBox.Text == game:HttpGet('https://pastebin.com/raw/05m0bkNr') then
            if not isfile("/HolyShz/SaveKey.txt") then
                writefile("/HolyShz/SaveKey.txt", TextBox.Text)
            else
                writefile("/HolyShz/SaveKey.txt", TextBox.Text)
            end
            TextBox.Text = "Correct key"
            wait(.75)
            KeySuccess = true
        else
            TextBox.Text = "Invalid key"
            wait(.75)
            TextBox.Text = ""
            KeySuccess = false
        end
    end)
end

if _G.NoClip then _G.NoClip:Disconnect() _G.NoClip = nil end
while wait() do if KeySuccess then break end end
if game.CoreGui:FindFirstChild("KeySystemGui") then game.CoreGui:FindFirstChild("KeySystemGui"):Destroy() end
------------------------------------------------------ [[ ]] ------------------------------------------------------
if ( game.PlaceId == 7338881230 or game.PlaceId == 6990133340 or game.PlaceId == 6938803436 or game.PlaceId == 6990129309 or game.PlaceId == 7274690025 or game.PlaceId == 6990131029 ) then
	repeat wait() until game:IsLoaded()
	if not game:IsLoaded() then game.Loaded:Wait() end
	game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
	game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("MainGui")
	game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("UniversalGui")
	game:GetService("Players").LocalPlayer.PlayerGui.MainGui:WaitForChild("LeftUIFrame")
    ------------------------------------------------------ [[ Save Function ]] ------------------------------------------------------
	local SaveSettings = {
		["Farm"] = {
			["Dimension Farm"] = false,
			['Auto Next Level'] = false,
			["Infinite Mode Farm"] = false,
			["Time Challenge Farm"] = false,
			["Raid Challenge Farm"] = false,
			['AutoJoinBossRushFree'] = false,

			["Farm Speed Raids"] = false,
			["Inside Speed Raids"] = false,

			["Raids Farm"] = false,
			["DashNoCd"] = false,
			['CardSell'] = false,
			['CardTier'] = 'Common',
			['DeleteName'] = false,
			["Auto Raids (Instant Leave Farm All)"] = false,
			["Auto Afk & Raids"] = false,
		},  
		["Kaitan"] = {
			["Auto Buy Key [ Madoki Raid ]"] = false,
			["Farm Raids Raids Madoki"]  = false,

			['Select Kaitan Farm'] = {"Dimension"},
			["Farm Kaitan"] = false,

			['Select AFK Farm'] = {"Raid"},
			["Farm AFK"] = false,
		},
		['Card'] = {
			['AutoSell'] = false,
			['AutoEquipBestCard'] = false,
			['AutoUpgradeCardEquip'] = false,
			['Mythic'] = false,
			['Legendary'] = false,
			['Epic'] = false,
			['Rare'] = false,
			['Uncommon'] = false,
			['Common'] = false,
            ['Upgrade Card'] = false,
		},
		["Setting Map"] = {
			["MapName"] = "Titan Dimension",
			["RaidName"] = "Titan Raid",
			["Difficulty"] = "Easy",
			["Hardcore"] = false,
			['Auto Retry'] = false,
			["Friend Allow"] = false,
			["Retry"] = false,
		},
		["Setting"] = {
			["Main Character"] = "nil",
			["Assist 1"] = "nil",
			["Assist 2"] = "nil",
			['Select Main Character'] = "nil",

			['Auto Select Main Character'] = false,
			['Auto Character Raids'] = false,
			['Auto Character Infinite'] = false,
			['Auto Character Dimension'] = false,
			['Auto Character Boss Rush'] = false,
			['Auto Character Time Challenge'] = false,

			["Leave Infinite At Wave"] = 100,

			["Rejoin If Kick"] = false,
			["CardLimit"] = false,
			["TweenSpeed"] = 150,
			["Tween"] = 150,
			["Distance"] = 8,
			["DistanceTweenNewMob"] = 15,
			["DistanceDodge"] = 30,
			["DistanceOut"] = 35,
			["Distancedecimal"] = 1,
			["Minute"] = 60,
			['Rotate'] = 90,
			['LimitTime'] = 60,
			["Rejoin"] = false,
			["1"] = true,
			["2"] = true,
			["3"] = true,
			["4"] = true,
			["5"] = true,
			["E"] = true,
			["R"] = true,
			['Mon More Than'] = 1,
		},
		["DodgeMobs"] = {
			["NameProof"] = true,
			["DodgeSkill"] = false,
			["DodgeMethod"] = "Behind",
			["DodgeSec"] = 2,
		},
		["Egg"] = {
			["Select Egg"] = "nil",
			["Auto Spin Egg"] = false,
			["Spin Delay"] = 3,

			["Stop Spin"] = "Mythic",
			["Auto Stop Spin if get"] = false,

			["Webhook Url"] = "nil",
			["Ignore Send Mythic"] = false,
			["Ignore Send Legendary"] = true,
			["Ignore Send Epic"] = true,
			["Ignore Send Rare"] = true,
		},
		["Fruit"] = { 
			["Select Fruit"] = "nil",
			["Auto Spin Fruit"] = false,
		},
		["Daily"] = {
			["Daily Quest"] = false,
			["Daily Quest Weekly"] = false,
			["Daily +20 Raid Ricket"] = false,
			['Auto Claim Event'] = false,

			["Auto Redeem All Code"] = false,
		},
		["Notifier"] = {
			["Webhook Url"] = "nil",
			["Clear Dimension Notifier"] = false,
			["Clear Raid Notifier"] = false,
			["Leveled Notifier"] = false,
		},
		['WhiteScreen'] = {
			['White Screen'] = false,
			['Open Fps Lock'] = false,
			['Fps Lock'] = 60,
		},
		['Party'] = {
			['Leader'] = "Leader name ...",
			['Land Server'] = "Land Server name ...",

			['World Land Server'] = "Low Level Server",
			['Party List'] = {},
		},
		["Change Team"] = {
			["Team List"] = {},
			["Team Data"] = {},
		},
		["BossRushTicket"]= {
			["Select"] = 'Gem',
			["Auto Buy BossRush Ticket"] = false,
			['Count Buy BossRush Ticket'] = 0,
		},
		["Marco"] = {
			["Auto Play Record"] = false,
			['Data Marco Profile'] = {}
		},
		['Shop Random'] = {
			['Buy Key Over Heaven'] = false,
			['Auto Random Over Heaven'] = false,
			['Auto Random Dusk'] = false
		},
        ["SaveSetting"] = {
            ['FPS Value'] = 15,
            ['FPS Cap'] = false,
            ['Low CPU Mode'] = false,

            ['Hide Key'] = "Enum.KeyCode.LeftControl"
        }
	}
	local ColorTier = {
		['Mythic'] = game:GetService("ReplicatedStorage").TextGradients.Mythic.Color,
		['Legendary'] = game:GetService("ReplicatedStorage").TextGradients.Legendary.Color,
		['Divine'] = game:GetService("ReplicatedStorage").TextGradients.Divine.Color,
		['Premium'] = game:GetService("ReplicatedStorage").TextGradients.Premium.Color,
		['Epic'] = game:GetService("ReplicatedStorage").TextGradients.Epic.Color,
		['Rare'] = game:GetService("ReplicatedStorage").TextGradients.Rare.Color,
		['Uncommon'] = game:GetService("ReplicatedStorage").TextGradients.Uncommon.Color,
		['Common'] = '0 1 1 1 0 1 1 1 1 0 '
	}
    function Load()
        if readfile and writefile and isfile and isfolder then
            if not isfolder("HolyShz") then
                makefolder("HolyShz")
            end
            if not isfolder("/HolyShz/AnimeDimensionsSimulator") then
                makefolder("/HolyShz/AnimeDimensionsSimulator")
            end
            if not isfolder("/HolyShz/AnimeDimensionsSimulator/data") then
                makefolder("/HolyShz/AnimeDimensionsSimulator/data")
            end
            if not isfolder("/HolyShz/AnimeDimensionsSimulator/Marco") then
                makefolder("/HolyShz/AnimeDimensionsSimulator/Marco")
            end
            if not isfile("/HolyShz/AnimeDimensionsSimulator/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json") then
                writefile("/HolyShz/AnimeDimensionsSimulator/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json", game:GetService("HttpService"):JSONEncode(SaveSettings))
            else
                local Decode = game:GetService("HttpService"):JSONDecode(readfile("/HolyShz/AnimeDimensionsSimulator/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json"))
                for i,v in pairs(Decode) do
                    SaveSettings[i] = v
                end
            end
        else
            warn("Failed Load")
            return false
        end
    end
    function Save()
        if readfile and writefile and isfile then
            if isfile("/HolyShz/AnimeDimensionsSimulator/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json") == false then
                Load()
            else
                local Decode = game:GetService("HttpService"):JSONDecode(readfile("/HolyShz/AnimeDimensionsSimulator/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json"))
                local Array = {}
                for i,v in pairs(SaveSettings) do
                    Array[i] = v
                end
                writefile("/HolyShz/AnimeDimensionsSimulator/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json", game:GetService("HttpService"):JSONEncode(Array))
            end
        else
            warn("Failed Save")
            return false
        end
    end
    Load()
    Save()
    ------------------------------------------------------ [[ Values ]] ------------------------------------------------------
    local plr = game:GetService("Players").LocalPlayer
    local VirtualUser = game:GetService("VirtualUser")
    
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    local TweenService = game:GetService("TweenService")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    
    local LocalPlayer = Players.LocalPlayer
    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local Humanoid = Character:FindFirstChildWhichIsA("Humanoid")

    local MainRemoteFunction = game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction;
	local MainRemoteEvent = game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent;
	
	local Main = require(game:GetService("ReplicatedStorage").Modules.settings)
	local FormulaModule = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("FormulaModule"));
	local ClientDirectory = require(game:GetService("Players").LocalPlayer.PlayerGui.Modules.ClientDirectory);
	local StatsModule = require(game:GetService("Players").LocalPlayer.PlayerGui.Modules.LocalStatsModule);
	local CharacterModule = require(game:GetService("Players").LocalPlayer.PlayerGui.Modules.CharacterModule);
	local StatTableModule = require(game:GetService("Players").LocalPlayer.PlayerGui.Modules.StatTableModule);

	local UniversalCenterUIFrame = ClientDirectory.UniversalCenterUIFrame;
	local CenterUIFrame = ClientDirectory.CenterUIFrame;

	local Modulessettings = require(game:GetService("ReplicatedStorage").Modules.settings)
	local Utility = require(game:GetService("ReplicatedStorage").Modules.Utility)
	---[[ Not Value ]]---
	local Life =false
	local hee = 1
	local SkillRealForMySelf = false
	local noclip = false
    ------------------------------------------------------ [[ Function First ]] ------------------------------------------------------
	function comma_value(p1)
		local v1 = p1;
		while true do
			local v2, v3 = string.gsub(v1, "^(-?%d+)(%d%d%d)", "%1,%2");
			v1 = v2;
			if v3 ~= 0 then else
				break;
			end;
		end;
		return v1;
	end;
    ------------------------------------------------------ [[ Create Table Data ]] ------------------------------------------------------
	MapData = {} 
    MapRaidData= {}
	EggData = {}
	
    MapInfo = {}
	for i,v in pairs(Main.MapInfo) do
		if i ~= "Time Challenge" and not v.excludeFromLista and not v.isShadowRaid and not v.isRaid and not v.isBossRush and v.order then
            MapInfo[#MapInfo + 1] ={
                order = v.order,
                Name = i
            }
		end
	end
    table.sort(MapInfo,function(a,b)
        return a['order'] < b['order']
    end)
    table.foreach(MapInfo,function(a,b)
        table.insert(MapData,b.Name)
    end)

    MapRaidInfo = {}
	for i,v in pairs(Main.MapInfo) do
		if not v.excludeFromLista and v.isRaid and v.order then 
            MapRaidInfo[#MapRaidInfo + 1] ={
                order = v.order,
                Name = i
            }
		end
	end
    table.sort(MapRaidInfo,function(a,b)
        return a['order'] < b['order']
    end)
    table.foreach(MapRaidInfo,function(a,b)
        table.insert(MapRaidData,b.Name)
    end)

	Table_Pet_Info = {}
	for i,v in pairs(Main.PetInfo) do
		Table_Pet_Info[v.icon] = {
		    ['Main Name'] = i,
		    ['Name'] = v.displayName,
		    ['Icon'] = v.icon,
		    ['Rarity'] = v.rarity,
        }
	end
	for i,v in pairs(Main.EggInfo) do
		if v.cost then
			table.insert(EggData, i)
		end
	end

	Table_Fruit_Info = {}
	FruitData = {}
	for i,v in pairs(Main.FruitInfo) do
		Table_Fruit_Info[v.displayName] = {
		    ['Main Name'] = i,
		    ['Name'] = v.displayName,
		    ['Icon'] = v.icon,
		    ['Rarity'] = v.rarity,
        }
	end
	for i,v in pairs(Main.FruitInfo) do
		table.insert(FruitData, v.displayName)
	end

	CharacterSettingsInfo = {}
	for i,v in pairs(Main.CharacterSettings) do
		CharacterSettingsInfo[#CharacterSettingsInfo + 1] = {
			CollectionRankValue = v.collectionRankValue,
			BaseName = tostring(i),
			InGameName = v.displayName
		}
	end
	table.sort(CharacterSettingsInfo,function(a,b)
		return a['CollectionRankValue'] > b['CollectionRankValue']
	end)

	DataInGameScript = {}
	CharacterData = {} 
	local function RemoveTextCharacter(str)
		return str:gsub("Character","")
	end
	table.foreach(CharacterSettingsInfo,function(a,b)
		local TextName = RemoveTextCharacter(b.BaseName) .. " [ " .. b.InGameName .. " ]"
		DataInGameScript[TextName] = b.BaseName
		table.insert(CharacterData,TextName)
	end)
    ------------------------------------------------------ [[ Lib Ui ]] ------------------------------------------------------
    local Venyx = loadstring(game:HttpGet("https://raw.githubusercontent.com/NoNiName/Library/main/UILibrary/HolyUiV3"))()
    
    local UI = Venyx.new({
        title = "Anime Dimensions Simulator",
        Version = "Version 1.0.4"
    })

    local Themes = {
        Background = Color3.fromRGB(24, 24, 24),
        Glow = Color3.fromRGB(0, 0, 0),
        Accent = Color3.fromRGB(10, 10, 10),
        LightContrast = Color3.fromRGB(20, 20, 20),
        DarkContrast = Color3.fromRGB(14, 14, 14),  
        TextColor = Color3.fromRGB(255, 255, 255)
    }
    ------------------------------------------------------ [[ Create Tab ]] ------------------------------------------------------
    -- Main
	local MainCreateTap = UI:addPage({
        title = "Main",
        icon = 7539983773
    })
    local TimeRaid = MainCreateTap:addSection({
        title = "Time Raid"
    })
    local SettingDimension_Raids = MainCreateTap:addSection({
        title = "Setting Dimension & Raids"
    })
	local AutoFarmDimension_Raids = MainCreateTap:addSection({
        title = "Auto Farm Dimension & Raids"
    })
	local AutoFarm_Etc = MainCreateTap:addSection({
        title = "Auto Farm Etc."
    })
	local AutoFarm_Challenge = MainCreateTap:addSection({
        title = "Auto Farm Challenge."
    })
	local AutoFarm_KaitanAFK = MainCreateTap:addSection({
        title = "Kaitan & AFK."
    })

	local ClameCreateTap = UI:addPage({
		title = "• Misc",
		icon = 1
	})
	local AutoClam = ClameCreateTap:addSection({
        title = "Auto Clam"
    })
	local AutoRedeem = ClameCreateTap:addSection({
        title = "Auto Redeem"
    })

	local CardaddPage = UI:addPage({
		title = "• Card",
		icon = 1
	})
	local AutoUpgradeEquipCard = CardaddPage:addSection({
        title = "Auto Upgrade & Equip Card"
    })
	local AutoSell = CardaddPage:addSection({
        title = "Auto Sell Card"
    })

    -- Character
	local CharacterCreateTap = UI:addPage({
        title = "Character",
        icon = 7539983773
    })
	local Character_Etc = CharacterCreateTap:addSection({
        title = "Auto Equip Character"
    })
	local MainCharacter_Etc = CharacterCreateTap:addSection({
        title = "Auto Set Main Character"
    })

	-- Stats
	local StatsCreateTap = UI:addPage({
		title = "Stats",
		icon = 7539983773
	})
	local StatsPlayers = StatsCreateTap:addSection({
        title = "Stats Players"
    })
    -- Stats
	local ShopCreateTap = UI:addPage({
		title = "Shop",
		icon = 7539983773
	})
	local AutoBuy = ShopCreateTap:addSection({
        title = "Auto Random Event"
    })
	local AutoBuyTicket = ShopCreateTap:addSection({
        title = "Auto Buy Ticket"
    })
	local AutoBuyEggs = ShopCreateTap:addSection({
        title = "Auto Buy Eggs"
    })
	local AutoBuyFruit = ShopCreateTap:addSection({
        title = "Auto Buy Fruit"
    })
	-- Setting
	local SettingCreateTap = UI:addPage({
		title = "Setting",
		icon = 7539983773
	})
	local SettingFarm = SettingCreateTap:addSection({
		title = "Setting"
	})
	local SettingSkill = SettingCreateTap:addSection({
		title = "Setting - Skill"
	})
	-- Theme
	local Theme = UI:addPage({
		title = "Theme",
		icon = 11413045091
	})
	local Colors = Theme:addSection({
		title = "Colors"
	})
	local Setting = Theme:addSection({
		title = "Setting"
	})
    ------------------------------------------------------ [[ Setting Dimension & Raids ]] ------------------------------------------------------
    Text_Raids_Boss = TimeRaid:addLabel({title = 'Raids : '})
    FS = false
    SettingDimension_Raids:addDropdown({
        title = "Select Dimension",
        list = MapData, 
        default = SaveSettings["Setting Map"]["MapName"],
        callback = function(v)
			SaveSettings["Setting Map"]["MapName"] = v
			Save()
			if Fs == true then UpdateMapSelected() end
        end;
    })
    SettingDimension_Raids:addDropdown({
        title = "Select Raids Boss",
        list = MapRaidData, 
        default = SaveSettings["Setting Map"]["RaidName"],
        callback = function(v)
			SaveSettings["Setting Map"]["RaidName"] = v
			Save()
        end;
    })
	Fs = true
    RefreshDifficulty = SettingDimension_Raids:addDropdown({
        title = "Select Difficulty",
        list = {"Select Map First"}, 
        default = SaveSettings["Setting Map"]["Difficulty"],
        callback = function(v)
			if v ~= "Select Map First" then
				SaveSettings["Setting Map"]["Difficulty"] = v
				Save()
			end
        end;
    })
	function UpdateMapSelected()
		local tablemap = {}
		for i = 0,10 do
			for ii,v in pairs(Modulessettings.MapInfo[SaveSettings["Setting Map"]["MapName"]].difficulties) do
				if v.order == i then
					table.insert(tablemap, tostring(ii))
				end
			end
		end 
        RefreshDifficulty.Options:Refresh(tablemap,SaveSettings["Setting Map"]["Difficulty"]) 
	end
	UpdateMapSelected()
    SettingDimension_Raids:addToggle({
        title = "Hardcore",
        default = SaveSettings["Setting Map"]["Hardcore"],
        callback = function(v)
            SaveSettings["Setting Map"]["Hardcore"] = v
            Save()
        end ,
    })
    SettingDimension_Raids:addToggle({
        title = "Auto Retry",
        default = SaveSettings["Setting Map"]["Auto Retry"] ,
		callback = function(v)
			SaveSettings["Setting Map"]["Auto Retry"] = v
			Save()
		end ,
    })
    SettingDimension_Raids:addToggle({
        title = "Friends Only",
        default = SaveSettings["Setting Map"]["Friend Allow"] ,
		callback = function(v)
			SaveSettings["Setting Map"]["Friend Allow"] = v
			Save()
		end ,
    })
    SettingDimension_Raids:addToggle({
        title = "Auto Next Level",
        default = SaveSettings["Farm"]["Auto Next Level"] ,
		callback = function(v)
			SaveSettings["Farm"]["Auto Next Level"] = v
			Save()
		end ,
    })
    SettingDimension_Raids:addToggle({
        title = "Auto Raids (Instant Leave)",
        default = SaveSettings["Farm"]["Auto Raids (Instant Leave Farm All)"] ,
		callback = function(v)
			SaveSettings["Farm"]["Auto Raids (Instant Leave Farm All)"] = v
			Save()
		end ,
    })
	
	AutoFarmDimension_Raids:addToggle({
        title = "Dimension Farm",
        default = SaveSettings["Farm"]["Dimension Farm"] ,
		callback = function(v)
			SaveSettings["Farm"]["Dimension Farm"] = v
			Save()
		end ,
	})
	AutoFarmDimension_Raids:addToggle({
        title = "Raids Farm",
        default = SaveSettings["Farm"]["Raids Farm"] ,
		callback = function(v)
			SaveSettings["Farm"]["Raids Farm"] = v
			Save()
		end ,
	})
	
	AutoFarm_Etc:addToggle({
        title = "Farm Infinite Mode",
        default = SaveSettings["Farm"]["Infinite Mode Farm"] ,
		callback = function(v)
			SaveSettings["Farm"]["Infinite Mode Farm"] = v
			Save()
		end ,
	})
	AutoFarm_Etc:addToggle({
        title = "Boss Rush Farm",
        default = SaveSettings["Farm"]['AutoJoinBossRushFree'] ,
		callback = function(v)
			SaveSettings["Farm"]['AutoJoinBossRushFree'] = v
			Save()
		end ,
	})
	AutoFarm_Etc:addToggle({
        title = "Farm Speed Raids",
        default = SaveSettings["Farm"]["Farm Speed Raids"] ,
		callback = function(v)
			SaveSettings["Farm"]["Farm Speed Raids"] = v
			Save()
		end ,
	})
	AutoFarm_Challenge:addToggle({
		title = "Raid Challenge",
        default = SaveSettings["Farm"]["Raid Challenge Farm"] ,
		callback = function(v)
			SaveSettings["Farm"]["Raid Challenge Farm"] = v
			Save()
		end ,
	})

	AutoFarm_KaitanAFK:addLabel({title = "-- [[ Kaitan ]] --"})

	AutoFarm_KaitanAFK:addMulitDropdown({
        title = "Select Kaitan",
        list = {"Dimension","Raid","Speed Raid","BossRush"}, 
        default = SaveSettings["Kaitan"]['Select Kaitan Farm'],
        callback = function(v)
            SaveSettings["Kaitan"]['Select Kaitan Farm'] = v
            Save()
        end;
    })

	AutoFarm_KaitanAFK:addToggle("Auto Farm Kaitan",{
		Default = SaveSettings["Kaitan"]["Farm Kaitan"] ,
		callback = function(v)
			SaveSettings["Kaitan"]["Farm Kaitan"] = v
			Save()
		end;
	})
	AutoFarm_KaitanAFK:addLabel({title = "-- [[ AFK ]] --"})
	AutoFarm_KaitanAFK:addMulitDropdown({
        title = "Select AFK" ,
        list = {"Raid","Speed Raid","BossRush"}, 
        default = SaveSettings["Kaitan"]['Select AFK Farm'],
        callback = function(v)
            SaveSettings["Kaitan"]['Select AFK Farm'] = v
            Save()
        end;
    })

	AutoFarm_KaitanAFK:addToggle("AFK & Raid",{
		Default = SaveSettings["Kaitan"]["Farm AFK"],
		callback = function(v)
			SaveSettings["Kaitan"]["Farm AFK"] = v
			Save()
		end ,
	})

	------------------------------------------------------ [[ Auto Clam ]] ------------------------------------------------------
	AutoClam:addToggle({
		title = "Daily Quest",
		default = SaveSettings["Daily"]["Daily Quest"] ,
		callback = function(v)
			SaveSettings["Daily"]["Daily Quest"] = v
			Save()
		end ,
	})
	AutoClam:addToggle({
		title = "Daily Quest Weekly",
		default = SaveSettings["Daily"]["Daily Quest Weekly"] ,
		callback = function(v)
			SaveSettings["Daily"]["Daily Quest Weekly"] = v
			Save()
		end ,
	})
	AutoClam:addToggle({
		title = "Daily +20 Raid Ticket",
		default = SaveSettings["Daily"]["Daily +20 Raid Ricket"] ,
		callback = function(v)
			SaveSettings["Daily"]["Daily +20 Raid Ricket"] = v
			Save()
		end ,
	})

	AutoRedeem:addButton({
		title = "Redeem All Code",
		callback = function(v)
			if game:GetService("Workspace"):FindFirstChild("Leaderboards") and game:GetService("Workspace").Leaderboards.MilestoneBoard.Center.Surface.ScrollingFrame:FindFirstChild("MilestoneEntry") then
				for i,v in pairs(game:GetService("Workspace").Leaderboards.MilestoneBoard.Center.Surface.ScrollingFrame:GetChildren()) do
					if v.Name == "MilestoneEntry" and v:FindFirstChild("MilestoneCode") then
						MainRemoteFunction:InvokeServer("RedeemPromoCode", v.MilestoneCode.Text);
					end
				end
			end
		end
	})
	AutoRedeem:addToggle({
		title = "Auto Redeem All Code",
		default = SaveSettings["Daily"]["Auto Redeem All Code"] ,
		callback = function(v)
			SaveSettings["Daily"]["Auto Redeem All Code"] = v
			Save()
		end ,
	})

	AutoBuy:addToggle({
		title = "Buy Key Over Heaven",
		default = SaveSettings["Shop Random"]['Buy Key Over Heaven'] ,
		callback = function(v)
			SaveSettings["Shop Random"]['Buy Key Over Heaven'] = v
			Save()
		end ,
	})
	AutoBuy:addToggle({
		title = "Auto Random Over Heaven",
		default = SaveSettings["Shop Random"]['Auto Random Over Heaven'] ,
		callback = function(v)
			SaveSettings["Shop Random"]['Auto Random Over Heaven'] = v
			Save()
		end ,
	})
	AutoBuy:addToggle({
		title = "Auto Random Dusk",
		default = SaveSettings["Shop Random"]['Auto Random Dusk'] ,
		callback = function(v)
			SaveSettings["Shop Random"]['Auto Random Dusk'] = v
			Save()
		end ,
	})

	AutoBuyTicket:addDropdown({
        title = "Select Buy",
        list = {'Gem','Raid'}, 
        default = SaveSettings["BossRushTicket"]["Select"],
        callback = function(v)
			SaveSettings["BossRushTicket"]["Select"] = v
			Save()
        end;
    })
	AutoBuyTicket:addToggle({
		title = "Auto Buy BossRush Ticket",
		default = SaveSettings["BossRushTicket"]["Auto Buy BossRush Ticket"] ,
		callback = function(v)
			SaveSettings["BossRushTicket"]["Auto Buy BossRush Ticket"] = v
			Save()
		end ,
	})
	AutoBuyTicket:addSlider({
        title = "Count Buy BossRush Ticket",
        default = SaveSettings['BossRushTicket']['Count Buy BossRush Ticket'],
        min = 0,
        max = 100,
        callback = function(value)
			SaveSettings['BossRushTicket']['Count Buy BossRush Ticket'] = value
            Save()
        end
    })

	AutoBuyEggs:addDropdown({
        title = "Select Egg",
        list = EggData, 
        default = SaveSettings["Egg"]["Select Egg"],
        callback = function(v)
			SaveSettings["Egg"]["Select Egg"] = v
			Save()
        end;
    })
	AutoBuyEggs:addToggle({
		title = "Auto Spin Egg",
		default = SaveSettings["Egg"]["Auto Spin Egg"] ,
		callback = function(v)
			SaveSettings["Egg"]["Auto Spin Egg"] = v
			Save()
		end ,
	})
	local Select_Stop_Spin_Label = AutoBuyEggs:addLabel({title = 'Select Stop Spin if get : '})
	AutoBuyEggs:addDropdown({
        title = "Select Stop Spin if get",
        list = {"Mythic","Legendary","Epic","Rare"}, 
        default = SaveSettings["Egg"]["Stop Spin"],
        callback = function(v)
			Select_Stop_Spin_Label.Options:ChangeText('Select Stop Spin if get : ' .. v)
			SaveSettings["Egg"]["Stop Spin"] = v
			Save()
        end;
    })
	AutoBuyEggs:addToggle({
		title = "Auto Stop Spin if get",
		default = SaveSettings["Egg"]["Auto Stop Spin if get"] ,
		callback = function(v)
			SaveSettings["Egg"]["Auto Stop Spin if get"] = v
			Save()
		end ,
	})

	AutoBuyFruit:addDropdown({
        title = "Select Fruit",
        list = FruitData, 
        default = SaveSettings["Fruit"]["Select Fruit"],
        callback = function(v)
			SaveSettings["Fruit"]["Select Fruit"] = v
			Save()
        end;
    })
	AutoBuyFruit:addToggle({
		title = "Auto Spin Fruit",
		default = SaveSettings["Fruit"]["Auto Spin Fruit"] ,
		callback = function(v)
			SaveSettings["Fruit"]["Auto Spin Fruit"] = v
			Save()
		end ,
	})

	spawn(function()
		while wait() do
			if SaveSettings["Fruit"]["Auto Spin Fruit"] and SaveSettings["Fruit"]["Select Fruit"] ~= "nil" then
				BuyFruit = MainRemoteFunction:InvokeServer("BuyFruit", "BasicFruitGacha");
				DataFruitsInfo = Table_Fruit_Info[SaveSettings["Fruit"]["Select Fruit"]]
				if DataFruitsInfo and (BuyFruit.message == DataFruitsInfo['Name'] or BuyFruit.message == DataFruitsInfo['Main Name']) then
					SaveSettings["Fruit"]["Auto Spin Fruit"] = false
					print(DataFruitsInfo['Name'],DataFruitsInfo['Main Name'])
				end
			end
		end
	end)
	------------------------------------------------------ [[ Character Setting ]] ------------------------------------------------------
	local mainCharacter = Character_Etc:addLabel({title = 'Main : N/S'})
	local mainAssist1 = Character_Etc:addLabel({title = 'Assist 1 : N/S'})
	local mainAssist2 = Character_Etc:addLabel({title = 'Assist 2 : N/S'})
	Character_Etc:addDropdown({
        title = "Select Main Character",
        list = CharacterData, 
        default = SaveSettings["Setting"]["Main Character"],
        callback = function(v)
			SaveSettings["Setting"]["Main Character"] = v
			mainCharacter.Options:ChangeText('Main : \n ' .. v)
			Save()
        end;
    })
	Character_Etc:addDropdown({
        title = "Select Assist 1 Character",
        list = CharacterData, 
        default = SaveSettings["Setting"]["Assist 1"],
        callback = function(v)
			SaveSettings["Setting"]["Assist 1"] = v
			mainAssist1.Options:ChangeText('Assist 1 : \n ' .. v)
			Save()
        end;
    })
	Character_Etc:addDropdown({
        title = "Select Assist 2 Character",
        list = CharacterData, 
        default = SaveSettings["Setting"]["Assist 2"],
        callback = function(v)
			SaveSettings["Setting"]["Assist 2"] = v
			mainAssist2.Options:ChangeText('Assist 2 : \n ' .. v)
			Save()
        end;
    })
	Character_Etc:addToggle({
		title = "Auto Equip Character",
        default = SaveSettings['Setting']['Auto Character Dimension'] ,
		callback = function(v)
			SaveSettings['Setting']['Auto Character Dimension'] = v
			SaveSettings['Setting']['Auto Character Raids'] = v
			SaveSettings['Setting']['Auto Character Infinite'] = v
			SaveSettings['Setting']['Auto Character Time Challenge'] = v
			SaveSettings['Setting']['Auto Character Boss Rush'] = v
			Save()
		end ,
	})
	----------------------------------------------------- [[ Auto Set Main Character ]] ------------------------------------------------------
	MainCharacter_Etc:addDropdown({
        title = "Select Main Character",
        list = CharacterData, 
        default = SaveSettings['Setting']['Select Main Character'],
        callback = function(v)
			SaveSettings['Setting']['Select Main Character'] = v
			Save()
        end;
    })
	MainCharacter_Etc:addToggle({
		title = "Auto Set Main Character",
        default = SaveSettings['Setting']['Auto Select Main Character'] ,
		callback = function(v)
			SaveSettings['Setting']['Auto Select Main Character'] = v
			Save()
		end ,
	})
	MainCharacter_Etc:addLabel({title = 'Reset Main Charcter when use charcter assist 1 or 2'})
	----------------------------------------------------- [[ Auto Set Main Character ]] ------------------------------------------------------
	AutoUpgradeEquipCard:addToggle({
		title = "Auto Upgrade Card [Equip]",
        default = SaveSettings['Card']['Upgrade Card'] ,
		callback = function(v)
			SaveSettings['Card']['Upgrade Card'] = v
			Save()
		end ,
	})
	AutoSell:addToggle({
		title = "Auto Sell Common",
        default = SaveSettings['Card']['Common'] ,
		callback = function(v)
			SaveSettings['Card']['Common'] = v
			Save()
		end ,
	})
	AutoSell:addToggle({
		title = "Auto Sell Uncommon",
        default = SaveSettings['Card']['Uncommon'] ,
		callback = function(v)
			SaveSettings['Card']['Uncommon'] = v
			Save()
		end ,
	})
	AutoSell:addToggle({
		title = "Auto Sell Rare",
        default = SaveSettings['Card']['Rare'] ,
		callback = function(v)
			SaveSettings['Card']['Rare'] = v
			Save()
		end ,
	})
	AutoSell:addToggle({
		title = "Auto Sell Epic",
        default = SaveSettings['Card']['Epic'] ,
		callback = function(v)
			SaveSettings['Card']['Epic'] = v
			Save()
		end ,
	})
	AutoSell:addToggle({
		title = "Auto Sell Legendary",
        default = SaveSettings['Card']['Legendary'] ,
		callback = function(v)
			SaveSettings['Card']['Legendary'] = v
			Save()
		end ,
	})
	spawn(function()
		while wait() do
			if SaveSettings['Card']['Upgrade Card'] or SaveSettings['Card']['Common'] or SaveSettings['Card']['Uncommon'] or SaveSettings['Card']['Rare'] or SaveSettings['Card']['Epic'] or SaveSettings['Card']['Legendary'] then
				pcall(function()
					for i,v in pairs(CenterUIFrame.Inventory.Frame.CardInventoryFrame.CardInventoryScrollingFrame:GetChildren()) do
						if v.Name == "CardInventorySlot" then else
                            if v:FindFirstChild('CardImage') and v.CardImage.BackgroundColor3 == Color3.fromRGB(255, 223, 167) and SaveSettings['Card']['Upgrade Card'] then wait(2)
                                MainRemoteFunction:InvokeServer("UpgradeCard", v.Name);
                            end
							if v:FindFirstChild('Epic') and v:IsA('ImageButton') and v.CardLock.Visible == false and tostring(v.CardImage.BackgroundColor3) == '0.164706, 0.164706, 0.164706' then 
								if tostring(v.Epic.Color) == tostring(ColorTier['Legendary']) and SaveSettings['Card']['Legendary'] then
									MainRemoteFunction:InvokeServer("MassDeleteCardsFromInventory",{[v.Name] = true})
								end
								if tostring(v.Epic.Color) == tostring(ColorTier['Epic']) and SaveSettings['Card']['Epic'] then
									MainRemoteFunction:InvokeServer("MassDeleteCardsFromInventory",{[v.Name] = true})
								end
								if tostring(v.Epic.Color) == tostring(ColorTier['Rare']) and SaveSettings['Card']['Rare'] then
									MainRemoteFunction:InvokeServer("MassDeleteCardsFromInventory",{[v.Name] = true})
								end
								if tostring(v.Epic.Color) == tostring(ColorTier['Uncommon']) and SaveSettings['Card']['Uncommon'] then
									MainRemoteFunction:InvokeServer("MassDeleteCardsFromInventory",{[v.Name] = true})
								end
								if tostring(v.Epic.Color) == tostring(ColorTier['Common']) and SaveSettings['Card']['Common'] then
									MainRemoteFunction:InvokeServer("MassDeleteCardsFromInventory",{[v.Name] = true})
								end
							end
						end
					end
				end)
			end
		end
	end)
------------------------------------------------------ [[ Stats Players ]] ------------------------------------------------------
	Table_Stats = {
		['Main'] = {
			{
				['Title'] = "Level: {Replace}",
				['StatsDisplay'] = "Level",
				['Slot'] = 1
			},
			{
				['Title'] = "Attack: {Replace}",
				['StatsDisplay'] = "Attack",
				['Slot'] = 2
			},
			{
				['Title'] = "Health: {Replace}",
				['StatsDisplay'] = "CardHealth",
				['Slot'] = 3
			},
		},
		['Sub'] = {
			{
				['Title'] = "Attack: +{Replace}%",
				['StatsDisplay'] = "Sub_AttackPercent",
				['Slot'] = 1
			},
			{
				['Title'] = "Critical Damage: +{Replace}%",
				['StatsDisplay'] = "Sub_CriticalDamage",
				['Slot'] = 2
			},
			{
				['Title'] = "Critical Chance: +{Replace}%",
				['StatsDisplay'] = "Sub_CriticalChance",
				['Slot'] = 3
			},
			{
				['Title'] = "Damage Taken: -{Replace}% ",
				['StatsDisplay'] = "Sub_DamageReduction",
				['Slot'] = 4
			},
			{
				['Title'] = "Cooldown Reduction: +{Replace}% ",
				['StatsDisplay'] = "Sub_CooldownReduction",
				['Slot'] = 5
			},
			{
				['Title'] = "Assist Cooldown Reduction: +{Replace}%  ",
				['StatsDisplay'] = "Sub_CooldownReduction",
				['Slot'] = 6
			},
			{
				['Title'] = "HP: +{Replace}% ",
				['StatsDisplay'] = "Sub_CooldownReduction",
				['Slot'] = 7
			},
			{
				['Title'] = "HP Regen: +{Replace}% ",
				['StatsDisplay'] = "Sub_HealthRegeneration",
				['Slot'] = 8
			},
			{
				['Title'] = "Gold: +{Replace}% ",
				['StatsDisplay'] = "Sub_GoldGain",
				['Slot'] = 9
			},
			{
				['Title'] = "EXP: +{Replace}%",
				['StatsDisplay'] = "Sub_EXPGain",
				['Slot'] = 10
			},
			{
				['Title'] = "Pet Skill Charges +{Replace}% faster ",
				['StatsDisplay'] = "Sub_PetEnergyCharge",
				['Slot'] = 11
			},
			{
				['Title'] = "Deals {Replace}% more damage at full HP ",
				['StatsDisplay'] = "Sub_FullHPDamage",
				['Slot'] = 12
			},
			{
				['Title'] = "Mob Damage: +{Replace}%",
				['StatsDisplay'] = "Sub_MobAttackPercent",
				['Slot'] = 13
			},
			{
				['Title'] = "Boss Damage: +{Replace}%",
				['StatsDisplay'] = "Sub_BossAttackPercent",
				['Slot'] = 14
			},
			{
				['Title'] = "Damage +{Replace}% to enemies with more than 50% HP",
				['StatsDisplay'] = "Sub_DamageAbove50HP",
				['Slot'] = 15
			},
			{
				['Title'] = "Adds {Replace}% of damage every 100 Combo. Max 10 Stacks",
				['StatsDisplay'] = "Sub_DamagePer100Combo",
				['Slot'] = 16
			},
			{
				['Title'] = "Heals {Replace}% of damage dealt to Mobs",
				['StatsDisplay'] = "Sub_MobLifesteal",
				['Slot'] = 17
			},
			{
				['Title'] = "Heals {Replace}% of damage dealt to Bosses",
				['StatsDisplay'] = "Sub_BossLifesteal",
				['Slot'] = 18
			},
			{
				['Title'] = "Dash Cooldown: -{Replace} Second ",
				['StatsDisplay'] = "Sub_DashCooldown",
				['Slot'] = 19
			},
			{
				['Title'] = "Attack: +{Replace}% to the entire team. \nCan be put on Assists to boost Main Character damage",
				['StatsDisplay'] = "Sub_TeamAttackPercent",
				['Slot'] = 20
			},
		},
	}

	TableStastRefresh = {}
	TableStastRefreshData = {}
	local StatDisplayReplicatedStorage = game:GetService("ReplicatedStorage")[game.Players.LocalPlayer.Name.."StatDisplay"]
	for i,v in pairs(Table_Stats) do
		for j,k in pairs(v) do
			Title = i .. " " .. k['Title']
			TableStastRefreshData[k['StatsDisplay']] = Title
			TableStastRefresh[k['StatsDisplay']] = StatsPlayers:addLabel({title = string.gsub(Title,"{Replace}",comma_value(string.format("%.2f",StatDisplayReplicatedStorage[k['StatsDisplay']].Value))) })
		end
	end

	spawn(function()
		while wait() do
			for i,v in pairs(TableStastRefreshData) do
				TableStastRefresh[i].Options:ChangeText(string.gsub(v,"{Replace}",comma_value(string.format("%.2f",StatDisplayReplicatedStorage[i].Value))))
			end
			wait(5)
		end
	end)
	------------------------------------------------------ [[ Setting ]] ------------------------------------------------------
	SettingFarm:addToggle({
		title = "Auto Dodge Skill",
        default = SaveSettings["DodgeMobs"]["DodgeSkill"] ,
		callback = function(v)
			SaveSettings["DodgeMobs"]["DodgeSkill"] = v
			Save()
		end ,
	})
	SettingFarm:addToggle({
		title = "Rejoin If Kick",
        default = SaveSettings["Setting"]["Rejoin If Kick"] ,
		callback = function(v)
			SaveSettings["Setting"]["Rejoin If Kick"] = v
			Save()
		end ,
	})
	SettingFarm:addToggle({
		title = "Dash No Cd",
        default = SaveSettings["Farm"]["DashNoCd"] ,
		callback = function(v)
			SaveSettings["Farm"]["DashNoCd"] = v
			Save()
		end ,
	})

	SettingFarm:addSlider({
        title = "Reset Infinite Mode At Wave",
        default = SaveSettings["Setting"]["Leave Infinite At Wave"],
        min = 0,
        max = 300,
        callback = function(value)
			SaveSettings["Setting"]["Leave Infinite At Wave"] = value
            Save()
        end
    })
	SettingFarm:addSlider({
        title = "Tween Speed",
        default = SaveSettings["Setting"]["Tween"],
        min = 20,
        max = 300,
        callback = function(value)
            SaveSettings["Setting"]["Tween"] = value
            Save()
        end
    })
	SettingFarm:addSlider({
        title = "Distance",
        default = SaveSettings["Setting"]["Distance"],
        min = 0,
        max = 15,
        callback = function(value)
            SaveSettings["Setting"]["Distance"] = value
            Save()
        end
    })

	SettingSkill:addToggle({
		title = "Skill One",
        default = SaveSettings["Setting"]["1"] ,
		callback = function(v)
			SaveSettings["Setting"]["1"] = v
			Save()
		end ,
	})
	SettingSkill:addToggle({
		title = "Skill Two",
        default = SaveSettings["Setting"]["2"] ,
		callback = function(v)
			SaveSettings["Setting"]["2"] = v
			Save()
		end ,
	})
	SettingSkill:addToggle({
		title = "Skill Three",
        default = SaveSettings["Setting"]["3"] ,
		callback = function(v)
			SaveSettings["Setting"]["3"] = v
			Save()
		end ,
	})
	SettingSkill:addToggle({
		title = "Skill Four",
        default = SaveSettings["Setting"]["4"] ,
		callback = function(v)
			SaveSettings["Setting"]["4"] = v
			Save()
		end ,
	})
	SettingSkill:addToggle({
		title = "Skill Five",
        default = SaveSettings["Setting"]["5"] ,
		callback = function(v)
			SaveSettings["Setting"]["5"] = v
			Save()
		end ,
	})
	SettingSkill:addToggle({
		title = "Skill E",
        default = SaveSettings["Setting"]["E"] ,
		callback = function(v)
			SaveSettings["Setting"]["E"] = v
			Save()
		end ,
	})
	SettingSkill:addToggle({
		title = "Skill R",
        default = SaveSettings["Setting"]["R"] ,
		callback = function(v)
			SaveSettings["Setting"]["R"] = v
			Save()
		end ,
	})
	SettingSkill:addToggle({
		title = "Skill Fruit Z",
        default = SaveSettings["Setting"]["Z"] ,
		callback = function(v)
			SaveSettings["Setting"]["Z"] = v
			Save()
		end ,
	})
	SettingSkill:addToggle({
		title = "Skill Fruit X",
        default = SaveSettings["Setting"]["X"] ,
		callback = function(v)
			SaveSettings["Setting"]["X"] = v
			Save()
		end ,
	})
    ------------------------------------------------------ [[ Color Theme ]] ------------------------------------------------------
    -- // Adding a color picker for each type of theme customisable
    for theme, color in pairs(Themes) do
        Colors:addColorPicker({
            title = theme,
            default = color,
            callback = function(color3)
                UI:setTheme({
                    theme = theme, 
                    color3 = color3
                })
            end
        })
    end
    -- Setting
    Setting:addButton({
        title = "Rejoin",
        callback = function()
            local tpservice= game:GetService("TeleportService")
            local plr = game.Players.LocalPlayer

            tpservice:Teleport(game.PlaceId, plr)
        end
    })
    Setting:addButton({
        title = "Hop Server",
        callback = function()
            Teleport(game.PlaceId)
        end
    })
    --Start_FPS_Cap
    FPS_CAP = {}
    for i = 1,60 do
        table.insert(FPS_CAP,i)
    end
    Setting:addDropdown({
        title = "Select FPS Amount",
        list = FPS_CAP, 
        default = SaveSettings["SaveSetting"]['FPS Value'],
        callback = function(v)
            SaveSettings["SaveSetting"]['FPS Value'] = v
            Save()
        end;
    })
    Setting:addToggle({
        title = "Enable FPS Cap",
        default  = SaveSettings["SaveSetting"]['FPS Cap'] ,
        callback = function(v)
            SaveSettings["SaveSetting"]['FPS Cap'] = v
            Save()
        end ,
    })
    Setting:addToggle({
        title = "Enable Low CPU Mode",
        default  = SaveSettings["SaveSetting"]['Low CPU Mode'] ,
        callback = function(v)
            SaveSettings["SaveSetting"]['Low CPU Mode'] = v
            Save()
        end ,
    })
    Setting:addKeybind({
        title = "Keybind Hide Ui",
        key = Enum.KeyCode[string.gsub(SaveSettings["SaveSetting"]['Hide Key'],'Enum.KeyCode.',"")],
        callback = function()
            UI:toggle()
        end,
        changedCallback = function(key)
            SaveSettings["SaveSetting"]['Hide Key'] = tostring(key)
            Save()
        end
    })
	------------------------------------------------------ [[ Fix Ui Lib ]] ------------------------------------------------------
	UI:SelectPage({
		page = UI.pages[1],
		toggle = true
	})

	for i,a3 in pairs(game:GetService("CoreGui").RobloxPromptGui.promptOverlay:GetChildren()) do
		if a3.Name == "ErrorPrompt" and a3:FindFirstChild("MessageArea") and a3.MessageArea:FindFirstChild("ErrorFrame") and SaveSettings["Setting"]["Rejoin If Kick"] then
			game:GetService("TeleportService"):Teleport(6938803436, LocalPlayer)
		end
	end
	game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(a3)
		if a3.Name == "ErrorPrompt" and a3:FindFirstChild("MessageArea") and a3.MessageArea:FindFirstChild("ErrorFrame") and SaveSettings["Setting"]["Rejoin If Kick"] then
			game:GetService("TeleportService"):Teleport(6938803436, LocalPlayer)
		end
	end)
	game:GetService("Players").LocalPlayer.PlayerGui.MainGui.ErrorFrame.ChildAdded:Connect(function(v)
		if string.find(v.Text,'Failed to teleport.') and SaveSettings["Setting"]["Rejoin If Kick"] then
			game:GetService("TeleportService"):Teleport(6938803436, LocalPlayer)
		end
	end)
	------------------------------------------------------ [[ Script Function ]] ------------------------------------------------------
    spawn(function()
		while wait() do
			local ostime = os.date("!*t");
			local MainTime = 3600 - (0 + ostime.min * 60 + ostime.sec);
			if MainTime > 3000 then
				local Time_RAID_ENDS_TIME = MainTime - 3000;
				if Time_RAID_ENDS_TIME <= 0 then 
					CheckRaidsOpen = false
                    Text_Raids_Boss.Options:ChangeText('Raids : Close. Open IN : N/S')
				else
					CheckRaidsOpen = true
                    Text_Raids_Boss.Options:ChangeText('Raids : Open. ENDS IN: '.. Utility.convertToHMS(Time_RAID_ENDS_TIME, false, false, true))
				end
			else
				if MainTime <= 0 then
					Text_Raids_Boss.Options:ChangeText('Raids : Close. Open IN : N/S')
				else
					Text_Raids_Boss.Options:ChangeText('Raids : Close. Open IN : '.. Utility.convertToHMS(MainTime, false, false, true))
				end;	
				CheckRaidsOpen = false	
			end
			if SaveSettings["Kaitan"]["Farm AFK"] then
                if game.PlaceId == 6938803436 or game.PlaceId == 7274690025 or game.PlaceId == 7338881230 then
                    warn(CheckRaidsOpen)
                    if not CheckRaidsOpen then
                        if table.find(SaveSettings["Kaitan"]['Select AFK Farm'],"Raid") and not table.find(SaveSettings["Kaitan"]['Select AFK Farm'],"Speed Raid") then
                            MainRemoteFunction:InvokeServer("CreateRoom",
                                {
                                    ["Difficulty"] = "Easy",
                                    ["FriendsOnly"] = true,
                                    ["MapName"] = SaveSettings["Setting Map"]["RaidName"],
                                    ["Hardcore"] = false
                                }
                            )
                            MainRemoteFunction:InvokeServer("TeleportPlayers")
                            if game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.TeleportingUI.Visible == true then break end
                            wait(.25)
                        elseif table.find(SaveSettings["Kaitan"]['Select AFK Farm'],"Raid") and table.find(SaveSettings["Kaitan"]['Select AFK Farm'],"Speed Raid") then
                            MainRemoteFunction:InvokeServer("CreateRoom",
                                {
                                    ["Difficulty"] = "Easy",
                                    ["FriendsOnly"] = true,
                                    ["MapName"] = SaveSettings["Setting Map"]["RaidName"],
                                    ["Hardcore"] = false
                                }
                            )
                            MainRemoteFunction:InvokeServer("TeleportPlayers")
                            if game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.TeleportingUI.Visible == true then break end
                            wait(.25)
                        end
                        if table.find(SaveSettings["Kaitan"]['Select AFK Farm'],"Speed Raid") then
                            MainRemoteFunction:InvokeServer("TeleportToShadowRaid",Table_Character_Speed_Raid['1'])
                            wait(.25)
                            Save()
                            if game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.TeleportingUI.Visible == true then
                                SaveSettings["Farm"]["Inside Speed Raids"] = true
                                Save()
                                break
                            end
                        end
                        if table.find(SaveSettings["Kaitan"]['Select AFK Farm'],"BossRush") then
                            MainRemoteFunction:InvokeServer("TeleportToBossRush")
                            wait(.25)
                            if game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.TeleportingUI.Visible == true then break end
                        end
                        if CheckMap() ~= "AFK Room" and game.PlaceId ~= 6990129309 then
                            game:GetService("TeleportService"):Teleport(6990131029, game:GetService("Players").LocalPlayer)
                        end
                    elseif CheckRaidsOpen then
                        if table.find(SaveSettings["Kaitan"]['Select AFK Farm'],"Raid") and not table.find(SaveSettings["Kaitan"]['Select AFK Farm'],"Speed Raid") then
                            MainRemoteFunction:InvokeServer("CreateRoom",
                                {
                                    ["Difficulty"] = "Easy",
                                    ["FriendsOnly"] = true,
                                    ["MapName"] = SaveSettings["Setting Map"]["RaidName"],
                                    ["Hardcore"] = false
                                }
                            )
                            MainRemoteFunction:InvokeServer("TeleportPlayers")
                            if game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.TeleportingUI.Visible == true then break end
                        elseif table.find(SaveSettings["Kaitan"]['Select AFK Farm'],"Raid") and table.find(SaveSettings["Kaitan"]['Select AFK Farm'],"Speed Raid") then
                            MainRemoteFunction:InvokeServer("CreateRoom",
                                {
                                    ["Difficulty"] = "Easy",
                                    ["FriendsOnly"] = true,
                                    ["MapName"] = SaveSettings["Setting Map"]["RaidName"],
                                    ["Hardcore"] = false
                                }
                            )
                            MainRemoteFunction:InvokeServer("TeleportPlayers")
                            if game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.TeleportingUI.Visible == true then break end
                        end
                        if table.find(SaveSettings["Kaitan"]['Select AFK Farm'],"Speed Raid") then
                            MainRemoteFunction:InvokeServer("TeleportToShadowRaid",Table_Character_Speed_Raid['1'])
                            wait(.25)
                            Save()
                            if game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.TeleportingUI.Visible == true then
                                SaveSettings["Farm"]["Inside Speed Raids"] = true
                                Save()
                                break
                            end
                        end
                        if table.find(SaveSettings["Kaitan"]['Select AFK Farm'],"BossRush") then
                            MainRemoteFunction:InvokeServer("TeleportToBossRush")
                            if game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.TeleportingUI.Visible == true then break end
                        end
                    end
                else
                    if CheckRaidsOpen and game.PlaceId == 6990131029 then
                        for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
                            for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.AfkGui.CenterUIFrame.Frame.AfkClaim[v])) do
                                v.Function()
                            end
                        end
                    end
                end
            end
		end;
	end)
	function Get_Game_Map()
		for i,v in pairs(game:GetService("Workspace").GameMap:GetChildren()) do
			return v
		end
	end
	function CheckMap()
		if game.PlaceId == 6990131029 then
			return "AFK Room"
		else
			for i,v in pairs(game:GetService('Workspace').GameMap:GetChildren()) do
				if not string.find(v.Name,'Shadow') and string.find(v.Name,'Ichini') and string.find(v.Name,'Raid') then
					return "Ichini Raid Mode"
				elseif string.find(v.Name,'Shadow') and string.find(v.Name,'Raid') then
					return "Shadow Raid Mode"
				elseif not string.find(v.Name,'Shadow') and string.find(v.Name,'Raid') then
					return "Raid Mode"
				elseif string.find(v.Name,'Dimension') then
					return "Dimensions Mode"
				elseif string.find(v.Name,'Challenge') then
					return "Time Challenge"
				elseif v.Name == 'Boss Rush' then
					return "Boss Rush"
				elseif v.Name == 'Infinite Mode' then
					return "Infinite Mode"
				elseif v.Name == 'Virtual Garden' then
					return "Time Challenge"
				end
			end
		end
		return "None"
	end
	function GetMap()
		if game.PlaceId == 6990131029 then
			return "AFK Room"
		else
			for i,v in pairs(game:GetService('Workspace').GameMap:GetChildren()) do
				return v.Name
			end
		end
		return "None"
	end

	function Get_Level_Data_Map()
		local PlayerName = game:GetService("Players").LocalPlayer.Name
		local DataPlayers = game:GetService("ReplicatedStorage")[PlayerName .. "StatDisplay"]
		local Level = DataPlayers.Level.Value
	
		local DataQuest = {}
		local less = math.huge
		for i, v in pairs(Main.MapInfo) do
			if not v.excludeFromList and not v.isShadowRaid and not v.isRaid and not v.isBossRush and i ~= "Time Challenge" and i ~= "Infinite Mode" then
				local MapInfo = Main.MapInfo[i];
				for i1,v1 in pairs(MapInfo.difficulties) do
					if Level >= v1.levelReq and Level - v1.levelReq < less  then 
						less = Level - v1.levelReq
						DataQuest = {
							Name = tostring(i),
							Difficulty = i1,
							Level = v1.levelReq,
						}
					end
				end
			end
		end
		return DataQuest
	end
	NotRetry = false
	spawn(function()
		pcall(function()
			while wait(2) do
				if SaveSettings["Farm"]["Auto Next Level"] then
					if game.PlaceId == 6938803436 or game.PlaceId == 7274690025 then
						SaveSettings["Setting Map"]["MapName"] = Get_Level_Data_Map().Name
						SaveSettings["Setting Map"]["Difficulty"] = Get_Level_Data_Map().Difficulty
						Map_Selecte:Options().Text = ("Map Selecte : " .. SaveSettings["Setting Map"]["MapName"])
					elseif Get_Game_Map().Name ~= Get_Level_Data_Map().Name and CheckMap() == "Dimensions Mode" then
						SaveSettings["Setting Map"]["MapName"] = Get_Level_Data_Map().Name
						SaveSettings["Setting Map"]["Difficulty"] = Get_Level_Data_Map().Difficulty
						Map_Selecte:Options().Text = ("Map Selecte : " .. SaveSettings["Setting Map"]["MapName"])
						if SaveSettings["Setting Map"]["Auto Retry"] then NotRetry = true end
					elseif SaveSettings["Setting Map"]["Difficulty"] ~= Get_Level_Data_Map().Difficulty and CheckMap() == "Dimensions Mode" then
						SaveSettings["Setting Map"]["MapName"] = Get_Level_Data_Map().Name
						SaveSettings["Setting Map"]["Difficulty"] = Get_Level_Data_Map().Difficulty
						Map_Selecte:Options().Text = ("Map Selecte : " .. SaveSettings["Setting Map"]["MapName"])
						if SaveSettings["Setting Map"]["Auto Retry"] then NotRetry = true end
					end
				end
			end
		end)
	end)

    -- Daily
    local Table_Quest = {
		"DailyQuest_Login",
		"DailyQuest_TimeChallenge",
		"DailyQuest_Enemies",
		"DailyQuest_DungeonClear",
		"DailyQuest_Raid",
		"DailyQuest_BossRush",
		"DailyQuest_AllQuestClear"
	}
	local Table_QuestWeekly = {
		"WeeklyQuest_SpeedRaid",
		"WeeklyQuest_Raid",
		"WeeklyQuest_Logins",
		"WeeklyQuest_TimePlayed",
	}
	spawn(function()
		while wait() do
			if SaveSettings["BossRushTicket"]["Auto Buy BossRush Ticket"] then
				if SaveSettings['BossRushTicket']['Count Buy BossRush Ticket'] > StatTableModule.returnStat(game:GetService("Players").LocalPlayer, 'BossRushEntryPass') then
					local string_1 = "BuyBossRushShopItem";
					local string_2 = "Boss Rush Ticket (".. SaveSettings["BossRushTicket"]["Select"] ..")";
					local Target = game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction;
					BuyBossRushShopItem = Target:InvokeServer(string_1, string_2);
					print(BuyBossRushShopItem.status)
					wait(1)
				end
			end
			if SaveSettings["Daily"]["Auto Redeem All Code"] then
				if game:GetService("Workspace"):FindFirstChild("Leaderboards") and game:GetService("Workspace").Leaderboards.MilestoneBoard.Center.Surface.ScrollingFrame:FindFirstChild("MilestoneEntry") then
					for i,v in pairs(game:GetService("Workspace").Leaderboards.MilestoneBoard.Center.Surface.ScrollingFrame:GetChildren()) do
						if v.Name == "MilestoneEntry" and v:FindFirstChild("MilestoneCode") then
							MainRemoteFunction:InvokeServer("RedeemPromoCode", v.MilestoneCode.Text);
						end
					end
				end
			end
			if SaveSettings["Daily"]["Auto Claim Event"] then
				for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.EventFrame.Frame.EventGiftsFrame.EventGiftsSFrame:GetChildren()) do
					if v.Name == 'EventCurrencyTemplate' and v.Visible == true then
						if v.Claim.Visible == true then
							for i,v in pairs(getconnections(v.Claim.MouseButton1Click)) do
								v.Function() 
							end
						end
					end
				end
			end 
			if SaveSettings["Daily"]["Daily Quest Weekly"] then
				for i,v in pairs(Table_QuestWeekly) do
					MainRemoteFunction:InvokeServer("CompleteDailyQuest", v);
				end
			end
			if SaveSettings["Daily"]["Daily Quest"] then
				for i,v in pairs(Table_Quest) do
					MainRemoteFunction:InvokeServer("CompleteDailyQuest", v);
				end
			end
			if SaveSettings["Daily"]["Daily +20 Raid Ricket"] then
				MainRemoteFunction:InvokeServer("GiveFreeDailyGemFromShop");
			end 
			if SaveSettings["Farm"]["Farm Speed Raids"] then
				MainRemoteFunction:InvokeServer("ClaimWeeklySpeedRaidReward",1)
				MainRemoteFunction:InvokeServer("ClaimWeeklySpeedRaidReward",2)
				MainRemoteFunction:InvokeServer("ClaimWeeklySpeedRaidReward",3)
				MainRemoteFunction:InvokeServer("ClaimWeeklySpeedRaidReward",4)
				MainRemoteFunction:InvokeServer("ClaimWeeklySpeedRaidReward",5)
				MainRemoteFunction:InvokeServer("ClaimWeeklySpeedRaidReward",6)
				MainRemoteFunction:InvokeServer("ClaimWeeklySpeedRaidReward",7)
				MainRemoteFunction:InvokeServer("ClaimWeeklySpeedRaidReward",8)
				MainRemoteFunction:InvokeServer("ClaimWeeklySpeedRaidReward",9)
			end 
		end
	end)
	CenterUIFrame.PetInventoryScrollingFrame.ChildAdded:Connect(function(v) wait()
		if SaveSettings["Egg"]["Auto Stop Spin if get"] and Table_Pet_Info[v.CardImage.Image]['Rarity'] == SaveSettings["Egg"]["Stop Spin"] then
			warn(Table_Pet_Info[v.CardImage.Image]['Name'],Table_Pet_Info[v.CardImage.Image]['Rarity'])
			SaveSettings["Egg"]["Auto Spin Egg"] = false
		end
	end)

	spawn(function()
		while wait() do
			if SaveSettings["Egg"]["Auto Spin Egg"] and SaveSettings["Egg"]["Select Egg"] ~= "nil" then
				MainRemoteFunction:InvokeServer("BuyEgg", tostring(SaveSettings["Egg"]["Select Egg"]));
				wait(3)
			end
		end
	end)

	local function getclosestMobs(value)
		local closestMobs = nil
		local shortestDistance = math.huge
		local findboss = false
		if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
			for i1, v1 in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
				if v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("EnemyHealthBarGui") and v1:FindFirstChild("Highlight") then
					local magnitude = plr:DistanceFromCharacter(v1:FindFirstChild("HumanoidRootPart").Position)
					if tonumber(magnitude) < shortestDistance then
						closestMobs = v1
						shortestDistance = magnitude
						findboss = true
					end
				end
			end
			if findboss == false then
				for i1, v1 in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
					if v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("EnemyHealthBarGui") then
						local magnitude = plr:DistanceFromCharacter(v1:FindFirstChild("HumanoidRootPart").Position)
						if tonumber(magnitude) < shortestDistance then
							closestMobs = v1
							shortestDistance = magnitude
						end
					end
				end
			end
		end
		if value == "Distance" then
			if shortestDistance == math.huge then
				return 0
			else
				return shortestDistance
			end
		else
			return closestMobs
		end
	end

	function returnCharacterName(p26)
		if Utility.getServerType() == "Game" then
			return StatsModule.returnStat(p26, "BattleCharacterName");
		end;
		return StatsModule.returnStat(p26, "CharacterName");
	end;
	function Check_Character_Main()
		local CharacterNameUse = returnCharacterName(game:GetService("Players").LocalPlayer);
		return CharacterNameUse
	end
	function Remove_Test(str)
		return str:gsub("/RoyxHub_PS_ADS/AnimeDimensions/Marco\\","")
	end
	function Remove_json(str)
		return str:gsub(".json","")
	end

	local UseDodgeSkill,UseSkillDodge = true,false
	function toTargetx(targetCFrame , Status, speed)
		local tween_s = game:service"TweenService"
		local info = TweenInfo.new((targetCFrame.Position - plr.Character.HumanoidRootPart.Position).Magnitude/speed, Enum.EasingStyle.Linear)
		local tween, err = pcall(function()
			if not UseSkillDodge then
				local tween = tween_s:Create(plr.Character["HumanoidRootPart"], info, {CFrame = targetCFrame})
				tween:Play()
				if not Status then tween:Stop() return end
			end
		end)
		if not tween or not UseSkillDodge then return err end
	end
	local function skilluse(value)
		game:GetService("VirtualInputManager"):SendKeyEvent(true,value,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
		game:GetService("VirtualInputManager"):SendKeyEvent(false,value,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
	end
	local ViSendMouseButtonEvent = game:service('VirtualInputManager')
	local function click()
		if Check_Character_Main() == 'Aizen (Muken)' and game:GetService("Workspace").Folders.Debris:FindFirstChild('EdgeBuffParticle') then
			for i = 1,8 do wait()
				skilluse(49)
			end
		elseif Check_Character_Main() == 'Sung Jin Woo' and game:GetService("Players").LocalPlayer.Character:FindFirstChild('KamishLeft'):FindFirstChild('WeaponFlame') then
			for i = 1,8 do wait()
				skilluse(49)
			end
		elseif Check_Character_Main() == 'Yor' and game:GetService("Players").LocalPlayer.Character:FindFirstChild('Head'):FindFirstChild('RedSmoke') then
			for i = 1,10 do wait()
				skilluse(49)
			end
		elseif Check_Character_Main() == 'DioCharacter' and game:GetService("Lighting"):FindFirstChild('TheWorldSky') then
			for i = 1,10 do wait()
				skilluse(49)
			end
		elseif (Check_Character_Main() == 'Attack Titan' or Check_Character_Main() == 'Shadow Attack Titan') and game:GetService("Players").LocalPlayer.Character:FindFirstChild('HumanoidRootPart'):FindFirstChild('Specs') then
			for i = 1,18 do wait()
				skilluse(49)
			end
		elseif (Check_Character_Main() == 'Denji' or Check_Character_Main() == 'Shadow Denji') and game:GetService("Workspace").Folders.Debris:FindFirstChild('OverdriveParticle') then
			for i = 1,12 do wait()
				skilluse(49)
			end
		elseif (Check_Character_Main() == 'Infinity Gojo' or Check_Character_Main() == 'Shadow Infinity Gojo') and game:GetService("Lighting").Brightness == 0 then
			for i = 1,18 do wait()
				skilluse(49)
				skilluse(50)
			end
		elseif Check_Character_Main() == 'Nezuko (New Year)' and game:GetService("Lighting").Brightness == 0 then
			for i = 1,4 do wait()
				skilluse(49)
			end
		else
			SkillRealForMySelf = true
			wait()
			ViSendMouseButtonEvent:SendMouseButtonEvent(0, 0, 0, true, game.Workspace, 1)
			wait()
			ViSendMouseButtonEvent:SendMouseButtonEvent(0, 0, 0, false, game.Workspace, 1)
			wait(.1)
			SkillRealForMySelf = false
		end
	end
	local function cframeconvert()
		if SaveSettings["Setting"]["Distancedecimal"] == 0 then
			return tonumber(tostring(SaveSettings["Setting"]["Distance"]))
		else
			return tonumber(tostring(SaveSettings["Setting"]["Distance"]) .. "." ..tostring(SaveSettings["Setting"]["Distancedecimal"]))
		end
	end
	local function checkmondistance1(cframe)
		local Monxd,Monxd1 = {},{}
		for i1, v1 in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
			if v1:FindFirstChild('HumanoidRootPart') and (v1.HumanoidRootPart.Position - cframe.Position).Magnitude <= 20 then
				table.insert(Monxd,v1)
			end
		end
		for i1, v1 in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
			if  v1:FindFirstChild('HumanoidRootPart') then
				table.insert(Monxd1,v1)
			end
		end
	
		if #Monxd < #Monxd1 then
			return false
		elseif #Monxd >= #Monxd1 then
			return true
		end
	end
	spawn(function ()
		while true do
			pcall(function ()
				if game:GetService("Workspace").Folders.Players:FindFirstChild(plr.Name).Humanoid.Health > 0 then
					Life = true
				else
					Life = false
				end
			end)
			wait()
		end
	end)
	-- Auto Farm Mon
	spawn(function()
		HeeTime = 0
		while true do
			if game.PlaceId == 6990129309 and Life then
				pcall(function()
					if SaveSettings["Farm"]["Time Challenge Farm"] or SaveSettings["Farm"]["Infinite Mode Farm"] or SaveSettings["Farm"]["Dimension Farm"] or SaveSettings["Farm"]["Farm Speed Raids"] or SaveSettings["Farm"]['AutoJoinBossRushFree'] or SaveSettings["Farm"]["Raids Farm"] or SaveSettings["Farm"]["Raids Farm"] then
						pcall(function()
							if CheckMap() == "Infinite Mode" then
								if HeeTime < 500 then
									if game:GetService("Workspace").Folders.Monsters:FindFirstChildWhichIsA('Model') then
										if game:GetService("Players").LocalPlayer.PlayerGui.BattleGui.CenterUIFrame.BossHealthFrame.Visible == true then
											pcall(function()
												local v1 = getclosestMobs()
												repeat wait() 
													if (v1.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 40 then 
														toTargetx(v1.HumanoidRootPart.CFrame * CFrame.new(0,0,cframeconvert()) , true, SaveSettings["Setting"]["Tween"])
														click()
														wait()
														SkillRealForMySelf = true
													else
														SkillRealForMySelf = false
														toTargetx(v1.HumanoidRootPart.CFrame * CFrame.new(0,0,cframeconvert()) , true, SaveSettings["Setting"]["Tween"])
													end 
												until not v1.Parent or (not SaveSettings["Farm"]["Time Challenge Farm"] or not SaveSettings["Farm"]["Infinite Mode Farm"] or not SaveSettings["Farm"]["Dimension Farm"] or not SaveSettings["Farm"]["Farm Speed Raids"] or not SaveSettings["Farm"]["AutoJoinBossRushFree"] or not SaveSettings["Farm"]["Raids Farm"] or not SaveSettings["Farm"]["Raids Farm"])  
												return
											end)
										else
											if checkmondistance1(CFrame.new(-48.31207275390625, 17.768247604370117, 37.231563568115234)) == true then
												pcall(function()
													spawn(function()
														toTargetx(CFrame.new(-48.31207275390625, 17.768247604370117, 37.231563568115234)* CFrame.new(0,20,0)* CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(-90)) , true,SaveSettings["Setting"]["Tween"])
														SkillRealForMySelf = true
													end)
												end)
											elseif checkmondistance1(CFrame.new(-48.31207275390625, 17.768247604370117, 37.231563568115234)) == false then
												pcall(function()
													SkillRealForMySelf = false
													toTargetx(CFrame.new(-48.31207275390625, 17.768247604370117, 37.231563568115234) * CFrame.new(0,80,0) , true,SaveSettings["Setting"]["Tween"])
												end)
											end
										end
									else
										pcall(function()
											SkillRealForMySelf = true
											toTargetx(CFrame.new(-48.31207275390625, 17.768247604370117, 37.231563568115234), true,SaveSettings["Setting"]["Tween"])
										end)
									end
								else
									pcall(function()
										local v1 = getclosestMobs()
										repeat wait() 
											if (v1.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 20 then 
												toTargetx(v1.HumanoidRootPart.CFrame * CFrame.new(0,0,cframeconvert()) , true, SaveSettings["Setting"]["Tween"])
												click()
												wait()
												SkillRealForMySelf = true
											else
												SkillRealForMySelf = false
												toTargetx(v1.HumanoidRootPart.CFrame * CFrame.new(0,0,cframeconvert()) , true, SaveSettings["Setting"]["Tween"])
											end 
										until not v1.Parent or (not SaveSettings["Farm"]["Time Challenge Farm"] or not SaveSettings["Farm"]["Infinite Mode Farm"] or not SaveSettings["Farm"]["Dimension Farm"] or not SaveSettings["Farm"]["Farm Speed Raids"] or not SaveSettings["Farm"]["AutoJoinBossRushFree"] or not SaveSettings["Farm"]["Raids Farm"] or not SaveSettings["Farm"]["Raids Farm"])  
										return
									end)
								end
							else 
								if GetMap() == "Curse Dimension" and getclosestMobs("Distance") > 1000 then
									toTargetx(game:GetService("Workspace").GameMap["Curse Dimension"].CurseTeleportCircle.CFrame , true, SaveSettings["Setting"]["Tween"])
								elseif GetMap() == "Fate Dimension" and getclosestMobs("Distance") > 500 then
									toTargetx(game:GetService("Workspace").GameMap["Fate Dimension"].CenterTeleportCircle1.CFrame , true, SaveSettings["Setting"]["Tween"])
								elseif GetMap() == "Pirate Dimension" and getclosestMobs("Distance") > 3800 then
									toTargetx(game:GetService("Workspace").GameMap["Pirate Dimension"].Part2Teleport.CFrame , true, SaveSettings["Setting"]["Tween"])
								else
									local v1 = getclosestMobs()
									repeat wait() 
										if SaveSettings["Farm"]["Auto Raids (Instant Leave Farm All)"] and CheckRaidsOpen and not string.find(CheckMap(),"Raid Mode") then
											game:GetService("TeleportService"):Teleport(6938803436, LocalPlayer)
											wait()
										end
										if (v1.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 20 then 
											toTargetx(v1.HumanoidRootPart.CFrame * CFrame.new(0,0,cframeconvert()) , true, SaveSettings["Setting"]["Tween"])
											click()
										else
											toTargetx(v1.HumanoidRootPart.CFrame * CFrame.new(0,0,cframeconvert()) , true, SaveSettings["Setting"]["Tween"])
										end 
									until not v1.Parent or (not SaveSettings["Farm"]["Time Challenge Farm"] or not SaveSettings["Farm"]["Infinite Mode Farm"] or not SaveSettings["Farm"]["Dimension Farm"] or not SaveSettings["Farm"]["Farm Speed Raids"] or not SaveSettings["Farm"]["AutoJoinBossRushFree"] or not SaveSettings["Farm"]["Raids Farm"] or not SaveSettings["Farm"]["Raids Farm"])  
								end
							end
						end)
					end
				end)
			end
			wait()
		end
	end)
	spawn(function()
		while wait() do
			if CheckMap() == "Infinite Mode" then
				pcall(function()
					print(HeeTime)
					local Check = game:GetService("Players").LocalPlayer.PlayerGui.BattleGui.CenterUIFrame.WaveClearClearText.Text
					repeat wait() 
						HeeTime = HeeTime + 1 
						if tonumber(SaveSettings["Setting"]["Leave Infinite At Wave"]) <= tonumber(Check) and Life then wait(2)
							game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
						end
					until game:GetService("Players").LocalPlayer.PlayerGui.BattleGui.CenterUIFrame.WaveClearClearText.Text ~= Check
					HeeTime = 0
				end)
			end
		end
	end)
	-- Dash No Cooldown
	spawn(function()
		while wait() do
			if SaveSettings["Farm"]["DashNoCd"] then
				pcall(function()
					for i, v in next, getgc() do
						if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerGui.LocalScripts.GameLogicSetUp then
							for i1, v1 in next, getupvalues(v) do
								if typeof(v1) == 'table' then
									for i2,v2 in pairs(v1) do
										if i2 == 'dash' then
											for i3, v3 in next, getupvalues(v2) do
												if type(v3) == 'table' and v3.Cooldown and SaveSettings["Farm"]["DashNoCd"] then
													repeat wait()
														v3.Cooldown = 0
													until not SaveSettings["Farm"]["DashNoCd"]
													v3.Cooldown = 3
												end
											end
										end
									end
								end
							end
						end
					end
				end)
			end
		end
	end)

	Table_Select_Main_Character = {
		"Dimensions Mode",
		"Boss Rush",
		"Time Challenge",
		"Raid Mode","Shadow Raid Mode","Ichini Raid Mode"
	}
	SetCharacter = true
	spawn(function()
		while wait(1) do
			pcall(function()
				if SaveSettings['Setting']['Auto Select Main Character'] then
					if SaveSettings['Setting']['Select Main Character'] ~= "nil" and not SaveSettings["Farm"]["Inside Speed Raids"] then
						if table.find(Table_Select_Main_Character,CheckMap()) and not UniversalCenterUIFrame.RespawnTimerFrame.Visible then
							local CharacterName = Check_Character_Main()
							if CheckMap() == "Dimensions Mode" and not SaveSettings["Setting Map"]["Hardcore"] and game:GetService("Players").LocalPlayer.Character:FindFirstChild('Humanoid') then
								if CharacterName ~= DataInGameScript[SaveSettings['Setting']['Select Main Character']] then
									game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
								end
							else
								if CharacterName ~= DataInGameScript[SaveSettings['Setting']['Select Main Character']] and game:GetService("Players").LocalPlayer.Character:FindFirstChild('Humanoid') then
									game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
								end
							end
						end
					end
				end
			end)
		end
	end)
	spawn(function()
		if game.PlaceId == 6938803436 or game.PlaceId == 7274690025 then 
			SaveSettings["Farm"]["Inside Speed Raids"] = false
			Save()

			local SpeedRaidCharacterInventoryScrollingFrame = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.SpeedRaidCharacterSelector.Shade.SpeedRaidCharacterInventoryScrollingFrame
			Table_Character_Speed_Raid = {}
			local CountMobs = 1
			for Number = 200,1,-1 do
				for i,v in pairs(SpeedRaidCharacterInventoryScrollingFrame:GetChildren()) do
					if v:IsA('ImageButton') and v:FindFirstChild('CharacterImage') and v.CharacterImage.ImageTransparency == 0 and v.LayoutOrder == Number then
						Table_Character_Speed_Raid[tostring(CountMobs)] = v.Name
						CountMobs = CountMobs + 1
					end
				end
			end
		end
		while true do
			if game.PlaceId == 6938803436 or game.PlaceId == 7274690025 then
				if SaveSettings['Shop Random']['Buy Key Over Heaven'] then
					MainRemoteFunction:InvokeServer("BuyRaidShopItem","Over Heaven Key (2 Per Day)")
				end
				if SaveSettings['Shop Random']['Auto Random Over Heaven'] then
					MainRemoteFunction:InvokeServer("SpinEventReward")
				end
				if SaveSettings['Shop Random']['Auto Random Dusk'] then
					MainRemoteFunction:InvokeServer("SpinEventReward",true)
				end

				if SaveSettings["Kaitan"]["Farm Kaitan"] then
					if SaveSettings['Setting']['Auto Character Dimension'] then
						if SaveSettings["Setting"]["Main Character"] ~= "nil" then
							MainRemoteFunction:InvokeServer("EquipCharacter",DataInGameScript[SaveSettings["Setting"]["Main Character"]])
						end
						if SaveSettings["Setting"]["Assist 1"] ~= "nil"  then
							MainRemoteFunction:InvokeServer("EquipCharacterAssist",DataInGameScript[SaveSettings["Setting"]["Assist 1"]],1)
						end
						if SaveSettings["Setting"]["Assist 2"] ~= "nil"  then
							MainRemoteFunction:InvokeServer("EquipCharacterAssist",DataInGameScript[SaveSettings["Setting"]["Assist 2"]],2)
						end
					end
                    if table.find(SaveSettings["Kaitan"]['Select Kaitan Farm'],"Raid") and not table.find(SaveSettings["Kaitan"]['Select AFK Farm'],"Speed Raid") then
                        MainRemoteFunction:InvokeServer("CreateRoom",
                            {
                                ["Difficulty"] = "Easy",
                                ["FriendsOnly"] = true,
                                ["MapName"] = SaveSettings["Setting Map"]["RaidName"],
                                ["Hardcore"] = false
                            }
                        )
                        MainRemoteFunction:InvokeServer("TeleportPlayers")
                        if game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.TeleportingUI.Visible == true then break end
                    elseif table.find(SaveSettings["Kaitan"]['Select Kaitan Farm'],"Raid") and table.find(SaveSettings["Kaitan"]['Select AFK Farm'],"Speed Raid") then
                        MainRemoteFunction:InvokeServer("CreateRoom",
                            {
                                ["Difficulty"] = "Easy",
                                ["FriendsOnly"] = true,
                                ["MapName"] = SaveSettings["Setting Map"]["RaidName"],
                                ["Hardcore"] = false
                            }
                        )
                        MainRemoteFunction:InvokeServer("TeleportPlayers")
                        if game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.TeleportingUI.Visible == true then break end
                    end
                    if table.find(SaveSettings["Kaitan"]['Select Kaitan Farm'],"Raid") and table.find(SaveSettings["Kaitan"]['Select AFK Farm'],"Speed Raid") then
                        MainRemoteFunction:InvokeServer("CreateRoom",
                            {
                                ["Difficulty"] = "Easy",
                                ["FriendsOnly"] = true,
                                ["MapName"] = SaveSettings["Setting Map"]["RaidName"],
                                ["Hardcore"] = false
                            }
                        )
                        MainRemoteFunction:InvokeServer("TeleportPlayers")
                        if game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.TeleportingUI.Visible == true then break end
                    end
                    if table.find(SaveSettings["Kaitan"]['Select Kaitan Farm'],"Speed Raid") then
                        MainRemoteFunction:InvokeServer("TeleportToShadowRaid",Table_Character_Speed_Raid['1'])
                        wait(.25)
                        Save()
                        if game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.TeleportingUI.Visible == true then
                            SaveSettings["Farm"]["Inside Speed Raids"] = true
                            Save()
                            break
                        end
                    end
                    if table.find(SaveSettings["Kaitan"]['Select Kaitan Farm'],"BossRush") then
                        MainRemoteFunction:InvokeServer("TeleportToBossRush")
                        if game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.TeleportingUI.Visible == true then break end
                    end

                    MainRemoteFunction:InvokeServer("CreateRoom",
                        {
                        ["Difficulty"] = SaveSettings["Setting Map"]["Difficulty"],
                        ["FriendsOnly"] = SaveSettings["Setting Map"]["Friend Allow"],
                        ["MapName"] = SaveSettings["Setting Map"]["MapName"],
                        ["Hardcore"] = SaveSettings["Setting Map"]["Hardcore"]
                    })
                    MainRemoteFunction:InvokeServer("TeleportPlayers")
                    if game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.TeleportingUI.Visible == true then break end
                end

				if SaveSettings["Farm"]["Raids Farm"] then
					if SaveSettings['Setting']['Auto Character Dimension'] then
						if SaveSettings["Setting"]["Main Character"] ~= "nil" then
							MainRemoteFunction:InvokeServer("EquipCharacter",DataInGameScript[SaveSettings["Setting"]["Main Character"]])
						end
						if SaveSettings["Setting"]["Assist 1"] ~= "nil"  then
							MainRemoteFunction:InvokeServer("EquipCharacterAssist",DataInGameScript[SaveSettings["Setting"]["Assist 1"]],1)
						end
						if SaveSettings["Setting"]["Assist 2"] ~= "nil"  then
							MainRemoteFunction:InvokeServer("EquipCharacterAssist",DataInGameScript[SaveSettings["Setting"]["Assist 2"]],2)
						end
					end
					MainRemoteFunction:InvokeServer("CreateRoom",
						{
							["Difficulty"] = "Easy",
							["FriendsOnly"] = true,
							["MapName"] = SaveSettings["Setting Map"]["RaidName"],
							["Hardcore"] = false
						}
					)
					if not SaveSettings['Party']['Start Party'] then
						MainRemoteFunction:InvokeServer("TeleportPlayers")
					end
					if game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.TeleportingUI.Visible == true then break end
				end
				if SaveSettings["Farm"]["Farm Speed Raids"] then
					MainRemoteFunction:InvokeServer("TeleportToShadowRaid",Table_Character_Speed_Raid['1'])
					wait(.25)
					Save()
					if game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.TeleportingUI.Visible == true then
						SaveSettings["Farm"]["Inside Speed Raids"] = true
						Save()
						break
					end
				end

				if SaveSettings['Setting']['Auto Character Dimension'] then
					if SaveSettings["Setting"]["Main Character"] ~= "nil"  then
						local v21 = StatsModule.returnStat(game:GetService("Players").LocalPlayer, "CharacterName");
						local ImageAssist1 = CharacterModule.isAwakened(v21) and Modulessettings.CharacterSettings[v21] and Modulessettings.CharacterSettings[v21].awakenTriIcon or (Modulessettings.CharacterSettings[v21] and Modulessettings.CharacterSettings[v21].triIcon or "");
						local l__SkillAssist1__22 = CenterUIFrame.CharacterInventoryOverlay.CharacterIcon;
						l__SkillAssist1__22.Image = ImageAssist1
					end
					if SaveSettings["Setting"]["Assist 1"] ~= "nil"  then
						MainRemoteFunction:InvokeServer("EquipCharacterAssist",DataInGameScript[SaveSettings["Setting"]["Assist 1"]],1)

						local v21 = StatsModule.returnStat(game:GetService("Players").LocalPlayer, "AssistCharacterName1");
						local ImageAssist1 = CharacterModule.isAwakened(v21) and Modulessettings.CharacterSettings[v21] and Modulessettings.CharacterSettings[v21].awakenTriIcon or (Modulessettings.CharacterSettings[v21] and Modulessettings.CharacterSettings[v21].triIcon or "");
						local l__SkillAssist1__22 = UniversalCenterUIFrame.SkillAssist1;
						l__SkillAssist1__22.Image = ImageAssist1
					end
					if SaveSettings["Setting"]["Assist 2"] ~= "nil"  then
						MainRemoteFunction:InvokeServer("EquipCharacterAssist",DataInGameScript[SaveSettings["Setting"]["Assist 2"]],2)

						local v20 = StatsModule.returnStat(game:GetService("Players").LocalPlayer, "AssistCharacterName2");
						local ImageAssist2 = CharacterModule.isAwakened(v20) and Modulessettings.CharacterSettings[v20] and Modulessettings.CharacterSettings[v20].awakenTriIcon or (Modulessettings.CharacterSettings[v20] and Modulessettings.CharacterSettings[v20].triIcon or "");
						local l__SkillAssist1__22 = UniversalCenterUIFrame.SkillAssist2;
						l__SkillAssist1__22.Image = ImageAssist2
					end
				end
				
				if SaveSettings["Farm"]['AutoJoinBossRushFree'] then
					MainRemoteFunction:InvokeServer("TeleportToBossRush")
					if game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.TeleportingUI.Visible == true then break end
				end

				if SaveSettings["Farm"]["Auto Afk & Raids"] then
					if game.PlaceId == 6938803436 or game.PlaceId == 7274690025 then
						if CheckMap() ~= "AFK Room" and game.PlaceId ~= 6990129309 and not CheckRaidsOpen then
							game:GetService("TeleportService"):Teleport(6990131029, game:GetService("Players").LocalPlayer)
						end
					elseif CheckMap() == "AFK Room" and game.PlaceId == 6990129309 then
						if CheckRaidsOpen and game.PlaceId == 6938803436 then
							MainRemoteFunction:InvokeServer("CreateRoom",
								{
									["Difficulty"] = "Easy",
									["FriendsOnly"] = true,
									["MapName"] = SaveSettings["Setting Map"]["RaidName"],
									["Hardcore"] = false
								}
							)
							MainRemoteFunction:InvokeServer("TeleportPlayers")
						elseif CheckRaidsOpen and game.PlaceId == 6990131029 then
							for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
								for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.AfkGui.CenterUIFrame.Frame.AfkClaim[v])) do
									v.Function()
								end
							end
						end
					end
				end

				if SaveSettings["Farm"]["Infinite Mode Farm"] and StatsModule.returnStat(game:GetService("Players").LocalPlayer, "InfiniteModeReward") == false then
					MainRemoteFunction:InvokeServer("CreateRoom",
						{
							["Difficulty"] = "Infinite",
							["FriendsOnly"] = true,
							["MapName"] = "Infinite Mode",
							["Hardcore"] = false
						}
					)
					MainRemoteFunction:InvokeServer("TeleportPlayers")
					if game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.TeleportingUI.Visible == true then break end
				end
				if SaveSettings["Farm"]["Time Challenge Farm"] then
					MainRemoteFunction:InvokeServer("TeleportToTimeChallenge")
					if game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.TeleportingUI.Visible == true then break end
				end
				if SaveSettings["Farm"]["Raid Challenge Farm"] then
					MainRemoteFunction:InvokeServer("TeleportToRaidChallenge")
					if game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.TeleportingUI.Visible == true then break end
				end
				if SaveSettings["Farm"]["Dimension Farm"] then
					MainRemoteFunction:InvokeServer("CreateRoom",
						{
						["Difficulty"] = SaveSettings["Setting Map"]["Difficulty"],
						["FriendsOnly"] = SaveSettings["Setting Map"]["Friend Allow"],
						["MapName"] = SaveSettings["Setting Map"]["MapName"],
						["Hardcore"] = SaveSettings["Setting Map"]["Hardcore"]
					})
					MainRemoteFunction:InvokeServer("TeleportPlayers")
					if game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.TeleportingUI.Visible == true then break end
				end
			end
			wait()
		end
	end)

	-- Auto SKill
	local waitx= false
	spawn(function()
		while true do
			if SkillRealForMySelf then
				if SaveSettings["Setting"]["1"] then
					if UniversalCenterUIFrame.SlotsHolder:FindFirstChild('Skill' .. tostring(1)) and 
						string.find(UniversalCenterUIFrame.SlotsHolder:FindFirstChild('Skill' .. tostring(1)).SkillName.Text ,"[A-Za-z]") ~= nil
					then
						pcall(function ()
							skilluse(49)
							wait(.1) 
						end)
					end
				end
				if SaveSettings["Setting"]["2"] then
					if UniversalCenterUIFrame.SlotsHolder:FindFirstChild('Skill' .. tostring(2)) and 
					string.find(UniversalCenterUIFrame.SlotsHolder:FindFirstChild('Skill' .. tostring(2)).SkillName.Text,"[A-Za-z]") ~= nil
					then
						pcall(function ()
							skilluse(50)
							wait(.1) 
						end)
					end
				end
				if SaveSettings["Setting"]["3"] then
					if UniversalCenterUIFrame.SlotsHolder:FindFirstChild('Skill' .. tostring(3)) and 
					string.find(UniversalCenterUIFrame.SlotsHolder:FindFirstChild('Skill' .. tostring(3)).SkillName.Text,"[A-Za-z]") ~= nil then
						pcall(function ()
							skilluse(51)
							wait(.1) 
						end)
					end
				end
				if SaveSettings["Setting"]["4"] then
					if UniversalCenterUIFrame.SlotsHolder:FindFirstChild('Skill' .. tostring(4)) and 
					string.find(UniversalCenterUIFrame.SlotsHolder:FindFirstChild('Skill' .. tostring(4)).SkillName.Text,"[A-Za-z]") ~= nil then
						pcall(function ()
							skilluse(52)
							wait(.1) 
						end)
					end
				end
				if SaveSettings["Setting"]["5"] and UniversalCenterUIFrame.SlotsHolder:FindFirstChild('Skill' .. tostring(5)) then
					if UniversalCenterUIFrame.SlotsHolder:FindFirstChild('Skill' .. tostring(5)) and string.find(UniversalCenterUIFrame.SlotsHolder:FindFirstChild('Skill' .. tostring(5)).SkillName.Text,"[A-Za-z]") ~= nil then
						pcall(function ()
							skilluse(53)
							wait(.1) 
						end)
					end
				end
			end
			wait()
		end
	end)
	spawn(function()
		while true do
			if SkillRealForMySelf then
				if SaveSettings["Setting"]["E"] then
					pcall(function ()
						skilluse('E')
						wait(.1) 
					end)
				end
				if SaveSettings["Setting"]["R"] then
					pcall(function ()
						skilluse('R')
						wait(.1) 
					end)
				end
				if SaveSettings["Setting"]["Z"] then
					pcall(function ()
						skilluse('Z')
						wait(.1) 
					end)
				end
				if SaveSettings["Setting"]["X"] then
					pcall(function ()
						skilluse('X')
						wait(.1) 
					end)
				end
			end
			wait()
		end
	end)
	
	-- No Clip
	local function BodyVelocity()
		if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("BodyVelocity") then
			local aC = Instance.new("BodyVelocity")
			aC.Velocity = Vector3.new(0, 0, 0)
			aC.MaxForce = Vector3.new(900000, 900000, 900000)
			aC.P = 9000
			aC.Parent = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		end
	end
	local function Disable_BodyVelocity()
		if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("BodyVelocity") then
			for i, v in pairs(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"):GetChildren()) do
				if v:IsA("BodyVelocity") then
					v:Destroy()
				end
			end
		end
	end
	coroutine.wrap(function()
		setfflag("HumanoidParallelRemoveNoPhysics", "False")
		setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
		game:GetService("RunService").Heartbeat:Connect(function()
			if (game.PlaceId == 6938803436 or game.PlaceId == 7274690025) then else
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
					if SaveSettings["Farm"]["Dimension Farm"] or SaveSettings["Farm"]["Farm Speed Raids"] or SaveSettings["Farm"]['AutoJoinBossRushFree'] or SaveSettings["Farm"]["Raids Farm"] or SaveSettings["Farm"]["Raids Farm"] or SaveSettings["Farm"]["Time Challenge Farm"] or SaveSettings["Farm"]["Infinite Mode Farm"] then
						BodyVelocity()
					else
						Disable_BodyVelocity()
					end 
				end
			end
		end)
	end)()

	-- Auto Retry
	spawn(function() 
		while wait(1) do
			if UniversalCenterUIFrame.RaidResultUI.Visible == true or UniversalCenterUIFrame.ResultUI.Visible == true then
				if UniversalCenterUIFrame.ResultUI.Visible == true then
					if SaveSettings["Setting Map"]["Auto Retry"] then
						if UniversalCenterUIFrame.ResultUI.RetryDungeonButton.Visible == true and CheckMap() ~= 'Infinite Mode' and not NotRetry then
							for i,v in pairs(getconnections(UniversalCenterUIFrame.ResultUI.RetryDungeonButton.MouseButton1Down)) do
								v.Function() 
							end
						end
					end	
					if UniversalCenterUIFrame.ResultUI.TeleportingTimeText.Text == 'Teleporting in 0' then
						DalyKick = DalyKick + 1
						if DalyKick == 15 then
							game.Players.LocalPlayer:Kick()
						end
					end
				end
				if UniversalCenterUIFrame.RaidResultUI.Visible == true then
					if UniversalCenterUIFrame.RaidResultUI.Frame.RaidTeleportingTimeText.Text == 'Teleporting in 0' then
						DalyKick = DalyKick + 1
						if DalyKick == 15 then
							game.Players.LocalPlayer:Kick()
						end
					end
				end
			end
			if DalyKick ~= 0 then
				print(DalyKick)
			end
		end
	end)

	-- Dodge Skill Mobs
	local list = { 
		name = {"telegraph"},
		ping = 90,
		get_ping_cd = false,
	}
	if _G.Rec then _G.Rec:Disconnect() _G.Rec = nil end
	function GetPing()
		spawn(function()
			if not list.get_ping_cd then
				list.get_ping_cd = true
				local PacketSend = tick()
				local Packet = MainRemoteFunction:InvokeServer("CompleteDailyQuest","DailyQuest_DungeonClear")
				repeat task.wait() until Packet
				local Ping = tick() - PacketSend
				list.ping = Ping
				delay(1,function()
					list.get_ping_cd = false
				end)
			end
		end)
		return list.ping
	end
	TouchParts = false
	if CheckMap() ~= "Ichini Raid Mode" then
		_G.Rec = workspace.Folders.Debris.ChildAdded:Connect(function(v)
			if SaveSettings["DodgeMobs"]["DodgeSkill"] and table.find(list.name,v.Name:lower()) and v.Material ~= Enum.Material.Neon and Life then
				if (v.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 60 then
					local op = v.Material
					wait(.4-(GetPing()))
					UseDodgeSkill = false
					local a = v:Clone()
					local side = math.clamp(3,1.5,3)
					local Sizeto = v.Size + Vector3.new(side,100,side)
					a.Size = Vector3.new(0,100,v.Size.Z)
					if v.ClassName == "MeshPart" then
						a.Size = Vector3.new(0,0,100)
						Sizeto = v.Size + Vector3.new(side,side,100)
					end
					game:GetService("TweenService"):Create(a,TweenInfo.new(0.15, Enum.EasingStyle.Linear),{Size = Sizeto}):Play()
					a.Anchored = true
					a.Transparency = 1
					a.CanCollide = true
					a.Name = "DODGEPART"
					a.Parent = v.Parent
					for i1,v1 in pairs(a:GetTouchingParts()) do 
						if v1.Name == "HumanoidRootPart" and (v1.Parent.Name == game:GetService('Players').LocalPlayer.Name or v1.Parent.Name == getclosestMobs().Name) then
							UseSkillDodge = true
							TouchParts = true
						end
					end
					local start = tick()
					wait(0.25)
					UseDodgeSkill = true
					repeat wait() until tick() - start > 999 or not v.Parent
					a:Destroy()
					wait(.2)
					if TouchParts == true then
						UseSkillDodge = false
						TouchParts = false
					end
				end
			end
		end)
	end

	-- Anti Afk
    DalyKick = 0
    local VirtualUser = game:GetService("VirtualUser")
    spawn(function()
        while wait() do
            pcall(function() 
                VirtualUser:CaptureController()
                VirtualUser:SetKeyDown("w",key)
                wait()
                VirtualUser:CaptureController()
                VirtualUser:SetKeyUp("w",key)
                wait(1000)
            end)
        end
    end)

    pcall(function()
        local vu = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:connect(function()
            vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            wait(0.5)
            vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            wait(0.5)
            vu:CaptureController()vu:ClickButton2(Vector2.new())
        end)
    end)

    if game.CoreGui:FindFirstChild("HideUiHoly") then
        game.CoreGui:FindFirstChild("HideUiHoly"):Destroy()
    end
    local ScreenGui = Instance.new("ScreenGui")
    local Toggle = Instance.new("TextButton")

    ScreenGui.Name = "HideUiHoly"
    ScreenGui.Parent = game.CoreGui

    Toggle.Name = "Toggle"
    Toggle.Parent = ScreenGui
    Toggle.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    Toggle.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
    Toggle.Size = UDim2.new(0, 50, 0, 50)
    Toggle.Font = Enum.Font.Code
    Toggle.Text = "Hide Ui"
    Toggle.TextColor3 = Color3.fromRGB(255, 0, 0)
    Toggle.TextScaled = true
    Toggle.MouseButton1Down:connect(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode[string.gsub(SaveSettings["SaveSetting"]['Hide Key'],'Enum.KeyCode.',"")],false,game)
        game:GetService("VirtualInputManager"):SendKeyEvent(false,Enum.KeyCode[string.gsub(SaveSettings["SaveSetting"]['Hide Key'],'Enum.KeyCode.',"")],false,game)
    end)
end
