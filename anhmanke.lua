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
local CFrameFruits = {
    ["Leopard Fruit"] = CFrame.new(-12485.8623046875, 337.474365234375, -7470.90283203125),
    ["Dragon Fruit"] = CFrame.new(-12616.123046875, 336.91436767578125, -7446.2841796875),
    ["Kitsune Fruit"] = CFrame.new(-12515.224609375, 336.91436767578125, -7552.5537109375),
}
if game.PlaceId ~= 7449423635 and not getgenv().Sea2 then
    local args = {
        [1] = "TravelZou" -- OLD WORLD to NEW WORLD
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    return 
elseif game.PlaceId ~= 4442272183 and  getgenv().Sea2 then
    local args = {
        [1] = "TravelDressrosa" -- OLD WORLD to NEW WORLD
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    CFrameFruits = {
        ["Leopard Fruit"] = CFrame.new(-378.45819091796875, 73.04586029052734, 345.3525695800781),
        ["Dragon Fruit"] = CFrame.new(-443.6914367675781, 73.04586029052734, 285.88824462890625),
        ["Kitsune Fruit"] = CFrame.new(-315.5158386230469, 73.08589172363281, 275.23236083984375),
    }
end
local plr = game.Players.LocalPlayer
function toTarget(pos, targetPos, targetCFrame,TpInstant)
    if plr.Character:FindFirstChild("HumanoidRootPart") then 
        local aaa =  150
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((targetPos - pos).Magnitude/aaa, Enum.EasingStyle.Quad)
        if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and plr.Character.Humanoid.Health > 0 then
            local a = Vector3.new(0,plr.Character:FindFirstChild("HumanoidRootPart").Position.Y,0) 
            local b = Vector3.new(0,game:GetService("Workspace").Map["WaterBase-Plane"].Position.Y,0)
            if (a-b).Magnitude <= 60 then
                plr.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame*CFrame.new(0,20,0)
            end
            getgenv().Tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart"), info, {CFrame = targetCFrame})
            getgenv().Tween:Play()
        end
    end
end
local Fruits = {
    "Leopard Fruit",
    "Kitsune Fruit",
    "Dragon Fruit",
} 

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
WebHookStoreFruit = function(url,x)
	msg = {
		["content"] = x,
	} 
    local request = http_request
    if syn then
        request = syn.request 
    end
    local response = request(
        {
            Url = url,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = game:GetService("HttpService"):JSONEncode(msg)
        }
    )
end

spawn(function()
    while wait() do
        pcall(function()
            local PositionDrop = CFrame.new(-12548.576171875, 337.16827392578125, -7499.52978515625)
            if game.PlaceId == 4442272183 then 
                PositionDrop = CFrame.new(-384.73065185546875, 73.04586029052734, 283.9140625)
            end
            if plr:DistanceFromCharacter(PositionDrop.Position) > 150 then
                if game.PlaceId == 7449423635 then
                    args = {
                        "requestEntrance",
                        Vector3.new(-12463.8740234375, 374.9144592285156, -7523.77392578125),
                    }
                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(args))
                else
                    toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,PositionDrop.Position,PositionDrop)
                end
                return 
            end
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
            local FruitDrop = DetectFruit(plr.Backpack) or DetectFruit(plr.Character)
            print(FruitDrop)
            if FruitDrop then
                local PositionF = CFrameFruits[FruitDrop.Name]
                if plr:DistanceFromCharacter(PositionF.Position) <= 20 then
                    if plr.Character:FindFirstChild(FruitDrop.Name) then 
                        WebHookStoreFruit(getgenv().UrlWebhook,FruitDrop.Name)
                        local args = {
                            [1] = "Drop"
                        }
                        
                        FruitDrop.EatRemote:InvokeServer(unpack(args))
                        wait(1)
                    else
                        equiptool(FruitDrop.Name)
                    end
                else
                    plr.Character.HumanoidRootPart.CFrame = PositionF*CFrame.new(0,15,0)
                end
            end
        end)
    end
end)
