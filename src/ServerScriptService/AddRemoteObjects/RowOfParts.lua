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

    local alignToParentFarEdge = props.alignToParentFarEdge

    local partPosition = part.Position
    local partSize = part.Size
    local partFarEdge = partPosition + (partSize / 2) * alignToParentFarEdge

    return partFarEdge
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

    local rowOfParts = {}

    local desiredOffsetFromParentEdge = rowProps.offset

    for i, itemConfig in ipairs(itemConfigs) do

        local offsetProps = {
            parent = rowProps.parent,
            childSize = itemProps.size,
            offsetConfig = rowProps.offsetConfig,
            offset = desiredOffsetFromParentEdge
        }

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
                                              0, 0) *
                                          rowProps.offsetConfig.rowDirection
    end

    return rowOfParts
end

module.createRowOfParts = createRowOfParts
module.getPartFarEdge = getPartFarEdge
module.getCenterPosFromDesiredEdgeOffset = getCenterPosFromDesiredEdgeOffset

return module
