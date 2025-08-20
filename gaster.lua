local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local player = Players.LocalPlayer

StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)

local gui = Instance.new("ScreenGui")
gui.Parent = player:WaitForChild("PlayerGui")
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false

local bg = Instance.new("Frame")
bg.Size = UDim2.new(1,0,1,0)
bg.Position = UDim2.new(0,0,0,0)
bg.BackgroundColor3 = Color3.fromRGB(0,0,0)
bg.BorderSizePixel = 0
bg.Parent = gui

local mainText = Instance.new("TextLabel")
mainText.Size = UDim2.new(1,0,0.3,0)
mainText.Position = UDim2.new(0,0,0.35,0)
mainText.BackgroundTransparency = 1
mainText.Text = "GASTER999_COOL"
mainText.Font = Enum.Font.Arcade
mainText.TextScaled = true
mainText.TextColor3 = Color3.fromRGB(255,255,255)
mainText.Parent = gui

local subText = Instance.new("TextLabel")
subText.Size = UDim2.new(1,0,0.2,0)
subText.Position = UDim2.new(0,0,0.65,0)
subText.BackgroundTransparency = 1
subText.Text = "الهكر قاستر"
subText.Font = Enum.Font.SourceSansBold
subText.TextScaled = true
subText.TextColor3 = Color3.fromRGB(255,255,255)
subText.Parent = gui

task.spawn(function()
	while true do
		subText.TextColor3 = Color3.fromRGB(255,255,255)
		task.wait(0.3)
		subText.TextColor3 = Color3.fromRGB(0,0,0)
		task.wait(0.3)
	end
end)

task.spawn(function()
	while true do
		bg.BackgroundColor3 = Color3.fromHSV(tick()%5/5,1,1)
		task.wait(0.1)
	end
end)

local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://100697759026652"
sound.Volume = 5
sound.Looped = true
sound.Parent = player:WaitForChild("PlayerGui")
sound:Play()

local countdown = Instance.new("TextLabel")
countdown.Size = UDim2.new(0.2,0,0.1,0)
countdown.Position = UDim2.new(0.4,0,0,0)
countdown.BackgroundTransparency = 1
countdown.TextScaled = true
countdown.Font = Enum.Font.Arcade
countdown.TextColor3 = Color3.fromRGB(255,0,0)
countdown.Parent = gui

local errorText = Instance.new("TextLabel")
errorText.Size = UDim2.new(0.3,0,0.1,0)
errorText.Position = UDim2.new(0.35,0,0.45,0)
errorText.BackgroundTransparency = 1
errorText.TextScaled = true
errorText.Font = Enum.Font.Arcade
errorText.TextColor3 = Color3.fromRGB(255,255,255)
errorText.Text = "ERROR 404"
errorText.Parent = gui

task.spawn(function()
	while true do
		errorText.Position = UDim2.new(math.random(),0,math.random(),0)
		errorText.Visible = true
		task.wait(0.2)
		errorText.Visible = false
		task.wait(0.2)
	end
end)

task.spawn(function()
	while true do
		bg.BackgroundColor3 = Color3.fromRGB(255-bg.BackgroundColor3.R*255,255-bg.BackgroundColor3.G*255,255-bg.BackgroundColor3.B*255)
		task.wait(0.1)
	end
end)

task.spawn(function()
	for i=10,1,-1 do
		countdown.Text = tostring(i)
		task.wait(1)
	end
	player:Kick("كسمك")
end)
