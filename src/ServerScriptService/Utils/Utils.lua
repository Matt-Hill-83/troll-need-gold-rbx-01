local module = {}

function getParentlLeft(parent, childWidth)
    local parentPosition = CFrame.new(parent.Position)
    local parentSize = parent.Size
    local parentLeftEdge = parentPosition.X + parentSize.X / 2
    local outputX = parentLeftEdge - childWidth / 2

    return outputX
end

function createChildPart(props)
    local size = props.size
    local parent = props.parent
    local position = props.position
    local color = props.color
    local decal = props.decal

    local newPart = Instance.new("Part", parent)

    newPart.Size = Vector3.new(size.width, size.height, size.depth)
    newPart.Anchored = true
    newPart.Name = props.name
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

    local rowOfParts = {}

    for i, scene in ipairs(partArray) do

        local size = {width = 20, height = 16, depth = 2}
        local partName = "Scene: " .. i

        local xIncrement = size.width * 0.2
        local xPositionStart = getParentlLeft(parent, size.width)
        local xPosition = xPositionStart - (i - 1) * (size.width + xIncrement)

        local position = {x = xPosition, y = size.height / 2, z = 0}
        local sceneProps = {
            name = partName,
            size = size,
            position = position,
            parent = parent,
            color = scene.color,
            decal = 'rbxassetid://5902121857'
        }

        local newScene = createChildPart(sceneProps)

        local creatureProps = {
            name = partName,
            size = size,
            position = position,
            parent = newScene,
            color = scene.color,
            decal = 'rbxassetid://5897424121'
        }

        local newCharacter = createChildPart(creatureProps)

        local newSurfaceGui = Instance.new("SurfaceGui", newScene)
        local newLabel = Instance.new("TextLabel", newSurfaceGui)

        newLabel.Size = UDim2.new(0, 10, 0, 10)
        newLabel.Position = UDim2.new(0, 0, 0, 0)
        newLabel.Text = scene['name']

        rowOfParts[i] = newScene
    end

    return rowOfParts

end

module.getParentlLeft = getParentlLeft
module.createChildPart = createChildPart
module.createRowOfParts = createRowOfParts
return module
