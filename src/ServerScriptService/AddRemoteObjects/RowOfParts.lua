local Sss = game:GetService("ServerScriptService")
local Part = require(Sss.Source.AddRemoteObjects.Part)

local module = {}

function getParentFarEdge(props)
    local parent = props.parent
    local childSizeLength = props.childLength
    local axis = props.axis or 'X'

    local parentPosition = parent.CFrame
    local parentSize = parent.Size
    local parentFarEdge = parentPosition[axis] + parentSize[axis] / 2
    local alignedValue = parentFarEdge - childSizeLength / 2
    return alignedValue
end

function getPartFarEdge(props)
    local part = props.part
    local axis = props.axis or 'X'

    -- ternary function
    local alignToParentFarEdge = props.alignToParentFarEdge and 1 or -1
    local partPosition = part.CFrame
    local partSize = part.Size
    local partFarEdge = partPosition[axis] + (partSize[axis] / 2) *
                            alignToParentFarEdge

    return partFarEdge
end

function getCenterPosFromDeriredEdgeOffset(props)
    local parent = props.parent
    local childSize = props.childSize
    local desiredOffset = props.desiredOffset
    local moveTowardZero = props.moveTowardZero

    local edgePropsX = {part = parent, axis = "X", alignToParentFarEdge = true}
    local parentEdgeX = getPartFarEdge(edgePropsX)

    local edgePropsY = {part = parent, axis = "Y", alignToParentFarEdge = true}
    local parentEdgeY = getPartFarEdge(edgePropsY)

    local edgePropsZ = {part = parent, axis = "Z", alignToParentFarEdge = false}
    local parentEdgeZ = getPartFarEdge(edgePropsZ)

    local isMoveTowardZero = moveTowardZero or {x = -1, y = -1, z = -1}

    local childCenterX = parentEdgeX + desiredOffset.X + (childSize.X / 2) *
                             isMoveTowardZero.x
    local childCenterY = parentEdgeY + desiredOffset.Y + (childSize.Y / 2) *
                             isMoveTowardZero.y
    local childCenterZ = parentEdgeZ + desiredOffset.Z + (childSize.Z / 2) *
                             isMoveTowardZero.z

    local parentOffsetPoint = Vector3.new(childCenterX, childCenterY,
                                          childCenterZ)

    return parentOffsetPoint

end

function createRowOfParts(props)
    local rowProps = props.rowProps
    local alignToParentFarEdge = rowProps.alignToParentFarEdge or
                                     {x = true, y = false, z = true}
    local itemConfigs = props.itemConfigs
    local itemProps = props.itemProps

    local edgePropsX = {
        part = rowProps.parent,
        axis = "X",
        alignToParentFarEdge = alignToParentFarEdge.x
    }
    local parentEdgeX = getPartFarEdge(edgePropsX)

    local edgePropsY = {
        part = rowProps.parent,
        axis = "Y",
        alignToParentFarEdge = alignToParentFarEdge.y
    }

    local parentEdgeY = getPartFarEdge(edgePropsY)

    local edgePropsZ = {
        part = rowProps.parent,
        axis = "Z",
        alignToParentFarEdge = alignToParentFarEdge.z
    }
    local parentEdgeZ = getPartFarEdge(edgePropsZ)

    local sceneWidth = itemProps.size.X
    local xIncrement = rowProps.direction * (sceneWidth + rowProps.xGap)

    local prevX = parentEdgeX - (rowProps.xOffset or 0)
    local y = parentEdgeY + (rowProps.yOffset or 0)
    local z = parentEdgeZ - (rowProps.zOffset or 0)

    local rowOfParts = {}

    for i, itemConfig in ipairs(itemConfigs) do

        print('i' .. ' - start');
        print(i);
        print('i' .. ' - end');
        local x = prevX
        local position = {x = x, y = y, z = z}
        local newPosition = Vector3.new(x, y, z)

        local adjustmentProps = {
            size = itemProps.size,
            position = newPosition,
            -- position = position,
            moveTowardZero = rowProps.moveTowardZero
        }
        local edgeAdjustedPosition = Part.getEdgePositionFromCenterPosition(
                                         adjustmentProps)

        print('edgeAdjustedPosition' .. ' - start');
        print(edgeAdjustedPosition);
        print('edgeAdjustedPosition' .. ' - end');

        local position2 = Vector3.new(edgeAdjustedPosition.X,
                                      edgeAdjustedPosition.Y,
                                      edgeAdjustedPosition.Z)

        print('position2' .. ' - start');
        print(position2);
        print('position2' .. ' - end');

        local newPartProps = {
            decalId = itemConfig.decalId,
            size = itemProps.size,
            name = itemProps.partName .. "-" .. i,
            position = position2,
            -- position = edgeAdjustedPosition,
            parent = rowProps.parent
        }
        local newPart = Part.createPartWithVectors(newPartProps)

        -- local newPartProps = {
        --     decalId = itemConfig.decalId,
        --     size = itemProps.size,
        --     name = itemProps.partName .. "-" .. i,
        --     position = edgeAdjustedPosition,
        --     parent = rowProps.parent
        -- }
        -- local newPart = Part.createPart(newPartProps)

        rowOfParts[i] = newPart

        prevX = x + xIncrement
    end

    return rowOfParts
end

module.createRowOfParts = createRowOfParts
module.getPartFarEdge = getPartFarEdge
module.getCenterPosFromDeriredEdgeOffset = getCenterPosFromDeriredEdgeOffset

return module
