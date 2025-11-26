local RandomNameList = {
    "path to victory",
    "road to glory",
    "journey to win",
    "quest for the crown",
    "highway to success",
    "chasing the top",
    "way to triumph",
    "route to fame",
    "run to the finish",
    "trail to victory",
    "path of champions",
    "road of legends",
    "victory lane",
    "race to the top",
}

local Ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/drillygzzly/Roblox-UI-Libs/main/Abyss%20Lib/Abyss%20Lib%20Source.lua"))()
local Ui = Library

local LoadTime = tick()

local randomWord = RandomNameList[math.random(#RandomNameList)]
local Loader = Library.CreateLoader(
    "FatalShot | " .. randomWord, 
    Vector2.new(300, 300)
)
local Window = Library.Window(
    "FatalShot | " .. randomWord, 
    Vector2.new(500, 620)
)
Window.SendNotification(
    "Normal", -- Normal, Warning, Error 
    "Welcome!", 
    5
)
Window.Watermark(
    "FatalShot"
)

local AimTab = Window:Tab("Aim")
local AimSection = AimTab:Section(
    "Aim", 
    "Left"
)
local FovSection = AimTab:Section(
    "Fov", 
    "Right"
)

local EspTab = Window:Tab("esp")
local EspSection = EspTab:Section(
    "Esp", 
    "Left"
)
local FovSection = EspTab:Section(
    "Chams", 
    "Right"
)
local IEspSection = EspTab:Section(
    "Items esp", 
    "Left"
)
local IChamsSection = EspTab:Section(
    "Items hams", 
    "Right"
)

local AATab = Window:Tab("Anti-Aim")
local AASection = AATab:Section(
    "Anti-Aim", 
    "Left"
)
local FovSection = AATab:Section(
    "Fake-Pitch", 
    "Right"
)

local MiscTab = Window:Tab("Misc")
local AnothSection = MiscTab:Section(
    "Another", 
    "Left"
)
local TrollingSection = MiscTab:Section(
    "TrashTalk", 
    "Right"
)

TrollingSection:Toggle({
    Title = "TrashTalk", 
    Flag = "trashtalk",
    Type = "Trolling",
    Callback = function(v)
        local trashTalk = {
            "bro aiming at the moon?",
            "nice try… but no",
            "outplayed lol",
            "bro folding like paper",
            "you lagging or skill issue?",
            "I wasn’t even trying",
            "my pet rock plays better",
            "still loading?",
            "this is embarrassing",
            "why so slow?",
            "NPC detected",
            "bot behavior",
            "bro forgot to enable brain",
            "cry about it",
            "rent free",
            "you good? hello?",
            "bro blinked and died",
            "touch grass pls",
            "your aim is on vacation",
            "deleted from existence",
            "too easy"
        }

        local function sendRandomTrashTalk()
            local Players = game:GetService("Players")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            
            local player = Players.LocalPlayer
            local chatMessage = trashTalk[math.random(1, #trashTalk)]
            
            local ChatEvent = ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
            ChatEvent:FireServer(chatMessage, "All")
        end

        local UserInputService = game:GetService("UserInputService")
        UserInputService.InputBegan:Connect(function(input, gameProcessed)
            if gameProcessed then return end
            if input.KeyCode == Enum.KeyCode.Q then
                sendRandomTrashTalk()
            end
        end)
    end
}):Keybind({
    Title = "TrashTalk Keybind",
    Flag = "trashTalkKeybind", 
    Key = Enum.KeyCode.Q,
    StateType = "Toggle"
})

