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

    local partPosition = part.CFrame
    local partSize = part.Size
    local partFarEdge = partPosition[axis] + partSize[axis] / 2

    return partFarEdge
end

function createRowOfParts2(props)
    local rowProps = props.rowProps
    local sceneConfigs = props.sceneConfigs

    local sceneDepth = 2

    local sceneProps = {
        size = {x = 4, y = 4, z = sceneDepth},
        partName = "Scene"
    }

    local frameIndex = 1

    local edgePropsX = {part = rowProps.parent, axis = "X"}
    local parentEdgeX = getPartFarEdge(edgePropsX)

    local edgePropsY = {part = rowProps.parent, axis = "Y"}
    local parentEdgeY = getPartFarEdge(edgePropsY)

    local edgePropsZ = {part = rowProps.parent, axis = "Z"}
    local parentEdgeZ = getPartFarEdge(edgePropsZ)

    local sceneWidth = sceneProps.size.x
    local xIncrement = rowProps.direction * (sceneWidth + rowProps.xGap)

    local prevX = parentEdgeX - rowProps.xOffset
    local y = parentEdgeY + rowProps.xOffset
    local z = parentEdgeZ - rowProps.xOffset

    for i, sceneConfig in ipairs(sceneConfigs) do
        local x = prevX

        local position = {x = x, y = y, z = z}

        local adjustmentProps = {
            size = sceneProps.size,
            position = position,
            moveTowardZero = rowProps.moveTowardZero
        }
        local edgeAdjustedPosition = Part.getEdgePositionFromCenter(
                                         adjustmentProps)

        local newPartProps = {
            decalId = sceneConfig.decalId,
            size = sceneProps.size,
            name = sceneProps.partName .. "-" .. i,
            position = edgeAdjustedPosition,
            parent = rowProps.parent
        }
        local newPart = Part.createPart2(newPartProps)

        prevX = x + xIncrement
    end

end

module.createRowOfParts2 = createRowOfParts2

return module
