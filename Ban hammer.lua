-- DYNAMIC UI GENERATOR & CLIPBOARD SYSTEM (Luau)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Create ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "AutoCopyGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = PlayerGui

-- Create Main Frame
local Frame = Instance.new("Frame")
Frame.Name = "MainFrame"
Frame.Size = UDim2.new(0, 320, 0, 150) -- Lebar sedikit ditambah agar link muat rapi
Frame.Position = UDim2.new(0.5, -160, 0.4, -75)
Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true
Frame.Parent = ScreenGui

local FrameCorner = Instance.new("UICorner")
FrameCorner.CornerRadius = UDim.new(0, 12)
FrameCorner.Parent = Frame

-- Create TextBox (Editable, with your link)
local TextBox = Instance.new("TextBox")
TextBox.Name = "CopyTextBox"
TextBox.Size = UDim2.new(0, 280, 0, 40)
TextBox.Position = UDim2.new(0.5, -140, 0.2, 0)
TextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 55)
TextBox.BorderSizePixel = 0
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Font = Enum.Font.SourceSansBold
TextBox.TextSize = 14 -- Ukuran font dikecilkan sedikit agar link tidak terpotong
TextBox.Text = "https://sub2unlock.me/aFTTz2e" -- Your Link Here
TextBox.TextEditable = true
TextBox.ClearTextOnFocus = false
TextBox.Selectable = true
TextBox.Parent = Frame

local TextCorner = Instance.new("UICorner")
TextCorner.CornerRadius = UDim.new(0, 8)
TextCorner.Parent = TextBox

-- Create Copy Button
local CopyButton = Instance.new("TextButton")
CopyButton.Name = "CopyButton"
CopyButton.Size = UDim2.new(0, 280, 0, 40)
CopyButton.Position = UDim2.new(0.5, -140, 0.6, 0)
CopyButton.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
CopyButton.BorderSizePixel = 0
CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.Font = Enum.Font.SourceSansBold
CopyButton.TextSize = 16
CopyButton.Text = "Copy Text"
CopyButton.Parent = Frame

local ButtonCorner = Instance.new("UICorner")
ButtonCorner.CornerRadius = UDim.new(0, 8)
ButtonCorner.Parent = CopyButton

-- Copy and Selection Logic
local function selectAndCopy()
	if TextBox.Text ~= "" then
		TextBox:CaptureFocus()
		
		TextBox.SelectionStart = 1
		TextBox.CursorPosition = #TextBox.Text + 1
		
		local originalText = CopyButton.Text
		local originalColor = CopyButton.BackgroundColor3
		
		CopyButton.Text = "Text Selected!"
		CopyButton.BackgroundColor3 = Color3.fromRGB(46, 204, 113)
		
		task.wait(1.5)
		
		CopyButton.Text = originalText
		CopyButton.BackgroundColor3 = originalColor
	end
end

CopyButton.MouseButton1Click:Connect(selectAndCopy)
