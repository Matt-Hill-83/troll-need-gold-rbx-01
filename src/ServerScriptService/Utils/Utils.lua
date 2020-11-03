local module = {}

function module.getParentlLeft(parent, childWidth)

    local parentPosition = CFrame.new(parent.Position)
    local parentSize = parent.Size
    local parentLeftEdge = parentPosition.X + parentSize.X / 2
    local outputX = parentLeftEdge - childWidth / 2

    return outputX

end

return module
