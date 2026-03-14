local link = "https://sub2unlock.me/XArH6U3"

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")

local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local main = Instance.new("Frame")
main.Size = UDim2.new(0,0,0,0)
main.Position = UDim2.new(0.5,0,0.5,0)
main.AnchorPoint = Vector2.new(0.5,0.5)
main.BackgroundColor3 = Color3.fromRGB(20,20,20)
main.Parent = gui
Instance.new("UICorner",main).CornerRadius = UDim.new(0,12)

TweenService:Create(main,TweenInfo.new(0.4,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
Size = UDim2.new(0,360,0,240)
}):Play()

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0,40)
title.BackgroundTransparency = 1
title.Text = "Get OP Script"
title.Font = Enum.Font.GothamBold
title.TextSize = 22
title.TextColor3 = Color3.fromRGB(255,255,255)
title.Parent = main

local close = Instance.new("TextButton")
close.Size = UDim2.new(0,30,0,30)
close.Position = UDim2.new(1,-35,0,5)
close.Text = "X"
close.Font = Enum.Font.GothamBold
close.TextSize = 16
close.BackgroundColor3 = Color3.fromRGB(40,40,40)
close.TextColor3 = Color3.fromRGB(255,80,80)
close.Parent = main
Instance.new("UICorner",close).CornerRadius = UDim.new(1,0)

local box = Instance.new("TextBox")
box.Size = UDim2.new(1,-40,0,40)
box.Position = UDim2.new(0,20,0,70)
box.Text = link
box.Font = Enum.Font.Gotham
box.TextSize = 14
box.TextEditable = false
box.BackgroundColor3 = Color3.fromRGB(35,35,35)
box.TextColor3 = Color3.fromRGB(230,230,230)
box.Parent = main
Instance.new("UICorner",box).CornerRadius = UDim.new(0,8)

local copy = Instance.new("TextButton")
copy.Size = UDim2.new(1,-40,0,40)
copy.Position = UDim2.new(0,20,0,130)
copy.Text = "Copy Link for OP Script"
copy.Font = Enum.Font.GothamBold
copy.TextSize = 15
copy.BackgroundColor3 = Color3.fromRGB(50,50,50)
copy.TextColor3 = Color3.fromRGB(255,255,255)
copy.Parent = main
Instance.new("UICorner",copy).CornerRadius = UDim.new(0,8)

local open = Instance.new("TextButton")
open.Size = UDim2.new(1,-40,0,40)
open.Position = UDim2.new(0,20,0,180)
open.Text = "Open Link to Get OP Script"
open.Font = Enum.Font.GothamBold
open.TextSize = 15
open.BackgroundColor3 = Color3.fromRGB(70,120,255)
open.TextColor3 = Color3.fromRGB(255,255,255)
open.Parent = main
Instance.new("UICorner",open).CornerRadius = UDim.new(0,8)

copy.MouseButton1Click:Connect(function()
box.TextEditable = true
box:CaptureFocus()
box.SelectionStart = 1
box.CursorPosition = #box.Text + 1
box.TextEditable = false
end)

open.MouseButton1Click:Connect(function()
GuiService:OpenBrowserWindow(link)
end)

close.MouseButton1Click:Connect(function()
TweenService:Create(main,TweenInfo.new(0.3),{Size = UDim2.new(0,0,0,0)}):Play()
task.wait(0.3)
gui:Destroy()
end)
