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

    local rowProps = {
        partArray = scenes,
        parent = part,
        size = {width = 20, height = 16, depth = 2},
        children = {},
        partNamePrefix = "Scene",
        itemProps = itemProps,
        xIncrement = 2
        --
    }

    Utils.createRowOfParts(rowProps)

end

return module

