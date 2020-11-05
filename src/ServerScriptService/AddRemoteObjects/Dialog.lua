local TextService = game:GetService("TextService")

local module = {}

renderDialog = function(parent)

    local pixelsPerStud = 50
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
        text = "one asd fasdf asdf asdf asdf as dfas dfasd fasd fasd fasdf asd ",
        color = "Yellow",
        char = "Britta"
    }
    local testDict02 = {text = "two", color = "Yellow", char = "Britta"}

    local texts2 = {testDict01}
    -- local texts2 = {testDict01, testDict02, testDict01}

    for i, dialog in ipairs(texts2) do
        local text = dialog['text']
        local font = Enum.Font.Legacy
        local charName = texts2[counter]['char']
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

        print('calcSize' .. ' - start');
        print(calcSize);
        print('calcSize' .. ' - end');

        local height = calcSize.Y + textPadVert * 2

        newLabel.Name = "Dialog-" .. i
        newLabel.Text = charName .. ": " .. text
        newLabel.TextWrapped = true
        newLabel.Size = UDim2.new(1, 0, 0, height)
        newLabel.Selectable = true
        newLabel.TextSize = fontHeight

        local abs = newLabel.AbsoluteSize
        print('abs' .. ' - start');
        print(abs);
        print('abs' .. ' - end');
        -- local GetTextSize = newLabel.local 

        -- newLabel.Size = UDim2.new(1, 0, 0, childHeight)
        -- newLabel.Size = UDim2.new(0, childWidth, 0, 100)
        -- newLabel.Position = UDim2.new(0, 100, 0, i * 150)
        -- newLabel.Position = UDim2.new(0, 50, 0, 0) -- 50 px from the left
        -- newLabel.TextXAlignment = 
        -- newLabel.AutomaticSize = 3

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
