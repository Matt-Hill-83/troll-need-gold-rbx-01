local module = {}

function module.getScenesConfig()

    local scene01 = {
        decalId = '5902121857',
        name = "log",
        frames = {
            {
                characters = {
                    {name = "Raven", decalId = '5897424121'},
                    {name = "Britta", decalId = '5897433108'}
                },
                items = {
                    {name = "Troll King", decalId = '5897428591'},
                    {name = "Freckle", decalId = '5897430768'}
                },
                dialogs = {
                    {text = "Go in the vortex, you said...", char = "Raven"},
                    {text = "Whoa...", char = "Britta"},
                    {
                        text = "What could possibly go wrong, you said...",
                        char = "Raven"
                    }, {text = "Holy mother monkey milk...", char = "Britta"},
                    {text = "Lucinda hurt my feelings...", char = "Freckle"}
                }
            }
        }
    }
    local scenes = {scene01, scene01, scene01}

    return scenes

end

return module
