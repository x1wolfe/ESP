--Functions
function AddPlayerESP(model,TargetName,TextColor,BillBoardName)
    local Target = model:FindFirstChild(TargetName)

    local bill = Instance.new("BillboardGui", Target)
    bill.Enabled = false
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
        if bill.Enabled == true then
name.Text = model.Name.." ["..GetDistance(Character.HumanoidRootPart,Target).."]"
    end
end)
end

function AddPlayerChams(model,Color,HighlightName)
local Chams = Instance.new("Highlight")
Chams.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
Chams.FillColor = Color
Chams.FillTransparency = 0
Chams.OutlineTransparency = 1
Chams.Name = "HighlightName"
Chams.Parent = model
end

function SetESP(TargetName,boolean)
for i,v in pairs(workspace:GetDescendants()) do
if v.Name == TargetName then
    v.Enabled = boolean
end
end
end