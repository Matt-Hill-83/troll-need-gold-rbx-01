local module2 = {hi = "5"}
local myJson =
    '{"awards":{"died20":false,"kills10":true},"title":"1337 h4x04","is_epic":true,"money":123456}'

function module2.getScenes(part) return myJson end

return module2
