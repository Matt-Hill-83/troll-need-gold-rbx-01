print('mysss2')
local sss = game:GetService("ServerScriptService")
local HttpService = game:GetService("HttpService")

local my_functions = {}

local a = sss.Source.AddRemoteObjects
local b = a.AddToBase2

local test = require(game.ServerScriptService.Source.test)

print('test001-----------------')
print(test.func001())
print(a)
print(b)
print('test001-----------------')

function my_functions.addRemoteObjects(part)
    local newPart = Instance.new("Part", part)

    local jsonData =
        '{"awards":{"died20":false,"kills10":true},"title":"1337 h4x04","is_epic":true,"money":123456}'
    local characterStats = HttpService:JSONDecode(jsonData)
    print(characterStats.money)

    return newPart
end

return my_functions

