print('mysss2')
local Sss = game:GetService("ServerScriptService")
local HttpService = game:GetService("HttpService")

local my_functions = {}

local a = Sss.Source.AddRemoteObjects
local b = a.AddToBase2

-- local test = require(Sss.Source.test)
local test2 = require(Sss.Source.AddRemoteObjects.AddToBase2)
local json = test2.getScenes()

print('test001-----------------')
print(a)
print(b)
print(json)
print('test001-----------------')

function my_functions.addRemoteObjects(part)
    local newPart = Instance.new("Part", part)

    local characterStats = HttpService:JSONDecode(json)
    -- local characterStats = HttpService:JSONDecode(jsonData)
    print(characterStats.money)

    return newPart
end

return my_functions

