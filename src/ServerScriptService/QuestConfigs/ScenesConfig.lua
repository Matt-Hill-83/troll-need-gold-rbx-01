local Sss = game:GetService("ServerScriptService")
local MissyMeow = require(Sss.Source.QuestConfigs.MissyMeow)
local module = {}

function module.getScenesConfig()

    local missyMeow = MissyMeow.quest

    return {missyMeow, missyMeow}

end

return module
