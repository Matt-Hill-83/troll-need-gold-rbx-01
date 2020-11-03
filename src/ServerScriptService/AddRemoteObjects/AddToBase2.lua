local module2 = {hi = "5"}
local myJson =
    '{"awards":{"died20":false,"kills10":true},"title":"1337 h4x04","is_epic":true,"money":123456}'

function module2.getScenes()

    local char01 = {name = "Britta"}
    local frame01 = {characters = {char01, char01}}
    local frames = {frame01, frame01}
    local scene01 = {name = "log", frames = {frames}}
    local scenes = {scene01, scene01}

    return scenes

end

return module2
