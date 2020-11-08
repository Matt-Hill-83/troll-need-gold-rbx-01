local module = {}
print('mysss2')
local Sss = game:GetService("ServerScriptService")

local SceneConfig = require(Sss.Source.AddRemoteObjects.ScenesConfig)
local Dialog = require(Sss.Source.AddRemoteObjects.Dialog)
local RowOfParts = require(Sss.Source.AddRemoteObjects.RowOfParts)
-- local Part = require(Sss.Source.AddRemoteObjects.Part)

local sceneConfigs = SceneConfig.getScenesConfig()

renderItems = function(parent, itemConfigs)
    local parentPadding = 1

    local rowProps = {
        alignToParentFarEdge = {x = false, y = false, z = false},
        xGap = 1,
        xOffset = -4,
        yOffset = parentPadding,

        parent = parent,
        moveTowardZero = {x = 1, y = 1, z = -1}
    }

    -- local characterProps = {size = {x = , y = 8, z = 1}, partName = "Item"}
    local itemProps = {size = Vector3.new(4, 6, 1), partName = "Item"}

    local props = {
        rowProps = rowProps,
        itemConfigs = itemConfigs,
        itemProps = itemProps
    }

    RowOfParts.createRowOfParts(props)
end

renderCharacters = function(parent, itemConfigs)
    local parentPadding = 1

    local rowProps = {
        alignToParentFarEdge = Vector3.new(1, -1, -1),
        xGap = 1,
        offset = Vector3.new(4, parentPadding, 0),
        rowDirection = Vector3.new(-1, 1, 1),
        parent = parent,
        moveTowardZero = {x = -1, y = 1, z = -1}
    }

    local itemProps = {size = Vector3.new(6, 8, 1), partName = "Character"}

    local props = {
        rowProps = rowProps,
        itemConfigs = itemConfigs,
        itemProps = itemProps
    }

    RowOfParts.createRowOfParts(props)
end

renderScenes = function(parent)
    parent.Position = Vector3.new(0, 0, 0)
    parent.Size = Vector3.new(120, 2, 48)
    local parentPadding = 0

    local offsetConfig = {
        alignToParentFarEdge = Vector3.new(1, 1, 1),
        moveTowardZero = Vector3.new(-1, 1, -1),
        rowDirection = Vector3.new(-1, 1, 1),
        offset = Vector3.new(parentPadding, 0, 0)

    }

    local rowProps = {parent = parent, xGap = 4, offsetConfig = offsetConfig}

    local itemProps = {size = Vector3.new(48, 24, 2), partName = "Scene"}

    local props = {
        rowProps = rowProps,
        itemConfigs = sceneConfigs,
        itemProps = itemProps
    }

    return RowOfParts.createRowOfParts(props)
end

function module.addRemoteObjects(base)
    local frameIndex = 1

    local renderedScenes = renderScenes(base)

    for i, newScene in ipairs(renderedScenes) do
        local sceneConfig = sceneConfigs[i]
        local characterConfigs = sceneConfig.frames[frameIndex].characters
        local items = sceneConfig.frames[frameIndex].items

        -- renderCharacters(newScene, characterConfigs)
        -- renderItems(newScene, items)

        -- Dialog.renderDialog({parent = newScene})

    end

end

return module

