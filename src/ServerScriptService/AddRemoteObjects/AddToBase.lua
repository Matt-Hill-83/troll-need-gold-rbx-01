local module = {}
print('mysss2')
local Sss = game:GetService("ServerScriptService")

local config = require(Sss.Source.AddRemoteObjects.ScenesConfig)
local Utils = require(Sss.Source.Utils.Utils)
local scenes = config.getScenesConfig()

function module.addRemoteObjects(part)
    funcForEachNewItem = function(parent, childItems)
        local childDepth = 4
        local childProps = {
            size = {width = 4, height = 8, depth = childDepth},
            partArray = childItems,
            partNamePrefix = "Scene",
            xIncrement = 2,
            parent = parent
        }
        Utils.createRowOfParts(childProps)
        return
    end

    local rowProps = {
        partArray = scenes,
        size = {width = 20, height = 16, depth = 2},
        partNamePrefix = "Scene",
        xIncrement = 2,
        parent = part,
        funcForEachNewItem = funcForEachNewItem
    }

    Utils.createRowOfParts(rowProps)

end

return module

