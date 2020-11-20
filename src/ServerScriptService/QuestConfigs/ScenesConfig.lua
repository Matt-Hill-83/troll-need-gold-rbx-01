local Sss = game:GetService("ServerScriptService")
local MissyMeow = require(Sss.Source.QuestConfigs.MissyMeow)
local Quest2 = require(Sss.Source.QuestConfigs.Quest2)
local module = {}

function module.getScenesConfig()

    local missyMeow = MissyMeow.quest
    local quest2 = Quest2.quest

    return {missyMeow, quest2}

end

return module
