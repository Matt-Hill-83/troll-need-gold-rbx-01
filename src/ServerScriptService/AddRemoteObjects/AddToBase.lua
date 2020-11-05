local module = {}
print('mysss2')
local Sss = game:GetService("ServerScriptService")

local SceneConfig = require(Sss.Source.AddRemoteObjects.ScenesConfig)
local Dialog = require(Sss.Source.AddRemoteObjects.Dialog)
local Part = require(Sss.Source.AddRemoteObjects.Part)
local RowOfParts = require(Sss.Source.AddRemoteObjects.RowOfParts)
local RowOfParts2 = require(Sss.Source.AddRemoteObjects.RowOfParts2)

local sceneConfigs = SceneConfig.getScenesConfig()
local sceneDepth = 2

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
    local frameIndex = 1

    local basePadding = 1

    local rowProps = {
        xGap = 2,
        xOffset = basePadding,
        zOffset = basePadding,
        parent = part,
        direction = -1,
        moveTowardZero = {x = -1, y = 1, z = -1}
    }

    -- local sceneDepth = 2
    local sceneProps = {
        size = {x = 4, y = 4, z = sceneDepth},
        partName = "Scene"
    }

    local props = {
        rowProps = rowProps,
        sceneConfigs = sceneConfigs,
        sceneProps = sceneProps
        --
    }

    local renderedScenes = RowOfParts2.createRowOfParts2(props)

    for i, newScene in ipairs(renderedScenes) do
        -- local scene = sceneConfigs[i]
        -- local characters = scene.frames[frameIndex].characters
        -- local items = scene.frames[frameIndex].items
        -- renderCharacters(newScene, characters)
        -- renderItems(newScene, items)
        Dialog.renderDialog(newScene)
        -- 
    end

end

return module

