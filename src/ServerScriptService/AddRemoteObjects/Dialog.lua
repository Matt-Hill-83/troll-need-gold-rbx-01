local TextService = game:GetService("TextService")
local Sss = game:GetService("ServerScriptService")
local Part = require(Sss.Source.AddRemoteObjects.Part)

local module = {}

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
        color = BrickColor.new("red")
    }

    local buttonBlock = Part.createPartWithVectors(buttonBlockProps)
    print('buttonBlock' .. ' - start');
    print(buttonBlock);
    print('buttonBlock' .. ' - end');
    return buttonBlock

end

renderDialog = function(base)

    local pixelsPerStud = 40
    local paddingInPx = 1 * pixelsPerStud
    local TextButtonPaddingInPx = 1 * pixelsPerStud

    local dialogBlockProps = {
        name = 'dialogBlock',
        parent = base,
        size = base.Size + Vector3.new(-2, -2, 0),
        position = base.Position + Vector3.new(0, 0, -0.5),
        color = BrickColor.new("White")
    }

    local dialogBlock = Part.createPartWithVectors(dialogBlockProps)

    local parentWidth = dialogBlock.Size.X * pixelsPerStud - (2 * paddingInPx)
    local parentHeight = dialogBlock.Size.Y * pixelsPerStud

    local sgui = Instance.new("SurfaceGui", dialogBlock)
    local renderButtonBlockProps = {parent = base, sibling = dialogBlock}

    renderButtonBlock(renderButtonBlockProps)

    -- local dialogSurface = textButton.Parent
    -- Instance.new("TextLabel", sgui)
    local counter = 1

    local testDict01 = {
        text = "aaa bbb cccc ddd eee fff ggg hhh iii jjj kkk lll mmm nnn ooo ppp qqq rrr sss ttt",
        color = "Yellow",
        char = "Britta"
    }
    local testDict02 = {text = "two", color = "Yellow", char = "Britta"}

    -- local texts = {testDict01}
    local texts = {testDict01, testDict02, testDict01}

    local dialogY = paddingInPx

    for i, dialog in ipairs(texts) do
        local charName = texts[counter]['char']
        local text = charName .. ": " .. dialog['text']

        local font = Enum.Font.Legacy
        local fontHeight = 50
        local textPadVert = fontHeight / 4

        local newLabel = Instance.new("TextLabel", sgui)
        newLabel.Font = font

        local calcSize = TextService:GetTextSize(text, fontHeight,
                                                 newLabel.Font, Vector2.new(
                                                     parentWidth, parentHeight))

        local height = calcSize.Y + textPadVert * 2

        newLabel.Name = "Dialog-" .. i
        newLabel.Text = text
        newLabel.Size = UDim2.new(0, parentWidth, 0, height)
        newLabel.Position = UDim2.new(0, TextButtonPaddingInPx, 0, dialogY)
        newLabel.Selectable = true

        newLabel.TextWrapped = true
        newLabel.TextSize = fontHeight
        newLabel.TextXAlignment = Enum.TextXAlignment.Left
        newLabel.TextYAlignment = Enum.TextYAlignment.Top

        local absoluteHeight = newLabel.AbsoluteSize.Y

        dialogY = dialogY + absoluteHeight + paddingInPx

    end

    -- local textButton = Instance.new("TextButton", sgui)
    -- textButton.Size = UDim2.new(0, childWidth, 0, childHeight)
    -- textButton.Text = "Next Page!"
    -- local function onActivated()
    --     counter = counter + 1
    --     textButton.Text = "Page: " .. counter

    -- end

    -- textButton.MouseButton1Click:Connect(onActivated)
end

module.renderDialog = renderDialog
return module
