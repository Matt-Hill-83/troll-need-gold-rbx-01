local module = {}
print('mysss2')
local Sss = game:GetService("ServerScriptService")

local config = require(Sss.Source.AddRemoteObjects.ScenesConfig)
local Utils = require(Sss.Source.Utils.Utils)
local scenes = config.getScenesConfig()

function module.addRemoteObjects(part)
    local rowProps = {
        partArray = scenes,
        parent = part
        -- newRow = Utils.createRowOfParts(rowProps)
    }

    Utils.createRowOfParts(rowProps)

end

return module

