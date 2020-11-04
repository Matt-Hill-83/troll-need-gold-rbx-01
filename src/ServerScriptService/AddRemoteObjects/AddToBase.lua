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

addChildParts = function(parent, scene)
    local scenePadding = 1
    local childItems = scene.frames[2].characters

    local rowProps = {
        parent = parent,
        partArray = childItems,
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

createNewScene = function(item, size)
    local newPart = createNewPart(item, size)
    addChildParts(newPart, item)
    return newPart
end

function module.addRemoteObjects(part)
    local basePadding = 4
    local sceneSize = {x = 48, y = 24, z = sceneDepth}
    local sceneParent = part
    local partNamePrefix = "Scene"

    local rowProps = {
        parent = sceneParent,
        partArray = scenes,
        partNamePrefix = partNamePrefix,

        size = sceneSize,
        xIncrement = 4,
        xOffset = -basePadding,
        zOffset = -basePadding,

        createNewItemFunc = createNewScene
    }

    Utils.createRowOfParts(rowProps)

end

return module

