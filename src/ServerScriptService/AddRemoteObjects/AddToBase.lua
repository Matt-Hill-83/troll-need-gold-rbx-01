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

getScenePosition = function(parent, child)
    local desiredOffsetFromParentEdge = Vector3.new(0, 0, 0)

    local itemDuplicationConfig = {
        alignToParentFarEdge = Vector3.new(1, -1, -1),
        moveTowardZero = Vector3.new(-1, 1, -1),
        rowDirection = Vector3.new(-1, 1, -1)
    }

    local offsetProps = {
        parent = parent,
        childSize = child.Size,
        itemDuplicationConfig = itemDuplicationConfig,
        offset = desiredOffsetFromParentEdge
    }

    return RowOfParts.getCenterPosFromDesiredEdgeOffset(offsetProps)
end

getStartPosition = function(parent, child)
    local childSize = child.Size
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

    return RowOfParts.getCenterPosFromDesiredEdgeOffset(offsetProps)
end

function cloneScene(props)
    local parent = props.parent
    local template = props.template
    local index = props.index
    local sceneOrigin = props.sceneOrigin

    local clone = template:Clone()
    clone.Parent = parent
    clone.Name = "Scene Clone-" .. index
    local origin = getScenePosition(sceneOrigin, clone)
    clone.Position = origin
    sceneOrigin.Transparency = 0.9

    Instance.new("SurfaceLight", clone)
    return clone
end

function addItemsToScene(props)
    local newScene = props.newScene
    local pageNum = props.pageNum
    local sceneConfig = props.sceneConfig

    local characterConfigs = sceneConfig.frames[pageNum].characters
    local itemConfigs = sceneConfig.frames[pageNum].items
    local dialogConfigs = sceneConfig.frames[pageNum].dialogs

    renderCharacters(newScene, characterConfigs)
    renderItems(newScene, itemConfigs)

    return Dialog.renderDialog({
        parent = newScene,
        dialogConfigs = dialogConfigs,
        pageNum = pageNum
    })

end

function addScenes(props)
    local base = props.base
    local sceneOrigins = props.sceneOrigins
    local sceneTemplate = props.sceneTemplate

    for i, sceneConfig in ipairs(sceneConfigs) do
        local numPages = #sceneConfig.frames
        local pageNum = 1
        local buttonParent = nil

        local newScene = cloneScene({
            parent = workspace,
            sceneOrigin = sceneOrigins[i],
            template = sceneTemplate,
            index = i - 1
        })

        local sceneProps = {
            newScene = newScene,
            pageNum = pageNum,
            sceneConfig = sceneConfig
        }
        buttonParent = addItemsToScene(sceneProps)

        function incrementPage()
            local newPageNum = pageNum + 1

            if newPageNum <= numPages then
                pageNum = newPageNum

                local children = newScene:GetChildren()
                for _, item in pairs(children) do
                    local match1 = string.match(item.Name, "Items-")
                    local match2 = string.match(item.Name, "Characters-")
                    local match3 = string.match(item.Name, "Dialog-")
                    if item:IsA('Part') and (match1 or match2 or match3) then
                        item:Destroy()
                    end
                end

                local newSceneProps = {
                    newScene = newScene,
                    pageNum = pageNum,
                    sceneConfig = sceneConfig
                }
                buttonParent = addItemsToScene(newSceneProps)
            end
        end

        local renderButtonBlockProps = {
            parent = newScene,
            sibling = buttonParent,
            incrementPage = incrementPage,
            pageNum = pageNum
        }

        ButtonBlock.renderButtonBlock(renderButtonBlockProps)

    end
end

-- TODO: develop story
-- TODO: re-create characters when new frame
-- TODO: abstract out createTexts, so entire scene is not recreated

function addRemoteObjects(base)

    local myStuff = workspace:FindFirstChild("MyStuff")
    local sceneLocations = myStuff:FindFirstChild("SceneLocations")

    local sceneOrigins = {}
    local children = sceneLocations:GetChildren()
    for i, item in pairs(children) do

        if item:IsA('Part') then
            sceneOrigins[i] = item

            --
        end
    end

    local templatesFolder = myStuff:FindFirstChild("Templates")
    local sceneTemplate = templatesFolder:FindFirstChild("SceneTemplate")
    local characterTemplate =
        templatesFolder:FindFirstChild("CharacterTemplate")

    local addScenesProps = {
        base = base,
        sceneOrigins = sceneOrigins,
        sceneTemplate = sceneTemplate
    }
    addScenes(addScenesProps)

    -- sceneTemplate.Transparency = 1
    -- sceneTemplate.Position = sceneTemplate.Position +
    --                              Vector3.new(0, -sceneTemplate.Size.Y * 2, 0)
end

module.addRemoteObjects = addRemoteObjects
return module

