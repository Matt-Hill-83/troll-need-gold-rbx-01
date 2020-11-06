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

renderButtonBlock = function(props)
    local parent = props.parent
    local sibling = props.sibling

    local newPartHeight = 4
    local bottomOffset = 1

    local distanceY = sibling.Size.Y / 2 + newPartHeight / 2 + bottomOffset
    local siblingSizeCopy = Vector3.new(sibling.Size.X, newPartHeight,
                                        sibling.Size.Z)

    local buttonBlockProps = {
        name = 'buttonBlock',
        parent = parent,
        size = siblingSizeCopy,
        position = sibling.Position + Vector3.new(0, -distanceY, 0),
        color = BrickColor.new("Red")
    }

    local buttonBlock = Part.createPartWithVectors(buttonBlockProps)
    return buttonBlock

end

renderDialogContainer = function(props)
    local parent = props.parent

    local childSize = Vector3.new(20, 16, 1)
    local desiredOffset = Vector3.new(-1, -1, -1)
    local offsetProps = {
        parent = parent,
        childSize = childSize,
        desiredOffset = desiredOffset
    }

    local childPos = RowOfParts.getCenterPosFromDeriredEdgeOffset(offsetProps)

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

    local dialogBlockProps = {
        name = 'Dialog',
        parent = parent,
        color = BrickColor.new("Alder"),
        size = parent.Size + Vector3.new(-2, -2, 0),
        -- size = parent.Size + Vector3.new(-2, -2, 0),
        position = parent.Position + Vector3.new(0, 0, -0.5)
    }

    return Part.createPartWithVectors(dialogBlockProps)

end

renderTexts = function(props)
    local parent = props.parent
    local pageNum = props.pageNum
    local paddingInPx = props.paddingInPx
    local pixelsPerStud = props.pixelsPerStud

    local sgui = Instance.new("SurfaceGui", parent)
    local texts = {
        testDict01, testDict02, testDict03, testDict01, testDict02, testDict03,
        testDict01, testDict02, testDict03
    }

    print('parent.Size.X' .. ' - start');
    print(parent.Size.X);
    print('parent.Size.X' .. ' - end');

    local parentWidth = parent.Size.X * pixelsPerStud - (0 * paddingInPx)
    -- local parentWidth = parent.Size.X * pixelsPerStud - (2 * paddingInPx)
    local parentHeight = parent.Size.Y * pixelsPerStud

    local bottomGap = 1
    local dialogY = bottomGap

    local textButtonPaddingInPx = 1 * pixelsPerStud

    for i, dialog in ipairs(texts) do
        local charName = texts[pageNum]['char']
        local text = charName .. ": " .. dialog['text']

        local font = Enum.Font.Arial
        local fontHeight = 41
        -- local fontHeight = 50
        local textPadVert = 0
        -- local textPadVert = fontHeight / 4

        local newLabel = Instance.new("TextLabel", sgui)
        newLabel.Font = font

        local calcSize = TextService:GetTextSize(text, fontHeight, font,
                                                 Vector2.new(parentWidth,
                                                             parentHeight))

        local height = calcSize.Y
        print('calcSize' .. ' - start');
        print(calcSize);
        print('calcSize' .. ' - end');
        -- local height = calcSize.Y + textPadVert * 2

        print('parentWidth' .. ' - start');
        print(parentWidth);
        print('parentWidth' .. ' - end');
        newLabel.Name = "Dialog-" .. i
        newLabel.Text = text
        newLabel.Size = UDim2.new(1, 0, 0, height)
        -- newLabel.Size = UDim2.new(0, parentWidth, 0, height)
        newLabel.Position = UDim2.new(0, 0, 0, dialogY)
        -- newLabel.Position = UDim2.new(0, 50, 0, dialogY)
        -- newLabel.Position = UDim2.new(0, textButtonPaddingInPx, 0, dialogY)
        newLabel.Selectable = true

        newLabel.TextWrapped = true
        newLabel.TextSize = fontHeight
        newLabel.TextXAlignment = Enum.TextXAlignment.Left
        newLabel.TextYAlignment = Enum.TextYAlignment.Top

        print('newLabel.AbsoluteSize' .. ' - start');
        print(newLabel.AbsoluteSize);
        print('newLabel.AbsoluteSize' .. ' - end');

        local absoluteHeight = newLabel.AbsoluteSize.Y
        print('absoluteHeight' .. ' - start');
        print(absoluteHeight);
        print('absoluteHeight' .. ' - end');

        dialogY = dialogY + absoluteHeight + paddingInPx

    end
end

renderDialog = function(props)
    local parent = props.parent

    local dialogContainer = renderDialogContainer({parent = parent})
    local dialogBlock = renderDialogBlock({parent = dialogContainer})

    local pixelsPerStud = 45
    local paddingInPx = 1 * pixelsPerStud

    local renderButtonBlockProps = {
        parent = dialogContainer,
        sibling = dialogBlock
    }

    -- local dialogSurface = textButton.Parent
    -- Instance.new("TextLabel", sgui)
    local pageNum = 1

    local renderTextsProps = {
        parent = dialogBlock,
        pageNum = pageNum,
        paddingInPx = paddingInPx,
        pixelsPerStud = pixelsPerStud
    }

    renderTexts(renderTextsProps)
    renderButtonBlock(renderButtonBlockProps)

    -- local textButton = Instance.new("TextButton", sgui)
    -- textButton.Size = UDim2.new(0, childWidth, 0, childHeight)
    -- textButton.Text = "Next Page!"
    -- local function onActivated()
    --     pageNum = pageNum + 1
    --     textButton.Text = "Page: " .. pageNum

    -- end

    -- textButton.MouseButton1Click:Connect(onActivated)
end

module.renderDialog = renderDialog
return module
