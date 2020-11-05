local module = {}
print('mysss2')
local Sss = game:GetService("ServerScriptService")

local SceneConfig = require(Sss.Source.AddRemoteObjects.ScenesConfig)
local Dialog = require(Sss.Source.AddRemoteObjects.Dialog)
local Part = require(Sss.Source.AddRemoteObjects.Part)
local RowOfParts2 = require(Sss.Source.AddRemoteObjects.RowOfParts2)

local sceneConfigs = SceneConfig.getScenesConfig()

createNewPart = function(item, size)
    local sceneProps = {decalId = item.decalId, size = size}
    return Part.createPart(sceneProps)
end

renderCharacters = function(parent, itemConfigs)
    local parentPadding = 1

    local rowProps = {
        alignToParentEdge = {x = true, y = false, z = true},
        xGap = 1,
        xOffset = 4,
        zOffset = parentPadding,
        yOffset = parentPadding,

        parent = parent,
        direction = -1,
        moveTowardZero = {x = -1, y = 1, z = -1}
    }

    local characterProps = {
        size = {x = 6, y = 8, z = 1},
        partName = "Character"
    }

    local props = {
        rowProps = rowProps,
        itemConfigs = itemConfigs,
        itemProps = characterProps
    }

    RowOfParts2.createRowOfParts(props)
end

renderItems = function(parent, itemConfigs)
    local parentPadding = 1

    local rowProps = {
        alignToParentEdge = {x = false, y = false, z = true},
        xGap = 1,
        xOffset = -4,
        zOffset = parentPadding,
        yOffset = parentPadding,

        parent = parent,
        direction = 1,
        moveTowardZero = {x = 1, y = 1, z = -1}
    }

    local characterProps = {size = {x = 6, y = 8, z = 1}, partName = "Item"}

    local props = {
        rowProps = rowProps,
        itemConfigs = itemConfigs,
        itemProps = characterProps
    }

    RowOfParts2.createRowOfParts(props)
end

function module.addRemoteObjects(part)
    local frameIndex = 1
    local parentPadding = 1

    local rowProps = {
        alignToParentEdge = {x = true, y = true, z = true},
        xGap = 4,
        xOffset = parentPadding,
        zOffset = parentPadding,
        -- yOffset = parentPadding,

        parent = part,
        direction = -1,
        moveTowardZero = {x = -1, y = 1, z = -1}
    }

    local sceneProps = {size = {x = 48, y = 24, z = 1}, partName = "Scene"}

    local props = {
        rowProps = rowProps,
        itemConfigs = sceneConfigs,
        itemProps = sceneProps
    }

    local renderedScenes = RowOfParts2.createRowOfParts(props)

    for i, newScene in ipairs(renderedScenes) do
        local sceneConfig = sceneConfigs[i]
        local characterConfigs = sceneConfig.frames[frameIndex].characters
        local items = sceneConfig.frames[frameIndex].items

        renderCharacters(newScene, characterConfigs)
        renderItems(newScene, items)
        Dialog.renderDialog(newScene)
    end

end

return module

