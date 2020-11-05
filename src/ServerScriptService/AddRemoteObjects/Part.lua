local module = {}

function createPart(props)
    local size = props.size
    local decalId = props.decalId
    local newPart = Instance.new("Part")

    newPart.Size = Vector3.new(size.x, size.y, size.z)
    newPart.Anchored = true
    newPart.BrickColor = BrickColor.new("Light blue")

    if decalId then
        local newDecal = Instance.new("Decal", newPart)
        newDecal.Texture = 'rbxassetid://' .. decalId
        newDecal.Face = 'Front'
    end

    return newPart

end

module.createPart = createPart
return module
