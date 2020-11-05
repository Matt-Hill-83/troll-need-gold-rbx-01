local module = {}

function getParentFarEdge(props)
    local parent = props.parent
    local childLength = props.childLength
    local axis = props.axis or 'X'

    local parentPosition = parent.CFrame
    local parentSize = parent.Size
    local parentFarEdge = parentPosition[axis] + parentSize[axis] / 2
    local alignedValue = parentFarEdge - childLength / 2
    return alignedValue
end

function getPartFarEdge(props)
    local part = props.part
    local axis = props.axis or 'X'

    local partPosition = part.CFrame
    local partSize = part.Size
    local partFarEdge = partPosition[axis] + partSize[axis] / 2

    return partFarEdge
end

function getPartFarEdges(props)
    --
end

function createRowOfParts(props)
    local partConfigs = props.partConfigs
    local parent = props.parent
    local partNamePrefix = props.partNamePrefix

    local size = props.size
    local xIncrement = props.xIncrement
    local xOffset = props.xOffset or 0
    local yOffset = props.yOffset or 0
    local zOffset = props.zOffset or 0

    local createNewItemFunc = props.createNewItemFunc
    local rowOfParts = {}

    for i, partConfig in ipairs(partConfigs) do

        local calcEdgePropsX = {
            parent = parent,
            childLength = size.x,
            axis = "X"
        }

        local calcEdgePropsZ = {
            parent = parent,
            childLength = size.z,
            axis = "Z"
        }

        local xPositionStart = getParentFarEdge(calcEdgePropsX) + xOffset
        local xPosition = xPositionStart - (i - 1) * (size.x + xIncrement)
        local yPosition = size.y / 2 + yOffset
        local zPosition = getParentFarEdge(calcEdgePropsZ) + zOffset

        local newItem = createNewItemFunc(partConfig, size)
        newItem.Position = Vector3.new(xPosition, yPosition, zPosition)
        newItem.Parent = parent
        newItem.Name = partNamePrefix .. ": " .. i

        rowOfParts[i] = newItem
    end

    return rowOfParts

end

module.createRowOfParts = createRowOfParts
module.getPartFarEdge = getPartFarEdge
module.getPartFarEdges = getPartFarEdges

return module
