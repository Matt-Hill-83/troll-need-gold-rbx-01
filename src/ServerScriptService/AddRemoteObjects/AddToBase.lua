print('mysss2')
local Sss = game:GetService("ServerScriptService")
local HttpService = game:GetService("HttpService")

local my_functions = {}

local test2 = require(Sss.Source.AddRemoteObjects.AddToBase2)
local json = test2.getScenes()

print('test001-----------------')
print(json)
print('test002-----------------')

function my_functions.addRemoteObjects(part)
    local newPart = Instance.new("Part", part)

    local characterStats = HttpService:JSONDecode(json)
    print(characterStats.money)

    return newPart
end

return my_functions

