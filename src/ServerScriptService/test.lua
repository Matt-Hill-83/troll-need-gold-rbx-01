local module = {}

function module.func001()
    local newPart = Instance.new("Part")
    print('in sub function')
    return newPart

end
--
return module

