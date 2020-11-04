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
        -- 
    end

end

return module

