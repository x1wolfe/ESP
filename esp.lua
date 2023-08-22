loadstring(game:HttpGet('https://raw.githubusercontent.com/Arcadian420/Services/main/lua.lua'))()

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
        name.TextSize = 11
        name.TextStrokeTransparency = 0.5

        RunService.RenderStepped:Connect(function()
if part == nil then

else
name.Text = part.Name.." ["..GetDistance(Character.HumanoidRootPart,part).."]"
    end)
    end

    function AddPlayerESP(part,TextColor,BillBoardName)
        
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
        name.TextSize = 11
        name.TextStrokeTransparency = 0.5

        RunService.RenderStepped:Connect(function()
if part == nil then

else
name.Text = part.Parent.Name.." ["..GetDistance(Character.HumanoidRootPart,part).."]"
    end)
    end
    --AddESP(workspace.Baseplate,Color3.fromRGB(255,255,255),"WorkspaceESP")