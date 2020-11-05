local Sss = game:GetService("ServerScriptService")
local Part = require(Sss.Source.AddRemoteObjects.Part)

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

    -- ternary function
    local alignToParentEdge = props.alignToParentEdge and 1 or -1
    local partPosition = part.CFrame
    local partSize = part.Size
    local partFarEdge = partPosition[axis] + (partSize[axis] / 2) *
                            alignToParentEdge

    return partFarEdge
end

function createRowOfParts(props)
    local rowProps = props.rowProps
    -- local alignToParentEdge = {x = true, y = false, z = true}
    local alignToParentEdge = props.alignToParentEdge or
                                  {x = true, y = false, z = true}
    local itemConfigs = props.itemConfigs
    local itemProps = props.itemProps

    local edgePropsX = {
        part = rowProps.parent,
        axis = "X",
        alignToParentEdge = alignToParentEdge.x
    }
    local parentEdgeX = getPartFarEdge(edgePropsX)

    local edgePropsY = {
        part = rowProps.parent,
        axis = "Y",
        alignToParentEdge = alignToParentEdge.y
    }
    local parentEdgeY = getPartFarEdge(edgePropsY)

    local edgePropsZ = {
        part = rowProps.parent,
        axis = "Z",
        alignToParentEdge = alignToParentEdge.z
    }
    local parentEdgeZ = getPartFarEdge(edgePropsZ)

    local sceneWidth = itemProps.size.x
    local xIncrement = rowProps.direction * (sceneWidth + rowProps.xGap)

    local prevX = parentEdgeX - rowProps.xOffset
    local y = parentEdgeY + rowProps.xOffset
    local z = parentEdgeZ - rowProps.xOffset

    local rowOfParts = {}

    for i, sceneConfig in ipairs(itemConfigs) do
        local x = prevX
        local position = {x = x, y = y, z = z}

        local adjustmentProps = {
            size = itemProps.size,
            position = position,
            moveTowardZero = rowProps.moveTowardZero
        }
        local edgeAdjustedPosition = Part.getEdgePositionFromCenter(
                                         adjustmentProps)

        local newPartProps = {
            decalId = sceneConfig.decalId,
            size = itemProps.size,
            name = itemProps.partName .. "-" .. i,
            position = edgeAdjustedPosition,
            parent = rowProps.parent
        }
        local newPart = Part.createPart2(newPartProps)

        rowOfParts[i] = newPart

        prevX = x + xIncrement
    end

    return rowOfParts
end

module.createRowOfParts = createRowOfParts

return module
