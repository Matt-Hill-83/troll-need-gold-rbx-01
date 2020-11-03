local module = {}

function getParentlLeft(parent, childWidth)
    local parentPosition = CFrame.new(parent.Position)
    local parentSize = parent.Size
    local parentLeftEdge = parentPosition.X + parentSize.X / 2
    local outputX = parentLeftEdge - childWidth / 2

    return outputX
end

function createChildPart(props)
    local size = props.size
    local parent = props.parent
    local position = props.position
    local color = props.color

    local newPart = Instance.new("Part", parent)

    newPart.Size = Vector3.new(size.width, size.height, size.depth)
    newPart.Position = Vector3.new(position.x, position.y, position.z)
    newPart.Anchored = true
    newPart.Name = props.name
    newPart.BrickColor = color

    local decal = Instance.new("Decal", newPart)
    decal.Texture = 'rbxassetid://5902121857'
    decal.Face = 'Front'

    return newPart

end

module.getParentlLeft = getParentlLeft
module.createChildPart = createChildPart
return module
