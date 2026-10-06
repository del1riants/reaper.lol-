local Library = {}

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

function Library:CreateWindow(Config)


	
    Tab.Page = Page
    Tab.Button = TabButton

    function Tab:Show()

        for _, ExistingTab in pairs(Tabs) do
            ExistingTab.Page.Visible = false

            ExistingTab.Button.BackgroundColor3 =
                Color3.fromRGB(45, 45, 45)

            ExistingTab.Button.TextColor3 =
                Color3.fromRGB(160, 160, 160)
        end

        Page.Visible = true

        TabButton.BackgroundColor3 =
            Color3.fromRGB(85, 0, 120)

        TabButton.TextColor3 =
            Color3.fromRGB(255, 255, 255)

        CurrentTab = Tab
    end

    TabButton.MouseButton1Click:Connect(function()
        Tab:Show()
    end)

    table.insert(Tabs, Tab)

    -- Automatically show the first tab

    if not CurrentTab then
        Tab:Show()
    end

    return Tab
end

    function Library:CreateWindow(Config)
    Config = Config or {}

    local Window = {}

    local WindowName = Config.Name or "REAPER.LOL"
    local GameName = Config.Game or "UNKNOWN"
	
    -- YOUR CURRENT UI CODE GOES HERE
	
  -- ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "BlankUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.DisplayOrder = 999999
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
local UIParent = gethui and gethui() or PlayerGui
ScreenGui.Parent = UIParent

-- Main window
local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Size = UDim2.fromOffset(550, 577)
Main.Position = UDim2.new(0.5, -312, 0.5, -328)
Main.BackgroundColor3 = Color3.fromRGB(34, 0, 47)
Main.BorderSizePixel = 0

-- Main police light gradient
local MainGradient = Instance.new("UIGradient")
MainGradient.Name = "PoliceLightGradient"
MainGradient.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(153, 0, 255)),
	ColorSequenceKeypoint.new(0.75, Color3.fromRGB(0, 0, 0)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(177, 177, 177))
})
MainGradient.Rotation = 135
MainGradient.Parent = Main

Main.ClipsDescendants = false
Main.Parent = ScreenGui

-- Rounded corners
local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 6)
MainCorner.Parent = Main

-- Sharp outer outline
local MainStroke = Instance.new("UIStroke")
MainStroke.Name = "OuterOutline"
MainStroke.Thickness = 1
MainStroke.Color = Color3.fromRGB(85, 85, 85)
MainStroke.Transparency = 0
MainStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
MainStroke.LineJoinMode = Enum.LineJoinMode.Miter
MainStroke.Parent = Main

-- Left sidebar
local SideBar = Instance.new("Frame")
SideBar.Name = "SideBar"
SideBar.Size = UDim2.new(0, 94, 1, 0)
SideBar.Position = UDim2.new(0, 0, 0, 0)
SideBar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SideBar.BorderSizePixel = 0
SideBar.ZIndex = 2
SideBar.Parent = Main

-- Sidebar texture
local SidebarTexture = Instance.new("ImageLabel")
SidebarTexture.Name = "SidebarTexture"
SidebarTexture.Size = UDim2.new(1, 0, 1, 0)
SidebarTexture.Position = UDim2.new(0, 0, 0, 0)
SidebarTexture.BackgroundTransparency = 1
SidebarTexture.BorderSizePixel = 0
SidebarTexture.Image = "rbxassetid://128380710379080"
SidebarTexture.ScaleType = Enum.ScaleType.Stretch
SidebarTexture.ZIndex = 2
SidebarTexture.Parent = SideBar

-- Sidebar right outline
local SideSeparator = Instance.new("Frame")
SideSeparator.Name = "SideSeparator"
SideSeparator.Size = UDim2.new(0, 1, 1, -63)
SideSeparator.Position = UDim2.new(1, -1, 0, 63)
SideSeparator.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
SideSeparator.BorderSizePixel = 0
SideSeparator.ZIndex = 6
SideSeparator.Parent = SideBar

-- Siderbar Image
local SidebarBottomImage = Instance.new("ImageLabel")
SidebarBottomImage.Name = "SidebarBottomImage"
SidebarBottomImage.Size = UDim2.fromOffset(111, 66)
SidebarBottomImage.Position = UDim2.new(0.5, -55, 1, -35)
SidebarBottomImage.BackgroundTransparency = 1
SidebarBottomImage.BorderSizePixel = 0
SidebarBottomImage.Image = "rbxassetid://79667850088134"
SidebarBottomImage.ScaleType = Enum.ScaleType.Fit
SidebarBottomImage.ZIndex = 20
SidebarBottomImage.Parent = SideBar

-- Main gray panel
local MainGrayPanel = Instance.new("Frame")
MainGrayPanel.Name = "MainGrayPanel"
MainGrayPanel.Size = UDim2.new(1, -105, 1, -97)
MainGrayPanel.Position = UDim2.new(0, 100, 0, 68)
MainGrayPanel.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
MainGrayPanel.BackgroundTransparency = 0.8
MainGrayPanel.BorderSizePixel = 0
MainGrayPanel.ZIndex = 2
MainGrayPanel.Parent = Main

-- Rounded corners
local MainGrayPanelCorner = Instance.new("UICorner")
MainGrayPanelCorner.CornerRadius = UDim.new(0, 4)
MainGrayPanelCorner.Parent = MainGrayPanel

-- Police light gradient
local MainGrayPanelGradient = Instance.new("UIGradient")
MainGrayPanelGradient.Name = "PoliceLightGradient"
MainGrayPanelGradient.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 0, 0)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
})
MainGrayPanelGradient.Rotation = 100
MainGrayPanelGradient.Parent = MainGrayPanel

-- Outline
local MainGrayPanelStroke = Instance.new("UIStroke")
MainGrayPanelStroke.Name = "Outline"
MainGrayPanelStroke.Thickness = 1
MainGrayPanelStroke.Color = Color3.fromRGB(85, 85, 85)
MainGrayPanelStroke.Transparency = 0
MainGrayPanelStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
MainGrayPanelStroke.LineJoinMode = Enum.LineJoinMode.Miter
MainGrayPanelStroke.Parent = MainGrayPanel

-- Gray panel on sidebar
local GrayPanel = Instance.new("Frame")
GrayPanel.Name = "GrayPanel"

-- Width stays fixed, height follows Main
GrayPanel.Size = UDim2.new(0, 78, 1, -101)

-- Top stays fixed, bottom moves with Main
GrayPanel.Position = UDim2.new(0, 8, 0, 90)

GrayPanel.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
GrayPanel.BackgroundTransparency = 0.35
GrayPanel.BorderSizePixel = 0
GrayPanel.ZIndex = 5
GrayPanel.Parent = Main

-- Gray panel corners
local GrayPanelCorner = Instance.new("UICorner")
GrayPanelCorner.CornerRadius = UDim.new(0, 4)
GrayPanelCorner.Parent = GrayPanel

-- Gray panel police gradient
local GrayPanelGradient = Instance.new("UIGradient")
GrayPanelGradient.Name = "PoliceLightGradient"
GrayPanelGradient.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(53, 53, 53)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(206, 206, 206))
})
GrayPanelGradient.Rotation = 100
GrayPanelGradient.Parent = GrayPanel

-- Gray panel outline
local GrayPanelStroke = Instance.new("UIStroke")
GrayPanelStroke.Name = "Outline"
GrayPanelStroke.Thickness = 1
GrayPanelStroke.Color = Color3.fromRGB(85, 85, 85)
GrayPanelStroke.Transparency = 0
GrayPanelStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
GrayPanelStroke.LineJoinMode = Enum.LineJoinMode.Miter
GrayPanelStroke.Parent = GrayPanel

	local Window = Library:CreateWindow({
    Name = "BlankUI",
    Title = "REAPER.LOL",
    Version = "VERSION X.X",
    Game = "|RIVALS|"
})

local MainTab = Window:CreateTab("Main")

MainTab:CreateSection("Example")

MainTab:CreateButton({
    Name = "Test Button",
    Callback = function()
        print("Clicked")
    end
})

	local Tabs = {}
local CurrentTab = nil

local TabContainer = Instance.new("ScrollingFrame")
TabContainer.Name = "TabContainer"
TabContainer.Size = UDim2.new(1, -10, 1, -10)
TabContainer.Position = UDim2.fromOffset(5, 5)
TabContainer.BackgroundTransparency = 1
TabContainer.BorderSizePixel = 0
TabContainer.ScrollBarThickness = 0
TabContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
TabContainer.ZIndex = 6
TabContainer.Parent = GrayPanel

local TabLayout = Instance.new("UIListLayout")
TabLayout.Padding = UDim.new(0, 5)
TabLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
TabLayout.SortOrder = Enum.SortOrder.LayoutOrder
TabLayout.Parent = TabContainer

TabLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    TabContainer.CanvasSize = UDim2.new(
        0,
        0,
        0,
        TabLayout.AbsoluteContentSize.Y + 10
    )
end)

function Window:CreateTab(Name)

    local Tab = {}

    Tab.Name = Name
    Tab.Controls = {}

    local TabButton = Instance.new("TextButton")
    TabButton.Name = Name .. "Tab"
    TabButton.Size = UDim2.new(1, -4, 0, 32)
    TabButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    TabButton.BackgroundTransparency = 0.35
    TabButton.BorderSizePixel = 0
    TabButton.Text = string.upper(Name)
    TabButton.TextColor3 = Color3.fromRGB(160, 160, 160)
    TabButton.TextSize = 12
    TabButton.FontFace = Font.new("rbxassetid://12187376739")
    TabButton.AutoButtonColor = false
    TabButton.ZIndex = 7
    TabButton.Parent = TabContainer

    local TabCorner = Instance.new("UICorner")
    TabCorner.CornerRadius = UDim.new(0, 4)
    TabCorner.Parent = TabButton

    local TabStroke = Instance.new("UIStroke")
    TabStroke.Thickness = 1
    TabStroke.Color = Color3.fromRGB(85, 85, 85)
    TabStroke.Parent = TabButton

    local Page = Instance.new("ScrollingFrame")
    Page.Name = Name .. "Page"
    Page.Size = UDim2.new(1, -10, 1, -10)
    Page.Position = UDim2.fromOffset(5, 5)
    Page.BackgroundTransparency = 1
    Page.BorderSizePixel = 0
    Page.ScrollBarThickness = 3
    Page.ScrollBarImageColor3 = Color3.fromRGB(120, 0, 180)
    Page.CanvasSize = UDim2.new(0, 0, 0, 0)
    Page.Visible = false
    Page.ZIndex = 4
    Page.Parent = MainGrayPanel

    local PageLayout = Instance.new("UIListLayout")
    PageLayout.Padding = UDim.new(0, 8)
    PageLayout.SortOrder = Enum.SortOrder.LayoutOrder
    PageLayout.Parent = Page

    local PagePadding = Instance.new("UIPadding")
    PagePadding.PaddingLeft = UDim.new(0, 8)
    PagePadding.PaddingRight = UDim.new(0, 8)
    PagePadding.PaddingTop = UDim.new(0, 8)
    PagePadding.PaddingBottom = UDim.new(0, 8)
    PagePadding.Parent = Page

    PageLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        Page.CanvasSize = UDim2.new(
            0,
            0,
            0,
            PageLayout.AbsoluteContentSize.Y + 16
        )
    end)

    Tab.Page = Page
    Tab.Button = TabButton

    function Tab:Show()

        for _, ExistingTab in pairs(Tabs) do
            ExistingTab.Page.Visible = false
            ExistingTab.Button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            ExistingTab.Button.TextColor3 = Color3.fromRGB(160, 160, 160)
        end

        Page.Visible = true
        TabButton.BackgroundColor3 = Color3.fromRGB(85, 0, 120)
        TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)

        CurrentTab = Tab
    end

    TabButton.MouseButton1Click:Connect(function()
        Tab:Show()
    end)

    table.insert(Tabs, Tab)

    if not CurrentTab then
        Tab:Show()
    end

    return Tab
end

-- Sidebar title over decal
local SidebarTitle = Instance.new("TextLabel")
SidebarTitle.Name = "SidebarTitle"
SidebarTitle.Size = UDim2.fromOffset(91, 94)
SidebarTitle.Position = UDim2.fromOffset(0, 30)
SidebarTitle.BackgroundTransparency = 1
SidebarTitle.BorderSizePixel = 0
SidebarTitle.Text = "REAPER.LOL"
SidebarTitle.TextColor3 = Color3.fromRGB(117, 0, 212)
SidebarTitle.TextSize = 16
SidebarTitle.FontFace = Font.new("rbxassetid://12187376739")
SidebarTitle.TextXAlignment = Enum.TextXAlignment.Center
SidebarTitle.TextYAlignment = Enum.TextYAlignment.Center
SidebarTitle.ZIndex = 20
SidebarTitle.Parent = Main

-- Text stroke
local SidebarTitleStroke = Instance.new("UIStroke")
SidebarTitleStroke.Name = "TextStroke"
SidebarTitleStroke.Thickness = 1
SidebarTitleStroke.Color = Color3.fromRGB(61, 0, 110)
SidebarTitleStroke.Transparency = 0
SidebarTitleStroke.Parent = SidebarTitle

-- Glow effect
local SidebarTitleGlow = Instance.new("TextLabel")
SidebarTitleGlow.Name = "Glow"
SidebarTitleGlow.Size = SidebarTitle.Size
SidebarTitleGlow.Position = SidebarTitle.Position
SidebarTitleGlow.BackgroundTransparency = 1
SidebarTitleGlow.BorderSizePixel = 0
SidebarTitleGlow.Text = SidebarTitle.Text
SidebarTitleGlow.TextColor3 = Color3.fromRGB(255, 0, 0)
SidebarTitleGlow.TextSize = SidebarTitle.TextSize
SidebarTitleGlow.FontFace = SidebarTitle.FontFace
SidebarTitleGlow.TextXAlignment = SidebarTitle.TextXAlignment
SidebarTitleGlow.TextYAlignment = SidebarTitle.TextYAlignment
SidebarTitleGlow.TextTransparency = 0.8
SidebarTitleGlow.ZIndex = 19
SidebarTitleGlow.Parent = Main

local GlowStroke = Instance.new("UIStroke")
GlowStroke.Thickness = 4
GlowStroke.Color = Color3.fromRGB(198, 0, 96)
GlowStroke.Transparency = 0.8
GlowStroke.Parent = SidebarTitleGlow

-- Top header
local TopBar = Instance.new("Frame")
TopBar.Name = "TopBar"
TopBar.Size = UDim2.new(1, 0, 0, 63)
TopBar.Position = UDim2.new(0, 0, 0, 0)
TopBar.BackgroundColor3 = Color3.fromRGB(67, 14, 85)
TopBar.BorderSizePixel = 0
TopBar.ZIndex = 3
TopBar.Parent = Main

-- Header texture
local HeaderTexture = Instance.new("ImageLabel")
HeaderTexture.Name = "HeaderTexture"
HeaderTexture.Size = UDim2.new(1, 0, 0, 63)
HeaderTexture.Position = UDim2.new(0, 0, 0, 0)
HeaderTexture.BackgroundTransparency = 1
HeaderTexture.BorderSizePixel = 0
HeaderTexture.Image = "rbxassetid://84115731336234"
HeaderTexture.ScaleType = Enum.ScaleType.Stretch
HeaderTexture.ZIndex = 4
HeaderTexture.Parent = Main

-- Header bottom separator
local HeaderSeparator = Instance.new("Frame")
HeaderSeparator.Name = "HeaderSeparator"
HeaderSeparator.Size = UDim2.new(1, 0, 0, 1)
HeaderSeparator.Position = UDim2.new(0, 0, 1, -1)
HeaderSeparator.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
HeaderSeparator.BorderSizePixel = 0
HeaderSeparator.ZIndex = 6
HeaderSeparator.Parent = TopBar

-- Overlap section
local OverlapBar = Instance.new("Frame")
OverlapBar.Name = "OverlapBar"
OverlapBar.Size = UDim2.fromOffset(94, 63)
OverlapBar.Position = UDim2.fromOffset(0, 0)
OverlapBar.BackgroundTransparency = 1
OverlapBar.BorderSizePixel = 0
OverlapBar.ZIndex = 7
OverlapBar.Parent = Main

-- Gear icon

local SettingsIcon = Instance.new("ImageButton")
SettingsIcon.Name = "SettingsIcon"
SettingsIcon.Size = UDim2.fromOffset(45, 45)
SettingsIcon.Position = UDim2.new(1, -8, 1, -6)
SettingsIcon.BackgroundTransparency = 1
SettingsIcon.BorderSizePixel = 0
SettingsIcon.Image = "rbxassetid://75241234938554"
SettingsIcon.ImageTransparency = 0
SettingsIcon.AutoButtonColor = false
SettingsIcon.ZIndex = 20
SettingsIcon.Parent = OverlapBar

-- Gray panel next to decal
local DecalSidePanel = Instance.new("Frame")
DecalSidePanel.Name = "DecalSidePanel"
DecalSidePanel.Size = UDim2.fromOffset(22, 22)
DecalSidePanel.Position = UDim2.fromOffset(100, 5)
DecalSidePanel.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
DecalSidePanel.BackgroundTransparency = 0.35
DecalSidePanel.BorderSizePixel = 0
DecalSidePanel.ZIndex = 7
DecalSidePanel.Parent = TopBar

local DecalSideCorner = Instance.new("UICorner")
DecalSideCorner.CornerRadius = UDim.new(0, 4)
DecalSideCorner.Parent = DecalSidePanel

local DecalSideGradient = Instance.new("UIGradient")
DecalSideGradient.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(113, 0, 154)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(53, 53, 53)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(104, 0, 127))
})
DecalSideGradient.Rotation = 100
DecalSideGradient.Parent = DecalSidePanel

local DecalSideOutline = Instance.new("UIStroke")
DecalSideOutline.Name = "Outline"
DecalSideOutline.Thickness = 1
DecalSideOutline.Color = Color3.fromRGB(85, 85, 85)
DecalSideOutline.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
DecalSideOutline.LineJoinMode = Enum.LineJoinMode.Miter
DecalSideOutline.Parent = DecalSidePanel

-- 2nd Gray panel next to decal
local DecalSidePanel2 = Instance.new("Frame")
DecalSidePanel2.Name = "DecalSidePanel2"
DecalSidePanel2.Size = UDim2.fromOffset(22, 22)
DecalSidePanel2.Position = UDim2.fromOffset(100, 35)
DecalSidePanel2.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
DecalSidePanel2.BackgroundTransparency = 0.35
DecalSidePanel2.BorderSizePixel = 0
DecalSidePanel2.ZIndex = 7
DecalSidePanel2.Parent = TopBar

local DecalSideCorner2 = Instance.new("UICorner")
DecalSideCorner2.CornerRadius = UDim.new(0, 4)
DecalSideCorner2.Parent = DecalSidePanel2

local DecalSideGradient2 = Instance.new("UIGradient")
DecalSideGradient2.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(113, 0, 154)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(53, 53, 53)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(104, 0, 127))
})
DecalSideGradient2.Rotation = 100
DecalSideGradient2.Parent = DecalSidePanel2

local DecalSideOutline2 = Instance.new("UIStroke")
DecalSideOutline2.Name = "Outline"
DecalSideOutline2.Thickness = 1
DecalSideOutline2.Color = Color3.fromRGB(85, 85, 85)
DecalSideOutline2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
DecalSideOutline2.LineJoinMode = Enum.LineJoinMode.Miter
DecalSideOutline2.Parent = DecalSidePanel2

-- Decal shadow
local OverlapShadow = Instance.new("ImageLabel")
OverlapShadow.Name = "OverlapShadow"
OverlapShadow.Size = UDim2.fromScale(1.2, 1.35)
OverlapShadow.Position = UDim2.fromScale(-0.1, 0.035)
OverlapShadow.BackgroundTransparency = 1
OverlapShadow.BorderSizePixel = 0
OverlapShadow.Image = "rbxassetid://112221635299950"
OverlapShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
OverlapShadow.ImageTransparency = 0.55
OverlapShadow.ScaleType = Enum.ScaleType.Stretch
OverlapShadow.ZIndex = 8
OverlapShadow.Parent = OverlapBar

-- Main decal
local OverlapImage = Instance.new("ImageLabel")
OverlapImage.Name = "OverlapImage"
OverlapImage.Size = UDim2.fromScale(1.15, 1.35)
OverlapImage.Position = UDim2.fromScale(-0.2, 0)
OverlapImage.BackgroundTransparency = 1
OverlapImage.BorderSizePixel = 0
OverlapImage.Image = "rbxassetid://73486110117444"
OverlapImage.ScaleType = Enum.ScaleType.Stretch
OverlapImage.ZIndex = 9
OverlapImage.Parent = OverlapBar

-- Unload button
local Unload = Instance.new("TextButton")
Unload.Name = "Unload"
Unload.Size = UDim2.fromOffset(44, 30)
Unload.Position = UDim2.new(1, -38, 0, 0)
Unload.BackgroundTransparency = 1
Unload.Text = "X"
Unload.TextColor3 = Color3.fromRGB(128, 38, 58)
Unload.TextSize = 20
Unload.FontFace = Font.new("rbxassetid://12187376739")
Unload.ZIndex = 10
Unload.Parent = TopBar

Unload.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
end)

-- Unload gray panel
local UnloadPanel = Instance.new("Frame")
UnloadPanel.Name = "UnloadPanel"
UnloadPanel.Size = UDim2.fromOffset(33, 30)
UnloadPanel.Position = UDim2.new(1, -33, 0, 0)
UnloadPanel.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
UnloadPanel.BackgroundTransparency = 0.35
UnloadPanel.BorderSizePixel = 0
UnloadPanel.ZIndex = 8
UnloadPanel.Parent = TopBar

local UnloadPanelCorner = Instance.new("UICorner")
UnloadPanelCorner.CornerRadius = UDim.new(0, 4)
UnloadPanelCorner.Parent = UnloadPanel

local UnloadPanelGradient = Instance.new("UIGradient")
UnloadPanelGradient.Name = "PoliceLightGradient"
UnloadPanelGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(53, 53, 53)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(136, 0, 227))
})
UnloadPanelGradient.Rotation = 125
UnloadPanelGradient.Parent = UnloadPanel

local UnloadPanelOutline = Instance.new("UIStroke")
UnloadPanelOutline.Name = "Outline"
UnloadPanelOutline.Thickness = 1
UnloadPanelOutline.Color = Color3.fromRGB(85, 85, 85)
UnloadPanelOutline.Transparency = 0
UnloadPanelOutline.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UnloadPanelOutline.LineJoinMode = Enum.LineJoinMode.Miter
UnloadPanelOutline.Parent = UnloadPanel

-- Minimize panel
local MinimizePanel = Instance.new("Frame")
MinimizePanel.Name = "MinimizePanel"
MinimizePanel.Size = UDim2.fromOffset(33, 30)
MinimizePanel.Position = UDim2.new(1, -33, 0, 31)
MinimizePanel.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
MinimizePanel.BackgroundTransparency = 0.35
MinimizePanel.BorderSizePixel = 0
MinimizePanel.ZIndex = 8
MinimizePanel.Parent = TopBar

local MinimizePanelCorner = Instance.new("UICorner")
MinimizePanelCorner.CornerRadius = UDim.new(0, 4)
MinimizePanelCorner.Parent = MinimizePanel

local MinimizePanelGradient = Instance.new("UIGradient")
MinimizePanelGradient.Name = "PoliceLightGradient"
MinimizePanelGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(102, 0, 180)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(53, 53, 53)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
})
MinimizePanelGradient.Rotation = 55
MinimizePanelGradient.Parent = MinimizePanel

local MinimizePanelOutline = Instance.new("UIStroke")
MinimizePanelOutline.Name = "Outline"
MinimizePanelOutline.Thickness = 1
MinimizePanelOutline.Color = Color3.fromRGB(85, 85, 85)
MinimizePanelOutline.Transparency = 0
MinimizePanelOutline.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
MinimizePanelOutline.LineJoinMode = Enum.LineJoinMode.Miter
MinimizePanelOutline.Parent = MinimizePanel

-- Minimize button
local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Name = "Minimize"
MinimizeButton.Size = UDim2.fromOffset(44, 33)
MinimizeButton.Position = UDim2.new(1, -39, 0, 19)
MinimizeButton.BackgroundTransparency = 1
MinimizeButton.BorderSizePixel = 0
MinimizeButton.Text = "_"
MinimizeButton.TextColor3 = Color3.fromRGB(158, 158, 158)
MinimizeButton.TextSize = 30
MinimizeButton.FontFace = Font.new("rbxassetid://12187376739")
MinimizeButton.AutoButtonColor = false
MinimizeButton.ZIndex = 10
MinimizeButton.Parent = TopBar
  

for _, child in ipairs(Main:GetChildren()) do
    if child ~= TopBar
        and child ~= MinimizePanel
        and child ~= MinimizeButton
        and child ~= Unload
        and child:IsA("GuiObject") then

        child.Visible = not minimized
    end
end

-- Minimize into the actual decal
local minimized = false
local NormalSize = Main.Size
local NormalPosition = Main.Position

MinimizeButton.MouseButton1Click:Connect(function()
	if minimized then
		return
	end

	

	minimized = true

	-- Save current size and position
	NormalSize = Main.Size
	NormalPosition = Main.Position

	-- Hide everything
	for _, child in ipairs(Main:GetChildren()) do
		if child ~= OverlapBar then
			if child:IsA("GuiObject") then
				child.Visible = false
			end
		end
	end

    for _, child in ipairs(OverlapBar:GetChildren()) do
    if child ~= OverlapImage and child ~= OverlapShadow then
        if child:IsA("GuiObject") then
            child.Visible = false
        end
    end
end

	-- Keep only the actual decal visible
	OverlapBar.Visible = true
	OverlapImage.Visible = true
	OverlapShadow.Visible = false

	-- Make the Main frame exactly the size of the decal
	Main.Size = UDim2.fromOffset(94, 63)

	
end)

-- Minimized decal drag + restore
local draggingMinimized = false
local minimizedDragStart = nil
local minimizedStartPosition = nil
local minimizedMoved = false

OverlapImage.Active = true

OverlapImage.InputBegan:Connect(function(input)
    if not minimized then return end

    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        draggingMinimized = true
        minimizedMoved = false
        minimizedDragStart = input.Position
        minimizedStartPosition = Main.Position
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if not draggingMinimized or not minimized then return end

    if input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - minimizedDragStart

        if math.abs(delta.X) > 3 or math.abs(delta.Y) > 3 then
            minimizedMoved = true
        end

        Main.Position = UDim2.new(
            minimizedStartPosition.X.Scale,
            minimizedStartPosition.X.Offset + delta.X,
            minimizedStartPosition.Y.Scale,
            minimizedStartPosition.Y.Offset + delta.Y
        )
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType ~= Enum.UserInputType.MouseButton1 then
        return
    end

    if not draggingMinimized then
        return
    end

    draggingMinimized = false

    -- Restore only if it was a click, not a drag
    if minimized and not minimizedMoved then
        minimized = false

        -- Restore original size
        Main.Size = NormalSize

        -- Restore all Main GUI objects
        for _, child in ipairs(Main:GetChildren()) do
            if child:IsA("GuiObject") then
                child.Visible = true
            end
        end

        -- Restore all OverlapBar GUI objects
        for _, child in ipairs(OverlapBar:GetChildren()) do
            if child:IsA("GuiObject") then
                child.Visible = true
            end
        end

        -- Restore normal decal state
        TopBar.Visible = true
        OverlapBar.Visible = true
        OverlapImage.Visible = true
        OverlapShadow.Visible = true

        -- Make sure the gear is visible
        SettingsIcon.Visible = true

        -- Reset decal layering
        OverlapImage.ZIndex = 9
        OverlapShadow.ZIndex = 8
        SettingsIcon.ZIndex = 20
    end

    minimizedDragStart = nil
    minimizedStartPosition = nil
    minimizedMoved = false
end)

-- Search bar
local SearchBar = Instance.new("Frame")
SearchBar.Name = "SearchBar"
SearchBar.Size = UDim2.fromOffset(300, 34)
SearchBar.Position = UDim2.new(1, -360, 0, 14)
SearchBar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
SearchBar.BackgroundTransparency = 0.5
SearchBar.BorderSizePixel = 0
SearchBar.ZIndex = 7
SearchBar.Parent = TopBar

-- Search police gradient
local SearchGradient = Instance.new("UIGradient")
SearchGradient.Name = "PoliceLightGradient"
SearchGradient.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(102, 0, 255)),
	ColorSequenceKeypoint.new(0.45, Color3.fromRGB(0, 0, 0)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
})
SearchGradient.Rotation = 90
SearchGradient.Parent = SearchBar

-- Search bar sharp corners
-- No UICorner = completely sharp 90° corners

-- Search outline
local SearchOutline = Instance.new("UIStroke")
SearchOutline.Name = "Outline"
SearchOutline.Thickness = 1
SearchOutline.Color = Color3.fromRGB(85, 85, 85)
SearchOutline.Transparency = 0
SearchOutline.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
SearchOutline.LineJoinMode = Enum.LineJoinMode.Miter
SearchOutline.Parent = SearchBar

-- Second outer outline with rounded corners
local SearchOuterFrame = Instance.new("Frame")
SearchOuterFrame.Name = "SearchOuterFrame"
SearchOuterFrame.Size = UDim2.fromOffset(304, 38)
SearchOuterFrame.Position = UDim2.new(1, -362, 0, 12)
SearchOuterFrame.BackgroundTransparency = 1
SearchOuterFrame.BorderSizePixel = 0
SearchOuterFrame.ZIndex = 6
SearchOuterFrame.Parent = TopBar

local SearchOuterCorner = Instance.new("UICorner")
SearchOuterCorner.CornerRadius = UDim.new(0, 5)
SearchOuterCorner.Parent = SearchOuterFrame

local SearchOuterOutline = Instance.new("UIStroke")
SearchOuterOutline.Name = "RoundedOutline"
SearchOuterOutline.Thickness = 1
SearchOuterOutline.Color = Color3.fromRGB(35, 0, 88)
SearchOuterOutline.Transparency = 0
SearchOuterOutline.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
SearchOuterOutline.LineJoinMode = Enum.LineJoinMode.Round
SearchOuterOutline.Parent = SearchOuterFrame

-- Search box
local SearchBox = Instance.new("TextBox")
SearchBox.Name = "SearchBox"
SearchBox.Size = UDim2.new(1, -16, 1, 0)
SearchBox.Position = UDim2.fromOffset(8, 0)
SearchBox.BackgroundTransparency = 1
SearchBox.BorderSizePixel = 0
SearchBox.ClearTextOnFocus = false
SearchBox.PlaceholderText = "Search..."
SearchBox.PlaceholderColor3 = Color3.fromRGB(105, 105, 105)
SearchBox.Text = ""
SearchBox.TextColor3 = Color3.fromRGB(190, 190, 190)
SearchBox.TextSize = 16
SearchBox.FontFace = Font.new("rbxassetid://12187376739")
SearchBox.TextXAlignment = Enum.TextXAlignment.Left
SearchBox.TextYAlignment = Enum.TextYAlignment.Center
SearchBox.ZIndex = 8
SearchBox.Parent = SearchBar

-- Bottom bar
local BottomBar = Instance.new("Frame")
BottomBar.Name = "BottomBar"
BottomBar.Size = UDim2.new(1, 0, 0, 23)
BottomBar.Position = UDim2.new(0, 0, 1, -23)
BottomBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
BottomBar.BorderSizePixel = 0
BottomBar.ZIndex = 1
BottomBar.Parent = Main

-- Premium Discord text
local PremiumText = Instance.new("TextLabel")
PremiumText.Name = "PremiumText"
PremiumText.Size = UDim2.fromOffset(25, 23)
PremiumText.Position = UDim2.new(1.03, -280, 0, 0)
PremiumText.BackgroundTransparency = 1
PremiumText.BorderSizePixel = 0
PremiumText.Text = "for"
PremiumText.TextColor3 = Color3.fromRGB(105, 105, 105)
PremiumText.TextSize = 11
PremiumText.FontFace = Font.new("rbxassetid://12187366846")
PremiumText.TextXAlignment = Enum.TextXAlignment.Left
PremiumText.TextYAlignment = Enum.TextYAlignment.Center
PremiumText.ZIndex = 3
PremiumText.Parent = BottomBar

local PremiumWord = Instance.new("TextLabel")
PremiumWord.Name = "Premium"
PremiumWord.Size = UDim2.fromOffset(55, 23)
PremiumWord.Position = UDim2.new(1.03, -260, 0, 0)
PremiumWord.BackgroundTransparency = 1
PremiumWord.BorderSizePixel = 0
PremiumWord.Text = "PREMIUM"
PremiumWord.TextColor3 = Color3.fromRGB(255, 196, 55)
PremiumWord.TextSize = 11
PremiumWord.FontFace = Font.new("rbxassetid://12187366846")
PremiumWord.TextXAlignment = Enum.TextXAlignment.Left
PremiumWord.TextYAlignment = Enum.TextYAlignment.Center
PremiumWord.ZIndex = 3
PremiumWord.Parent = BottomBar

local PremiumKeys = Instance.new("TextLabel")
PremiumKeys.Name = "PremiumKeys"
PremiumKeys.Size = UDim2.fromOffset(45, 23)
PremiumKeys.Position = UDim2.new(1.04, -212, 0, 0)
PremiumKeys.BackgroundTransparency = 1
PremiumKeys.BorderSizePixel = 0
PremiumKeys.Text = " keys"
PremiumKeys.TextColor3 = Color3.fromRGB(105, 105, 105)
PremiumKeys.TextSize = 11
PremiumKeys.FontFace = Font.new("rbxassetid://12187366846")
PremiumKeys.TextXAlignment = Enum.TextXAlignment.Left
PremiumKeys.TextYAlignment = Enum.TextYAlignment.Center
PremiumKeys.ZIndex = 3
PremiumKeys.Parent = BottomBar

local JoinText = Instance.new("TextLabel")
JoinText.Name = "JoinText"
JoinText.Size = UDim2.fromOffset(35, 23)
JoinText.Position = UDim2.new(1.04, -184, 0, 0)
JoinText.BackgroundTransparency = 1
JoinText.BorderSizePixel = 0
JoinText.Text = "join the"
JoinText.TextColor3 = Color3.fromRGB(105, 105, 105)
JoinText.TextSize = 11
JoinText.FontFace = Font.new("rbxassetid://12187366846")
JoinText.TextXAlignment = Enum.TextXAlignment.Left
JoinText.TextYAlignment = Enum.TextYAlignment.Center
JoinText.ZIndex = 3
JoinText.Parent = BottomBar

local DiscordText = Instance.new("TextLabel")
DiscordText.Name = "Discord"
DiscordText.Size = UDim2.fromOffset(50, 23)
DiscordText.Position = UDim2.new(1, -115, 0, 0)
DiscordText.BackgroundTransparency = 1
DiscordText.BorderSizePixel = 0
DiscordText.Text = "discord:"
DiscordText.TextColor3 = Color3.fromRGB(88, 140, 255)
DiscordText.TextSize = 11
DiscordText.FontFace = Font.new("rbxassetid://12187366846")
DiscordText.TextXAlignment = Enum.TextXAlignment.Left
DiscordText.TextYAlignment = Enum.TextYAlignment.Center
DiscordText.ZIndex = 3
DiscordText.Parent = BottomBar

local DiscordImage = Instance.new("ImageButton")
DiscordImage.Name = "DiscordImage"
DiscordImage.Size = UDim2.fromOffset(33, 33)
DiscordImage.Position = UDim2.new(1, -67, 0, 3)
DiscordImage.BackgroundTransparency = 1
DiscordImage.BorderSizePixel = 0
DiscordImage.Image = "rbxassetid://117233346775475"
DiscordImage.AutoButtonColor = false
DiscordImage.ZIndex = 4
DiscordImage.Parent = BottomBar

local TweenService = game:GetService("TweenService")

DiscordImage.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/reaperlol")

    local mouse = LocalPlayer:GetMouse()

    local LinkCopied = Instance.new("TextLabel")
    LinkCopied.Name = "LinkCopied"
    LinkCopied.Size = UDim2.fromOffset(100, 25)
    LinkCopied.Position = UDim2.fromOffset(mouse.X - 50, mouse.Y - 35)
    LinkCopied.BackgroundTransparency = 1
    LinkCopied.BorderSizePixel = 0
    LinkCopied.Text = "link copied!"
    LinkCopied.TextColor3 = Color3.fromRGB(255, 255, 255)
    LinkCopied.TextTransparency = 1
    LinkCopied.TextSize = 13
    LinkCopied.FontFace = Font.new("rbxassetid://12187376739")
    LinkCopied.TextXAlignment = Enum.TextXAlignment.Center
    LinkCopied.TextYAlignment = Enum.TextYAlignment.Center
    LinkCopied.ZIndex = 100
    LinkCopied.Parent = PlayerGui

    -- Fade in
    local FadeIn = TweenService:Create(
        LinkCopied,
        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        {
            TextTransparency = 0
        }
    )

    FadeIn:Play()
    FadeIn.Completed:Wait()

    task.wait(0.8)

    -- Fade out
    local FadeOut = TweenService:Create(
        LinkCopied,
        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        {
            TextTransparency = 1
        }
    )

    FadeOut:Play()
    FadeOut.Completed:Wait()

    LinkCopied:Destroy()
end)

-- Bottom separator
local BottomSeparator = Instance.new("Frame")
BottomSeparator.Name = "BottomSeparator"
BottomSeparator.Size = UDim2.new(1, -94, 0, 1)
BottomSeparator.Position = UDim2.new(0, 94, 0, 0)
BottomSeparator.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
BottomSeparator.BorderSizePixel = 0
BottomSeparator.ZIndex = 2
BottomSeparator.Parent = BottomBar

-- Version text
local VersionLabel = Instance.new("TextLabel")
VersionLabel.Name = "VersionLabel"
VersionLabel.Size = UDim2.fromOffset(100, 23)
VersionLabel.Position = UDim2.new(0.5, -170, 0, 0)
VersionLabel.BackgroundTransparency = 1
VersionLabel.BorderSizePixel = 0
VersionLabel.Text = "VERSION X.X"
VersionLabel.TextColor3 = Color3.fromRGB(105, 105, 105)
VersionLabel.TextSize = 11
VersionLabel.FontFace = Font.new("rbxassetid://12187366846")
VersionLabel.TextXAlignment = Enum.TextXAlignment.Center
VersionLabel.TextYAlignment = Enum.TextYAlignment.Center
VersionLabel.ZIndex = 3
VersionLabel.Parent = BottomBar

local VersionSize = Instance.new("UITextSizeConstraint")
VersionSize.MinTextSize = 11
VersionSize.MaxTextSize = 13
VersionSize.Parent = VersionLabel

-- Game text
local GameLabel = Instance.new("TextLabel")
GameLabel.Name = "GameLabel"
GameLabel.Size = UDim2.fromOffset(100, 11)
GameLabel.Position = UDim2.new(0.53, -110, 0, 0)
GameLabel.BackgroundTransparency = 1
GameLabel.BorderSizePixel = 0
GameLabel.Text = "ˇˇGAMEˇˇ"
GameLabel.TextColor3 = Color3.fromRGB(105, 105, 105)
GameLabel.TextSize = 2
GameLabel.FontFace = Font.new("rbxassetid://12187366846")
GameLabel.TextXAlignment = Enum.TextXAlignment.Center
GameLabel.TextYAlignment = Enum.TextYAlignment.Center
GameLabel.ZIndex = 3
GameLabel.Parent = BottomBar

local GameSize = Instance.new("UITextSizeConstraint")
GameSize.MinTextSize = 8
GameSize.MaxTextSize = 13
GameSize.Parent = GameLabel

-- CurrentGame text
local CurrentGameLabel = Instance.new("TextLabel")
CurrentGameLabel.Name = "CurrentGameLabel"
CurrentGameLabel.Size = UDim2.fromOffset(100, 29)
CurrentGameLabel.Position = UDim2.new(0.53, -110, 0, 0)
CurrentGameLabel.BackgroundTransparency = 1
CurrentGameLabel.BorderSizePixel = 0
CurrentGameLabel.Text = "|RIVALS|"
CurrentGameLabel.TextColor3 = Color3.fromRGB(105, 105, 105)
CurrentGameLabel.TextSize = 12
CurrentGameLabel.FontFace = Font.new("rbxassetid://12187366846")
CurrentGameLabel.TextXAlignment = Enum.TextXAlignment.Center
CurrentGameLabel.TextYAlignment = Enum.TextYAlignment.Center
CurrentGameLabel.ZIndex = 3
CurrentGameLabel.Parent = BottomBar

local CurrentGameSize = Instance.new("UITextSizeConstraint")
CurrentGameSize.MinTextSize = 8
CurrentGameSize.MaxTextSize = 13
CurrentGameSize.Parent = CurrentGameLabel

-- Resize button
local ResizeButton = Instance.new("TextButton")
ResizeButton.Name = "ResizeButton"
ResizeButton.Size = UDim2.fromOffset(28, 23)
ResizeButton.Position = UDim2.new(1, -28, 0, 0)
ResizeButton.BackgroundTransparency = 1
ResizeButton.BorderSizePixel = 0
ResizeButton.Text = "↔"
ResizeButton.TextColor3 = Color3.fromRGB(182, 182, 182)
ResizeButton.TextSize = 18
ResizeButton.Font = Enum.Font.GothamBold
ResizeButton.Rotation = 45
ResizeButton.AutoButtonColor = false
ResizeButton.ZIndex = 5
ResizeButton.Parent = BottomBar

-- Resize logic
local resizing = false
local resizeStart
local originalSize

local MIN_WIDTH = 505
local MAX_WIDTH = 850

ResizeButton.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		resizing = true
		resizeStart = input.Position
		originalSize = Main.AbsoluteSize

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				resizing = false
			end
		end)
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if resizing and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = input.Position - resizeStart

		local newWidth = math.clamp(
			originalSize.X + delta.X,
			MIN_WIDTH,
			MAX_WIDTH
		)

		local aspectRatio = 625 / 656
		local newHeight = newWidth / aspectRatio

		Main.Size = UDim2.fromOffset(
			math.round(newWidth),
			math.round(newHeight)
		)
	end
end)

-- Dragging
local dragging = false
local dragStart
local startPosition

TopBar.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPosition = Main.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = input.Position - dragStart

		Main.Position = UDim2.new(
			startPosition.X.Scale,
			startPosition.X.Offset + delta.X,
			startPosition.Y.Scale,
			startPosition.Y.Offset + delta.Y
		)
	end
end)
  
local TestTab1 = Window:CreateTab("MAIN")
local TestTab2 = Window:CreateTab("VISUALS")
local TestTab3 = Window:CreateTab("SETTINGS")

Window.ScreenGui = ScreenGui
Window.Main = Main
Window.MainGrayPanel = MainGrayPanel
Window.SideBar = SideBar
Window.Content = MainGrayPanel

return Window
  
end

return Library
