





repeat wait() until game:IsLoaded()
repeat wait() until game.Players.LocalPlayer
local plr = game.Players.LocalPlayer
repeat wait() until plr.Character
repeat wait() until plr.Character:FindFirstChild("HumanoidRootPart")
repeat wait() until plr.Character:FindFirstChild("Humanoid")
repeat wait() until workspace:FindFirstChild("__THINGS")
local antispy = loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/nguoitanoiyeulatin.lua"))()
if  not antispy then 
    return game.Players.LocalPlayer:Kick("an cut cho")
end
local plr = game.Players.LocalPlayer
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
loadstring([[
    local old = require(game.ReplicatedStorage.Library.Client.UpgradeCmds).GetPower
require(game.ReplicatedStorage.Library.Client.UpgradeCmds).GetPower = function(...)
    local a = ... 
    if a == "Magnet" then 
        return 1000
    end
    return old(...)
end
]])()
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
local CoordFarm = 7
function DetectBlock2()
    for i,v in next,workspace.__THINGS.__INSTANCE_CONTAINER.Active.AdvancedDigsite.Important.ActiveBlocks:GetChildren() do 
        if v:IsA("Part") and v.BrickColor.Name ~= "Really black" and plr:DistanceFromCharacter(v.Position) <= 500 then
            return v 
        end
    end
end
function DetectBlock3()
    local a 
    local dist = 0
    for i,v in next,workspace.__THINGS.__INSTANCE_CONTAINER.Active.AdvancedDigsite.Important.ActiveBlocks:GetChildren() do 
        if v:IsA("Part") and v.BrickColor.Name ~= "Really black" then
            if  v:GetAttribute("Coord").Y >=  20 and   v:GetAttribute("Coord").Y <  50 and v:GetAttribute("Coord").Z >= 5 and v:GetAttribute("Coord").X >= 7   then 
                local posplr = plr.Character.HumanoidRootPart.Position
                local mag = (Vector3.new(posplr.X,0,posplr.Z)-Vector3.new(v.Position.X,0,v.Position.Z)).Magnitude
                if mag > dist then 
                    dist = mag 
                    a = v 
                end
            end
        end
    end
    return a
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
function DetectOrbDia()
    for i,v in next,workspace.__THINGS.Orbs:GetChildren() do 
        if not  v:GetAttribute("OrbUID") then
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
game:GetService("RunService").RenderStepped:Connect(function()
    if plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character:FindFirstChild("Humanoid") then
        for i,v in next,plr.Character:GetDescendants() do 
            if (v:IsA("Part") or v:IsA("MeshPart")) and  v.CanCollide then 
                v.CanCollide = false 
            end
        end
    end
end)
game:GetService('RunService').Stepped:connect(function()
    pcall(function()
        if plr.Character:FindFirstChild("Humanoid") and plr.Character.Humanoid.Health ~= 0 then
            spawn(function()
                CreateTweenFloat()
            end)
        end
    end)
end)
local TeleportMid = false
_G.on = not _G.on

spawn(function()
    while _G.on and  wait() do 
        pcall(function()
            if game.workspace.__THINGS.__INSTANCE_CONTAINER.Active:FindFirstChild("AdvancedDigsite") then 
                if TeleportMid then 
                    plr.Character.HumanoidRootPart.CFrame = CFrame.new(651.444091796875, 58.21053695678711, -2525.94189453125)
                    TeleportMid = false
                    return 
                end
                local g = DetectOrbDia() 
                if g then 
                    plr.Character.HumanoidRootPart.CFrame = g.CFrame
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "A", false, game)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "A", false, game)
                    wait(0.15)
                else
                    local e = DetectChest()
                    local d
                    if e then 
                        d = DetectBlock((e:GetAttribute("Coord")+Vector3.new(0,1,0)))
                    end
                    if d  then 
                        if e and  e.Name == "Animated"  then 
                            if d.BrickColor.Name == "Really black" then 
                                local Ignored = Instance.new("IntValue", e)
                                Ignored.Name = "Ignored"
                            end
                        end
                        if plr:DistanceFromCharacter(d.Position) > 10 then 
                            plr.Character.HumanoidRootPart.CFrame = e.Top.CFrame *CFrame.new(0,3,0)
                        end
                        local args = {
                            [1] = "AdvancedDigsite",
                            [2] = "DigBlock",
                            [3] = d:GetAttribute("Coord")
                        }
                        game:GetService("ReplicatedStorage").Network.Instancing_FireCustomFromClient:FireServer(unpack(args))
                    else 
                        local f = DetectBlock3()

                        if  f then 
                            print("mbbb")
                            repeat task.wait()
                                if plr:DistanceFromCharacter(f.Position) > 10 then 
                                    plr.Character.HumanoidRootPart.CFrame = f.CFrame *CFrame.new(0,4,0)
                                else
                                    local args = {
                                        [1] = "AdvancedDigsite",
                                        [2] = "DigBlock",
                                        [3] = f:GetAttribute("Coord")
                                    }
                                    game:GetService("ReplicatedStorage").Network.Instancing_FireCustomFromClient:FireServer(unpack(args))
                                end
                            until not f or not f.Parent or not _G.on or DetectChest()
                        else
                            local c = DetectBlock2()
                            repeat task.wait()
                                if plr:DistanceFromCharacter(c.Position) > 10 then 
                                    plr.Character.HumanoidRootPart.CFrame = c.CFrame *CFrame.new(0,4,0)
                                else
                                    local args = {
                                        [1] = "AdvancedDigsite",
                                        [2] = "DigBlock",
                                        [3] = c:GetAttribute("Coord")
                                    }
                                    game:GetService("ReplicatedStorage").Network.Instancing_FireCustomFromClient:FireServer(unpack(args))
                                end
                            until not c or not c.Parent or not _G.on or DetectChest()
                        end
                    end
                end
            else
                TeleportMid = true 
                plr.Character.HumanoidRootPart.CFrame = game.workspace.__THINGS.Instances.AdvancedDigsite.Teleports.Enter.CFrame
                wait(10)
            end
        end)
    end
end)
spawn(function()
    while _G.on and  wait() do 
        pcall(function()
            for i,v in next,workspace.__THINGS.Orbs:GetChildren() do 
                if v:GetAttribute("OrbUID") then 
                    getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Game["Orbs Frontend"]).collect(v.Name)
                end
            end
            if not game.Workspace:FindFirstChild("IgnoredWhiteScreen") then
                local Ignored = Instance.new("IntValue", game.Workspace)
                Ignored.Name = "IgnoredWhiteScreen"
                local RunService = game:GetService("RunService")
                RunService:Set3dRenderingEnabled(false)
            end
        end)
    end
end)





spawn(function()
    repeat wait() until game.workspace.__THINGS.__INSTANCE_CONTAINER.Active:FindFirstChild("AdvancedDigsite")
    wait(5)
    local Workspace = game:GetService("Workspace")
    local Terrain = Workspace:WaitForChild("Terrain")
    Terrain.WaterReflectance = 0
    Terrain.WaterTransparency = 1
    Terrain.WaterWaveSize = 0
    Terrain.WaterWaveSpeed = 0
    
    local Lighting = game:GetService("Lighting")
    Lighting.Brightness = 0
    Lighting.GlobalShadows = false
    Lighting.FogEnd = 9e100
    Lighting.FogStart = 0
    
    sethiddenproperty(Lighting, "Technology", 2)
    sethiddenproperty(Terrain, "Decoration", false)
    
    local function clearTextures(v)
        if v:IsA("BasePart") and not v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
        elseif (v:IsA("Decal") or v:IsA("Texture")) then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
            v.Enabled = false
        elseif v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
            v.TextureID = 10385902758728957
        elseif v:IsA("SpecialMesh")  then
            v.TextureId = 0
        elseif v:IsA("ShirtGraphic") then
            v.Graphic = 1
        elseif (v:IsA("Shirt") or v:IsA("Pants")) then
            v[v.ClassName .. "Template"] = 1
        elseif v.Name == "Foilage" and v:IsA("Folder") then
            v:Destroy()
        elseif string.find(v.Name, "Tree") or string.find(v.Name, "Water") or string.find(v.Name, "Bush") or string.find(v.Name, "grass") then
            task.wait()
            v:Destroy()
        end
    end
    
    game:GetService("Lighting"):ClearAllChildren()
    for _, v in pairs(Workspace:GetDescendants()) do
        clearTextures(v) 
        if v:IsA("Part") or v:IsA("Decal") and  v.Transparency == 0 then 
            v.Transparency = 1
        end
    end
    Workspace.DescendantAdded:Connect(function(v)
        clearTextures(v)
        if v.Name == "RewardV2" then 
            v.Enabled = false
        end
        if v:IsA("Part") or v:IsA("Decal") or v:IsA("MeshPart") or v:IsA("BasePart") and  v.Transparency == 0 then 
            v.Transparency = 1
        end
    end)
    wait(1)
    workspace.__THINGS.__INSTANCE_CONTAINER.Active.AdvancedDigsite.Map:Destroy()
    wait(1)
    workspace.ALWAYS_RENDERING:Destroy()
end)
