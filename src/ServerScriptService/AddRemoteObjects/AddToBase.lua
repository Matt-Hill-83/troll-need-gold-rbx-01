local module = {}
print('mysss2')
local Sss = game:GetService("ServerScriptService")

local config = require(Sss.Source.AddRemoteObjects.ScenesConfig)
local Utils = require(Sss.Source.Utils.Utils)
local scenes = config.getScenesConfig()
local sceneDepth = 1

createNewPart = function(item, size)
    local sceneProps = {decalId = item.decalId, size = size}
    return Utils.createPart(sceneProps)
end

renderCharacters = function(parent, items)
    local scenePadding = 1

    local rowProps = {
        parent = parent,
        partArray = items,
        partNamePrefix = "Character",

        size = {x = 8, y = 8, z = 1},
        xIncrement = 1,
        zOffset = -sceneDepth,
        xOffset = -scenePadding,
        yOffset = scenePadding * 2,
        createNewItemFunc = createNewPart
    }

    Utils.createRowOfParts(rowProps)
end

renderItems = function(parent, items)
    local scenePadding = 1

    local rowProps = {
        parent = parent,
        partArray = items,
        partNamePrefix = "Item",

        size = {x = 6, y = 6, z = 1},
        xIncrement = 1,
        zOffset = -sceneDepth,
        xOffset = -30,
        yOffset = scenePadding * 2,
        createNewItemFunc = createNewPart
    }
    Utils.createRowOfParts(rowProps)
end

renderDialog = function(parent)
    local part = Instance.new("Part", parent)
    part.Size = Vector3.new(20, 20, 1)
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

function module.addRemoteObjects(part)
    local basePadding = 4
    local sceneSize = {x = 48, y = 24, z = sceneDepth}
    local sceneParent = part
    local partNamePrefix = "Scene"

    local frameIndex = 1

    local rowProps = {
        parent = sceneParent,
        partArray = scenes,
        partNamePrefix = partNamePrefix,

        size = sceneSize,
        xIncrement = 4,
        xOffset = -basePadding,
        zOffset = -basePadding,

        createNewItemFunc = createNewPart
    }

    local rowOfScenes = Utils.createRowOfParts(rowProps)
    for i, newScene in ipairs(rowOfScenes) do
        local scene = scenes[i]
        local characters = scene.frames[frameIndex].characters
        local items = scene.frames[frameIndex].items
        renderCharacters(newScene, characters)
        renderItems(newScene, items)
        renderDialog(newScene)
        -- 
    end

end

return module

