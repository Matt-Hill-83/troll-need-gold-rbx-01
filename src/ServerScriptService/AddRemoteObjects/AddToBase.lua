local module = {}
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
    Instance.new("SurfaceLight", clone)
    return clone
end

local pageNum = 1
local savedBase = nil
function incrementPage()
    pageNum = pageNum + 1

    local children = savedBase:GetChildren()
    for _, item in pairs(children) do
        if item:IsA('Part') then item:Destroy() end
    end

    addRemoteObjects(savedBase)

end

function addRemoteObjects(base)
    savedBase = base
    -- local renderedScenes = renderScenes(base, sceneConfigs)

    local myStuff = workspace:FindFirstChild("My Stuff")
    local templatesFolder = myStuff:FindFirstChild("Templates")
    local sceneTemplate = templatesFolder:FindFirstChild("SceneTemplate")

    for i, sceneConfig in ipairs(sceneConfigs) do

        --     Utils.setMaterialPebble(newScene)

        local newScene = cloneScene({
            parent = base,
            template = sceneTemplate,
            index = i
            -- index = i - 1
        })

        local dialogConfigs = sceneConfig.frames[pageNum].dialogs

        --     renderCharacters(newScene, characterConfigs)
        --     renderItems(newScene, itemConfigs)

        local dialogContainer = Dialog.renderDialog(
                                    {
                parent = newScene,
                dialogConfigs = dialogConfigs,
                pageNum = pageNum
            })

        local renderButtonBlockProps = {
            parent = newScene,
            sibling = dialogContainer,
            incrementPage = incrementPage,
            pageNum = pageNum
        }

        ButtonBlock.renderButtonBlock(renderButtonBlockProps)

    end

    -- sceneTemplate:Destroy()
end

module.addRemoteObjects = addRemoteObjects
return module

