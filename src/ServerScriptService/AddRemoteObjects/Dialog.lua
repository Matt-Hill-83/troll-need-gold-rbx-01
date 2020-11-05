local module = {}

renderDialog = function(parent)

    local pixelsPerStud = 50
    local childWidth = parent.Size.X * pixelsPerStud
    local childHeight = 2 * pixelsPerStud

    print('childWidth' .. ' - start');
    print(childWidth);
    print('childWidth' .. ' - end');

    local sgui = Instance.new("SurfaceGui", parent)
    local textButton = Instance.new("TextButton", sgui)
    textButton.Size = UDim2.new(0, childWidth, 0, childHeight)

    local dialogSurface = textButton.Parent
    local textLabels = Instance.new("TextLabel", sgui)
    local counter = 1

    textButton.Text = "Next Page!"

    local testDict01 = {
        text = "one asd fasdf asdf asdf asdf as dfas dfasd fasd fasd fasdf asd ",
        color = "Yellow",
        char = "Britta"
    }
    local testDict02 = {text = "two", color = "Yellow", char = "Britta"}

    local texts2 = {testDict01, testDict02, testDict01}

    for i, dialog in ipairs(texts2) do
        local newLabel = Instance.new("TextLabel", dialogSurface)
        local charName = texts2[counter]['char']
        newLabel.Name = "Dialog Label-0" .. i
        newLabel.Text = charName .. ": " .. dialog['text']
        newLabel.TextWrapped = true
        newLabel.Size = UDim2.new(0, childWidth, 0, 100)
        -- newLabel.Position = UDim2.new(0, 100, 0, i * 150)
        newLabel.Position = UDim2.new(0, 50, 0, 0) -- 50 px from the left
        newLabel.TextSize = 50
        -- newLabel.TextXAlignment = 
        newLabel.AutomaticSize = 3

    end

    local function onActivated()
        counter = counter + 1
        textButton.Text = "Page: " .. counter

        for i, textLabel in ipairs({textLabels}) do
            print(textLabel.Name .. " is child number " .. i)
        end
    end

    textButton.MouseButton1Click:Connect(onActivated)
end

module.renderDialog = renderDialog
return module
