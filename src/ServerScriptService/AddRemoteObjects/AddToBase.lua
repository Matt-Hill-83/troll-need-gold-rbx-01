print('mysss2')
local Sss = game:GetService("ServerScriptService")
-- local HttpService = game:GetService("HttpService")

local jsonScript = require(Sss.Source.AddRemoteObjects.AddToBase2)
local json = jsonScript.json
-- local json = jsonScript.getScenes()

print('test001-----------------')

print(json)
print('test001-----------------')

local my_functions = {}

function my_functions.addRemoteObjects(part)
    return json
    -- return myJsonAll
    -- return myJsonAll
    -- return myJsonAll

end

return my_functions

