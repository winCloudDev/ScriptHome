local g=Instance.new("ScreenGui")
local f=Instance.new("Frame")
local title=Instance.new("TextLabel")
local barbg=Instance.new("Frame")
local bar=Instance.new("Frame")
local spin=Instance.new("ImageLabel")
local ts=game:GetService("TweenService")

g.Parent=game.CoreGui
g.IgnoreGuiInset=true
g.Name="RatsHubLoader"

f.Parent=g
f.Size=UDim2.new(1,0,1,0)
f.BackgroundColor3=Color3.fromRGB(15,15,15)

title.Parent=f
title.Size=UDim2.new(0.4,0,0.08,0)
title.Position=UDim2.new(0.3,0,0.35,0)
title.Text="RatsHub Loading"
title.TextScaled=true
title.BackgroundTransparency=1
title.TextColor3=Color3.fromRGB(255,255,255)
title.Font=Enum.Font.GothamBold

barbg.Parent=f
barbg.Size=UDim2.new(0.4,0,0.02,0)
barbg.Position=UDim2.new(0.3,0,0.5,0)
barbg.BackgroundColor3=Color3.fromRGB(40,40,40)
barbg.BorderSizePixel=0

bar.Parent=barbg
bar.Size=UDim2.new(0,0,1,0)
bar.BackgroundColor3=Color3.fromRGB(0,170,255)
bar.BorderSizePixel=0

spin.Parent=f
spin.Size=UDim2.new(0,40,0,40)
spin.Position=UDim2.new(0.5,-20,0.6,0)
spin.BackgroundTransparency=1
spin.Image="rbxassetid://3926305904"
spin.ImageRectOffset=Vector2.new(964,324)
spin.ImageRectSize=Vector2.new(36,36)

ts:Create(bar,TweenInfo.new(3,Enum.EasingStyle.Quad),{Size=UDim2.new(1,0,1,0)}):Play()

task.spawn(function()
while g.Parent do
spin.Rotation=spin.Rotation+10
task.wait()
end
end)

task.wait(3.2)

loadstring(game:HttpGet("https://raw.githubusercontent.com/winCloudDev/ScriptHome/refs/heads/main/RatsHuB.lua"))()

ts:Create(f,TweenInfo.new(0.6),{BackgroundTransparency=1}):Play()
title:TweenPosition(UDim2.new(0.3,0,0.2,0))
task.wait(0.7)

g:Destroy()
