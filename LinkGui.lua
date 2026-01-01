local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")

local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "LinkGui"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local openBtn = Instance.new("TextButton")
openBtn.Parent = gui
openBtn.Size = UDim2.fromScale(0.4, 0.1)
openBtn.Position = UDim2.fromScale(0.3, 0.45)
openBtn.Text = "Open External Link"
openBtn.TextScaled = true

local frame = Instance.new("Frame")
frame.Parent = gui
frame.Size = UDim2.fromScale(0.5, 0.25)
frame.Position = UDim2.fromScale(0.25, 0.375)
frame.Visible = false

local label = Instance.new("TextLabel")
label.Parent = frame
label.Size = UDim2.fromScale(1, 0.5)
label.BackgroundTransparency = 1
label.TextScaled = true
label.Text = "You are about to open an external website.\nDo you want to continue?"

local yesBtn = Instance.new("TextButton")
yesBtn.Parent = frame
yesBtn.Size = UDim2.fromScale(0.45, 0.25)
yesBtn.Position = UDim2.fromScale(0.05, 0.65)
yesBtn.Text = "Yes"
yesBtn.TextScaled = true

local noBtn = Instance.new("TextButton")
noBtn.Parent = frame
noBtn.Size = UDim2.fromScale(0.45, 0.25)
noBtn.Position = UDim2.fromScale(0.5, 0.65)
noBtn.Text = "Cancel"
noBtn.TextScaled = true

local URL = "https://2no.co/20DSm2"

openBtn.MouseButton1Click:Connect(function()
	frame.Visible = true
end)

yesBtn.MouseButton1Click:Connect(function()
	frame.Visible = false
	GuiService:OpenBrowserWindow(URL)
end)

noBtn.MouseButton1Click:Connect(function()
	frame.Visible = false
end)
