repeat wait() until game:IsLoaded()
repeat wait() until game.Players.LocalPlayer
local plr = game.Players.LocalPlayer
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
local plr = game.Players.LocalPlayer

function DetectIdItem(z,x)
    local SaveModule = require(game.ReplicatedStorage.Library.Client.Save)
    for i,v in SaveModule.GetSaves()[plr].Inventory.Misc do 
        if v.id == z  then 
            return i 
        end
    end
end



function DetectBoothPlayer()
    local Name = plr.DisplayName
    if not Name then 
        Name = plr.Name 
    end
    for i,v in next,game.workspace.__THINGS.Booths:GetChildren() do 
        if v:IsA("Model") and v.Info.BoothBottom.Frame.Top.Text == Name.."'s Booth!" then 
            return v 
        end
    end
end
spawn(function()
    while wait() do
        pcall(function()
            local IDitem = DetectIdItem(getgenv().NameItem)
            if game.PlaceId == 15502339080 then 
                if IDitem and  DetectBoothPlayer() then 
                    if not  DetectBoothPlayer().Pets.BoothTop.PetScroll:FindFirstChildWhichIsA("Frame") then 
                        local args = {
                            [1] = IDitem,
                            [2] = getgenv().giasell,
                            [3] = getgenv().soluong
                        }
                        
                        game:GetService("ReplicatedStorage").Network.Booths_CreateListing:InvokeServer(unpack(args))
                    end
                elseif not DetectBoothPlayer() then 
                    local a = game.workspace.TradingPlaza.BoothSpawns:FindFirstChildWhichIsA("Model")
                    local b = a:FindFirstChildWhichIsA("Part")
                    if plr:DistanceFromCharacter(b.Position) < 10 then 
                        local args = {
                            [1] = tostring(a:GetAttribute("ID"))
                        }
                        
                        game:GetService("ReplicatedStorage").Network.Booths_ClaimBooth:InvokeServer(unpack(args))
                    else
                        plr.Character.HumanoidRootPart.CFrame = b.CFrame
                    end
                end
            else
                game:GetService("ReplicatedStorage").Network["Travel to Trading Plaza"]:InvokeServer()
                wait(10)
            end
        end)
    end
end)
