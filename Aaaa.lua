--[[

██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
█░░░░░░██████████░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░░░███░░░░░░░░░░░░░░█░░░░░░██░░░░░░█░░░░░░░░░░░░░░░░███░░░░░░░░██░░░░░░░░█
█░░▄▀░░░░░░░░░░░░░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀▄▀░░███░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀▄▀░░███░░▄▀▄▀░░██░░▄▀▄▀░░█
█░░▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░▄▀░░███░░▄▀░░░░░░░░░░█░░▄▀░░██░░▄▀░░█░░▄▀░░░░░░░░▄▀░░███░░░░▄▀░░██░░▄▀░░░░█
█░░▄▀░░░░░░▄▀░░░░░░▄▀░░█░░▄▀░░█████████░░▄▀░░████░░▄▀░░███░░▄▀░░█████████░░▄▀░░██░░▄▀░░█░░▄▀░░████░░▄▀░░█████░░▄▀▄▀░░▄▀▄▀░░███
█░░▄▀░░██░░▄▀░░██░░▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░▄▀░░███░░▄▀░░█████████░░▄▀░░██░░▄▀░░█░░▄▀░░░░░░░░▄▀░░█████░░░░▄▀▄▀▄▀░░░░███
█░░▄▀░░██░░▄▀░░██░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀▄▀░░███░░▄▀░░█████████░░▄▀░░██░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀▄▀░░███████░░░░▄▀░░░░█████
█░░▄▀░░██░░░░░░██░░▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░yue<3▀░░░░███░░▄▀░░█████████░░▄▀░░██░░▄▀░░█░░▄▀░░░░░░▄▀░░░░█████████░░▄▀░░███████
█░░▄▀░░██████████░░▄▀░░█░░▄▀░░█████████░░▄▀░░██░░▄▀░░█████░░▄▀░░█████████░░▄▀░░██░░▄▀░░█░░▄▀░░██░░▄▀░░███████████░░▄▀░░███████
█░░▄▀░░██████████░░▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░██░░▄▀░░░░░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░▄▀░░█░░▄▀░░██░░▄▀░░░░░░███████░░▄▀░░███████
█░░▄▀░░██████████░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀▄▀▄▀░░███████░░▄▀░░███████
█░░░░░░██████████░░░░░░█░░░░░░░░░░░░░░█░░░░░░██░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░██░░░░░░░░░░███████░░░░░░███████
██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████

edited: 1/26
developers:
discord shinra

]]

local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local HTTPService = game:GetService("HttpService")

local Library = {
	Themes = {
		Legacy = {
			Main = Color3.fromHSV(262/360, 60/255, 34/255),
			Secondary = Color3.fromHSV(240/360, 40/255, 63/255),
			Tertiary = Color3.fromHSV(260/360, 60/255, 148/255),

			StrongText = Color3.fromHSV(0, 0, 1),		
			WeakText = Color3.fromHSV(0, 0, 172/255)
		},
		Serika = {
			Main = Color3.fromRGB(50, 52, 55),
			Secondary = Color3.fromRGB(80, 82, 85),
			Tertiary = Color3.fromRGB(226, 183, 20),

			StrongText = Color3.fromHSV(0, 0, 1),		
			WeakText = Color3.fromHSV(0, 0, 172/255)
		},
		Dark = {
			Main = Color3.fromRGB(30, 30, 35),
			Secondary = Color3.fromRGB(50, 50, 55),
			Tertiary = Color3.fromRGB(70, 130, 180),

			StrongText = Color3.fromHSV(0, 0, 1),		
			WeakText = Color3.fromHSV(0, 0, 172/255)
		},
		Rust = {
			Main = Color3.fromRGB(37, 35, 33),
			Secondary = Color3.fromRGB(65, 63, 63),
			Tertiary = Color3.fromRGB(237, 94, 38),

			StrongText = Color3.fromHSV(0, 0, 1),		
			WeakText = Color3.fromHSV(0, 0, 172/255)
		},
		Aqua = {
			Main = Color3.fromRGB(19, 21, 21),
			Secondary = Color3.fromRGB(65, 63, 63),
			Tertiary = Color3.fromRGB(51, 153, 137),

			StrongText = Color3.fromHSV(0, 0, 1),        
			WeakText = Color3.fromHSV(0, 0, 172/255)
		},
		Vaporwave = {},
		OperaGX = {},
		VisualStudio = {}
	},
	ColorPickerStyles = {
		Legacy = 0,
		Modern = 1
	},
	Toggled = true,
	ThemeObjects = {
		Main = {},
		Secondary = {},
		Tertiary = {},

		StrongText = {},
		WeakText = {}
	},
	WelcomeText = nil,
	DisplayName = nil,
	DragSpeed = 0.06,
	LockDragging = false,
	ToggleKey = Enum.KeyCode.Home,
	UrlLabel = nil,
	Url = nil

}
Library.__index = Library

local selectedTab

Library._promptExists = false
Library._colorPickerExists = false

local GlobalTweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)

function Library:set_defaults(defaults, options)
	defaults = defaults or {}
	options = options or {}
	for option, value in next, options do
		defaults[option] = value
	end
	return defaults
end

function Library:change_theme(toTheme)
	Library.CurrentTheme = toTheme
	local c = self:lighten(toTheme.Tertiary, 20)
	Library.DisplayName.Text = "Welcome, <font color='rgb(" ..  math.floor(c.R*255) .. "," .. math.floor(c.G*255) .. "," .. math.floor(c.B*255) .. ")'> <b>" .. LocalPlayer.DisplayName .. "</b> </font>"
	for color, objects in next, Library.ThemeObjects do
		local themeColor = Library.CurrentTheme[color]
		for _, obj in next, objects do
			local element, property, theme, colorAlter = obj[1], obj[2], obj[3], obj[4] or 0
			local themeColor = Library.CurrentTheme[theme]
			local modifiedColor = themeColor
			if colorAlter < 0 then
				modifiedColor = Library:darken(themeColor, -1 * colorAlter)
			elseif colorAlter > 0 then
				modifiedColor = Library:lighten(themeColor, colorAlter)
			end
			element:tween{[property] = modifiedColor}
		end
	end
end

function Library:object(class, properties)
	local localObject = Instance.new(class)

	local forcedProps = {
		BorderSizePixel = 0,
		AutoButtonColor = false,
		Font = Enum.Font.SourceSans,
		Text = ""
	}

	for property, value in next, forcedProps do
		pcall(function()
			localObject[property] = value
		end)
	end

	local methods = {}

	methods.AbsoluteObject = localObject

	function methods:tween(options, callback)
		local options = Library:set_defaults({
			Length = 0.2,
			Style = Enum.EasingStyle.Linear,
			Direction = Enum.EasingDirection.InOut
		}, options)
		callback = callback or function() return end


		local ti = TweenInfo.new(options.Length, options.Style, options.Direction)
		options.Length = nil
		options.Style = nil 
		options.Direction = nil

		local tween = TweenService:Create(localObject, ti, options); tween:Play()

		tween.Completed:Connect(function()
			callback()
		end)

		return tween
	end

	function methods:round(radius)
		radius = radius or 6
		Library:object("UICorner", {
			Parent = localObject,
			CornerRadius = UDim.new(0, radius)
		})
		return methods
	end

	function methods:object(class, properties)
		local properties = properties or {}
		properties.Parent = localObject
		return Library:object(class, properties)
	end

	function methods:crossfade(p2, length)
		length = length or .2
		self:tween({ImageTransparency = 1})
		p2:tween({ImageTransparency = 0})
	end

	function methods:fade(state, colorOverride, length, instant)
		length = length or 0.2
		if not rawget(self, "fadeFrame") then
			local frame = self:object("Frame", {
				BackgroundColor3 = colorOverride or self.BackgroundColor3,
				BackgroundTransparency = (state and 1) or 0,
				Size = UDim2.fromScale(1, 1),
				Centered = true,
				ZIndex = 999
			}):round(self.AbsoluteObject:FindFirstChildOfClass("UICorner") and self.AbsoluteObject:FindFirstChildOfClass("UICorner").CornerRadius.Offset or 0)
			rawset(self, "fadeFrame", frame)
		else
			self.fadeFrame.BackgroundColor3 = colorOverride or self.BackgroundColor3
		end

		if instant then
			if state then
				self.fadeFrame.BackgroundTransparency = 0
				self.fadeFrame.Visible = true
			else
				self.fadeFrame.BackgroundTransparency = 1
				self.fadeFrame.Visible = false
			end
		else
			if state then
				self.fadeFrame.BackgroundTransparency = 1
				self.fadeFrame.Visible = true
				self.fadeFrame:tween{BackgroundTransparency = 0, Length = length}
			else
				self.fadeFrame.BackgroundTransparency = 0
				self.fadeFrame:tween({BackgroundTransparency = 1, Length = length}, function()
					self.fadeFrame.Visible = false
				end)
			end
		end	
	end

	function methods:stroke(color, thickness, strokeMode)

		thickness = thickness or 1
		strokeMode = strokeMode or Enum.ApplyStrokeMode.Border
		local stroke = self:object("UIStroke", {
			ApplyStrokeMode = strokeMode,
			Thickness = thickness
		})

		if type(color) == "table" then
			local theme, colorAlter = color[1], color[2] or 0
			local themeColor = Library.CurrentTheme[theme]
			local modifiedColor = themeColor
			if colorAlter < 0 then
				modifiedColor = Library:darken(themeColor, -1 * colorAlter)
			elseif colorAlter > 0 then
				modifiedColor = Library:lighten(themeColor, colorAlter)
			end
			stroke.Color = modifiedColor
			table.insert(Library.ThemeObjects[theme], {stroke, "Color", theme, colorAlter})
		elseif type(color) == "string" then
			local themeColor = Library.CurrentTheme[color]
			stroke.Color = themeColor
			table.insert(Library.ThemeObjects[color], {stroke, "Color", color, 0})
		else
			stroke.Color = color
		end

		return methods
	end

	function methods:tooltip(text)
		local tooltipContainer = methods:object("TextLabel", {
			Theme = {
				BackgroundColor3 = {"Main", 10},
				TextColor3 = {"WeakText"}
			},
			TextSize = 16,
			Text = text,
			Position = UDim2.new(0.5, 0, 0, -8),
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
			AnchorPoint = Vector2.new(0.5, 1),
			BackgroundTransparency = 1,
			TextTransparency = 1
		}):round(5)
		tooltipContainer.Size = UDim2.fromOffset(tooltipContainer.TextBounds.X + 16, tooltipContainer.TextBounds.Y + 8)

		local tooltipArrow = tooltipContainer:object("ImageLabel", {
			Image = "http://www.roblox.com/asset/?id=4292970642",
			Theme = {ImageColor3 = {"Main", 10}},
			AnchorPoint = Vector2.new(0.5, 0),
			Rotation = 180,
			Position = UDim2.fromScale(0.5, 1),
			Size = UDim2.fromOffset(10, 6),
			BackgroundTransparency = 1,
			ImageTransparency = 1
		})

		local hovered = false

		methods.MouseEnter:connect(function()
			hovered = true
			wait(0.2)
			if hovered then
				tooltipContainer:tween{BackgroundTransparency = 0.2, TextTransparency = 0.2}
				tooltipArrow:tween{ImageTransparency = 0.2}
			end
		end)

		methods.MouseLeave:connect(function()
			hovered = false
			tooltipContainer:tween{BackgroundTransparency = 1, TextTransparency = 1}
			tooltipArrow:tween{ImageTransparency = 1}
		end)

		return methods
	end

	local customHandlers = {
		Centered = function(value)
			if value then
				localObject.AnchorPoint = Vector2.new(0.5, 0.5)
				localObject.Position = UDim2.fromScale(0.5, 0.5)
			end	
		end,
		Theme = function(value)
			for property, obj in next, value do
				if type(obj) == "table" then
					local theme, colorAlter = obj[1], obj[2] or 0
					local themeColor = Library.CurrentTheme[theme]
					local modifiedColor = themeColor
					if colorAlter < 0 then
						modifiedColor = Library:darken(themeColor, -1 * colorAlter)
					elseif colorAlter > 0 then
						modifiedColor = Library:lighten(themeColor, colorAlter)
					end
					localObject[property] = modifiedColor
					table.insert(self.ThemeObjects[theme], {methods, property, theme, colorAlter})
				else
					local themeColor = Library.CurrentTheme[obj]
					localObject[property] = themeColor
					table.insert(self.ThemeObjects[obj], {methods, property, obj, 0})
				end
			end
		end,
	}

	for property, value in next, properties do
		if customHandlers[property] then
			customHandlers[property](value)
		else
			localObject[property] = value
		end
	end

	return setmetatable(methods, {
		__index = function(_, property)
			return localObject[property]
		end,
		__newindex = function(_, property, value)
			localObject[property] = value
		end,
	})
end

function Library:show(state)
	self.Toggled = state
	self.mainFrame.ClipsDescendants = true
	if state then
		self.mainFrame:tween({Size = self.mainFrame.oldSize, Length = 0.25}, function()
			rawset(self.mainFrame, "oldSize", (state and self.mainFrame.oldSize) or self.mainFrame.Size)
			self.mainFrame.ClipsDescendants = false
		end)
		wait(0.15)
		self.mainFrame:fade(not state, self.mainFrame.BackgroundColor3, 0.15)
	else		
		self.mainFrame:fade(not state, self.mainFrame.BackgroundColor3, 0.15)
		wait(0.1)
		self.mainFrame:tween{Size = UDim2.new(), Length = 0.25}
	end
end

function Library:darken(color, f)
	local h, s, v = Color3.toHSV(color)
	f = 1 - ((f or 15) / 80)
	return Color3.fromHSV(h, math.clamp(s/f, 0, 1), math.clamp(v*f, 0, 1))
end

function Library:lighten(color, f)
	local h, s, v = Color3.toHSV(color)
	f = 1 - ((f or 15) / 80)
	return Color3.fromHSV(h, math.clamp(s*f, 0, 1), math.clamp(v/f, 0, 1))
end

--[[ old lighten/darken functions, may revert if contrast gets fucked up

	function Library:darken(color, f)
		local h, s, v = Color3.toHSV(color)
		f = f or 15
		return Color3.fromHSV(h, s, math.clamp(v - (f/255), 0, 1))
	end

	function Library:lighten(color, f)
		local h, s, v = Color3.toHSV(color)
		f = f or 15
		return Color3.fromHSV(h, s, math.clamp(v + (f/255), 0, 1))
	end
	
]]

local updateSettings = function() end

function Library:set_status(txt)
	self.statusText.Text = txt
end

function Library:create(options)

	local settings = {
		Theme = "Dark"
	}

	if readfile and writefile and isfile then
		if not isfile("MercurySettings.json") then
			writefile("MercurySettings.json", HTTPService:JSONEncode(settings))
		end
		settings = HTTPService:JSONDecode(readfile("MercurySettings.json"))
		Library.CurrentTheme = Library.Themes[settings.Theme]
		updateSettings = function(property, value)
			settings[property] = value
			writefile("MercurySettings.json", HTTPService:JSONEncode(settings))
		end
	end

	options = self:set_defaults({
		Name = "Anarchy Services",
		Size = UDim2.fromOffset(600, 400),
		Theme = self.Themes[settings.Theme],
		Link = "https://discord.gg/AnarchyServices"
	}, options)

	if getgenv and getgenv().MercuryUI then
		getgenv():MercuryUI()
		getgenv().MercuryUI = nil
	end



	if options.Link:sub(-1, -1) == "/" then
		options.Link = options.Link:sub(1, -2)
	end

	if options.Theme.Light then
		self.darken, self.lighten = self.lighten, self.darken
	end

	self.CurrentTheme = options.Theme

	local gui = self:object("ScreenGui", {
		Parent = (RunService:IsStudio() and LocalPlayer.PlayerGui) or game:GetService("CoreGui"),
		ZIndexBehavior = Enum.ZIndexBehavior.Global
	})

	local notificationHolder = gui:object("Frame", {
		AnchorPoint = Vector2.new(1, 1),
		BackgroundTransparency = 1,
		Position = UDim2.new(1, -30,1, -30),
		Size = UDim2.new(0, 300, 1, -60)
	})

	local _notiHolderList = notificationHolder:object("UIListLayout", {
		Padding = UDim.new(0, 20),
		VerticalAlignment = Enum.VerticalAlignment.Bottom
	})

	local core = gui:object("Frame", {
		Size = UDim2.new(),
		Theme = {BackgroundColor3 = "Main"},
		Centered = true,
		ClipsDescendants = true		
	}):round(10)

	core:fade(true, nil, 0.2, true)


	core:fade(false, nil, 0.4)
	core:tween({Size = options.Size, Length = 0.3}, function()
		core.ClipsDescendants = false
	end)

	do
		local S, Event = pcall(function()
			return core.MouseEnter
		end)

		if S then
			core.Active = true;

			Event:connect(function()
				local Input = core.InputBegan:connect(function(Key)
					if Key.UserInputType == Enum.UserInputType.MouseButton1 then
						local ObjectPosition = Vector2.new(Mouse.X - core.AbsolutePosition.X, Mouse.Y - core.AbsolutePosition.Y)
						while RunService.RenderStepped:wait() and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do

							if Library.LockDragging then
								local FrameX, FrameY = math.clamp(Mouse.X - ObjectPosition.X, 0, gui.AbsoluteSize.X - core.AbsoluteSize.X), math.clamp(Mouse.Y - ObjectPosition.Y, 0, gui.AbsoluteSize.Y - core.AbsoluteSize.Y)
								core:tween{
									Position = UDim2.fromOffset(FrameX + (core.Size.X.Offset * core.AnchorPoint.X), FrameY + (core.Size.Y.Offset * core.AnchorPoint.Y)),
									Length = Library.DragSpeed
								}
							else
								core:tween{
									Position = UDim2.fromOffset(Mouse.X - ObjectPosition.X + (core.Size.X.Offset * core.AnchorPoint.X), Mouse.Y - ObjectPosition.Y + (core.Size.Y.Offset * core.AnchorPoint.Y)),
									Length = Library.DragSpeed	
								}
							end	
							--[[core.AbsoluteObject:TweenPosition(
								UDim2.new(0, Mouse.X - ObjectPosition.X + (core.Size.X.Offset * core.AnchorPoint.X), 0, Mouse.Y - ObjectPosition.Y + (core.Size.Y.Offset * core.AnchorPoint.Y)),           
								Enum.EasingDirection.In,
								Enum.EasingStyle.Sine,
								Library.DragSpeed,
								true
								
								--
								core:tween{
								Position = UDim2.new(0, Mouse.X - ObjectPosition.X + (core.Size.X.Offset * core.AnchorPoint.X), 0, Mouse.Y - ObjectPosition.Y + (core.Size.Y.Offset * core.AnchorPoint.Y)),
								Direction = Enum.EasingDirection.Out,
								Style = Enum.EasingStyle.Quad,
								Length = Library.DragSpeed
							}
							)]]
						end
					end
				end)

				local Leave
				Leave = core.MouseLeave:connect(function()
					Input:disconnect()
					Leave:disconnect()
				end)
			end)
		end
	end

	rawset(core, "oldSize", options.Size)

	self.mainFrame = core

	local tabButtons = core:object("ScrollingFrame", {
		Size = UDim2.new(1, -40, 0, 25),
		Position = UDim2.fromOffset(5, 5),
		BackgroundTransparency = 1,
		ClipsDescendants = true,
		ScrollBarThickness = 0,
		ScrollingDirection = Enum.ScrollingDirection.X,
		AutomaticCanvasSize = Enum.AutomaticSize.X
	})

	tabButtons:object("UIListLayout", {
		FillDirection = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, 4)
	})

	local closeButton = core:object("ImageButton", {
		BackgroundTransparency = 1,
		Size = UDim2.fromOffset(14, 14),
		Position = UDim2.new(1, -11, 0, 11),
		Theme = {ImageColor3 = "StrongText"},
		Image = "http://www.roblox.com/asset/?id=8497487650",
		AnchorPoint = Vector2.new(1)
	})

	closeButton.MouseEnter:connect(function()
		closeButton:tween{ImageColor3 = Color3.fromRGB(255, 124, 142)}
	end)

	closeButton.MouseLeave:connect(function()
		closeButton:tween{ImageColor3 = Library.CurrentTheme.StrongText}
	end)

	local function closeUI()
		core.ClipsDescendants = true
		core:fade(true)
		wait(0.1)
		core:tween({Size = UDim2.new()}, function()
			gui.AbsoluteObject:Destroy()
		end)
	end

	if getgenv then
		getgenv().MercuryUI = closeUI
	end

	closeButton.MouseButton1Click:connect(function()
		closeUI()
	end)

	local urlBar = core:object("Frame", {
		Size = UDim2.new(1, -10, 0, 25),
		Position = UDim2.new(0, 5,0, 35),
		Theme = {BackgroundColor3 = "Secondary"}
	}):round(5)

	local searchIcon = urlBar:object("ImageLabel", {
		AnchorPoint = Vector2.new(0, .5),
		Position = UDim2.new(0, 5,0.5, 0);
		Theme = {ImageColor3 = "Tertiary"},
		Size = UDim2.fromOffset(16, 16),
		Image = "http://www.roblox.com/asset/?id=8497489946",
		BackgroundTransparency = 1
	})

	local link = urlBar:object("TextLabel", {
		AnchorPoint = Vector2.new(0, 0.5),
		Position = UDim2.new(0, 26, 0.5, 0),
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -30, .6, 0),
		Text = options.Link .. "/home",
		Theme = {TextColor3 = "WeakText"},
		TextSize = 14,
		TextScaled = false,
		TextXAlignment = Enum.TextXAlignment.Left
	})

	Library.UrlLabel = link
	Library.Url = options.Link

	local shadowHolder = core:object("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
		ZIndex = 0
	})

	local shadow = shadowHolder:object("ImageLabel", {
		Centered = true,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 47,1, 47),
		ZIndex = 0,
		Image = "rbxassetid://6015897843",
		ImageColor3 = Color3.new(0, 0, 0),
		ImageTransparency = .6,
		SliceCenter = Rect.new(47, 47, 450, 450),
		ScaleType = Enum.ScaleType.Slice,
		SliceScale = 1
	})

	local content = core:object("Frame", {
		Theme = {BackgroundColor3 = {"Secondary", -10}},
		AnchorPoint = Vector2.new(0.5, 1),
		Position = UDim2.new(0.5, 0, 1, -20),
		Size = UDim2.new(1, -10, 1, -86)
	}):round(7) -- Sept

	local status = core:object("TextLabel", {
		AnchorPoint = Vector2.new(0, 1),
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 5, 1, -6),
		Size = UDim2.new(0.2, 0, 0, 10),
		Font = Enum.Font.SourceSans,
		Text = "Status | Idle",
		Theme = {TextColor3 = "Tertiary"},
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left
	})

	local homeButton = tabButtons:object("TextButton", {
		Name = "hehehe siuuuuuuuuu",
		BackgroundTransparen
