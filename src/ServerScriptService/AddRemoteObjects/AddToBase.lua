local module = {}
print('mysss2')
local Sss = game:GetService("ServerScriptService")

local config = require(Sss.Source.AddRemoteObjects.ScenesConfig)
local Dialog = require(Sss.Source.AddRemoteObjects.Dialog)
local Part = require(Sss.Source.AddRemoteObjects.Part)
local RowOfParts = require(Sss.Source.AddRemoteObjects.RowOfParts)

local sceneConfigs = config.getScenesConfig()
local sceneDepth = 1

createNewPart = function(item, size)
    local sceneProps = {decalId = item.decalId, size = size}
    return Part.createPart(sceneProps)
end

renderCharacters = function(parent, items)
    local scenePadding = 1

    local rowProps = {
        parent = parent,
        partConfigs = items,
        partNamePrefix = "Character",

        size = {x = 8, y = 8, z = 1},
        xIncrement = 1,
        zOffset = -sceneDepth,
        xOffset = -scenePadding,
        yOffset = scenePadding * 2,
        createNewItemFunc = createNewPart
    }

    RowOfParts.createRowOfParts(rowProps)
end

renderItems = function(parent, items)
    local scenePadding = 1

    local rowProps = {
        parent = parent,
        partConfigs = items,
        partNamePrefix = "Item",

        size = {x = 6, y = 6, z = 1},
        xIncrement = 1,
        zOffset = -sceneDepth,
        xOffset = -30,
        yOffset = scenePadding * 2,

        createNewItemFunc = createNewPart
    }
    RowOfParts.createRowOfParts(rowProps)
end

function module.addRemoteObjects(part)
    local basePadding = 4
    local sceneSize = {x = 48, y = 24, z = sceneDepth}
    local sceneParent = part
    local partNamePrefix = "Scene"

    local frameIndex = 1

    local rowProps = {
        parent = sceneParent,
        partConfigs = sceneConfigs,
        partNamePrefix = partNamePrefix,

        size = sceneSize,
        xIncrement = 4,
        xOffset = -basePadding,
        zOffset = -basePadding,

        createNewItemFunc = createNewPart
    }

    local rowOfScenes = RowOfParts.createRowOfParts(rowProps)

    for i, newScene in ipairs(rowOfScenes) do
        local scene = sceneConfigs[i]
        local characters = scene.frames[frameIndex].characters
        local items = scene.frames[frameIndex].items
        renderCharacters(newScene, characters)
        renderItems(newScene, items)
        Dialog.renderDialog(newScene)
        -- 
    end

end

return module

