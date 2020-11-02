local module2 = {hi = "5"}
local myJson =
    '{"awards":{"died20":false,"kills10":true},"title":"1337 h4x04","is_epic":true,"money":123456}'

module2.json = myJson

function module2.getScenes(part)
    local newPart = Instance.new("Part", part)

    -- return newPart
    return myJson
end

-- local myJson = '{ { "character": "kat", "text": "Hi Liz!" } }'

return module2
