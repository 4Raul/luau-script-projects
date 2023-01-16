for i = 1, 2 do
warn('SCRIPT MADE BY 8BN LOL')
end
pcall(function()
game:GetService('UserInputService').InputBegan:Connect(function(Input, IsTyping)
    if IsTyping then return end
    if table.find(settings.teclas, Input.KeyCode) then
        if getgenv().ativado then
            if settings.toolfunction == true then
                if game:GetService('Players').LocalPlayer.Character:FindFirstChild(settings.tool) then
                    for i, v in next, workspace:GetDescendants() do
                        if v:IsA('BasePart') and v.Name == 'TPS' then
                            local studs = game:GetService('Players').LocalPlayer:DistanceFromCharacter(v.Position)
                            if (studs <= settings.distancia) then
                                game:GetService('ReplicatedStorage').ChangeOwner:FireServer(v)
                                game:GetService('ReplicatedStorage').CatchBall:FireServer(v)
                            end
                        end
                    end
                end
            elseif settings.toolfunction == false then
                for i, v in next, workspace:GetDescendants() do
                    if v:IsA('BasePart') and v.Name == 'TPS' then
                        local studs = game:GetService('Players').LocalPlayer:DistanceFromCharacter(v.Position)
                        if (studs <= settings.distancia) then
                            game:GetService('ReplicatedStorage').ChangeOwner:FireServer(v)
                            game:GetService('ReplicatedStorage').CatchBall:FireServer(v)
                        end
                    end
                end
            end
        end
    elseif Input.KeyCode == Enum.KeyCode.B then
        if getgenv().ativado then
            if settings.toolfunction == true then
                if game:GetService('Players').LocalPlayer.Character:FindFirstChild(settings.tool) then
                    for i, v in next, workspace:GetDescendants() do
                        if v:IsA('BasePart') and v.Name == 'TPS' then
                            game:GetService('ReplicatedStorage').ChangeOwner:FireServer(v)
                            game:GetService('ReplicatedStorage').CatchBall:FireServer(v)
                        end
                    end
                end
            elseif settings.toolfunction == false then
                for i, v in next, workspace:GetDescendants() do
                    if v:IsA('BasePart') and v.Name == 'TPS' then
                        game:GetService('ReplicatedStorage').ChangeOwner:FireServer(v)
                        game:GetService('ReplicatedStorage').CatchBall:FireServer(v)
                    end
                end
            end
        end
    elseif Input.KeyCode == Enum.KeyCode.H then
        if settings.toolfunction == true then
            if game:GetService('Players').LocalPlayer.Character:FindFirstChild(settings.tool) then
                game:GetService('ReplicatedStorage').DropBall:FireServer()
            end
        elseif settings.toolfunction == false then
            game:GetService('ReplicatedStorage').DropBall:FireServer()
        end
    end
end)
end)
