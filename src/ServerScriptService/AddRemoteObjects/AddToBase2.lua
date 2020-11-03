local module = {}

function module.getScenes()

    local char01 = {name = "Britta"}
    local frame01 = {characters = {char01, char01}}
    local frames = {frame01, frame01}
    local scene01 = {
        -- 
        name = "log",
        frames = {frames},
        color = BrickColor.new("Lilac")
    }
    local scene02 = {
        -- 
        name = "tree",
        frames = {frames},
        color = BrickColor.new("Baby blue")
    }
    local scenes = {scene01, scene02, scene01, scene02}

    return scenes

end

return module
