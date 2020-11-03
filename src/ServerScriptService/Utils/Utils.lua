local module = {}

function getParentlLeft(parent, childWidth)
    local parentPosition = CFrame.new(parent.Position)
    local parentSize = parent.Size
    local parentLeftEdge = parentPosition.X + parentSize.X / 2
    local outputX = parentLeftEdge - childWidth / 2

    return outputX
end

function createChildPart(size, position, parent)
    local newScene = Instance.new("Part", parent)
    newScene.Size = size
    newScene.Position = position
    newScene.Anchored = true

    return newScene

end

module.getParentlLeft = getParentlLeft
module.createChildPart = createChildPart
return module
