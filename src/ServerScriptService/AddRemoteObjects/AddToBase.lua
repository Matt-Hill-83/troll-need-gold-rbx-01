local module = {}
print('mysss2')
local Sss = game:GetService("ServerScriptService")

local config = require(Sss.Source.AddRemoteObjects.ScenesConfig)
local Utils = require(Sss.Source.Utils.Utils)
local scenes = config.getScenesConfig()

function module.addRemoteObjects(part)

    local childDepth = 2
    local childProps = {
        decal = 'rbxassetid://5897424121',
        name = "log",
        color = BrickColor.new("Light blue"),
        size = {width = 10, height = 8, depth = childDepth},
        position = {x = 0, y = 0, z = -childDepth}

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

