local module = {}

function createPart(props)
    local parent = props.parent
    local size = props.size
    local name = props.name
    local position = props.position
    local decalId = props.decalId

    local newPart = Instance.new("Part", parent)

    newPart.Size = Vector3.new(size.x, size.y, size.z)
    newPart.Position = Vector3.new(position.x, position.y, position.z)
    newPart.Anchored = true
    newPart.BrickColor = props.color or BrickColor.new("Light blue")
    newPart.Name = name

    if decalId then
        local newDecal = Instance.new("Decal", newPart)
        newDecal.Texture = 'rbxassetid://' .. decalId
        newDecal.Face = 'Front'
    end

    return newPart

end

function createPartWithVectors(props)
    local parent = props.parent
    local size = props.size
    local name = props.name
    local position = props.position
    local decalId = props.decalId

    local newPart = Instance.new("Part", parent)

    newPart.Size = size
    newPart.Position = position
    newPart.Anchored = true
    newPart.BrickColor = props.color or BrickColor.new("Light blue")
    newPart.Name = name

    if decalId then
        local newDecal = Instance.new("Decal", newPart)
        newDecal.Texture = 'rbxassetid://' .. decalId
        newDecal.Face = 'Front'
    end

    return newPart

end

module.createPartWithVectors = createPartWithVectors
module.createPart = createPart
return module
