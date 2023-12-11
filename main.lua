--Functions
function AddPartESP(part,TextColor,BillBoardName)
        local bill = Instance.new("BillboardGui", part)
        bill:SetAttribute("On",true)
        local Setting = bill:GetAttribute("On")
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
            if Setting == true then
name.Text = part.Name.." ["..GetDistance(Character.HumanoidRootPart,part).."]"
bill.Enabled = true
else
    bill.Enabled = false
    end
    end)
end

function AddPlayerEsp(char,TargetName,TextColor,BillBoardName)
    local Target = char:FindFirstChild(TargetName)

    local bill = Instance.new("BillboardGui", Target)
    bill:SetAttribute("On",true)
    local Setting = bill:GetAttribute("On")
    bill.Name = BillBoardName
    bill.Size = UDim2.new(30,50,30,50)
    bill.Adornee = Target
    bill.AlwaysOnTop = true
    bill.StudsOffset = Vector3.new(0, 1.5, 0)
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
if Setting == true then
name.Text = char.Name.." ["..GetDistance(Character.HumanoidRootPart,Target).."]"
bill.Enabled = true
else
bill.Enabled = false
end
end)
end

function SetEsp(TargetName,boolean)
for i,v in pairs(workspace:GetDescendants()) do
if v.Name == TargetName then
v:SetAttribute("On",boolean)
print(boolean)
end
end
end