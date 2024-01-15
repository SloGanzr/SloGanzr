_G.HideUiTopbat = true

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
------------------------------------------------------ [[ Anime World Tower Defense ]] ------------------------------------------------------
local PlaceId_AWTD = {6558526079,6593190090,6696693774,6708746728,13042543525,13068859894,13408537127}
if table.find(PlaceId_AWTD,game.PlaceId) then
    repeat wait() until game:IsLoaded()
    if not game:IsLoaded() then game.Loaded:Wait() end
    game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
    game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("TouchGui")
    ------------------------------------------------------ [[ Save Function ]] ------------------------------------------------------
    local SaveSettings = {
        ["Auto Farm"] = {
            
            ["CD Start Auto Farm"] = "10",

            ["Select World"] = "1",
            ["Select Raid & Event All"] = "String Kingdom",
            ["Select Difficulty"] = "Normal",
            ['Private Room'] = true,
            ["Select Story or Events "] = "Story",

            ['Auto Farm Select'] = false,

            ['Delete Map [BETA]'] = false,

        },
        ["SaveSetting"] = {
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
            if not isfolder("/HolyShz/AnimeWorldTowerDefense") then
                makefolder("/HolyShz/AnimeWorldTowerDefense")
            end
            if not isfolder("/HolyShz/AnimeWorldTowerDefense/data") then
                makefolder("/HolyShz/AnimeWorldTowerDefense/data")
            end
            if not isfolder("/HolyShz/AnimeWorldTowerDefense/Marco") then
                makefolder("/HolyShz/AnimeWorldTowerDefense/Marco")
            end
            if not isfile("/HolyShz/AnimeWorldTowerDefense/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json") then
                writefile("/HolyShz/AnimeWorldTowerDefense/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json", game:GetService("HttpService"):JSONEncode(SaveSettings))
            else
                local Decode = game:GetService("HttpService"):JSONDecode(readfile("/HolyShz/AnimeWorldTowerDefense/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json"))
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
            if isfile("/HolyShz/AnimeWorldTowerDefense/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json") == false then
                Load()
            else
                local Decode = game:GetService("HttpService"):JSONDecode(readfile("/HolyShz/AnimeWorldTowerDefense/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json"))
                local Array = {}
                for i,v in pairs(SaveSettings) do
                    Array[i] = v
                end
                writefile("/HolyShz/AnimeWorldTowerDefense/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json", game:GetService("HttpService"):JSONEncode(Array))
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

    local MainRemoteFunction = game:GetService("ReplicatedStorage").Remote;
    ------------------------------------------------------ [[ Function Univers ]] ------------------------------------------------------
    function Comma_Value(p1)
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
    
    function Remove_rbx(str)
        return str:match("(%d+)")
    end
    
    function StringToCFrame(params)
        return CFrame.new(unpack(game:GetService("HttpService"):JSONDecode("["..params.."]")))
    end
    
    function ClickButton(Button,Mode)
        local ButtonClick = Button
        local events = { "Activated" }
        for i,v in pairs(events) do
            for i,v in pairs(getconnections(ButtonClick[v])) do
                v.Function()
            end
        end
    end

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
    ------------------------------------------------------ [[ Function In Games ]] ------------------------------------------------------
    
    ------------------------------------------------------ [[ Lib Ui ]] ------------------------------------------------------
    local Venyx = loadstring(game:HttpGet("https://raw.githubusercontent.com/NoNiName/Library/main/UILibrary/HolyUiV3"))()
    
    local UI = Venyx.new({
        title = "Anime World Tower Defense",
        Version = "Version 1.0.1"
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
    local AutoFarm_Select = MainCreateTap:addSection({
        title = "Auto Farm Select"
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
    ------------------------------------------------------ [[ Auto Farm Select ]] ------------------------------------------------------

    AutoFarm_Select:addToggle({
        title = "Delete Map [BETA]",
        default = SaveSettings["Auto Farm"]['Delete Map [BETA]'],
        callback = function(v)
            SaveSettings["Auto Farm"]['Delete Map [BETA]'] = v
            Save()
        end ,
    })

    CD_Start = {}
    for i = 1,20 do
        table.insert(CD_Start,i)
    end
    AutoFarm_Select:addDropdown({
        title = "CD Start Auto Farm",
        list = CD_Start, 
        default = SaveSettings["Auto Farm"]["CD Start Auto Farm"],
        callback = function(v)
            SaveSettings["Auto Farm"]["CD Start Auto Farm"] = v
            Save()
        end;
    })

    Story_Num = {}
    for i = 1,55 do
        table.insert(Story_Num,i)
    end
    All_Num = {
        "----=RAID MODE=----","String Kingdom","Tomb of the Star","Soul Hall","Katana Revenge","Pillar Cave","Spider MT. Raid","Katamura City Raid","Hero City Raid","MarineFord Raid","Exploding Planet","Charuto Bridge",
        "----=EVENT STAGE=----","Training Field","Boss Rush","Random Unit","Metal Rush","Blue Element","Green Element","Purple Element","Yellow Element","Red Element",
        "----=ENDLESS MODE=----","Endless Spider Forest","Endless Snow Hill","Random Enemy","Darkness Tower",
        "----=LEGEND STAGES=----","Crossover City","Christmas Mansion","Dream Island","Ruin Society","Chaos Return","Shadow Realm","Idol Concert","Evil Pink Dungeon"
    }

    AutoFarm_Select:addDropdown({
        title = "Select World",
        list = Story_Num, 
        default = SaveSettings["Auto Farm"]["Select World"],
        callback = function(v)
            SaveSettings["Auto Farm"]["Select World"] = v
            Save()
        end;
    })

    AutoFarm_Select:addDropdown({
        title = "Select Raid & Event All",
        list = All_Num, 
        default = SaveSettings["Auto Farm"]["Select Raid & Event All"],
        callback = function(v)
            SaveSettings["Auto Farm"]["Select Raid & Event All"] = v
            Save()
        end;
    })

    local Difficulty_Mode = {"Normal","Insane","Challenger"}
    AutoFarm_Select:addDropdown({
        title = "Select Difficulty",
        list = Difficulty_Mode, 
        default = SaveSettings["Auto Farm"]["Select Difficulty"],
        callback = function(v)
            SaveSettings["Auto Farm"]["Select Difficulty"] = v
            Save()
        end;
    })

    AutoFarm_Select:addToggle({
        title = "Friend Only",
        default = SaveSettings["Auto Farm"]['Private Room'],
        callback = function(v)
            SaveSettings["Auto Farm"]['Private Room'] = v
            Save()
        end ,
    })

    Select_S_Num = {"Story","Events"}
    AutoFarm_Select:addDropdown({
        title = "Select Story or Events ",
        list = Select_S_Num, 
        default = SaveSettings["Auto Farm"]["Select Story or Events "],
        callback = function(v)
            SaveSettings["Auto Farm"]["Select Story or Events "] = v
            Save()
        end;
    })

    AutoFarm_Select:addToggle({
        title = "Auto Farm Select",
        default = SaveSettings["Auto Farm"]['Auto Farm Select'],
        callback = function(v)
            SaveSettings["Auto Farm"]['Auto Farm Select'] = v
            Save()
        end ,
    })

    ------------------------------------------------------ [[ Function ]] ------------------------------------------------------
--Auto Farm Story
    if table.find(PlaceId_AWTD,game.PlaceId) and SaveSettings["Auto Farm"]['Auto Farm Select'] == true and SaveSettings["Auto Farm"]["Select Story or Events "] == "Story" and game:GetService("Workspace").Map:FindFirstChild("Warp")
    and SaveSettings["Auto Farm"]["Select World"] ~= "----=RAID MODE=----" or SaveSettings["Auto Farm"]["Select World"] ~= "----=EVENT STAGE=----" or SaveSettings["Auto Farm"]["Select World"] ~= "----=ENDLESS MODE=----" or SaveSettings["Auto Farm"]["Select World"] ~= "----=LEGEND STAGES=----" then
        wait(tonumber(SaveSettings["Auto Farm"]["CD Start Auto Farm"])) do
        Character.HumanoidRootPart:PivotTo(game:GetService("Workspace").Map.Warp.WarpRoom.Warp.CFrame)
        wait(.1)
            local args = {
                [1] = SaveSettings["Auto Farm"]['Private Room'] or true, --Only friend
                [2] = SaveSettings["Auto Farm"]["Select Difficulty"], --Difficulty
                [3] = SaveSettings["Auto Farm"]["Select World"] --Map
            }
            game:GetService("ReplicatedStorage").Remote.CreateRoom:FireServer(unpack(args))
        wait(.1)
            game:GetService("ReplicatedStorage").Remote.QuickStart:FireServer()

            repeat wait() until not LocalPlayer.PlayerGui:FindFirstChild('TouchGui')
        end

--Auto Farm Event & All
    if table.find(PlaceId_AWTD,game.PlaceId) and SaveSettings["Auto Farm"]['Auto Farm Select'] == true and SaveSettings["Auto Farm"]["Select Story or Events "] == "Events" and game:GetService("Workspace").Map:FindFirstChild("Warp") 
    and SaveSettings["Auto Farm"]["Select World"] ~= "----=RAID MODE=----" or SaveSettings["Auto Farm"]["Select World"] ~= "----=EVENT STAGE=----" or SaveSettings["Auto Farm"]["Select World"] ~= "----=ENDLESS MODE=----" or SaveSettings["Auto Farm"]["Select World"] ~= "----=LEGEND STAGES=----" then
        wait(.1)
        Character.HumanoidRootPart:PivotTo(game:GetService("Workspace").Map.Warp.WarpRoom.Warp.CFrame)
        wait(.5)
            local args = {
                [1] = SaveSettings["Auto Farm"]['Private Room'] or true, --Only friend
                [2] = SaveSettings["Auto Farm"]["Select Difficulty"], --Difficulty
                [3] = SaveSettings["Auto Farm"]["Select Raid & Event All"] --Map
            }
            game:GetService("ReplicatedStorage").Remote.CreateRoom:FireServer(unpack(args))
        wait(.1)
            game:GetService("ReplicatedStorage").Remote.QuickStart:FireServer()

            repeat wait() until not LocalPlayer.PlayerGui:FindFirstChild('TouchGui')
        end



    --Delete Map
    function DelMapMain()
        for i,v in pairs(game:GetService("Workspace")["Map"].GroundArea:GetChildren()) do
                if v.ClassName == "MeshPart" then v:Remove() end
                if v.ClassName == "Model" then v:Remove() end
                if v.ClassName ~= "Part" then v:Remove() end
                if v.ClassName ~= "Folder" then v:Remove() end
            end
        end  
    function DelMapMain2()
        for i,v in pairs(game:GetService("Workspace")["Map"].Map:GetChildren()) do
                if v.ClassName == "MeshPart" then v:Remove() end
                if v.ClassName == "Model" then v:Remove() end
                if v.ClassName ~= "Part" then v:Remove() end
                if v.ClassName ~= "Folder" then v:Remove() end
            end
        end  
        
        print(SaveSettings["Auto Farm"]['Delete Map [BETA]'])
        if SaveSettings["Auto Farm"]['Delete Map [BETA]'] == true and not game:GetService("Workspace").Map:FindFirstChild("Warp") then
            DelMapMain()
            DelMapMain2()
            repeat until game:GetService("Workspace").Map:FindFirstChild("Warp")
        end
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

	if _G.HideUiTopbat then
		local function RippleEffect(object)
			spawn(function()
				local Ripple = Instance.new("ImageLabel")
				Ripple.Name = "Ripple"
				Ripple.Parent = object
				Ripple.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Ripple.BackgroundTransparency = 1.000
				Ripple.ZIndex = 8
				Ripple.Image = "rbxassetid://2708891598"
				Ripple.ImageTransparency = 0.800
				Ripple.ScaleType = Enum.ScaleType.Fit
				Ripple.Position = UDim2.new((Mouse.X - Ripple.AbsolutePosition.X) / object.AbsoluteSize.X, 0, (Mouse.Y - Ripple.AbsolutePosition.Y) / object.AbsoluteSize.Y, 0)
				game:GetService("TweenService"):Create(Ripple, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(-5.5, 0, -5.5, 0), Size = UDim2.new(12, 0, 12, 0)}):Play()
				wait(0.5)
				game:GetService("TweenService"):Create(Ripple, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {ImageTransparency = 1}):Play()
				wait(1)
				Ripple:Destroy()
			end)
		end
		local KeySystemGui = Instance.new("ScreenGui")
		KeySystemGui.Name = "KeySystemGui"
		KeySystemGui.Parent = game.CoreGui
		KeySystemGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		
		local TextButton = Instance.new("TextButton")
		TextButton.Parent = KeySystemGui
		TextButton.AnchorPoint = Vector2.new(1, 0.5)
		TextButton.BackgroundColor3 = Color3.fromRGB(0,0,0)
		TextButton.BackgroundTransparency = 0.5
		TextButton.BorderColor3 = Color3.fromRGB(27,42,53)
		TextButton.BorderSizePixel = 0
		TextButton.Position = UDim2.new(0,210,0,-16)
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
			game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode[string.gsub(SaveSettings["SaveSetting"]['Hide Key'],'Enum.KeyCode.',"")],false,game)
			game:GetService("VirtualInputManager"):SendKeyEvent(false,Enum.KeyCode[string.gsub(SaveSettings["SaveSetting"]['Hide Key'],'Enum.KeyCode.',"")],false,game)
		end)
	else
		local Toggle = Instance.new("TextButton")

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
end
