local Sss = game:GetService("ServerScriptService")
local MissyMeow = require(Sss.Source.QuestConfigs.MissyMeow)
local Quest2 = require(Sss.Source.QuestConfigs.Quest2)
local module = {}

function module.getScenesConfig()

    -- local missyMeow = MissyMeow.quest
    -- return {missyMeow}

    local quests = Quest2.quests
    return quests

end

return module
