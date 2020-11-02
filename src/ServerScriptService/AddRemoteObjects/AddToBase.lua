-- local test2 = require(script)
-- local test3 = _G;
local sss = game:GetService("ServerScriptService")
local HttpService = game:GetService("HttpService")

local a = sss.Source.test
print(a)

local my_functions = {}
print('mysss2')

print('test001')
-- print(test001)
print('test001')

function my_functions.addRemoteObjects(part)
    local newPart = Instance.new("Part", part)

    local jsonData =
        '{"awards":{"died20":false,"kills10":true},"title":"1337 h4x04","is_epic":true,"money":123456}'
    local characterStats = HttpService:JSONDecode(jsonData)
    print(characterStats.money)

    return newPart
end

return my_functions

