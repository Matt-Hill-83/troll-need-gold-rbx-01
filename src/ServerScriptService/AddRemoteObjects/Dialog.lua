local TextService = game:GetService("TextService")

local module = {}

renderDialog = function(parent)

    local pixelsPerStud = 40
    local parentWidth = parent.Size.X * pixelsPerStud
    local parentHeight = parent.Size.Y * pixelsPerStud
    local childHeight = 4 * pixelsPerStud

    print('parentWidth' .. ' - start');
    print(parentWidth);
    print('parentWidth' .. ' - end');
    -- print('childWidth' .. ' - start');
    -- print(childWidth);
    -- print('childWidth' .. ' - end');

    local sgui = Instance.new("SurfaceGui", parent)

    -- local dialogSurface = textButton.Parent
    -- Instance.new("TextLabel", sgui)
    local counter = 1

    local testDict01 = {
        text = "aaa bbb cccc ddd eee fff ggg hhh iii jjj kkk lll mmm nnn ooo ppp qqq rrr sss ttt",
        color = "Yellow",
        char = "Britta"
    }
    local testDict02 = {text = "two", color = "Yellow", char = "Britta"}

    local texts = {testDict01}
    -- local texts = {testDict01, testDict02, testDict01}

    for i, dialog in ipairs(texts) do
        local charName = texts[counter]['char']
        local text = charName .. ": " .. dialog['text']

        local font = Enum.Font.Legacy
        local fontHeight = 50
        local textPadVert = fontHeight / 4

        local newLabel = Instance.new("TextLabel", sgui)
        newLabel.Font = font
        print('font' .. ' - start');
        print(font);
        print('font' .. ' - end');

        local calcSize = TextService:GetTextSize(text, fontHeight,
                                                 newLabel.Font, Vector2.new(
                                                     parentWidth, parentHeight))

        local height = calcSize.Y + textPadVert * 2

        newLabel.Name = "Dialog-" .. i
        newLabel.Text = text
        newLabel.Size = UDim2.new(0, parentWidth, 0, height)
        newLabel.Selectable = true

        newLabel.TextWrapped = true
        newLabel.TextSize = fontHeight
        newLabel.TextXAlignment = Enum.TextXAlignment.Left
        newLabel.TextYAlignment = Enum.TextYAlignment.Top

        local abs = newLabel.AbsoluteSize

        print('calcSize' .. ' - start');
        print(calcSize);
        print('calcSize' .. ' - end');

        print('abs' .. ' - start');
        print(abs);
        print('abs' .. ' - end');

        -- newLabel.Position = UDim2.new(0, 100, 0, i * 150)

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
