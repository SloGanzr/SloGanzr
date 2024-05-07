------------------------------------------------------ [[ Anime Last Stand ]] ------------------------------------------------------
print(game.PlaceId)
local PlaceId_ALS = {16474126979,16722699358}
if table.find(PlaceId_ALS,game.PlaceId) then
    repeat wait() until game:IsLoaded()
    if not game:IsLoaded() then game.Loaded:Wait() end
    game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

    ------------------------------------------------------ [[ Save Function ]] ------------------------------------------------------
    local SaveSettings = {
        ["Main"] = {
            ['Select Map'] = "nil",
            ['Select Act'] = "None",
            ['Select Difficulty'] = "Normal",
            ['Join Story'] = false,
            ['Auto Start'] = false,

            ['Select Raids'] = "nil",
            ['Select Act Raids'] = "None",
            ['Select Difficulty Raids'] = "Normal",
            ['Join Raids'] = false,
            ['Auto Start Raids'] = false,

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
            ['Select Method [Type]'] = "Method 1",
            ["Send After End Game"] = false,
        },
        ["SaveSetting"] = {
            ['Select Time [sec]'] = 600,
            ['Auto Rejoin [Time]'] = false,
            ['Auto Rejoin [Time][Lobby]'] = false,
            ['Select Time When Error prompt [sec]'] = 5,
            ['Auto Rejoin When Error prompt [Time]'] = false,
            ['Hide UI at Time (sec)'] = 60,
            ['Auto Hide UI'] = false,
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
            if not isfolder("HolyShz/AnimeFantasy") then
                makefolder("HolyShz/AnimeFantasy")
            end
            if not isfolder("HolyShz/AnimeFantasy/data") then
                makefolder("HolyShz/AnimeFantasy/data")
            end
            if not isfolder("HolyShz/AnimeFantasy/Macro") then
                makefolder("HolyShz/AnimeFantasy/Macro")
            end
            if not isfile("HolyShz/AnimeFantasy/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json") then
                writefile("HolyShz/AnimeFantasy/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json", game:GetService("HttpService"):JSONEncode(SaveSettings))
            else
                local Decode = game:GetService("HttpService"):JSONDecode(readfile("HolyShz/AnimeFantasy/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json"))
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
            if isfile("HolyShz/AnimeFantasy/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json") == false then
                Load()
            else
                local Decode = game:GetService("HttpService"):JSONDecode(readfile("HolyShz/AnimeFantasy/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json"))
                local Array = {}
                for i,v in pairs(SaveSettings) do
                    Array[i] = v
                end
                writefile("HolyShz/AnimeFantasy/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json", game:GetService("HttpService"):JSONEncode(Array))
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

    ------------------------------------------------------ [[ Ui ]] ------------------------------------------------------
    local Venyx = loadstring(game:HttpGet("https://raw.githubusercontent.com/NoNiName/Library/main/UILibrary/HolyUiV3"))()

    local UI = Venyx.new({
        title = "Anime Last Stand",
        Version = "Version 1.0.5.8"
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
    local Main_Story_Page = MainCreateTap:addSection({
        title = "Story - Setting"
    })
    local Main_Raid_Page = MainCreateTap:addSection({
        title = "Raid - Setting"
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
    ------------------------------------------------------ [[ Create Data ]] ------------------------------------------------------
    local Table_Story_Map,Table_Raid_Map,DataMap = {},{},{}
    if LocalPlayer.PlayerGui:FindFirstChild("TeleportGui") then 
        local StoryActScroll = LocalPlayer.PlayerGui.TeleportGui.TeleportFrame.StoryChooseFrame.ActScroll
        local RaidActScroll = LocalPlayer.PlayerGui.TeleportGui.TeleportFrame.RaidChooseFrame.ActScroll
        table.foreach(StoryActScroll:GetChildren(),function(i,v)
            table.insert(Table_Story_Map,v.Name)
            DataMap[v.Name] = {}
            table.foreach(v:GetChildren(),function(j,k)
                if k:IsA("ImageButton") then
                    table.insert(DataMap[v.Name],k.Name)
                end
            end)
        end)
        table.foreach(RaidActScroll:GetChildren(),function(i,v)
            table.insert(Table_Raid_Map,v.Name)
            DataMap[v.Name] = {}
            table.foreach(v:GetChildren(),function(j,k)
                if k:IsA("ImageButton") then
                    table.insert(DataMap[v.Name],k.ActNameText.Text)
                end
            end)
        end)
    end
    LoadRefreshAct = false
    Main_Story_Page:addDropdown({
        title = "Select Story",
        list = Table_Story_Map, 
        default = SaveSettings["Main"]['Select Map'],
        callback = function(v)
            SaveSettings["Main"]['Select Map'] = v
            Save()
            if LoadRefreshAct then
                RefreshAct()
            end
        end;
    })
    SelectAct = Main_Story_Page:addDropdown({
        title = "Select Act",
        list = DataMap[SaveSettings["Main"]['Select Map']], 
        default = SaveSettings["Main"]['Select Act'],
        callback = function(v)
            SaveSettings["Main"]['Select Act'] = v
            Save()
        end;
    })
    Main_Story_Page:addDropdown({
        title = "Select Difficulty",
        list = {"Normal","Nightmare"}, 
        default = SaveSettings["Main"]['Select Difficulty'] ,
        callback = function(v)
            SaveSettings["Main"]['Select Difficulty']  = v
            Save()
        end;
    })
    Main_Story_Page:addToggle({
        title = "Auto Start",
        default = SaveSettings["Main"]['Auto Start'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Start'] = v
            Save()
        end;
    })
    Main_Story_Page:addToggle({
        title = "Auto Join Story",
        default = SaveSettings["Main"]['Join Story'] ,
        callback = function(v)
            SaveSettings["Main"]['Join Story'] = v
            Save()
        end;
    })
    function RefreshAct()
        SelectAct.Options:Refresh(DataMap[SaveSettings["Main"]['Select Map']],SaveSettings["Main"]['Select Act']) 
    end

    Main_Raid_Page:addDropdown({
        title = "Select Raid",
        list = Table_Raid_Map, 
        default = SaveSettings["Main"]['Select Raids'],
        callback = function(v)
            SaveSettings["Main"]['Select Raids'] = v
            Save()
            if LoadRefreshAct then
                RefreshActRaids()
            end
        end;
    })
    SelectActRaids = Main_Raid_Page:addDropdown({
        title = "Select Act",
        list = DataMap[SaveSettings["Main"]['Select Raids']], 
        default = SaveSettings["Main"]['Select Act Raids'],
        callback = function(v)
            SaveSettings["Main"]['Select Act Raids'] = v
            Save()
        end;
    })
    Main_Raid_Page:addDropdown({
        title = "Select Difficulty",
        list = {"Normal","Nightmare"}, 
        default = SaveSettings["Main"]['Select Difficulty Raids'] ,
        callback = function(v)
            SaveSettings["Main"]['Select Difficulty Raids'] = v
            Save()
        end;
    })
    Main_Raid_Page:addToggle({
        title = "Auto Start",
        default = SaveSettings["Main"]['Auto Start Raids'] ,
        callback = function(v)
            SaveSettings["Main"]['Auto Start Raids'] = v
            Save()
        end;
    })
    Main_Raid_Page:addToggle({
        title = "Auto Join Raid",
        default = SaveSettings["Main"]['Join Raids'] ,
        callback = function(v)
            SaveSettings["Main"]['Join Raids'] = v
            Save()
        end;
    })
    function RefreshActRaids()
        SelectActRaids.Options:Refresh(DataMap[SaveSettings["Main"]['Select Raids']],SaveSettings["Main"]['Select Act Raids']) 
    end
    LoadRefreshAct = true
    ------------------------------------------------------ [[ Macro ]] ------------------------------------------------------
    function CreateMarocList()
        Select_Macro_Profile = {}
        for i,v in pairs(listfiles("HolyShz/AnimeFantasy/Macro")) do
            if string.find(v,[[\]]) then
                table.insert(Select_Macro_Profile, tostring(v:split([[\]])[2]:gsub(".json", "")))
            else
                table.insert(Select_Macro_Profile, tostring(v:split([[/]])[4]:gsub(".json", "")))
            end
        end
        return Select_Macro_Profile
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
                if not isfile("HolyShz/AnimeFantasy/Macro/" .. tostring(MacroName)..".json") then
                    writefile("HolyShz/AnimeFantasy/Macro/" .. tostring(MacroName)..".json", game:GetService("HttpService"):JSONEncode({}))
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
            if isfile("HolyShz/AnimeFantasy/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json") then
                delfile("HolyShz/AnimeFantasy/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json")
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
                    writefile("HolyShz/AnimeFantasy/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json", game:GetService("HttpService"):JSONEncode(getgenv().RecordMacro))
                    UI:Notify({
                        title = "Notification",
                        text = "Macro Status : Saved to Profile ".. SaveSettings['Macro']['Macro Select']
                    })
                end
            end
        end ,
    })
    NumberPlace,Index,TimeInGame = 1,1,0
    if game.PlaceId == 1677 then
        workspace.Unit:FindFirstChild(LocalPlayer.Name).ChildAdded:Connect(function(v)
            if v:WaitForChild("Stats") then
                if RecordMacroToggle then
                    MacroStats.Options:ChangeText("Status: Record Marcro [ PlaceTower ]\nTower : " .. v.Name .. "\n Wave : " .. workspace.GameStatus.Wave.Value)
                    local DataTable = {
                        ['Time'] = StartRecordTime == nil and 0 or Timelapse() - StartRecordTime,
                        ['Index'] = Index,
                        ["Method_Data"] = {
                            ["Method"] = tostring('PlaceTower'),
                            ["Data"] = {
                                ['Wave'] = workspace.GameStatus.Wave.Value,
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
                    writefile("HolyShz/AnimeFantasy/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json", game:GetService("HttpService"):JSONEncode(getgenv().RecordMacro))

                    Index = Index + 1

                    v:WaitForChild('Stats'):WaitForChild('AttackOrder').Changed:Connect(function(NewValue)
                        MacroStats.Options:ChangeText("Status: Record Marcro [ Targeting ]\nTower : " .. v.Name .. "\n Wave : " .. workspace.GameStatus.Wave.Value .. " | Target Change : " .. v.Targeting.Value)
                        local DataTable = {
                            ['Time'] = StartRecordTime == nil and 0 or Timelapse() - StartRecordTime,
                            ['Index'] = Index,
                            ["Method_Data"] = {
                                ["Method"] = tostring('Targeting'),
                                ["Data"] = {
                                    ['Wave'] = workspace.GameStatus.Wave.Value,
                                    ["UnitPlace"] = v.NumberTower.Value,
                                    ["Targeting"] = v.Stats.AttackOrder.Value
                                }
                            }
                        }
                        table.insert(getgenv().RecordMacro, DataTable)
                        table.sort(getgenv().RecordMacro , function(a,b)
                            --return tonumber(a['Time']) < tonumber(b['Time'])
                            return tonumber(a['Index']) < tonumber(b['Index'])
                        end)
                        writefile("HolyShz/AnimeFantasy/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json", game:GetService("HttpService"):JSONEncode(getgenv().RecordMacro))
                        
                        Index = Index + 1
                    end)

                    v:WaitForChild('Stats'):WaitForChild('Upgrade').Changed:Connect(function(NewValue) 
                        MacroStats.Options:ChangeText("Status: Record Marcro [ Upgrade ]\nTower : " .. v.Name .. "\n Wave : " .. workspace.GameStatus.Wave.Value .. " | Used Money : $" .. comma_value(TowerInfo[v.Name][v.Upgrade.Value]["Cost"]))
                        local DataTable = {
                            ['Time'] = StartRecordTime == nil and 0 or Timelapse() - StartRecordTime,
                            ['Index'] = Index,
                            ["Method_Data"] = {
                                ["Method"] = tostring('Upgrade'),
                                ["Data"] = {
                                    ['Wave'] = workspace.GameStatus.Wave.Value,
                                    ["UnitPlace"] = v.NumberTower.Value,
                                }
                            }
                        }
                        table.insert(getgenv().RecordMacro, DataTable)
                        table.sort(getgenv().RecordMacro , function(a,b)
                            --return tonumber(a['Time']) < tonumber(b['Time'])
                            return tonumber(a['Index']) < tonumber(b['Index'])
                        end)
                        writefile("HolyShz/AnimeFantasy/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json", game:GetService("HttpService"):JSONEncode(getgenv().RecordMacro))
                    
                        Index = Index + 1
                    end)

                    if v:FindFirstChild("Ability") then
                        v:WaitForChild('Ability').Changed:Connect(function(NewValue)
                            if NewValue then
                                MacroStats.Options:ChangeText("Status: Record Marcro [ Ability ]\nTower : " .. v.Name .. "\n Wave : " .. workspace.GameStatus.Wave.Value)
                                local DataTable = {
                                    ['Time'] = StartRecordTime == nil and 0 or Timelapse() - StartRecordTime,
                                    ['Index'] = Index,
                                    ["Method_Data"] = {
                                        ["Method"] = tostring('Ability'),
                                        ["Data"] = {
                                            ['Wave'] = workspace.GameStatus.Wave.Value,
                                            ["UnitPlace"] = v.NumberTower.Value,
                                        }
                                    }
                                }
                                table.insert(getgenv().RecordMacro, DataTable)
                                table.sort(getgenv().RecordMacro , function(a,b)
                                    --return tonumber(a['Time']) < tonumber(b['Time'])
                                    return tonumber(a['Index']) < tonumber(b['Index'])
                                end)
                                writefile("HolyShz/AnimeFantasy/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json", game:GetService("HttpService"):JSONEncode(getgenv().RecordMacro))
                        
                            
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
        workspace.Unit:FindFirstChild(LocalPlayer.Name):Connect(function(v)
            if RecordMacroToggle and v:FindFirstChild("NumberTower") then
                MacroStats.Options:ChangeText("Status: Record Marcro [ Selling ]\nTower : " .. v.Name .. "\n Wave : " .. workspace.GameStatus.Wave.Value)
                local DataTable = {
                    ['Time'] = StartRecordTime == nil and 0 or Timelapse() - StartRecordTime,
                    ['Index'] = Index,
                    ["Method_Data"] = {
                        ["Method"] = tostring('Selling'),
                        ["Data"] = {
                            ['Wave'] = workspace.GameStatus.Wave.Value,
                            ["UnitPlace"] = v.NumberTower.Value,
                        }
                    }
                }
                table.insert(getgenv().RecordMacro, DataTable)
                table.sort(getgenv().RecordMacro , function(a,b)
                    ----return tonumber(a['Time']) < tonumber(b['Time'])
                    return tonumber(a['Index']) < tonumber(b['Index'])
                end)
                writefile("HolyShz/AnimeFantasy/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json", game:GetService("HttpService"):JSONEncode(getgenv().RecordMacro))
            
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
                    if game.PlaceId == 12900046592 and SaveSettings['Macro']['Play Macro'] and isfile("HolyShz/AnimeFantasy/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json") then
                        local Macro = game:GetService("HttpService"):JSONDecode(readfile("HolyShz/AnimeFantasy/Macro/" .. tostring(SaveSettings['Macro']['Macro Select'])..".json"))
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
                            if Timelapse() - StartRecordTime < v["Time"] then
                                repeat wait() until Timelapse() - StartRecordTime >= v["Time"]
                            end
                            local UNIT;
                            if v["Method_Data"]["Method"] == "PlaceTower" then
                                MacroStats.Options:ChangeText('Status: Playing Marcro [ ' .. v["Method_Data"]["Method"] .. " ] [" .. v["Index"] .. "/" .. math.max(unpack(TableIndex)) .."]\nTower : " .. v["Method_Data"]["Data"]["UnitPlace"] .. "\n Waiting For : $" .. comma_value(TowerInfo[v["Method_Data"]["Data"]["UnitPlace"]][0]["Cost"]))
                                repeat wait() until game:GetService("Players").LocalPlayer.Cash.Value >= tonumber(TowerInfo[v["Method_Data"]["Data"]["UnitPlace"]][0]["Cost"])
                                local args = {
                                    [1] = v["Method_Data"]["Data"]["UnitPlace"],
                                    [2] = StringToCFrame(v["Method_Data"]["Data"]["CFrame"]) * CFrame.Angles(3.141592502593994, 0, 3.141592502593994),
                                    [3] = Vector3.new(0, 0, 0),
                                    [4] = v["Method_Data"]["Data"]["UnitPlace"] .. "1714482737.8307605"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CreateUnits:FireServer(unpack(args))
                            elseif v["Method_Data"]["Method"] == "Upgrade" then
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
                                        game:GetService("ReplicatedStorage").Remotes.Upgrades:FireServer(unpack(args))
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
                                        repeat wait() until workspace.GameStatus.Wave.Value >= tonumber(v["Method_Data"]["Data"]["Wave"])
                                        local args = {
                                            [1] = value
                                        }

                                        game:GetService("ReplicatedStorage").Remotes.SellUnit:FireServer(unpack(args))
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
                                        repeat wait() until workspace.GameStatus.Wave.Value >= tonumber(v["Method_Data"]["Data"]["Wave"])
                                        if value.Targeting.Value ~= v["Method_Data"]["Data"]["Targeting"] then
                                            local args = {
                                                [1] = value
                                            }

                                            game:GetService("ReplicatedStorage").Remotes.ChangeOrder:FireServer(unpack(args))
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
                                        repeat wait() until workspace.GameStatus.Wave.Value >= tonumber(v["Method_Data"]["Data"]["Wave"])
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
    Setting:addDropdown({
        title = "Hide UI at Time (sec)",
        list = {5,10,15,20,25,30,35,40,45,50,55,60},
        default = SaveSettings["SaveSetting"]['Hide UI at Time (sec)'],
        callback = function(v)
            SaveSettings["SaveSetting"]['Hide UI at Time (sec)'] = v
            Save()
        end;
    })
    Setting:addToggle({
        title = "Auto Hide UI (HIDE UI When Executor)",
        default  = SaveSettings["SaveSetting"]['Auto Hide UI'],
        callback = function(v)
            SaveSettings["SaveSetting"]['Auto Hide UI'] = v
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
    print(game:GetService("CoreGui"):FindFirstChild('HolyScript').Enabled == true)
    warn(game:GetService("CoreGui"):FindFirstChild('HolyScript').Enabled == false)
    Setting:addKeybind({
        title = "Keybind Hide Ui",
        key = Enum.KeyCode[string.gsub(SaveSettings["SaveSetting"]['Hide Key'],'Enum.KeyCode.',"")],
        callback = function()
            if SaveSettings["SaveSetting"]['Auto Hide UI'] then
                if SaveSettings["SaveSetting"]['Auto Hide UI'] == true then SaveSettings["SaveSetting"]['Auto Hide UI'] = false end
                game:GetService("CoreGui"):FindFirstChild('HolyScript').Enabled = not game:GetService("CoreGui"):FindFirstChild('HolyScript').Enabled
                UI:toggle()
            else
                UI:toggle()
            end
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
    --=======================================================[[[ Function ]]]=======================================================--
    spawn(function()
        while task.wait() do
            if SaveSettings["Main"]['Join Story'] and LocalPlayer.PlayerGui:FindFirstChild("TeleportGui") then
                if LocalPlayer.PlayerGui.TeleportGui.TeleportFrame.Visible then
                    local args = {
                        [1] = SaveSettings["Main"]['Select Map'],
                        [2] = SaveSettings["Main"]['Select Act'],
                        [3] = SaveSettings["Main"]['Select Difficulty']
                    }
                    game:GetService("ReplicatedStorage").Remotes.Select:FireServer(unpack(args))
                    if SaveSettings["Main"]['Auto Start'] then
                        game:GetService("ReplicatedStorage").Remotes.Start:FireServer()
                    end
                else
                    Story = game:GetService("Workspace").TeleportGate.Story:GetChildren()
                    HumanoidRootPart.CFrame = Story[math.random(1,#Story)].CFrame
                    Character.HumanoidRootPart:PivotTo(Story[math.random(1,#Story)].CFrame)
                    task.wait(.5)
                end
            end
            if SaveSettings["Main"]['Join Raids'] and LocalPlayer.PlayerGui:FindFirstChild("TeleportGui") then
                if LocalPlayer.PlayerGui.TeleportGui.TeleportFrame.Visible then
                    local args = {
                        [1] = SaveSettings["Main"]['Select Raids'],
                        [2] = SaveSettings["Main"]['Select Act Raids'],
                        [3] = SaveSettings["Main"]['Select Difficulty Raids']
                    }
                    game:GetService("ReplicatedStorage").Remotes.Select:FireServer(unpack(args))
                    if SaveSettings["Main"]['Auto Start Raids'] then
                        game:GetService("ReplicatedStorage").Remotes.Start:FireServer()
                    end
                else
                    Story = game:GetService("Workspace").TeleportGate.Story:GetChildren()
                    HumanoidRootPart.CFrame = Story[math.random(1,#Story)].CFrame
                    Character.HumanoidRootPart:PivotTo(Story[math.random(1,#Story)].CFrame)
                    task.wait(.5)
                end
            end
        end
    end)
end    
