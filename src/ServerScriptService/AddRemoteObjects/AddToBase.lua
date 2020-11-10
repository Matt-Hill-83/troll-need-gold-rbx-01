local module = {}
print('mysss2')
local Sss = game:GetService("ServerScriptService")

local SceneConfig = require(Sss.Source.AddRemoteObjects.ScenesConfig)
local Dialog = require(Sss.Source.AddDialog.Dialog)
local RowOfParts = require(Sss.Source.AddRemoteObjects.RowOfParts)
-- local Part = require(Sss.Source.AddRemoteObjects.Part)

local sceneConfigs = SceneConfig.getScenesConfig()

renderItems = function(parent, itemConfigs)
    local itemProps = {size = Vector3.new(4, 6, 1), partName = "Items"}

    local itemDuplicationConfig = {
        alignToParentFarEdge = Vector3.new(-1, -1, -1),
        moveTowardZero = Vector3.new(1, 1, -1),
        rowDirection = Vector3.new(1, -1, -1)
    }

    local rowProps = {
        parent = parent,
        xGap = Vector3.new(4, 0, 0),
        itemDuplicationConfig = itemDuplicationConfig,
        offset = Vector3.new(3, 2, 0)
    }

    local props = {
        rowProps = rowProps,
        itemConfigs = itemConfigs,
        itemProps = itemProps
    }

    return RowOfParts.createRowOfParts(props)
end

renderCharacters = function(parent, itemConfigs)
    local itemProps = {size = Vector3.new(6, 8, 1), partName = "Characters"}

    local itemDuplicationConfig = {
        alignToParentFarEdge = Vector3.new(1, -1, -1),
        moveTowardZero = Vector3.new(-1, 1, -1),
        rowDirection = Vector3.new(-1, -1, -1)
    }

    local rowProps = {
        parent = parent,
        xGap = Vector3.new(4, 0, 0),
        itemDuplicationConfig = itemDuplicationConfig,
        offset = Vector3.new(-3, 2, 0)
    }

    local props = {
        rowProps = rowProps,
        itemConfigs = itemConfigs,
        itemProps = itemProps
    }

    return RowOfParts.createRowOfParts(props)
end

renderScenes = function(parent, itemConfigs)
    local itemProps = {size = Vector3.new(48, 24, 2), partName = "Scene"}

    local itemDuplicationConfig = {
        alignToParentFarEdge = Vector3.new(1, 1, 1),
        moveTowardZero = Vector3.new(-1, 1, -1),
        rowDirection = Vector3.new(-1, 1, 1)
    }

    local rowProps = {
        parent = parent,
        xGap = Vector3.new(4, 0, 0),
        itemDuplicationConfig = itemDuplicationConfig,
        offset = Vector3.new(-1, 1, -1)
    }

    local props = {
        rowProps = rowProps,
        itemConfigs = itemConfigs,
        itemProps = itemProps
    }

    return RowOfParts.createRowOfParts(props)
end

function module.addRemoteObjects(base)
    local frameIndex = 1

    local renderedScenes = renderScenes(base, sceneConfigs)

    for i, newScene in ipairs(renderedScenes) do
        local sceneConfig = sceneConfigs[i]
        local characterConfigs = sceneConfig.frames[frameIndex].characters
        local itemConfigs = sceneConfig.frames[frameIndex].items

        renderCharacters(newScene, characterConfigs)
        renderItems(newScene, itemConfigs)

        Dialog.renderDialog({parent = newScene})

    end

end

return module

