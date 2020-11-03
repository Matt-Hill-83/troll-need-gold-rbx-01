local module = {}
print('mysss2')
local Sss = game:GetService("ServerScriptService")

local config = require(Sss.Source.AddRemoteObjects.AddToBase2)
local scenes = config.getScenes()

print('test001-----------------')
print(scenes)
print('test002-----------------')

function module.addRemoteObjects(part)

    for i, scene in ipairs(scenes) do
        local sceneWidth = 10
        local sceneHeight = 15
        local zIncrement = sceneWidth * 0.2
        local zPositionStart = 10
        local zPosition = zPositionStart + (i - 1) * (sceneWidth + zIncrement)

        local xPosition = -5
        local yPosition = 10

        local newScene = Instance.new("Part", part)
        local name = scene['name']
        print(name)

        newScene.Size = Vector3.new(2, sceneHeight, sceneWidth)
        newScene.Position = Vector3.new(xPosition, yPosition, zPosition)
        newScene.Anchored = true
        newScene.BrickColor = BrickColor.new(scene.color)

        local newLabel = Instance.new("TextLabel", newScene)

        newLabel.Size = UDim2.new(0, 10, 0, 10)
        newLabel.Position = UDim2.new(0, 0, 0, 0)
        newLabel.Text = name
        -- newScene.BrickColor = scene.color

    end

    return part
end

return module

