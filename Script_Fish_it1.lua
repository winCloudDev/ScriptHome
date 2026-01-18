local link = "https://sub2unlock.me/2PAbheE"
local TweenService = game:GetService("TweenService")
local GuiService = game:GetService("GuiService")
local Player = game.Players.LocalPlayer

local blur = Instance.new("BlurEffect")
blur.Size = 0
blur.Parent = game.Lighting
TweenService:Create(blur, TweenInfo.new(0.4), {Size = 10}):Play()

local gui = Instance.new("ScreenGui")
gui.ResetOnSpawn = false
gui.Parent = Player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.Size = UDim2.new(0, 0, 0, 0)
frame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
frame.Parent = gui
Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 18)

TweenService:Create(frame, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
	Size = UDim2.new(0, 380, 0, 280)
}):Play()

local title = Instance.new("TextLabel")
title.Text = "Get OP Script"
title.Font = Enum.Font.GothamBold
title.TextSize = 24
title.TextColor3 = Color3.fromRGB(235, 235, 235)
title.BackgroundTransparency = 1
title.Size = UDim2.new(1, 0, 0, 30)
title.Position = UDim2.new(0, 0, 0, 22)
title.Parent = frame

local linkBox = Instance.new("TextBox")
linkBox.Text = link
linkBox.Font = Enum.Font.Gotham
linkBox.TextSize = 15
linkBox.TextColor3 = Color3.fromRGB(230, 230, 230)
linkBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
linkBox.ClearTextOnFocus = false
linkBox.TextEditable = false
linkBox.Size = UDim2.new(1, -40, 0, 44)
linkBox.Position = UDim2.new(0, 20, 0, 95)
linkBox.Parent = frame
Instance.new("UICorner", linkBox).CornerRadius = UDim.new(0, 12)

local copyBtn = Instance.new("TextButton")
copyBtn.Text = "Copy Link for OP Script"
copyBtn.Font = Enum.Font.GothamBold
copyBtn.TextSize = 16
copyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
copyBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
copyBtn.Size = UDim2.new(1, -40, 0, 48)
copyBtn.Position = UDim2.new(0, 20, 0, 155)
copyBtn.Parent = frame
Instance.new("UICorner", copyBtn).CornerRadius = UDim.new(0, 14)

local openBtn = Instance.new("TextButton")
openBtn.Text = "Get OP Script"
openBtn.Font = Enum.Font.GothamBold
openBtn.TextSize = 16
openBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
openBtn.BackgroundColor3 = Color3.fromRGB(80, 150, 255)
openBtn.Size = UDim2.new(1, -40, 0, 48)
openBtn.Position = UDim2.new(0, 20, 0, 215)
openBtn.Parent = frame
Instance.new("UICorner", openBtn).CornerRadius = UDim.new(0, 14)

local closeBtn = Instance.new("TextButton")
closeBtn.Text = "✕"
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 18
closeBtn.TextColor3 = Color3.fromRGB(230, 80, 80)
closeBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
closeBtn.Size = UDim2.new(0, 36, 0, 36)
closeBtn.Position = UDim2.new(1, -38, 0, 10)
closeBtn.Parent = frame
Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(1, 0)

copyBtn.MouseButton1Click:Connect(function()
	linkBox.TextEditable = true
	linkBox:CaptureFocus()
	linkBox.SelectionStart = 1
	linkBox.CursorPosition = #linkBox.Text + 1
	linkBox.TextEditable = false
end)

openBtn.MouseButton1Click:Connect(function()
	GuiService:OpenBrowserWindow(link)
end)

closeBtn.MouseButton1Click:Connect(function()
	TweenService:Create(frame, TweenInfo.new(0.25), {Size = UDim2.new(0, 0, 0, 0)}):Play()
	TweenService:Create(blur, TweenInfo.new(0.25), {Size = 0}):Play()
	task.delay(0.3, function()
		gui:Destroy()
		blur:Destroy()
	end)
end)
