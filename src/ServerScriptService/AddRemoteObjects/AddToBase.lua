local module = {}
print('mysss2')
local Sss = game:GetService("ServerScriptService")

local config = require(Sss.Source.AddRemoteObjects.ScenesConfig)
local Utils = require(Sss.Source.Utils.Utils)
local scenes = config.getScenesConfig()
local sceneDepth = 1

createNewPart = function(item, size)
    local sceneProps = {decalId = item.decalId, size = size}
    local newPart = Utils.createPart(sceneProps)
    return newPart
end

addChildParts = function(parent, scene)
    local scenePadding = 1
    local childItems = scene.frames[2].characters

    local childProps = {
        parent = parent,
        size = {x = 8, y = 8, z = 1},
        partArray = childItems,
        partNamePrefix = "Character",

        xIncrement = 1,
        zOffset = -sceneDepth,
        xOffset = -scenePadding,
        yOffset = scenePadding * 2,
        createNewItemFunc = createNewPart
    }
    Utils.createRowOfParts(childProps)
end

function module.addRemoteObjects(part)
    local basePadding = 4
    local sceneSize = {x = 48, y = 24, z = sceneDepth}
    local sceneParent = part
    local partNamePrefix = "Scene"

    local rowProps = {
        parent = sceneParent,
        partArray = scenes,
        partNamePrefix,

        size = sceneSize,
        xIncrement = 4,
        xOffset = -basePadding,
        zOffset = -basePadding,

        createNewItemFunc = createNewPart
    }

    Utils.createRowOfParts(rowProps)

end

return module

