local activated = false

if activated == false then
activated = true
if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Shoot') then
    game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Shoot'):Destroy()
end
if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Shoot') then
    game:GetService('Players').LocalPlayer.Character:FindFirstChild('Shoot'):Destroy()
end
for i, v in next, game:GetDescendants() do
    if v:IsA('Tool') and v.Name == 'Chute De Roberto Cardoso' then
        v.Parent = game:GetService('Players').LocalPlayer.Backpack
    end
end
game:GetService('Players').LocalPlayer.Character.Humanoid.Died:Connect(function()
    for i, v in next, game:GetService('Players').LocalPlayer.Backpack:GetDescendants() do
        if v:IsA('Tool') and v.Name == 'Chute De Roberto Cardoso' then
            v.Parent = game:GetService('ReplicatedStorage')
        end
    end
    for i, v in next, game:GetService('Players').LocalPlayer.Character:GetDescendants() do
        if v:IsA('Tool') and v.Name == 'Chute De Roberto Cardoso' then
            v.Parent = game:GetService('ReplicatedStorage')
        end
    end
end)
elseif activated == true then
activated = false
if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Chute De Roberto Cardoso') then
    game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Chute De Roberto Cardoso'):Destroy()
end
if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Chute De Roberto Cardoso') then
    game:GetService('Players').LocalPlayer.Character:FindFirstChild('Chute De Roberto Cardoso'):Destroy()
end
for i, v in next, game:GetDescendants() do
    if v:IsA('Tool') and v.Name == 'Shoot' then
        v.Parent = game:GetService('Players').LocalPlayer.Backpack
    end
end
game:GetService('Players').LocalPlayer.Character.Humanoid.Died:Connect(function()
    for i, v in next, game:GetService('Players').LocalPlayer.Backpack:GetDescendants() do
        if v:IsA('Tool') and v.Name == 'Shoot' then
            v.Parent = game:GetService('ReplicatedStorage')
        end
    end
    for i, v in next, game:GetService('Players').LocalPlayer.Character:GetDescendants() do
        if v:IsA('Tool') and v.Name == 'Shoot' then
            v.Parent = game:GetService('ReplicatedStorage')
        end
    end
end)
end
