local my_functions = {}
print('mysss')

function my_functions.addRemoteObjects(part, test, sss)
    local newPart = Instance.new("Part", part)

    print(sss)

    local jsonData =
        '{"awards":{"died20":false,"kills10":true},"title":"1337 h4x04","is_epic":true,"money":123456}'
    local characterStats = test:JSONDecode(jsonData)
    print(characterStats.money)

    return newPart
end

return my_functions

