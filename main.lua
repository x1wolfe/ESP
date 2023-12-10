--Booleans
getgenv().PlayerEsp = false

--Functions
function AddPartESP(part,TextColor,BillBoardName)
        local bill = Instance.new("BillboardGui", part)
        bill.Name = BillBoardName
        bill.Size = UDim2.new(30,50,30,50)
        bill.Adornee = part
        bill.AlwaysOnTop = true
        local name = Instance.new("TextLabel", bill)
         name.Font = Enum.Font.Arial
        name.TextWrapped = true
        name.Size = UDim2.new(1,0,1,0)
        name.TextYAlignment = "Center"
        name.TextColor3 = TextColor
        name.BackgroundTransparency = 1
        name.TextSize = 12
        name.TextStrokeTransparency = 0

        RunService.RenderStepped:Connect(function()
name.Text = part.Name.." ["..GetDistance(Character.HumanoidRootPart,part).."]"
    end)
end

function AddPlayerEsp(char,TargetName,TextColor,BillBoardName)
    local Target = char:FindFirstChild(TargetName)

    local bill = Instance.new("BillboardGui", Target)
    bill.Name = BillBoardName
    bill.Size = UDim2.new(30,50,30,50)
    bill.Adornee = Target
    bill.AlwaysOnTop = true
    bill.StudsOffset = Vector3.new(0, 2.5, 0)
    local name = Instance.new("TextLabel", bill)
     name.Font = Enum.Font.Arial
    name.TextWrapped = true
    name.Size = UDim2.new(1,0,1,0)
    name.TextYAlignment = "Center"
    name.TextColor3 = TextColor
    name.BackgroundTransparency = 1
    name.TextSize = 12
    name.TextStrokeTransparency = 0

    RunService.RenderStepped:Connect(function()
if getgenv().PlayerEsp == true then
name.Text = char.Name.." ["..GetDistance(Character.HumanoidRootPart,Target).."]"
bill.Enabled = true
else
bill.Enabled = false
end
end)
end