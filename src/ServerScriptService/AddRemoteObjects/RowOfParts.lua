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
    local partPosition = part.Position
    local partSize = part.Size
    local partFarEdge = partPosition[axis] + (partSize[axis] / 2) *
                            alignToParentFarEdge

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
        axis = "X",
        alignToParentFarEdge = alignToParentFarEdge.X
    }
    local parentEdgeX = getPartFarEdge(edgePropsX)

    local edgePropsY = {
        part = parent,
        axis = "Y",
        alignToParentFarEdge = alignToParentFarEdge.Y
    }
    local parentEdgeY = getPartFarEdge(edgePropsY)

    local edgePropsZ = {
        part = parent,
        axis = "Z",
        alignToParentFarEdge = alignToParentFarEdge.Z
    }
    local parentEdgeZ = getPartFarEdge(edgePropsZ)

    local isMoveTowardZero = moveTowardZero or {x = -1, y = -1, z = -1}

    local childCenterX = parentEdgeX + desiredOffset.X + (childSize.X / 2) *
                             isMoveTowardZero.x
    -- local childCenterY = parent.Position.Y
    -- --                          isMoveTowardZero.x
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
    print('parentEdgeX' .. ' - start');
    print(parentEdgeX);
    print('parentEdgeX' .. ' - end');

    local edgePropsY = {
        part = rowProps.parent,
        axis = "Y",
        alignToParentFarEdge = alignToParentFarEdge.y
    }

    local parentEdgeY = getPartFarEdge(edgePropsY)
    print('parentEdgeY' .. ' - start');
    print(parentEdgeY);
    print('parentEdgeY' .. ' - end');
    local edgePropsZ = {
        part = rowProps.parent,
        axis = "Z",
        alignToParentFarEdge = alignToParentFarEdge.z
    }
    local parentEdgeZ = getPartFarEdge(edgePropsZ)

    local y = parentEdgeY
    local z = parentEdgeZ

    local rowOfParts = {}

    local desiredOffsetFromParentEdge = Vector3.new(0, 0, 0) + rowProps.offset

    print('desiredOffsetFromParentEdge' .. ' - start');
    print(desiredOffsetFromParentEdge);
    print('desiredOffsetFromParentEdge' .. ' - end');
    for i, itemConfig in ipairs(itemConfigs) do

        local offsetProps = {
            parent = rowProps.parent,
            childSize = itemProps.size,
            desiredOffset = desiredOffsetFromParentEdge,
            moveTowardZero = rowProps.moveTowardZero
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
