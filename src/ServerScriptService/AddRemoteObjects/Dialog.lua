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
    textsContainer.BrickColor = BrickColor.new("White")

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
    local siblingSizeCopy = Vector3.new(sibling.Size.X / 2, newPartHeight,
                                        sibling.Size.Z)

    local buttonBlockProps = {
        name = 'buttonBlock',
        parent = parent,
        size = siblingSizeCopy,
        position = sibling.Position +
            Vector3.new(-sibling.Size.X / 4, -distanceY, 0),
        color = BrickColor.new("Light red")
    }

    local buttonBlock = Part.createPartWithVectors(buttonBlockProps)
    local sgui = Instance.new("SurfaceGui", buttonBlock)
    sgui.SizingMode = "PixelsPerStud"

    local textButton = Instance.new("TextButton", sgui)

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

    local childSize = Vector3.new(parent.Size.X - 2, 10, 0.5)
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
        color = BrickColor.new("White"),
        size = childSize,
        position = childPos
    }

    return Part.createPartWithVectors(dialogBlockProps)
end

addPadding = function(props)
    local parent = props.parent
    local paddingPct = props.paddingPct

    local UIPadding = Instance.new("UIPadding", parent)

    UIPadding.PaddingBottom = UDim.new(paddingPct, 0)
    UIPadding.PaddingTop = UDim.new(paddingPct, 0)
    UIPadding.PaddingLeft = UDim.new(paddingPct, 0)
    UIPadding.PaddingRight = UDim.new(paddingPct, 0)
end

renderTexts = function(props)
    local parent = props.parent
    local paddingInPx = props.paddingInPx / 2
    local pixelsPerStud = props.pixelsPerStud

    local sgui = Instance.new("SurfaceGui", parent)
    sgui.SizingMode = "PixelsPerStud"

    local scrollingFrame = Instance.new("ScrollingFrame", sgui)

    local scrollingFramePaddingPct = 0.02
    addPadding({parent = scrollingFrame, paddingPct = scrollingFramePaddingPct})

    scrollingFrame.Size = UDim2.new(1, 0, 1, 0)
    scrollingFrame.BorderSizePixel = 3
    scrollingFrame.BorderMode = Enum.BorderMode.Inset
    scrollingFrame.BackgroundColor3 = Color3.new(196, 132, 225)

    local texts = {testDict01, testDict02, testDict03}

    local parentWidth = parent.Size.X * pixelsPerStud - (2 * paddingInPx)
    local parentHeight = parent.Size.Y * pixelsPerStud

    local bottomGap = 0
    local dialogY = bottomGap

    for i, dialog in ipairs(texts) do
        local charName = texts[pageNum]['char']
        local text = charName .. ": " .. dialog['text']

        local font = Enum.Font.Arial
        local fontHeight = 41

        local outerLabel = Instance.new("TextLabel", scrollingFrame)
        -- outerLabel.Style = Enum.ButtonStyle.RobloxRoundDropdownButton

        local newLabel = Instance.new("TextLabel", outerLabel)
        -- outerLabel.Font = font
        newLabel.Font = font

        local calcSize = TextService:GetTextSize(text, fontHeight, font,
                                                 Vector2.new(parentWidth,
                                                             parentHeight))

        local height = calcSize.Y

        newLabel.Name = "Dialog-" .. i

        outerLabel.Text = ""
        newLabel.Text = text

        outerLabel.BorderColor3 = Color3.new(255, 10, 92)
        outerLabel.ZIndex = 1
        newLabel.ZIndex = 2

        outerLabel.Size = UDim2.new(0, parentWidth + 2 * paddingInPx, 0,
                                    height + 2 * paddingInPx)
        newLabel.Size = UDim2.new(0, parentWidth, 0, height)

        outerLabel.Position = UDim2.new(0, 0, 0, dialogY)
        newLabel.Position = UDim2.new(0, paddingInPx, 0, paddingInPx)

        newLabel.BackgroundTransparency = 0.5
        newLabel.Selectable = true

        outerLabel.BackgroundColor3 = Color3.fromRGB(253, 158, 240)
        newLabel.BackgroundColor3 = Color3.fromRGB(253, 158, 240)

        outerLabel.BorderColor3 = Color3.fromRGB(99, 46, 99)
        newLabel.BorderColor3 = Color3.new(255, 0, 92)

        outerLabel.BorderSizePixel = 2
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
