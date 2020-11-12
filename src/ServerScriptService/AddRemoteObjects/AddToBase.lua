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

function cloneScene(props)
    local parent = props.parent
    local template = props.template
    local index = props.index

    local gapX = 4

    local clone = template:Clone()
    clone.Parent = parent
    clone.Name = "Scene Clone-" .. index

    clone.Position = template.Position +
                         Vector3.new(-(template.Size.X + gapX) * index,
                                     0 * index, 0 * index)
    return clone
end

function module.addRemoteObjects(base)
    local frameIndex = 1

    -- local renderedScenes = renderScenes(base, sceneConfigs)

    local myStuff = workspace:FindFirstChild("My Stuff")
    local templatesFolder = myStuff:FindFirstChild("Templates")
    local sceneTemplate = templatesFolder:FindFirstChild("SceneTemplate")
    local dialogTemplate = templatesFolder:FindFirstChild("TextsContainer")

    -- local children = sceneTemplate:GetChildren()
    -- print('children' .. ' - start');
    -- print(children);
    -- print('children' .. ' - end');

    -- for i, child in ipairs(children) do
    --     print(child.Name .. " is child number " .. i)
    -- end

    -- TODO: get button to work
    -- TODO: get button to work
    -- TODO: get button to work

    for i, sceneConfig in ipairs(sceneConfigs) do

        --     Utils.setMaterialPebble(newScene)

        local newScene = cloneScene({
            parent = base,
            template = sceneTemplate,
            index = i - 1
        })
        local surfaceLight = Instance.new("SurfaceLight", newScene)

        local dialogConfigs = sceneConfig.frames[frameIndex].dialogs

        --     renderCharacters(newScene, characterConfigs)
        --     renderItems(newScene, itemConfigs)

        local dialogContainer = Dialog.renderDialog(
                                    {
                parent = newScene,
                dialogConfigs = dialogConfigs
            })

        local renderButtonBlockProps = {
            parent = newScene,
            sibling = dialogContainer
        }

        ButtonBlock.renderButtonBlock(renderButtonBlockProps)

    end

    sceneTemplate:Destroy()
    -- dialogTemplate:Destroy()
end

return module

