-- Made by V5#7463, are you happy now?

local Sprint = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local Icon = Instance.new("ImageLabel")

Sprint.Name = "Sprint"
Sprint.Parent = game.Players.LocalPlayer.PlayerGui.MainUI.MainFrame.MobileButtons
Sprint.Active = false
Sprint.AnchorPoint = Vector2.new(1, 1)
Sprint.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Sprint.BackgroundTransparency = 0.350
Sprint.Position = UDim2.new(0.389030606, 0, 0.946180701, 0)
Sprint.Size = UDim2.new(0.323784143, 0, 0.323784143, 0)
Sprint.SizeConstraint = Enum.SizeConstraint.RelativeYY
Sprint.AutoButtonColor = false
Sprint.ImageColor3 = Color3.fromRGB(255, 222, 189)
Sprint.ImageTransparency = 1.000
Sprint.ScaleType = Enum.ScaleType.Fit

UICorner.CornerRadius = UDim.new(0.5, 0)
UICorner.Parent = Sprint

UIStroke.Thickness = 3
UIStroke.Color = Color3.new(255, 222, 189)
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.LineJoinMode = Enum.LineJoinMode.Round
UIStroke.Parent = Sprint

Icon.Name = "Icon"
Icon.Parent = Sprint
Icon.AnchorPoint = Vector2.new(0.5, 0.5)
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.BackgroundTransparency = 1.000
Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
Icon.Size = UDim2.new(0.75, 0, 0.75, 0)
Icon.Image = "rbxassetid://2195446979"
Icon.ImageColor3 = Color3.fromRGB(255, 222, 189)
Icon.ScaleType = Enum.ScaleType.Fit

local Sprinting = false

game:GetService("VirtualInputManager"):SendKeyEvent(false, "Q" ,false ,game)

Sprint.MouseButton1Click:Connect(function()
    if Sprinting then
        game:GetService("VirtualInputManager"):SendKeyEvent(false, "Q" ,false ,game)
        Icon.Image = "rbxassetid://2195446979"

        Sprinting = false
    else
        game:GetService("VirtualInputManager"):SendKeyEvent(true, "Q" ,false ,game)
        Icon.Image = "rbxassetid://1202200114"

        Sprinting = true
    end
end)
