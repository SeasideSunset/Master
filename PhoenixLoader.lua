--Made by Riot / Falcon / Proxide

local PhoenixLoader = Instance.new("ScreenGui")
local CircleBackground = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local PhoenixSymbol = Instance.new("ImageLabel")
local PHOENIX = Instance.new("TextLabel")

--Properties:

PhoenixLoader.Name = "PhoenixLoader"
PhoenixLoader.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
PhoenixLoader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

CircleBackground.Name = "CircleBackground"
CircleBackground.Parent = PhoenixLoader
CircleBackground.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CircleBackground.Position = UDim2.new(0.170940176, 0, 0.375415295, 0)
CircleBackground.Size = UDim2.new(0, 150, 0, 150)
CircleBackground.BackgroundTransparency = 1

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = CircleBackground

PhoenixSymbol.Name = "PhoenixSymbol"
PhoenixSymbol.Parent = CircleBackground
PhoenixSymbol.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PhoenixSymbol.BackgroundTransparency = 1.000
PhoenixSymbol.Position = UDim2.new(0.0799999982, 0, 0.104999997, 0)
PhoenixSymbol.Size = UDim2.new(0, 125, 0, 125)
PhoenixSymbol.Image = "rbxassetid://4840019323"
PhoenixSymbol.ImageTransparency = 1

PHOENIX.Name = "PHOENIX"
PHOENIX.Parent = PhoenixLoader
PHOENIX.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PHOENIX.BackgroundTransparency = 1.000
PHOENIX.Position = UDim2.new(0.222222239, 0, 0.275747508, 0)
PHOENIX.Size = UDim2.new(0, 650, 0, 275)
PHOENIX.Font = Enum.Font.RobotoCondensed
PHOENIX.Text = "P H O E N I X"
PHOENIX.TextColor3 = Color3.fromRGB(255, 255, 255)
PHOENIX.TextScaled = true
PHOENIX.TextSize = 14.000
PHOENIX.TextWrapped = true
PHOENIX.TextTransparency = 1

local Blur = Instance.new("BlurEffect")

Blur.Parent = game.Lighting
Blur.Name = "PhoenixBlur"
Blur.Enabled = true
Blur.Size = 0

wait(3)

repeat wait(.001)
	Blur.Size = Blur.Size + 1.5
	CircleBackground.BackgroundTransparency = CircleBackground.BackgroundTransparency - .1
	PhoenixSymbol.ImageTransparency = PhoenixSymbol.ImageTransparency - .1
	PHOENIX.TextTransparency = PHOENIX.TextTransparency - .1
until PhoenixSymbol.ImageTransparency == 0

wait(3)

repeat wait(.001)
	Blur.Size = Blur.Size - 1.5
	CircleBackground.BackgroundTransparency = CircleBackground.BackgroundTransparency + .1
	PhoenixSymbol.ImageTransparency = PhoenixSymbol.ImageTransparency + .1
	PHOENIX.TextTransparency = PHOENIX.TextTransparency + .1
until PhoenixSymbol.ImageTransparency == 1
wait()
Blur:Destroy()
