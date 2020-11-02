local module = {hi = "5"}

function module.addRemoteObjects(part)
    local newPart = Instance.new("Part", part)

    return newPart
end

return module

