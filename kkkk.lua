




repeat wait() until game:IsLoaded()
repeat wait() until game.Players.LocalPlayer
repeat wait() until plr.Character
repeat wait() until plr.Character:FindFirstChild("HumanoidRootPart")
repeat wait() until plr.Character:FindFirstChild("Humanoid")
repeat wait() until workspace:FindFirstChild("__THINGS")
local plr = game.Players.LocalPlayer
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
function DetectBlock(x)
    local a = math.huge
    local b 
    for i,v in next,workspace.__THINGS.__INSTANCE_CONTAINER.Active.AdvancedDigsite.Important.ActiveBlocks:GetChildren() do 
        if v:IsA("Part")  then
            if (x and v:GetAttribute("Coord") == x) or (not x and v.BrickColor.Name ~= "Really black") then 
                local c = (plr.Character.HumanoidRootPart.Position-v.Position).Magnitude
                if a > c then 
                    a = c
                    b =v 
                end
            end
        end
    end
    return b
end
function DetectChest()
    local a = math.huge
    local b 
    for i,v in next,workspace.__THINGS.__INSTANCE_CONTAINER.Active.AdvancedDigsite.Important.ActiveChests:GetChildren() do 
        if v:IsA("Model") and not v:FindFirstChild("Ignored") then
            local c = plr:DistanceFromCharacter(v.Top.Position)
            if a > c then 
                a = c
                b =v 
            end
        end
    end
    return b
end
local TeleportMid = false
_G.on = not _G.on
while _G.on and  wait() do 
    pcall(function()
        if game.workspace.__THINGS.__INSTANCE_CONTAINER.Active:FindFirstChild("AdvancedDigsite") then 
            if TeleportMid then 
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(651.444091796875, 58.21053695678711, -2525.94189453125)
                TeleportMid = false
                return 
            end
            local e = DetectChest()
            local d = e and  DetectBlock((e:GetAttribute("Coord")+Vector3.new(0,1,0))) or DetectBlock()
            if d  then 
                if e and  e.Name == "Animated"  then 
                    if d.BrickColor.Name == "Really black" then 
                        local Ignored = Instance.new("IntValue", e)
                        Ignored.Name = "Ignored"
                    end
                end
                if plr:DistanceFromCharacter(d.Position) > 10 then 
                    plr.Character.HumanoidRootPart.CFrame = d.CFrame *CFrame.new(0,3,0)
                end
                local args = {
                    [1] = "AdvancedDigsite",
                    [2] = "DigBlock",
                    [3] = d:GetAttribute("Coord")
                }
                game:GetService("ReplicatedStorage").Network.Instancing_FireCustomFromClient:FireServer(unpack(args))
                wait(0.2)
            end
        else
            TeleportMid = true 
            plr.Character.HumanoidRootPart.CFrame = workspace.__THINGS.Instances.AdvancedDigsite.Teleports.Enter.CFrame
            wait(10)
        end
    end)
end
