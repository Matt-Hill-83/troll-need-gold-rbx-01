local TextService = game:GetService("TextService")
local Sss = game:GetService("ServerScriptService")
local Part = require(Sss.Source.AddRemoteObjects.Part)
local RowOfParts = require(Sss.Source.AddRemoteObjects.RowOfParts)

local module = {}

local testDict01 = {text = "one one one ", color = "Yellow", char = "Britta"}
local testDict02 = {text = "two", color = "Yellow", char = "Britta"}
local testDict03 = {
    text = "three three thre ddd eee fff ggg hhh iii jjj kkk lll mmm nnn ooo ppp qqq rrr sss ttt",
    color = "Yellow",
    char = "Britta"
}

local pageNum = 1

renderDialog = function(props)
    local parent = props.parent
    local pixelsPerStud = 45
    local paddingInPx = pixelsPerStud / 4

    local dialogContainer = renderDialogContainer({parent = parent})
    local dialogBlock = renderDialogBlock({parent = dialogContainer})
    local textsContainer = renderTextsContainer({parent = dialogBlock})

    local renderTextsProps = {
        parent = textsContainer,
        pageNum = pageNum,
        paddingInPx = paddingInPx,
        pixelsPerStud = pixelsPerStud
    }
    renderTexts(renderTextsProps)

    local renderButtonBlockProps = {
        parent = dialogBlock,
        sibling = textsContainer
    }
    renderButtonBlock(renderButtonBlockProps)

end

renderDialogContainer = function(props)
    local parent = props.parent

    local childSize = Vector3.new(20, 16, 1)
    local desiredOffsetFromParentEdge = Vector3.new(-1, -1, 0)

    local itemDuplicationConfig = {
        alignToParentFarEdge = Vector3.new(1, 1, -1),
        moveTowardZero = Vector3.new(-1, -1, -1),
        rowDirection = Vector3.new(-1, -1, -1)
    }

    local offsetProps = {
        parent = parent,
        childSize = childSize,
        itemDuplicationConfig = itemDuplicationConfig,
        offset = desiredOffsetFromParentEdge
    }

    local childPos = RowOfParts.getCenterPosFromDesiredEdgeOffset(offsetProps)

    local dialogBlockProps = {
        name = 'dialogContainer',
        parent = parent,
        color = BrickColor.new("Buttermilk"),
        size = childSize,
        position = childPos
    }

    return Part.createPartWithVectors(dialogBlockProps)

end

renderDialogBlock = function(props)
    local parent = props.parent

    local partProps = {
        name = 'Dialog',
        parent = parent,
        color = BrickColor.new("Light blue"),
        size = parent.Size + Vector3.new(-1, -1, 0.2),
        position = parent.Position + Vector3.new(0, 0, 0)
    }

    return Part.createPartWithVectors(partProps)

end

renderButtonBlock = function(props)
    local parent = props.parent
    local sibling = props.sibling

    local newPartHeight = 2
    local bottomOffset = 0.1

    local distanceY = sibling.Size.Y / 2 + newPartHeight / 2 + bottomOffset
    local siblingSizeCopy = Vector3.new(sibling.Size.X, newPartHeight,
                                        sibling.Size.Z)

    local buttonBlockProps = {
        name = 'buttonBlock',
        parent = parent,
        size = siblingSizeCopy,
        position = sibling.Position + Vector3.new(0, -distanceY, 0),
        color = BrickColor.new("Light red")
    }

    local buttonBlock = Part.createPartWithVectors(buttonBlockProps)
    local sgui = Instance.new("SurfaceGui", buttonBlock)
    sgui.SizingMode = "PixelsPerStud"

    local textButton = Instance.new("TextButton", sgui)
    -- textButton.Size = UDim2.new(0.25, 0, 0.5, 0)
    -- textButton.Position = UDim2.new(0.75, 0, 0.25, 0)
    -- textButton.Text = "Next Page!"
    -- textButton.TextSize = 50

    textButton.Size = UDim2.new(1, 0, 1, 0)
    textButton.BackgroundColor3 = Color3.new(1, 1, 1)
    textButton.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
    textButton.Font = Enum.Font.SourceSans
    textButton.TextColor3 = Color3.new(0, 0, 0)
    textButton.TextSize = 40

    local function onActivated()
        pageNum = pageNum + 1
        textButton.Text = "Page: " .. pageNum
    end

    textButton.MouseButton1Click:Connect(onActivated)
    return buttonBlock
end

renderTextsContainer = function(props)
    local parent = props.parent

    local childSize = Vector3.new(parent.Size.X - 2, 10, 0.2)
    local desiredOffsetFromParentEdge = Vector3.new(-1, -1, 0)

    local itemDuplicationConfig = {
        alignToParentFarEdge = Vector3.new(1, 1, -1),
        moveTowardZero = Vector3.new(-1, -1, -1),
        rowDirection = Vector3.new(-1, -1, -1)
    }

    local offsetProps = {
        parent = parent,
        childSize = childSize,
        itemDuplicationConfig = itemDuplicationConfig,
        offset = desiredOffsetFromParentEdge
    }

    local childPos = RowOfParts.getCenterPosFromDesiredEdgeOffset(offsetProps)

    local dialogBlockProps = {
        name = 'textsContainer',
        parent = parent,
        color = BrickColor.new("Pink"),
        size = childSize,
        position = childPos
    }

    return Part.createPartWithVectors(dialogBlockProps)
end

renderTexts = function(props)
    local parent = props.parent
    local paddingInPx = props.paddingInPx
    local pixelsPerStud = props.pixelsPerStud

    local sgui = Instance.new("SurfaceGui", parent)
    sgui.SizingMode = "PixelsPerStud"

    local UIPadding0 = Instance.new("UIPadding", sgui)
    UIPadding0.PaddingBottom = UDim.new(0.1, 0)
    UIPadding0.PaddingTop = UDim.new(0.1, 0)
    UIPadding0.PaddingLeft = UDim.new(0.1, 0)
    UIPadding0.PaddingRight = UDim.new(0.1, 0)

    local scrollingFrame = Instance.new("ScrollingFrame", sgui)
    scrollingFrame.Size = UDim2.new(1, 0, 1, 0)
    -- scrollingFrame.Size = UDim2.new(0.9, 0, 0.9, 0)
    -- scrollingFrame.Position = UDim2.new(0.05, 0, 0.05, 0)
    scrollingFrame.BorderSizePixel = 5
    scrollingFrame.BackgroundColor3 = Color3.new(196, 132, 225)
    -- scrollingFrame.BackgroundTransparency = 1

    -- local texts = {
    --     testDict01, testDict02, testDict03, testDict01, testDict02, testDict03,
    --     testDict01, testDict02, testDict03
    -- }
    local texts = {testDict01, testDict02, testDict03}

    local parentWidth = parent.Size.X * pixelsPerStud - (0 * paddingInPx)
    local parentHeight = parent.Size.Y * pixelsPerStud

    local bottomGap = 1
    local dialogY = bottomGap

    for i, dialog in ipairs(texts) do
        local charName = texts[pageNum]['char']
        local text = "  " .. charName .. ": " .. dialog['text']

        local font = Enum.Font.Arial
        local fontHeight = 41

        local outerLabel = Instance.new("TextLabel", scrollingFrame)
        local newLabel = Instance.new("TextLabel", outerLabel)
        outerLabel.Font = font
        newLabel.Font = font

        local calcSize = TextService:GetTextSize(text, fontHeight, font,
                                                 Vector2.new(parentWidth,
                                                             parentHeight))

        local height = calcSize.Y
        print('height' .. ' - start');
        print(height);
        print('height' .. ' - end');
        local textHeight = 50
        local paddingPct = 0.3

        local heightAdder = paddingPct * textHeight
        print('heightAdder' .. ' - start');
        print(heightAdder);
        print('heightAdder' .. ' - end');
        local yOffset = heightAdder / 2
        print('yOffset' .. ' - start');
        print(yOffset);
        print('yOffset' .. ' - end');
        newLabel.Name = "Dialog-" .. i
        newLabel.Text = text
        outerLabel.Text = text

        outerLabel.BorderColor3 = Color3.new(255, 10, 92)
        outerLabel.ZIndex = 1
        newLabel.ZIndex = 2

        newLabel.Size = UDim2.new(1, 0, 0, height)
        outerLabel.Size = UDim2.new(1, 0, 0, height + heightAdder)
        print('dialogY' .. ' - start');
        print(dialogY);
        print('dialogY' .. ' - end');
        outerLabel.Position = UDim2.new(0, 0, 0, dialogY)
        newLabel.Position = UDim2.new(0, 0, 0, yOffset)

        newLabel.BackgroundTransparency = 0.5
        newLabel.Selectable = true
        newLabel.BackgroundColor3 = Color3.new(255, 220, 237)
        newLabel.BorderColor3 = Color3.new(255, 0, 92)
        newLabel.BorderSizePixel = 2
        newLabel.TextColor3 = Color3.new(0, 0, 0)

        newLabel.TextWrapped = true
        outerLabel.TextWrapped = true

        newLabel.TextSize = fontHeight
        outerLabel.TextSize = fontHeight

        newLabel.TextXAlignment = Enum.TextXAlignment.Left
        newLabel.TextYAlignment = Enum.TextYAlignment.Top

        -- '#ff005c'
        -- '#ff005c'

        local absoluteHeight = newLabel.AbsoluteSize.Y

        dialogY = dialogY + (absoluteHeight + paddingInPx * 3)

    end

end

module.renderDialog = renderDialog
return module
