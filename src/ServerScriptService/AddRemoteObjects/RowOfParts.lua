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
    return part.Position + (part.Size / 2) * props.alignToParentFarEdge

end

function getCenterPosFromDesiredEdgeOffset(props)
    local parent = props.parent
    local childSize = props.childSize
    local desiredOffset = props.offset

    local offsetConfig = props.offsetConfig

    local moveTowardZero = offsetConfig.moveTowardZero
    local alignToParentFarEdge = offsetConfig.alignToParentFarEdge

    local edgeProps = {
        part = parent,
        alignToParentFarEdge = alignToParentFarEdge
    }

    local parentEdge = getPartFarEdge(edgeProps)

    local parentOffsetPoint = parentEdge + desiredOffset + (childSize / 2) *
                                  moveTowardZero

    return parentOffsetPoint

end

function createRowOfParts(props)
    local rowProps = props.rowProps
    local itemConfigs = props.itemConfigs
    local itemProps = props.itemProps

    local parent = rowProps.parent
    local offsetConfig = rowProps.offsetConfig

    local rowOfParts = {}

    local desiredOffsetFromParentEdge = rowProps.offset

    for i, itemConfig in ipairs(itemConfigs) do

        local offsetProps = {
            parent = parent,
            childSize = itemProps.size,
            offsetConfig = offsetConfig,
            offset = desiredOffsetFromParentEdge
        }

        local position = getCenterPosFromDesiredEdgeOffset(offsetProps)

        local newPartProps = {
            decalId = itemConfig.decalId,
            size = itemProps.size,
            name = itemProps.partName .. "-" .. i,
            position = position,
            parent = parent
        }

        rowOfParts[i] = Part.createPartWithVectors(newPartProps)

        local positionIncrement = Vector3.new(rowProps.xGap + itemProps.size.X,
                                              0, 0) *
                                      rowProps.offsetConfig.rowDirection
        desiredOffsetFromParentEdge = desiredOffsetFromParentEdge +
                                          positionIncrement

    end

    return rowOfParts
end

module.createRowOfParts = createRowOfParts
module.getPartFarEdge = getPartFarEdge
module.getCenterPosFromDesiredEdgeOffset = getCenterPosFromDesiredEdgeOffset

return module
