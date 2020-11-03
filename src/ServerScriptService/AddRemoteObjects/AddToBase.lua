local module = {}
print('mysss2')
local Sss = game:GetService("ServerScriptService")

local config = require(Sss.Source.AddRemoteObjects.ScenesConfig)
local Utils = require(Sss.Source.Utils.Utils)
local scenes = config.getScenesConfig()

function module.addRemoteObjects(part)

    local itemProps = {
        --  xIncrement = size.width * 0.2,
        --  xPositionStart = getParentlLeft(parent, size.width),
    }

    local childProps = {
        partArray = scenes,
        size = {width = 10, height = 8, depth = 2},
        partNamePrefix = "Character",
        name = "Character",
        itemProps = itemProps,
        xIncrement = 2
        --
    }

    local rowProps = {
        partArray = scenes,
        size = {width = 20, height = 16, depth = 2},
        partNamePrefix = "Scene",
        xIncrement = 2,
        parent = part,
        childProps = childProps
        --
    }

    Utils.createRowOfParts(rowProps)

end

return module

