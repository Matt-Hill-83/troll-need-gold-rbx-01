local module = {}

function getParentFarEdge(props)
    local parent = props.parent
    local childWidth = props.childWidth
    local axis = props.axis or 'X'

    -- if not axis then axis = 'X' end

    local parentPosition = CFrame.new(parent.Position)
    local parentSize = parent.Size
    local parentLeftEdge = parentPosition[axis] + parentSize[axis] / 2
    local outputX = parentLeftEdge - childWidth / 2
    return outputX
end

function createChildPart(props)
    local size = props.size
    local parent = props.parent
    local position = props.position
    local color = props.color
    local decal = props.decal
    local name = props.name

    local newPart = Instance.new("Part", parent)

    newPart.Size = Vector3.new(size.width, size.height, size.depth)
    newPart.Anchored = true
    newPart.Name = name
    newPart.BrickColor = color
    newPart.CFrame = parent.CFrame +
                         Vector3.new(position.x, position.y, position.z)

    if decal then
        local newDecal = Instance.new("Decal", newPart)
        newDecal.Texture = decal
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

    local rowOfParts = {}

    for i, scene in ipairs(partArray) do

        local calcEdgeProps = {
            parent = parent,
            childWidth = size.width,
            axis = "X"
        }
        local xPositionStart = getParentFarEdge(calcEdgeProps)
        local xPosition = xPositionStart - (i - 1) * (size.width + xIncrement)

        local position = {x = xPosition, y = size.height / 2, z = 0}
        local itemProps = {
            name = partNamePrefix .. ": " .. i,
            size = size,
            position = position,
            parent = parent,
            color = scene.color,
            decal = scene.decal
        }

        local newItem = createChildPart(itemProps)

        local char01 = {
            name = "Britta",
            decal = 'rbxassetid://5897424121',
            color = BrickColor.new("Light blue")
        }

        local childItems = {char01, char01}

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
