if not isfolder("HolyShz") then makefolder("HolyShz") end
if not isfile("HolyShz/SaveKey.txt") then 
    writefile("HolyShz/SaveKey.txt", "") SaveKeyCheck = "None"
else
    SaveKeyCheck = readfile("HolyShz/SaveKey.txt")
end

local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")
local ContentProvider = game:GetService("ContentProvider")
local CoreGui = game:GetService("CoreGui")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()

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
        TweenService:Create(Ripple, TweenInfo.new(1.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(-5.5, 0, -15, 0), Size = UDim2.new(0, 110, 0, 32)}):Play()
        wait(0.75)
        TweenService:Create(Ripple, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {ImageTransparency = 1}):Play()
        wait(.75)
        Ripple:Destroy()
    end)
end

local ServiceID, LibType, LibVersion = "holyshz", "roblox", "v2" 
local PandaAuth, authlink
local keyless = false

local function tryLoadURL(url)
    local success, result = pcall(function()
        return loadstring(game:HttpGet(url))()
    end)
    if success and result then
        return result
    else
        return nil
    end
end

PandaAuth = tryLoadURL('https://pandadevelopment.net/servicelib?service='..ServiceID..'&core='..LibType..'&param='..LibVersion)
if not PandaAuth then
    PandaAuth = tryLoadURL('https://pandadevelopment.cloud/servicelib?service='..ServiceID..'&core='..LibType..'&param='..LibVersion)
end
if PandaAuth then
    local success, result = pcall(function()
        return PandaAuth:GetKey(ServiceID)
    end)
    print(result)
    if not success then
        keyless = true
        print("Failed to retrieve AuthLink. PandaAuth Error, Holyshz is Keyless!!")
    end
else
    keyless = true
    print("PandaAuth Error, Holyshz is Keyless!!")
end

if keyless then
    KeySuccess = true
else
    KeySuccess = false
    if PandaAuth:ValidateKey(ServiceID, SaveKeyCheck) then
        KeySuccess = true
    else
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
        local TextLabel_1 = Instance.new("TextLabel")
        local UICorner_4 = Instance.new("UICorner")
        local ImageButton = Instance.new("ImageButton")
        local UICorner_5 = Instance.new("UICorner")

        local TextButton1 = Instance.new("TextButton")
        local UICorner_1 = Instance.new("UICorner")
        local UIGradient1 = Instance.new("UIGradient")
        local UIGradient_1 = Instance.new("UIGradient")

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
        TextButton.Position = UDim2.new(0.05, 0, 0.751999974, 0)
        TextButton.Size = UDim2.new(0, 113, 0, 25)
        TextButton.ClipsDescendants = true
        TextButton.Font = Enum.Font.SourceSansBold
        TextButton.Text = "Copy Link Key"
        TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton.TextSize = 16.000
        TextButton.TextWrapped = true

        UICorner_2.CornerRadius = UDim.new(0, 6)
        UICorner_2.Parent = TextButton

        UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 97, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(96, 239, 255))}
        UIGradient.Parent = TextButton

        UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 97, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(96, 239, 255))}
        UIGradient_2.Parent = TextButton

        TextButton_2.Parent = Main
        TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_2.BorderSizePixel = 0
        TextButton_2.Position = UDim2.new(0.6, 0, 0.751999974, 0)
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
        TextBox.ClipsDescendants = true

        UICorner_4.CornerRadius = UDim.new(0, 6)
        UICorner_4.Parent = TextBox

        TextLabel_1.Parent = Main
        TextLabel_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel_1.BackgroundTransparency = 1.000
        TextLabel_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel_1.BorderSizePixel = 0
        TextLabel_1.Position = UDim2.new(0.0285714287, 0, 0.416000009, 0)
        TextLabel_1.Size = UDim2.new(0, 295, 0, 35)
        TextLabel_1.Font = Enum.Font.SourceSansBold
        TextLabel_1.RichText = true
        TextLabel_1.Text = ''
        TextLabel_1.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel_1.TextSize = 16.000
        TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left


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

        TextButton.MouseButton1Down:Connect(function()
            RippleEffect(TextButton)
            TextButton.Text = "Copy Link Success"
            setclipboard(PandaAuth:GetKey(ServiceID))
            delay(.5,function()
                TextButton.Text = "Copy Link Key"
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

        ImageButton.MouseButton1Click:Connect(function()
            if PandaAuth:ValidateKey(ServiceID, TextBox.Text) then
                TextBox.Visible = false
                if not isfile("HolyShz/SaveKey.txt") then
                    writefile("HolyShz/SaveKey.txt", TextBox.Text)
                else
                    writefile("HolyShz/SaveKey.txt", TextBox.Text)
                end
                TextLabel_1.Text = "Correct key"
                wait(.75)
                KeySuccess = true
            else
                TextBox.Visible = false
                TextLabel_1.Text = "Invalid key"
                wait(.75)
                TextLabel_1.Text = ""
                TextBox.Visible = true
                KeySuccess = falses
            end
        end)
    end
end

if _G.NoClip then _G.NoClip:Disconnect() _G.NoClip = nil end
while wait() do if KeySuccess then break end end
if game.CoreGui:FindFirstChild("KeySystemGui") then game.CoreGui:FindFirstChild("KeySystemGui"):Destroy() end

    ------------------------------------------------------ [[ Anime Last Stand ]] ------------------------------------------------------

    local PlaceId_ALS = {12900046592,14368918515,12886143095,14368918515}
    if table.find(PlaceId_ALS,game.PlaceId) then

    repeat wait() until game:IsLoaded()
    if not game:IsLoaded() then game.Loaded:Wait() end
    game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")


    ------------------------------------------------------ [[ Save Function ]] ------------------------------------------------------
    local SaveSettings = {
        ["Main"] = {
            ['Select Map'] = "nil",
            ['Select Act'] = 1,
            ['Select Mode'] = "Story",
            ['Select Difficulty'] = "Normal",
            ['Friends Only'] = false,
            ['Auto Start'] = false,
            ["Delay [Start,Retry,Leave]"] = 3,

            ['Select Challenge Map'] = {"Planet Nemak"},
            ['Select Challenge'] = {"Barebones"},

            ['Select Raids Map2'] = "Marines Fort",
            ['Select Raids Act'] = 1,

            ['Auto Skip Loading'] = false,
            ['Auto TP to Zone'] = false,
            ['Auto Join Story'] = false,
            ['Auto Retry'] = false,
            ['Auto Next'] = false,
            ['Auto Leave'] = false,
            ['Auto Story'] = false,

            ['Auto Redeem Daily'] = false,
        },
        ["Portals"] = {
            ['Select Tier Portals'] = {"Tier 1"},
            ['Select Map Portals'] = {"Planet Nemak"},
            ['Select Maps Act'] = {},
            ['Select Challenge Portals'] = {"Barebones"},
            ['Auto Start Portals'] = false,
        },
        ["Gacha"] = {
            ['Select Banner'] = 'Banner 1',
            ['Select Method'] = "1",
            ['Auto Gacha'] = false,
        },
        ['Macro'] = {
            ['Macro Select'] = "None",
            ['Play Macro'] = false,

            ['Macro Map'] = {},
        },
        ["Notifier"] = {
            ["Webhook Url"] = "nil",
            ['Select Item'] = {},
            ["Send All Item"] = false,
            ['Select Unit'] = {},
            ["Send Unit Kills"] = false,
            ["Send After End Game"] = false,
        },
        ["SaveSetting"] = {
            ['Select Time [sec]'] = 600,
            ['Auto Rejoin [Time]'] = false,
            ['Auto Rejoin [Time][Lobby]'] = false,
            ['Select Time When Error prompt [sec]'] = 5,
            ['Auto Rejoin When Error prompt [Time]'] = false,
            ['FPS Value'] = 15,
            ['FPS Cap'] = false,
            ['Low CPU Mode'] = false,

            ['Hide Key'] = "Enum.KeyCode.LeftControl"
        }
    }
    function Load()
        if readfile and writefile and isfile and isfolder then
            if not isfolder("HolyShz") then
                makefolder("HolyShz")
            end
            if not isfolder("HolyShz/AnimeLastStand") then
                makefolder("HolyShz/AnimeLastStand")
            end
            if not isfolder("HolyShz/AnimeLastStand/data") then
                makefolder("HolyShz/AnimeLastStand/data")
            end
            if not isfolder("HolyShz/AnimeLastStand/Macro") then
                makefolder("HolyShz/AnimeLastStand/Macro")
            end
            if not isfile("HolyShz/AnimeLastStand/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json") then
                writefile("HolyShz/AnimeLastStand/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json", game:GetService("HttpService"):JSONEncode(SaveSettings))
            else
                local Decode = game:GetService("HttpService"):JSONDecode(readfile("HolyShz/AnimeLastStand/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json"))
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
            if isfile("HolyShz/AnimeLastStand/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json") == false then
                Load()
            else
                local Decode = game:GetService("HttpService"):JSONDecode(readfile("HolyShz/AnimeLastStand/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json"))
                local Array = {}
                for i,v in pairs(SaveSettings) do
                    Array[i] = v
                end
                writefile("HolyShz/AnimeLastStand/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json", game:GetService("HttpService"):JSONEncode(Array))
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
    local GamePlace = game.PlaceId

    local LocalPlayer = Players.LocalPlayer
    local Character = LocalPlayer.Character or LocalPlayer.Charactervded:Wait()
    local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    local Humanoid = Character:WaitForChild("Humanoid")

    local HumanoidRootPart = Character:WaitForChild('HumanoidRootPart')
    local Humanoid = Character:WaitForChild("Humanoid")
    LocalPlayer.CharacterAdded:Connect(function(character)
        Character = character 
        HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
        Humanoid = Character:WaitForChild("Humanoid")
    end)

    local TowerInfo = require(game:GetService("ReplicatedStorage").Modules.TowerInfo)
    local ItemsInfo = require(game:GetService("ReplicatedStorage").Modules.ItemNames)
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
    local function split(str, sep)
        local result = {}
        local regex = ("([^%s]+)"):format(sep)
        for each in str:gmatch(regex) do
        table.insert(result, each)
        end
        return result
    end
    function FormatTime(seconds)
        local hours = math.floor(seconds / 3600)
        local minutes = math.floor((seconds % 3600) / 60)
        local secondsRemaining = seconds % 60
    
        local formattedTime = string.format("%02d:%02d:%02d", hours, minutes, secondsRemaining)
        return formattedTime
    end

    --TP_low
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    local S_T = game:GetService("TeleportService")
    local S_H = game:GetService("HttpService")

    local File = pcall(function()
        AllIDs = S_H:JSONDecode(readfile("server-hop-temp.json"))
    end)
    if not File then
        table.insert(AllIDs, actualHour)
        pcall(function()
            writefile("server-hop-temp.json", S_H:JSONEncode(AllIDs))
        end)

    end
    local function TPReturner(placeId)
        local Site;
        if foundAnything == "" then
            Site = S_H:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. placeId .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = S_H:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. placeId .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                delfile("server-hop-temp.json")
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        writefile("server-hop-temp.json", S_H:JSONEncode(AllIDs))
                        wait()
                        S_T:TeleportToPlaceInstance(placeId, ID, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end
    function Teleport(placeId)
        while wait() do
            pcall(function()
                TPReturner(placeId)
                if foundAnything ~= "" then
                    TPReturner(placeId)
                end
            end)
        end
    end

    ------------------------------------------------------ [[ Function ]] ----------------------------------------

    function StringToCFrame(params)
        return CFrame.new(unpack(game:GetService("HttpService"):JSONDecode("["..params.."]")))
    end
    function Timelapse()
        return workspace.DistributedGameTime
    end

    -------------------------------------- [[ Save Value ]] ------------------------------------------------------
    
    --Reroll
    local args = { [1] = game:GetService("Players").LocalPlayer }
    PlayerData3 = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer(unpack(args))
    if game.Players.LocalPlayer:FindFirstChild("Level") then
        RerollOld = PlayerData3.Rerolls
    end
    --Raids Token
    local args = { [1] = game:GetService("Players").LocalPlayer }
    PlayerData3 = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer(unpack(args))
    if game.Players.LocalPlayer:FindFirstChild("Level") then
        RaidtokenOld = PlayerData3.RaidTokens
    end

    ------------------------------------------------------ [[ Ui ]] ------------------------------------------------------
    local Venyx = loadstring(game:HttpGet("https://raw.githubusercontent.com/NoNiName/Library/main/UILibrary/HolyUiV3"))()

    local UI = Venyx.new({
        title = "Anime Last Stand",
        Version = "Version 1.0.5.3"
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
    local MainCreateTap = UI:addPage({
        title = "Main",
        icon = 7539983773
    })
    local MainSettingChallenge = MainCreateTap:addSection({
        title = "Main - Challenge Setting"
    })
    local MainSettingRaids = MainCreateTap:addSection({
        title = "Main - Raids Setting"
    })
    local MainSettingPage = MainCreateTap:addSection({
        title = "Main - Setting"
    })
    local MainPage = MainCreateTap:addSection({
        title = "Main - Play"
    })
    local DailyPage = MainCreateTap:addSection({
        title = "Daily"
    })
    
    local PortalsCreateTap = UI:addPage({
        title = "• Portals",
        icon = 1
    })
    local Portals_Setting = PortalsCreateTap:addSection({
        title = "Portals - Setting"
    })
    local Portals_Playing = PortalsCreateTap:addSection({
        title = "Portals - Playing"
    })

    -- Gacha
    local MainGachaTap = UI:addPage({
        title = "Auto Summon",
        icon = 7939410236
    })
    local GachaPage = MainGachaTap:addSection({
        title = "Auto Summon"
    })
    local DailyPage = MainGachaTap:addSection({
        title = "Daily"
    })
    -- Macro
    local MainCreateTap = UI:addPage({
        title = "Macro",
        icon = 10734943448
    })
    local Macro_Setting_Page = MainCreateTap:addSection({
        title = "Macro - Setting"
    })
    local Macro_Record_Page = MainCreateTap:addSection({
        title = "Macro - Record"
    })
    local Macro_Play_Page = MainCreateTap:addSection({
        title = "Macro - Play"
    })
    -- Macro Maps
    local MacroMapsCreateTap = UI:addPage({
        title = "Macro Maps",
        icon = 10723427494
    })
    -- Macro Import
    local ImportCreateTap = UI:addPage({
        title = "Import",
        icon = 10723415205
    })
    local MacroImport = ImportCreateTap:addSection({
        title = "Macro - Import Macro"
    })
    -- ShowUnit
    --_G.ShowUnit = true
    if _G.ShowUnit then
        local MainGachaTap = UI:addPage({
            title = "ShowUnit",
            icon = 7539983773
        })
        local ShowUnitPage = MainGachaTap:addSection({
            title = "Show Unit"
        })
        ------------------------------------------------------ [[ ShowUnit ]] ------------------------------------------------------
        UnitsName = {}
        local TowerInfo = require(game:GetService("ReplicatedStorage").Modules.TowerInfo)
        local UnitsStatus = ShowUnitPage:addLabel({title = "Unit : N/S [ Upgate : 0/0 ]\n Damage At Upgate Max : 999990\nAll Cost Upgate : 999990"})
        for i,v in pairs(game:GetService("ReplicatedStorage").Units:GetChildren()) do
            if v:IsA("Model") then
                table.insert(UnitsName,v.Name)
            end
        end
        SelectUnitUnitsName = ""
        ShowUnitPage:addDropdown({
            title = "Select Unit",
            list = UnitsName, 
            default = "",
            callback = function(v)
                SelectUnitUnitsName = v
            end;
        })
        ShowUnitPage:addButton({
            title = "Load Model Units",
            callback = function()
                if workspace:FindFirstChild('UnitsCloneNAA') then workspace:FindFirstChild('UnitsCloneNAA'):Destroy() end
                if game:GetService("ReplicatedStorage").Units:FindFirstChild(SelectUnitUnitsName) then
                    UnitsClone = game:GetService("ReplicatedStorage").Units:FindFirstChild(SelectUnitUnitsName):Clone()
                    UnitsClone.Name = "UnitsCloneNAA"
                    UnitsClone.Parent = game.workspace
                    UnitsClone:SetPrimaryPartCFrame(HumanoidRootPart.CFrame * CFrame.new(0, 5, 0))

                    local Cost,Damage,Upgate = 0,0,0
                    table.foreach(TowerInfo[SelectUnitUnitsName],function(j,k)
                        if typeof(k) == "table" then
                            Cost = Cost + k['Cost']
                            if tonumber(j) >= Upgate then
                                Upgate = tonumber(j)
                                Damage = k['Damage']
                            end
                        end
                    end)

                    Rarity = game:GetService("ReplicatedStorage").Units:FindFirstChild(SelectUnitUnitsName) and game:GetService("ReplicatedStorage").Units[SelectUnitUnitsName].Rarity.Value or "UnDefined"
                    UnitsStatus.Options:ChangeText("Unit : ".. SelectUnitUnitsName .." [ Upgate : 0/".. Upgate .." ] " .. Rarity .. "\n Damage At Upgate Max : ".. comma_value(Damage) .."\nAll Cost Upgate And PlaceTower : ".. comma_value(Cost))
                end
            end,
        })
    end
    -- Webhook
    local WebhookCreateTap = UI:addPage({
        title = "Webhook",
        icon = 7539983773
    })
    local WebhookPage = WebhookCreateTap:addSection({
        title = "Webhook"
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
    ------------------------------------------------------ [[ Main Tap ]] ------------------------------------------------------\
    MapData = require(game:GetService("ReplicatedStorage").Modules.MapData)
    local TableMap = {}
    table.foreach(MapData,function(i,v)
        if v['HasAct'] then
            table.insert(TableMap,tostring(i))

            if not SaveSettings['Macro']['Macro Map']["[ Story ] " .. tostring(i)] then
                SaveSettings['Macro']['Macro Map']["[ Story ] " .. tostring(i)] = "None"
            end

            if not SaveSettings['Macro']['Macro Map']["[ Challenge ] " .. tostring(i)] then
                SaveSettings['Macro']['Macro Map']["[ Challenge ] " .. tostring(i)] = "None"
            end

            if not SaveSettings['Macro']['Macro Map']["[ Infinite ] " .. tostring(i)] then
                SaveSettings['Macro']['Macro Map']["[ Infinite ] " .. tostring(i)] = "None"
            end

            if not SaveSettings['Macro']['Macro Map']["[ Portal ] " .. tostring(i)] then
                SaveSettings['Macro']['Macro Map']["[ Portal ] " .. tostring(i)] = "None"
            end

            if not SaveSettings['Macro']['Macro Map']["[ Raids ] " .. tostring(i)] then
                SaveSettings['Macro']['Macro Map']["[ Raids ] " .. tostring(i)] = "None"
            end
            Save()
        end
        if table.find(v['Type'],"Portal") then
            if not SaveSettings['Macro']['Macro Map']["[ Portal ] " .. tostring(i)] then
                SaveSettings['Macro']['Macro Map']["[ Portal ] " .. tostring(i)] = "None"
            end
            Save()
        end
    end)


    MainSettingPage:addDropdown({
        title = "Select Mode",
        list = {'Story','Challenge','Raids',"Infinite"}, 
        default = SaveSettings["Main"]['Select Mode'],
        callback = function(v)
            SaveSettings["Main"]['Select Mode'] = v
            Save()
        end;
    })

    MainSettingPage:addDropdown({
        title = "Select Map",
        list = TableMap, 
        default = SaveSettings["Main"]['Select Map'],
        callback = function(v)
            SaveSettings["Main"]['Select Map'] = v
            Save()
        end;
    })

    MainSettingPage:addDropdown({
        title = "Select Act",
        list = {1,2,3,4,5,6}, 
        default = SaveSettings["Main"]['Select Act'],
        callback = function(v)
            SaveSettings["Main"]['Select Act'] = v
            Save()
        end;
    })
    MainSettingPage:addDropdown({
        title = "Select Difficulty",
        list = {"Normal","Nightmare"}, 
        default = SaveSettings["Main"]['Select Difficulty'],
        callback = function(v)
            SaveSettings["Main"]['Select Difficulty'] = v
            Save()
        end;
    })
    MainSettingPage:addToggle({
        title = "Friends Only",
        default  = SaveSettings["Main"]['Friends Only'] ,
        callback = function(v)
            SaveSettings["Main"]['Friends Only'] = v
            Save()
        end ,
    })
    MainSettingPage:addToggle({
        title = "Auto Start",
        default  = SaveSettings["Main"]['Auto Start'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Start'] = v
            Save()
        end ,
    })
    MainSettingPage:addDropdown({
        title = "Delay Dropdown [Start,Retry,Leave]",
        list = {0,1,2,3,4,5,6,7,8,9,10}, 
        default = SaveSettings["Main"]["Delay [Start,Retry,Leave]"],
        callback = function(v)
            SaveSettings["Main"]["Delay [Start,Retry,Leave]"] = v
            Save()
        end;
    })
    MainSettingPage:addSlider({
        title = "Delay Slide [Start,Retry,Leave]",
        default = SaveSettings["Main"]["Delay [Start,Retry,Leave]"],
        min = 0,
        max = 10,
        callback = function(value)
            SaveSettings["Main"]["Delay [Start,Retry,Leave]"] = value
            Save()
        end
    })


    --Setting_Challenge
    Text_Challenge_Time = MainSettingChallenge:addLabel({title = 'Now Map : N/A \n Now Challenge : N/A '})

    ChallengeData = require(game:GetService("ReplicatedStorage").Modules.ChallengeInfo)
    local TableChallenge = {}
    table.foreach(ChallengeData,function(i,v)
        if v['ChallengeName'] then
            table.insert(TableChallenge,tostring(i))
        end
    end)

    MainSettingChallenge:addMulitDropdown({
        title = "Select Challenge Map",
        list = TableMap, 
        default = SaveSettings["Main"]['Select Challenge Map'],
        callback = function(v)
            SaveSettings["Main"]['Select Challenge Map'] = v
            Save()
        end;
    })
    MainSettingChallenge:addMulitDropdown({
        title = "Select Challenge",
        list = TableChallenge, 
        default = SaveSettings["Main"]['Select Challenge'],
        callback = function(v)
            SaveSettings["Main"]['Select Challenge'] = v
            Save()
        end;
    })
    
    --Setting_Raids
    Text_Raids_Time = MainSettingRaids:addLabel({title = 'Today Playing Raid Act 6 : N/A time'})

    MapDataRaid = require(game:GetService("ReplicatedStorage").Modules.MapData)
    local TableMapRaids = {}
    for i,v in pairs(MapDataRaid) do
        if v['HasAct'] and table.find(v['Type'],"Raids")  then
            table.insert(TableMapRaids,tostring(i))
        end
    end


    MainSettingRaids:addDropdown({
        title = "Select Raids Map",
        list = TableMapRaids, 
        default = SaveSettings["Main"]['Select Raids Map2'],
        callback = function(v)
            SaveSettings["Main"]['Select Raids Map2'] = v
            Save()
        end;
    })

    MainSettingRaids:addDropdown({
        title = "Select Raids Act",
        list = {1,2,3,4,5,6}, 
        default = SaveSettings["Main"]['Select Raids Act'],
        callback = function(v)
            SaveSettings["Main"]['Select Raids Act'] = v
            Save()
        end;
    })

    --Main_Play
    MainPage:addToggle({
        title = "Auto Skip Loading",
        default  = SaveSettings["Main"]['Auto Skip Loading'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Skip Loading'] = v
            Save()
        end ,
    })
    MainPage:addToggle({
        title = "Auto TP to Zone(Place Unit)",
        default  = SaveSettings["SaveSetting"]['Auto TP to Zone'],
        callback = function(v)
            SaveSettings["SaveSetting"]['Auto TP to Zone'] = v
            Save()
        end ,
    })
    MainPage:addToggle({
        title = "Auto Join Room [Story,Inf,Raids,Challenge]",
        default  = SaveSettings["Main"]['Auto Join Story'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Join Story'] = v
            Save()
        end ,
    })
    MainPage:addToggle({
        title = "Auto Leave",
        default  = SaveSettings["Main"]['Auto Leave'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Leave'] = v
            Save()
        end ,
    })

    MainPage:addToggle({
        title = "Auto Retry",
        default  = SaveSettings["Main"]['Auto Retry'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Retry'] = v
            Save()
        end ,
    })

    MainPage:addToggle({
        title = "Auto Next",
        default  = SaveSettings["Main"]['Auto Next'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Next'] = v
            Save()
        end ,
    })

    DailyPage:addToggle({
        title = "Auto Redeem Daily",
        default  = SaveSettings["Main"]['Auto Redeem Daily'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Redeem Daily'] = v
            Save()
        end ,
    })
    TableCode = {
        'Sub2BmGTormenter117onYT',
        'SorryForDelay',
        'RELEASE',
        'TyFor2kFav',
        'FinalDelay',
        '3219872',
        'FreeNami',
        'Async',
        'Shock',
        'here',
        'Sub2CodeNex77k',
        'NEELSTV',
        'Sub2Blamspot524k',
        'YammoRework',
        'TyFor10kFavREAL',
        'TyFor1mVisitsPart2',
        'GoalReached',
        'BUFF',
        'TyFor10kFavREAL',
        'TyFor1mVisitsPart1',
        'YammoRework',
        'Sub2Blamspot524k',
        'SorryForDelay',
        'RELEASE',
        'FinalDelay',
        'Sub2HotSauceHan',
        'ToadBoi120k',
        'Shutdown',
        'BlamsSecret1MillionUniquePlayerCode',
        'Fixes',
        'Update1HYPE!',
        'TyFor25mVisitsOMG!',
        '200kMembersINSANE!',
        '50ThousandsFavorites!!!',
        'RELEASE',
        'FinalDelay',
        'SorryForDelay',
        'Sub2Blamspot524k',
        'YammoRework',
        'TyFor1mVisitsPart1',
        'TyFor10kFavREAL',
        'BUFF',
        'TyFor1mVisitsPart2',
        'GoalReached',
        'D1SGUISED',
        'Sub2KingLuffy',
        'BlamTopSecretCodeWontWorkIfNotSubbed',
        'Sub2HotSauceHan',
        'ToadBoi120k',
        'Shutdown',
        'BlamsSecret1MillionUniquePlayerCode',
        'Fixes',
        'FminusMicSecretCodeMustBeSubbedToWorkLOL',
        'BlamsOP5MillionVisitsRerollCodeMustBeSubbedToWorkLOL',
        'Update1TrailerHYPE',
        'UPDATE1HYPE!',
        'TyFor25mVisitsOMG!',
        '200kMembersINSANE!',
        '50ThousandsFavorites!!!',
        'BlamSecretValentinesCode',
        'ULTIMATEGOJO',
        'BlamSpoyYTSecretUnitCodeMustBeSubbedToWork',
        'BigUpdateWednesday',
        'BlamsSecretMiniUpdateMustBeSubbedToWork',
        'evolvethis',
        'ALSUpdate2YutaHype',
        'Real',
        'PORTALS',
        'SorryForDelayAndMaintenance',
        'PortalBugFixes',
        'TORMENTER10KSUBSLETSGOOOOOOO',
        'BackupMinatoMustBeSubbedtoTorToWork',
        'Blams100kFavoritesCode',
        'BlamSpotsOP75MillVisitCodeMustBeSubbedToWork',
        'shockssuperspecialultrasecretcodebecauseineedsubscribersmustbesubscribedtowork',
        'Update3MiniHypeCode',
        'Update3',
        'Glitched',
        'Sub2ZerozKinger1MilSubs',
        'Sub2Noclypso176k',
        'Sub2MayyjeeeOrCodeWontWork',
        'BLAMSPOTBUGFIXCODEMUSTBESUBBEDTOWORK!',
        'ONEHUNDREDMILLION',
        'GrindRerollsFromChallenges!',
        'BlamsQuestBugCodeMustBeSubbedToWork',
        'shockssuperspecialultrasecretcodebecauseineedsubscribersmustbesubscribedtowork',
        '400kMembersLETSGOO',
        '500kMembersLETSGOO',
        '2xDropsUpdateSOONHype!',
        'EnjoyTheQuestReset!',
        '400kDiscordMembers',
        '2xMeshChance',
        'Update4HYPE!',
        'FUSIONEVOLUTION',
        'UPDATE 4',
        'Goodbye Mash',
        'TheGoat',
        'GlitchFix',
        'SubToBlamSpotonYoutubeForShenron',
        'ShenronFixImSorry',
        'HappyEaster',
        'FollowJULLGRINDSonTwitch',
        'Sub2NagBloxonYT',
        'Sub2SebbyastianonYT',
        'Sub2UniversalPantheronYT',
        'TorSavedALS',
        'Update5!',
        'Update 5',
        'LongMaitenanceLimitedCode',
        'CongratsMrBeast1Billion',
        'CongratsMrBeast1Billion2'

    }
    DailyPage:addButton({
        title = "Redeem All Code",
        callback = function()
            for i,v in pairs(TableCode) do
                local args = { [1] = v }
                game:GetService("ReplicatedStorage").Remotes.ClaimCode:InvokeServer(unpack(args))
                wait(0.5)
            end
        end,
    })

    DailyPage:addLabel({title = "If have a new Code \n Wait Script Update for Redeem it"})
    ------------------------------------------------------ [[ Portals Tap ]] ------------------------------------------------------
    --Tier Portals
    PortalsData = require(game:GetService("ReplicatedStorage").Modules.ItemNames)
    local TablePortals = {}
    table.foreach(PortalsData,function(i,v)
        if string.find(v,"Portal") then
            table.insert(TablePortals,tostring(i))
        end
    end)

    Portals_Setting:addMulitDropdown({
        title = "Select Tier Portals",
        list = TablePortals, 
        default = SaveSettings["Portals"]['Select Tier Portals'],
        callback = function(v)
            SaveSettings["Portals"]['Select Tier Portals'] = v
            Save()
        end;
    })

    MapData2 = require(game:GetService("ReplicatedStorage").Modules.MapData)
    local TableMap2 = {}
    table.foreach(MapData2,function(i,v)
        if v['HasAct'] then
            table.insert(TableMap2,tostring(i))
        end
    end)

    Portals_Setting:addMulitDropdown({
        title = "Select Map Portals",
        list = TableMap2, 
        default = SaveSettings["Portals"]['Select Map Portals'],
        callback = function(v)
            SaveSettings["Portals"]['Select Map Portals'] = v
            Save()
        end;
    })

    Portals_Setting:addMulitDropdown({
        title = "Select Maps Act",
        list = {1,2,3,4,5,6},  
        default = SaveSettings["Portals"]['Select Maps Act'],
        callback = function(v)
            SaveSettings["Portals"]['Select Maps Act'] = v
            Save()
        end;
    })

    ChallengeData2 = require(game:GetService("ReplicatedStorage").Modules.ChallengeInfo)
    local TableChallenge2 = {}
    table.foreach(ChallengeData2,function(i,v)
        if v['ChallengeName'] then
            table.insert(TableChallenge2,tostring(i))
        end
    end)

    Portals_Setting:addMulitDropdown({
        title = "Select Challenge",
        list = TableChallenge2, 
        default = SaveSettings["Portals"]['Select Challenge Portals'],
        callback = function(v)
            SaveSettings["Portals"]['Select Challenge Portals'] = v
            Save()
        end;
    })

    --Portals_Playing
    Portals_Playing:addToggle({
        title = "Auto Start Portals",
        default  = SaveSettings["Portals"]['Auto Start Portals'] ,
        callback = function(v)
            SaveSettings["Portals"]['Auto Start Portals'] = v
            Save()
        end ,
    })
    spawn(function()
        while wait() do
            if SaveSettings["Portals"]['Auto Start Portals'] and game.PlaceId == 12886143095 then
                PortalsData = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer()
                for i,v in pairs(PortalsData['PortalData']) do
                    if table.find(SaveSettings["Portals"]['Select Tier Portals'],v['PortalName']) and table.find(SaveSettings["Portals"]['Select Map Portals'],v['PortalData']['Map']) and table.find(SaveSettings["Portals"]['Select Maps Act'],tostring(v['PortalData']['Act'])) and table.find(SaveSettings["Portals"]['Select Challenge Portals'],v['PortalData']['Challenges']) then
                        wait(.5)
                        local args = {
                            [1] = v['PortalID']
                        }
                        
                        game:GetService("ReplicatedStorage").Remotes.SpawnPortal:InvokeServer(unpack(args))
                        repeat wait() until not SaveSettings["Portals"]['Auto Start Portals']
                        break
                    end
                end
            end
        end
    end)
    ------------------------------------------------------ [[ Gacha Tap ]] ------------------------------------------------------
    Text_Emeralds = GachaPage:addLabel({title = 'Emerald Counts : N/A \n Gold Counts : N/A \n Reroll : N/A | Raid : N/A ' })
    GachaPage:addDropdown({
        title = "Select Banner",
        list = {'Banner 1','Banner 2'}, 
        default = SaveSettings["Gacha"]['Select Banner'],
        callback = function(v)
            SaveSettings["Gacha"]['Select Banner'] = v
            Save()
        end;
    })
    GachaPage:addDropdown({
        title = "Select Method",
        list = {'1','10'}, 
        default = SaveSettings["Gacha"]['Select Method'],
        callback = function(v)
            SaveSettings["Gacha"]['Select Method'] = v
            Save()
        end;
    })
    GachaPage:addToggle({
        title = "Auto Gacha",
        default  = SaveSettings["Gacha"]['Auto Gacha'] ,
        callback = function(v)
            SaveSettings["Gacha"]['Auto Gacha'] = v
            Save()
        end ,
    })

    spawn(function()
        while wait() do
            if SaveSettings["Gacha"]['Auto Gacha'] then
                local string_1 = SaveSettings["Gacha"]['Select Method'];
                local string_2 = SaveSettings["Gacha"]['Select Banner'] == 'Banner 1' and "1" or "2";
                local Target = game:GetService("ReplicatedStorage").Remotes.Summon;
                Target:InvokeServer(string_1, string_2);
                wait(.1)
            end
        end
    end)

    ------------------------------------------------------ [[ Macro ]] ------------------------------------------------------
    function CreateMarocList()
        Select_Macro_Profile = {}
        for i,v in pairs(listfiles("HolyShz/AnimeLastStand/Macro")) do
            if string.find(v,[[\]]) then
                table.insert(Select_Macro_Profile, tostring(v:split([[\]])[2]:gsub(".json", "")))
            else
                table.insert(Select_Macro_Profile, tostring(v:split([[/]])[4]:gsub(".json", "")))
            end
        end
        return Select_Macro_Profile
    end
    if game.PlaceId == 12900046592 then
        MapDataInfo = game:GetService("ReplicatedStorage").Remotes.GetTeleportData:InvokeServer()
        for i,Name in pairs(SaveSettings['Macro']['Macro Map']) do
            if ('[ Challenge ] ' .. MapDataInfo.MapName) == tostring(i) and SaveSettings['Macro']['Macro Map'][tostring(i)] ~= "None" then
                SaveSettings['Macro']['Macro Select'] = SaveSettings['Macro']['Macro Map'][tostring(i)]
                Save()
            elseif ('[ Raids ] ' .. MapDataInfo.MapName) == tostring(i) and SaveSettings['Macro']['Macro Map'][tostring(i)] ~= "None" then
                SaveSettings['Macro']['Macro Select'] = SaveSettings['Macro']['Macro Map'][tostring(i)]
                Save()
            elseif ('[ Infinite ] ' .. MapDataInfo.MapName) == tostring(i) and SaveSettings['Macro']['Macro Map'][tostring(i)] ~= "None" then
                SaveSettings['Macro']['Macro Select'] = SaveSettings['Macro']['Macro Map'][tostring(i)]
                Save()
            elseif ('[ Portal ] ' .. MapDataInfo.MapName) == tostring(i) and SaveSettings['Macro']['Macro Map'][tostring(i)] ~= "None" then
                SaveSettings['Macro']['Macro Select'] = SaveSettings['Macro']['Macro Map'][tostring(i)]
                Save()
            elseif ('[ Story ] ' .. MapDataInfo.MapName) == tostring(i) and SaveSettings['Macro']['Macro Map'][tostring(i)] ~= "None" then
                SaveSettings['Macro']['Macro Select'] = SaveSettings['Macro']['Macro Map'][tostring(i)]
                Save()
                
            end
        end
    end 
    local MacroStats = Macro_Setting_Page:addLabel({title = 'Main : N/S'})
    MacroSelect = Macro_Setting_Page:addDropdown({
        title = "Select Macro",
        list = CreateMarocList(), 
        default = SaveSettings['Macro']['Macro Select'],
        callback = function(v)
            SaveSettings['Macro']['Macro Select'] = v
            Save()
        end;
    })
    Macro_Setting_Page:addButton({
        title = "Refresh Macro",
        callback = function()
            MacroSelect.Options:Refresh(CreateMarocList(),SaveSettings['Macro']['Macro Select']) 
        end,
    })
    MacroName = nil
    Macro_Setting_Page:addTextbox({
        title = "Create Macro Profile",
        holderbox = "Macro Name ...",
        default = "",
        callback = function(starts)
            MacroName = starts
        end,
    })
    Macro_Setting_Page:addButton({
        title = "Create Macro File",
        callback = function()
            if typeof(MacroName) ~= nil then
                if not isfile("HolyShz/AnimeLastStand/Macro/" .. tostring(MacroName)..".json") then
                    writefile("HolyShz/AnimeLastStand/Macro/" .. tostring(MacroName)..".json", game:GetService("HttpService"):JSONEncode({}))
                    UI:Notify({
                        title = "Notification",
                        text = "Create Profile : Successful Create Profile"
                    })
                else
                    UI:Notify({
                        title = "Notification",
                        text = "Create Profile : You Already Have This Profile"
                    })
                end
                MacroSelect.Options:Refresh(CreateMarocList(),SaveSettings['Macro']['Macro Select']) 
            end 
        end,
    })
    Macro_Setting_Page:addButton({
        title = "Delete Macro",
        callback = function()
            if isfile("HolyShz/AnimeLastStand/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json") then
                delfile("HolyShz/AnimeLastStand/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json")
            end
            MacroSelect.Options:Refresh(CreateMarocList(),SaveSettings['Macro']['Macro Select']) 
        end,
    })
    -- Record Macro
    getgenv().RecordMacro = {}
    RecordMacroToggle = false
    Macro_Record_Page:addToggle({
        title = "Record Macro",
        default = false ,
        callback = function(v)
            RecordMacroToggle = v
            if game.PlaceId == 12900046592 then
                if RecordMacroToggle and type(SaveSettings['Macro']['Macro Select']) ~= "None" then
                    game:GetService("ReplicatedStorage"):WaitForChild("GameStarted")
                    if not game:GetService("ReplicatedStorage").GameStarted.Value then
                        UI:Notify({
                            title = "Notification",
                            text = "Macro Status : Waiting Wave Start"
                        })
                        repeat wait() until game:GetService("ReplicatedStorage").GameStarted.Value
                    end
                    StartRecordTime = Timelapse()
                    UI:Notify({
                        title = "Notification",
                        text = "Macro Status : Recording to Profile ".. SaveSettings['Macro']['Macro Select']
                    })
                elseif not RecordMacroToggle and type(SaveSettings['Macro']['Macro Select']) ~= "None" and #getgenv().RecordMacro > 0 then
                    table.sort(getgenv().RecordMacro , function(a,b)
                        --return tonumber(a['Time']) < tonumber(b['Time'])
                        return tonumber(a['Index']) < tonumber(b['Index'])
                    end)
                    writefile("HolyShz/AnimeLastStand/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json", game:GetService("HttpService"):JSONEncode(getgenv().RecordMacro))
                    UI:Notify({
                        title = "Notification",
                        text = "Macro Status : Saved to Profile ".. SaveSettings['Macro']['Macro Select']
                    })
                end
            end
        end ,
    })
    NumberPlace,Index,TimeInGame = 1,1,0
    if game.PlaceId == 12900046592 then
        -- game:GetService("Workspace").Towers["Goku (SSJ)"].Ability
        workspace.Towers.ChildAdded:Connect(function(v)
            if v:WaitForChild("Owner") and v:WaitForChild("Owner").Value.Name == LocalPlayer.Name then
                if RecordMacroToggle then
                    MacroStats.Options:ChangeText("Status: Record Marcro [ PlaceTower ]\nTower : " .. v.Name .. "\n Wave : " .. game:GetService("ReplicatedStorage").Wave.Value)
                    local DataTable = {
                        ['Time'] = StartRecordTime == nil and 0 or Timelapse() - StartRecordTime,
                        ['Index'] = Index,
                        ["Method_Data"] = {
                            ["Method"] = tostring('PlaceTower'),
                            ["Data"] = {
                                ['Wave'] = game:GetService("ReplicatedStorage").Wave.Value,
                                ["UnitPlace"] = tostring(v.Name),
                                ["CFrame"] = tostring(v:GetModelCFrame())
                            }
                        }
                    }
                    table.insert(getgenv().RecordMacro, DataTable)
                    table.sort(getgenv().RecordMacro , function(a,b)
                        --return tonumber(a['Time']) < tonumber(b['Time'])
                        return tonumber(a['Index']) < tonumber(b['Index'])
                    end)
                    writefile("HolyShz/AnimeLastStand/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json", game:GetService("HttpService"):JSONEncode(getgenv().RecordMacro))

                    Index = Index + 1

                    v:WaitForChild('Targeting').Changed:Connect(function(NewValue)
                        MacroStats.Options:ChangeText("Status: Record Marcro [ Targeting ]\nTower : " .. v.Name .. "\n Wave : " .. game:GetService("ReplicatedStorage").Wave.Value .. " | Target Change : " .. v.Targeting.Value)
                        local DataTable = {
                            ['Time'] = StartRecordTime == nil and 0 or Timelapse() - StartRecordTime,
                            ['Index'] = Index,
                            ["Method_Data"] = {
                                ["Method"] = tostring('Targeting'),
                                ["Data"] = {
                                    ['Wave'] = game:GetService("ReplicatedStorage").Wave.Value,
                                    ["UnitPlace"] = v.NumberTower.Value,
                                    ["Targeting"] = v.Targeting.Value
                                }
                            }
                        }
                        table.insert(getgenv().RecordMacro, DataTable)
                        table.sort(getgenv().RecordMacro , function(a,b)
                            --return tonumber(a['Time']) < tonumber(b['Time'])
                            return tonumber(a['Index']) < tonumber(b['Index'])
                        end)
                        writefile("HolyShz/AnimeLastStand/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json", game:GetService("HttpService"):JSONEncode(getgenv().RecordMacro))
                        
                        Index = Index + 1
                    end)

                    v:WaitForChild('Upgrade').Changed:Connect(function(NewValue) 
                        if game:GetService("ReplicatedStorage").Challenge.Value == "High Cost" then
                            MacroStats.Options:ChangeText("Status: Record Marcro [ Upgrade ]\nTower : " .. v.Name .. "\n Wave : " .. game:GetService("ReplicatedStorage").Wave.Value .. " | Used Money : $" .. comma_value((TowerInfo[v.Name][v.Upgrade.Value]["Cost"]) * 1.33))
                        else
                            MacroStats.Options:ChangeText("Status: Record Marcro [ Upgrade ]\nTower : " .. v.Name .. "\n Wave : " .. game:GetService("ReplicatedStorage").Wave.Value .. " | Used Money : $" .. comma_value(TowerInfo[v.Name][v.Upgrade.Value]["Cost"]))
                        end
                        local DataTable = {
                            ['Time'] = StartRecordTime == nil and 0 or Timelapse() - StartRecordTime,
                            ['Index'] = Index,
                            ["Method_Data"] = {
                                ["Method"] = tostring('Upgrade'),
                                ["Data"] = {
                                    ['Wave'] = game:GetService("ReplicatedStorage").Wave.Value,
                                    ["UnitPlace"] = v.NumberTower.Value,
                                }
                            }
                        }
                        table.insert(getgenv().RecordMacro, DataTable)
                        table.sort(getgenv().RecordMacro , function(a,b)
                            --return tonumber(a['Time']) < tonumber(b['Time'])
                            return tonumber(a['Index']) < tonumber(b['Index'])
                        end)
                        writefile("HolyShz/AnimeLastStand/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json", game:GetService("HttpService"):JSONEncode(getgenv().RecordMacro))
                    
                        Index = Index + 1
                    end)

                    if v:FindFirstChild("Ability") then
                        v:WaitForChild('Ability').Changed:Connect(function(NewValue)
                            if NewValue then
                                MacroStats.Options:ChangeText("Status: Record Marcro [ Ability ]\nTower : " .. v.Name .. "\n Wave : " .. game:GetService("ReplicatedStorage").Wave.Value)
                                local DataTable = {
                                    ['Time'] = StartRecordTime == nil and 0 or Timelapse() - StartRecordTime,
                                    ['Index'] = Index,
                                    ["Method_Data"] = {
                                        ["Method"] = tostring('Ability'),
                                        ["Data"] = {
                                            ['Wave'] = game:GetService("ReplicatedStorage").Wave.Value,
                                            ["UnitPlace"] = v.NumberTower.Value,
                                        }
                                    }
                                }
                                table.insert(getgenv().RecordMacro, DataTable)
                                table.sort(getgenv().RecordMacro , function(a,b)
                                    --return tonumber(a['Time']) < tonumber(b['Time'])
                                    return tonumber(a['Index']) < tonumber(b['Index'])
                                end)
                                writefile("HolyShz/AnimeLastStand/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json", game:GetService("HttpService"):JSONEncode(getgenv().RecordMacro))
                        
                            
                                Index = Index + 1
                            end
                        end)
                    end 
                end

                local Number = Instance.new("IntValue")
                Number.Name = 'NumberTower'
                Number.Parent = v
                Number.Value = NumberPlace
                NumberPlace = NumberPlace + 1
            end
        end)
        workspace.Towers.ChildRemoved:Connect(function(v)
            if RecordMacroToggle then
                MacroStats.Options:ChangeText("Status: Record Marcro [ Selling ]\nTower : " .. v.Name .. "\n Wave : " .. game:GetService("ReplicatedStorage").Wave.Value)
                local DataTable = {
                    ['Time'] = StartRecordTime == nil and 0 or Timelapse() - StartRecordTime,
                    ['Index'] = Index,
                    ["Method_Data"] = {
                        ["Method"] = tostring('Selling'),
                        ["Data"] = {
                            ['Wave'] = game:GetService("ReplicatedStorage").Wave.Value,
                            ["UnitPlace"] = v.NumberTower.Value,
                        }
                    }
                }
                table.insert(getgenv().RecordMacro, DataTable)
                table.sort(getgenv().RecordMacro , function(a,b)
                    ----return tonumber(a['Time']) < tonumber(b['Time'])
                    return tonumber(a['Index']) < tonumber(b['Index'])
                end)
                writefile("HolyShz/AnimeLastStand/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json", game:GetService("HttpService"):JSONEncode(getgenv().RecordMacro))
            
                Index = Index + 1
            end 
        end)
    end
    -- Replay
    Macro_Play_Page:addToggle({
        title = "Play Macro",
        default  = SaveSettings['Macro']['Play Macro'] ,
        callback = function(v)
            SaveSettings['Macro']['Play Macro'] = v
            Save()
            spawn(function()
                local e, s = pcall(function()
                    if game.PlaceId == 12900046592 and SaveSettings['Macro']['Play Macro'] and isfile("HolyShz/AnimeLastStand/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json") then
                        local Macro = game:GetService("HttpService"):JSONDecode(readfile("HolyShz/AnimeLastStand/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json"))
                        table.sort(Macro, function(a,b)
                            --return tonumber(a["Time"]) < tonumber(b["Time"])
                            return tonumber(a["Index"]) < tonumber(b["Index"])
                        end)
                        --TotalIndex
                        local TableIndex = {}
                        table.foreach(Macro,function(i,v)
                            table.insert(TableIndex,v['Index'])
                        end)
                        game:GetService("ReplicatedStorage"):WaitForChild("GameStarted")
                        if not game:GetService("ReplicatedStorage").GameStarted.Value then
                            UI:Notify({
                                title = "Notification",
                                text = "Macro Status : Waiting Wave Start"
                            })
                            repeat wait() until game:GetService("ReplicatedStorage").GameStarted.Value
                        end
                        StartRecordTime = Timelapse()
                        print("Started")
                        wait()

                        for i,v in pairs(Macro) do
                            --if Timelapse() - StartRecordTime < v["Time"] then
                            --    repeat wait() until Timelapse() - StartRecordTime >= v["Time"]
                            --end
                            local UNIT;
                            if v["Method_Data"]["Method"] == "PlaceTower" and game:GetService("ReplicatedStorage").Challenge.Value == "High Cost" then 
                                if v["Index"] ~= math.max(unpack(TableIndex)) then
                                    MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex)) .."]\nTower : " .. v["Method_Data"]["Data"]["UnitPlace"] .. "\n Waiting For : $" .. comma_value((TowerInfo[v["Method_Data"]["Data"]["UnitPlace"]][0]["Cost"]) * 1.33))
                                elseif v["Index"] == math.max(unpack(TableIndex)) and tostring(workspace.DistributedGameTime >= tonumber(v["Time"])) then
                                    MacroStats.Options:ChangeText('Status: Play Ended.')
                                end
                                repeat wait() until game:GetService("Players").LocalPlayer.Cash.Value >= tonumber((TowerInfo[v["Method_Data"]["Data"]["UnitPlace"]][0]["Cost"]) * 1.33)
                                local args = {
                                    [1] = v["Method_Data"]["Data"]["UnitPlace"],
                                    [2] = StringToCFrame(v["Method_Data"]["Data"]["CFrame"])
                                }
                                game:GetService("ReplicatedStorage").Remotes.PlaceTower:FireServer(unpack(args))
                            elseif v["Method_Data"]["Method"] == "PlaceTower" and game:GetService("ReplicatedStorage").Challenge.Value ~= "High Cost" then
                                MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex)) .."]\nTower : " .. v["Method_Data"]["Data"]["UnitPlace"] .. "\n Waiting For : $" .. comma_value(TowerInfo[v["Method_Data"]["Data"]["UnitPlace"]][0]["Cost"]))
                                repeat wait() until game:GetService("Players").LocalPlayer.Cash.Value >= tonumber(TowerInfo[v["Method_Data"]["Data"]["UnitPlace"]][0]["Cost"])
                                local args = {
                                    [1] = v["Method_Data"]["Data"]["UnitPlace"],
                                    [2] = StringToCFrame(v["Method_Data"]["Data"]["CFrame"])
                                }
                                game:GetService("ReplicatedStorage").Remotes.PlaceTower:FireServer(unpack(args))
                            elseif v["Method_Data"]["Method"] == "Upgrade" and game:GetService("ReplicatedStorage").Challenge.Value == "High Cost" then
                                for index, value in pairs(game:GetService("Workspace")["Towers"]:GetChildren()) do
                                    if value:FindFirstChild('NumberTower') and value.NumberTower.Value == tonumber(v["Method_Data"]["Data"]["UnitPlace"]) then
                                        if v["Index"] ~= math.max(unpack(TableIndex)) then
                                            MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex)) .."]\nTower : " .. value.Name .. "\n Waiting For : $" .. comma_value((TowerInfo[value.Name][value.Upgrade.Value + 1]["Cost"]) * 1.33))
                                        elseif v["Index"] == math.max(unpack(TableIndex)) and tostring(workspace.DistributedGameTime >= tonumber(v["Time"])) then
                                            MacroStats.Options:ChangeText('Status: Play Ended.')
                                        end
                                        repeat wait() until game:GetService("Players").LocalPlayer.Cash.Value >= tonumber((TowerInfo[value.Name][value.Upgrade.Value + 1]["Cost"]) * 1.33)
                                        local args = {
                                            [1] = value
                                        }
                                        game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args)) 
                                        break
                                    end
                                end
                            elseif v["Method_Data"]["Method"] == "Upgrade" and game:GetService("ReplicatedStorage").Challenge.Value ~= "High Cost" then
                                for index, value in pairs(game:GetService("Workspace")["Towers"]:GetChildren()) do
                                    if value:FindFirstChild('NumberTower') and value.NumberTower.Value == tonumber(v["Method_Data"]["Data"]["UnitPlace"]) then
                                        if v["Index"] ~= math.max(unpack(TableIndex)) then
                                            MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex)) .."]\nTower : " .. value.Name .. "\n Waiting For : $" .. comma_value(TowerInfo[value.Name][value.Upgrade.Value + 1]["Cost"]))
                                        elseif v["Index"] == math.max(unpack(TableIndex)) and tostring(workspace.DistributedGameTime >= tonumber(v["Time"])) then
                                            MacroStats.Options:ChangeText('Status: Play Ended.')
                                        end
                                        repeat wait() until game:GetService("Players").LocalPlayer.Cash.Value >= tonumber(TowerInfo[value.Name][value.Upgrade.Value + 1]["Cost"])
                                        local args = {
                                            [1] = value
                                        }
                                        game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args)) 
                                        break
                                    end
                                end
                            elseif v["Method_Data"]["Method"] == "Selling" then
                                for index, value in pairs(game:GetService("Workspace")["Towers"]:GetChildren()) do
                                    if value:FindFirstChild('NumberTower') and value.NumberTower.Value == tonumber(v["Method_Data"]["Data"]["UnitPlace"]) then
                                        if v["Index"] ~= math.max(unpack(TableIndex)) then
                                            MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex)) .."]\nTower : " .. value.Name .. "\n Waiting For Wave : " .. v["Method_Data"]["Data"]["Wave"])
                                        elseif v["Index"] == math.max(unpack(TableIndex)) and tostring(workspace.DistributedGameTime >= tonumber(v["Time"])) then
                                            MacroStats.Options:ChangeText('Status: Play Ended.')
                                        end
                                        repeat wait() until game:GetService("ReplicatedStorage").Wave.Value >= tonumber(v["Method_Data"]["Data"]["Wave"])
                                        local args = {
                                            [1] = value
                                        }
                                        game:GetService("ReplicatedStorage").Remotes.Sell:InvokeServer(unpack(args)) 
                                        break
                                    end
                                end
                            elseif v["Method_Data"]["Method"] == "Targeting" then
                                for index, value in pairs(game:GetService("Workspace")["Towers"]:GetChildren()) do
                                    if value:FindFirstChild('NumberTower') and value.NumberTower.Value == tonumber(v["Method_Data"]["Data"]["UnitPlace"]) then --value.Targeting.Value
                                        if v["Index"] ~= math.max(unpack(TableIndex)) then
                                            MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex)) .."]\n Tower : " .. value.Name .. "\n Waiting For Wave : " .. v["Method_Data"]["Data"]["Wave"] .. " | Change Target : " .. v["Method_Data"]["Data"]["Targeting"])
                                        elseif v["Index"] == math.max(unpack(TableIndex)) and tostring(workspace.DistributedGameTime >= tonumber(v["Time"])) then
                                            MacroStats.Options:ChangeText('Status: Play Ended.')
                                        end
                                        repeat wait() until game:GetService("ReplicatedStorage").Wave.Value >= tonumber(v["Method_Data"]["Data"]["Wave"])
                                        if value.Targeting.Value ~= v["Method_Data"]["Data"]["Targeting"] then
                                            local args = {
                                                [1] = value
                                            }
                                            game:GetService("ReplicatedStorage").Remotes.ChangeTargeting:InvokeServer(unpack(args)) 
                                        end
                                        break
                                    end
                                end
                            elseif v["Method_Data"]["Method"] == "Ability" then
                                for index, value in pairs(game:GetService("Workspace")["Towers"]:GetChildren()) do
                                    if value:FindFirstChild('NumberTower') and value.NumberTower.Value == tonumber(v["Method_Data"]["Data"]["UnitPlace"]) then
                                        if v["Index"] ~= math.max(unpack(TableIndex)) then
                                            MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex)) .."]\n Tower : " .. value.Name .. "\n Waiting For Wave : " .. v["Method_Data"]["Data"]["Wave"])
                                        elseif v["Index"] == math.max(unpack(TableIndex)) and tostring(workspace.DistributedGameTime >= tonumber(v["Time"])) then
                                            MacroStats.Options:ChangeText('Status: Play Ended.')
                                        end
                                        repeat wait() until game:GetService("ReplicatedStorage").Wave.Value >= tonumber(v["Method_Data"]["Data"]["Wave"])
                                        local args = {
                                            [1] = value
                                        }
                                        game:GetService("ReplicatedStorage").Remotes.Ability:InvokeServer(unpack(args)) 
                                        break
                                    end
                                end
                            end
                            wait(1)
                        end
                    end
                end)
                if not e and s then
                    warn(s)
                end
            end)
        end ,
    })

    Macro_Play_Page:addLabel({title = "It's a BETA version has a Bug and Problem \n If you found a Bug please report in Discord"})

    ------------------------------------------------------ [[ Macro Map ]] ------------------------------------------------------
    local MacroMapsRefresh = MacroMapsCreateTap:addSection({
        title = "Macro - Refresh All Macro File"
    })
    local MacroMapsStory = MacroMapsCreateTap:addSection({
        title = "Macro - Select Story"
    })
    local MacroMapsChallenge = MacroMapsCreateTap:addSection({
        title = "Macro - Select Challenge"
    })
    local MacroMapsRaids = MacroMapsCreateTap:addSection({
        title = "Macro - Select Raids"
    })
    local MacroMapsPortal = MacroMapsCreateTap:addSection({
        title = "Macro - Select Portal"
    })
    local MacroMapsInfinite = MacroMapsCreateTap:addSection({
        title = "Macro - Select Infinite"
    })

    local TableMacroMap = {}
    for i,Name in pairs(SaveSettings['Macro']['Macro Map']) do
        if string.find(tostring(i),"Story") then
            TableMacroMap[tostring(i)] = MacroMapsStory:addDropdown({
                title = tostring(i),
                list = CreateMarocList(), 
                default = SaveSettings['Macro']['Macro Map'][tostring(i)],
                callback = function(v)
                    SaveSettings['Macro']['Macro Map'][tostring(i)] = v
                    Save()
                end;
            })
        elseif string.find(tostring(i),"Challenge") then
            TableMacroMap[tostring(i)] = MacroMapsChallenge:addDropdown({
                title = tostring(i),
                list = CreateMarocList(), 
                default = SaveSettings['Macro']['Macro Map'][tostring(i)],
                callback = function(v)
                    SaveSettings['Macro']['Macro Map'][tostring(i)] = v
                    Save()
                end;
            })
        elseif string.find(tostring(i),"Raids") then
            TableMacroMap[tostring(i)] = MacroMapsRaids:addDropdown({
                title = tostring(i),
                list = CreateMarocList(), 
                default = SaveSettings['Macro']['Macro Map'][tostring(i)],
                callback = function(v)
                    SaveSettings['Macro']['Macro Map'][tostring(i)] = v
                    Save()
                end;
            })
        elseif string.find(tostring(i),"Portal") then
            TableMacroMap[tostring(i)] = MacroMapsPortal:addDropdown({
                title = tostring(i),
                list = CreateMarocList(), 
                default = SaveSettings['Macro']['Macro Map'][tostring(i)],
                callback = function(v)
                    SaveSettings['Macro']['Macro Map'][tostring(i)] = v
                    Save()
                end;
            })
        elseif string.find(tostring(i),"Infinite") then
            TableMacroMap[tostring(i)] = MacroMapsInfinite:addDropdown({
                title = tostring(i),
                list = CreateMarocList(), 
                default = SaveSettings['Macro']['Macro Map'][tostring(i)],
                callback = function(v)
                    SaveSettings['Macro']['Macro Map'][tostring(i)] = v
                    Save()
                end;
            })
        end
    end
    function UpdateTableMacroMap()
        for i,v in pairs(TableMacroMap) do
            v.Options:Refresh(CreateMarocList(),SaveSettings['Macro']['Macro Map'][tostring(i)]) 
        end
    end
    MacroMapsRefresh:addButton({
        title = "Refresh All Macro File",
        callback = function()
            UpdateTableMacroMap()
        end,
    })
    ------------------------------------------------------ [[ Import Macro ]] ------------------------------------------------------
    ImportFileName = "None"
    MacroImport:addTextbox({
        title = "Import File Name",
        holderbox = "file Name ...",
        default = ImportFileName,
        callback = function(starts)
            ImportFileName = starts
        end,
    })
    ImportMacroFileFromLink = "None"
    MacroImport:addTextbox({
        title = "Import Macro File From Link",
        holderbox = "Link File ...",
        default = ImportMacroFileFromLink,
        callback = function(starts)
            ImportMacroFileFromLink = starts
        end,
    })
    MacroImport:addButton({
        title = "Download Macro File",
        callback = function()
            if ImportFileName ~= "None" then
                UI:Notify({
                    title = "Notification",
                    text = "Import Macro : Not Have Import File Name"
                })
            end
            if ImportMacroFileFromLink ~= "None" then
                UI:Notify({
                    title = "Notification",
                    text = "Import Macro : Not Have Import Macro File From Link"
                })
            end
            if ImportFileName ~= "None" and ImportMacroFileFromLink ~= "None" then
                if isfile("HolyShz/AnimeLastStand/Macro/" .. tostring(ImportFileName) .. ".json") then
                    UI:Notify({
                        title = "Notification",
                        text = "Import Macro : You Already Have This Macro Name"
                    })
                else
                    MacroFile = game:GetService("HttpService"):JSONDecode(game:HttpGet(ImportMacroFileFromLink))
                    writefile("HolyShz/AnimeLastStand/Macro/" .. tostring(ImportFileName) .. ".json", game:GetService("HttpService"):JSONEncode(MacroFile))
                    UI:Notify({
                        title = "Notification",
                        text = "Import Macro : Successful Create Macro " ..ImportFileName
                    })
                end
            end
        end,
    })
    ------------------------------------------------------ [[ Webhook ]] ------------------------------------------------------
    local color = (0 * 65536) + (255 * 256) + 255
    local Headers = {["content-type"] = "application/json"} -- Don't Modify
    local Time = os.date('!*t', OSTime);

    local TestData = {
        ["content"] = "",
        ["embeds"] = {{
            ["title"] = "**Test Webhook**",
                ["description"] = "Test Webhook",
                ["color"] = tonumber(0xDEECFF),
                ["timestamp"] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
            },
        }
    }

    local TestData = game:GetService('HttpService'):JSONEncode(TestData)
    local HttpRequest = http_request or request or HttpPost or syn.request;
    function Remove_rbx(str)
        return str:match("(%d+)")
    end

    WebhookPage:addTextbox({
        title = "Webhook Url",
        holderbox = "Link Webhook ...",
        default = SaveSettings["Notifier"]["Webhook Url"],
        callback = function(starts)
            SaveSettings["Notifier"]["Webhook Url"] = starts
            Save()
        end,
    })
    WebhookPage:addButton({
        title = "Test Webhook",
        callback = function(v)
            HttpRequest({Url=SaveSettings["Notifier"]["Webhook Url"], Body=TestData, Method="POST", Headers=Headers})
        end
    })

    ItemsDatainfo = require(game:GetService("ReplicatedStorage").Modules.ItemNames)
    local TableItemData = {}
    for i,v in pairs(ItemsDatainfo) do
        if i ~= "String" and i ~= "Valentines Portal" and i ~= "Tier 1" and i ~= "Tier 2" 
        and i ~= "Tier 3" and i ~= "Tier 4" and i ~= "Tier 5" then
            table.insert(TableItemData,tostring(i))
        end
    end

    --[[TableData = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer()
    local TableItemData = {}
    table.foreach(TableData['ItemData'],function(i,v)
        table.insert(TableItemData,tostring(i))
    end)]]
    WebhookPage:addMulitDropdown({
        title = "Select Item",
        list = TableItemData, 
        default = SaveSettings["Notifier"]['Select Item'],
        callback = function(v)
            SaveSettings["Notifier"]['Select Item'] = v
            Save()
        end;
    })

    WebhookPage:addToggle({
        title = "Send Item Counts [Select Item]",
        default = SaveSettings["Notifier"]["Send All Item"] ,
        callback = function(v)
            SaveSettings["Notifier"]["Send All Item"] = v
            Save()
        end ,
    })

    PlayerDataKills = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer()
    local TableUnitSlotData = {}
    for i,v in pairs(PlayerDataKills['Slots']) do
        table.insert(TableUnitSlotData,tostring(i))
    end
    WebhookPage:addMulitDropdown({
        title = "Select Unit Kills",
        list = TableUnitSlotData, 
        default = SaveSettings["Notifier"]['Select Unit'],
        callback = function(v)
            SaveSettings["Notifier"]['Select Unit'] = v
            Save()
        end;
    })

    WebhookPage:addToggle({
        title = "Send Unit Kills [Select Unit]",
        default = SaveSettings["Notifier"]["Send Unit Kills"] ,
        callback = function(v)
            SaveSettings["Notifier"]["Send Unit Kills"] = v
            Save()
        end ,
    })
    WebhookPage:addToggle({
        title = "Enable Webhook [Send After End Game]",
        default = SaveSettings["Notifier"]["Send After End Game"] ,
        callback = function(v)
            SaveSettings["Notifier"]["Send After End Game"] = v
            Save()
        end ,
    })
    spawn(function()
        while wait() do
            if SaveSettings["Notifier"]["Webhook Url"] == "nil" then return end
            if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('EndGameUI') and SaveSettings["Notifier"]["Send After End Game"] == true then
                local args = { [1] = game:GetService("Players").LocalPlayer }
                PlayerData = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer(unpack(args))
                MapDataInfo = game:GetService("ReplicatedStorage").Remotes.GetTeleportData:InvokeServer()

                --Reroll
                if game.Players.LocalPlayer:FindFirstChild("Level") then
                    RerollNew = PlayerData.Rerolls
                end
                --Raids Token
                if game.Players.LocalPlayer:FindFirstChild("Level") then
                    RaidtokenNew = PlayerData.RaidTokens
                end

                local TextDropReroll = (tostring(comma_value(RerollNew)) - tostring(comma_value(RerollOld)))
                local TextDropRaidtoken = (tostring(comma_value(RaidtokenNew)) - tostring(comma_value(RaidtokenOld)))

                if tostring(MapDataInfo.Type) == "Challenge" then
                    GameMode = tostring(MapDataInfo.Type) .. " - " .. tostring(MapDataInfo.Challenge)
                    MapInfo = tostring(MapDataInfo.MapName) .. " Act" .. tostring(comma_value(MapDataInfo.MapNum)) .. " (" .. tostring(MapDataInfo.Difficulty) .. ")"
                elseif tostring(MapDataInfo.Type) == "Portal" then
                    GameMode = tostring(MapDataInfo.Type) .. " (Tier " .. tostring(MapDataInfo.Tier) ..  ") - " .. tostring(MapDataInfo.Challenge)
                    MapInfo = tostring(MapDataInfo.MapName) .. " Act" .. tostring(comma_value(MapDataInfo.MapNum)) .. " (" .. tostring(MapDataInfo.Difficulty) .. ")"
                elseif tostring(MapDataInfo.Type) == "Story" then
                    GameMode = tostring(MapDataInfo.Type)
                    MapInfo = tostring(MapDataInfo.MapName) .. " Act" .. tostring(comma_value(MapDataInfo.MapNum)) .. " (" .. tostring(MapDataInfo.Difficulty) .. ")"
                elseif tostring(MapDataInfo.Type) == "Raids" then
                    GameMode = tostring(MapDataInfo.Type)
                    MapInfo = tostring(MapDataInfo.MapName) .. " Act" .. tostring(comma_value(MapDataInfo.MapNum)) .. " (" .. tostring(MapDataInfo.Difficulty) .. ")"
                else
                    GameMode = tostring(MapDataInfo.Type)
                    MapInfo = tostring(MapDataInfo.MapName) .. " (" .. tostring(MapDataInfo.Difficulty) .. ")"
                end

                local CountAmount = 1
                local TextDropLabel = ""
                local Table_Items_Drops = {}

                for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.EndGameUI.BG.Rewards.Rewards.Holder:GetChildren()) do
                    if v:IsA("Frame") then

                        if v.Image.Image == "rbxassetid://16088705279" or v.Image.Image == "rbxassetid://16525773698" or v.Image.Image == "rbxassetid://16522983203" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Emeralds + " .. v.Text.Text .. "\n"
                            CountAmount = CountAmount + 1
                        elseif v.Image.Image == "rbxassetid://16956799323" then 
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Raid Tokens + " .. tostring(comma_value(TextDropRaidtoken)) .. "\n"
                            CountAmount = CountAmount + 1
                        elseif v.Image.Image == "rbxassetid://16203324328" or v.Image.Image == "rbxassetid://15281783959" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Reroll + " .. tostring(comma_value(TextDropReroll)) .. "\n"
                            CountAmount = CountAmount + 1
                        elseif v.MainText.Text ~= "" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. tostring(v.MainText.Text) .. " + " .. v.Text.Text .. "\n"
                            CountAmount = CountAmount + 1
                        elseif v.Text.Text == "Tier 1" or v.Text.Text == "Tier 2" or v.Text.Text == "Tier 3" or v.Text.Text == "Tier 4" or v.Text.Text == "Tier 5"
                        or v.Text.Text == "Valentines Portal" then
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". Portal " .. v.Text.Text .. " + 1\n"
                            CountAmount = CountAmount + 1
                        else
                            if v.Text.Text == "HeavenlyChad" then v.Text.Text = "HeavenlyChad (Jotaro OH)" end
                            TextDropLabel = TextDropLabel .. tostring(CountAmount) .. ". " .. v.Text.Text .. " + 1\n"
                            CountAmount = CountAmount + 1
                        end
                    end
                end

                if TextDropLabel == "" or TextDropLabel == "ini" then
                    TextDropLabel = "Not Have Items Drops"
                end

                --Item_All
                local CountAmountAll = 1
                local TextDropLabelAll = ""
                if SaveSettings["Notifier"]["Send All Item"] then

                    TableData = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer()
                    for i,v in pairs(TableData['ItemData']) do

                        --Change_Item_Name
                        if v.ItemName == "WishBall1" then v.ItemName = "Wish Ball 1" end
                        if v.ItemName == "WishBall2" then v.ItemName = "Wish Ball 2" end
                        if v.ItemName == "WishBall3" then v.ItemName = "Wish Ball 3" end
                        if v.ItemName == "WishBall4" then v.ItemName = "Wish Ball 4" end
                        if v.ItemName == "WishBall5" then v.ItemName = "Wish Ball 5" end
                        if v.ItemName == "WishBall6" then v.ItemName = "Wish Ball 6" end
                        if v.ItemName == "WishBall7" then v.ItemName = "Wish Ball 7" end
                        if v.ItemName == "MSymbol" then v.ItemName = "Mean Symbol" end
                        if v.ItemName == "RightEarring" then v.ItemName = "Right Earring" end
                        if v.ItemName == "LeftEarring" then v.ItemName = "Left Earring" end
                        if v.ItemName == "SixEyes" then v.ItemName = "Six Eyes" end
                        if v.ItemName == "Tor Headband" then v.ItemName = "Tor's Headband" end
                        if v.ItemName == "Tor Cloak" then v.ItemName = "Tor's Cloak" end
                        if v.ItemName == "LamiCloud" then v.ItemName = "Lami Cloud" end
                        if v.ItemName == "LamiStaff" then v.ItemName = "Lami Staff" end
                        if v.ItemName == "SpiritShard" then v.ItemName = "Spirit Shard" end
                        if v.ItemName == "ResetTree" then v.ItemName = "Reset Tree" end
                        if v.ItemName == "Sukuna Finger" then v.ItemName = "Cursed Finger" end
                        if v.ItemName == "Ulquiorra Sword" then v.ItemName = "Ulquiorra's Sword" end
                        if v.ItemName == "StrawHat" then v.ItemName = "Straw Hat" end

                        if table.find(SaveSettings["Notifier"]['Select Item'],tostring(i)) or table.find(SaveSettings["Notifier"]['Select Item'],tostring(v.ItemName)) then
                            TextDropLabelAll = TextDropLabelAll .. tostring(CountAmountAll) .. ". " .. tostring(v.ItemName) .. " -> " ..  tostring(comma_value(v.Amount)) .. "\n"
                            CountAmountAll = CountAmountAll + 1
                        end
                    end
                else
                    TextDropLabelAll = "• -> Disable Function • rn <- •"
                end

                if TextDropLabelAll == "" or TextDropLabelAll == "ini" then
                    TextDropLabelAll = "Can't Loading Inventory"
                end
                --End_Item_All

                --Unit_Kill
                local CountAmountUnit = 1
                local TextUnitKills = ""
                if SaveSettings["Notifier"]["Send Unit Kills"] then

                    PlayerDataKills = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer()
                    for i,v in pairs(PlayerDataKills['Slots']) do
                        if table.find(SaveSettings["Notifier"]['Select Unit'],tostring(i)) then
                            TextUnitKills = TextUnitKills .. " • U" .. tostring(CountAmountUnit) .. ". " .. tostring(v.Value) .. " [Lv." .. tostring(comma_value(v.Level)) .. "] | Kill : " .. tostring(comma_value(v.Kills)) .. "\n"
                            CountAmountUnit = CountAmountUnit + 1
                        end
                    end
                else
                    TextUnitKills = "• -> Disable Function • rn <- •"
                end

                if TextUnitKills == "" or TextUnitKills == "ini" then
                    TextUnitKills = "Can't Loading Unit Slots"
                end
                --End_Unit_Kill

                print(' Webhook Sending ... !!!')
                local Time = os.date('!*t', OSTime);
                local PlayerData = {
                    ["content"] = "",
                    ["type"] = "rich",
                    ["embeds"] = {
                        {
                            ["title"] = "**Anime Last Stand **:",
                            ["author"] = {
                                ["name"] = "HolyShz Webhook - Anime Last Stand 00000000000000000000 ",
                                ["icon_url"] = "https://tr.rbxcdn.com/4ea4281ed356c343bbecb671936d22cc/150/150/Image/Png"
                            },
                            ["image"] = {
                                ["url"] = "https://tr.rbxcdn.com/e893b8fc4ca334bdf84d9ae82e277667/768/432/Image/Png",
                            },
                            ["description"] = "Player Name : ||**" ..game:GetService("Players").LocalPlayer.DisplayName.. " (" ..game:GetService("Players").LocalPlayer.Name.. ") **||\nLevel : ".. PlayerData.Level .."[ " .. PlayerData.EXP .. "/".. PlayerData.MaxEXP .." ]",
                            --["color"] = tonumber(color),
                            ["color"] = tonumber(0xDEECFF),
                            ["timestamp"] = string.format("%d-%d-%dT%02d:%02d:%02dZ", Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
                            ["footer"] = {
                                ["text"] = "// Script by HolyShz & kitsuna",
                            },
                            ["fields"] = {
                                {
                                    ["name"] = "Player Stats :",
                                    ["value"] = "```ini" ..
                                                "\nEmeralds : ".. tostring(comma_value(PlayerData.Emeralds)) ..
                                                "\nGold : ".. tostring(comma_value(PlayerData.Gold)) ..
                                                "\nReroll : ".. tostring(comma_value(PlayerData.Rerolls)) ..
                                                "\nRaid Tokens : ".. tostring(comma_value(PlayerData.RaidTokens)) ..
                                        "```"
                                        ,
                                    ["inline"] = false
                                },
                                {
                                    ["name"] = "Game Stats :",
                                    ["value"] = "```ini" ..
                                                "\n• Game Mode -> " .. GameMode ..
                                                "\n• Map -> " .. MapInfo ..
                                                "\n• Waves Survived -> " .. tostring(comma_value(game:GetService("ReplicatedStorage").Wave.Value)) .. 
                                                "\n• Time Elapsed -> " .. tostring(FormatTime(workspace.DistributedGameTime)) .. 
                                                "\n• Results -> " .. tostring(game:GetService("Players").LocalPlayer.PlayerGui.EndGameUI.BG.Title.Text) .. 
                                        "```"
                                        ,
                                    ["inline"] = false
                                },
                                {
                                    ["name"] = "Item Drops :",
                                    ["value"] = "```ini\n" .. TextDropLabel .. "```",
                                    ["inline"] = false
                                },
                                {
                                    ["name"] = "Unit Stats :",
                                    ["value"] = "```ini\n" .. TextUnitKills .. "```",
                                    ["inline"] = false
                                },
                                {
                                    ["name"] = "Player Item Counts :",
                                    ["value"] = "```ini\n" .. TextDropLabelAll .. "```",
                                    ["inline"] = false
                                }
                            }
                        }
                    }
                }
                local PlayerData = game:GetService('HttpService'):JSONEncode(PlayerData)
                HttpRequest({Url=SaveSettings["Notifier"]["Webhook Url"], Body=PlayerData, Method="POST", Headers=Headers})
                return
            end
        end
    end)

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

    Text_Time = Setting:addLabel({title = 'Game Time : N/A '})
    Setting:addDropdown({
        title = "Select Time [sec]",
        list = {300,360,420,480,540,600,1200,1800,2400,3000,3600}, 
        default = SaveSettings["SaveSetting"]['Select Time [sec]'],
        callback = function(v)
            SaveSettings["SaveSetting"]['Select Time [sec]'] = v
            Save()
        end;
    })
    Setting:addToggle({
        title = "Auto Rejoin Lobby at Time [In Map]",
        default  = SaveSettings["SaveSetting"]['Auto Rejoin [Time]'],
        callback = function(v)
            SaveSettings["SaveSetting"]['Auto Rejoin [Time]'] = v
            Save()
        end ,
    })
    Setting:addToggle({
        title = "Auto Rejoin Lobby at Time [In Lobby]",
        default  = SaveSettings["SaveSetting"]['Auto Rejoin [Time][Lobby]'],
        callback = function(v)
            SaveSettings["SaveSetting"]['Auto Rejoin [Time][Lobby]']= v
            Save()
        end ,
    })
    --Rejoin_When_Error
    Setting:addDropdown({
        title = "Select Time When Error prompt [sec]",
        list = {5,10,15,20,25,30}, 
        default = SaveSettings["SaveSetting"]['Select Time When Error prompt [sec]'],
        callback = function(v)
            SaveSettings["SaveSetting"]['Select Time When Error prompt [sec]'] = v
            Save()
        end;
    })
    Setting:addToggle({
        title = "Auto Rejoin Lobby When Error prompt",
        default  = SaveSettings["SaveSetting"]['Auto Rejoin When Error prompt [Time]'],
        callback = function(v)
            SaveSettings["SaveSetting"]['Auto Rejoin When Error prompt [Time]'] = v
            Save()
        end ,
    })

    Setting:addButton({
        title = "Rejoin",
        callback = function()
            local tpservice= game:GetService("TeleportService")
            local plr = game.Players.LocalPlayer

            tpservice:Teleport(12886143095, plr)
        end
    })
    Setting:addButton({
        title = "Hop Server",
        callback = function()
            Teleport(12886143095)
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
    UI:SelectPage({
        page = UI.pages[1],
        toggle = true
    })
    ---------------------------------------------------------------------------------------------------------
    function ClickSkipLoading()
        QuestBoard = game:GetService("Players").LocalPlayer.PlayerGui.Loading.Image.Skip
        QuestBoard.Position = UDim2.new(0, -700 ,0, -700)
        QuestBoard.Size = UDim2.new(100,100,100,100)
        QuestBoard.BackgroundTransparency = 1
        wait();
        game:GetService('VirtualUser'):CaptureController();
        game:GetService('VirtualUser'):ClickButton1(Vector2.new(100,100),CFrame.new(Vector3.new(0,0,0)));
        print('Skip Loading Screen ..!!!')
    end


    function ClickLeave()
        QuestBoard = game:GetService("Players").LocalPlayer.PlayerGui.EndGameUI.BG.Buttons.Leave.Button
        QuestBoard.Position = UDim2.new(0, -700 ,0, -700)
        QuestBoard.Size = UDim2.new(100,100,100,100)
        QuestBoard.BackgroundTransparency = 1
        wait();
        game:GetService('VirtualUser'):CaptureController();
        game:GetService('VirtualUser'):ClickButton1(Vector2.new(100,100),CFrame.new(Vector3.new(0,0,0)));
        print('Leave to Lobby ..!!!')
    end

    function ClickRetry()
        QuestBoard = game:GetService("Players").LocalPlayer.PlayerGui.EndGameUI.BG.Buttons.Retry.Button
        QuestBoard.Position = UDim2.new(0, -700 ,0, -700)
        QuestBoard.Size = UDim2.new(100,100,100,100)
        QuestBoard.BackgroundTransparency = 1
        wait();
        game:GetService('VirtualUser'):CaptureController();
        game:GetService('VirtualUser'):ClickButton1(Vector2.new(100,100),CFrame.new(Vector3.new(0,0,0)));
        print('Retry The Match ..!!!')
    end

    function ClickNext()
        QuestBoard = game:GetService("Players").LocalPlayer.PlayerGui.EndGameUI.BG.Buttons.Next.Button
        QuestBoard.Position = UDim2.new(0, -700 ,0, -700)
        QuestBoard.Size = UDim2.new(100,100,100,100)
        QuestBoard.BackgroundTransparency = 1
        wait();
        game:GetService('VirtualUser'):CaptureController();
        game:GetService('VirtualUser'):ClickButton1(Vector2.new(100,100),CFrame.new(Vector3.new(0,0,0)));
        print('go to the Next Act ..!!!')
    end

    spawn(function()
        while wait() do
            if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Loading") then
                if  SaveSettings["Main"]['Auto Skip Loading'] then
                    ClickSkipLoading()
                end
            end
            
            if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("EndGameUI") then
                if SaveSettings["Main"]['Auto Next'] and game:GetService("Players").LocalPlayer.PlayerGui.EndGameUI.BG.Buttons.Next.Visible == true then
                    wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                    ClickNext()
                elseif SaveSettings["Main"]['Auto Retry'] and game:GetService("Players").LocalPlayer.PlayerGui.EndGameUI.BG.Buttons.Retry.Visible == true then
                    wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                    ClickRetry()
                elseif SaveSettings["Main"]['Auto Leave'] and game:GetService("Players").LocalPlayer.PlayerGui.EndGameUI.BG.Buttons.Leave.Visible == true then
                    wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                    ClickLeave()
                end 
            end
        
            if SaveSettings["Main"]['Auto Redeem Daily'] and game:GetService("ReplicatedStorage"):FindFirstChild('Remotes') and game:GetService("ReplicatedStorage"):FindFirstChild('Remotes'):FindFirstChild('DailyRewards') then
                local Target = game:GetService("ReplicatedStorage").Remotes.DailyRewards.Claim;
                Target:InvokeServer();
            end

            --Story
            if SaveSettings["Main"]['Auto Join Story'] and SaveSettings["Main"]['Select Mode'] == "Story" and game.PlaceId == 12886143095 then
                if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('MapSelection') then
                    if SaveSettings["Main"]['Friends Only'] then
                        game:GetService("ReplicatedStorage").Remotes.Teleporter.FriendsOnly:InvokeServer()
                    end
                    local args = {
                        [1] = "Ready",
                        [2] = SaveSettings["Main"]['Select Map'],
                        [3] = tonumber(SaveSettings["Main"]['Select Act']),
                        [4] = SaveSettings["Main"]['Select Difficulty']
                    }
                    game:GetService("ReplicatedStorage").Remotes.Teleporter.MapSelect:InvokeServer(unpack(args))

                    if SaveSettings["Main"]['Auto Start'] then
                        wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                        print('Start join the map Wait to Teleporting ..!!!')
                        local args = { [1] = "Skip" }
                        game:GetService("ReplicatedStorage").Remotes.Teleporter.Interact:FireServer(unpack(args))
                    end
                else
                    if game:GetService("Workspace").TeleporterFolder:FindFirstChild(SaveSettings["Main"]['Select Mode']) then
                        Story = game:GetService("Workspace").TeleporterFolder:FindFirstChild(SaveSettings["Main"]['Select Mode']):GetChildren()
                        HumanoidRootPart.CFrame = Story[math.random(1,#Story)]:GetModelCFrame()
                        Character.HumanoidRootPart:PivotTo(Story[math.random(1,#Story)]:GetModelCFrame())
                        wait(2)
                    end
                end
            --Challenge
            local ChallengeInfoName = game:GetService("Workspace").TeleporterFolder.Challenge.Teleporter.ChallengeInfo.Challenge.Value
            local MapChallengeName = game:GetService("Workspace").TeleporterFolder.Challenge.Teleporter.ChallengeInfo.MapName.Value
            elseif SaveSettings["Main"]['Auto Join Story'] and SaveSettings["Main"]['Select Mode'] == "Challenge" and game.PlaceId == 12886143095
            and table.find(SaveSettings["Main"]['Select Challenge Map'],game:GetService("Workspace").TeleporterFolder.Challenge.Teleporter.ChallengeInfo.MapName.Value) and table.find(SaveSettings["Main"]['Select Challenge'],game:GetService("Workspace").TeleporterFolder.Challenge.Teleporter.ChallengeInfo.Challenge.Value) then

                if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('MapSelection') then
                    if SaveSettings["Main"]['Friends Only'] then
                        game:GetService("ReplicatedStorage").Remotes.Teleporter.FriendsOnly:InvokeServer()
                    end

                    if SaveSettings["Main"]['Auto Start'] then
                        wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                        print('Start join Challenge Wait to Teleporting ..!!!')
                        local args = { [1] = "Skip" }
                        game:GetService("ReplicatedStorage").Remotes.Teleporter.Interact:FireServer(unpack(args))
                    end
                else
                    if game:GetService("Workspace").TeleporterFolder:FindFirstChild("Challenge") then
                        Challenge = game:GetService("Workspace").TeleporterFolder:FindFirstChild("Challenge"):GetChildren()
                        HumanoidRootPart.CFrame = Challenge[math.random(1,#Challenge)]:GetModelCFrame()
                        Character.HumanoidRootPart:PivotTo(Challenge[math.random(1,#Challenge)]:GetModelCFrame())
                        wait(40)
                    end
                end
            --Raids
            elseif SaveSettings["Main"]['Auto Join Story'] and SaveSettings["Main"]['Select Mode'] == "Raids" and game.PlaceId == 12886143095 then
                if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('MapSelection') then
                    if SaveSettings["Main"]['Friends Only'] then
                        game:GetService("ReplicatedStorage").Remotes.Teleporter.FriendsOnly:InvokeServer()
                    end
                    local args = { [1] = game:GetService("Players").LocalPlayer }
                    PlayerData2 = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer(unpack(args))
                    if PlayerData2.RaidTokens > 0 or PlayerData2.RaidTokens ~= 0 then PlayerData2.RaidTokens = 0 end

                    local args = {
                        [1] = "Ready",
                        [2] = SaveSettings["Main"]['Select Raids Map2'],
                        [3] = tonumber(SaveSettings["Main"]['Select Raids Act'])
                    }
                    game:GetService("ReplicatedStorage").Remotes.Teleporter.MapSelect:InvokeServer(unpack(args))

                    if SaveSettings["Main"]['Auto Start'] then
                        wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                        print('Start join the map Wait to Teleporting ..!!!')
                        local args = { [1] = "Skip" }
                        game:GetService("ReplicatedStorage").Remotes.Teleporter.Interact:FireServer(unpack(args))
                    end
                else
                    if game:GetService("Workspace").TeleporterFolder:FindFirstChild(SaveSettings["Main"]['Select Mode']) then
                        Raids = game:GetService("Workspace").TeleporterFolder:FindFirstChild(SaveSettings["Main"]['Select Mode']):GetChildren()
                        HumanoidRootPart.CFrame = Raids[math.random(1,#Raids)]:GetModelCFrame()
                        Character.HumanoidRootPart:PivotTo(Raids[math.random(1,#Raids)]:GetModelCFrame())
                        wait(2)
                    end
                end
            --Infinite
            elseif SaveSettings["Main"]['Auto Join Story'] and SaveSettings["Main"]['Select Mode'] == "Infinite" and game.PlaceId == 12886143095 then
                if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('MapSelection') then
                    if SaveSettings["Main"]['Friends Only'] then
                        game:GetService("ReplicatedStorage").Remotes.Teleporter.FriendsOnly:InvokeServer()
                    end
                    local args = {
                        [1] = "Ready",
                        [2] = SaveSettings["Main"]['Select Map'],
                        [4] = SaveSettings["Main"]['Select Difficulty']
                    }
                    game:GetService("ReplicatedStorage").Remotes.Teleporter.MapSelect:InvokeServer(unpack(args))

                    if SaveSettings["Main"]['Auto Start'] then
                        wait(tonumber(tostring(SaveSettings["Main"]["Delay [Start,Retry,Leave]"])))
                        print('Start join Infinite Wait to Teleporting ..!!!')
                        local args = { [1] = "Skip" }
                        game:GetService("ReplicatedStorage").Remotes.Teleporter.Interact:FireServer(unpack(args))
                    end
                else
                    if game:GetService("Workspace").TeleporterFolder:FindFirstChild("Infinite") then
                        Infinite = game:GetService("Workspace").TeleporterFolder:FindFirstChild("Infinite"):GetChildren()
                        HumanoidRootPart.CFrame = Infinite[math.random(1,#Infinite)]:GetModelCFrame()
                        Character.HumanoidRootPart:PivotTo(Infinite[math.random(1,#Infinite)]:GetModelCFrame())
                        wait(2)
                    end
                end
            end
        end
    end)

    --Auto Rejoin Error Prompt
    spawn(function()
        while wait() do
        local PlaceId_ALS = {12900046592,14368918515,12886143095,14368918515}
        if table.find(PlaceId_ALS,game.PlaceId) and SaveSettings["SaveSetting"]['Auto Rejoin When Error prompt [Time]'] then -- SaveSettings["SaveSetting"]['Select Time When Error prompt [sec]']
            local CountCheck = 1
            while task.wait(tonumber(SaveSettings["SaveSetting"]['Select Time When Error prompt [sec]'])) do
                local vu = game:GetService("VirtualUser")
                game:GetService("Players").LocalPlayer.Idled:connect(function()
                    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                    wait(0.5)
                    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                    wait(0.5)
                    vu:CaptureController()vu:ClickButton2(Vector2.new())
                end)
                print("Check Roblox Error Promtp " .. CountCheck .. " time")
                CountCheck = CountCheck + 1
                game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(a)
                    if a.Name == 'ErrorPrompt' then
                        task.wait(tonumber(SaveSettings["SaveSetting"]['Select Time When Error prompt [sec]']))
                        local tpservice= game:GetService("TeleportService")
                        local plr = game.Players.LocalPlayer
                        tpservice:Teleport(12886143095, plr)
                        warn("Fround a Error Prompt ... Trying to Reconnect ...")
                        repeat wait() until not SaveSettings["SaveSetting"]['Auto Rejoin When Error prompt [Time]']
                        end
                    end)
                end
            end
        end
    end)

    spawn(function()
        while wait() do
            if SaveSettings["SaveSetting"]['Auto TP to Zone'] and game.PlaceId ~= 12886143095 then
                wait(5)
                MapDataTabel = game:GetService("ReplicatedStorage").Remotes.GetTeleportData:InvokeServer()
                if MapDataTabel.MapName  == "Desert Village" then
                    if HumanoidRootPart.CFrame ~= "-127.22598266601562, 199.55479431152344, 16.245275497436523" then
                        Character:PivotTo(CFrame.new(-127.22598266601562, 199.55479431152344, 16.245275497436523))
                    else
                        Character:PivotTo(CFrame.new(-127.22598266601562, 199.55479431152344, 16.245275497436523))
                    end
                elseif MapDataTabel.MapName  == "Water Park" then
                    if HumanoidRootPart.CFrame ~= "-122.1792984008789, 31.68234634399414, 74.24989318847656" then 
                        Character:PivotTo(CFrame.new(-122.1792984008789, 31.68234634399414, 74.24989318847656))
                    else
                        Character:PivotTo(CFrame.new(-122.1792984008789, 31.68234634399414, 74.24989318847656))
                    end
                elseif MapDataTabel.MapName  == "Hollow Dimension" then
                    if HumanoidRootPart.CFrame ~= "-125.69774627685547, 115.45217895507812, 4.159978866577148" then
                        Character:PivotTo(CFrame.new(-125.69774627685547, 115.45217895507812, 4.159978866577148))
                    else
                        Character:PivotTo(CFrame.new(-125.69774627685547, 115.45217895507812, 4.159978866577148))
                    end
                elseif MapDataTabel.MapName  == "Planet Nemak" then
                    if HumanoidRootPart.CFrame ~= "-194.38824462890625, 24.020198822021484, 47.92061233520508" then
                        Character:PivotTo(CFrame.new(-194.38824462890625, 24.020198822021484, 47.92061233520508))
                    else
                        Character:PivotTo(CFrame.new(-194.38824462890625, 24.020198822021484, 47.92061233520508))
                    end
                elseif MapDataTabel.MapName  == "Star Mansion" then
                    if HumanoidRootPart.CFrame ~= "-152.55552673339844, 22.699983596801758, -73.82027435302734" then
                        Character:PivotTo(CFrame.new(-152.55552673339844, 22.699983596801758, -73.82027435302734))
                    end
                elseif MapDataTabel.MapName  == "Marines Fort" then
                    if HumanoidRootPart.CFrame ~= "-1152.418212890625, 396.64385986328125, -10.058626174926758" then
                        Character:PivotTo(CFrame.new(-1152.418212890625, 396.64385986328125, -10.058626174926758))
                    else
                        Character:PivotTo(CFrame.new(-1152.418212890625, 396.64385986328125, -10.058626174926758))
                    end
                    repeat wait() until not  SaveSettings["SaveSetting"]['Auto TP to Zone']
                end 
            end
        end
    end)

    --Auto Rejoin
    function RejoineServer()
        while wait() do
            pcall(function()
                print('Reture to Lobby by Auto Rejoin with Time ' .. tonumber(SaveSettings["SaveSetting"]['Select Time [sec]']) .. ' sec' )
                wait(.5)
                Teleport(12886143095)
                --game:GetService("TeleportService"):Teleport(12886143095, game:GetService("Players").LocalPlayer)
                repeat wait() until not workspace.Map:FindFirstChild('MapDifficulty')
            end)
        end
    end

    spawn(function()
        while wait() do
            if SaveSettings["SaveSetting"]['Auto Rejoin [Time]'] and game.PlaceId ~= 12886143095 then
                if workspace.DistributedGameTime >= tonumber(SaveSettings["SaveSetting"]['Select Time [sec]']) then
                    RejoineServer()
                end 
            elseif SaveSettings["SaveSetting"]['Auto Rejoin [Time][Lobby]'] and game.PlaceId == 12886143095 then
                if workspace.DistributedGameTime >= tonumber(SaveSettings["SaveSetting"]['Select Time [sec]']) then
                    RejoineServer()
                end
            end
        end
    end)
    spawn(function()
		while wait() do
            if workspace.DistributedGameTime >= 0 then
                local args = { [1] = game:GetService("Players").LocalPlayer }
                PlayerData2 = game:GetService("ReplicatedStorage").Remotes.GetPlayerData:InvokeServer(unpack(args))
                TimeRaidPlay = (6 - tostring(comma_value(PlayerData2.RaidStage6Played)))
                if TimeRaidPlay < 0 then TimeRaidPlay = 0 end
                if game.PlaceId == 12886143095 then
                    Text_Raids_Time.Options:ChangeText("Today Playing Raid Act 6 : ".. tostring(comma_value(PlayerData2.RaidStage6Played)) .. " time \nYou can play it : " .. tostring(comma_value(TimeRaidPlay)) .. " time") 
                    Text_Challenge_Time.Options:ChangeText(" Now Map : " .. tostring(game:GetService("Workspace").TeleporterFolder.Challenge.Teleporter.ChallengeInfo.MapName.Value) .. "\n Now Challenge : "  .. tostring(game:GetService("Workspace").TeleporterFolder.Challenge.Teleporter.ChallengeInfo.Challenge.Value)) 
                    Text_Time.Options:ChangeText(" Your Stay in the Lobby, Time not Checking \n Game Time : ".. comma_value(string.format("%.2f",workspace.DistributedGameTime)) .. " sec") 
                    Text_Emeralds.Options:ChangeText(" Gold Count : " .. tostring(comma_value(game:GetService("Players").LocalPlayer.Gold.Value)) .. "\n Emerald Count : " .. tostring(comma_value(game:GetService("Players").LocalPlayer.Emeralds.Value)) .. "\n Reroll : " .. tostring(comma_value(game:GetService("Players").LocalPlayer.Rerolls.Value)) .. " | Raids Tokens : ".. tostring(comma_value(game:GetService("Players").LocalPlayer.RaidTokens.Value))) 
                else
                    MapDataText = game:GetService("ReplicatedStorage").Remotes.GetTeleportData:InvokeServer()
                    if tostring(MapDataText.MapNum) == "nil" then
                        ActorPlay = " "
                    else
                        ActorPlay = tostring("(Act " .. tostring(MapDataText.MapNum) .. ")" or " ")
                    end
                    if tostring(MapDataText.Tier) == "nil" then
                        TierPlay = " "
                    else
                        TierPlay = tostring("(Tier " .. tostring(MapDataText.Tier) .. ")" or " ")
                    end
                    if tostring(MapDataText.Challenge) == "nil" then
                        ChallengeorDiffPlay = tostring("Difficulty : " .. tostring(MapDataText.Difficulty) or " ")
                    else
                        ChallengeorDiffPlay = tostring("Challenge : " .. tostring(MapDataText.Challenge) or " ")
                    end
                    if table.find(TableChallenge,game:GetService("ReplicatedStorage").Challenge.Value) then
                        Text_Challenge_Time.Options:ChangeText(" Playing Mode : " .. tostring(MapDataText.Type) .. " ".. TierPlay .. "\n Playing Map : " .. tostring(MapDataText.MapName) .. " ".. ActorPlay .. "\n Playing "  .. ChallengeorDiffPlay .. " (Wave " .. tostring(comma_value(game:GetService("ReplicatedStorage").Wave.Value)) .. ")") 
                    else
                        Text_Challenge_Time.Options:ChangeText(" Playing Mode : " .. tostring(MapDataText.Type) .. " ".. TierPlay .. "\n Playing Map : " .. tostring(MapDataText.MapName) .. " ".. ActorPlay .. "\n Playing "  .. ChallengeorDiffPlay .. " (Wave " .. tostring(comma_value(game:GetService("ReplicatedStorage").Wave.Value)) .. ")") 
                    end
                    Text_Raids_Time.Options:ChangeText("Today Playing Raid Act 6 : ".. tostring(comma_value(PlayerData2.RaidStage6Played)) .. " time \nYou can play it : " .. tostring(comma_value(TimeRaidPlay)) .. " time") 
                    Text_Time.Options:ChangeText(" Game Time : " .. comma_value(string.format("%.2f",workspace.DistributedGameTime)) .. " sec") 
                    Text_Emeralds.Options:ChangeText(" Gold Count : " .. tostring(comma_value(PlayerData2.Gold)) .. "\n Emerald Count : " .. tostring(comma_value(string.format("%.2f",PlayerData2.Emeralds))) .. "\n Reroll : " .. tostring(comma_value(PlayerData2.Rerolls)) .. " | Raids Tokens : ".. tostring(comma_value(PlayerData2.RaidTokens))) 
                end
            end
        end
    end)

    --lowCPU
    local IS_ROBLOX_ACTIVE = false
    local UIS = game:GetService("UserInputService")
    UIS.WindowFocused:Connect(function()
        IS_ROBLOX_ACTIVE = true
    end)
    UIS.WindowFocusReleased:Connect(function()
        IS_ROBLOX_ACTIVE = false
    end)
    function isrbxactive()
        return IS_ROBLOX_ACTIVE
    end
    task.spawn(function()
        while task.wait() do
            getgenv().isrbxactive = newcclosure(isrbxactive)
            if IS_ROBLOX_ACTIVE ~= true and SaveSettings["SaveSetting"]['Low CPU Mode'] then
                setfpscap(tonumber(SaveSettings["SaveSetting"]['FPS Value']))
                game:GetService("RunService"):Set3dRenderingEnabled(false)
                isrbxactive(true)
            else
                setfpscap(240)
                game:GetService("RunService"):Set3dRenderingEnabled(true)
                isrbxactive(false)
            end
        end
    end)

    --FPS_Cap
    local IS_ROBLOX_ACTIVE2 = false
    local UIS = game:GetService("UserInputService")
    UIS.WindowFocused:Connect(function()
        IS_ROBLOX_ACTIVE2 = true
    end)
    UIS.WindowFocusReleased:Connect(function()
        IS_ROBLOX_ACTIVE2 = false
    end)
    function isrbxactive2()
        return IS_ROBLOX_ACTIVE2
    end
    task.spawn(function()
        while task.wait() do
            getgenv().isrbxactive2 = newcclosure(isrbxactive2)
            if SaveSettings["SaveSetting"]['FPS Cap'] then
                setfpscap(tonumber(SaveSettings["SaveSetting"]['FPS Value']))
                isrbxactive2(true)
            end
        end
    end)

    -- Hide Ui
    if game.CoreGui:FindFirstChild("HideUiHoly") then
        game.CoreGui:FindFirstChild("HideUiHoly"):Destroy()
    end

    local TweenService = game:GetService("TweenService")
    local RunService = game:GetService("RunService")
    local HttpService = game:GetService("HttpService")
    local UserInputService = game:GetService("UserInputService")
    local ContentProvider = game:GetService("ContentProvider")
    local CoreGui = game:GetService("CoreGui")
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Mouse = LocalPlayer:GetMouse()

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
            TweenService:Create(Ripple, TweenInfo.new(1.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(-5.5, 0, -15, 0), Size = UDim2.new(0, 110, 0, 32)}):Play()
            wait(0.75)
            TweenService:Create(Ripple, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {ImageTransparency = 1}):Play()
            wait(.75)
            Ripple:Destroy()
        end)
    end

    local KeySystemGui = Instance.new("ScreenGui")
    KeySystemGui.Name = "HideUiHoly"
    KeySystemGui.Parent = game.CoreGui
    KeySystemGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    TextButtonPosition = game.PlaceId == 12900046592 and UDim2.new(0,330,0,-16) or game.PlaceId == 12886143095 and UDim2.new(0,330,0,-16) or  game:GetService("CoreGui"):FindFirstChild('TrigonTopbar') and UDim2.new(0,260,0,-16) or UDim2.new(0,210,0,-16)
    local TextButton = Instance.new("TextButton")
    TextButton.Parent = KeySystemGui
    TextButton.AnchorPoint = Vector2.new(1, 0.5)
    TextButton.BackgroundColor3 = Color3.fromRGB(0,0,0)
    TextButton.BackgroundTransparency = 0.5
    TextButton.BorderColor3 = Color3.fromRGB(27,42,53)
    TextButton.BorderSizePixel = 0
    TextButton.Position = TextButtonPosition
    TextButton.Size = UDim2.new(0, 110, 0, 32)
    TextButton.ClipsDescendants = true
    TextButton.Font = Enum.Font.GothamSemibold
    TextButton.Text = "Hide Ui"
    TextButton.TextColor3 = Color3.fromRGB(255,255,255)
    TextButton.TextSize = 16.000
    TextButton.TextWrapped = true

    local UICorner = Instance.new("UICorner")
    UICorner.Parent = TextButton

    TextButton.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            game:GetService("TweenService"):Create(TextButton, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {TextSize = 18}):Play()
        end
    end)
    TextButton.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            game:GetService("TweenService"):Create(TextButton, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {TextSize = 16}):Play()
        end
    end)

    TextButton.MouseButton1Down:Connect(function()
        RippleEffect(TextButton)
        if game:GetService("CoreGui"):FindFirstChild('HolyScript') then
            game:GetService("CoreGui"):FindFirstChild('HolyScript').Enabled = not game:GetService("CoreGui"):FindFirstChild('HolyScript').Enabled
        end
    end)
end
