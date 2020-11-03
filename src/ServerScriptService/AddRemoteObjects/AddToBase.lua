local module = {}
print('mysss2')
local Sss = game:GetService("ServerScriptService")

local config = require(Sss.Source.AddRemoteObjects.ScenesConfig)
local Utils = require(Sss.Source.Utils.Utils)
local scenes = config.getScenesConfig()

function module.addRemoteObjects(part)

    for i, scene in ipairs(scenes) do

        local sceneWidth = 10
        local sceneHeight = 16
        local sceneDepth = 2

        local xIncrement = sceneWidth * 0.2
        local xPositionStart = Utils.getParentlLeft(part, sceneWidth)
        local xPosition = xPositionStart - (i - 1) * (sceneWidth + xIncrement)

        local zPosition = 0
        local yPosition = sceneHeight / 2

        local size = Vector3.new(sceneWidth, sceneHeight, sceneDepth)
        local position = Vector3.new(xPosition, yPosition, zPosition)

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

