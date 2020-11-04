local module = {}
print('mysss2')
local Sss = game:GetService("ServerScriptService")

local config = require(Sss.Source.AddRemoteObjects.ScenesConfig)
local Utils = require(Sss.Source.Utils.Utils)
local scenes = config.getScenesConfig()

function module.addRemoteObjects(part)
    local sceneDepth = 1
    local characterDepth = 1
    local basePadding = 4
    local scenePadding = 1

    updateScene = function(parent, scene)
        local childItems = scene.frames[2].characters

        local childProps = {
            size = {width = 8, height = 8, depth = characterDepth},
            partArray = childItems,
            partNamePrefix = "Character",
            xIncrement = 1,
            parent = parent,
            zOffset = -sceneDepth,
            xOffset = -scenePadding,
            yOffset = scenePadding * 2
        }
        Utils.createRowOfParts(childProps)
    end

    local rowProps = {
        partArray = scenes,
        size = {width = 48, height = 24, depth = sceneDepth},
        partNamePrefix = "Scene",
        xIncrement = 4,
        parent = part,
        createNewItemFunc = Utils.createChildPart,
        updateEachNewItemFunc = updateScene,
        xOffset = -basePadding,
        zOffset = -basePadding
    }

    Utils.createRowOfParts(rowProps)

end

return module

