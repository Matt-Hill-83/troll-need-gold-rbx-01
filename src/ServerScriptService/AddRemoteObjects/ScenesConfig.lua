local module = {}

function module.getScenesConfig()

    local char01 = {name = "Raven", decalId = '5897424121'}
    local char02 = {name = "Britta", decalId = '5897433108'}

    local item01 = {name = "Troll King", decalId = '5897428591'}
    local item02 = {name = "Freckle", decalId = '5897430768'}

    local characters = {char01, char02}

    local frame01 = {characters = characters, items = {item01, item02}}
    local frames = {frame01, frame01}
    local scene01 = {
        decalId = '5902121857',
        name = "log",
        frames = frames,
        characters = characters
    }

    local scenes = {scene01}

    return scenes

end

return module
