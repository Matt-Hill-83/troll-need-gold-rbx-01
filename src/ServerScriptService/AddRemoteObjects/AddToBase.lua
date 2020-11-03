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
        local newScene = Instance.new("Part", part)
        local newLabel = Instance.new("TextLabel", part)
        newLabel.Size = UDim2.new(0, 800, 0, 100)
        newLabel.Position = UDim2.new(0, 100, 0, i * 150)

        newScene.Parent = part
        local name = scene['name']
        print(name)

        newScene.Size = Vector3.new(100, 800, 100)
        -- newScene.Position = UDim2.new(0, 100, 0, i * 150)

    end

    return part
end

return module

