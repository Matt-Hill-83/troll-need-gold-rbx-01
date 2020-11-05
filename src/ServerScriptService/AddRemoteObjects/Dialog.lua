local module = {}

renderDialog = function(parent)
    local part = Instance.new("Part", parent)
    part.Size = Vector3.new(20, 20, 1)
    part.Position = Vector3.new(20, 20, 1)
    part.Position = parent.Position + Vector3.new(4, 4, -4)

    local sgui = Instance.new("SurfaceGui", part)
    local textButton = Instance.new("TextButton", sgui)
    local dialogSurface = textButton.Parent
    local textLabels = Instance.new("TextLabel", sgui)
    local counter = 1

    textButton.Text = "Next Page!"

    local testDict01 = {text = "one", color = "Yellow", char = "Britta"}
    local testDict02 = {text = "two", color = "Yellow", char = "Britta"}

    local texts2 = {testDict01, testDict02, testDict01}

    for i, dialog in ipairs(texts2) do
        local newLabel = Instance.new("TextLabel", dialogSurface)
        local charName = texts2[counter]['char']
        newLabel.Name = "Dialog Label-0" .. i
        newLabel.Text = charName .. ": " .. dialog['text']
        newLabel.Size = UDim2.new(0, 800, 0, 100)
        newLabel.Position = UDim2.new(0, 100, 0, i * 150)

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
