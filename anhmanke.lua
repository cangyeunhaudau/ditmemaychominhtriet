repeat task.wait() until game:IsLoaded()
repeat wait()
    pcall(function()
        for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated)) do
            v.Function()
        end
    end)
until game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") and   not  game:GetService("Players").LocalPlayer.PlayerGui.Main:WaitForChild("ChooseTeam").Visible or not game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
if game.PlaceId ~= 7449423635 then
    local args = {
        [1] = "TravelZou" -- OLD WORLD to NEW WORLD
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    return 
end
local CFrameFruits = {
    ["Leopard Fruit CFrame"] = CFrame.new(-12485.8623046875, 337.474365234375, -7470.90283203125),
    ["Dragon Fruit CFrame"] = CFrame.new(-12616.123046875, 336.91436767578125, -7446.2841796875),
    ["Kitsune Fruit CFrame"] = CFrame.new(-12515.224609375, 336.91436767578125, -7552.5537109375),
}
local Fruits = {
    "Leopard Fruit",
    "Kitsune Fruit",
    "Dragon Fruit",
} 
local plr = game.Players.LocalPlayer
function DetectFruit(path)
    for i,v in next,path:GetChildren() do 
        if table.find(Fruits,v.Name) then 
            return v 
        end
    end
end
function CreateTweenFloat()
    if not plr.Character.HumanoidRootPart:FindFirstChild("EffectsSY") then
        local BV = Instance.new("BodyVelocity")
        BV.Parent = plr.Character.HumanoidRootPart
        BV.Name = "EffectsSY"
        BV.MaxForce = Vector3.new(0, 100000, 0)
        BV.Velocity = Vector3.new(0, 0, 0)
    end
end
game:GetService('RunService').Stepped:connect(function()
    pcall(function()
        if plr.Character:FindFirstChild("Humanoid") and plr.Character.Humanoid.Health ~= 0 then
            CreateTweenFloat()
        end
    end)
end)
function equiptool(toolname)
    if toolname and plr:FindFirstChild("Backpack") and plr.Backpack:FindFirstChild(toolname)  then
        plr.Character.Humanoid:EquipTool(plr.Backpack:FindFirstChild(toolname))
    end
end
spawn(function()
    while wait() do
        pcall(function()
            if plr:DistanceFromCharacter(Vector3.new(-12548.576171875, 337.16827392578125, -7499.52978515625)) > 150 then
                args = {
                    "requestEntrance",
                    Vector3.new(-12463.8740234375, 374.9144592285156, -7523.77392578125),
                }
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(args))
                return
            end
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
            local checkfruit = DetectFruit(plr.Backpack) or DetectFruit(plr.Character)
            if checkfruit then
                local PositionF = CFrameFruits[checkfruit.Name.." CFrame"]
                if plr:DistanceFromCharacter(PositionF.Position) <= 20 then
                    if plr.Character:FindFirstChild(checkfruit.Name) then 
                        local args = {
                            [1] = "Drop"
                        }
                        
                        checkfruit.EatRemote:InvokeServer(unpack(args))
                    else
                        equiptool(checkfruit.Name)
                    end
                else
                    plr.Character.HumanoidRootPart.CFrame = PositionF*CFrame.new(0,15,0)
                end
            end
        end)
    end
end)
