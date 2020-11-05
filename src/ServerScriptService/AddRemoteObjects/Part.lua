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

function createPart2(props)
    local size = props.size
    local name = props.name
    local position = props.position
    local parent = props.parent

    local decalId = props.decalId
    local newPart = Instance.new("Part", parent)

    newPart.Size = Vector3.new(size.x, size.y, size.z)
    newPart.Position = Vector3.new(position.x, position.y, position.z)
    newPart.Anchored = true
    newPart.BrickColor = BrickColor.new("Light blue")
    newPart.Name = name

    if decalId then
        local newDecal = Instance.new("Decal", newPart)
        newDecal.Texture = 'rbxassetid://' .. decalId
        newDecal.Face = 'Front'
    end

    return newPart

end

module.createPart = createPart
module.createPart2 = createPart2
return module
