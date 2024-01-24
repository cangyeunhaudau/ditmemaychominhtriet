function CFrameQuest()
    getgenv().QuestPoses = {}
    for i, v in pairs(getnilinstances()) do 
        if v:IsA("Model")
        and v:FindFirstChild("Head")
        and v.Head:FindFirstChild("QuestBBG")
        and v.Head.QuestBBG.Title.Text == "QUEST" then
            getgenv().QuestPoses[v.Name] = v.Head.CFrame * CFrame.new(0, -2, 2)    
        end
    end
    
    for i, v in pairs(game.Workspace.NPCs:GetDescendants()) do 
        if v.Name == "QuestBBG"
        and v.Title.Text == "QUEST" then
            getgenv().QuestPoses[v.Parent.Parent.Name] = v.Parent.Parent.Head.CFrame * CFrame.new(0, -2, 2)    
        end
    end
    local tab = {}
    local rr = require(game:GetService("ReplicatedStorage").DialoguesList)
    local store = {}
    for k, v in pairs(rr) do
        store[v] = k
    end
    
    for k, v in pairs(getgc(true)) do
        if type(v) == "table" then
            pcall(
                function()
                    if v.Name and v.GetDialogue then
                        if QuestPoses[v.Name] then
                            local Dia = v.GetDialogue()
                            tab[store[Dia]] = v.Name
                        end
                    end
                end
            )
        end
    end
    getgenv().questpoint = {}
    for k, v in pairs(tab) do
        getgenv().questpoint[k] = QuestPoses[v]
    end
    getgenv().questpoint["SkyExp1Quest"] = CFrame.new(-7857.28516, 5544.34033, -382.321503, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
end
return CFrameQuest()
