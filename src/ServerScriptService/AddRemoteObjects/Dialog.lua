local TextService = game:GetService("TextService")

local module = {}

renderDialog = function(parent)

    local pixelsPerStud = 50
    local childWidth = parent.Size.X * pixelsPerStud
    local childHeight = 4 * pixelsPerStud

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
        local newLabel = Instance.new("TextLabel", sgui)
        newLabel.Font = Enum.Font.Legacy
        local font = newLabel.Font
        print('font' .. ' - start');
        print(font);
        print('font' .. ' - end');

        local charName = texts2[counter]['char']
        newLabel.Name = "Dialog-" .. i
        newLabel.Text = charName .. ": " .. text
        newLabel.TextWrapped = true
        newLabel.Size = UDim2.new(1, 0, 0, childHeight)
        newLabel.Selectable = true

        local abs = newLabel.AbsoluteSize
        print('abs' .. ' - start');
        print(abs);
        print('abs' .. ' - end');
        -- local TextService = game:GetService("TextService")
        local test = TextService:GetTextSize(dialog['text'], 50, newLabel.Font,
                                             Vector2.new(1000, 300))

        print('test' .. ' - start');
        print(test);
        print('test' .. ' - end');
        -- local GetTextSize = newLabel.local cll

        -- newLabel.Size = UDim2.new(0, childWidth, 0, 100)
        -- newLabel.Position = UDim2.new(0, 100, 0, i * 150)
        -- newLabel.Position = UDim2.new(0, 50, 0, 0) -- 50 px from the left
        newLabel.TextSize = 50
        -- newLabel.TextXAlignment = 
        newLabel.AutomaticSize = 3

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
