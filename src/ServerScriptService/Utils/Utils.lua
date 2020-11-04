local module = {}

function getParentFarEdge(props)
    local parent = props.parent
    local childLength = props.childLength
    local axis = props.axis or 'X'

    print(axis)
    local parentPosition = parent.CFrame
    local parentSize = parent.Size
    local parentFarEdge = parentPosition[axis] + parentSize[axis] / 2
    local alignedValue = parentFarEdge - childLength / 2
    return alignedValue
end

function createChildPart(props)
    local size = props.size
    local parent = props.parent
    local position = props.position
    local decalId = props.decalId
    local name = props.name

    local newPart = Instance.new("Part", parent)

    newPart.Size = Vector3.new(size.width, size.height, size.depth)
    newPart.Anchored = true
    newPart.Name = name
    newPart.BrickColor = BrickColor.new("Light blue")
    newPart.Position = Vector3.new(position.x, position.y, position.z)
    newPart.Transparency = 0.3

    if decalId then
        local newDecal = Instance.new("Decal", newPart)
        newDecal.Texture = 'rbxassetid://' .. decalId
        newDecal.Face = 'Front'
    end

    return newPart

end

function createRowOfParts(props)
    local partArray = props.partArray
    local parent = props.parent
    local size = props.size
    local partNamePrefix = props.partNamePrefix
    local xIncrement = props.xIncrement
    local funcForEachNewItem = props.funcForEachNewItem
    local xOffset = props.xOffset or 0
    local yOffset = props.yOffset or 0
    local zOffset = props.zOffset or 0

    local rowOfParts = {}

    for i, scene in ipairs(partArray) do

        local calcEdgePropsX = {
            parent = parent,
            childLength = size.width,
            axis = "X"
        }

        local calcEdgePropsZ = {
            parent = parent,
            childLength = size.depth,
            axis = "Z"
        }

        local xPositionStart = getParentFarEdge(calcEdgePropsX) + xOffset
        local zPositionStart = getParentFarEdge(calcEdgePropsZ) + zOffset
        local xPosition = xPositionStart - (i - 1) * (size.width + xIncrement)

        local position = {
            x = xPosition,
            y = size.height / 2 + yOffset,
            z = zPositionStart
        }
        local itemProps = {
            name = partNamePrefix .. ": " .. i,
            size = size,
            position = position,
            parent = parent,
            decalId = scene.decalId
        }

        local newItem = createChildPart(itemProps)

        local childItems = scene.characters
        -- local childItems = scene.frame.characters
        -- local childItems = {char01, char01}

        if (funcForEachNewItem) then
            funcForEachNewItem(newItem, childItems)
        end
        rowOfParts[i] = newItem
    end

    return rowOfParts

end

module.getParentFarEdge = getParentFarEdge
module.createChildPart = createChildPart
module.createRowOfParts = createRowOfParts
return module
