function DetectMob(c)
    local dist = math.huge
    local name
    local namegsub 
    local nametable = {}
    if typeof(c) == "table" then 
        for i,v in next ,c do 
            local namezz = v:gsub(" %pLv. %d+%p", "")
            table.insert(nametable,namezz)
        end 
    else
        namegsub = c:gsub(" %pLv. %d+%p", "")    
    end
    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
        local stringgsub = v.Name:gsub(" %pLv. %d+%p", "")
        if  ((typeof(c) == "table" and (table.find(c, v.Name) or table.find(c, stringgsub) or table.find(nametable, stringgsub) )) or (v.Name == c or c == stringgsub or v.Name == namegsub)) and v:IsA('Model') and IsMobAlive(v) then
            local magnitude = (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude
            if magnitude < dist then
                dist = magnitude
                name = v
            end
        end
    end
    return name
end
for i,v in next,DetectMob("Isle Outlaw").Head:GetChildren() do 
	print(i,v)
end
