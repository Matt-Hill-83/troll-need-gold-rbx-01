local Sss = game:GetService("ServerScriptService")
local Part = require(Sss.Source.AddRemoteObjects.Part)
local RowOfParts = require(Sss.Source.AddRemoteObjects.RowOfParts)
local Texts = require(Sss.Source.AddDialog.Texts)

local module = {}

local pageNum = 1

renderDialog = function(props)
    local parent = props.parent
    local dialogConfigs = props.dialogConfigs

    local dialogContainer = renderDialogContainer({parent = parent})
    local textsContainer = renderTextsContainer({parent = dialogContainer})

    textsContainer.Material = Enum.Material.Pebble
    textsContainer.BrickColor = BrickColor.new("Institutional white")

    local renderTextsProps = {
        parent = textsContainer,
        dialogConfigs = dialogConfigs
    }
    Texts.renderTexts(renderTextsProps)

    local renderButtonBlockProps = {
        parent = dialogContainer,
        sibling = textsContainer
    }
    renderButtonBlock(renderButtonBlockProps)

end

renderDialogContainer = function(props)
    local parent = props.parent

    local childSize = Vector3.new(20, 12, 1)
    local desiredOffsetFromParentEdge = Vector3.new(-1, -1, 1.1)

    local itemDuplicationConfig = {
        alignToParentFarEdge = Vector3.new(1, 1, -1),
        moveTowardZero = Vector3.new(-1, -1, -1),
        rowDirection = Vector3.new(-1, -1, -1)
    }

    local offsetProps = {
        parent = parent,
        childSize = childSize,
        itemDuplicationConfig = itemDuplicationConfig,
        offset = desiredOffsetFromParentEdge
    }

    local childPos = RowOfParts.getCenterPosFromDesiredEdgeOffset(offsetProps)

    local dialogBlockProps = {
        name = 'Dialog Container',
        parent = parent,
        color = BrickColor.new("Buttermilk"),
        size = childSize,
        position = childPos
    }

    return Part.createPartWithVectors(dialogBlockProps)

end

renderButtonBlock = function(props)
    local parent = props.parent
    local sibling = props.sibling

    local newPartHeight = 2
    local bottomOffset = 0.1

    local distanceY = sibling.Size.Y / 2 + newPartHeight / 2 + bottomOffset
    local siblingSizeCopy = Vector3.new(sibling.Size.X / 2, newPartHeight,
                                        sibling.Size.Z)

    local buttonBlockProps = {
        name = 'buttonBlock',
        parent = parent,
        size = siblingSizeCopy,
        position = sibling.Position +
            Vector3.new(-sibling.Size.X / 4, -distanceY, 0),
        color = BrickColor.new("Light red")
    }

    local buttonBlock = Part.createPartWithVectors(buttonBlockProps)
    local sgui = Instance.new("SurfaceGui", buttonBlock)
    sgui.SizingMode = "PixelsPerStud"

    local textButton = Instance.new("TextButton", sgui)

    textButton.Size = UDim2.new(1, 0, 1, 0)
    textButton.BackgroundColor3 = Color3.new(1, 1, 1)
    textButton.Style = Enum.ButtonStyle.RobloxRoundDropdownButton

    textButton.Font = Enum.Font.SourceSans
    textButton.TextColor3 = Color3.new(0, 0, 0)
    textButton.TextSize = 40

    local function onActivated()
        pageNum = pageNum + 1
        textButton.Text = "Page: " .. pageNum
    end

    textButton.MouseButton1Click:Connect(onActivated)
    return buttonBlock
end

renderTextsContainer = function(props)
    local parent = props.parent

    local childSize = Vector3.new(parent.Size.X - 2, 10, 1)
    local desiredOffsetFromParentEdge = Vector3.new(0, 0, 0)

    local itemDuplicationConfig = {
        alignToParentFarEdge = Vector3.new(1, 1, -1),
        moveTowardZero = Vector3.new(-1, -1, -1),
        rowDirection = Vector3.new(-1, -1, -1)
    }

    local offsetProps = {
        parent = parent,
        childSize = childSize,
        itemDuplicationConfig = itemDuplicationConfig,
        offset = desiredOffsetFromParentEdge
    }

    local childPos = RowOfParts.getCenterPosFromDesiredEdgeOffset(offsetProps)

    local dialogBlockProps = {
        name = 'textsContainer',
        parent = parent,
        color = BrickColor.new("White"),
        size = childSize,
        position = childPos
    }

    return Part.createPartWithVectors(dialogBlockProps)
end

module.renderDialog = renderDialog
return module
