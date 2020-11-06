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
    props.position = {
        x = props.position.X,
        y = props.position.Y,
        z = props.position.Z
    }
    props.size = {x = props.size.X, y = props.size.Y, z = props.size.Z}

    local newPart = createPart(props)
    return newPart

end

function getEdgePositionFromCenterPosition(props)
    local size = props.size
    local position = props.position
    local moveTowardZero = props.moveTowardZero

    local isMoveTowardZero = moveTowardZero or {x = -1, y = -1, z = -1}

    return {
        x = position.x + (size.x / 2) * isMoveTowardZero.x,
        y = position.y + (size.y / 2) * isMoveTowardZero.y,
        z = position.z + (size.z / 2) * isMoveTowardZero.z
    }

end

module.createPartWithVectors = createPartWithVectors
module.getEdgePositionFromCenterPosition = getEdgePositionFromCenterPosition
module.createPart = createPart
return module
