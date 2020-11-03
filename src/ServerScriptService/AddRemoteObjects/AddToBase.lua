local module = {}
print('mysss2')
local Sss = game:GetService("ServerScriptService")

local config = require(Sss.Source.AddRemoteObjects.ScenesConfig)
local Utils = require(Sss.Source.Utils.Utils)
local scenes = config.getScenesConfig()

function module.addRemoteObjects(part)

    for i, scene in ipairs(scenes) do
        local size = {width = 10, height = 16, depth = 2}

        local xIncrement = size.width * 0.2
        local xPositionStart = Utils.getParentlLeft(part, size.width)
        local xPosition = xPositionStart - (i - 1) * (size.width + xIncrement)

        local zPosition = 0
        local yPosition = size.height / 2

        local position = {x = xPosition, y = yPosition, z = zPosition}
        local newScene = Utils.createChildPart(size, position, part)

        local newSurfaceGui = Instance.new("SurfaceGui", newScene)
        local newLabel = Instance.new("TextLabel", newSurfaceGui)

        newLabel.Size = UDim2.new(0, 10, 0, 10)
        newLabel.Position = UDim2.new(0, 0, 0, 0)
        newLabel.Text = scene['name']

        newScene.BrickColor = scene.color

    end

    return part
end

return module

