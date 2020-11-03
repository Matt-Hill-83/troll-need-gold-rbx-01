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

        local xPositionStart = Utils.getParentlLeft(part, sceneWidth)

        local xIncrement = sceneWidth * 0.2
        local xPosition = xPositionStart - (i - 1) * (sceneWidth + xIncrement)

        local zPosition = 0
        local yPosition = sceneHeight / 2

        local newScene = Instance.new("Part", part)
        local name = scene['name']

        newScene.Size = Vector3.new(sceneWidth, sceneHeight, sceneDepth)
        newScene.Position = Vector3.new(xPosition, yPosition, zPosition)
        newScene.Anchored = true
        newScene.BrickColor = scene.color

        local newSurfaceGui = Instance.new("SurfaceGui", newScene)
        local newLabel = Instance.new("TextLabel", newSurfaceGui)

        newLabel.Size = UDim2.new(0, 10, 0, 10)
        newLabel.Position = UDim2.new(0, 0, 0, 0)
        newLabel.Text = name

    end

    return part
end

return module

