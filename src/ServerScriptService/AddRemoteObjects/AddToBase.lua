local module = {}
print('mysss2')
local Sss = game:GetService("ServerScriptService")
local Sss2 = game:GetService("ServerScriptService").Source

local SceneConfig = require(Sss.Source.AddRemoteObjects.ScenesConfig)
local Dialog = require(Sss.Source.AddDialog.Dialog)
local RowOfParts = require(Sss.Source.AddRemoteObjects.RowOfParts)
local Part = require(Sss.Source.AddRemoteObjects.Part)
local ButtonBlock = require(Sss.Source.AddDialog.ButtonBlock)
local Utils = require(Sss.Source.Utils.Utils)

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
    local characterScale = 0.6
    local itemProps = {
        size = Vector3.new(6 * characterScale, 8 * characterScale, 0.5),
        partName = "Characters"
    }

    local itemDuplicationConfig = {
        alignToParentFarEdge = Vector3.new(1, -1, -1),
        moveTowardZero = Vector3.new(-1, 1, -1),
        rowDirection = Vector3.new(-1, -1, -1)
    }

    local rowProps = {
        parent = parent,
        itemDuplicationConfig = itemDuplicationConfig,
        xGap = Vector3.new(1, 0, 0),
        offset = Vector3.new(-1, 0.5, 0)
    }

    local props = {
        rowProps = rowProps,
        itemConfigs = itemConfigs,
        itemProps = itemProps
    }

    return RowOfParts.createRowOfParts(props)
end

renderWalls = function(parent)
    local childSize = Vector3.new(parent.Size.X, 6, 1)
    local desiredOffsetFromParentEdge = Vector3.new(0, 0, 0)

    local itemDuplicationConfig = {
        alignToParentFarEdge = Vector3.new(1, 1, 1),
        moveTowardZero = Vector3.new(-1, 1, -1),
        rowDirection = Vector3.new(-1, 1, -1)
    }

    local offsetProps = {
        parent = parent,
        childSize = childSize,
        itemDuplicationConfig = itemDuplicationConfig,
        offset = desiredOffsetFromParentEdge
    }

    local childPos = RowOfParts.getCenterPosFromDesiredEdgeOffset(offsetProps)

    local dialogBlockProps = {
        name = 'BackWall',
        parent = parent,
        color = BrickColor.new("Buttermilk"),
        size = childSize,
        position = childPos
    }

    return Part.createPartWithVectors(dialogBlockProps)

end

renderScenes = function(parent, itemConfigs)
    renderWalls(parent)

    local itemProps = {size = Vector3.new(42, 16, 1), partName = "Scene"}

    local itemDuplicationConfig = {
        alignToParentFarEdge = Vector3.new(1, 1, 1),
        moveTowardZero = Vector3.new(-1, 1, -1),
        rowDirection = Vector3.new(-1, 1, 1)
    }

    local rowProps = {
        parent = parent,
        xGap = Vector3.new(4, 0, 0),
        itemDuplicationConfig = itemDuplicationConfig,
        offset = Vector3.new(-1, 0, -1)
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

    -- local renderedScenes = renderScenes(base, sceneConfigs)

    local myStuff = workspace:FindFirstChild("My Stuff")
    local templatesFolder = myStuff:FindFirstChild("Templates")
    local sceneTemplate = templatesFolder:FindFirstChild("SceneTemplate")

    local sceneClone = sceneTemplate:Clone()

    sceneClone.Parent = base
    sceneClone.Name = "Scene Clone"
    sceneClone.Position = sceneTemplate.Position + Vector3.new(5, 5, 5)

    -- local children = sceneTemplate:GetChildren()
    -- for i, child in ipairs(children) do
    --     print(child.Name .. " is child number " .. i)
    -- end

    -- for i, newScene in ipairs(renderedScenes) do

    --     Utils.setMaterialPebble(newScene)
    --     local sceneConfig = sceneConfigs[i]
    --     local characterConfigs = sceneConfig.frames[frameIndex].characters
    --     local itemConfigs = sceneConfig.frames[frameIndex].items
    --     local dialogConfigs = sceneConfig.frames[frameIndex].dialogs

    --     renderCharacters(newScene, characterConfigs)
    --     renderItems(newScene, itemConfigs)

    --     local dialogContainer = Dialog.renderDialog(
    --                                 {
    --             parent = newScene,
    --             dialogConfigs = dialogConfigs
    --         })

    --     local renderButtonBlockProps = {
    --         parent = newScene,
    --         sibling = dialogContainer
    --     }

    --     ButtonBlock.renderButtonBlock(renderButtonBlockProps)

    -- end

end

return module

