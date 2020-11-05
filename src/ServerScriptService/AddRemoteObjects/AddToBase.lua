local module = {}
print('mysss2')
local Sss = game:GetService("ServerScriptService")

local config = require(Sss.Source.AddRemoteObjects.ScenesConfig)
local Dialog = require(Sss.Source.AddRemoteObjects.Dialog)
local Part = require(Sss.Source.AddRemoteObjects.Part)
local RowOfParts = require(Sss.Source.AddRemoteObjects.RowOfParts)

local sceneConfigs = config.getScenesConfig()
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
    local basePadding = 1
    local sceneProps = {
        size = {x = 4, y = 4, z = sceneDepth},
        partName = "Scene"
    }

    local frameIndex = 1

    local rowProps = {
        xGap = 2,
        xOffset = basePadding,
        zOffset = basePadding,

        createNewItemFunc = createNewPart,
        parent = part,
        direction = -1,
        moveTowardZero = {x = -1, y = 1, z = -1}
    }

    local edgePropsX = {part = part, axis = "X"}
    local parentEdgeX = RowOfParts.getPartFarEdge(edgePropsX)

    local edgePropsY = {part = part, axis = "Y"}
    local parentEdgeY = RowOfParts.getPartFarEdge(edgePropsY)

    local edgePropsZ = {part = part, axis = "Z"}
    local parentEdgeZ = RowOfParts.getPartFarEdge(edgePropsZ)

    local sceneWidth = sceneProps.size.x
    local xIncrement = rowProps.direction * (sceneWidth + rowProps.xGap)

    local prevX = parentEdgeX - rowProps.xOffset
    local y = parentEdgeY + rowProps.xOffset
    local z = parentEdgeZ - rowProps.xOffset

    for i, sceneConfig in ipairs(sceneConfigs) do
        local x = prevX

        local position = {x = x, y = y, z = z}

        local adjustmentProps = {
            size = sceneProps.size,
            position = position,
            moveTowardZero = rowProps.moveTowardZero
        }
        local edgeAdjustedPosition = Part.getEdgePositionFromCenter(
                                         adjustmentProps)

        local newPartProps = {
            decalId = sceneConfig.decalId,
            size = sceneProps.size,
            name = sceneProps.partName .. "-" .. i,
            position = edgeAdjustedPosition,
            parent = rowProps.parent
        }
        local newPart = Part.createPart2(newPartProps)

        print('x' .. ' - start');
        print(x);
        print('x' .. ' - end');

        prevX = x + xIncrement
    end

    -- local scene = sceneConfigs[i]
    -- local characters = scene.frames[frameIndex].characters
    -- local items = scene.frames[frameIndex].items
    -- renderCharacters(newScene, characters)
    -- renderItems(newScene, items)
    -- Dialog.renderDialog(newScene)
    -- 

    -- local rowOfScenes = RowOfParts.createRowOfParts(rowProps)

    -- for i, newScene in ipairs(rowOfScenes) do
    --     local scene = sceneConfigs[i]
    --     local characters = scene.frames[frameIndex].characters
    --     local items = scene.frames[frameIndex].items
    --     renderCharacters(newScene, characters)
    --     renderItems(newScene, items)
    --     Dialog.renderDialog(newScene)
    --     -- 
    -- end

end

return module

