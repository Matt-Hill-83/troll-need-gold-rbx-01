local test = {hi = "5"}

function test.addRemoteObjects(part)
    local newPart = Instance.new("Part", part)

    return newPart
end

return test

