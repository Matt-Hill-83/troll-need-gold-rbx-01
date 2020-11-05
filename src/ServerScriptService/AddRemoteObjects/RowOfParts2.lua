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
    












    
    local rowOfParts = {}


        rowOfParts[i] = newItem

        
        
        
        
    end

    
    return rowOfParts
end

module.createRowOfParts2 = createRowOfParts2


return module
