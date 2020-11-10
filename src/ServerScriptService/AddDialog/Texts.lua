local TextService = game:GetService("TextService")
local Sss = game:GetService("ServerScriptService")
local Utils = require(Sss.Source.Utils.Utils)

local dialogColors = {
    Color3.fromRGB(253, 158, 240), Color3.fromRGB(225, 253, 158),
    Color3.fromRGB(253, 228, 158), Color3.fromRGB(158, 253, 179),
    Color3.fromRGB(158, 215, 253)
}

local dialogConfig = {
    Britta = {left = true, backgroundColor = dialogColors[1]},
    Raven = {left = true, backgroundColor = dialogColors[2]},
    Freckle = {left = true, backgroundColor = dialogColors[3]}
}

local testDict01 = {text = "one one one ", color = "Yellow", char = "Britta"}
local testDict02 = {text = "two", color = "Yellow", char = "Raven"}
local testDict03 = {
    text = "three three thre ddd eee fff ggg hhh iii jjj kkk lll mmm nnn ooo ppp qqq rrr sss ttt",
    color = "Yellow",
    char = "Freckle"
}
local lines = {testDict01, testDict02, testDict03}

local module = {}

renderTexts = function(props)
    local parent = props.parent
    local paddingInPx = props.paddingInPx / 2
    local pixelsPerStud = props.pixelsPerStud
    local pageNum = props.pageNum

    local sgui = Instance.new("SurfaceGui", parent)
    sgui.SizingMode = "PixelsPerStud"

    local scrollingFrame = Instance.new("ScrollingFrame", sgui)

    Utils.addPadding({parent = scrollingFrame, paddingPct = 0.02})

    scrollingFrame.Size = UDim2.new(1, 0, 1, 0)
    scrollingFrame.BorderSizePixel = 3
    scrollingFrame.BorderMode = Enum.BorderMode.Inset
    scrollingFrame.BackgroundColor3 = Color3.new(196, 132, 225)
    scrollingFrame.BackgroundTransparency = 0.5
    scrollingFrame.ScrollBarThickness = 40
    scrollingFrame.ScrollBarImageColor3 = Color3.new(113, 0, 255)

    local parentWidth = parent.Size.X * pixelsPerStud - (2 * paddingInPx)
    local parentHeight = parent.Size.Y * pixelsPerStud

    local bottomGap = 0
    local dialogY = bottomGap

    for i, dialog in ipairs(lines) do
        local line = lines[i]
        local charName = line['char']

        local left = dialogConfig[charName]['left']
        local lineConfig = dialogConfig[charName]
        local backgroundColor = lineConfig.backgroundColor
        print('backgroundColor' .. ' - start');
        print(backgroundColor);
        print('backgroundColor' .. ' - end');

        print('left' .. ' - start');
        print(left);
        print('left' .. ' - end');
        local text = charName .. ": " .. dialog['text']
        local font = Enum.Font.Arial
        local fontHeight = 41

        local innerLabelWidth = parentWidth - (2 * paddingInPx)

        local calcSize = TextService:GetTextSize(text, fontHeight, font,
                                                 Vector2.new(innerLabelWidth,
                                                             parentHeight))

        local height = calcSize.Y

        local outerLabel = Instance.new("TextLabel", scrollingFrame)

        outerLabel.Name = "Dialog-" .. i
        outerLabel.Position = UDim2.new(0, 0, 0, dialogY)
        outerLabel.Size = UDim2.new(0, parentWidth, 0, height + 2 * paddingInPx)

        outerLabel.Text = ""
        outerLabel.Font = font
        outerLabel.TextSize = fontHeight
        outerLabel.TextWrapped = true
        outerLabel.TextXAlignment = Enum.TextXAlignment.Left
        outerLabel.TextYAlignment = Enum.TextYAlignment.Top
        outerLabel.BorderColor3 = Color3.fromRGB(99, 46, 99)
        outerLabel.BorderSizePixel = 2
        -- outerLabel.BackgroundColor3 = Color3.fromRGB(253, 158, 240)
        outerLabel.BackgroundColor3 = backgroundColor
        outerLabel.TextColor3 = Color3.new(0, 0, 0)
        outerLabel.ZIndex = 1

        local innerLabel = outerLabel:Clone()
        innerLabel.Parent = outerLabel
        innerLabel.Name = "Dialog-" .. i
        innerLabel.Text = text
        innerLabel.ZIndex = 2
        innerLabel.Size = UDim2.new(0, innerLabelWidth, 0, height)
        innerLabel.Position = UDim2.new(0, paddingInPx, 0, paddingInPx)
        innerLabel.BackgroundTransparency = 1

        local absoluteHeight = outerLabel.AbsoluteSize.Y
        dialogY = dialogY + (absoluteHeight + 25)

    end

end

module.renderTexts = renderTexts
return module
