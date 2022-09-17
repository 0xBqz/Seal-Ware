
local Library = {}

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

for i,v in pairs(game:FindFirstChildWhichIsA("CoreGui"):GetDescendants()) do
    if v:IsA("ScreenGui") and v.Name == "Seal-Ware" then
        v:Destroy()
    end
end

local SealWare = Instance.new("ScreenGui")
SealWare.Name = "Seal-Ware"
SealWare.Parent = game.CoreGui

local function drag(Frame, dragSpeed)
	local dragToggle, dragInput, dragStart, dragPos, startPos
	local dragSpeed = dragSpeed or 0.15

	local function updateInput(input)
		local Delta = input.Position - dragStart
		local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		
		game:GetService("TweenService"):Create(Frame, TweenInfo.new(dragSpeed), {Position = Position}):Play()
	end

	Frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
			dragToggle = true
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if (input.UserInputState == Enum.UserInputState.End) then
					dragToggle = false
				end
			end)
		end
	end)

	Frame.InputChanged:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			dragInput = input
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if (input == dragInput and dragToggle) then
			updateInput(input)
		end
	end)
end

function Library:Window(name,keybind)
    local Bind = keybind or Enum.KeyCode.RightControl
    local Frame = Instance.new("Frame")
	local Frame_2 = Instance.new("Frame")
	local Shade = Instance.new("Frame")
	local Seal = Instance.new("TextLabel")
    local Ware = Instance.new("TextLabel")
	local Bar = Instance.new("Frame")
	local line = Instance.new("Frame")
    local line_2 = Instance.new("Frame")
    local Sections = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
	local UICorner_2 = Instance.new("UICorner")
    local UICorner_3 = Instance.new("UICorner")
    local UIGradient = Instance.new("UIGradient")
    local UIListLayout = Instance.new("UIListLayout")
    local TextButton = Instance.new("TextButton")
    local Scrolls = Instance.new("Folder")
    local UICorner_5 = Instance.new("UICorner")
    local brightness_1_2 = Instance.new("ImageButton")
    local Accion = Instance.new("Frame")
    local UICorner_6 = Instance.new("UICorner")
    local Circle = Instance.new("Frame")
    local UICorner_7 = Instance.new("UICorner")
    local UIGradient_3 = Instance.new("UIGradient")
    local Toggleoff = Instance.new("TextButton")
    local UICorner_8 = Instance.new("UICorner")
    local Title_3 = Instance.new("TextLabel")
    local brightness_1_3 = Instance.new("ImageButton")
    local Action = Instance.new("Frame")
    local UICorner_9 = Instance.new("UICorner")
    local Circle_2 = Instance.new("Frame")
    local UICorner_10 = Instance.new("UICorner")
    local UIGradient_4 = Instance.new("UIGradient")
    local GameTitle = Instance.new("TextLabel")
    local fs = false

    Frame.Parent = SealWare
    Frame.AnchorPoint = Vector2.new(0.5, 0.5)
    Frame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
    Frame.Position = UDim2.new(0.232740432, 0, 0.416443765, 0)
    Frame.Size = UDim2.new(0, 406, 0, 318)

    drag(Frame)

    UICorner.CornerRadius = UDim.new(0, 5)
    UICorner.Parent = Frame

    Frame_2.Parent = Frame
    Frame_2.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
    Frame_2.Size = UDim2.new(0, 126, 0, 318)

    UICorner_2.CornerRadius = UDim.new(0, 5)
    UICorner_2.Parent = Frame_2

    Shade.Name = "Shade"
    Shade.Parent = Frame
    Shade.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Shade.BorderSizePixel = 0
    Shade.Position = UDim2.new(0.310344815, 0, 0.0778432414, 0)
    Shade.Size = UDim2.new(0, 6, 0, 293)

    UIGradient.Transparency =
        NumberSequence.new {
        NumberSequenceKeypoint.new(0.00, 0.00),
        NumberSequenceKeypoint.new(0.93, 0.84),
        NumberSequenceKeypoint.new(1.00, 0.00)
    }
    UIGradient.Parent = Shade

    Seal.Name = "Seal"
    Seal.Parent = Frame
    Seal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Seal.BackgroundTransparency = 1.000
    Seal.Position = UDim2.new(0.00246305414, 0, 0.000486744568, 0)
    Seal.Size = UDim2.new(0, 125, 0, 30)
    Seal.Font = Enum.Font.FredokaOne
    Seal.Text = "Seal"
    Seal.TextColor3 = Color3.fromRGB(247, 247, 247)
    Seal.TextSize = 34.000

    Ware.Name = "Ware"
    Ware.Parent = Frame
    Ware.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Ware.BackgroundTransparency = 1.000
    Ware.Position = UDim2.new(-0.00492610876, 0, 0.0948263705, 0)
    Ware.Size = UDim2.new(0, 131, 0, 20)
    Ware.Font = Enum.Font.FredokaOne
    Ware.Text = "Ware"
    Ware.TextColor3 = Color3.fromRGB(168, 9, 247)
    Ware.TextSize = 25.000

    Bar.Name = "Bar"
    Bar.Parent = Frame
    Bar.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
    Bar.Position = UDim2.new(0.310344815, 0, 0, 0)
    Bar.Size = UDim2.new(0, 280, 0, 24)

    UICorner_3.CornerRadius = UDim.new(0, 3)
    UICorner_3.Parent = Bar

    line.Name = "line"
    line.Parent = Frame
    line.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
    line.BorderSizePixel = 0
    line.Position = UDim2.new(0.310344815, 0, 0.0209999327, 0)
    line.Size = UDim2.new(0, 280, 0, 18)

    line_2.Name = "line"
    line_2.Parent = Frame
    line_2.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
    line_2.BorderSizePixel = 0
    line_2.Position = UDim2.new(0.290640384, 0, 0, 0)
    line_2.Size = UDim2.new(0, 8, 0, 318)

    Sections.Name = "Sections"
    Sections.Parent = Frame
    Sections.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Sections.BackgroundTransparency = 1.000
    Sections.BorderSizePixel = 0
    Sections.Position = UDim2.new(0, 0, 0.198113203, 0)
    Sections.Size = UDim2.new(0, 125, 0, 254)

    UIListLayout.Parent = Sections
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    GameTitle.Name = "GameTitle"
    GameTitle.Parent = Frame
    GameTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    GameTitle.BackgroundTransparency = 1.000
    GameTitle.Position = UDim2.new(0.310344815, 0, 0.000486745761, 0)
    GameTitle.Size = UDim2.new(0, 280, 0, 23)
    GameTitle.Font = Enum.Font.FredokaOne
    GameTitle.Text = name
    GameTitle.TextColor3 = Color3.fromRGB(223, 223, 223)
    GameTitle.TextSize = 20.000

    Scrolls.Name = "Scrolls"
    Scrolls.Parent = Frame

    Frame.Size = UDim2.new(0, 0, 0, 0)
    Frame.ClipsDescendants = true
 
    local function Open(time)
        Frame:TweenSize(UDim2.new(0, 406, 0, 318), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, time, true)
    end

    local function Close(time)
        Frame:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, time, true)
    end

    Open(1.3)

    local Visible = true

	UserInputService.InputBegan:Connect(function(key, p) 
        if key.KeyCode == Bind and not p then
            Visible = not Visible
            if Visible then
                Close(.8)
            else
                Open(1)
            end
        end
    end)

	local tabs = {}
	function tabs:tab(name)
		local TextButton_2 = Instance.new("TextButton")
		TextButton_2.Parent = Sections
        TextButton_2.Name = "Tab"
		TextButton_2.BackgroundColor3 = Color3.fromRGB(168, 9, 247)
		TextButton_2.BackgroundTransparency = 1.000
		TextButton_2.BorderSizePixel = 0
		TextButton_2.Position = UDim2.new(-0.0160000008, 0, 0.113137171, 0)
		TextButton_2.Size = UDim2.new(0, 126, 0, 29)
		TextButton_2.Font = Enum.Font.FredokaOne
		TextButton_2.Text = name
		TextButton_2.TextColor3 = Color3.fromRGB(170, 170, 170)
		TextButton_2.TextSize = 20.000
		
        local UIGradient_2 = Instance.new("UIGradient")
        UIGradient_2.Color =
        ColorSequence.new {
        ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)),
        ColorSequenceKeypoint.new(1.00, Color3.fromRGB(173, 173, 173))
        }
        UIGradient_2.Parent = TextButton_2

		local LabelScroll = Instance.new("ScrollingFrame")
		LabelScroll.Name = "LabelScroll"
		LabelScroll.Parent = Scrolls
		LabelScroll.Active = true
		LabelScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		LabelScroll.BackgroundTransparency = 1.000
		LabelScroll.BorderColor3 = Color3.fromRGB(27, 42, 53)
		LabelScroll.BorderSizePixel = 0
		LabelScroll.Position = UDim2.new(0.325123161, 0, 0.116352201, 0)
		LabelScroll.Size = UDim2.new(0, 270, 0, 271)
		LabelScroll.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
		LabelScroll.ScrollBarThickness = 5
		LabelScroll.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
		LabelScroll.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
        LabelScroll.Visible = false

        local UIListLayout = Instance.new("UIListLayout")
        UIListLayout.Parent = LabelScroll
        UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 5)    

		if fs == false then
			fs = true
            TextButton_2.BackgroundTransparency = 0
            TextButton_2.TextColor3 = Color3.fromRGB(250,250,250)
            LabelScroll.Visible = true  
		end
		
		TextButton_2.MouseButton1Click:Connect(function()
			for i, v in next, Scrolls:GetChildren() do
				if v.Name == "LabelScroll" then
					v.Visible = false
				end
				LabelScroll.Visible = true
			end
            for i,v in next, Sections:GetChildren() do
                if v.Name == "Tab" then
                    TweenService:Create(v,TweenInfo.new(.6),{
                        BackgroundTransparency = 1,
                        TextColor3 = Color3.fromRGB(170, 170, 170)
                    }):Play()
                end
                    TweenService:Create(TextButton_2,TweenInfo.new(.6),{
                        BackgroundTransparency = 0,
                        TextColor3 = Color3.fromRGB(250,250,250)
                }):Play()
            end
		end)

        LabelScroll.CanvasSize = UDim2.new(0, 0, 0, LabelScroll.UIListLayout.AbsoluteContentSize.Y)
 
        local Add = {}

        function Add:Label(name)
            local TextLabel = Instance.new("TextLabel")
            TextLabel.Parent = LabelScroll
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.Position = UDim2.new(0.129629627, 0, 0.634686351, 0)
            TextLabel.Size = UDim2.new(0, 200, 0, 32)
            TextLabel.Font = Enum.Font.FredokaOne
            TextLabel.Text = name
            TextLabel.TextColor3 = Color3.fromRGB(223, 223, 223)
            TextLabel.TextSize = 18.000
            
        end
		function Add:Button(name,funct) 
			local Button = Instance.new("TextButton")
			Button.Name = "Button"
			Button.Parent = LabelScroll
			Button.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
			Button.Position = UDim2.new(0.0500000007, 0, 0, 0)
			Button.Size = UDim2.new(0, 243, 0, 38)
			Button.Font = Enum.Font.SourceSans
			Button.Text = ""
			Button.TextColor3 = Color3.fromRGB(0, 0, 0)
			Button.TextSize = 14.000

		    local UICorner_4 = Instance.new("UICorner")
			UICorner_4.CornerRadius = UDim.new(0, 5)
			UICorner_4.Parent = Button
		
			local Title = Instance.new("TextLabel")
			Title.Name = "Title"
			Title.Parent = Button
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.Position = UDim2.new(0.124472536, 0, 0.0526315793, 0)
			Title.Size = UDim2.new(0, 212, 0, 33)
			Title.Font = Enum.Font.FredokaOne
			Title.Text = tostring(name)
			Title.TextColor3 = Color3.fromRGB(191, 191, 191)
			Title.TextSize = 17.000
			Title.TextXAlignment = Enum.TextXAlignment.Left
		
            local brightness_1 = Instance.new("ImageButton")
			brightness_1.Name = "brightness_1"
			brightness_1.Parent = Button
			brightness_1.BackgroundTransparency = 1.000
			brightness_1.Position = UDim2.new(0.0317497551, 0, 0.283891529, 0)
			brightness_1.Size = UDim2.new(0, 15, 0, 15)
			brightness_1.ZIndex = 2
			brightness_1.Image = "rbxassetid://3926307971"
			brightness_1.ImageColor3 = Color3.fromRGB(191, 191, 191)
			brightness_1.ImageRectOffset = Vector2.new(644, 44)
			brightness_1.ImageRectSize = Vector2.new(36, 36)

            Button.MouseButton1Click:Connect(function()
				pcall(funct)
			end)
            Button.MouseEnter:Connect(function()
                TweenService:Create(Title, TweenInfo.new(0.4), {
                    TextColor3 = Color3.fromRGB(255, 255, 255)
                }):Play()
                TweenService:Create(brightness_1, TweenInfo.new(0.4), {
                    ImageColor3 = Color3.fromRGB(255, 255, 255)
                }):Play()
            end)
            
            Button.MouseLeave:Connect(function()            
                TweenService:Create(Title, TweenInfo.new(0.4), {
                    TextColor3 = Color3.fromRGB(191, 191, 191)
                }):Play()
                TweenService:Create(brightness_1, TweenInfo.new(0.4), {
                    ImageColor3 = Color3.fromRGB(191, 191, 191)
                }):Play()
            end)

            LabelScroll.CanvasSize = UDim2.new(0, 0, 0, LabelScroll.UIListLayout.AbsoluteContentSize.Y)
		end
        function Add:Toggle(name,default,funct)
            local Toggleon = Instance.new("TextButton")
            Toggleon.Name = "Toggle on"
            Toggleon.Parent = LabelScroll
            Toggleon.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
            Toggleon.Position = UDim2.new(0.0500000007, 0, 0, 0)
            Toggleon.Size = UDim2.new(0, 243, 0, 38)
            Toggleon.Font = Enum.Font.SourceSans
            Toggleon.Text = ""
            Toggleon.TextColor3 = Color3.fromRGB(0, 0, 0)
            Toggleon.TextSize = 14.000
        
            local UICorner_5 = Instance.new("UICorner")
            UICorner_5.CornerRadius = UDim.new(0, 5)
            UICorner_5.Parent = Toggleon
        
            local Title_2 = Instance.new("TextLabel")
            Title_2.Name = "Title"
            Title_2.Parent = Toggleon
            Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Title_2.BackgroundTransparency = 1.000
            Title_2.Position = UDim2.new(0.124472536, 0, 0.0526315793, 0)
            Title_2.Size = UDim2.new(0, 212, 0, 33)
            Title_2.Font = Enum.Font.FredokaOne
            Title_2.Text = name
            Title_2.TextColor3 = Color3.fromRGB(191, 191, 191)
            Title_2.TextSize = 17.000
            Title_2.TextXAlignment = Enum.TextXAlignment.Left
        
            local brightness_1_2 = Instance.new("ImageButton")
            brightness_1_2.Name = "brightness_1"
            brightness_1_2.Parent = Toggleon
            brightness_1_2.BackgroundTransparency = 1.000
            brightness_1_2.Position = UDim2.new(0.0320000015, 0, 0.284000009, 0)
            brightness_1_2.Size = UDim2.new(0, 15, 0, 15)
            brightness_1_2.ZIndex = 2
            brightness_1_2.Image = "rbxassetid://3926307971"
            brightness_1_2.ImageColor3 = Color3.fromRGB(191, 191, 191)
            brightness_1_2.ImageRectOffset = Vector2.new(644, 44)
            brightness_1_2.ImageRectSize = Vector2.new(36, 36)
        
            local Accion = Instance.new("Frame")
            Accion.Name = "Accion"
            Accion.Parent = Toggleon
            Accion.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
            Accion.Position = UDim2.new(0.724279821, 0, 0.131578952, 0)
            Accion.Size = UDim2.new(0, 60, 0, 27)
        
            local UICorner_6 = Instance.new("UICorner")
            UICorner_6.Parent = Accion

            local Circle = Instance.new("Frame")
            Circle.Name = "Circle"
            Circle.Parent = Accion
            Circle.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
            Circle.Position = UDim2.new(-0.00905354787, 0, 0, 0)
            Circle.Size = UDim2.new(0, 27, 0, 27)
        
            local UICorner_7 = Instance.new("UICorner")
            UICorner_7.Parent = Circle
        
            local UIGradient_3 = Instance.new("UIGradient")
            UIGradient_3.Color =
                ColorSequence.new {
                ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)),
                ColorSequenceKeypoint.new(1.00, Color3.fromRGB(175, 175, 175))
            }
            UIGradient_3.Parent = Accion

            local Toggle = default or false

            if default then
                Accion.BackgroundColor3 = Color3.fromRGB(168, 9, 247)
                Circle.Position = UDim2.new(0.550000012, 0, 0, 0)
            end

            Toggleon.MouseEnter:Connect(function()
                TweenService:Create(Title_2, TweenInfo.new(0.4), {
                    TextColor3 = Color3.fromRGB(255, 255, 255)
                }):Play()
                TweenService:Create(brightness_1_2, TweenInfo.new(0.4), {
                    ImageColor3 = Color3.fromRGB(255, 255, 255)
                }):Play()
            end)
            
            Toggleon.MouseLeave:Connect(function()            
                TweenService:Create(Title_2, TweenInfo.new(0.4), {
                    TextColor3 = Color3.fromRGB(191, 191, 191)
                }):Play()
                TweenService:Create( brightness_1_2, TweenInfo.new(0.4), {
                    ImageColor3 = Color3.fromRGB(191, 191, 191)
                }):Play()
            end)

            Toggleon.MouseButton1Click:Connect(function()
                Toggle = not Toggle
                pcall(funct, Toggle)
                if Toggle then
                    TweenService:Create(Accion,TweenInfo.new(.6),{
                        BackgroundColor3 = Color3.fromRGB(168, 9, 247)
                    }):Play()
                    TweenService:Create(Circle,TweenInfo.new(.6),{
                        Position = UDim2.new(0.550000012, 0, 0, 0)
                    }):Play()
                else
                    TweenService:Create(Accion,TweenInfo.new(.6),{
                        BackgroundColor3 = Color3.fromRGB(49, 49, 49)
                    }):Play()
                    TweenService:Create(Circle,TweenInfo.new(.6),{
                        Position = UDim2.new(-0.00905354787, 0, 0, 0)
                    }):Play()
                end
			end)
            LabelScroll.CanvasSize = UDim2.new(0, 0, 0, LabelScroll.UIListLayout.AbsoluteContentSize.Y)            
        end
        function Add:KeyBind(name,funct)
            local KeyBind = Instance.new("TextButton")
            KeyBind.Name = "KeyBind"
            KeyBind.Parent = LabelScroll
            KeyBind.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
            KeyBind.Position = UDim2.new(0.0500000007, 0, 0, 0)
            KeyBind.Size = UDim2.new(0, 243, 0, 38)
            KeyBind.Font = Enum.Font.SourceSans
            KeyBind.Text = ""
            KeyBind.TextColor3 = Color3.fromRGB(0, 0, 0)
            KeyBind.TextSize = 14.000
        
            local UICorner_15 = Instance.new("UICorner")
            UICorner_15.CornerRadius = UDim.new(0, 5)
            UICorner_15.Parent = KeyBind
        
            local Title_4 = Instance.new("TextLabel")
            Title_4.Name = "Title"
            Title_4.Parent = KeyBind
            Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Title_4.BackgroundTransparency = 1.000
            Title_4.Position = UDim2.new(0.124472536, 0, 0.0526315793, 0)
            Title_4.Size = UDim2.new(0, 212, 0, 33)
            Title_4.Font = Enum.Font.FredokaOne
            Title_4.Text = name
            Title_4.TextColor3 = Color3.fromRGB(191, 191, 191)
            Title_4.TextSize = 17.000
            Title_4.TextXAlignment = Enum.TextXAlignment.Left
        
            local brightness_1_5 = Instance.new("ImageButton")
            brightness_1_5.Name = "brightness_1"
            brightness_1_5.Parent = KeyBind
            brightness_1_5.BackgroundTransparency = 1.000
            brightness_1_5.Position = UDim2.new(0.0317497551, 0, 0.283891529, 0)
            brightness_1_5.Size = UDim2.new(0, 15, 0, 15)
            brightness_1_5.ZIndex = 2
            brightness_1_5.Image = "rbxassetid://3926307971"
            brightness_1_5.ImageColor3 = Color3.fromRGB(191, 191, 191)
            brightness_1_5.ImageRectOffset = Vector2.new(644, 44)
            brightness_1_5.ImageRectSize = Vector2.new(36, 36)
        
            local Key = Instance.new("Frame")
            Key.Name = "Key"
            Key.Parent = KeyBind
            Key.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
            Key.Position = UDim2.new(0.724279821, 0, 0.157894745, 0)
            Key.Size = UDim2.new(0, 60, 0, 25)
        
            local UICorner_16 = Instance.new("UICorner")
            UICorner_16.CornerRadius = UDim.new(0, 2147483647)
            UICorner_16.Parent = Key
        
            local UIGradient_6 = Instance.new("UIGradient")
            UIGradient_6.Color =
                ColorSequence.new {
                ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)),
                ColorSequenceKeypoint.new(1.00, Color3.fromRGB(175, 175, 175))
            }
            UIGradient_6.Parent = Key

            local KeyName = Instance.new("TextLabel")
          KeyName.Name = "Key Name"
            KeyName.Parent = Key
            KeyName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            KeyName.BackgroundTransparency = 1.000
            KeyName.Size = UDim2.new(0, 60, 0, 25)
            KeyName.Font = Enum.Font.FredokaOne
            KeyName.Text = ". . ."
            KeyName.TextColor3 = Color3.fromRGB(166, 166, 166)
            KeyName.TextSize = 14.000

            KeyBind.MouseEnter:Connect(function()
                TweenService:Create(Title_4, TweenInfo.new(0.4), {
                    TextColor3 = Color3.fromRGB(255, 255, 255)
                }):Play()
                TweenService:Create(brightness_1_5, TweenInfo.new(0.4), {
                    ImageColor3 = Color3.fromRGB(255, 255, 255)
                }):Play()
            end)

            KeyBind.MouseLeave:Connect(function()            
                TweenService:Create(Title_4, TweenInfo.new(0.4), {
                    TextColor3 = Color3.fromRGB(191, 191, 191)
                }):Play()
                TweenService:Create(brightness_1_5, TweenInfo.new(0.4), {
                    ImageColor3 = Color3.fromRGB(191, 191, 191)
                }):Play()
            end)
            

            KeyBind.MouseButton1Click:Connect(function()
                local input = game:GetService("UserInputService").InputBegan:wait().KeyCode.Name
                if input ~= "Unknown" then
                    KeyName.Text = input
                    Key = input
                end
                game:GetService("UserInputService").InputBegan:connect(function(current, pressed)
                    if not pressed then
                        if current.KeyCode.Name == Key then
                            pcall(funct,Key)
                        end
                    end
                end)
            end)
            LabelScroll.CanvasSize = UDim2.new(0, 0, 0, LabelScroll.UIListLayout.AbsoluteContentSize.Y)
        end
        function Add:Slider(name,min,max,start,funct)
            local Slider = Instance.new("TextButton")
            Slider.Name = "Slider"
            Slider.Parent = LabelScroll
            Slider.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
            Slider.Position = UDim2.new(0.0500000007, 0, 0.612546146, 0)
            Slider.Size = UDim2.new(0, 243, 0, 62)
            Slider.Font = Enum.Font.SourceSans
            Slider.Text = ""
            Slider.TextColor3 = Color3.fromRGB(0, 0, 0)
            Slider.TextSize = 14.000
            Slider.ClipsDescendants = true
        
            local UICorner_11 = Instance.new("UICorner")
            UICorner_11.CornerRadius = UDim.new(0, 5)
            UICorner_11.Parent = Slider

            local TextLabel_2 = Instance.new("TextLabel")
            TextLabel_2.Parent = Slider
            TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_2.BackgroundTransparency = 1.000
            TextLabel_2.Position = UDim2.new(0.124472536, 0, 0.0526315793, 0)
            TextLabel_2.Size = UDim2.new(0, 212, 0, 33)
            TextLabel_2.Font = Enum.Font.FredokaOne
            TextLabel_2.Text = name
            TextLabel_2.TextColor3 = Color3.fromRGB(191, 191, 191)
            TextLabel_2.TextSize = 17.000
            TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

            local brightness_1_4 = Instance.new("ImageButton")
            brightness_1_4.Name = "brightness_1"
            brightness_1_4.Parent = Slider
            brightness_1_4.BackgroundTransparency = 1.000
            brightness_1_4.Position = UDim2.new(0.0317497514, 0, 0.19136183, 0)
            brightness_1_4.Size = UDim2.new(0, 15, 0, 15)
            brightness_1_4.ZIndex = 2
            brightness_1_4.Image = "rbxassetid://3926307971"
            brightness_1_4.ImageColor3 = Color3.fromRGB(191, 191, 191)
            brightness_1_4.ImageRectOffset = Vector2.new(644, 44)
            brightness_1_4.ImageRectSize = Vector2.new(36, 36)
        
            local Gray = Instance.new("Frame")
            Gray.Name = "Gray"
            Gray.Parent = Slider
            Gray.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
            Gray.Position = UDim2.new(0.03, 0, 0.681663752, 0)
            Gray.Size = UDim2.new(0, 229, 0, 9)
        
            local UICorner_12 = Instance.new("UICorner")
            UICorner_12.Parent = Gray
        
            local Color = Instance.new("Frame")
            Color.Name = "Color"
            Color.Parent = Slider
            Color.BackgroundColor3 = Color3.fromRGB(168, 9, 247)
            Color.Position = UDim2.new(0.03, 0, 0.681663752, 0)
            Color.Size = UDim2.new(0, 34, 0, 9)
            
        
            local UICorner_13 = Instance.new("UICorner")
            UICorner_13.Parent = Color

            local UIGradient_5 = Instance.new("UIGradient")
            UIGradient_5.Color =
                ColorSequence.new {
                ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)),
                ColorSequenceKeypoint.new(1.00, Color3.fromRGB(152, 152, 152))
            }
            UIGradient_5.Parent = Color
        
            local Circle_3 = Instance.new("TextButton")
            Circle_3.Name = "Circle"
            Circle_3.Parent = Color
            Circle_3.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
            Circle_3.Position = UDim2.new(0.925999999, 0, -0.460999995, 0)
            Circle_3.Size = UDim2.new(0, 17, 0, 17)
            Circle_3.Font = Enum.Font.SourceSans
            Circle_3.Text = ""
            Circle_3.TextColor3 = Color3.fromRGB(0, 0, 0)
            Circle_3.TextSize = 14.000
        
            local UICorner_14 = Instance.new("UICorner")
            UICorner_14.CornerRadius = UDim.new(0, 2147483647)
            UICorner_14.Parent = Circle_3
        
            local TextLabel_3 = Instance.new("TextLabel")
            TextLabel_3.Parent = Slider
            TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_3.BackgroundTransparency = 1.000
            TextLabel_3.Position = UDim2.new(0.675912857, 0, 0.0526315011, 0)
            TextLabel_3.Size = UDim2.new(0, 77, 0, 33)
            TextLabel_3.Font = Enum.Font.FredokaOne
            TextLabel_3.Text = "("..start..")"
            TextLabel_3.TextColor3 = Color3.fromRGB(140, 140, 140)
            TextLabel_3.TextSize = 17.000
            TextLabel_3.TextXAlignment = Enum.TextXAlignment.Right

            local function move(input)
                local pos =
                    UDim2.new(
                        math.clamp((input.Position.X - Gray.AbsolutePosition.X) / Gray.AbsoluteSize.X, 0, 1),
                        -6,
                    -1.30499995,
                        0
                    )
                local pos1 =
                    UDim2.new(
                        math.clamp((input.Position.X - Gray.AbsolutePosition.X) / Gray.AbsoluteSize.X, 0, 1),
                        0,
                        0,
                        9
                    )
                Color:TweenSize(pos1, "Out", "Sine", 0.1, true)
                local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
                TextLabel_3.Text = tostring(value)
                pcall(funct, value)
            end

            local dragging

            Circle_3.InputBegan:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        dragging = true
                    end
                end
            )
            Circle_3.InputEnded:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        dragging = false
                    end
                end
            )
            
            game:GetService("UserInputService").InputChanged:Connect(function(input)
					if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
						move(input)
					end
			end)

            Slider.MouseEnter:Connect(function()
                TweenService:Create(TextLabel_2, TweenInfo.new(0.4), {
                    TextColor3 = Color3.fromRGB(255, 255, 255)
                }):Play()
                TweenService:Create(TextLabel_3, TweenInfo.new(0.4), {
                    TextColor3 = Color3.fromRGB(191, 191, 191)
                }):Play()
                TweenService:Create(brightness_1_4, TweenInfo.new(0.4), {
                    ImageColor3 = Color3.fromRGB(255, 255, 255)
                }):Play()
            end)

            Slider.MouseLeave:Connect(function()            
                TweenService:Create(TextLabel_2, TweenInfo.new(0.4), {
                    TextColor3 = Color3.fromRGB(191, 191, 191)
                }):Play()
                TweenService:Create(brightness_1_4, TweenInfo.new(0.4), {
                    ImageColor3 = Color3.fromRGB(191, 191, 191)
                }):Play()
                TweenService:Create(TextLabel_3, TweenInfo.new(0.4), {
                    TextColor3 = Color3.fromRGB(140, 140, 140)
                }):Play()
            end)

            LabelScroll.CanvasSize = UDim2.new(0, 0, 0, LabelScroll.UIListLayout.AbsoluteContentSize.Y)
        end
		return Add
	end
	return tabs
end
return Library
