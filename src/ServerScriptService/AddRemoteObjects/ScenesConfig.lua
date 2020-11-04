local module = {}

function module.getScenesConfig()

    local char01 = {
        name = "Britta",
        decal = 'rbxassetid://5902121857',
        color = BrickColor.new("Light blue")
    }

    local char02 = {
        name = "Britta",
        decal = 'rbxassetid://5902121857',
        color = BrickColor.new("Light blue")
    }

    local item01 = {
        name = "Britta",
        decal = 'rbxassetid://5902121857',
        color = BrickColor.new("Light blue")
    }

    local item02 = {
        name = "Britta",
        decal = 'rbxassetid://5902121857',
        color = BrickColor.new("Light blue")
    }

    local frame01 = {characters = {char01, char02}, items = {item01, item02}}
    local frames = {frame01, frame01}
    local scene01 = {
        decal = 'rbxassetid://5902121857',
        name = "log",
        frames = {frames},
        color = BrickColor.new("Light blue")
    }
    local scene02 = {
        decal = 'rbxassetid://5902121857',
        name = "tree",
        frames = {frames},
        color = BrickColor.new("Baby blue")
    }
    local scenes = {scene01, scene02, scene01, scene02}

    return scenes

end

return module
