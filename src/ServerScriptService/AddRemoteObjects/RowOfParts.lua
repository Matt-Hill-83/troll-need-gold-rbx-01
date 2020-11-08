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
    local alignToParentFarEdge = props.alignToParentFarEdge or
                                     Vector3.new(1, 1, -1)
    print('alignToParentFarEdge' .. ' - start');
    print(alignToParentFarEdge);
    print('alignToParentFarEdge' .. ' - end');
    local partPosition = part.Position
    local partSize = part.Size
    local partFarEdge = partPosition + (partSize / 2) * alignToParentFarEdge -- local partFarEdge = partPosition[axis] + (partSize[axis] / 2) *
    --                         alignToParentFarEdge[axis]

    return partFarEdge
end

function getCenterPosFromDesiredEdgeOffset(props)
    local parent = props.parent
    local childSize = props.childSize
    local desiredOffset = props.desiredOffset
    local moveTowardZero = props.moveTowardZero
    local alignToParentFarEdge = props.alignToParentFarEdge or
                                     Vector3.new(1, 1, -1)

    local edgePropsX = {
        part = parent,
        alignToParentFarEdge = alignToParentFarEdge
    }
    local parentEdge = getPartFarEdge(edgePropsX)

    local isMoveTowardZero = moveTowardZero or Vector3.new(-1, 1, -1)

    local childCenterX = parentEdge.X + desiredOffset.X + (childSize.X / 2) *
                             isMoveTowardZero.x

    local childCenterY = parentEdge.Y + desiredOffset.Y + (childSize.Y / 2) *
                             isMoveTowardZero.y
    local childCenterZ = parentEdge.Z + desiredOffset.Z + (childSize.Z / 2) *
                             isMoveTowardZero.z

    local parentOffsetPoint = Vector3.new(childCenterX, childCenterY,
                                          childCenterZ)

    return parentOffsetPoint

end

function createRowOfParts(props)
    local rowProps = props.rowProps
    local itemConfigs = props.itemConfigs
    local itemProps = props.itemProps

    local rowOfParts = {}

    local desiredOffsetFromParentEdge = Vector3.new(0, 0, 0) + rowProps.offset

    for i, itemConfig in ipairs(itemConfigs) do

        local offsetProps = {
            parent = rowProps.parent,
            childSize = itemProps.size,
            desiredOffset = desiredOffsetFromParentEdge,
            moveTowardZero = rowProps.moveTowardZero,
            alignToParentFarEdge = rowProps.alignToParentFarEdge
        }

        print('offsetProps' .. ' - start');
        print(offsetProps);
        print('offsetProps' .. ' - end');

        local position = getCenterPosFromDesiredEdgeOffset(offsetProps)

        local newPartProps = {
            decalId = itemConfig.decalId,
            size = itemProps.size,
            name = itemProps.partName .. "-" .. i,
            position = position,
            parent = rowProps.parent
        }
        local newPart = Part.createPartWithVectors(newPartProps)

        rowOfParts[i] = newPart
        desiredOffsetFromParentEdge = desiredOffsetFromParentEdge +
                                          Vector3.new(
                                              rowProps.xGap + itemProps.size.X,
                                              0, 0) * rowProps.rowDirection
    end

    return rowOfParts
end

module.createRowOfParts = createRowOfParts
module.getPartFarEdge = getPartFarEdge
module.getCenterPosFromDesiredEdgeOffset = getCenterPosFromDesiredEdgeOffset

return module
