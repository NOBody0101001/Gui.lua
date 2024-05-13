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
	Name = "Fe sound spam",
	Callback = function()
      		print("CHEAT ACTİVE")
      game.StarterGui:SetCore("SendNotification", {Title="4TH DİMENSİON"; Text="Does not support some games!"; Duration=5;})

local ScreenGui = Instance.new("ScreenGui")
local Draggable = Instance.new("Frame")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local Time = Instance.new("TextLabel")
local _1E = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local _3E = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local SE = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Path = Instance.new("TextLabel")
local Top = Instance.new("Frame")
local Top_2 = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local Exit = Instance.new("TextButton")
local Minizum = Instance.new("TextButton")
local Stop = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local IY = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local Wait = Instance.new("TextBox")

--Properties:

ScreenGui.Name = ". Ǥ҉̷҉̵҉̸҉̷҉̵҉̸҉̡҉̡҉̼҉̱҉͎҉͎҉̞҉̼҉̱҉͎҉͎҉̞҉ͤ҉ͬ҉̅҉ͤ҉ͬ"
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Draggable.Name = "Ǥ҉̷҉̵҉̸҉̷҉̵҉̸҉̡҉̡҉̼҉̱҉͎҉͎҉̞҉̼҉̱҉͎҉͎҉̞҉ͤ҉ͬ҉̅҉ͤ҉ͬ."
Draggable.Parent = ScreenGui
Draggable.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Draggable.BackgroundTransparency = 1.000
Draggable.BorderSizePixel = 0
Draggable.Position = UDim2.new(0.35026139, 0, 0.296158612, 0)
Draggable.Size = UDim2.new(0, 438, 0, 277)

Frame.Name = ". . Ǥ҉̷҉̵҉̸҉̷҉̵҉̸҉̡҉̡҉̼҉̱҉͎҉͎҉̞҉̼҉̱҉͎҉͎҉̞҉ͤ҉ͬ҉̅҉ͤ҉ͬ. "
Frame.Parent = Draggable
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(-0.00133678317, 0, -0.00348037481, 0)
Frame.Size = UDim2.new(0, 438, 0, 277)

Frame_2.Name = " . Ǥ҉̷҉̵҉̸҉̷҉̵҉̸҉̡҉̡҉̼҉̱҉͎҉͎҉̞҉̼҉̱҉͎҉͎҉̞҉ͤ҉ͬ҉̅҉ͤ҉ͬ. "
Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(-0.00133678142, 0, -0.0179207586, 0)
Frame_2.Size = UDim2.new(0, 438, 0, 238)
Frame_2.Active = true
Frame_2.Draggable = true

Time.Name = "Time"
Time.Parent = Frame_2
Time.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Time.BackgroundTransparency = 1.000
Time.Position = UDim2.new(0, 0, 0.0126050422, 0)
Time.Size = UDim2.new(0, 437, 0, 31)
Time.Font = Enum.Font.GothamSemibold
Time.Text = "RespectFilteringEnabled(RFE) : nil"
Time.TextColor3 = Color3.fromRGB(255, 255, 255)
Time.TextScaled = true
Time.TextSize = 14.000
Time.TextWrapped = true

_1E.Name = "1E"
_1E.Parent = Frame_2
_1E.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
_1E.BorderSizePixel = 0
_1E.Position = UDim2.new(0.0182648394, 0, 0.676470578, 0)
_1E.Size = UDim2.new(0, 208, 0, 33)
_1E.Font = Enum.Font.SourceSans
_1E.Text = "Mute Game"
_1E.TextColor3 = Color3.fromRGB(255, 255, 255)
_1E.TextScaled = true
_1E.TextSize = 30.000
_1E.TextWrapped = true

UICorner.Parent = _1E

_3E.Name = "3E"
_3E.Parent = Frame_2
_3E.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
_3E.BorderSizePixel = 0
_3E.Position = UDim2.new(0.0159817357, 0, 0.142857149, 0)
_3E.Size = UDim2.new(0, 209, 0, 33)
_3E.Font = Enum.Font.SourceSans
_3E.Text = "Annoying  Sound"
_3E.TextColor3 = Color3.fromRGB(255, 255, 255)
_3E.TextSize = 30.000
_3E.TextWrapped = true

UICorner_2.Parent = _3E

SE.Name = "SE"
SE.Parent = Frame_2
SE.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
SE.BorderSizePixel = 0
SE.Position = UDim2.new(0.509132445, 0, 0.142857149, 0)
SE.Size = UDim2.new(0, 209, 0, 33)
SE.Font = Enum.Font.SourceSans
SE.Text = "Kill Sound Service"
SE.TextColor3 = Color3.fromRGB(255, 255, 255)
SE.TextSize = 30.000
SE.TextWrapped = true

UICorner_3.Parent = SE

Path.Name = "Path"
Path.Parent = Frame_2
Path.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Path.BackgroundTransparency = 1.000
Path.Position = UDim2.new(0.00684931502, 0, 0.815126061, 0)
Path.Size = UDim2.new(0, 435, 0, 44)
Path.Font = Enum.Font.GothamSemibold
Path.Text = "Dev Note : This Script is FE and it only FE when RespectFilteringEnabled(RFE) is disabled , elseif RespectFilteringEnabled(RFE) is true then it only be client , mostly RespectFilteringEnabled(RFE) disabled game are classic game"
Path.TextColor3 = Color3.fromRGB(255, 0, 0)
Path.TextScaled = true
Path.TextSize = 14.000
Path.TextWrapped = true

Top.Name = "Top"
Top.Parent = Frame_2
Top.BackgroundColor3 = Color3.fromRGB(41, 60, 157)
Top.BorderColor3 = Color3.fromRGB(27, 42, 53)
Top.BorderSizePixel = 0
Top.Position = UDim2.new(-0.00133678142, 0, -0.128059402, 0)
Top.Size = UDim2.new(0, 438, 0, 30)
Top_2.Name = "Top"
Top_2.Parent = Top
Top_2.BackgroundColor3 = Color3.fromRGB(30, 45, 118)
Top_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Top_2.BorderSizePixel = 0
Top_2.Position = UDim2.new(0, 0, 0.967638671, 0)
Top_2.Size = UDim2.new(0, 438, 0, 5)

ImageLabel.Parent = Top
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0, 0, 0.0666666701, 0)
ImageLabel.Size = UDim2.new(0, 29, 0, 27)
ImageLabel.Image = "http://www.roblox.com/asset/?id=8798286232"

TextLabel.Parent = ImageLabel
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.997245014, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 397, 0, 30)
TextLabel.Font = Enum.Font.GothamSemibold
TextLabel.Text = "4TH DİMENSİON"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextWrapped = true

Exit.Name = "Exit"
Exit.Parent = Top
Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Exit.BackgroundTransparency = 1.000
Exit.Position = UDim2.new(0.924657524, 0, 0, 0)
Exit.Size = UDim2.new(0, 32, 0, 25)
Exit.Font = Enum.Font.GothamSemibold
Exit.Text = "x"
Exit.TextColor3 = Color3.fromRGB(255, 255, 255)
Exit.TextScaled = true
Exit.TextSize = 14.000
Exit.TextWrapped = true

Minizum.Name = "Minizum"
Minizum.Parent = Top
Minizum.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Minizum.BackgroundTransparency = 1.000
Minizum.Position = UDim2.new(0.851598203, 0, 0, 0)
Minizum.Size = UDim2.new(0, 32, 0, 23)
Minizum.Font = Enum.Font.GothamSemibold
Minizum.Text = "_"
Minizum.TextColor3 = Color3.fromRGB(255, 255, 255)
Minizum.TextScaled = true
Minizum.TextSize = 14.000
Minizum.TextWrapped = true

Stop.Name = "Stop"
Stop.Parent = Frame_2
Stop.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Stop.BorderSizePixel = 0
Stop.Position = UDim2.new(0.0182648394, 0, 0.310924381, 0)
Stop.Size = UDim2.new(0, 424, 0, 33)
Stop.Font = Enum.Font.SourceSans
Stop.Text = "Stop"
Stop.TextColor3 = Color3.fromRGB(255, 255, 255)
Stop.TextSize = 30.000
Stop.TextWrapped = true

UICorner_4.Parent = Stop

IY.Name = "IY"
IY.Parent = Frame_2
IY.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
IY.BorderSizePixel = 0
IY.Position = UDim2.new(0.509132445, 0, 0.676470578, 0)
IY.Size = UDim2.new(0, 209, 0, 33)
IY.Font = Enum.Font.SourceSans
IY.Text = "Unmute Game"
IY.TextColor3 = Color3.fromRGB(255, 255, 255)
IY.TextScaled = true
IY.TextSize = 30.000
IY.TextWrapped = true

UICorner_5.Parent = IY

TextLabel_2.Parent = Frame_2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.0182648394, 0, 0.466386557, 0)
TextLabel_2.Size = UDim2.new(0, 426, 0, 50)
TextLabel_2.Font = Enum.Font.GothamSemibold
TextLabel_2.Text = "Wait Speed       :"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 30.000
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

Wait.Name = "Wait()"
Wait.Parent = Frame_2
Wait.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Wait.BackgroundTransparency = 1.000
Wait.Position = UDim2.new(0.531963468, 0, 0.466386557, 0)
Wait.Size = UDim2.new(0, 199, 0, 50)
Wait.ZIndex = 99999
Wait.ClearTextOnFocus = false
Wait.Font = Enum.Font.GothamSemibold
Wait.Text = "0"
Wait.TextColor3 = Color3.fromRGB(255, 255, 255)
Wait.TextSize = 30.000
Wait.TextWrapped = true

--Sound Service:
local notification = Instance.new("Sound")
notification.Parent = game:GetService("SoundService")
notification.SoundId = "rbxassetid://9086208751"
notification.Volume = 5
notification.Name = ". Ǥ҉̷҉̵҉̸҉̷҉̵҉̸҉̡҉̡҉̼҉̱҉͎҉͎҉̞҉̼҉̱҉͎҉͎҉̞҉ͤ҉ͬ҉̅҉ͤ҉ͬ"

--funuction:
Exit.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
end)
local Mute = false
IY.MouseButton1Click:Connect(function()
	Mute = false
end)

_1E.MouseButton1Click:Connect(function()
	Mute = true
	while Mute == true do 
		wait()
		for _, sound in next, workspace:GetDescendants() do
			if sound:IsA("Sound") then
				sound:Stop()
			end
		end
	end
end)

_3E.MouseButton1Click:Connect(function()
	for _, sound in next, workspace:GetDescendants() do
		if sound:IsA("Sound") then
			sound:Play()
		end
	end
end)

local Active = true
SE.MouseButton1Click:Connect(function()
	Active = true
	while Active == true do
		local StringValue = Wait.Text
		wait(StringValue)
		for _, sound in next, workspace:GetDescendants() do
			if sound:IsA("Sound") then
				sound:Play()
			end
		end
	end
end)

Stop.MouseButton1Click:Connect(function()
	Active = false
end)
      
--Credit:
notification:Play()
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "4TH DİMENSİON";
	Text = "4TH DİMENSİON Has Been Loaded , Made By PROTOCOLHERE";
	Icon = "";
	Duration = 10; 
	Button1 = "Yes Sir";
})
--Check:
while true do
	wait(0.5)
	local setting = game:GetService("SoundService").RespectFilteringEnabled
	if setting == true then
		Time.TextColor = BrickColor.new(255,0,0)
		Time.Text ="RespectFilteringEnabled(RFE) : true"
	elseif setting == false then
		Time.Text ="RespectFilteringEnabled(RFE) : false"
		Time.TextColor = BrickColor.new(0,255,0)
	end
      end
  	end
})

TrollTab:AddButton({
	Name = "Chat bypass",
	Callback = function()
      		print("CHEAT ACTİVE")
      game.StarterGui:SetCore("SendNotification", {Tit
