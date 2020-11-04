local module = {}

function module.getScenesConfig()

    local char01 = {name = "Raven", decal = 'rbxassetid://5902121857'}

    local char02 = {name = "Britta", decal = 'rbxassetid://5897433108'}

    local item01 = {name = "Troll King", decal = 'rbxassetid://5897428591'}

    local item02 = {name = "Freckle", decal = 'rbxassetid://5897430768'}

    local characters = {char01, char02}

    local frame01 = {characters = characters, items = {item01, item02}}
    local frames = {frame01, frame01}
    local scene01 = {
        decal = 'rbxassetid://5902121857',
        name = "log",
        -- frames = frames,
        frames = frame01,
        characters = characters
    }

    local scenes = {scene01}

    return scenes

end

return module
