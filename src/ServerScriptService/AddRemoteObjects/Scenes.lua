local module = {}

function module.mergeTables(t1, t2)
    for k, v in pairs(t2) do
        t1[k] = v
        --
    end
    --
end

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

function createRowOfParts(props)
    local partArray = props.partArray
    -- if not partArray or not partArray[0] then return {} end

    local parent = props.parent
    local partNamePrefix = props.partNamePrefix

    local size = props.size
    local xIncrement = props.xIncrement
    local xOffset = props.xOffset or 0
    local yOffset = props.yOffset or 0
    local zOffset = props.zOffset or 0

    local createNewItemFunc = props.createNewItemFunc

    local rowOfParts = {}

    for i, item in ipairs(partArray) do

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

        local newItem = createNewItemFunc(item, size)
        newItem.Position = Vector3.new(xPosition, yPosition, zPosition)
        newItem.Parent = parent
        newItem.Name = partNamePrefix .. ": " .. i

        rowOfParts[i] = newItem
    end

    return rowOfParts

end

module.createPart = createPart
module.createRowOfParts = createRowOfParts
return module
