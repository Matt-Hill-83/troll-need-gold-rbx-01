local module = {}

function getParentlLeft(parent, childWidth)
    local parentPosition = CFrame.new(parent.Position)
    local parentSize = parent.Size
    local parentLeftEdge = parentPosition.X + parentSize.X / 2
    local outputX = parentLeftEdge - childWidth / 2

    return outputX
end

function createChildPart(parent, props)
    local newPart = Instance.new("Part", parent)
    local size = props.size
    local position = props.position

    newPart.Size = Vector3.new(size.width, size.height, size.depth)
    newPart.Position = Vector3.new(position.x, position.y, position.z)
    newPart.Anchored = true
    newPart.Name = props.name

    return newPart

end

module.getParentlLeft = getParentlLeft
module.createChildPart = createChildPart
return module
