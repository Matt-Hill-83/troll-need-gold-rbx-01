local TextService = game:GetService("TextService")
local Sss = game:GetService("ServerScriptService")
local Part = require(Sss.Source.AddRemoteObjects.Part)
local RowOfParts = require(Sss.Source.AddRemoteObjects.RowOfParts)

local module = {}

local testDict01 = {text = "aaa bbb cccc ", color = "Yellow", char = "Britta"}
local testDict03 = {
    text = "aaa bbb cccc ddd eee fff ggg hhh iii jjj kkk lll mmm nnn ooo ppp qqq rrr sss ttt",
    color = "Yellow",
    char = "Britta"
}
local testDict02 = {text = "two", color = "Yellow", char = "Britta"}

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
    local bottomOffset = 1

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

    local textButton = Instance.new("TextButton", sgui)
    textButton.Size = UDim2.new(0.5, 0, 0.5, 0)
    textButton.Position = UDim2.new(0.25, 0, .25, 0)
    textButton.Text = "Next Page!"

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
        color = BrickColor.new("Light blue"),
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
    local scrollingFrame = Instance.new("ScrollingFrame", sgui)
    scrollingFrame.Size = UDim2.new(1, 0, 1, 0)
    scrollingFrame.BackgroundTransparency = 1

    local texts = {
        testDict01, testDict02, testDict03, testDict01, testDict02, testDict03,
        testDict01, testDict02, testDict03
    }

    local parentWidth = parent.Size.X * pixelsPerStud - (0 * paddingInPx)
    local parentHeight = parent.Size.Y * pixelsPerStud

    local bottomGap = 1
    local dialogY = bottomGap

    for i, dialog in ipairs(texts) do
        local charName = texts[pageNum]['char']
        local text = charName .. ": " .. dialog['text']

        local font = Enum.Font.Arial
        local fontHeight = 41

        local newLabel = Instance.new("TextLabel", scrollingFrame)
        newLabel.Font = font

        local calcSize = TextService:GetTextSize(text, fontHeight, font,
                                                 Vector2.new(parentWidth,
                                                             parentHeight))

        local height = calcSize.Y

        newLabel.Name = "Dialog-" .. i
        newLabel.Text = text
        newLabel.Size = UDim2.new(1, 0, 0, height)
        newLabel.Position = UDim2.new(0, 0, 0, dialogY)
        newLabel.Selectable = true

        newLabel.TextWrapped = true
        newLabel.TextSize = fontHeight
        newLabel.TextXAlignment = Enum.TextXAlignment.Left
        newLabel.TextYAlignment = Enum.TextYAlignment.Top

        local absoluteHeight = newLabel.AbsoluteSize.Y

        dialogY = dialogY + absoluteHeight + paddingInPx

    end
    return textsBlock
end

module.renderDialog = renderDialog
return module
