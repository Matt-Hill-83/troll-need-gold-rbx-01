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
        local sceneHeight = 30
        local yIncrement = sceneWidth * 0.1
        local yPosition = sceneWidth + yIncrement

        local newScene = Instance.new("Part", part)
        local name = scene['name']
        print(name)

        local newLabel = Instance.new("TextLabel", part)

        newLabel.Size = UDim2.new(0, 10, 0, 10)
        newLabel.Position = UDim2.new(0, 0, 0, 0)
        newLabel.Text = name

        newScene.Size = Vector3.new(2, sceneHeight, sceneWidth)
        newScene.Position = Vector3.new(-5, 0, i * yPosition)
        newScene.Anchored = true
        newScene.BrickColor = BrickColor.new(scene.color)
        -- newScene.BrickColor = scene.color

    end

    return part
end

return module

