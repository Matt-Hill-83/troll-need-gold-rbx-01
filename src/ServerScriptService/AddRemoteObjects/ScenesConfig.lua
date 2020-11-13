local module = {}

function module.getScenesConfig()

    local char01 = {name = "Raven", decalId = '5897424121'}
    local char02 = {name = "Britta", decalId = '5897433108'}
    local char03 = {name = "Troll King", decalId = '5897428591'}
    local char04 = {name = "Freckle", decalId = '5897430768'}

    local item01 = {name = "Troll King", decalId = '5897428591'}
    local item02 = {name = "Freckle", decalId = '5897430768'}

    local characters01 = {char01, char02}
    local characters02 = {char03, char04}
    local items = {item01, item02}

    local dialogs01 = {
        {text = "Go in the vortex, you said...", char = "Raven"},
        {text = "Whoa...", char = "Britta"},
        {text = "What could possibly go wrong, you said...", char = "Raven"},
        {text = "Holy mother monkey milk...", char = "Britta"},
        {text = "Lucinda hurt my feelings...", char = "Freckle"}
    }

    local dialogs02 = {
        {text = "By the power of...", char = "Troll01"},
        {text = "I'm new here", char = "Zarla"},
        {text = "Lucinda hurt my feelings...", char = "Freckle"}
    }

    local frame01 = {
        characters = characters01,
        items = items,
        dialogs = dialogs01
    }
    local frame02 = {
        characters = characters01,
        items = items,
        dialogs = dialogs02
    }

    local scene02 = {
        decalId = '5902110558',
        name = "log",
        frames = {frame02, frame02}
    }

    local scene01 = {
        decalId = '5902121857',
        name = "log",
        frames = {frame01, frame02}
    }
    -- local scenes = {scene01}
    local scenes = {scene01, scene02}

    return scenes

end

return module
