
if game.Players.LocalPlayer.Name == "zZLTHZz14"  then 
    getgenv().Key = "2661052961d391e3"
end
local antispy = loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/aws2.lua"))()
local typescript = antispy --// neu typescript = 1 thi bon no co the dung key free neu gia tri khac thi paid
local URL = 'https://banana-hub.xyz'
local REQ = (syn and syn.request) or (identifyexecutor() == 'Fluxus' and request) or http_request or http.request or requests
local HttpService = game:GetService("HttpService")
local KeySecure = 2644750580154893

local custom_sqrt = function(x)
    return x^(1/2)
end

local is_prime = function(n)
    if n == 2 or n == 3 then
        return true
    end

    if n == 1 or n % 2 == 0 then
        return false
    end

    for i = 3, custom_sqrt(n), 2 do
        if n % i == 0 then
            return false
        end
    end

    return true
end

local genPrimes = function()
    local p = Random.new():NextNumber(100, 9999)
    return p
end

local custom_floor = function(x)
    return x - x % 1
end

local mod = function(a, b, m)
    local result = 1

    while b > 0 do
        if b % 2 == 1 then
            result = (result * a) % m
        end

        a = (a * a) % m
        b = custom_floor(b / 2)
    end

    return result
end

local tablefind = function(x, z)
    for i, v in next, x do
        if (v == z) then
            return true
        end
    end
    return false
end

spawn(function()
    local start = os.time()
    task.wait(2.2)
    if os.time() - start < .3 then
        warn('Error: Freeze OT')
        return
    end
    local q = Random.new():NextNumber(100, 9999)
    local p = Random.new():NextNumber(100, 9999)
    if q == p then
        warn('Error: Loop Rand')
        return
    end
end)

local RandomString = function()
    local out = ""
    for i=1,5 do
        out = out..(string.sub(tostring({}),18, math.random(-5,-2)))
    end
    return out
end

local split = function(str, sep)
    local result = {}
    local regex = ("([^%s]+)"):format(sep)
    for each in str:gmatch(regex) do
        table.insert(result, each)
    end
    return result
end

local requests = function(urls)
    local c = 0
    local mt = setmetatable({}, {__index = function(Self, ...)
        local jp = {...}
        table.foreach(jp, print)
        if tablefind(jp, "Url") then
            c = c + 1
            if c ~= 1 then
                print('a')
                --while true do end
                return
            end
        end
        --[[if tablefind(jp, "Method") then
            return 'GET'
        end]]--
        return {
        	Url = urls,
        	Method = 'GET'
        }
    end})
    local stcheck = tick()
    local data
    local s, e = pcall(function()
        data = REQ({
        	Url = urls,
        	Method = 'GET'
        })
        if data.StatusCode ~= 200 then
            --while true do end
            return
        end

        if not data.Success then
            --while true do end
            return
        end

        if not data.Headers then
            --while true do end
            return
        end
    end)
    if not s then
        --while true do end
        return
    end
    if s and tick() - stcheck < 0.001 then
        --while true do end
        return
    end
    return data
end

local function custom_string_char(...)
    local byte_list = {...}
    local char_list = {}
    for _, byte in ipairs(byte_list) do
        table.insert(char_list, string.format("%c", byte))
    end
    return table.concat(char_list)
end

local function sub(str, start, finish)
    local result = ""
    for i = start, finish do
        result = result .. custom_string_char(string.byte(str, i))
    end
    return result
end

local function tohex(num)
    local hexstr = '0123456789abcdef'
    local s = ''
    while num > 0 do
        local mod = math.fmod(num, 16) + 1
        num = math.floor(num / 16)
        s = sub(hexstr, mod, mod) .. s
    end
    if s == '' then 
        s = '00' 
    end
    if #s % 2 == 1 then
        s = '0' .. s
    end
    return s
end

local function encode(str, key)
    if not inv256 then
    inv256 = {}
    for M = 0, 127 do
        local inv = -1
        repeat inv = inv + 2
        until inv * (2*M + 1) % 256 == 1
        inv256[M] = inv
    end
    end
    local K, F = KeySecure, 16384 + key
    return (str:gsub('.',
    function(m)
        local L = K % 274877906944
        local H = (K - L) / 274877906944
        local M = H % 128
        m = m:byte()
        local c = (m * inv256[M] - (H - M) / 128) % 256
        K = L * F + H + c + m
        return tohex(c)
    end
    ))
end

local function LS_NUMENC(...) return ... end;

local Char = string.char;
local charTBL = table.create(255);

for i=0,255 do
    local char = Char(i);
    charTBL[i] = char;
    charTBL[char] = i;
end;
  
local function decodeString(str) 
    local Pos, Finished = 1, "";
    while Pos <= #str do
        local Len = string.sub(str, Pos, Pos);
        local Byte = string.sub(str, Pos+1, Pos+Len);
        Finished = Finished .. charTBL[Byte-LS_NUMENC(87)];
        Pos = Pos + 1 + Len;
    end;
    return Finished;
end;

local json = {} local function b(c) if type(c) ~= "table" then return type(c) end local d = 1 for e in pairs(c) do if c[d] ~= nil then d = d + 1 else return "table" end end if d == 1 then return "table" else return "array" end end local function f(g) local h = {"\\", '"', "/", "\b", "\f", "\n", "\r", "\t"} local i = {"\\", '"', "/", "b", "f", "n", "r", "t"} for d, j in ipairs(h) do g = g:gsub(j, "\\" .. i[d]) end return g end local function k(l, m, n, o) m = m + #l:match("^%s*", m) if l:sub(m, m) ~= n then if o then error("Expected " .. n .. " near position " .. m) end return m, false end return m + 1, true end local function p(l, m, q) q = q or "" local r = "End of input found while parsing string." if m > #l then error(r) end local j = l:sub(m, m) if j == '"' then return q, m + 1 end if j ~= "\\" then return p(l, m + 1, q .. j) end local s = {b = "\b", f = "\f", n = "\n", r = "\r", t = "\t"} local t = l:sub(m + 1, m + 1) if not t then error(r) end return p(l, m + 2, q .. (s[t] or t)) end local function u(l, m) local v = l:match("^-?%d+%.?%d*[eE]?[+-]?%d*", m) local q = tonumber(v) if not q then error("Error parsing number at position " .. m .. ".") end return q, m + #v end function json.encode(c, w) local g = {} local x = b(c) if x == "array" then if w then error("Can't encode array as key.") end g[#g + 1] = "[" for d, q in ipairs(c) do if d > 1 then g[#g + 1] = ", " end g[#g + 1] = json.encode(q) end g[#g + 1] = "]" elseif x == "table" then if w then error("Can't encode table as key.") end g[#g + 1] = "{" for y, z in pairs(c) do if #g > 1 then g[#g + 1] = ", " end g[#g + 1] = json.encode(y, true) g[#g + 1] = ":" g[#g + 1] = json.encode(z) end g[#g + 1] = "}" elseif x == "string" then return '"' .. f(c) .. '"' elseif x == "number" then if w then return '"' .. tostring(c) .. '"' end return tostring(c) elseif x == "boolean" then return tostring(c) elseif x == "nil" then return "null" else error("Unjsonifiable type: " .. x .. ".") end return table.concat(g) end json.null = {} function json.decode(l, m, A) m = m or 1 if m > #l then error("Reached unexpected end of input.") end local m = m + #l:match("^%s*", m) local B = l:sub(m, m) if B == "{" then local c, C, D = {}, true, true m = m + 1 while true do C, m = json.decode(l, m, "}") if C == nil then return c end if not D then error("Comma missing between object items.") end m = k(l, m, ":", true) c[C], m = json.decode(l, m) m, D = k(l, m, ",") end elseif B == "[" then local E, q, D = {}, true, true m = m + 1 while true do q, m = json.decode(l, m, "]") if q == nil then return E, m end if not D then error("Comma missing between array items.") end E[#E + 1] = q m, D = k(l, m, ",") end elseif B == '"' then return p(l, m + 1) elseif B == "-" or B:match("%d") then return u(l, m) elseif B == A then return nil, m + 1 else local F = {["true"] = true, ["false"] = false, ["null"] = json.null} for G, H in pairs(F) do local I = m + #G - 1 if l:sub(m, I) == G then return H, I + 1 end end local J = "position " .. m .. ": " .. l:sub(m, m + 10) error("Invalid json syntax starting at " .. J) end end

local  whitelistsuccess = false
local function checkingwl(KEY)
    print(KEY)
    print('[Whitelist#1]: checking...')
    local publicKEY1 = 3547
    local publicKEY2 = 73387
    local FakeOT = os.time()
    local ServerTime = math.floor(tonumber(game:HttpGet(URL..'/stime')) / 1000)
    print('[Whitelist#1]: create key diffie-hellman')
    local PrivateKeyClient = genPrimes()
    print('[Whitelist#1]: hash key diffie-hellman')
    local PublicKeyClient = mod(publicKEY1, PrivateKeyClient, publicKEY2)

    local Success, Hwid = pcall(requests, URL..'/header')
    local HwidDecode = json.decode(Hwid.Body)
    local HwidUser = HwidDecode['syn-fingerprint'] or HwidDecode['flux-fingerprint'] or HwidDecode['krnl-fingerprint'] or HwidDecode['sw-fingerprint'] or HwidDecode['electronid'] or HwidDecode['oxy-fingerprint'] or HwidDecode['delta-fingerprint'] or HwidDecode['Delta-Fingerprint'] or HwidDecode['sirhurt-fingerprint']
    local Rand = RandomString()
    local Sign = encode(HwidUser, PublicKeyClient)

    local Success, Respone = pcall(requests, URL.."/auth?key="..KEY.."&nonce="..Rand.."&sign="..Sign.."&id="..PublicKeyClient.."&type="..typescript)
    if Respone.Body:find('key ur expired') then

            game.Players.LocalPlayer:Kick("Banana Hub|Invalid Key or Key Expired")
        return
    end
    if Respone.Body == 'Invalid Key' then
        game.Players.LocalPlayer:Kick("Banana Hub|Invalid Key or Key Expired")
        return
    end
        
    if Respone.Body == HwidUser then
        game.Players.LocalPlayer:Kick("Banana Hub|Invalid Hwid!")
        return
    end
    if Respone.Body == 'retry again!' then
        game.Players.LocalPlayer:Kick("Banana Hub|Invalid Signature!")
        return
    end
    local Data
    local s, e = pcall(function()
        Data = split(Respone.Body, '-')
    end)
    print('[Whitelist#1]: check key diffie-hellman')
    local SecureKeyPrivate = mod(Data[2], PrivateKeyClient, publicKEY2)
    if SecureKeyPrivate..HwidUser..'-'..Data[2] ~= decodeString(tostring(Data[1]))..'-'..Data[2] then
        game.Players.LocalPlayer:Kick("Banana Hub|Invalid Signature!")
        return
    end
    print('[Whitelist#1]: check response')
    if decodeString(tostring(Data[1])) == SecureKeyPrivate..HwidUser then 
        print('whitelist success')
        whitelistsuccess = true
    end
end

if not getgenv().Key or getgenv().Key == "" then
    game.Players.LocalPlayer:Kick("Input Key Please")
else
    checkingwl(getgenv().Key)
end
repeat task.wait() until whitelistsuccess
----------------------------
local Settings = {}
local HttpService = game:GetService("HttpService")
local FolderName = "Banana Hub"
local SaveFileNameGame = "-BFNew.json"
local SaveFileName = game.Players.LocalPlayer.Name..SaveFileNameGame
local SettingHopServer = {}
local DefaultSettingHopServer = {}
function SaveSettings(fff,fff2)
    if fff~=nil  then
        Settings[fff] = fff2
    end
    HttpService = game:GetService("HttpService")
    if not isfolder(FolderName) then
        makefolder(FolderName)
    end
    writefile(FolderName.."/" .. SaveFileName, HttpService:JSONEncode(Settings))
end

function ReadSetting()
    local s,e = pcall(function()
        HttpService = game:GetService("HttpService")
        if not isfolder(FolderName) then
            makefolder(FolderName)
        end
        return HttpService:JSONDecode(readfile(FolderName.."/" .. SaveFileName))
    end)
    if s then return e
    else
        SaveSettings()
        return ReadSetting()
    end
end
Settings = ReadSetting()
--------------------------------------------
repeat wait()
    pcall(function()
        if Settings["Select Team"] == "Pirate"  then
            for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated)) do
                v.Function()
            end
        else
            for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.TextButton.Activated)) do
                v.Function()
            end
        end
    end)
until game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") and   not  game:GetService("Players").LocalPlayer.PlayerGui.Main:WaitForChild("ChooseTeam").Visible or not game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")
local plr = game.Players.LocalPlayer
local CommF = game.ReplicatedStorage.Remotes["CommF_"]
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local Window = Fluent:CreateWindow({
    Title = "Banana Hub-Blox Fruit [Beta]",
    SubTitle = "by Obii",
    TabWidth = 160,
    Size = UDim2.fromOffset(600, 340),
    Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local Tabs = {
    ShopMain = Window:AddTab({ Title = "Tab Shop", Icon = "" }),
    
    FarmMain = Window:AddTab({ Title = "Tab Farm", Icon = "" }),
    MiscMain  = Window:AddTab({ Title = "Tab Misc", Icon = "" }),
    FarmOtherMain = Window:AddTab({ Title = "Tab Material And Mob", Icon = "" }),
    SeabeastTab = Window:AddTab({ Title = "Tab Sea Event", Icon = "" }),
    DFRaidMain  = Window:AddTab({ Title = "Tab Raid And DF", Icon = "" }),
    RaceMain  = Window:AddTab({ Title = "Tab Race", Icon = "" }),
    StatusSvMain  = Window:AddTab({ Title = "Tab Status And Server", Icon = "" }),
    ItemsMain = Window:AddTab({ Title = "Tab Items", Icon = "" }),
    LocalPlayerMain = Window:AddTab({ Title = "Tab Local Player", Icon = "" }),
    PvpTab = Window:AddTab({ Title = "Tab PVP", Icon = "" }),

}

-----Hop Server -----
if not pcall(function() readfile(FolderName.."/" .. "Jobid.json") end) then
    writefile(FolderName.."/" .. "Jobid.json", game:GetService("HttpService"):JSONEncode(DefaultSettingHopServer))
end
function CheckJobIdServer()
    local mmb = {}
    for i,v in next,game:GetService("HttpService"):JSONDecode(readfile(FolderName.."/" .. "Jobid.json")) do
        table.insert(mmb,i) 
    end
    return mmb 
end
function HopServer()
    local function Hop()
        for i=1,100 do
            local huhu = game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(i)
            for k,v in pairs(huhu) do
                if v.Count >= 10 and k ~= game.JobId and not table.find(CheckJobIdServer(),k) then
                    game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport",k)
                    writefile(FolderName.."/" .. "Jobid.json", game:GetService("HttpService"):JSONEncode(SettingHopServer))
                end
            end
        end
    end
    local v14 = require(game:GetService("ReplicatedStorage").Notification)
    v14.new("<Color=Red>Banana Hub : Wait 5s[Hop Server]<Color=/>"):Display()
    while wait(5) do
        local v14 = require(game:GetService("ReplicatedStorage").Notification)
        v14.new("<Color=Red>Banana Hub : Hop Server<Color=/>"):Display()
        Hop()
    end
end
SettingHopServer = HttpService:JSONDecode(readfile(FolderName.."/" .. "Jobid.json"))
SettingHopServer[game.JobId] = true
-------
getgenv().Options = Fluent.Options
Tabs.ShopMain:AddButton({
    Title = "Redeem Code",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("SUB2GAMERROBOT_EXP1")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("StrawHatMaine")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("Sub2OfficialNoobie")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("THEGREATACE")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("SUB2NOOBMASTER123")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("Sub2Daigrock")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("Axiore")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("TantaiGaming")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("Bluxxy")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("STRAWHATMAINE")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("3BVISITS")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("UPD16")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("Sub2Fer999")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("Enyu_is_Pro")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("JCWK")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("StarcodeHEO")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("MagicBUS")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("KittGaming")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("Sub2CaptainMaui")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("EXP_5B")
    end
})
Tabs.ShopMain:AddButton({
    Title = "Teleport Old World",
    Description = "",
    Callback = function()
        local args = {
            [1] = "TravelMain" -- OLD WORLD to NEW WORLD
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})
Tabs.ShopMain:AddButton({
    Title = "Teleport New World",
    Description = "",
    Callback = function()
        local args = {
            [1] = "TravelDressrosa" -- OLD WORLD to NEW WORLD
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})
Tabs.ShopMain:AddButton({
    Title = "Teleport Third Sea",
    Description = "",
    Callback = function()
        local args = {
            [1] = "TravelZou" -- OLD WORLD to NEW WORLD
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})
Tabs.ShopMain:AddParagraph({
    Title = "",
    Content = "Fighting Shop",
})
function Remote(x, v, c)
    if not x and c then
        game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer(v, true)
    else
        game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer(x, v, c)
    end
end
Tabs.ShopMain:AddButton({
    Title = "Black Leg",
    Description = "",
    Callback = function()
        Remote('BuyBlackLeg', true)
        Remote('BuyBlackLeg')
    end
})
Tabs.ShopMain:AddButton({
    Title = "Fishman Karate",
    Description = "",
    Callback = function()
        Remote('BuyFishmanKarate', true)
        Remote('BuyFishmanKarate')
    end
})
Tabs.ShopMain:AddButton({
    Title = "Electro",
    Description = "",
    Callback = function()
        Remote('BuyElectro', true)
        Remote('BuyElectro')
    end
})
Tabs.ShopMain:AddButton({
    Title = "Dragon Breath",
    Description = "",
    Callback = function()
        Remote('BuyDragonClaw', true)
        Remote('BuyDragonClaw')
    end
})
Tabs.ShopMain:AddButton({
    Title = "SuperHuman",
    Description = "",
    Callback = function()
        Remote('BuySuperhuman', true)
        Remote('BuySuperhuman')
    end
})
Tabs.ShopMain:AddButton({
    Title = "Death Step",
    Description = "",
    Callback = function()
        Remote('BuyDeathStep', true)
        Remote('BuyDeathStep')
    end
})
Tabs.ShopMain:AddButton({
    Title = "Sharkman Karate",
    Description = "",
    Callback = function()
        Remote('BuySharkmanKarate', true)
        Remote('BuySharkmanKarate')
    end
})
Tabs.ShopMain:AddButton({
    Title = "Electric Claw",
    Description = "",
    Callback = function()
        Remote('BuyElectricClaw', true)
        Remote('BuyElectricClaw')
    end
})
Tabs.ShopMain:AddButton({
    Title = "Dragon Talon",
    Description = "",
    Callback = function()
        Remote('BuyDragonTalon', true)
        Remote('BuyDragonTalon')
    end
})
Tabs.ShopMain:AddButton({
    Title = "God Human",
    Description = "",
    Callback = function()
        Remote('BuyGodhuman', true)
        Remote('BuyGodhuman')
    end
})
-- Script generated by SimpleSpy - credits to exx#9394



Tabs.ShopMain:AddButton({
    Title = "Sanguine Art",
    Description = "",
    Callback = function()
        Remote('BuySanguineArt', true)
        Remote('BuySanguineArt')
    end
})
Tabs.ShopMain:AddParagraph({
    Title = "",
    Content = "Abilities Shop",
})
Tabs.ShopMain:AddButton({
    Title = "Skyjump [ $10,000 Beli ]",
    Description = "",
    Callback = function()
        local args = {
            [1] = "BuyHaki",
            [2] = "Geppo"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})
Tabs.ShopMain:AddButton({
    Title = "Buso Haki [ $25,000 Beli ]",
    Description = "",
    Callback = function()
        local args = {
            [1] = "BuyHaki",
            [2] = "Buso"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})
Tabs.ShopMain:AddButton({
    Title = "Observation haki [ $750,000 Beli ]",
    Description = "",
    Callback = function()
        local args = {
            [1] = "KenTalk",
            [2] = "Buy"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})
Tabs.ShopMain:AddButton({
    Title = "Soru [ $100,000 Beli ]",
    Description = "",
    Callback = function()
        local args = {
            [1] = "BuyHaki",
            [2] = "Soru"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})
Tabs.ShopMain:AddParagraph({
    Title = "",
    Content = "Misc Shop",
})
Tabs.ShopMain:AddButton({
    Title = "Reroll Race",
    Description = "",
    Callback = function()
        local args = {
            [1] = "BlackbeardReward",
            [2] = "Reroll",
            [3] = "2"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})
Tabs.ShopMain:AddButton({
    Title = "Reset Stats",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
    end
})
-------LoadString
loadstring([[
    local env = getgenv()
    local olddd
    olddd = hookmetamethod(game, "__index", function(self, key)
        if tostring(key):lower()== 'hit' and env.psskill and (env.Options["Auto Mastery"].Value or env.Options["Auto Sea Event"].Value or env.Options["Auto Trial"].Value or env.Options["Auto Attack Leviathan"].Value) then
            return getgenv().psskill
        end
    return olddd(self, key)
end)]])()
loadstring([[
    local env = getgenv()
    local MT = getrawmetatable(game)
    local OldNameCall = MT.__namecall
    setreadonly(MT, false)
    MT.__namecall = newcclosure(function(self, ...)
    local Method = getnamecallmethod()
    local Args = {...}
    if Method == 'FireServer' and self.Name == 'RemoteEvent' and env.psskill and (env.Options["Auto Mastery"].Value or env.Options["Auto Sea Event"].Value or env.Options["Auto Trial"].Value or env.Options["Auto Attack Leviathan"].Value or env.Options["Auto Aimbot"].Value) then
        if  #Args == 1 and typeof(Args[1]) == "Vector3" then
            Args[1] = getgenv().psskill.Position
        end
        if #Args == 1 and typeof(Args[1]) == "CFrame" then
            Args[1] = getgenv().psskill
        end
    end
    return OldNameCall(self, unpack(Args))
end)
setreadonly(MT, true)]])()
-----------
---- Tab Farm

Tabs.FarmMain:AddDropdown("Select Weapon", {
    Title = "Select Weapon",
    Values = {"Melee", "Sword", "Blox Fruit",},
    Multi = false,
    Default = Settings["Select Weapon"] or "Melee",
    Callback = function(value)
        SaveSettings("Select Weapon",value)
    end
})
Tabs.FarmMain:AddDropdown("Select Speed Attack", {
    Title = "Select Speed Attack",
    Values = {0,0.1, 0.15, 0.175},
    Multi = false,
    Default = Settings["Select Speed Attack"] or 0.15,
    Callback = function(value)
        SaveSettings("Select Speed Attack",value)
    end
})
Tabs.FarmMain:AddToggle("Auto Click", {
    Title = "Auto Click",
    Default = Settings["Auto Click"] or false,
    Callback = function(value)
        SaveSettings("Auto Click",value)
    end
})
Tabs.FarmMain:AddToggle("Auto Buso", {
    Title = "Auto Buso",
    Default = Settings["Auto Buso"] or true,
    Callback = function(value)
        SaveSettings("Auto Buso",value)
    end
})
Tabs.FarmMain:AddToggle("Auto Haki Observation", {
    Title = "Auto Haki Observation",
    Default = Settings["Auto Haki Observation"] or false,
    Callback = function(value)
        SaveSettings("Auto Haki Observation",value)
    end
})
Tabs.FarmMain:AddToggle("Auto Turn On V4", {
    Title = "Auto Turn On  V4",
    Default = Settings["Auto Turn On V4"] or false,
    Callback = function(value)
        SaveSettings("Auto Turn On V4",value)
    end
})
Tabs.FarmMain:AddToggle("Get Quest Farm", {
    Title = "Get Quest Farm [Katakuri Or Bone]",
    Default = Settings["Get Quest Farm [Katakuri Or Bone]"] or false,
    Callback = function(value)
        SaveSettings("Get Quest Farm [Katakuri Or Bone]",value)
    end
})
Tabs.FarmMain:AddToggle("Auto Dodge Skill Mobs", {
    Title = "Auto Dodge Skill Mobs",
    Default = Settings["Auto Dodge Skill Mobs"] or true,
    Callback = function(value)
        SaveSettings("Auto Dodge Skill Mobs",value)
    end
})
Tabs.FarmMain:AddToggle("Teleport Y if low Health", {
    Title = "Teleport Y if low Health",
    Default = Settings["Teleport Y if low Health"] or true,
    Callback = function(value)
        SaveSettings("Teleport Y if low Health",value)
    end
})
Tabs.FarmMain:AddToggle("Bring Mob", {
    Title = "Bring Mob",
    Default = Settings["Bring Mob"] or true,
    Callback = function(value)
        SaveSettings("Bring Mob",value)
    end
})
Tabs.FarmMain:AddToggle("Bring Mob [Fps Low]", {
    Title = "Bring Mob [Fps Low]",
    Default = Settings["Bring Mob [Fps Low]"] or false,
    Callback = function(value)
        SaveSettings("Bring Mob [Fps Low]",value)
    end
})

Tabs.FarmMain:AddParagraph({
    Title = "",
    Content = "Main Farm",
})
Tabs.FarmMain:AddDropdown("Select Method Farm", {
    Title = "Select Method Farm",
    Values = { 'Level Farm', 'Farm Bones', 'Farm Katakuri'},
    Multi = false,
    Default = Settings["Select Method Farm"] or "Level Farm",
    Callback = function(value)
        SaveSettings("Select Method Farm",value)
    end
})
Tabs.FarmMain:AddToggle("Auto Farm", {
    Title = "Auto Farm",
    Default = Settings["Auto Farm"] or false,
    Callback = function(value)
        SaveSettings("Auto Farm",value)
    end
})
Tabs.FarmMain:AddToggle("Auto Quest New World", {
    Title = "Auto Quest New World",
    Default = Settings["Auto Quest New World"] or false,
    Callback = function(value)
        SaveSettings("Auto Quest New World",value)
    end
})
Tabs.FarmMain:AddToggle("Auto Quest Third Sea", {
    Title = "Auto Quest Third Sea",
    Default = Settings["Auto Quest Third Sea"] or false,
    Callback = function(value)
        SaveSettings("Auto Quest Third Sea",value)
    end
})
Tabs.FarmMain:AddParagraph({
    Title = "",
    Content = "Mastery Farm",
})
Tabs.FarmMain:AddDropdown("Select Method Mastery Farm", {
    Title = "Select Method Mastery Farm",
    Values = { 'Blox Fruit', 'Gun'},
    Multi = false,
    Default = Settings["Select Method Mastery Farm"] or "Blox Fruit",
    Callback = function(value)
        SaveSettings("Select Method Mastery Farm",value)
    end
})
Tabs.FarmMain:AddSlider("Health %", {
    Title = "Health %",
    Description = "",
    Default = Settings["Health %"] or 30,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Callback = function(value)
        SaveSettings("Health %",value)
    end
})
Tabs.FarmMain:AddDropdown("Select Skill", {
    Title = "Select Skill",
    Values = {'Z', 'X',"C","V","F"},
    Multi = true,
    Default = Settings["Select Skill"]or {},
    Callback = function(value)
        SaveSettings("Select Skill",value)
    end
})
Tabs.FarmMain:AddToggle("Auto Mastery", {
    Title = "Auto Mastery Farm",
    Default = Settings["Auto Mastery"] or false,
    Callback = function(value)
        SaveSettings("Auto Mastery",value)
    end
})

----- Tween ------------
if game.PlaceId == 7449423635 then 
    TableLocations = {
        ["Caslte On The Sea"] = Vector3.new(-5058.77490234375, 314.5155029296875, -3155.88330078125),
        ["Hydra"] = Vector3.new(5756.83740234375, 610.4240112304688, -253.9253692626953),
        ["Mansion"] = Vector3.new(-12463.8740234375, 374.9144592285156, -7523.77392578125),
        ["Great Tree"] = Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656),
        ["Temple Clock"] = Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586),
    }
elseif game.PlaceId == 2753915549 then
    TableLocations = {
        ["FishmanSea1"] =  game:GetService("Workspace").Map.TeleportSpawn.EntrancePoint.Position,
        ["Island Sky 2"] =   game:GetService("Workspace").Map.SkyArea2.PathwayHouse.EntrancePoint.Position,
        ["Island Sky 1"] = game:GetService("Workspace").Map.SkyArea1.PathwayTemple.ExitPoint.Position,
    }
elseif game.PlaceId == 4442272183 then
    TableLocations = {
        ["GhostShipInterior"] = game:GetService("Workspace").Map.GhostShipInterior.TeleportSpawn.Position
    }
end

local LowHealth = false 
function toTarget(pos, targetPos, targetCFrame,TpInstant)
    if plr.Character:FindFirstChild("HumanoidRootPart") then 
        if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Sit then
            getgenv().noclip = false
            if getgenv().Tween then
                getgenv().Tween:Pause()
                getgenv().Tween:Cancel()
            end
            game.Players.LocalPlayer.Character.Humanoid.Sit = false
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
            plr.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame*CFrame.new(0,10,0)
            return 
        end
        local aaa = Settings["Tween Speed"] or 150
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((targetPos - pos).Magnitude/aaa, Enum.EasingStyle.Quad)
        if game.PlaceId == 7449423635 and  (targetPos-Vector3.new(28609.392578125, 14896.533203125, 106.4216537475586)).Magnitude > 3000 and  (Vector3.new(28609.392578125, 14896.533203125, 106.4216537475586)-plr.Character.HumanoidRootPart.Position).Magnitude <= 3000 then 
            getgenv().Tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart"), TweenInfo.new((Vector3.new(28609.392578125, 14896.533203125, 106.4216537475586) - plr.Character.HumanoidRootPart.Position).Magnitude/aaa, Enum.EasingStyle.Quad), {CFrame = CFrame.new(28609.392578125, 14896.533203125, 106.4216537475586)})
            getgenv().noclip = true
            getgenv().Tween:Play()
            if (Vector3.new(28609.392578125, 14896.533203125, 106.4216537475586)-plr.Character.HumanoidRootPart.Position).Magnitude < 8 then 
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("RaceV4Progress","Check")
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("RaceV4Progress","TeleportBack")
                if getgenv().Tween then
                    getgenv().Tween:Pause()
                    getgenv().Tween:Cancel()
                end
            end
            return
        end

        if Options["Teleport Y if low Health"].Value then 
            if plr.Character.Humanoid.Health / plr.Character.Humanoid.MaxHealth < 40/100 then
                LowHealth = true 
            elseif plr.Character.Humanoid.Health / plr.Character.Humanoid.MaxHealth > 80/100 then 
                LowHealth = false 
            end
            if LowHealth then
                getgenv().Tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart"), info, {CFrame = targetCFrame*CFrame.new(0,500,0)})
                getgenv().noclip = true
                getgenv().Tween:Play()
                return 
            end
        end
        if game.PlaceId == 2753915549 and (targetPos-game:GetService("Workspace").Map.TeleportSpawn.EntrancePoint.Position).Magnitude > 3000 and  (game:GetService("Workspace").Map.TeleportSpawn.EntrancePoint.Position-plr.Character.HumanoidRootPart.Position).Magnitude <= 3000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.6884765625, 6.736950397491455, -1926.214111328125))
            return 
        elseif game.PlaceId == 4442272183 and (targetPos-game:GetService("Workspace").Map.GhostShipInterior.TeleportSpawn.Position).Magnitude > 3000 and  (game:GetService("Workspace").Map.GhostShipInterior.TeleportSpawn.Position-plr.Character.HumanoidRootPart.Position).Magnitude <= 3000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",game:GetService("Workspace").Map.GhostShip.TeleportSpawn.Position)
            return 
        end
        if TableLocations then
            for i,v2 in pairs(TableLocations) do
                if  (targetPos-v2).Magnitude <= 3000 and  (targetPos-plr.Character.HumanoidRootPart.Position).Magnitude >= 3000 then
                    getgenv().noclip = true
                    if getgenv().Tween then
                        getgenv().Tween:Pause()
                        getgenv().Tween:Cancel()
                    end
                    args = {
                        "requestEntrance",
                        v2,
                    }
                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(args))
                    return 
                end
            end
        end
        if game.PlaceId == 7449423635 and (Vector3.new(-1990.672607421875, 4532.9755859375, -14973.6748046875)-targetPos).Magnitude <= 1000 
        and (Vector3.new(-1990.672607421875, 4532.9755859375, -14973.6748046875)-plr.Character.HumanoidRootPart.Position).Magnitude > 1000 then
            getgenv().Tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart"), TweenInfo.new((workspace.Map.CakeLoaf.BigMirror.Main.Position - plr.Character.HumanoidRootPart.Position).Magnitude/aaa, Enum.EasingStyle.Quad), {CFrame = workspace.Map.CakeLoaf.BigMirror.Main.CFrame})
            getgenv().noclip = true
            getgenv().Tween:Play()
            return 
        end
        if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and plr.Character.Humanoid.Health > 0 then
            if (targetPos-pos).Magnitude <= 200  and not TpInstant then
                if getgenv().Tween then
                    getgenv().Tween:Pause()
                    getgenv().Tween:Cancel()
                end
                getgenv().noclip = true
                local CFrameDodge = CFrame.new(0,0,0)
                if ReadyToDodge then 
                    CFrameDodge = CFrame.new(0,100,0)
                end
                plr.Character.HumanoidRootPart.CFrame = targetCFrame*CFrameDodge
            else
                local a = Vector3.new(0,plr.Character:FindFirstChild("HumanoidRootPart").Position.Y,0) 
                local b = Vector3.new(0,game:GetService("Workspace").Map["WaterBase-Plane"].Position.Y,0)
                if (a-b).Magnitude <= 60 then
                    plr.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame*CFrame.new(0,20,0)
                end
                getgenv().Tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart"), info, {CFrame = targetCFrame})
                getgenv().noclip = true
                getgenv().Tween:Play()
            end
        end
    end
end
game:GetService("RunService").RenderStepped:connect(function()
    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
end)
function ToggleNoclip()
    if Options["Auto Farm"].Value 
    or  Options["Auto Chest"].Value
    or Options["Teleport Safe if have Items"].Value
    or  Options["Auto Raid Castle"].Value
    or Options["Auto Factory"].Value
    or Options["Auto Elite Hunter"].Value
    or Options["Kill Rip Indra"].Value
    or Options["Summon Rip Indra"].Value
    or Options["Auto Dough King"].Value
    or Options["Kill DarkBeard"].Value
    or Options["Summon DarkBeard"].Value
    or Options["Auto Sea Event"].Value
    or Options["Auto Quest New World"].Value
    or Options["Teleport To Fruit"].Value
    or Options["Auto Raid"].Value
    or Options["Auto Upgrade Race V2-V3"].Value
    or Options["Auto Pull Lever"].Value
    or Options["Auto Kill Player When complete Trial"].Value
    or Options["Auto Trial"].Value
    or getgenv().NoclipButton
    or Options["Auto CDK"].Value
    or Options["Auto Soul Guitar"].Value
    or Options["Teleport Island"].Value
    or Options["Auto Mob Farm"].Value
    or Options["Auto Material"].Value
    or Options["Teleport Player"].Value
    or Options["Auto Attack Leviathan"].Value
    or Options["Auto Tushita"].Value
    or Options["Auto Yama"].Value
    or Options["Auto Upgrade Sword Inventory"].Value
    or Options["Auto Kill Boss"].Value
    or Options["Farm Observation"].Value
    or Options["Auto Kill All Boss"].Value
    or Options["Teleport Mirage"].Value then
        return true 
    end
end
function isnetworkowner2(p1)
    for i,v in next,game.Workspace.Characters:GetChildren() do 
        if v.Name ~= plr.Name and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position-p1.Position).Magnitude <= 300 then 
            return false 
        end
    end
    return true
end
function isnetworkowner(p1)
    local A = gethiddenproperty(plr,"SimulationRadius")
    local B = plr.Character or Wait(plr.CharacterAdded)
    local C = game.WaitForChild(B, "HumanoidRootPart", 300)
    if C then
        if p1.Anchored then
            return false
        end
        if game.IsDescendantOf(p1, B) or (C.Position - p1.Position).Magnitude <= A then
            return true
        end
    end
    return false
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
    if getgenv().noclip and ToggleNoclip() then
        if plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character:FindFirstChild("Humanoid") then
            for i,v in next,plr.Character:GetDescendants() do 
                if (v:IsA("Part") or v:IsA("MeshPart")) and  v.CanCollide then 
                    v.CanCollide = false 
                end
            end
        end
    end
end)
game:GetService('RunService').Stepped:connect(function()
    pcall(function()
        if getgenv().noclip and ToggleNoclip() then
            if plr.Character:FindFirstChild("Humanoid") and plr.Character.Humanoid.Health ~= 0 then
                spawn(function()
                    CreateTweenFloat()
                end)
            end
        end
        spawn(function()
            pcall(function()
                if not ToggleNoclip() then
                    if plr.Character.HumanoidRootPart:FindFirstChild("EffectsSY") then
                        plr.Character.HumanoidRootPart.EffectsSY:Destroy()
                    end
                end
            end)
        end)
    end)
end)
----------------------

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

    local kiet = getscriptclosure(game:GetService("Players").LocalPlayer.PlayerScripts.NPC)

    local listremote = {}
    for k,v in pairs(debug.getprotos(kiet)) do 
        if #debug.getconstants(v)==1 then 
            table.insert(listremote, debug.getconstant(v,1))    
        end 
    end
    local start=false
    local listtvk = {}
    for k,v in pairs(debug.getconstants(kiet)) do
        if type(v) == "string" then 
            if v == "Players" then 
                start = false
            end
            if not start then 
                if v == "Blox Fruit Dealer" then 
                    start = true    
                end  
            else
            end
            if start then 
                table.insert(listtvk,v)    
            end
        end   
    end
    local questpoint1 = {}
    getgenv().questpoint = {}

    for k,v in pairs(listtvk) do 
        if QuestPoses[v] then 
            questpoint1[listremote[k]]=listtvk[k]    
        end
    end

    for i,v in next, questpoint1 do
        getgenv().questpoint[i] = QuestPoses[v]
    end
    getgenv().questpoint["SkyExp1Quest"] = CFrame.new(-7857.28516, 5544.34033, -382.321503, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
end
CFrameQuest()
local UselessQuest = {
    "BartiloQuest",
    "Trainees",
    "MarineQuest",
    "CitizenQuest"
}
local MobsList = {}
getgenv().mob = ''
getgenv().mobv = ""
local Quest = require(game.ReplicatedStorage.Quests)
local function checkquest()
    local lvlPl = plr.Data.Level.Value
    local min = 0
    if lvlPl >= 1450 and game.PlaceId == 4442272183 then 
        getgenv().mobv = "Water Fighter"
        getgenv().mobvv = "ForgottenQuest"
        getgenv().mobvvv = 2
    elseif lvlPl >= 700 and game.PlaceId == 2753915549 then
        getgenv().mobv = "Galley Captain"
        getgenv().mobvv = "FountainQuest"
        getgenv().mobvvv = 2
    else
        for i,v in pairs(Quest) do
            for i1,v1 in pairs(v) do
                local lvlreq = v1.LevelReq
                for i2,v2 in pairs(v1.Task) do
                    if lvlPl >= lvlreq and lvlreq >= min and v1.Task[i2] > 1 and not table.find(UselessQuest, tostring(i)) then
                        min = lvlreq
                        getgenv().mobv = tostring(i2)
                        getgenv().mobvv = i
                        getgenv().mobvvv = i1
                    end
                end
            end
        end
    end
end
function checkdoublquest()
    local a = {}
    for i,v in pairs(Quest) do
        for i1,v1 in pairs(v) do
            local lvlreq = v1.LevelReq
            for i2,v2 in pairs(v1.Task) do
                if i2 == getgenv().mobv then
                    for i3,v3 in next,v do
                        if v3.LevelReq <= game.Players.LocalPlayer.Data.Level.Value and v3.Name ~= "Town Raid" then
                            for i4,v4 in next,v3.Task do
                                if v4 > 1 then
                                    table.insert(a,i4)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    return a 
end
local v17 = require(game.ReplicatedStorage:WaitForChild("GuideModule"));
function checkquestdata()
    for i,v in next,v17.Data do
        if i == "QuestData" then
            return true
        end
    end
    return false
end
function checknamedoublquest()
    local a 
    if checkquestdata() then
        for i,v in next,v17.Data.QuestData.Task do
            a = i 
        end
    end
    return a 
end
function doublequestdeptrai()
    checkquest()
    local aa = {}
    if  checkquestdata() and  checknamedoublquest() == getgenv().mobv  and #checkdoublquest() >= 2 then
        for i,v in pairs(Quest) do
            for i1,v1 in pairs(v) do
                for i2,v2 in pairs(v1.Task) do
                    if tostring(i2) == getgenv().mobv then
                        for quest1,quest2 in next,v do
                            for quest3,quest4 in next,quest2.Task do
                                if  quest3 ~= getgenv().mobv and quest4 > 1 then
                                    aa["Name"] = tostring(quest3)
                                    aa["NameQuest"] = i
                                    aa["ID"] = quest1
                                    return aa
                                end
                            end
                        end
                    end
                end
            end
        end
    else
        aa["Name"] = getgenv().mobv
        aa["NameQuest"] = getgenv().mobvv
        aa["ID"] = getgenv().mobvvv
        return aa
    end
end
function teleportquestdeptrai(i)
    local Path = getgenv().questpoint[tostring(i)]
    toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,Path.Position,Path*CFrame.new(0,4,2),true)
end
function getquest()
    if not getgenv().questpoint[tostring(doublequestdeptrai().NameQuest)] then
        CFrameQuest()
        return 
    end
    if (getgenv().questpoint[tostring(doublequestdeptrai().NameQuest)].Position-plr.Character.HumanoidRootPart.Position).magnitude <= 8 then
        if plr.Character.Humanoid.Health > 0 then 
            CommF:InvokeServer("StartQuest", tostring(doublequestdeptrai().NameQuest), doublequestdeptrai().ID)
        end
    else
        teleportquestdeptrai(doublequestdeptrai().NameQuest)
    end
end



function getcenter(name)
    local count = 0
    local vec
    if string.find(name,"Lv.") then 
        name1 = name:gsub(" %pLv. %d+%p", "")
    end
    for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
        local stringgsub
        if string.find(v.Name, "Lv.") then 
            stringgsub = v.Name:gsub(" %pLv. %d+%p", "")
        end
        if v:IsA("Part") and ((stringgsub and stringgsub == name) or name == v.Name or (name1 and v.Name == name1))  then  
            if vec == nil then
                vec = v.Position
                count = count + 1
            else
                vec = vec + v.Position
                count = count + 1
            end
        end
    end
    for i, v in pairs(getnilinstances()) do
        local stringgsub
        if string.find(v.Name, "Lv.") then 
            stringgsub = v.Name:gsub(" %pLv. %d+%p", "")
        end
        if v:IsA("Part") and ((stringgsub and stringgsub == name) or name == v.Name or (name1 and v.Name == name1))  then  
            if vec == nil then
                vec = v.Position
                count = count + 1
            else
                vec = vec + v.Position
                count = count + 1
            end
        end
    end
    vec = vec / count
    return CFrame.new(vec)
end
function DetectPartMobBring(name,a,b,c)
    local Mob = {}
    local name1 
    if string.find(name,"Lv.") then 
        name1 = name:gsub(" %pLv. %d+%p", "")
    end
    for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
        local stringgsub
        if string.find(v.Name, "Lv.") then 
            stringgsub = v.Name:gsub(" %pLv. %d+%p", "")
        end
        if  v:IsA("Part") and ((stringgsub and stringgsub == name) or name == v.Name or (name1 and v.Name == name1)) then
            table.insert(Mob,v)
        end
    end
    for i, v in pairs(getnilinstances()) do
        local stringgsub
        if string.find(v.Name, "Lv.") then 
            stringgsub = v.Name:gsub(" %pLv. %d+%p", "")
        end
        if v:IsA("Part") and ((stringgsub and stringgsub == name) or name == v.Name or (name1 and v.Name == name1)) then
            table.insert(Mob,v)
        end
    end
    if b then
        local dist = math.huge
        local Closest
        for i,v in next,Mob do 
            local conconcac = (a.HumanoidRootPart.Position-v.Position).Magnitude
            if dist > conconcac then 
                dist = conconcac 
                Closest = v 
            end
        end
        return Closest
    else
        local mob2 = {}
        for i,v in next,Mob do 
            if (c.Position-v.Position).Magnitude <= 300 then 
                table.insert(mob2,v)
            end
        end
        if #mob2 < #Mob then 
            return true 
        end
    end
end

local CenterMob
local NameMobBring 
local PosBring
local PositionBring
function DeleteIgnoredMob()
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if v:IsA("Model") and v:FindFirstChild("Ignored")  then 
            v.Ignored:Destroy()
        end
    end
end
function BringMob(a)
    if  not Options["Bring Mob"].Value then 
        return 
    end
    if a and NameMobBring ~= a then
        NameMobBring = a 
        --PositionBring = DetectPartMobBring(a.Name,a).CFrame
        PositionBring = getcenter(a.Name)
        if Options["Bring Mob [Fps Low]"].Value or  DetectPartMobBring(a.Name,a,false,PositionBring)  then
            PositionBring = DetectPartMobBring(a.Name,a,true).CFrame
        end
        DeleteIgnoredMob()
    end
    if PositionBring and (plr.Character.HumanoidRootPart.Position-a.HumanoidRootPart.Position).Magnitude <= 250 then
        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if v.Name == a.Name and not v:FindFirstChild("Ignored") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and isnetworkowner(v.HumanoidRootPart) and isnetworkowner2(v.HumanoidRootPart) then 
                if  (v.HumanoidRootPart.Position-PositionBring.Position).Magnitude <= 350 then
                    v.HumanoidRootPart.CFrame = PositionBring 
                    sizepart(v)
                end
            end
        end
        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if v.Name == a.Name and not v:FindFirstChild("Ignored") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and isnetworkowner(v.HumanoidRootPart) and isnetworkowner2(v.HumanoidRootPart) then 
                if  (v.HumanoidRootPart.Position-PositionBring.Position).Magnitude <= 350 then
                    local oldhealthmob = v.Humanoid.Health
                    task.wait(3.5)
                    if v.Humanoid.Health == oldhealthmob then 
                        local Ignored = Instance.new("IntValue", v)
                        Ignored.Name = "Ignored"
                        task.wait(0.3)
                    end
                end
            end
        end
    end
    wait(0.2)
end
function equiptool(toolname)
    if toolname and plr:FindFirstChild("Backpack") and plr.Backpack:FindFirstChild(toolname)  then
        plr.Character.Humanoid:EquipTool(plr.Backpack:FindFirstChild(toolname))
    end
end
function NameWeapon(x)
    local a
    
    for i,v in next, game.Players.LocalPlayer.Backpack:GetChildren() do
        if v:IsA("Tool") and v.ToolTip == x  then
            a = v.Name
        end
    end
    for i,v in next, game.Players.LocalPlayer.Character:GetChildren() do
        if v:IsA("Tool") and v.ToolTip == x  then
            a = v.Name
        end
    end
    return a 
end
function IsMobAlive(v)
    return v and v.Parent and v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and v:FindFirstChild("HumanoidRootPart") and v.HumanoidRootPart.Position.Y > -100
end
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
function DetectPartSpawnMob(name,x)
    local name1 
	local count  = 0
	local name2 
    if string.find(name,"Lv.") then 
        name1 = name:gsub(" %pLv. %d+%p", "")
    end
    for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
        local stringgsub
        if string.find(v.Name, "Lv.") then 
            stringgsub = v.Name:gsub(" %pLv. %d+%p", "")
        end
        if  v:IsA("Part") and ((stringgsub and stringgsub == name) or name == v.Name or (name1 and v.Name == name1)) and ((x and not v:FindFirstChild("Ignored")) or not x) then
			name2 = v
        end
    end
    for i, v in pairs(getnilinstances()) do
        local stringgsub
        if string.find(v.Name, "Lv.") then 
            stringgsub = v.Name:gsub(" %pLv. %d+%p", "")
        end
        if v:IsA("Part") and ((stringgsub and stringgsub == name) or name == v.Name or (name1 and v.Name == name1)) and ((x and not v:FindFirstChild("Ignored")) or not x) and ((not x and not name2)or x) then
			name2 = v
		end
    end
	return name2
end
function DeleteIgnoredMobSpawn()
    for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
        local stringgsub
        if string.find(v.Name, "Lv.") then 
            stringgsub = v.Name:gsub(" %pLv. %d+%p", "")
        end
        if v:FindFirstChild("Ignored") then
            v:FindFirstChild("Ignored"):Destroy()
		end
    end
    for i, v in pairs(getnilinstances()) do
        local stringgsub
        if string.find(v.Name, "Lv.") then 
            stringgsub = v.Name:gsub(" %pLv. %d+%p", "")
        end
        if v:FindFirstChild("Ignored") then
            v:FindFirstChild("Ignored"):Destroy()
		end
    end
end
local MobBlacklist = {}
function TeleportSpawnMob(Path,value)
    if typeof(Path) == "table" then
        if #MobBlacklist >= #Path then 
            MobBlacklist = {}
            return 
        end
        for i,v in next,Path do
            if not table.find(MobBlacklist,v) then
				table.insert(MobBlacklist,v)
                GetPart = DetectPartSpawnMob(v)
                if GetPart then 
                    repeat task.wait()
                        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,GetPart.Position,GetPart.CFrame*CFrame.new(0,60,0))
                    until  (GetPart.Position-plr.Character.HumanoidRootPart.Position).Magnitude <= 100 or DetectMob(Path) or value 
                end
            end
        end
    else
        wait(1)
        local GetPart = DetectPartSpawnMob(Path,true)
		if GetPart then 
            local Ignored = Instance.new("IntValue", GetPart)
            Ignored.Name = "Ignored"
			repeat task.wait()
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,GetPart.Position,GetPart.CFrame*CFrame.new(0,60,0))
			until (GetPart.Position-plr.Character.HumanoidRootPart.Position).Magnitude <= 100 or DetectMob(Path) or value
		else
            DeleteIgnoredMobSpawn()
		end
    end
end
local MobKatakuri = {
    "Baking Staff [Lv. 2250]",
    "Head Baker [Lv. 2275]",
    "Cake Guard [Lv. 2225]",
    "Cookie Crafter [Lv. 2200]"
}
local TableMobBones = {
    "Reborn Skeleton [Lv. 1975]",
    "Demonic Soul [Lv. 2025]",
    "Living Zombie [Lv. 2000]",
    "Posessed Mummy [Lv. 2050]",
}
local up = getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
local ret = up[2]
function autoattack(value)
    if game.Players.LocalPlayer.Character.Stun.Value == 0 then
        local p13 = ret.activeController
        local bladehit =
        require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
        game.Players.LocalPlayer.Character,{game.Players.LocalPlayer.Character.HumanoidRootPart},60)
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 and  p13.blades and p13.blades[1] then
            coroutine.wrap(function()
                if p13.hitboxMagnitude then p13.hitboxMagnitude = 60 end
                pcall(p13.attack, p13)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",p13.blades[1].Parent.Parent.Name)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 1, "")
            end)()
        end
    end
end
function DetectAttack(v)
    if plr.Character:FindFirstChild("HumanoidRootPart") and (plr.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).Magnitude < 50 then
        autoattack() 
        task.wait(Options["Select Speed Attack"].Value)
    end
end
--------Farm Mastery--------
function checkskillMastery(x)
    for i,v in next,game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[x]:GetChildren() do 
        if v:IsA("Frame")  then
            if v.Name ~= "Template" and Options["Select Skill"].Value[v.Name] and v.Title.TextColor3 == Color3.new(1, 1, 1) and v.Cooldown.Size == UDim2.new(0, 0, 1, -1) or v.Cooldown.Size == UDim2.new(1, 0, 1, -1) then
                return v.Name
            end
        end
    end
end
function WeaponsMastery()
    local a
    for i,v in next,plr.Backpack:GetChildren() do
        if v:IsA("Tool") and v.ToolTip == Options["Select Method Mastery Farm"].Value then
            a = v.Name 
        end
    end
    for i,v in next,plr.Character:GetChildren() do
        if v:IsA("Tool") and v.ToolTip == Options["Select Method Mastery Farm"].Value then
            a = v.Name 
        end
    end
    return a 
end
function FarmMastery(v)
    if Options["Auto Mastery"].Value then
        getgenv().psskill = v.HumanoidRootPart.CFrame
        if v.Humanoid.Health / v.Humanoid.MaxHealth > Options["Health %"].Value/100  then 
            equiptool(NameWeapon(Options["Select Weapon"].Value))
        else
            if Options["Select Method Mastery Farm"].Value == "Gun" then 
                game:GetService "VirtualUser":CaptureController()
                game:GetService "VirtualUser":Button1Down(Vector2.new(50, 50))
            end
            equiptool(WeaponsMastery())
            local condimebeo = checkskillMastery(WeaponsMastery())
            if condimebeo then 
                game:GetService("VirtualInputManager"):SendKeyEvent(true, condimebeo, false, game)
                task.wait(0.5)
                game:GetService("VirtualInputManager"):SendKeyEvent(false, condimebeo, false, game)
            end
            return 
        end 
    else
        equiptool(NameWeapon(Options["Select Weapon"].Value))
    end
end

---------
local AttackingMob
function sizepart(v)
    AttackingMob = v
    --[[if not v.HumanoidRootPart:FindFirstChild("vando") then
        local lock = Instance.new("BodyVelocity")
        lock.Parent = v
        lock.Name = "vando"
        lock.MaxForce = Vector3.new(100000, 100000, 100000)
        lock.Velocity = Vector3.new(0, 0, 0)
    end]]
end
function QuestBoneAndkatakuri(NameQuest,IDQuest)
    if not getgenv().questpoint[NameQuest] then
        CFrameQuest()
        return 
    end
    if (getgenv().questpoint[NameQuest].Position-plr.Character.HumanoidRootPart.Position).magnitude <= 8 then
        task.wait(1)
        if plr.Character.Humanoid.Health > 0 then 
            CommF:InvokeServer("StartQuest", NameQuest, IDQuest)
        end
    else
        teleportquestdeptrai(NameQuest)
    end
end
------Dodge Mob Skill------

game:GetService("Workspace").Enemies.DescendantAdded:Connect(function(v)
    if Options["Auto Dodge Skill Mobs"].Value and AttackingMob and AttackingMob.Parent  and not Doding
    and (v.Name == "BodyGyro" or v.Name == "BodyPosition" or v.Name == "KiBlastFireShort")
    and v.Parent.Parent.Name == AttackingMob.Name  then
        getgenv().Doding = true
        getgenv().ReadyToDodge = true
        local Timer = tick()
        repeat wait()
        until not v or not v.Parent or tick() - Timer > 14
        if tick() - Timer < 2 then
            wait(.5)
        end
        getgenv().Doding = false
        getgenv().ReadyToDodge = false
    end
end)

------- Boss Auto-------
function CheckNameBoss(a)
    local name1 = ""
    local name2 = ""
    local nametable = {}
    if typeof(a) == "table" then 
        for i,v in next ,a do
            local name3
            local name4 
            if string.find(v,' %pRaid Boss%p') then
                name3 = string.gsub(v,"%pLv. %d+%p", "")
                name4 = string.gsub(name3,"  %pRaid Boss%p","")
            else
                name1 = string.gsub(v,"%pLv. %d+%p", "")
                name4 = string.gsub(name3,"  %pBoss%p","")
            end
            table.insert(nametable,name4)
        end
    else
        if string.find(a,' %pRaid Boss%p') then
            name1 = string.gsub(a,"%pLv. %d+%p", "")
            name2 = string.gsub(name1,"  %pRaid Boss%p","")
        else
            name1 = string.gsub(a,"%pLv. %d+%p", "")
            name2 = string.gsub(name1,"  %pBoss%p","")
        end
    end

    for i,v in next,game.ReplicatedStorage:GetChildren() do
        local stringgsub = v.Name:gsub(" %pLv. %d+%p", "")
        if v:IsA("Model") and  ((typeof(a) == "table" and (table.find(a, v.Name) or table.find(nametable, v.Name))) or ( typeof(a) == "string" and (v.Name == a or v.Name == name2))) and IsMobAlive(v) then
            return v
        end
    end
    for i,v in next,game.Workspace.Enemies:GetChildren() do
        local stringgsub = v.Name:gsub(" %pLv. %d+%p", "")
        if v:IsA("Model") and ((typeof(a) == "table" and (table.find(a, v.Name) or table.find(nametable, v.Name))) or ( typeof(a) == "string" and (v.Name == a or v.Name == name2)))  and IsMobAlive(v) then
            return v
        end
    end
end
function AutoKillBoss(x,value)
    local v = CheckNameBoss(x)
    if v  then
        repeat task.wait()
            if plr.Character:FindFirstChild("Humanoid") and plr.Character.Humanoid.Health == 0 then 
                return 
            end
            sizepart(v)
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame*CFrame.new(7,-20,0))
            DetectAttack(v)
            equiptool(NameWeapon(Options["Select Weapon"].Value))
        until not v or not v.Parent or v.Humanoid.Health == 0  or value
    end
end
function AutoKillMob(x,value)
    if not DetectMob(x) then 
        TeleportSpawnMob(x,value)
    else
        local v = DetectMob(x)
        repeat task.wait()
            if plr.Character:FindFirstChild("Humanoid") and plr.Character.Humanoid.Health == 0 then 
                return 
            end
            task.spawn(function()
                BringMob(v)
            end)
            sizepart(v)
            DetectAttack(v)
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame*CFrame.new(7,20,0))
            equiptool(NameWeapon(Options["Select Weapon"].Value))
        until not v or not v.Parent or v.Humanoid.Health == 0  or value
    end
end
------QUestHunterKill
local QuestKillPlayer = false
local blnamequest = {}
function DetectKillPlayerQuest()
    local namequest = string.gsub(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Defeat ","")
    namequest = string.gsub(namequest," %p(0/1)%p","")
    if plr.PlayerGui.Main:FindFirstChild("Quest").Visible  and not game:GetService("Workspace").Characters:FindFirstChild(namequest) then
        print(namequest,game.Players[namequest].Data.Level.Value)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        return
    end
    if game.Players[namequest].Data.Level.Value <= 20 or ((plr.Data.Level.Value < 300 and game.Players[namequest].Data.Level.Value >= 150) or (plr.Data.Level.Value >= 300 and game.Players[namequest].Data.Level.Value >= 600) )    then 
        table.insert(blnamequest,namequest)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        print(namequest,game.Players[namequest].Data.Level.Value)
        return 
    end
end
function checksafezone(p)
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].SafeZones:GetChildren()) do
        if v:IsA("Part") then
            if (v.Position-p.HumanoidRootPart.Position).magnitude <= 400 and p.Humanoid.Health / p.Humanoid.MaxHealth >= 90/100 then
                return true
            end
        end
    end
    return false
end
function checkskillHunter(x)
    for i,v in next,game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[x]:GetChildren() do 
        if v:IsA("Frame")  then
            if v.Name ~= "Template" and v.Title.TextColor3 == Color3.new(1, 1, 1) and v.Cooldown.Size == UDim2.new(0, 0, 1, -1) or v.Cooldown.Size == UDim2.new(1, 0, 1, -1) then
                return v.Name
            end
        end
    end
end
local StartFarm = false
require(game:GetService("ReplicatedStorage").Util.CameraShaker):Stop()
local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
CameraShakerR:Stop()
function StopFarm()
    if Options["Auto Quest New World"].Value and  game.PlaceId == 2753915549 and plr.Data.Level.Value >= 700 then  StartFarm = false return  end
    if Options["Auto Factory"].Value and  getgenv().DetectFactory then StartFarm = false return  end 
    if Options["Auto Raid Castle"].Value and getgenv().DetectRaidCastle then StartFarm = false return  end 
    if Options["Auto Elite Hunter"].Value and  getgenv().DetectElite then StartFarm = false return  end 
    StartFarm = true 
end
function QuestHunterKillPlayer()
    if game.PlaceId == 2753915549 then
        if #blnamequest >= 6  then
                HopServer()
            return
        end
        if  plr.Data.Level.Value >= 35  then 
            game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("PlayerHunter")
            print(true)
        end
        local namequest = string.gsub(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Defeat ","")
        namequest = string.gsub(namequest," %p(0/1)%p","")
        if plr.PlayerGui.Main:FindFirstChild("Quest").Visible and namequest and  game:GetService("Workspace").Characters:FindFirstChild(namequest) then
            QuestKillPlayer = true
            DetectKillPlayerQuest()
            for i,v in next,game:GetService("Workspace").Characters:GetChildren() do
                if v:IsA("Model") and v.Name == namequest then
                    repeat task.wait()
                        DetectKillPlayerQuest()
                        local namequest2 = string.gsub(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Defeat ","")
                        namequest2 = string.gsub(namequest2," %p(0/1)%p","")
                        game:GetService "VirtualUser":CaptureController()
                        game:GetService "VirtualUser":Button1Down(Vector2.new(60, 60))
                        if game.Players.LocalPlayer.PlayerGui.Main.PvpDisabled.Visible  then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                        end
                        equiptool(NameWeapon(Options["Select Weapon"].Value))
                        if plr:DistanceFromCharacter(v.HumanoidRootPart.Position) < 30 then
                            wait(0.3)
                            local condimebeo = checkskillHunter(NameWeapon(Options["Select Weapon"].Value))
                            if condimebeo then
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, condimebeo, false, game)
                                wait(0.1)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false, condimebeo, false, game)
                            end
                        end
                        spawn(function()
                            if not getgenv().clickattackmethodfarm and (v.HumanoidRootPart.Position-plr.Character.HumanoidRootPart.Position).Magnitude < 50 then
                                local condimemeay = tick()
                                repeat wait()
                                until tick()-condimemeay >= 5 or (v.HumanoidRootPart.Position-plr.Character.HumanoidRootPart.Position).Magnitude >= 300
                                if tick()-condimemeay >= 5 then
                                    getgenv().clickattackmethodfarm = true
                                end
                            elseif (v.HumanoidRootPart.Position-plr.Character.HumanoidRootPart.Position).Magnitude >= 500 then
                                getgenv().clickattackmethodfarm = false
                            end
                        end)
                        local CFrameHunter = CFrame.new(0,40,0)
                        if clickattackmethodfarm then 
                            CFrameHunter = CFrame.new(3,4,0)
                        end
                        spawn(function()
                            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame*CFrameHunter)
                        end)
                    until not v or not v.Parent or v.Humanoid.Health <= 0 or not plr.PlayerGui.Main:FindFirstChild("Quest").Visible or checksafezone(v)  or namequest2 ~= namequest or not StartFarm
                    QuestKillPlayer = false
                end
            end
            return 
        end
    end
end

function FarmMethod()
    QuestHunterKillPlayer()
    if (plr.Character:FindFirstChild("Humanoid") and plr.Character.Humanoid.Health == 0) or not StartFarm or QuestKillPlayer then 
        return 
    end
    local MethodFarm 
    local LevelQuest = 9999
    local NameQuest 
    local IDQuest = 2
    if Options["Select Method Farm"].Value == "Farm Katakuri" then
        MethodFarm = MobKatakuri
        NameQuest = "CakeQuest2"
        LevelQuest = 2275
    elseif Options["Select Method Farm"].Value == "Farm Bones" then
        MethodFarm = TableMobBones
        NameQuest = "HauntedQuest2"
        LevelQuest = 2050
    end
    local MobLevelFarm = MethodFarm or checknamedoublquest() or ""
    if game.PlaceId == 2753915549 and  plr.Data.Level.Value < 120 and plr.Data.Level.Value >= 10 then
        MobLevelFarm = {"Royal Squad [Lv. 525]","Shanda [Lv. 475]"}
    end
    if not plr.PlayerGui.Main:FindFirstChild("Quest").Visible and typeof(MobLevelFarm) ==  "string"  then
        getquest()
    else
        if Options["Get Quest Farm"].Value and plr.Data.Level.Value >= LevelQuest and not plr.PlayerGui.Main:FindFirstChild("Quest").Visible  then  
            QuestBoneAndkatakuri(NameQuest,IDQuest)
            return 
        end
        if  Options["Select Method Farm"].Value == "Farm Katakuri"  then
            if CheckNameBoss("Cake Prince [Lv. 2300] [Raid Boss]")  then 
                AutoKillBoss("Cake Prince [Lv. 2300] [Raid Boss]", (not StartFarm or not Options["Auto Farm"].Value))
                return 
            else
                local v204 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner", true)
                if v204:find("open the portal now") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                end 
            end
        end
        if not DetectMob(MobLevelFarm) then
            TeleportSpawnMob(MobLevelFarm, (not StartFarm or not Options["Auto Farm"].Value))
        else
            local v = DetectMob(MobLevelFarm)
            repeat task.wait()
                if plr.Character:FindFirstChild("Humanoid") and plr.Character.Humanoid.Health == 0 then 
                    return 
                end
                task.spawn(function()
                    BringMob(v)
                end)
                sizepart(v)
                FarmMastery(v)
                DetectAttack(v)
                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame*CFrame.new(7,20,0))
            until not v or not v.Parent or v.Humanoid.Health == 0  or not Options["Auto Farm"].Value or not StartFarm or QuestKillPlayer
        end
    end
end
function NewWorld()
    if game.PlaceId == 2753915549 and plr.Data.Level.Value >= 700 then
        if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Dressrosa") ~= 0 then
            if game.Workspace.Map.Ice.Door.CanCollide then
                if not plr.Character:FindFirstChild("Key") and not plr.Backpack:FindFirstChild("Key") then 
                    if (CFrame.new(4852.2895507813, 5.651451587677, 718.53070068359).Position - plr.Character.HumanoidRootPart.Position).magnitude < 5 then
                        game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("DressrosaQuestProgress", "Detective")
                        equiptool("Key")
                    else
                        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,Vector3.new(4852.2895507813, 5.651451587677, 718.53070068359),CFrame.new(4852.2895507813, 5.651451587677, 718.53070068359))
                    end
                else
                    equiptool("Key")
                    if plr.Character:FindFirstChild("Key") then
                        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,game.Workspace.Map.Ice.Door.Position,game.Workspace.Map.Ice.Door.CFrame)
                    end
                end
            else
                if CheckNameBoss("Ice Admiral [Lv. 700] [Boss]")  then 
                    AutoKillBoss("Ice Admiral [Lv. 700] [Boss]", not Options["Auto Quest New World"].Value)
                end
            end
        else
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
        end
    end
end

spawn(function()
    while wait() do
        if Options["Auto Farm"].Value  then
            pcall(function()
                FarmMethod()
            end)
        end
    end
end)
spawn(function()
    while wait() do 
        if Options["Auto Farm"].Value  then 
            StopFarm()
        end
    end
end)
spawn(function()
    while wait() do 
        if Options["Auto Quest New World"].Value  then 
            NewWorld()
        end
    end
end)
spawn(function()
    while wait() do 
        if Options["Auto Click"].Value  then 
            autoattack()
        end
    end
end)
function FFCMatch(Ins, Name)
    for k, v in pairs(Ins:GetChildren()) do
        if string.match(v.Name, Name) then
            return v
        end
    end
    return nil
end

spawn(function()
    while wait() do
        if Options["Auto Buso"].Value then
            pcall(function() 
                if not FFCMatch(plr.Character, "_BusoLayer1") and not plr.Character:FindFirstChild("HasBuso") then
                    CommF:InvokeServer("Buso")
                    task.wait(2)
                end
            end)
        end
    end
end)
spawn(function()
    while  wait() do
        if Options["Auto Haki Observation"].Value then
            pcall(function() 
                if not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                    wait()
                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "E", false, game)
                    wait(3)
                end
            end)
        end
    end
end)
spawn(function()
    while  task.wait() do
        if Options["Auto Turn On V4"].Value then
            pcall(function() 
                if game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy") 
                and game.Players.LocalPlayer.Character.RaceEnergy.Value >= 1 
                and game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") and not game.Players.LocalPlayer.Character.RaceTransformed.Value   then
                    local args = {
                        [1] = true
                    }
                    game:GetService("Players").LocalPlayer.Backpack.Awakening.RemoteFunction:InvokeServer(unpack(args))
                end
            end)
        end
    end
end)



------------------Done Auto Farm------------------

Tabs.MiscMain:AddParagraph({
    Title = "Event Game",
    Content = "Auto Raid Castle And Factory",
})
Tabs.MiscMain:AddToggle("Auto Factory", {
    Title = "Auto Factory",
    Default = Settings["Auto Factory"] or false,
    Callback = function(value)
        SaveSettings("Auto Factory",value)
    end
})
Tabs.MiscMain:AddToggle("Auto Raid Castle", {
    Title = "Auto Raid Castle",
    Default = Settings["Auto Raid Castle"] or false,
    Callback = function(value)
        SaveSettings("Auto Raid Castle",value)
    end
})
Tabs.MiscMain:AddParagraph({
    Title = "Farm Observation",
    Content = "....",
})
Tabs.MiscMain:AddToggle("Farm Observation", {
    Title = "Farm Observation",
    Default = Settings["Farm Observation"] or false,
    Callback = function(value)
        SaveSettings("Farm Observation",value)
    end
})
Tabs.MiscMain:AddToggle("Hop Server Farm Observation", {
    Title = "Hop Server Farm Observation",
    Default = Settings["Hop Server Farm Observation"] or false,
    Callback = function(value)
        SaveSettings("Hop Server Farm Observation",value)
    end
})

Tabs.MiscMain:AddParagraph({
    Title = "Collect Chest",
    Content = "Auto Chest And Teleport Safe if have Items",
})
Tabs.MiscMain:AddToggle("Auto Chest", {
    Title = "Auto Chest",
    Default = Settings["Auto Chest"] or false,
    Callback = function(value)
        SaveSettings("Auto Chest",value)
    end
})
Tabs.MiscMain:AddToggle("Teleport Safe if have Items", {
    Title = "Teleport Safe if have Items",
    Default = Settings["Teleport Safe if have Items"] or false,
    Callback = function(value)
        SaveSettings("Teleport Safe if have Items",value)
    end
})
Tabs.MiscMain:AddParagraph({
    Title = "God's Chalice And Dough King",
    Content = "Auto Elite Hunter  And Dough King And (Summon or Kill Rip Indra)",
})

Tabs.MiscMain:AddToggle("Auto Elite Hunter", {
    Title = "Auto Elite Hunter",
    Default = Settings["Auto Elite Hunter"] or false,
    Callback = function(value)
        SaveSettings("Auto Elite Hunter",value)
    end
})
Tabs.MiscMain:AddToggle("Kill Rip Indra", {
    Title = "Kill Rip Indra",
    Default = Settings["Kill Rip Indra"] or false,
    Callback = function(value)
        SaveSettings("Kill Rip Indra",value)
    end
})
Tabs.MiscMain:AddToggle("Summon Rip Indra", {
    Title = "Summon Rip Indra",
    Default = Settings["Summon Rip Indra"] or false,
    Callback = function(value)
        SaveSettings("Summon Rip Indra",value)
    end
})
Tabs.MiscMain:AddToggle("Auto Dough King", {
    Title = "Auto Dough King",
    Default = Settings["Auto Dough King"] or false,
    Callback = function(value)
        SaveSettings("Auto Dough King",value)
    end
})
Tabs.MiscMain:AddToggle("Hop Server", {
    Title = "Hop Server",
    Default = Settings["Hop Server"] or false,
    Callback = function(value)
        SaveSettings("Hop Server",value)
    end
})
Tabs.MiscMain:AddParagraph({
    Title = "Dark Fragment",
    Content = "Auto Summon Or Kill DarkBeard",
})
Tabs.MiscMain:AddToggle("Summon DarkBeard", {
    Title = "Summon DarkBeard",
    Default = Settings["Summon DarkBeard"] or false,
    Callback = function(value)
        SaveSettings("Summon DarkBeard",value)
    end
})
Tabs.MiscMain:AddToggle("Kill DarkBeard", {
    Title = "Kill DarkBeard",
    Default = Settings["Kill DarkBeard"] or false,
    Callback = function(value)
        SaveSettings("Kill DarkBeard",value)
    end
})
------------------Event Tab------------------
function EventFactory()
    getgenv().DetectFactory = CheckNameBoss("Core")
    if DetectFactory then 
        AutoKillBoss("Core", not Options["Auto Factory"].Value)
    end
end
function GetPirateRaid(path)
    if path then
        path = game.ReplicatedStorage
    else
        path = game.workspace.Enemies
    end
    for i, v in ipairs(path:GetChildren()) do
        if v:IsA("Model")
        and not string.find(v.Name, "Boss")
        and not string.find(v.Name, "Friend")
        and IsMobAlive(v)
        and (v.HumanoidRootPart.Position - Vector3.new(-5543, 313, -2964)).magnitude < 1000 then
            return v
        end
    end
end
getgenv().DetectRaidCastle = false
function EventRaidCastle()
    local v  = GetPirateRaid()  or  GetPirateRaid(true) 
    if v then
        getgenv().DetectRaidCastle = true 
        repeat task.wait()
            if plr.Character:FindFirstChild("Humanoid") and plr.Character.Humanoid.Health == 0 then 
                return 
            end
            equiptool(NameWeapon(Options["Select Weapon"].Value))
            sizepart(v)
            DetectAttack(v)
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame*CFrame.new(7,20,0))
        until not v or not v.Parent or v.Humanoid.Health == 0  or not Options["Auto Raid Castle"].Value
    elseif getgenv().DetectRaidCastle then 
        local Time = tick()
        repeat wait()
        until tick()-Time >= 30 or GetPirateRaid()  or  GetPirateRaid(true)
        if not (GetPirateRaid()  or  GetPirateRaid(true)) then 
            getgenv().DetectRaidCastle = false 
        end
    end
end
spawn(function()
    while wait() do 
        pcall(function()
            if game.PlaceId == 2753915549 and Options["Auto Factory"].Value then  
                EventFactory()
            elseif game.PlaceId == 7449423635 and Options["Auto Raid Castle"].Value then 
                EventRaidCastle()
            end
        end)
    end
end)
------------------Tab Collect Chest------------------
function DetectChest()
    local dist = math.huge
    local name
    for k, v in pairs(game.Workspace:GetChildren()) do
        if string.match(v.Name, "Chest")  then
            local magnitude = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
            if magnitude < dist then
                dist = magnitude
                name = v
            end
        end
    end
    if not name then 
        for i,v in next,game:GetService("Workspace").Map:GetDescendants() do
            if v:IsA("Part") and string.find(v.Name, "Chest")  then
                local magnitude = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
                if magnitude < dist then
                    dist = magnitude
                    name = v
                end
            end
        end
    end
    return name 
end
local DetectItem
function CollectChest()
    if DetectItem and Options["Teleport Safe if have Items"].Value then 
        return 
    end
    local v = DetectChest()
    repeat task.wait()
        if  (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Position).Magnitude <= 2 then
            firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
            firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
        end
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Position).Magnitude <= 5 then 
            game:service("VirtualInputManager"):SendKeyEvent(true, "W", false, game)
            task.wait()
            game:service("VirtualInputManager"):SendKeyEvent(false, "W", false, game)
        end
        toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,v.Position,v.CFrame*CFrame.new(0,1,0),true)
    until not v or not v.Parent or not Options["Auto Chest"].Value or (DetectItem and Options["Teleport Safe if have Items"].Value)
end
local TableItemLegendary = {"God's Chalice","Fist of Darkness"}
function DetectItemLegend(path)
    for i,v in next,path:GetChildren() do 
        if v:IsA("Tool") and table.find(TableItemLegendary,v.Name) then 
            return true 
        end
    end
end

function TeleportSafe()
    DetectItem = DetectItemLegend(plr.Backpack) or DetectItemLegend(plr.Character)
    if DetectItem then 
        if game.PlaceId == 4442272183 then  
            toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,CFrame.new(-385.250916, 73.0458984, 297.388397).Position,CFrame.new(-385.250916, 73.0458984, 297.388397))
        else
            toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,CFrame.new(-12463.8740234375, 374.9144592285156, -7523.77392578125).Position,CFrame.new(-12463.8740234375, 374.9144592285156, -7523.77392578125))
        end
    end
end
spawn(function()
    while wait() do 
        pcall(function()
            if Options["Teleport Safe if have Items"].Value then 
                TeleportSafe()
            end
            if Options["Auto Chest"].Value then
                CollectChest()
            end
        end)
    end
end)

------------------Tab Hunter And Dough King------------------
function DetectItemPlr(x)
    if plr.Character:FindFirstChild(x) or plr.Backpack:FindFirstChild(x) then 
        return true 
    end
end
local MobConjuredCocoa = {
    "Cocoa Warrior [Lv. 2300]",
    "Chocolate Bar Battler [Lv. 2325]",
    "Candy Rebel [Lv. 2375]",
    "Sweet Thief [Lv. 2350]",
}
local TableEliteHunter = {
    "Deandre",
    "Urban",
    "Diablo",
}
function DetectEliteHunter()
    for i,v in next,game:GetService("ReplicatedStorage"):GetChildren() do
        if v:IsA("Model") and table.find(TableEliteHunter,v.Name) and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
            return v 
        end
    end
    for i,v in next,game:GetService("Workspace").Enemies:GetChildren() do
        if v:IsA("Model") and table.find(TableEliteHunter,v.Name) and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
            return v 
        end
    end
end

function AutoEliteHunter()
    if getgenv().DetectRaidCastle then return end
    local v = DetectEliteHunter() 
    getgenv().DetectElite = true 
    if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name:gsub(" %pLv. %d+%p", "")) 
    or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
    else
        AutoKillBoss(v.Name,(not Options["Auto Elite Hunter"].Value or getgenv().DetectRaidCastle))
    end
end
function DetectButtons()
    for i,v in next,game:GetService("Workspace").Map["Boat Castle"].Summoner.Circle:GetChildren() do
        if v:IsA("Part") and v.Part.BrickColor.Name ~= "Lime green"  then
            return v
        end
    end
end
function SummonRipIndra()
    if  not DetectButtons() then 
        equiptool("God's Chalice")
        toTarget(plr.Character.HumanoidRootPart.Position,game:GetService("Workspace").Map["Boat Castle"].Summoner.Detection.Position,game:GetService("Workspace").Map["Boat Castle"].Summoner.Detection.CFrame)
    else
        if DetectButtons().BrickColor.Name == "Hot pink"  then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
            toTarget(plr.Character.HumanoidRootPart.Position,DetectButtons().Position,DetectButtons().CFrame)
        elseif DetectButtons().BrickColor.Name == "Really red"  then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
            toTarget(plr.Character.HumanoidRootPart.Position,DetectButtons().Position,DetectButtons().CFrame)
        elseif DetectButtons().BrickColor.Name == "Oyster"  then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White")
            toTarget(plr.Character.HumanoidRootPart.Position,DetectButtons().Position,DetectButtons().CFrame)
        end
    end
end
spawn(function()
    while wait() do 
        pcall(function()
            if Options["Kill Rip Indra"].Value and CheckNameBoss("rip_indra True Form [Lv. 5000] [Raid Boss]") then 
                AutoKillBoss("rip_indra True Form [Lv. 5000] [Raid Boss]",not Options["Kill Rip Indra"].Value)
            elseif Options["Summon Rip Indra"].Value and DetectItemPlr("God's Chalice") then 
                SummonRipIndra()
            elseif Options["Auto Elite Hunter"].Value and DetectEliteHunter() then 
                AutoEliteHunter()
            elseif getgenv().DetectElite then 
                getgenv().DetectElite = false 
            elseif Options["Hop Server"].Value then 
                HopServer()
            end
        end)
    end
end)
------------------Dough King------------------
function checkcountitem(x,xx)
    for i,v in next,game.ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory") do
        if v.Name == x and v.Count and v.Count >= xx then
            return true
        end
    end
    return false
end
function DoughKing()
    if  CheckNameBoss("Dough King [Lv. 2300] [Raid Boss]") then
        AutoKillBoss("Dough King [Lv. 2300] [Raid Boss]",not Options["Auto Dough King"].Value)
    elseif not  DetectItemPlr("Sweet Chalice") then
        if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("SweetChaliceNpc")  == "Where are the items?"   then
            if not checkcountitem("Conjured Cocoa",10) then 
                AutoKillMob(MobConjuredCocoa,not Options["Auto Dough King"].Value)
            elseif not DetectItemPlr("God's Chalice") then 
                local v = DetectEliteHunter()
                if v then 
                    if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name:gsub(" %pLv. %d+%p", "")) 
                    or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                    else
                        AutoKillBoss(v.Name,not Options["Auto Dough King"].Value)
                    end
                elseif Options["Hop Server"].Value then 
                    HopServer()
                end
            end
        end
    else
        local v204 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner", true)
        if v204:find("open the portal now") then
            task.spawn(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
            end)
        else
            AutoKillMob(MobKatakuri,not Options["Auto Dough King"].Value)
        end
    end
end
spawn(function()
    while wait() do 
        pcall(function()
            if Options["Auto Dough King"].Value then
                DoughKing()
            end
        end)
    end
end)
------------------Tab Darkbeard------------------
function SummonDarkBeard()
    if (game:GetService("Workspace").Map.DarkbeardArena.Summoner.Detection.Position-plr.Character.HumanoidRootPart.Position).Magnitude <= 5 then
        equiptool("Fist of Darkness")
        firetouchinterest(game.Players.LocalPlayer.Character["Fist of Darkness"].Handle, game:GetService("Workspace").Map.DarkbeardArena.Summoner.Detection, 0)
        firetouchinterest(game.Players.LocalPlayer.Character["Fist of Darkness"].Handle, game:GetService("Workspace").Map.DarkbeardArena.Summoner.Detection, 1)
        firetouchinterest(plr.Character.HumanoidRootPart, game:GetService("Workspace").Map.DarkbeardArena.Summoner.Detection, 0)
        firetouchinterest(plr.Character.HumanoidRootPart, game:GetService("Workspace").Map.DarkbeardArena.Summoner.Detection, 1)
    else
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,game:GetService("Workspace").Map.DarkbeardArena.Summoner.Detection.Position,game:GetService("Workspace").Map.DarkbeardArena.Summoner.Detection.CFrame)
    end
end
spawn(function()
    while wait() do 
        pcall(function()
            if Options["Kill DarkBeard"].Value and CheckNameBoss("Darkbeard [Lv. 1000] [Raid Boss]") then
                AutoKillBoss("Darkbeard [Lv. 1000] [Raid Boss]", not Options["Kill DarkBeard"].Value)
            elseif Options["Summon DarkBeard"].Value and DetectItemPlr("Fist of Darkness") then 
                SummonDarkBeard()
            end
        end)
    end
end)
------------------Tab Observation------------------
function FarmObservation()
    local mob
    for i,v in next,game.workspace.Enemies:GetChildren() do
        if v:IsA("Model") and v.Name == "Marine Commodore"  and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
            mob = v
        end
    end
    if not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
        if mob then
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,mob.HumanoidRootPart.Position,mob.HumanoidRootPart.CFrame*CFrame.new(0,0,50))
        end
        game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, "E", false, game)
        task.wait(3)
        if not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and Options["Hop Server Farm Observation"].Value then 
            HopServer()
        end
    else
        if not mob then
            GetPart = DetectPartSpawnMob("Marine Commodore")
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,GetPart.Position,GetPart.CFrame*CFrame.new(0,60,0))
        else
            repeat task.wait()
                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,mob.HumanoidRootPart.Position,mob.HumanoidRootPart.CFrame*CFrame.new(0,0,3))
            until not Options["Farm Observation"].Value or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
        end
    end
end
spawn(function()
    while wait() do 
        pcall(function()
            if Options["Farm Observation"].Value  then
                FarmObservation()
            end
        end)
    end
end)

------------------Done Tab Misc------------------
Tabs.SeabeastTab:AddDropdown("Select Weapon Seabeast", {
    Title = "Select Weapon",
    Values = {"Melee", "Sword"},
    Multi = false,
    Default = Settings["Select Weapon Seabeast"] or "Melee",
    Callback = function(value)
        SaveSettings("Select Weapon Seabeast",value)
    end
})
Tabs.SeabeastTab:AddDropdown("Select Weapon Seabeast 2", {
    Title = "Select Weapon 2",
    Values = {"Melee", "Sword", "Blox Fruit",},
    Multi = false,
    Default = Settings["Select Weapon Seabeast 2"] or "Blox Fruit",
    Callback = function(value)
        SaveSettings("Select Weapon Seabeast 2",value)
    end
})

Tabs.SeabeastTab:AddDropdown("Select Skill Seabeast", {
    Title = "Select Skill",
    Values = {'Z', 'X',"C","V","F"},
    Multi = true,
    Default = Settings["Select Skill Seabeast"]or {},
    Callback = function(value)
        SaveSettings("Select Skill Seabeast",value)
    end
})
Tabs.SeabeastTab:AddDropdown("Select Skill Seabeast 2", {
    Title = "Select Skill 2",
    Values = {'Z', 'X',"C","V","F"},
    Multi = true,
    Default = Settings["Select Skill Seabeast 2"]or {},
    Callback = function(value)
        SaveSettings("Select Skill Seabeast 2",value)
    end
})
local ZoneSeabeast = {
    ["Zone 1"]  = CFrame.new(-21767.4765625, -4.284062385559082+40, 5815.41259765625),
    ["Zone 2"]  = CFrame.new(-26017.931640625, -4.321531295776367+40, 5657.8837890625),
    ["Zone 3"]  = CFrame.new(-29545.703125, -4.270437240600586+40, 6377.98974609375),
    ["Zone 4"]  = CFrame.new(-33609.7578125, -4.284062385559082+40, 7422.890625),
    ["Zone 5"]  = CFrame.new(-38480.42578125, -4.301093578338623+40, 10350.943359375),
    ["Zone 6"]  = CFrame.new(-32975.9921875, -4.25+40, 25963.7109375)
}

Tabs.SeabeastTab:AddDropdown("Select Zone", {
    Title = "Select Zone",
    Values = {'Zone 1', 'Zone 2',"Zone 3","Zone 4","Zone 5","Zone 6"},
    Multi = false,
    Default = Settings["Select Zone"] or "Zone 6",
    Callback = function(value)
        SaveSettings("Select Zone",value)
    end
})
Tabs.SeabeastTab:AddDropdown("Select Sea Event", {
    Title = "Select Sea Event",
    Values = {'SeaBeast', 'Ship',"Shark","Terrorshark"},
    Multi = true,
    Default = Settings["Select Sea Event"] or {'SeaBeast', 'Ship',"Shark","Terrorshark"},
    Callback = function(value)
        SaveSettings("Select Sea Event",value)
    end
})
Tabs.SeabeastTab:AddToggle("Auto Sea Event", {
    Title = "Auto Sea Event",
    Default = Settings["Auto Sea Event"] or false,
    Callback = function(value)
        SaveSettings("Auto Sea Event",value)
    end
})
Tabs.SeabeastTab:AddToggle("Auto Attack Leviathan", {
    Title = "Auto Attack Leviathan [ Beta ]",
    Default = Settings["Auto Attack Leviathan"] or false,
    Callback = function(value)
        SaveSettings("Auto Attack Leviathan",value)
    end
})
Tabs.SeabeastTab:AddToggle("Reset Teleport Get Boat", {
    Title = "Reset Teleport Get Boat[Only Third Sea]",
    Default = Settings["Reset Teleport Get Boat"] or false,
    Callback = function(value)
        SaveSettings("Reset Teleport Get Boat",value)
    end
})
Tabs.SeabeastTab:AddToggle("Use SKill If Attack Terrorshark", {
    Title = "Use SKill If Attack Terrorshark",
    Default = Settings["Use SKill If Attack Terrorshark"] or false,
    Callback = function(value)
        SaveSettings("Use SKill If Attack Terrorshark",value)
    end
})
Tabs.SeabeastTab:AddSlider("Teleport Y Attack Terrorshark", {
    Title = "Teleport Y Attack Terrorshark",
    Description = "",
    Default = Settings["Teleport Y Attack Terrorshark"] or 50,
    Min = 50,
    Max = 80,
    Rounding = 1,
    Callback = function(value)
        SaveSettings("Teleport Y Attack Terrorshark",value)
    end
})

--[[
Tabs.SeabeastTab:AddToggle("Teleport Safe if have Items Seabeast", {
    Title = "Teleport Safe if have Items",
    Default = Settings["Teleport Safe if have Items"] or false,
    Callback = function(value)
        SaveSettings("Teleport Safe if have Items",value)
    end
})]]

Tabs.SeabeastTab:AddButton({
    Title = "No Fog",
    Description = "",
    Callback = function()
        local c = game.Lighting
        c.FogEnd = 100000
        for i, v in pairs(c:GetDescendants()) do
            if v:IsA("Atmosphere") then
                v:Destroy()
            end
        end
    end
})
Tabs.SeabeastTab:AddToggle("Fly Boat", {
    Title = "Fly Boat",
    Default = false,
    Callback = function(value)
    end
})
Tabs.SeabeastTab:AddSlider("Value Speed Boat", {
    Title = "Value Speed Boat",
    Description = "",
    Default = Settings["Value Speed Boat"] or 200,
    Min = 120,
    Max = 500,
    Rounding = 1,
    Callback = function(value)
        SaveSettings("Value Speed Boat",value)
    end
})
Tabs.SeabeastTab:AddToggle("Change Speed Boat", {
    Title = "Change Speed Boat",
    Default = Settings["Change Speed Boat"] or false,
    Callback = function(value)
        SaveSettings("Change Speed Boat",value)
    end
})

------------------Auto Sea Beast------------------
function CheckCDSkill(x,Value)
    for i,v in next,game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[x]:GetChildren() do 
        if v:IsA("Frame")  then
            if v.Name ~= "Template" and Value[v.Name] and v.Title.TextColor3 == Color3.new(1, 1, 1) and v.Cooldown.Size == UDim2.new(0, 0, 1, -1) or v.Cooldown.Size == UDim2.new(1, 0, 1, -1) then
                return v
            end
        end
    end
end

local tableprirate = {
    "PirateBasic",
    "PirateBrigade",
    "FishBoat"
}

function autoattackSeabeast(value)
    if game.Players.LocalPlayer.Character.Stun.Value == 0 then
        local p13 = ret.activeController
        local bladehit =
        require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
        game.Players.LocalPlayer.Character,{game.Players.LocalPlayer.Character.HumanoidRootPart},100)
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 and  p13.blades and p13.blades[1] then
            coroutine.wrap(function()
                if p13.hitboxMagnitude then p13.hitboxMagnitude = 100 end
                pcall(p13.attack, p13)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",p13.blades[1].Parent.Parent.Name)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 1, "")
            end)()
        end
    end
end
local TableFish = {
    "Fish Crew Member",
    "Shark",
    "Terrorshark",
    "Piranha"
}
function checkseabeast()
        for i,v in next,game:GetService("Workspace").SeaBeasts:GetChildren() do
            if v.Name == "SeaBeast1" then
                local s = v.HealthBBG.Frame.TextLabel.Text
                local x = s:gsub("/%d+,%d+","")
                local a = v.HealthBBG.Frame.TextLabel.Text
                local b 
                if string.find(x, ",") then
                    b = a:gsub("%d+,%d+/","")
                else
                    b = a:gsub("%d+/","")
                end
                local c = b:gsub(",","")
                if tonumber(c) >= 90000 and plr:DistanceFromCharacter(v.HumanoidRootPart.Position) < 2000 then
                    return v
                end
            end
        end
        for i,v in next,game:GetService("Workspace").Enemies:GetChildren() do
            if  v:FindFirstChild("Health")  and v.Health.Value > 0 and v:FindFirstChild("Engine") and plr:DistanceFromCharacter(v.Engine.Position) < 2000 then
                return v
            end
        end
        local DetectFish = DetectMob(TableFish)
        if DetectFish and plr:DistanceFromCharacter(DetectFish.HumanoidRootPart.Position) < 2000 then 
            return DetectFish 
        end
    return false
end

function TeleportSeabeast(x)
    if x:FindFirstChild("Engine") then 
        getgenv().psskill = x.Engine.CFrame*CFrame.new(0,-25,0)
        toTarget(plr.Character.HumanoidRootPart.Position,x.Engine.Position,x.Engine.CFrame*CFrame.new(0,-15,0))
        return
    else
        getgenv().psskill = x.HumanoidRootPart.CFrame
    end
    if x.Name == "SeaBeast1" then 
        local a = Vector3.new(0,x:FindFirstChild("HumanoidRootPart").Position.Y,0) 
        local b = Vector3.new(0,game:GetService("Workspace").Map["WaterBase-Plane"].Position.Y,0)
        if (a-b).Magnitude <= 175 then
            toTarget(plr.Character.HumanoidRootPart.Position,x.HumanoidRootPart.Position,x.HumanoidRootPart.CFrame*CFrame.new(0,300,50))
        else
            toTarget(plr.Character.HumanoidRootPart.Position,Vector3.new(x.HumanoidRootPart.Position.X,game:GetService("Workspace").Map["WaterBase-Plane"].Position.Y,x.HumanoidRootPart.Position.Z),CFrame.new(x.HumanoidRootPart.Position.X,game:GetService("Workspace").Map["WaterBase-Plane"].Position.Y+200,x.HumanoidRootPart.Position.Z))
        end
    else
        local Distance = 50 
        if x.Name == "Terrorshark" then 
            Distance = Options["Teleport Y Attack Terrorshark"].Value
        end
        toTarget(plr.Character.HumanoidRootPart.Position,x.HumanoidRootPart.Position,x.HumanoidRootPart.CFrame*CFrame.new(0,Distance,0))
    end
end
function UseSkillSeabeast(x)
    local Distance = 200
    if x.Name == "SeaBeast1" then 
        Distance = 500
    end
    if x.Name == "Terrorshark" and Options["Use SKill If Attack Terrorshark"].Value then 
        Distance = 800
    end
    local namexczxc 
    if x:FindFirstChild("Engine") then 
        namexczxc = x.Engine.Position
    else
        namexczxc = x.HumanoidRootPart.Position
    end
    if plr:DistanceFromCharacter(namexczxc) <= Distance  then 
        local NameWpSeabeast1 = NameWeapon(Options["Select Weapon Seabeast"].Value)
        local NameWpSeabeast2 = NameWeapon(Options["Select Weapon Seabeast 2"].Value)
        local DetectFrame = game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills
        if not DetectFrame:FindFirstChild(NameWpSeabeast1) 
        or not DetectFrame:FindFirstChild(NameWpSeabeast2) then 
            equiptool(NameWpSeabeast1)
            wait(0.2)
            equiptool(NameWpSeabeast2)
            return 
        end
        local NameSkill = CheckCDSkill(NameWpSeabeast1,Options["Select Skill Seabeast"].Value) or CheckCDSkill(NameWpSeabeast2,Options["Select Skill Seabeast 2"].Value)
        if NameSkill then
            equiptool(NameSkill.Parent.Name)
            game:GetService("VirtualInputManager"):SendKeyEvent(true, NameSkill.Name, false, game)
            task.wait(0.5)
            game:GetService("VirtualInputManager"):SendKeyEvent(false, NameSkill.Name, false, game)
        end
    end
end
------------------Buy Boat------------------
function checkboat()
    for i,v in next,game:GetService("Workspace").Boats:GetChildren() do
        if v:IsA("Model") then
            if v:FindFirstChild("Owner") and  tostring(v.Owner.Value) == plr.Name and v.Humanoid.Value > 0 then
                return v
            end
        end
    end
    return false
end

function BuyBoatAndTeleBoat()
    local Boat = checkboat()
    if not Boat then
        local PositionGetBoat = CFrame.new(-13.488054275512695, 10.311711311340332, 2927.692)
        if game.PlaceId == 7449423635 then
            PositionGetBoat = CFrame.new(-16204.0810546875, 9.0863618850708, 479.2259521484375)
        end
        if (PositionGetBoat.Position-plr.Character.HumanoidRootPart.Position).Magnitude > 8 then
            if (PositionGetBoat.Position-plr.Character.HumanoidRootPart.Position).Magnitude > 1000  and Options["Reset Teleport Get Boat"].Value and game.PlaceId == 7449423635 then 
                if game:GetService("Players").LocalPlayer.Data.LastSpawnPoint.Value == "Tiki" then
                    plr.Character.Humanoid.Health = 0
                    return 
                end
                if getgenv().Tween then
                    getgenv().Tween:Pause()
                    getgenv().Tween:Cancel()
                end
                plr.Character.LastSpawnPoint.Disabled = true
                local TimeReset = tick()
                repeat task.wait()
                    plr.Character.LastSpawnPoint.Disabled = true
                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("SetLastSpawnPoint", "Tiki")
                    plr.Character.HumanoidRootPart.CFrame = PositionGetBoat
                    if tick()-TimeReset >= 3 and plr.Character.Humanoid.Health > 0 then
                        plr.Character.Humanoid.Health = 0
                        task.wait()
                        TimeReset = tick()
                    end
                until   game:GetService("Players").LocalPlayer.Data.LastSpawnPoint.Value == "Tiki" or not Options["Reset Teleport Get Boat"].Value
            end
            toTarget(plr.Character.HumanoidRootPart.Position,PositionGetBoat.Position,PositionGetBoat)
        else
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat","PirateGrandBrigade")
        end
    else
        local Distance = 100
        local PositionWaitSea = CFrame.new(28.4108+20, 1.2327+40, 3679.99+10)
        if game.PlaceId == 7449423635 then
            PositionWaitSea =  ZoneSeabeast[Options["Select Zone"].Value]
            Distance = 1000
        end
        if (Boat.VehicleSeat.Position-PositionWaitSea.Position).Magnitude > Distance then 
            Boat.VehicleSeat.CFrame = PositionWaitSea
        else
            if not plr.Character.Humanoid.Sit then 
                toTarget(plr.Character.HumanoidRootPart.Position,Boat.VehicleSeat.Position,Boat.VehicleSeat.CFrame)
            end
        end
    end
end
function TeleportBoat()
    if game.PlaceId == 7449423635 and checkboat() then
        PositionWaitSea = ZoneSeabeast[Options["Select Zone"].Value]
        checkboat().VehicleSeat.CFrame = PositionWaitSea*CFrame.new(0,0,1000)
    end
end
function checkSpeedboat()
    for i,v in next,game:GetService("Workspace").Boats:GetChildren() do
        if v:IsA("Model") then
            if v:FindFirstChild("VehicleSeat") and v.VehicleSeat.MaxSpeed+ 1 < Options["Value Speed Boat"].Value and v:FindFirstChild("Humanoid") and  v.Humanoid.Value > 0 then
                return v
            end
        end
    end
    return false
end
function ChangeSpeedBoat()
    local v = checkSpeedboat()
    if v then 
        v.VehicleSeat.MaxSpeed = Options["Value Speed Boat"].Value
        v.VehicleSeat.TurnSpeed = Options["Value Speed Boat"].Value 
    end
end
function TeleportYIngore(v)
    if not Options["Select Sea Event"].Value["SeaBeast"] and v.Name == "SeaBeast1" then 
        return true 
    elseif not Options["Select Sea Event"].Value["Ship"] and v:FindFirstChild("Engine") then 
        return true
    elseif Options["Select Sea Event"].Value["Terrorshark"] and v.Name == "Terrorshark" then 
        return false
    elseif not Options["Select Sea Event"].Value["Shark"] and table.find(TableFish,v.Name) then 
        return true 
    end
end
function AutoSeabeast()
    local v = checkseabeast()
    if not v then 
        BuyBoatAndTeleBoat()
    else
        if TeleportYIngore(v) then
            local time = tick()
            PositionWaitSea = ZoneSeabeast[Options["Select Zone"].Value]*CFrame.new(0,0,6000)
            repeat wait()
                toTarget(plr.Character.HumanoidRootPart.Position,PositionWaitSea.Position,PositionWaitSea)
                checkboat().VehicleSeat.CFrame = PositionWaitSea
            until tick()-time >= 5 or not Options["Auto Sea Event"].Value
            return 
        end           
        repeat task.wait()
            TeleportBoat()
            TeleportSeabeast(v)
            if v:FindFirstChildWhichIsA("Humanoid") then
                if Options["Use SKill If Attack Terrorshark"].Value then 
                    UseSkillSeabeast(v)
                else
                    equiptool(NameWeapon(Options["Select Weapon Seabeast"].Value))
                end
                if plr.Character:FindFirstChild("HumanoidRootPart") and (plr.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).Magnitude < 100 then
                    autoattackSeabeast() 
                    task.wait(Options["Select Speed Attack"].Value)
                end
            else
                UseSkillSeabeast(v)
            end
        until not v or not v.Parent  or not Options["Auto Sea Event"].Value or (v:FindFirstChild("Health") and v.Health.Value == 0) or (v:FindFirstChildWhichIsA("Humanoid") and v.Humanoid.Health == 0)
    end
end
function DetectLeviathan(path)
    for i,v in next,path:GetChildren() do
        if v.Name == "Leviathan Segment" and v.Health.Value > 0 then
            return v 
        end
    end
    for i,v in next,path:GetChildren() do
        if v.Name == "Leviathan Tail" and v.Health.Value > 0 then
            return v 
        end
    end
end

function AutoAttackLeviathan()
    local v = DetectLeviathan(game.workspace.SeaBeasts) or DetectLeviathan(game.workspace.SeaEvents)
    repeat task.wait()
        getgenv().psskill = v.HumanoidRootPart.CFrame
        toTarget(plr.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame*CFrame.new(0,30,10))
        UseSkillSeabeast(v)
    until not v or not v.Parent  or (v:FindFirstChild("Health") and v.Health.Value > 0) or not Options["Auto Attack Leviathan"].Value 
end

spawn(function()
    while wait() do 
        pcall(function()
            if Options["Auto Sea Event"].Value then 
                AutoSeabeast()
            end    
        end)
    end
end)
spawn(function()
    while wait() do 
        pcall(function()
            if Options["Auto Attack Leviathan"].Value then 
                AutoAttackLeviathan()
            end    
        end)
    end
end)

spawn(function()
    while wait() do 
        pcall(function()
            if Options["Change Speed Boat"].Value then 
                ChangeSpeedBoat()
            end    
        end)
    end
end)
local IsOnMobile = table.find({Enum.Platform.IOS, Enum.Platform.Android}, game:GetService("UserInputService"):GetPlatform())
FLYING = false
QEfly = true
iyflyspeed = 1
vehicleflyspeed = 5
function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end
function sFLY(vfly)
	repeat wait() until plr and plr.Character and getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
	repeat wait() until IYMouse
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end

	local T = getRoot(plr.Character)
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local SPEED = 0

	local function FLY()
		FLYING = true
		local BG = Instance.new('BodyGyro')
		local BV = Instance.new('BodyVelocity')
		BG.P = 9e4
		BG.Parent = T
		BV.Parent = T
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		task.spawn(function()
			repeat wait()
				if not vfly and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
					Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
				end
				if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
					SPEED = 50
				elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
					SPEED = 0
				end
				if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				else
					BV.velocity = Vector3.new(0, 0, 0)
				end
				BG.cframe = workspace.CurrentCamera.CoordinateFrame
			until not FLYING
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:Destroy()
			BV:Destroy()
			if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
				Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
			end
		end)
	end
	flyKeyDown = IYMouse.KeyDown:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 's' then
			CONTROL.B = - (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 'a' then
			CONTROL.L = - (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 'd' then 
			CONTROL.R = (vfly and vehicleflyspeed or iyflyspeed)
		elseif QEfly and KEY:lower() == 'e' then
			CONTROL.Q = (vfly and vehicleflyspeed or iyflyspeed)*2
		elseif QEfly and KEY:lower() == 'q' then
			CONTROL.E = -(vfly and vehicleflyspeed or iyflyspeed)*2
		end
		pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
	end)
	flyKeyUp = IYMouse.KeyUp:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		elseif KEY:lower() == 'e' then
			CONTROL.Q = 0
		elseif KEY:lower() == 'q' then
			CONTROL.E = 0
		end
	end)
	FLY()
end
function randomStringfly()
	local length = math.random(10,20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end

function NOFLY()
	FLYING = false
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
	if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
		Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end
local velocityHandlerName = randomStringfly()
local gyroHandlerName = randomStringfly()
local mfly1
local mfly2
local unmobilefly = function(speaker)
	pcall(function()
		FLYING = false
		local root = getRoot(speaker.Character)
		root:FindFirstChild(velocityHandlerName):Destroy()
		root:FindFirstChild(gyroHandlerName):Destroy()
		speaker.Character:FindFirstChildWhichIsA("Humanoid").PlatformStand = false
		mfly1:Disconnect()
		mfly2:Disconnect()
	end)
end
local mobilefly = function(speaker, vfly)
	unmobilefly(speaker)
	FLYING = true

	local root = getRoot(speaker.Character)
	local camera = workspace.CurrentCamera
	local v3none = Vector3.new()
	local v3zero = Vector3.new(0, 0, 0)
	local v3inf = Vector3.new(9e9, 9e9, 9e9)

	local controlModule = require(speaker.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule"))
	local bv = Instance.new("BodyVelocity")
	bv.Name = velocityHandlerName
	bv.Parent = root
	bv.MaxForce = v3zero
	bv.Velocity = v3zero

	local bg = Instance.new("BodyGyro")
	bg.Name = gyroHandlerName
	bg.Parent = root
	bg.MaxTorque = v3inf
	bg.P = 1000
	bg.D = 50

	mfly1 = speaker.CharacterAdded:Connect(function()
		local bv = Instance.new("BodyVelocity")
		bv.Name = velocityHandlerName
		bv.Parent = root
		bv.MaxForce = v3zero
		bv.Velocity = v3zero

		local bg = Instance.new("BodyGyro")
		bg.Name = gyroHandlerName
		bg.Parent = root
		bg.MaxTorque = v3inf
		bg.P = 1000
		bg.D = 50
	end)

	mfly2 = game:GetService('RunService').RenderStepped:Connect(function()
		root = getRoot(speaker.Character)
		camera = workspace.CurrentCamera
		if speaker.Character:FindFirstChildWhichIsA("Humanoid") and root and root:FindFirstChild(velocityHandlerName) and root:FindFirstChild(gyroHandlerName) then
			local humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
			local VelocityHandler = root:FindFirstChild(velocityHandlerName)
			local GyroHandler = root:FindFirstChild(gyroHandlerName)

			VelocityHandler.MaxForce = v3inf
			GyroHandler.MaxTorque = v3inf
			if not vfly then humanoid.PlatformStand = true end
			GyroHandler.CFrame = camera.CoordinateFrame
			VelocityHandler.Velocity = v3none

			local direction = controlModule:GetMoveVector()
			if direction.X > 0 then
				VelocityHandler.Velocity = VelocityHandler.Velocity + camera.CFrame.RightVector * (direction.X * ((vfly and vehicleflyspeed or iyflyspeed) * 50))
			end
			if direction.X < 0 then
				VelocityHandler.Velocity = VelocityHandler.Velocity + camera.CFrame.RightVector * (direction.X * ((vfly and vehicleflyspeed or iyflyspeed) * 50))
			end
			if direction.Z > 0 then
				VelocityHandler.Velocity = VelocityHandler.Velocity - camera.CFrame.LookVector * (direction.Z * ((vfly and vehicleflyspeed or iyflyspeed) * 50))
			end
			if direction.Z < 0 then
				VelocityHandler.Velocity = VelocityHandler.Velocity - camera.CFrame.LookVector * (direction.Z * ((vfly and vehicleflyspeed or iyflyspeed) * 50))
			end
		end
	end)
end
spawn(function()
    while wait() do 
        if Options["Fly Boat"].Value then 
            
                if plr.Character.Humanoid.Sit then
                    if not IsOnMobile then
                        NOFLY()
                        wait()
                        sFLY(true)
                    else
                        mobilefly(plr, true)
                    end
                    repeat wait() until  not Options["Fly Boat"].Value or not plr.Character.Humanoid.Sit
                    if not IsOnMobile then NOFLY() else unmobilefly(plr) end
                end
            
        end
    end
end)

------------------Done Tab Seabeast------------------

Tabs.DFRaidMain:AddParagraph({
    Title = "Devil Fruit",
    Content = "....",
})
Tabs.DFRaidMain:AddToggle("Auto Random Fruit", {
    Title = "Auto Random Fruit",
    Default = Settings["Auto Random Fruit"] or false,
    Callback = function(value)
        SaveSettings("Auto Random Fruit",value)
    end
})
Tabs.DFRaidMain:AddToggle("Auto Store Fruit", {
    Title = "Auto Store Fruit",
    Default = Settings["Auto Store Fruit"] or false,
    Callback = function(value)
        SaveSettings("Auto Store Fruit",value)
    end
})
getgenv().tablefruitausea3 = {}
local whitelistedfruit = {}
local TableDevilFruit = {}
for i,v in next,game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits", game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop:GetAttribute("Shop2")) do
    if v.Price >= 1000000 then
        table.insert(whitelistedfruit,string.split(v.Name,"-")[1].." Fruit")
        getgenv().tablefruitausea3[v.Name] = v.Price
    end
    table.insert(TableDevilFruit,v.Name)
end

Tabs.DFRaidMain:AddDropdown("Blox Fruit Sniper Shop", {
    Title = "Blox Fruit Sniper Shop",
    Values = TableDevilFruit,
    Multi = true,
    Default = Settings["Blox Fruit Sniper Shop"] or {},
    Callback = function(value)
        SaveSettings("Blox Fruit Sniper Shop",value)
    end
})
Tabs.DFRaidMain:AddToggle("Buy Blox Fruit Sniper Shop", {
    Title = "Buy Blox Fruit Sniper Shop",
    Default = Settings["Buy Blox Fruit Sniper Shop"] or false,
    Callback = function(value)
        SaveSettings("Buy Blox Fruit Sniper Shop",value)
    end
})
Tabs.DFRaidMain:AddToggle("Esp Fruit", {
    Title = "Esp Fruit",
    Default = Settings["Esp Fruit"] or false,
    Callback = function(value)
        SaveSettings("Esp Fruit",value)
    end
})

Tabs.DFRaidMain:AddToggle("Teleport To Fruit", {
    Title = "Teleport To Fruit",
    Default = Settings["Teleport To Fruit"] or false,
    Callback = function(value)
        SaveSettings("Teleport To Fruit",value)
    end
})
Tabs.DFRaidMain:AddParagraph({
    Title = "Raids",
    Content = "....",
})
local tableraid = {}
for i,v in next,require(game.ReplicatedStorage.Raids) do
    for i1,v1 in next,v do
        table.insert(tableraid,v1)
    end
end
Tabs.DFRaidMain:AddDropdown("Select Raid", {
    Title = "Select Raid",
    Values = tableraid,
    Multi = false,
    Default = Settings["Select Raid"] or "",
    Callback = function(value)
        SaveSettings("Select Raid",value)
    end
})
Tabs.DFRaidMain:AddToggle("Get Fruit In Store Low Beli", {
    Title = "Get Fruit In Store Low Beli",
    Default = Settings["Get Fruit In Store Low Beli"] or false,
    Callback = function(value)
        SaveSettings("Get Fruit In Store Low Beli",value)
    end
})
Tabs.DFRaidMain:AddToggle("Auto Raid", {
    Title = "Auto Raid",
    Default = Settings["Auto Raid"] or false,
    Callback = function(value)
        SaveSettings("Auto Raid",value)
    end
})
Tabs.DFRaidMain:AddToggle("Auto Hop Server Raid", {
    Title = "Auto Hop Server Raid",
    Default = Settings["Auto Hop Server Raid"] or false,
    Callback = function(value)
        if value and not  Options["Auto Raid"].Value then 
            Options["Auto Raid"]:SetValue(true)
        end
        SaveSettings("Auto Hop Server Raid",value)
    end
})
Tabs.DFRaidMain:AddToggle("Awake Devil Fruit", {
    Title = "Awake Devil Fruit",
    Default = Settings["Awake Devil Fruit"] or false,
    Callback = function(value)
        SaveSettings("Awake Devil Fruit",value)
    end
})

------------------Devil Fruit------------------
function RandomFruit()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
end
function getbackpack()
    mybackpack = {}
    for i,v in next, game.Players.LocalPlayer.Backpack:GetChildren() do
        if v:IsA("Tool") and table.find(whitelistedfruit,v.Name) then
            table.insert(mybackpack,v.Name)
        end
    end
    for i1,v1 in next, game.Players.LocalPlayer.Character:GetChildren() do
        if v1:IsA("Tool") and table.find(whitelistedfruit,v1.Name) then
            table.insert(mybackpack,v1.Name)
        end
    end
    return mybackpack
end
function CheckFruitplr()
    local name
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if string.find(v.Name,"Fruit")  then
            name = v.Name
        end
    end
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if string.find(v.Name,"Fruit")  then
            name = v.Name
        end
    end
    return name
end
function getfruitstore(x)
    local max = math.huge
    local name 
    for i,v in next,game.ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory") do
        if v.Type == "Blox Fruit" then
            if not x then
                for i2, v2 in pairs(getgenv().tablefruitausea3) do
                    if v.Name == i2 then
                        if tonumber(v2) < tonumber(max) then
                            max = v2
                            name = i2
                        end
                    end
                end
            else
                if not getgenv().tablefruitausea3[v.Name] then 
                    return v.Name
                end
            end
        end
    end
    return name
end
function DetectCountDF()
    if #getbackpack() > 1 then 
        for i,v in next,getbackpack() do 
            for i1,v1 in next,game.ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory") do
                if v1.Type == "Blox Fruit" and ((v1.Name == v and v1.Count < game.Players.LocalPlayer.Data.FruitCap.Value) or not v1.Name == v) then
                    return true 
                end
            end
        end
    end
end
function StoreFruit(path)
    for i,v in pairs(path:GetChildren()) do
        if string.find(v.Name,"Fruit") and not v:FindFirstChild("Ignored")  then
            local test  = string.gsub(v.Name, " Fruit","")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",string.gsub(v.Name, " Fruit","-"..test),path:FindFirstChild(v.Name))
            local Ignored = Instance.new("IntValue", v)
            Ignored.Name = "Ignored"
            wait(2)
        end
    end
end
function DetectFruitShop()
    for i,v in next,game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits", game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop:GetAttribute("Shop2")) do
        if Options["Blox Fruit Sniper Shop"].Value[v.Name] then
            if v.OnSale then
                return v.Name 
            end
        end
    end
end
function BuyFruitShop()
    local Fruit = DetectFruitShop()
    if not Options["Blox Fruit Sniper Shop"].Value[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value]   and Fruit then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit",Fruit)
    end
end
function GetEspFruit()
    for i,v in next,game.Workspace:GetChildren() do
        if (v:IsA("Tool") or v:IsA("Model")) and string.find(v.Name, "Fruit") and not v.Handle:FindFirstChild("Ignored") then
            return v
        end
    end
end
function EspFruit()
    local v = GetEspFruit()
    if v then
        local Ignored = Instance.new("IntValue", v.Handle)
        Ignored.Name = "Ignored"
        local Text = Drawing.new("Text")
        Text.Visible = false
        Text.Transparency = 1
        Text.Text = v.Name
        Text.Color = Color3.fromRGB(255, 255, 255)
        Text.Size = 20
        Text.Outline = true
        Text.OutlineColor = Color3.fromRGB(0, 0, 0)
        Text.Center = true
        Text.Font = 1
        spawn(function()
            repeat task.wait()
                if v:FindFirstChild("Handle") then
                    local Pos, OnScreen =  game.workspace.CurrentCamera:WorldToViewportPoint(v.Handle.Position)
                    if OnScreen then
                        Text.Text = v.Name .. " (" .. math.round(plr:DistanceFromCharacter(v.Handle.Position)) .. ")"
                        Text.Position = Vector2.new(Pos.X, Pos.Y - 20)
                        Text.Visible = true
                    else
                        Text.Visible = false
                    end
                end
            until not v or not v.Parent or not game.Workspace:FindFirstChild(v.Name)
            or not Options["Esp Fruit"].Value
            Text:Remove()
            if v then
                Ignored:Destroy()
            end
        end)
    end
end
function GetPathFruit()
    for i,v in next,game.Workspace:GetChildren() do
        if v:IsA("Tool") or v:IsA("Model") and string.find(v.Name, "Fruit") then
            return v
        end
    end
end
function TeleportToFruit()
    local Fruit = GetPathFruit()
    if Fruit then
        if (Fruit.Handle.Position-plr.Character.HumanoidRootPart.Position).Magnitude <= 5 then 
            firetouchinterest(Fruit.Handle, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
            firetouchinterest(Fruit.Handle, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
        else          
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,Fruit.Handle.Position,Fruit.Handle.CFrame,true)
        end
    end
end
spawn(function()
    while wait() do 
        pcall(function()
            if Options["Auto Random Fruit"].Value then 
                RandomFruit()
            end
        end)
    end
end)
spawn(function()
    while wait() do 
        pcall(function()
            if Options["Auto Store Fruit"].Value and not DetectCountDF()  then 
                StoreFruit(plr.Backpack)
                StoreFruit(plr.Character)
            end
        end)
    end
end)
spawn(function()
    while wait() do 
        pcall(function()
            if Options["Buy Blox Fruit Sniper Shop"].Value then 
                BuyFruitShop()
            end
        end)
    end
end)
spawn(function()
    while wait() do 
        pcall(function()
            if Options["Esp Fruit"].Value then 
                EspFruit()
            end
        end)
    end
end)

spawn(function()
    while wait() do 
        pcall(function()
            if Options["Teleport To Fruit"].Value then 
                TeleportToFruit()
            end
        end)
    end
end)
------------------Auto Raid------------------
spawn(function()
    while task.wait() do 
        pcall(function()
            for i,v in pairs(plr.PlayerGui.Notifications:GetDescendants()) do
                if v:IsA("TextLabel") then
                    if string.find(v.Text,"Island #1")  then
                        getgenv().island2 = true
                    end
                    if string.find(v.Text,"Island #2")  then
                        getgenv().island3 = true
                    end
                    if string.find(v.Text,"Island #3")  then 
                        getgenv().island4 = true
                    end
                    if string.find(v.Text,"Island #4")  then 
                        getgenv().island5 = true
                    end
                    if string.find(v.Text,"1000")  then
                        getgenv().buychip = true
                        wait(0.5)
                        v:Destroy()
                    end 
                end
            end
            if not  plr.PlayerGui.Main.Timer.Visible  then 
                getgenv().island1 = true
                getgenv().island2 = false
                getgenv().island3 = false
                getgenv().island4 = false
                getgenv().island5 = false
            end
        end)
    end
end)
function ClosestPartIsland(xx)
    local dist = math.huge
    local name
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        if v:IsA("Part") and v.Name == xx then
            local conconcac = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Position).Magnitude
            if conconcac < dist then
                dist = conconcac
                name = v
            end
        end
    end
    return name
end
getgenv().buychip = true
function AutoRaids(x)
    if   getgenv().buychip  and plr.Data.Level.Value >= 1100  and not plr.PlayerGui.Main.Timer.Visible and not DetectItemPlr("Special Microchip") then
        if not CheckFruitplr()   and getfruitstore(true) and Options["Get Fruit In Store Low Beli"].Value then 
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",getfruitstore(true))
        end
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaidsNpc", "Check")
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaidsNpc", "Select",x or "Flame")
        wait(3)
    end
    if DetectItemPlr("Special Microchip")  then
        getgenv().buychip = false
        local Path = game.PlaceId == 4442272183 and  game:GetService("Workspace").Map["CircleIsland"].RaidSummon2.Button.Main
        --local CFrameclick = CFrame.new(0,0,0)
        if game.PlaceId == 7449423635 then
            Path = game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main
        end
        fireclickdetector(Path.ClickDetector)
    end
    if plr.PlayerGui.Main.Timer.Visible then
        if getgenv().island5 then
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,ClosestPartIsland("Island 5").Position,ClosestPartIsland("Island 5").CFrame * CFrame.new(0,60,0))
        elseif getgenv().island4 then
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,ClosestPartIsland("Island 4").Position,ClosestPartIsland("Island 4").CFrame * CFrame.new(0,60,0))
        elseif getgenv().island3 then
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,ClosestPartIsland("Island 3").Position,ClosestPartIsland("Island 3").CFrame * CFrame.new(0,60,0))
        elseif getgenv().island2 then
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,ClosestPartIsland("Island 2").Position,ClosestPartIsland("Island 2").CFrame * CFrame.new(0,60,0))
        elseif getgenv().island1 then
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,ClosestPartIsland("Island 1").Position,ClosestPartIsland("Island 1").CFrame * CFrame.new(0,60,0))
        end
    end 
    if   plr.PlayerGui.Main.Timer.Visible then
        for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position-plr.Character.HumanoidRootPart.Position).Magnitude < 500  and v.Humanoid.Health > 0 then
                v.Humanoid.Health = 0
            end
        end
    end  
end

spawn(function()
   while wait() do 
        pcall(function()
            if  Options["Auto Raid"].Value then
                if Options["Auto Hop Server Raid"].Value then 
                    if GetPathFruit()  and getgenv().buychip then
                        if (GetPathFruit().Handle.Position-plr.Character.HumanoidRootPart.Position).Magnitude <= 5 then 
                            firetouchinterest(GetPathFruit().Handle, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
                            firetouchinterest(GetPathFruit().Handle, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
                        else          
                            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,GetPathFruit().Handle.Position,GetPathFruit().Handle.CFrame)
                        end 
                        return 
                    end
                end
                AutoRaids(Options["Select Raid"].Value)
                if Options["Auto Hop Server Raid"].Value then  
                    if not CheckFruitplr() and getgenv().buychip then  
                        HopServer()
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while task.wait() do
        if Options["Awake Devil Fruit"].Value then
            pcall(function()
                local args = {
                    [1] = "Awakener",
                    [2] = "Check"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken")
            end)
        end
    end
end)

------------------Done Tab RaidDF------------------


Tabs.RaceMain:AddParagraph({
    Title = "Race V2-V3",
    Content = "....",
})

Tabs.RaceMain:AddToggle("Auto Upgrade Race V2-V3", {
    Title = "Auto Upgrade Race V2-V3",
    Default = Settings["Auto Upgrade Race V2-V3"] or false,
    Callback = function(value)
        SaveSettings("Auto Upgrade Race V2-V3",value)
    end
})

Tabs.RaceMain:AddParagraph({
    Title = "Race V4",
    Content = "....",
})

Tabs.RaceMain:AddButton({
    Title = "No Fog",
    Description = "",
    Callback = function()
        local c = game.Lighting
        c.FogEnd = 100000
        for i, v in pairs(c:GetDescendants()) do
            if v:IsA("Atmosphere") then
                v:Destroy()
            end
        end
    end
})
getgenv().NoclipButton = false
Tabs.RaceMain:AddButton({
    Title = "Teleport Acient Clock",
    Description = "",
    Callback = function()
        local Prompt = game:GetService("Workspace").Map["Temple of Time"]:FindFirstChild("Prompt")
        getgenv().NoclipButton = true
        repeat task.wait()
            toTarget(plr.Character.HumanoidRootPart.Position,Prompt.Position,Prompt.CFrame)
        until (Prompt.Position-plr.Character.HumanoidRootPart.Position).Magnitude < 8
        getgenv().NoclipButton = false
    end
})
Tabs.RaceMain:AddToggle("Auto Buy Gear", {
    Title = "Auto Buy Gear",
    Default = Settings["Auto Buy Gear"] or false,
    Callback = function(value)
        SaveSettings("Auto Buy Gear",value)
    end
})

Tabs.RaceMain:AddToggle("Auto Choose Gears", {
    Title = "Auto Choose Gears",
    Default = Settings["Auto Choose Gears"] or false,
    Callback = function(value)
        SaveSettings("Auto Choose Gears",value)
    end
})
Tabs.RaceMain:AddToggle("Auto Pull Lever", {
    Title = "Auto Pull Lever",
    Default = Settings["Auto Pull Lever"] or false,
    Callback = function(value)
        SaveSettings("Auto Pull Lever",value)
    end
})
function DetectNameMulti()
    local mmb = {Settings["Select Player Multi"] or nil,Settings["Select Player Multi 2"] or nil}
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Name ~= plr.Name and not table.find(mmb,v.Name) then 
            table.insert(mmb,v.Name)
        end
    end
    return mmb
end

Tabs.RaceMain:AddDropdown("Select Player Multi", {
    Title = "Select Player Multi",
    Values = DetectNameMulti(),
    Multi = false,
    Default = Settings["Select Player Multi"] or "",
    Callback = function(value)
        SaveSettings("Select Player Multi",value)
    end
})
Tabs.RaceMain:AddDropdown("Select Player Multi 2", {
    Title = "Select Player Multi 2",
    Values = DetectNameMulti(),
    Multi = false,
    Default = Settings["Select Player Multi 2"] or "",
    Callback = function(value)
        SaveSettings("Select Player Multi 2",value)
    end
})
Tabs.RaceMain:AddButton({
    Title = "Refresh List Player",
    Description = "",
    Callback = function()
        Options["Select Player Multi"]:SetValues(DetectNameMulti())
        Options["Select Player Multi 2"]:SetValues(DetectNameMulti())
    end
})
Tabs.RaceMain:AddToggle("Multi Trial", {
    Title = "Multi Trial",
    Default = Settings["Multi Trial"] or false,
    Callback = function(value)
        SaveSettings("Multi Trial",value)
    end
})
Tabs.RaceMain:AddToggle("Auto Reset Character", {
    Title = "Auto Reset Character",
    Default = Settings["Auto Reset Character"] or false,
    Callback = function(value)
        SaveSettings("Auto Reset Character",value)
    end
})

Tabs.RaceMain:AddToggle("Auto Trial", {
    Title = "Auto Trial",
    Default = Settings["Auto Trial"] or false,
    Callback = function(value)
        SaveSettings("Auto Trial",value)
    end
})
Tabs.RaceMain:AddToggle("Hop Server [Trial Or Pull Lever]", {
    Title = "Hop Server [Trial Or Pull Lever]",
    Default = Settings["Hop Server [Trial Or Pull Lever]"] or false,
    Callback = function(value)
        SaveSettings("Hop Server [Trial Or Pull Lever]",value)
    end
})

Tabs.RaceMain:AddToggle("Auto Turn On Race V3", {
    Title = "Auto Turn On Race V3",
    Default = Settings["Auto Turn On Race V3"] or false,
    Callback = function(value)
        SaveSettings("Auto Turn On Race V3",value)
    end
})

Tabs.RaceMain:AddToggle("Auto Kill Player When complete Trial", {
    Title = "Auto Kill Player When complete Trial",
    Default = Settings["Auto Kill Player When complete Trial"] or false,
    Callback = function(value)
        SaveSettings("Auto Kill Player When complete Trial",value)
    end
})



function CheckRace()
    local v113 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
    local v111 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "1")
    if game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
        return  " V4"
    end
    if v113 == -2 then
        return " V3"
    end
    if v111 == -2 then
        return " V2"
    end
    return " V1"
end
function checkplatebarito()
    local a  
    if game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate1.BrickColor == BrickColor.new("Sand yellow") then 
        a = "Plate1"
    elseif game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate2.BrickColor == BrickColor.new("Sand yellow") then
        a = "Plate2"
    elseif game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate3.BrickColor == BrickColor.new("Sand yellow") then
        a = "Plate3"
    elseif game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate4.BrickColor == BrickColor.new("Sand yellow") then
        a = "Plate4"
    elseif game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate5.BrickColor == BrickColor.new("Sand yellow") then
        a = "Plate5"
    elseif game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate6.BrickColor == BrickColor.new("Sand yellow") then
        a = "Plate6"
    elseif game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate7.BrickColor == BrickColor.new("Sand yellow") then
        a = "Plate7"
    elseif game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate8.BrickColor == BrickColor.new("Sand yellow") then
        a = "Plate8"
    end
    return a 
end
function AutoQuestBarito(x)
    if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0 then
        if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") 
        and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible  then
            AutoKillMob("Swan Pirate [Lv. 775]", x)
        else
            if (plr.Character.HumanoidRootPart.Position-CFrame.new(-456.28952, 73.0200958, 299.895966).Position).Magnitude > 8 then
                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,CFrame.new(-456.28952, 73.0200958, 299.895966).Position,CFrame.new(-456.28952, 73.0200958, 299.895966))
            else
                local args = {
                    [1] = "StartQuest",
                    [2] = "BartiloQuest",
                    [3] = 1
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
        AutoKillBoss("Jeremy [Lv. 850] [Boss]",x)
    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
        repeat task.wait()
            if (plr.Character.HumanoidRootPart.Position-Vector3.new(-1835.65, 10.4325, 1679.75)).Magnitude > 100 then
                toTarget(plr.Character.HumanoidRootPart.Position,Vector3.new(-1835.65, 10.4325, 1679.75),CFrame.new(-1835.65, 10.4325, 1679.75))
            else
                plr.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Dressrosa.BartiloPlates[checkplatebarito()].CFrame
                task.wait()
                firetouchinterest(game:GetService("Workspace").Map.Dressrosa.BartiloPlates[checkplatebarito()], game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
                firetouchinterest(game:GetService("Workspace").Map.Dressrosa.BartiloPlates[checkplatebarito()], game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
            end
        until game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3
    end
end
getgenv().BlBossHuman = {}
function AutoMinkV2()
    local v = DetectChest()
    repeat task.wait()
        if  (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Position).Magnitude <= 2 then
            firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
            firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
        end
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Position).Magnitude <= 5 then 
            game:service("VirtualInputManager"):SendKeyEvent(true, "W", false, game)
            task.wait()
            game:service("VirtualInputManager"):SendKeyEvent(false, "W", false, game)
        end
        toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,v.Position,v.CFrame*CFrame.new(0,1,0),true)
    until not v or not v.Parent or not Options["Auto Upgrade Race V2-V3"].Value
end
function checkseabeast2()
    for i,v in next,game:GetService("Workspace").SeaBeasts:GetChildren() do
        if v.Name == "SeaBeast1" then
            local s = v.HealthBBG.Frame.TextLabel.Text
            local x = s:gsub("/%d+,%d+","")
            local a = v.HealthBBG.Frame.TextLabel.Text
            local b 
            if string.find(x, ",") then
                b = a:gsub("%d+,%d+/","")
            else
                b = a:gsub("%d+/","")
            end
            local c = b:gsub(",","")
            if tonumber(c) >= 90000  then
                return v
            end
        end
    end
    return false
end
function AutoAllSkill(v)
    local TableSkill = {
        ["Z"] = true,["X"] = true,["C"] = true,["V"] = true,["F"]  = true 
    }
    if plr:DistanceFromCharacter(v) <= 500  then 
        local NameWpMelee = NameWeapon("Melee")
        local NameWpSword = NameWeapon("Sword")
        local NameWpDF = NameWeapon("Blox Fruit")
        local NameWpGun = NameWeapon("Gun")
        local DetectFrame = game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills
        if (NameWpSword and not DetectFrame:FindFirstChild(NameWpMelee))
        or (NameWpSword and  not DetectFrame:FindFirstChild(NameWpSword))
        or (NameWpDF and  not DetectFrame:FindFirstChild(NameWpDF)) 
        or (NameWpGun and not DetectFrame:FindFirstChild(NameWpGun)) then 
            if NameWpMelee then equiptool(NameWpMelee) end
            wait(0.2)
            if NameWpSword then equiptool(NameWpSword) end 
            wait(0.2)
            if NameWpDF then equiptool(NameWpDF) end
            wait(0.2)
            if NameWpGun then equiptool(NameWpGun) end
            return 
        end
        local NameSkill = (NameWpMelee and CheckCDSkill(NameWpMelee,TableSkill)) or (NameWpSword and  CheckCDSkill(NameWpSword,TableSkill)) or ( NameWpDF and CheckCDSkill(NameWpDF,TableSkill)) or ( NameWpGun and CheckCDSkill(NameWpGun,TableSkill)) 
        if NameSkill then
            equiptool(NameSkill.Parent.Name)
            game:GetService("VirtualInputManager"):SendKeyEvent(true, NameSkill.Name, false, game)
            task.wait(0.5)
            game:GetService("VirtualInputManager"):SendKeyEvent(false, NameSkill.Name, false, game)
        end
    end
end
function AutoFishV2()
    local v = checkseabeast2()
    if not v then 
        if not checkboat() then
            local PositionGetBoat = CFrame.new(-11.94833755493164, 10.293913841247559, 2957.010498046875)
            if (PositionGetBoat.Position-plr.Character.HumanoidRootPart.Position).Magnitude > 8 then
                toTarget(plr.Character.HumanoidRootPart.Position,PositionGetBoat.Position,PositionGetBoat)
            else
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat","PirateBrigade")
            end
        else
            local PositionWaitSea = CFrame.new(753.0653686523438, -4.25+40, 6994.5146484375)
            if (checkboat().VehicleSeat.Position-PositionWaitSea.Position).Magnitude > 50 then 
                checkboat().VehicleSeat.CFrame = PositionWaitSea
            else
                if not plr.Character.Humanoid.Sit then 
                    toTarget(plr.Character.HumanoidRootPart.Position,checkboat().VehicleSeat.Position,checkboat().VehicleSeat.CFrame)
                end
            end
        end
    else
        repeat task.wait()
            TeleportSeabeast(v)
            AutoAllSkill(v.HumanoidRootPart.Position)
        until not v or not v.Parent or v.Health.Value <= 0 or not Options["Auto Upgrade Race V2-V3"].Value
    end
end

function UpgradeRaceV2AndV3()
    local Race = CheckRace()
    if Race == " V3" then 
        Fluent:Notify({
            Title = "Banana Hub",
            Content = "Done V3",
            SubContent = "...", -- Optional
            Duration = 5 -- Set to nil to make the notification not disappear
        })
        wait(3)
        return 
    end
    if Race == " V1" then 
        if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "1") == 0 then
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "2")
        elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "1") == 1 then
            if not DetectItemPlr("Flower 1") then 
                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,game:GetService("Workspace").Flower1.Position,game:GetService("Workspace").Flower1.CFrame)
            elseif not DetectItemPlr("Flower 2") then 
                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,game:GetService("Workspace").Flower2.Position,game:GetService("Workspace").Flower2.CFrame)
            elseif not DetectItemPlr("Flower 3") then 
                AutoKillMob("Swan Pirate [Lv. 775]", not Options["Auto Upgrade Race V2-V3"].Value)
            end
        elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "1") == 2 then
            if (CFrame.new(-2777.6001, 72.9661407, -3571.42285).Position-plr.Character.HumanoidRootPart.Position).Magnitude < 8 then
                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,CFrame.new(-2777.6001, 72.9661407, -3571.42285).Position,CFrame.new(-2777.6001, 72.9661407, -3571.42285))
            else
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
            end
        else
            AutoQuestBarito(not Options["Auto Upgrade Race V2-V3"].Value)
        end
    else
        local v113 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
        if v113 == 0 then
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "2")
            return
        elseif v113 == 2 then 
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "3")
            return
        elseif v113 == -1 then 
            Fluent:Notify({
                Title = "Banana Hub",
                Content = "Beli >= 2m",
                SubContent = "...", -- Optional
                Duration = 5 -- Set to nil to make the notification not disappear
            })
            wait(5)
            return 
        end
        local CheckRaceV2 = game:GetService("Players").LocalPlayer.Data.Race.Value .. Race
        if CheckRaceV2 == "Human V2" then 
            local DetectbossHuman =  (not table.find(BlBossHuman,"Jeremy [Lv. 850] [Boss]") and CheckNameBoss("Jeremy [Lv. 850] [Boss]")) or (not table.find(BlBossHuman,"Fajita [Lv. 925] [Boss]") and CheckNameBoss("Fajita [Lv. 925] [Boss]")) or (not table.find(BlBossHuman,"Diamond [Lv. 750] [Boss]") and CheckNameBoss("Diamond [Lv. 750] [Boss]"))
            if DetectbossHuman then 
                AutoKillBoss(DetectbossHuman.Name, not Options["Auto Upgrade Race V2-V3"].Value)
                if not table.find(BlBossHuman,DetectbossHuman.Name) then
                    table.insert(BlBossHuman,DetectbossHuman.Name)
                end
            end
        elseif CheckRaceV2 == "Mink V2" then   
            AutoMinkV2()
        elseif CheckRaceV2 == "Cyborg V2" then 
            if not CheckFruitplr() then 
                if  getfruitstore(true) then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",getfruitstore(true))
                end
            end
        elseif CheckRaceV2 == "Fishman V2" then
            AutoFishV2()
        else
            Fluent:Notify({
                Title = "Banana Hub",
                Content = "Not Support Sorry",
                SubContent = "...", -- Optional
                Duration = 5 -- Set to nil to make the notification not disappear
            })
            wait(3)
        end
    end
end
spawn(function()
    while task.wait() do 
        pcall(function()
            if Options["Auto Upgrade Race V2-V3"].Value then 
                UpgradeRaceV2AndV3()
            end
        end)
    end
end)
------------------Race V4------------------
function CheckAcientOneStatus()
    if not game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
        return "You have yet to achieve greatness"
    end
    local v227 = nil
    local v228 = nil
    local v229 = nil
    v229, v228, v227 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Check")
    if v229 == 1 then
        return "Required Train More"
    elseif v229 == 2 or v229 == 4 or v229 == 7 then
        return "Can Buy Gear With " .. v227 .. " Fragments"
    elseif v229 == 3 then
        return "Required Train More"
    elseif v229 == 5 then
        return "You Are Done Your Race."
    elseif v229 == 6 then
        return "Upgrades completed: " .. v228 - 2 .. "/3, Need Trains More"
    end
    if v229 ~= 8 then
        if v229 == 0 then
            return "Ready For Trial"
        else
            return "You have yet to achieve greatness"
        end
    end
    return "Remaining " .. 10 - v228 .. " training sessions."
end
function CheckClockTime()
    local GameTime = "Error"
    local c2 = game.Lighting.ClockTime
    if c2 >= 18 or c2 < 5 then
        GameTime = "Night"
    else
        GameTime = "Day"
    end
    return GameTime
end
function BuyGearV4()
    if string.find(CheckAcientOneStatus(),"Can Buy Gear") then
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Buy")
    end
end
local Gears = {
    "Alpha",
    "Omega"
}
function DetectGearUp()
    for i,v in next,workspace.Map["Temple of Time"].InnerClock:GetChildren() do 
        if v:IsA("MeshPart") and v:FindFirstChild("Highlight") and v.Highlight.FillTransparency == 1 then 
            return v.Name
        end
    end
end
function ChooseGearV4()
    local v111 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("TempleClock", "Check")
    if v111 and  v111.HadPoint then
        if DetectGearUp() then 
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","SpendPoint",DetectGearUp(),"Omega")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","SpendPoint",DetectGearUp(),"Alpha")
        else
            getsenv(game:GetService("Players").LocalPlayer.PlayerGui.TempleGui.LocalScript):EaseIn()
        end
    else
        if game:GetService("Players").LocalPlayer.PlayerGui.TempleGui.Enabled then 
            getsenv(game:GetService("Players").LocalPlayer.PlayerGui.TempleGui.LocalScript):EaseOut()
        end
    end
end
function getBlueGear()
    if game.workspace.Map:FindFirstChild("MysticIsland") then
        for i, v in pairs(game.workspace.Map.MysticIsland:GetChildren()) do
            if v:IsA("MeshPart") and v.MeshId == "rbxassetid://10153114969" then --and not v.CanCollide then
                return v
            end
        end
    end
end
function getHighestPoint()
    if not game.workspace.Map:FindFirstChild("MysticIsland") then
        return nil
    end
    for i, v in pairs(game:GetService("Workspace").Map.MysticIsland:GetDescendants()) do
        if v:IsA("MeshPart") then
            if v.MeshId == "rbxassetid://6745037796" then
                return v
            end
        end
    end
end
function CollectBlueGear()
    local BlueGear = getBlueGear()
    if BlueGear and not BlueGear.CanCollide and BlueGear.Transparency ~= 1 then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,getBlueGear().Position,getBlueGear().CFrame)
    elseif BlueGear and BlueGear.Transparency == 1 then
        if getHighestPoint() and (getHighestPoint().CFrame*CFrame.new(0, 211.88, 0).Position-plr.Character.HumanoidRootPart.Position).Magnitude > 10 then 
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,getHighestPoint().Position,getHighestPoint().CFrame*CFrame.new(0, 211.88, 0))
        else
            workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position,game:GetService("Lighting"):GetMoonDirection() + workspace.CurrentCamera.CFrame.Position)
            task.wait(.1)
            game:service("VirtualInputManager"):SendKeyEvent(true, "T", false, game)
            task.wait()
            game:service("VirtualInputManager"):SendKeyEvent(false, "T", false, game)
            task.wait(1.5)
        end
    end
end

local Doorsau = CFrame.new(28576.4688,14935.9512,75.469101,-1,-4.22219593e-08,1.13133396e-08,0,-0.258819044,-0.965925813,4.37113883e-08,-0.965925813,0.258819044)
local Door2 = 0.2
function PullLeverV4()
    if not game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("CheckTempleDoor") then 
        local v213 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "Check")
        if v213 == 1 then
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "Begin")
            return
        elseif v213 == 2 then
            toTarget(plr.Character.HumanoidRootPart.Position,CFrame.new(2956.78, 2281.85, -7217.63).Position,CFrame.new(2956.78, 2281.85, -7217.63))
            if (CFrame.new(2956.78, 2281.85, -7217.63).Position-plr.Character.HumanoidRootPart.Position).Magnitude < 8 then 
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress","Teleport")
            end
            return
        elseif v213 == 3 then
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "Continue")
            return
        end
        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") and CheckClockTime() == "Night" then
            CollectBlueGear()
        elseif game:GetService("Workspace").Map:FindFirstChild("MysticIsland") and function7() ~= "Night" then 
            Fluent:Notify({
                Title = "Banana Hub",
                Content = "Waiting Night",
                SubContent = "...", -- Optional
                Duration = 5 -- Set to nil to make the notification not disappear
            })
            task.wait(5)
        elseif not game:GetService("Workspace").Map:FindFirstChild("MysticIsland") and Options["Hop Server [Trial Or Pull Lever]"].Value then 
            HopServer()
        end
    else
        if game:GetService("Workspace").Map["Temple of Time"].Lever.Lever.CFrame.Z > Doorsau.Z + Door2 or game:GetService("Workspace").Map["Temple of Time"].Lever.Lever.CFrame.Z < Doorsau.Z - Door2 then 
            if (plr.Character.HumanoidRootPart.Position-game:GetService("Workspace").Map["Temple of Time"].Lever.Part.Position).Magnitude > 10 then
                toTarget(plr.Character.HumanoidRootPart.Position,game:GetService("Workspace").Map["Temple of Time"].Lever.Part.Position,game:GetService("Workspace").Map["Temple of Time"].Lever.Part.CFrame)
            else
                fireproximityprompt(workspace.Map["Temple of Time"].Lever.Prompt.ProximityPrompt,1)
            end
        else
            Fluent:Notify({
                Title = "Banana Hub",
                Content = "Done Pull Lever",
                SubContent = "...", -- Optional
                Duration = 5 -- Set to nil to make the notification not disappear
            })
            Options["Auto Pull Lever"]:SetValue(false)
        end
    end
end
local TableNameAbility = {
    "Last Resort",
    "Agility",
    "Water Body",
    "Heavenly Blood",
    "Energy Core",
    "Heightened Senses",
}
function DetectNameAbility(x)
    for i,v in next,x:GetChildren() do 
        if table.find(TableNameAbility,v.Name) then 
            return true 
        end
    end
end
function CheckMultiAccount()
    local mmb = {}
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Name ~= plr.Name then 
            mmb[v.Name] = v.Data.Race.Value
        end
    end
    return mmb
end
function CheckMultiTeleDoor()
    local CountPlayer = 0 
    for i,v in next,game.Workspace.Characters:GetChildren() do
        local mmb = CheckMultiAccount()[v.Name]
        if  mmb and DetectNameAbility(v.HumanoidRootPart) and (v.HumanoidRootPart.Position-game:GetService("Workspace").Map["Temple of Time"][mmb.."Corridor"].Door.Door.RightDoor.Union.Position).Magnitude < 100 then 
            CountPlayer = CountPlayer +1
        end
    end
    if CountPlayer >= 2 then 
        return true 
    end
end
function CheckMultiAccount2()
    local mmb = {}
    local TableName = {Options["Select Player Multi"].Value,Options["Select Player Multi 2"].Value}
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        if table.find(TableName,v.Name) then 
            mmb[v.Name] = v.Data.Race.Value
        end
    end
    return mmb
end
function CheckMultiTeleDoor2()
    local CountPlayer = 0 
    for i,v in next,game.Workspace.Characters:GetChildren() do
        local mmb = CheckMultiAccount2()[v.Name]
        if  mmb and (v.HumanoidRootPart.Position-game:GetService("Workspace").Map["Temple of Time"][mmb.."Corridor"].Door.Door.RightDoor.Union.Position).Magnitude < 100 then 
            CountPlayer = CountPlayer +1
        end
    end
    if CountPlayer >= 2 then 
        return true 
    end
end
function TrialHuman()
    if  game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Trial of Strength") then
        StrengthPart = game:GetService("Workspace")["_WorldOrigin"].Locations["Trial of Strength"].CFrame
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - StrengthPart.Position).Magnitude <= 1000 then
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if  (v.HumanoidRootPart.Position - StrengthPart.Position).Magnitude <= 1000 then 
                    toTarget(plr.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame*CFrame.new(0,75,0))
                    v.Humanoid.Health = 0
                end
            end
        end
    end
end
function TrialGhoul()
    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Trial of Carnage") then
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace")["_WorldOrigin"].Locations["Trial of Carnage"].Position).Magnitude <= 1000 then
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if (v.HumanoidRootPart.Position - game:GetService("Workspace")["_WorldOrigin"].Locations["Trial of Carnage"].Position).Magnitude <= 1000 then
                    toTarget(plr.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame*CFrame.new(0,75,0))
                    v.Humanoid.Health = 0
                end
            end
        end
    end
end
function GetSeaBeastTrial()
    if not game.Workspace.Map:FindFirstChild("FishmanTrial") then
        return 
    end
    local FishmanTrial 
    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Trial of Water") then
        FishmanTrial = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Trial of Water")
    end
    if FishmanTrial then
        for i, v in next, game:GetService("Workspace").SeaBeasts:GetChildren() do
            if string.find(v.Name, "SeaBeast") and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - FishmanTrial.Position).Magnitude <= 1500 then
                if v.Health.Value > 0 then
                    return v
                end
            end
        end
    end
end
getgenv().TrialDone = false 
getgenv().KillAuraDone = false
spawn(function()
    while task.wait() do
        pcall(function()
            for i,v in pairs(plr.PlayerGui.Notifications:GetDescendants()) do
                if v:IsA("TextLabel") then 
                    if string.find(v.Text,"completed your trial!")  or string.find(v.Text,"All trials have been completed!") then 
                        TrialDone = true 
                    end
                    if string.find(v.Text,"FIGHT!") then
                        wait(1)
                        KillAuraDone = true 
                    end
                end
            end
        end)
    end
end) 
function AutoTrialV4()
    if TrialDone then
        if not Options["Multi Trial"].Value or not Options["Auto Reset Character"].Value then 
            Options["Auto Trial"]:SetValue(false)
        end
        wait(0.1)
        TrialDone = false 
    end
    local TimeLighting = game.Lighting
    local TimeLighting2 = TimeLighting.ClockTime
    if  ((CheckMoon() == "Full Moon" and not (TimeLighting2 > 5 and TimeLighting2 < 12))  or CheckMoon() == "Next Night")   and Options["Hop Server [Trial Or Pull Lever]"].Value then 
        Options["Hop Server [Trial Or Pull Lever]"]:SetValue(false)
        task.wait(3)
        return 
    else
        if Options["Hop Server [Trial Or Pull Lever]"].Value then 
            HopServer()
            return 
        end
    end
    if game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible then
        local Race = game.Players.LocalPlayer.Data.Race.Value
        if Race == "Human" then 
            TrialHuman()
        elseif Race == "Skypiea" then 
            if game:GetService("Workspace")["_WorldOrigin"].Locations["Trial of the King"] and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-game:GetService("Workspace")["_WorldOrigin"].Locations["Trial of the King"].CFrame.Position).Magnitude <= 1000 then
                local FinishPart = game:GetService("Workspace").Map.SkyTrial.Model.FinishPart
                toTarget(plr.Character.HumanoidRootPart.Position,FinishPart.Position,FinishPart.CFrame)
                task.wait(3)
            end
        elseif Race == "Fishman" then
            local FishmanTrial 
            if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Trial of Water") then
                FishmanTrial = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Trial of Water")
            end
            if FishmanTrial and (FishmanTrial.Position-plr.Character.HumanoidRootPart.Position).Magnitude < 1500 then
                local v = GetSeaBeastTrial()
                if v then
                    TeleportSeabeast(v)
                    AutoAllSkill(v.HumanoidRootPart.Position)
                end
            end
        elseif Race == "Mink" then
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-game:GetService("Workspace")["_WorldOrigin"].Locations["Trial of Speed"].Position).Magnitude <= 1000 then
                toTarget(plr.Character.HumanoidRootPart.Position,game:GetService("Workspace").StartPoint.Position,game:GetService("Workspace").StartPoint.CFrame*CFrame.new(0,2,0))
            end
        elseif Race == "Ghoul" then 
            TrialGhoul()
        elseif Race == "Cyborg" then
            CyborgBypassCFrame = CFrame.new(-20021.8691,10090.4893,-16.37994,-0.976144373,6.71342875e-08,-0.217122361,8.46145412e-08,1,-7.1212007e-08,0.217122361,-8.78849065e-08,-0.976144373)
            if (CyborgBypassCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
                toTarget(plr.Character.HumanoidRootPart.Position,CyborgBypassCFrame.Position,CyborgBypassCFrame)
                task.wait(3)
            end
        end
    else
        if not TrialDone and not game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible   then 
            local Door = game:GetService("Workspace").Map["Temple of Time"][game.Players.LocalPlayer.Data.Race.Value.."Corridor"].Door.Door.RightDoor.Union
            toTarget(plr.Character.HumanoidRootPart.Position,Door.Position,Door.CFrame)
            if Options["Multi Trial"].Value and CheckMultiTeleDoor2() then 
                game:service("VirtualInputManager"):SendKeyEvent(true, "T", false, game)
                task.wait()
                game:service("VirtualInputManager"):SendKeyEvent(false, "T", false, game)
                return
            end
            if OrionLib.Flags["Auto Turn On Race V3"].Value  and  CheckMultiTeleDoor() then 
                game:service("VirtualInputManager"):SendKeyEvent(true, "T", false, game)
                task.wait()
                game:service("VirtualInputManager"):SendKeyEvent(false, "T", false, game)
            end
        end
    end
end


game.ReplicatedStorage.Remotes.Temple.OnClientEvent:Connect((function(a1, a2)
    if a1 == "Start" and (a2 == 2 or a2 == "2") then 
        KillAuraDone = true
        wait()
        --TableNamePlayerKill = DetectPlayerKill()
    end
end))
loadstring([[
    local dotehookold
    dotehookold = hookfunction(require(game:GetService("ReplicatedStorage").Notification).new,function(...)
        local Args = {...}
        if Args[1] and (string.find(Args[1],"completed your trial!")  or string.find(Args[1],"All trials have been completed!")) then
            TrialDone = true  
        end
        if Args[1] and string.find(Args[1],"FIGHT!")  then
            KillAuraDone = true 
        end
        return dotehookold(...)
    end)
]])()
function DetectPlayerKillauraTrial()
    for i,v in next,game.Workspace.Characters:GetChildren() do 
        if v:IsA("Model") and  v.Name ~= plr.Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-Vector3.new(28718.068359375, 14887.5625, -60.5482177734375)).Magnitude <= 100 then 
            return v
        end
    end
end
local TableUseSkill = {
    ["X"] = true,
    ["Z"] = true, 
    ["C"] = true, 
}
function KillPlayerTrial()
    if not game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible and KillAuraDone then 
        KillAuraDone = false
        return
    end
    if KillAuraDone  and Options["Auto Reset Character"].Value then 
        plr.Character.Humanoid.Health = 0
        return
    end
    local PlayerTrial = DetectPlayerKillauraTrial()
    if KillAuraDone 
    and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible  
    and PlayerTrial  then
        repeat task.wait()
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,PlayerTrial.HumanoidRootPart.Position,PlayerTrial.HumanoidRootPart.CFrame*CFrame.new(0,0,4))
            spawn(function()
                autoattack()
            end)
            equiptool(NameWeapon(Options["Select Weapon"].Value))
            local condimebeo = CheckCDSkill(NameWeapon(Options["Select Weapon"].Value),TableUseSkill)
            if condimebeo then 
                game:GetService("VirtualInputManager"):SendKeyEvent(true, condimebeo, false, game)
                task.wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false, condimebeo, false, game)
            end
        until not PlayerTrial or not PlayerTrial.Parent or PlayerTrial.Humanoid.Health <= 0 or not Options["Auto Kill Player When complete Trial"].Value
    end
end


spawn(function()
    while task.wait() do 
        pcall(function()
            if Options["Auto Choose Gears"].Value then 
                ChooseGearV4()
            end
        end)
    end
end)
spawn(function()
    while task.wait() do 
        pcall(function()
            if Options["Auto Buy Gear"].Value then 
                BuyGearV4()
            end
        end)
    end
end)

spawn(function()
    while task.wait() do 
        pcall(function()
            if Options["Auto Pull Lever"].Value then 
                PullLeverV4()
            end
        end)
    end
end)

spawn(function()
    while task.wait() do 
        pcall(function()
            if Options["Auto Trial"].Value then 
                AutoTrialV4()
            end
        end)
    end
end)

spawn(function()
    while task.wait() do 
        pcall(function()
            pcall(function()
                KillPlayerTrial()
            end)
        end)
    end
end)



------------------Done Tab Race------------------

local StatusTime = Tabs.StatusSvMain:AddParagraph({
    Title = "Time",
    Content = "",
})
local StatusEliteHunter = Tabs.StatusSvMain:AddParagraph({
    Title = "Elite Mob",
    Content = "",
})
local StatusKatakuri = Tabs.StatusSvMain:AddParagraph({
    Title = "Summon Katakuri",
    Content = "",
})
local StatusMirage = Tabs.StatusSvMain:AddParagraph({
    Title = "Mirage",
    Content = "",
})
local StatusMoon = Tabs.StatusSvMain:AddParagraph({
    Title = "Moon",
    Content = "",
})
local StatusGear = Tabs.StatusSvMain:AddParagraph({
    Title = "Acient One Status",
    Content = "",
})

Tabs.StatusSvMain:AddInput("Input JobId", {
    Title = "Input Job Id",
    Default = "",
    Numeric = false, -- Only allows numbers
    Finished = false, -- Only calls callback when you press enter
    Callback = function(Value)
    end
})
Tabs.StatusSvMain:AddToggle("Spam Join", {
    Title = "Spam Join",
    Default = Settings["Spam Join"] or false,
    Callback = function(value)
        SaveSettings("Spam Join",value)
    end
})
Tabs.StatusSvMain:AddButton({
    Title = "Join Server",
    Description = "",
    Callback = function()
        if Options["Spam Join"].Value then
            while task.wait() do 
                game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport",tostring(Options["Input JobId"].Value))
            end
        else
            game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport",tostring(Options["Input JobId"].Value))
        end
    end
})
Tabs.StatusSvMain:AddButton({
    Title = "Copy JobId",
    Description = "",
    Callback = function()
        setclipboard(tostring(game.JobId))
    end
})
Tabs.StatusSvMain:AddButton({
    Title = "Hop Server",
    Description = "",
    Callback = function()
        HopServer()
    end
})

function MoonTextureId()
    if game.PlaceId == 2753915549 then
        return game:GetService("Lighting").FantasySky.MoonTextureId
    elseif game.PlaceId == 4442272183  then
        return game:GetService("Lighting").FantasySky.MoonTextureId
    elseif game.PlaceId == 7449423635 then
        return game:GetService("Lighting").Sky.MoonTextureId
    end
end
function CheckMoon()
    local moon5 = "http://www.roblox.com/asset/?id=9709149431"
    local moon4 = "http://www.roblox.com/asset/?id=9709149052"
    local moonreal = MoonTextureId()
    local cofullmoonkothangbeo = "Bad Moon"
    if moonreal == moon5 or moonreal == moon4 then
        if moonreal == moon5 then
            cofullmoonkothangbeo = "Full Moon"
        elseif moonreal == moon4 then
            cofullmoonkothangbeo = "Next Night"
        end
    end
    return cofullmoonkothangbeo
end
function function6()
    return math.floor(game.Lighting.ClockTime)
end
function getServerTime()
    RealTime = tostring(math.floor(game.Lighting.ClockTime*100)/100)
    RealTime = tostring(game.Lighting.ClockTime)
    RealTimeTable = RealTime:split(".")
    Minute,Second = RealTimeTable[1],tonumber((0+tonumber(RealTimeTable[2]/100)))*60
    return Minute,Second
end
function function8()
    local c = game.Lighting
    local c2 = c.ClockTime
    if CheckMoon() == "Full Moon" and c2 <= 5 then
        return tostring(function6()) .. " ( Will End Moon In " .. math.floor(5 - c2) .. " Minutes )"
    elseif CheckMoon() == "Full Moon" and (c2 > 5 and c2 < 12) then
        return tostring(function6()) .. " ( Fake Moon )"
    elseif CheckMoon() == "Full Moon" and (c2 > 12 and c2 < 18) then
        return tostring(function6()) .. " ( Will Full Moon In " .. math.floor(18 - c2) .. " Minutes )"
    elseif CheckMoon() == "Full Moon" and (c2 > 18 and c2 <= 24) then
        return tostring(function6()) .. " ( Will End Moon In " .. math.floor(24+6 - c2) .. " Minutes )"
    end
    if CheckMoon() == "Next Night" and c2 < 12 then
        return tostring(function6()) .. " ( Will Full Moon In " .. math.floor(18 - c2) .. " Minutes )"
    elseif CheckMoon() == "Next Night" and c2 > 12 then
        return tostring(function6()) .. " ( Will Full Moon In " .. math.floor(18+12 - c2) .. " Minutes )"
    end
    return tostring(function6())
end
spawn(function()
    while wait() do 
        pcall(function()
            if DetectEliteHunter() then 
                StatusEliteHunter:SetDesc("✅")
            else
                StatusEliteHunter:SetDesc("❌")
            end
            if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then 
                StatusMirage:SetDesc("✅")
            else
                StatusMirage:SetDesc("❌")
            end
            StatusMoon:SetDesc(CheckMoon().."|"..function8())
            StatusGear:SetDesc(CheckAcientOneStatus())
            StatusKatakuri:SetDesc(string.gsub(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner", true),"%D","").." Mobs")
            spawn(function()
                GameTime = math.floor(workspace.DistributedGameTime+0.5)
                Hour = math.floor(GameTime/(60^2))%24
                Minute = math.floor(GameTime/(60^1))%60
                Second = math.floor(GameTime/(60^0))%60
                StatusTime:SetDesc("|  Hour : " .. Hour.." | Minute : "..Minute.." | Second : "..Second .."  |")
            end)
        end)
    end
end)
------------------Done Tab Server And Stauts------------------
Tabs.ItemsMain:AddToggle("Trade Bones", {
    Title = "Trade Bones",
    Default = Settings["Trade Bones"] or false,
    Callback = function(value)
        SaveSettings("Trade Bones",value)
    end
})
Tabs.ItemsMain:AddToggle("Auto Buy Legendary Sword", {
    Title = "Auto Buy Legendary Sword",
    Default = Settings["Auto Buy Legendary Sword"] or false,
    Callback = function(value)
        SaveSettings("Auto Buy Legendary Sword",value)
    end
})
Tabs.ItemsMain:AddToggle("Auto Buy Haki Color", {
    Title = "Auto Buy Haki Color",
    Default = Settings["Auto Buy Haki Color"] or false,
    Callback = function(value)
        SaveSettings("Auto Buy Haki Color",value)
    end
})

Tabs.ItemsMain:AddToggle("Auto Farm Mastery 600 Sword In Inventory", {
    Title = "Auto Farm Mastery 600 Sword In Inventory",
    Default = Settings["Auto Farm Mastery 600 Sword In Inventory"] or false,
    Callback = function(value)
        if value and not Options["Auto Farm"].Value then
            Options["Auto Farm"]:SetValue(true)
            Options["Select Weapon"]:SetValue("Sword")
        end
        SaveSettings("Auto Farm Mastery 600 Sword In Inventory",value)
    end
})
Tabs.ItemsMain:AddToggle("Auto Upgrade Sword Inventory", {
    Title = "Auto Upgrade Sword Inventory",
    Default = Settings["Auto Upgrade Sword Inventory"] or false,
    Callback = function(value)
        SaveSettings("Auto Upgrade Sword Inventory",value)
    end
})
Tabs.ItemsMain:AddToggle("Auto Soul Guitar", {
    Title = "Auto Soul Guitar",
    Default = Settings["Auto Soul Guitar"] or false,
    Callback = function(value)
        SaveSettings("Auto Soul Guitar",value)
    end
})
Tabs.ItemsMain:AddToggle("Auto CDK", {
    Title = "Auto CDK",
    Default = Settings["Auto CDK"] or false,
    Callback = function(value)
        SaveSettings("Auto CDK",value)
    end
})
Tabs.ItemsMain:AddToggle("Auto Yama", {
    Title = "Auto Yama",
    Default = Settings["Auto Yama"] or false,
    Callback = function(value)
        SaveSettings("Auto Yama",value)
    end
})
Tabs.ItemsMain:AddToggle("Auto Tushita", {
    Title = "Auto Tushita",
    Default = Settings["Auto Tushita"] or false,
    Callback = function(value)
        SaveSettings("Auto Tushita",value)
    end
})
Tabs.ItemsMain:AddToggle("Auto Craft Item Shark Anchor", {
    Title = "Auto Craft Item Shark Anchor",
    Default = Settings["Auto Craft Item Shark Anchor"] or false,
    Callback = function(value)
        SaveSettings("Auto Craft Item Shark Anchor",value)
    end
})

function CountZombie(x)
    local Counter = 0
    for i, v in pairs(game.workspace.Enemies:GetChildren()) do
        if v.Name == "Living Zombie"
        and v.Humanoid.Health > 0 then
            if not x or (v.HumanoidRootPart.Position - Vector3.new(-10171.7607421875, 138.62667846679688, 6008.0654296875)).magnitude < 30 then
                Counter = Counter + 1
                v.HumanoidRootPart.CFrame = CFrame.new(-10171.7607421875, 138.62667846679688, 6008.0654296875)
            end
        end
    end
    return Counter
end
local BlankTablets = {
    "Segment6",
    "Segment2",
    "Segment8",
    "Segment9",
    "Segment5"
}
local Trophy = {
    ["Segment1"] = "Trophy1",
    ["Segment3"] = "Trophy2",
    ["Segment4"] = "Trophy3",
    ["Segment7"] = "Trophy4",
    ["Segment10"] = "Trophy5",
}
local Pipes = {
    ["Part1"] = "Really black",
    ["Part2"] = "Really black",
    ["Part3"] = "Dusty Rose",
    ["Part4"] = "Storm blue",
    ["Part5"] = "Really black",
    ["Part6"] = "Parsley green",
    ["Part7"] = "Really black",
    ["Part8"] = "Dusty Rose",
    ["Part9"] = "Really black",
    ["Part10"] = "Storm blue",
}

function GuitarPuzzleProgress()
    if not CommF:InvokeServer("GuitarPuzzleProgress", "Check") then
        if game.Lighting.Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431"
        and (game.Lighting.ClockTime > 16
        or game.Lighting.ClockTime < 5) then
            if plr:DistanceFromCharacter(Vector3.new(-8654.314453125, 140.9499053955078, 6167.5283203125)) > 50 then
                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,CFrame.new(-8654.314453125, 140.9499053955078, 6167.5283203125).Position,CFrame.new(-8654.314453125, 140.9499053955078, 6167.5283203125))
            end
            CommF:InvokeServer("gravestoneEvent", 2)
            CommF:InvokeServer("gravestoneEvent", 2, true)
            task.wait(1)
        else
            Fluent:Notify({
                Title = "Banana Hub",
                Content = "Hop Full Moon",
                SubContent = "...", -- Optional
                Duration = 5 -- Set to nil to make the notification not disappear
            })
            HopServer()
        end
    else
        if plr.PlayerGui.Main.Dialogue.Visible then
            game:GetService("VirtualUser"):Button1Down(Vector2.new(0, 0))
            game:GetService("VirtualUser"):Button1Down(Vector2.new(0, 0))
        end
        if not CommF:InvokeServer("GuitarPuzzleProgress", "Check").Swamp then
            if (CFrame.new(-10171.7607421875, 138.62667846679688, 6008.0654296875).Position-plr.Character.HumanoidRootPart.Position).Magnitude > 100 then
                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,CFrame.new(-10171.7607421875, 138.62667846679688, 6008.0654296875).Position,CFrame.new(-10171.7607421875, 138.62667846679688+20, 6008.0654296875))
            else 
                if CountZombie() == 6 then  
                    AutoKillMob("Living Zombie [Lv. 2000]",not Options["Auto Soul Guitar"].Value)
                end
            end
            return
        elseif not CommF:InvokeServer("GuitarPuzzleProgress", "Check").Gravestones then
            if plr:DistanceFromCharacter(Vector3.new(-8761.4765625, 142.10487365722656, 6086.07861328125)) > 50 then
                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,CFrame.new(-8761.4765625, 142.10487365722656, 6086.07861328125).Position,CFrame.new(-8761.4765625, 142.10487365722656, 6086.07861328125))
            else
                local ClickSigns = {
                    game.workspace.Map["Haunted Castle"].Placard1.Right.ClickDetector,
                    game.workspace.Map["Haunted Castle"].Placard2.Right.ClickDetector,
                    game.workspace.Map["Haunted Castle"].Placard3.Left.ClickDetector,
                    game.workspace.Map["Haunted Castle"].Placard4.Right.ClickDetector,
                    game.workspace.Map["Haunted Castle"].Placard5.Left.ClickDetector,
                    game.workspace.Map["Haunted Castle"].Placard6.Left.ClickDetector,
                    game.workspace.Map["Haunted Castle"].Placard7.Left.ClickDetector
                }
                for i, v in pairs(ClickSigns) do
                    fireclickdetector(v)
                end
            end
        elseif not CommF:InvokeServer("GuitarPuzzleProgress", "Check").Ghost then
            if plr:DistanceFromCharacter(Vector3.new(-9755.6591796875, 271.0661315917969, 6290.61474609375)) > 50 then
                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,CFrame.new(-9755.6591796875, 271.0661315917969, 6290.61474609375).Position,CFrame.new(-9755.6591796875, 271.0661315917969, 6290.61474609375))
            end
            CommF:InvokeServer("GuitarPuzzleProgress", "Ghost")
            task.wait(3)
        elseif not CommF:InvokeServer("GuitarPuzzleProgress", "Check").Trophies then
            if plr:DistanceFromCharacter(Vector3.new(-9530.0126953125, 6.104853630065918, 6054.83349609375)) > 50 then
                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,CFrame.new(-9530.0126953125, 6.104853630065918, 6054.83349609375).Position,CFrame.new(-9530.0126953125, 6.104853630065918, 6054.83349609375))
            end
            local Tablet = game.workspace.Map["Haunted Castle"].Tablet
            for i, v in pairs(BlankTablets) do
                local x = Tablet[v]
                if x.Line.Position.X ~= 0 then
                    repeat task.wait()
                        fireclickdetector(x.ClickDetector)
                    until x.Line.Position.X == 0
                end
            end
            for i, v in pairs(Trophy) do
                local x = game.workspace.Map["Haunted Castle"].Trophies.Quest[v].Handle.CFrame
                x = tostring(x)
                x = x:split(", ")[4]
                local c = "180"
                if x == "1" or x == "-1" then
                    c = "90"
                end
                if not string.find(tostring(Tablet[i].Line.Rotation.Z), c) then
                    repeat task.wait()
                        fireclickdetector(Tablet[i].ClickDetector)
                    until string.find(tostring(Tablet[i].Line.Rotation.Z), c)
                    print(i, c)
                end
            end
        elseif not CommF:InvokeServer("GuitarPuzzleProgress", "Check").Pipes then
            for i, v in pairs(Pipes) do
                local x = game.workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model[i]
                if x.BrickColor.Name ~= v then
                    repeat task.wait()
                        fireclickdetector(x.ClickDetector)
                    until x.BrickColor.Name == v
                end
            end
        end
    end
end
function DetectRequestSoulGuitar()
    local Mob = {}
    local PlaceId 
    local NameRemote 
    if not checkcountitem("Ectoplasm",250) then
        Mob = {
            "Ship Deckhand [Lv. 1250]",
            "Ship Steward [Lv. 1300]",
            "Ship Officer [Lv. 1325]",
            "Ship Engineer [Lv. 1275]"
        }
        PlaceId = 4442272183
        NameRemote = "TravelDressrosa"
    elseif not checkcountitem("Bones",500) then 
        Mob = {
            "Reborn Skeleton [Lv. 1975]",
            "Demonic Soul [Lv. 2025]",
            "Living Zombie [Lv. 2000]",
            "Posessed Mummy [Lv. 2050]",
        }
        PlaceId = 7449423635
        NameRemote = "TravelZou"
    end
    return Mob, PlaceId, NameRemote
end
function AutoSoulGuitar()
    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy",true) == "[You already own this item.]" then 
        Fluent:Notify({
            Title = "Banana Hub",
            Content = "[You already own this item.]",
            SubContent = "...", -- Optional
            Duration = 5 -- Set to nil to make the notification not disappear
        })
        task.wait(5)
        return 
    end
    if plr.Data.Fragments.Value < 5000 then 
        
        Fluent:Notify({
            Title = "Banana Hub",
            Content = "Frag >= 5k",
            SubContent = "...", -- Optional
            Duration = 5 -- Set to nil to make the notification not disappear
        })  
        task.wait(3)     
        return
    end
    if checkcountitem("Dark Fragment",1) and checkcountitem("Ectoplasm",250) and checkcountitem("Bones",500) then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy",true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy")
        if game.PlaceId == 7449423635 then 
            GuitarPuzzleProgress()
        else
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
        end
        return 
    end
    if not checkcountitem("Dark Fragment",1)  then
        if game.PlaceId == 4442272183 then
            if CheckNameBoss("Darkbeard [Lv. 1000] [Raid Boss]") then 
                AutoKillBoss("Darkbeard [Lv. 1000] [Raid Boss]", not Options["Auto Soul Guitar"].Value)
            else
                if  plr.Character:FindFirstChild("Fist of Darkness") or plr.Backpack:FindFirstChild("Fist of Darkness") then
                    if (game:GetService("Workspace").Map.DarkbeardArena.Summoner.Detection.Position-plr.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                        equiptool("Fist of Darkness")
                        firetouchinterest(game.Players.LocalPlayer.Character["Fist of Darkness"].Handle, game:GetService("Workspace").Map.DarkbeardArena.Summoner.Detection, 0)
                        firetouchinterest(game.Players.LocalPlayer.Character["Fist of Darkness"].Handle, game:GetService("Workspace").Map.DarkbeardArena.Summoner.Detection, 1)
                        firetouchinterest(plr.Character.HumanoidRootPart, game:GetService("Workspace").Map.DarkbeardArena.Summoner.Detection, 0)
                        firetouchinterest(plr.Character.HumanoidRootPart, game:GetService("Workspace").Map.DarkbeardArena.Summoner.Detection, 1)
                    else
                        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,game:GetService("Workspace").Map.DarkbeardArena.Summoner.Detection.Position,game:GetService("Workspace").Map.DarkbeardArena.Summoner.Detection.CFrame)
                    end
                else
                    local v = DetectChest()
                    repeat task.wait()
                        if  (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Position).Magnitude <= 2 then
                            firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
                            firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
                        end
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Position).Magnitude <= 5 then 
                            game:service("VirtualInputManager"):SendKeyEvent(true, "W", false, game)
                            task.wait()
                            game:service("VirtualInputManager"):SendKeyEvent(false, "W", false, game)
                        end
                        toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,v.Position,v.CFrame*CFrame.new(0,1,0),true)
                    until not v or not v.Parent or not Options["Auto Soul Guitar"].Value
                end
            end
        else
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
        end
    else
        local Mob,PlaceId,NameRemote = DetectRequestSoulGuitar()
        if game.PlaceId == PlaceId then 
            AutoKillMob(Mob,not Options["Auto Soul Guitar"].Value)
        else
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(NameRemote)
        end
    end
end
local StartGood = true
function QuestGood3()
    for v50, v51 in pairs(getnilinstances()) do
        if v51.Name:match("Luxury Boat Dealer") then
            plr.Character.HumanoidRootPart.CFrame = v51.HumanoidRootPart.CFrame
            local args = {
                [1] = "CDKQuest",
                [2] = "BoatQuest",
                [3] = workspace.NPCs:FindFirstChild("Luxury Boat Dealer")
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end;
    end;
end

function QuestGood4()
    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-5543.5327148438, 313.80062866211, -2964.2585449219)).magnitude > 1000 then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,Vector3.new(-5543.5327148438, 313.80062866211, -2964.2585449219),CFrame.new(-5543.5327148438, 313.80062866211, -2964.2585449219))
    else
        local v  = GetPirateRaid()  or  GetPirateRaid(true) 
        if v then
            repeat task.wait()
                sizepart(v)
                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame*CFrame.new(7,20,0))
                DetectAttack(v)
                equiptool(NameWeapon("Sword"))
            until not v or not v.Parent or v.Humanoid.Health == 0
        else
            wait(5)
            Fluent:Notify({
                Title = "Banana Hub",
                Content = "Waiting Raid Castle",
                SubContent = "...", -- Optional
                Duration = 5 -- Set to nil to make the notification not disappear
            })  
        end
    end
end
function TourchGood5()
    local a 
    if not game:GetService("Workspace").Map.HeavenlyDimension.Torch1:FindFirstChild("mmb") then
        a = "1"
    elseif not game:GetService("Workspace").Map.HeavenlyDimension.Torch2:FindFirstChild("mmb") then
        a = "2"
    elseif not game:GetService("Workspace").Map.HeavenlyDimension.Torch3:FindFirstChild("mmb") then
        a = "3"
    end
    return a 
end
function Questgood5()
    if (game:GetService("Workspace")["_WorldOrigin"].Locations["Heavenly Dimension"].Position-plr.Character.HumanoidRootPart.Position).Magnitude < 1000 then
        if game:GetService("Workspace").Map.HeavenlyDimension.Exit.BrickColor == BrickColor.new("Cloudy grey") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame
            toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,game:GetService("Workspace").Map.HeavenlyDimension.Exit.Position,game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
            return 
        end			
        if game.workspace.Enemies:FindFirstChildWhichIsA("Model") then			
            for i,v in next,game.Workspace.Enemies:GetChildren() do
                if v:IsA("Model") then 
                    v.Humanoid.Health = 0
                end
            end
        else
            local Tourch = TourchGood5()
            if Tourch then
                repeat task.wait()
                    if (plr.Character.HumanoidRootPart.Position-game:GetService("Workspace").Map.HeavenlyDimension["Torch"..Tourch].Position).Magnitude > 5 then
                        toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,game:GetService("Workspace").Map.HeavenlyDimension["Torch"..Tourch].Position,game:GetService("Workspace").Map.HeavenlyDimension["Torch"..Tourch].CFrame)
                    else
                        fireproximityprompt(game:GetService("Workspace").Map.HeavenlyDimension["Torch"..Tourch].ProximityPrompt,0)
                        fireproximityprompt(game:GetService("Workspace").Map.HeavenlyDimension["Torch"..Tourch].ProximityPrompt,1)
                    end 
                until game.workspace.Enemies:FindFirstChildWhichIsA("Model")
                plr.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
                local BV = Instance.new("Part")
                BV.Parent = game:GetService("Workspace").Map.HeavenlyDimension["Torch"..Tourch]
                BV.Name = "mmb"
            end
        end
    else
        if CheckNameBoss("Cake Queen [Lv. 2175] [Boss]")  then
            AutoKillBoss("Cake Queen [Lv. 2175] [Boss]",not Options["Auto CDK"].Value)
            if getgenv().Tween then
                getgenv().Tween:Pause()
                getgenv().Tween:Cancel()
            end
        else
            Fluent:Notify({
                Title = "Banana Hub",
                Content = "Waiting Cake Queen",
                SubContent = "...", -- Optional
                Duration = 5 -- Set to nil to make the notification not disappear
            })  
            task.wait(3)
        end
    end
end
function QuestEvil3()
    local mob
    for i,v in next,game.workspace.Enemies:GetChildren() do
        if v:IsA("Model") and v.Name == "Marine Commodore"  and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
            mob = v
        end
    end
    if not mob then
        GetPart = DetectPartSpawnMob("Marine Commodore [Lv. 1700]")
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,GetPart.Position,GetPart.CFrame*CFrame.new(0,60,0))
    else
        repeat task.wait()
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,mob.HumanoidRootPart.Position,mob.HumanoidRootPart.CFrame*CFrame.new(0,0,3))
        until plr.Character.Humanoid.Health <= 0
    end
end
function DetectMobPhaze()
    local xx 
    for i,v in next,game.workspace.Enemies:GetChildren() do
        if v:IsA("Model")  and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("HazeESP")
        and  v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0  then
            xx = v
        end
    end
    return xx
end
function checknearstpartmobspawn()
    for i,v in next,game:GetService("Players").LocalPlayer.QuestHaze:GetChildren() do
        if v.Value > 0 then
            return v.Name
        end
    end
end

function QuestEvil4()
    if  DetectMob(checknearstpartmobspawn()) then
        local v = DetectMob(checknearstpartmobspawn())
        repeat task.wait()
            sizepart(v)
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame*CFrame.new(7,20,0))
            DetectAttack(v)
            equiptool(NameWeapon("Sword"))
            task.spawn(function()
                BringMob(v)
            end)
        until not v or not v.Parent or v.Humanoid.Health == 0 
    else
        GetPart = DetectPartSpawnMob(checknearstpartmobspawn())
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,GetPart.Position,GetPart.CFrame*CFrame.new(0,15,0))
    end
end
function TourchEvil5()
    local a 
    if not game:GetService("Workspace").Map.HellDimension.Torch1:FindFirstChild("mmb") then
        a = "1"
    elseif not game:GetService("Workspace").Map.HellDimension.Torch2:FindFirstChild("mmb") then
        a = "2"
    elseif not game:GetService("Workspace").Map.HellDimension.Torch3:FindFirstChild("mmb") then
        a = "3"
    end
    return a 
end
function QuestEvil5()
    if (game:GetService("Workspace")["_WorldOrigin"].Locations["Hell Dimension"].Position-plr.Character.HumanoidRootPart.Position).Magnitude > 1000 then
        if not CheckNameBoss("Soul Reaper [Lv. 2100] [Raid Boss]") then
            if not plr.Character:FindFirstChild("Hallow Essence") and not plr.Backpack:FindFirstChild("Hallow Essence") then
                AutoKillMob(TableMobBones, not Options["Auto CDK"].Value)
            else
                if (plr.Character.HumanoidRootPart.Position-game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.Position).Magnitude > 8 then
                    toTarget(plr.Character.HumanoidRootPart.Position,game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.Position,game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)
                else
                    equiptool("Hallow Essence",true) 
                end
            end
        else
            local v = CheckNameBoss("Soul Reaper [Lv. 2100] [Raid Boss]")
            repeat task.wait()
                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame*CFrame.new(0,0,3))
            until   plr.Character.Humanoid.Health <= 0  or (game:GetService("Workspace")["_WorldOrigin"].Locations["Hell Dimension"].Position-plr.Character.HumanoidRootPart.Position).Magnitude < 1000
            if getgenv().Tween then
                getgenv().Tween:Pause()
                getgenv().Tween:Cancel()
            end
        end
    else
        if game:GetService("Workspace").Map.HellDimension.Exit.BrickColor == BrickColor.new("Olivine") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.HellDimension.Exit.CFrame
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,game:GetService("Workspace").Map.HellDimension.Exit.Position,game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
            return 
        end	
        if game.workspace.Enemies:FindFirstChildWhichIsA("Model") then			
            for i,v in next,game.Workspace.Enemies:GetChildren() do
                if v:IsA("Model") then 
                    v.Humanoid.Health = 0
                end
            end
        else
            local Tourch = TourchEvil5()
            if Tourch then
                local BV = Instance.new("Part")
                BV.Parent = game:GetService("Workspace").Map.HellDimension["Torch"..Tourch]
                BV.Name = "mmb"
                repeat task.wait()
                    if (plr.Character.HumanoidRootPart.Position-game:GetService("Workspace").Map.HellDimension["Torch"..Tourch].Position).Magnitude > 5 then 
                        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,game:GetService("Workspace").Map.HellDimension["Torch"..Tourch].Position,game:GetService("Workspace").Map.HellDimension["Torch"..Tourch].CFrame)
                    else
                        fireproximityprompt(game:GetService("Workspace").Map.HellDimension["Torch"..Tourch].ProximityPrompt,0)
                        fireproximityprompt(game:GetService("Workspace").Map.HellDimension["Torch"..Tourch].ProximityPrompt,1)
                    end 
                until game.workspace.Enemies:FindFirstChildWhichIsA("Model")
                plr.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
            end
        end
    end
end
function CheckItemInventory(b)
    for i,v in pairs(game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("getInventory")) do
        if v.Name == b then
            return true
        end
    end
end
function CheckMasterSword(xx,xxx)
    for i,v in next,getupvalues(require(game:GetService("Players").LocalPlayer.PlayerGui.Main.UIController.Inventory).UpdateRender) do
        if i == 4 then
            for i1,v1 in next,v do
                if v1.details.Name == xx and  v1.details.Mastery >= xxx then
                    return true
                end
            end
        end
    end
    return false
end
function GetCDK()
    if not CheckItemInventory("Tushita")  or not CheckItemInventory("Yama") then 
        Fluent:Notify({
            Title = "Banana Hub",
            Content = "Get Tushita and Yama",
            SubContent = "...", -- Optional
            Duration = 5 -- Set to nil to make the notification not disappear
        })
        wait(3)
        return 
    end
    if CheckItemInventory("Tushita")  and CheckItemInventory("Yama") then
        if not CheckMasterSword("Yama",350) or not CheckMasterSword("Tushita",350) then 
            Fluent:Notify({
                Title = "Banana Hub",
                Content = "Mastery >= 350",
                SubContent = "...", -- Optional
                Duration = 5 -- Set to nil to make the notification not disappear
            })
            wait(3)
            return 
        end
        if not plr.Character:FindFirstChild("Tushita") 
        and not plr.Backpack:FindFirstChild("Tushita") 
        and not plr.Character:FindFirstChild("Yama") 
        and not plr.Backpack:FindFirstChild("Yama") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Tushita")
            return 
        end
        getgenv().Good = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good").Good
        getgenv().Evil = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good").Evil
        if StartGood then 
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good")
        else
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil")
        end
        if getgenv().Good == 4 then
            StartGood =  false
        end
        local Pedestal
        if getgenv().Good == 4 
        and  getgenv().Evil == 3 then
            Pedestal = "Pedestal2"
        elseif getgenv().Good == 3 
        and  getgenv().Evil == 4 then
            Pedestal = "Pedestal1"
        end
        if Pedestal  then
            if (game:GetService("Workspace").Map.Turtle.Cursed[Pedestal].Position-plr.Character.HumanoidRootPart.Position).Magnitude < 10 then
                fireproximityprompt(game:GetService("Workspace").Map.Turtle.Cursed[Pedestal].ProximityPrompt)
            else
                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,game:GetService("Workspace").Map.Turtle.Cursed[Pedestal].Position,game:GetService("Workspace").Map.Turtle.Cursed[Pedestal].CFrame)
            end
        end
        if plr.PlayerGui.Main.Dialogue.Visible then
            game.VirtualUser:Button1Down(Vector2.new(0, 0))
            game.VirtualUser:Button1Down(Vector2.new(0, 0))
        end
        if getgenv().Good == 4 
        and getgenv().Evil == 4 then
            if (game:GetService("Workspace").Map.Turtle.Cursed.Pedestal3.Position-plr.Character.HumanoidRootPart.Position).Magnitude  > 10 then
                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,game:GetService("Workspace").Map.Turtle.Cursed.Pedestal3.Position,game:GetService("Workspace").Map.Turtle.Cursed.Pedestal3.CFrame)
            else
                if game:GetService("Workspace").Map.Turtle.Cursed.PlacedGem.Transparency == 0 then
                    if not game.Workspace.Enemies:FindFirstChild("Cursed Skeleton Boss") then
                        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,Vector3.new(-12341.66796875, 603.3455810546875, -6550.6064453125),CFrame.new(-12341.66796875, 603.3455810546875, -6550.6064453125))
                    else
                        for i,v in next,game.Workspace.Enemies:GetChildren() do
                            if v:IsA("Model") and v.Name == "Cursed Skeleton Boss" and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    sizepart(v)
                                    toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame*CFrame.new(7,20,0))
                                    DetectAttack(v)
                                    equiptool(NameWeapon("Sword"))
                                until  not v or not v.Parent or v.Humanoid.Health <= 0 
                            end
                        end
                    end
                else
                    fireproximityprompt(game:GetService("Workspace").Map.Turtle.Cursed.Pedestal3.ProximityPrompt)
                end
            end
        end
        if StartGood then 
            if getgenv().Good == -3 then
                QuestGood3()
            elseif getgenv().Good == -4 then 
                QuestGood4()
            elseif getgenv().Good == -5 then 
                Questgood5()
            end
        else
            if getgenv().Evil == -3 then 
                QuestEvil3()
            elseif getgenv().Evil == -4 then  
                QuestEvil4()
            elseif getgenv().Evil == -5 then
                spawn(function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                end) 
                QuestEvil5()
            end
        end
    end
end
function autoCraftSharkAnchor()
    if CheckItemInventory("Shark Anchor") then
        Fluent:Notify({
            Title = "Banana Hub",
            Content = "Done Shark Anchor",
            SubContent = "...", -- Optional
            Duration = 5 -- Set to nil to make the notification not disappear
        })
        wait(5)
        return
    end
    if not CheckItemInventory("Monster Magnet") then
        if not CheckItemInventory("Shark Tooth Necklace") and  checkcountitem("Mutant Tooth",1) and checkcountitem("Shark Tooth",5) then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem","Craft","ToothNecklace")
        elseif not CheckItemInventory("Terror Jaw") and  checkcountitem("Mutant Tooth",2) and checkcountitem("Shark Tooth",5) and checkcountitem("Terror Eyes",1) and checkcountitem("Fool's Gold",10) then 
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem","Craft","TerrorJaw")
        elseif CheckItemInventory("Shark Tooth Necklace") and CheckItemInventory("Terror Jaw") and checkcountitem("Terror Eyes",2) and checkcountitem("Shark Tooth",10) and checkcountitem("Electric Wing",10) and checkcountitem("Fool's Gold",20) then 
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem","Craft","SharkAnchor")
        end
    end
end
function GetYama()
    if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("EliteHunter", "Progress") < 30 then 
        local v = DetectEliteHunter()  
        if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name:gsub(" %pLv. %d+%p", "")) 
        or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
        else
            AutoKillBoss(v.Name,not Options["Auto Yama"].Value)
        end
    else
        if (game.Workspace.Map.Waterfall.SealedKatana.Handle.Position-plr.Character.HumanoidRootPart.Position).Magnitude > 50 then
            toTarget(plr.Character.HumanoidRootPart.Position,game.Workspace.Map.Waterfall.SealedKatana.Handle.Position,game.Workspace.Map.Waterfall.SealedKatana.Handle.CFrame)
        else
            if game.Workspace.Enemies:FindFirstChild("Ghost [Lv. 1500]") then
                AutoKillMob("Ghost [Lv. 1500]",not Options["Auto Yama"].Value)
            else
                fireclickdetector(game.Workspace.Map.Waterfall.SealedKatana.Handle.ClickDetector)
            end
        end
    end
end
function checkTorch()
    local a 
    if not game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.Particles.Main.Enabled then
        a = "1"
    elseif not game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.Particles.Main.Enabled then
        a = "2"
    elseif not game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.Particles.Main.Enabled then
        a = "3"
    elseif not game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.Particles.Main.Enabled then
        a = "4"
    elseif not game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.Particles.Main.Enabled then
        a = "5"
    end
    for i,v in next,game:GetService("Workspace").Map.Turtle.QuestTorches:GetChildren() do
        if v:IsA("MeshPart") and  string.find(v.Name, a) and not v.Particles.Main.Enabled then
            return v 
        end
    end
end
function GetTushita()
    if not game:GetService("Workspace").Map.Turtle:FindFirstChild("TushitaGate") then
        if CheckNameBoss("Longma [Lv. 2000] [Boss]") then 
            AutoKillBoss("Longma [Lv. 2000] [Boss]",not Options["Auto Tushita"].Value)
        end
    else
        if CheckNameBoss("rip_indra True Form [Lv. 5000] [Raid Boss]") then
            if not plr.Character:FindFirstChild("Holy Torch") and not plr.Backpack:FindFirstChild("Holy Torch") then
                toTarget(plr.Character.HumanoidRootPart.Position,game:GetService("Workspace").Map.Waterfall.SecretRoom.Room.Door.Door.Hitbox.Position,game:GetService("Workspace").Map.Waterfall.SecretRoom.Room.Door.Door.Hitbox.CFrame)
            else
                equiptool("Holy Torch")
                if checkTorch() then
                    toTarget(plr.Character.HumanoidRootPart.Position,checkTorch().Position,checkTorch().CFrame)
                end
            end
        else
            Fluent:Notify({
                Title = "Banana Hub",
                Content = "Rip Indra Dont Spawn",
                SubContent = "...", -- Optional
                Duration = 5 -- Set to nil to make the notification not disappear
            })
            wait(5)
        end
    end
end
function DetectSwordUnlock()
    local dist = 0
    local name 
    for i,v in next,game.ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory") do
        if v.Type == "Sword" and 600 > v.Mastery then
            if dist < v.Rarity then 
                dist = v.Rarity
                name = v.Name
            end
        end
    end
    return name
end

function DetectItemUpgrade()
    local Item = {}
    local args = {
	    [1] = "UpgradeItem",
	    [2] = "Check",
	    [3] = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(NameWeapon("Sword")) or game:GetService("Players").LocalPlayer.Character:FindFirstChild(NameWeapon("Sword"))
	}
	for i,v in next,game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)).Required do 
        Item[v.Name] = v.Required
	end
    Item["NameWp"] = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)).Result["Name"]
    Item["Physical"] = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)).Result.Physical
    return Item
end
function DetectNameWpUpgrade()
    local dist = 0
    local name 
    for i,v in next,game.ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory") do
        if v.Type == "Sword" and v.Upgrades == 0 then
            if dist < v.Rarity then 
                dist = v.Rarity
                name = v.Name
            end
        end
    end
    return name
end
local countUpgradeItem

local NameMaterials = {
    ["Ectoplasm"] = {"Ship Deckhand","Ship Engineer","Ship Steward","Ship Officer","Cursed Captain"},
    ["Magma Ore"] = {"Lava Pirate","Magma Ninja","Magma Admiral","Military Spy","Military Soldier"},
    ["Leather"] = {"Jungle Pirate","Musketeer Pirate"},
    ["Scrap Metal"] = {"Jungle Pirate","Musketeer Pirate"},
    ["Angel Wings"] = {"God's Guard","Shanda","Royal Squad","Royal Soldier"},
    ["Fish Tail"] = {"Fishman Warrior","Fishman Commando","Fishman Raider","Fishman Captain"},
    ["Radioactive Material"] = {"Factory Staff"},
    ["Vampire Fang"] = {"Vampire"},
    ["Mystic Droplet"] = {"Sea Soldier","Water Fighter"},
    ["Mini Tusk"] = {"Mythological Pirate"},
    ["Gunpowder"] = {"Pistol Billionaire"},
    ["Demonic Wisp"] = {"Demonic Soul"},
    ["Dragon Scale"] = {"Dragon Crew Archer","Dragon Crew Warrior"},
    ["Conjured Cocoa"] = {"Cocoa Warrior","Chocolate Bar Battler"},
    ["Bones"] = {"Reborn Skeleton","Demonic Soul","Living Zombie","Posessed Mummy"},
}
local NameWorldMaterials = {
    ["Ectoplasm"] = {[4442272183] = "TravelDressrosa"},
    ["Magma Ore"] = {[4442272183] = "TravelDressrosa",[2753915549] = "TravelMain"},
    ["Leather"] = {[7449423635] = "TravelZou"},
    ["Scrap Metal"] = {[7449423635] = "TravelZou"},
    ["Angel Wings"] = {[2753915549] = "TravelMain"},
    ["Fish Tail"] = {[7449423635] = "TravelZou",[2753915549] = "TravelMain"},
    ["Radioactive Material"] = {[4442272183] = "TravelDressrosa"},
    ["Vampire Fang"] = {[4442272183] = "TravelDressrosa"},
    ["Mystic Droplet"] = {[4442272183] = "TravelDressrosa"},
    ["Mini Tusk"] = {[7449423635] = "TravelZou"},
    ["Gunpowder"] = {[7449423635] = "TravelZou"},
    ["Demonic Wisp"] = {[7449423635] = "TravelZou"},
    ["Dragon Scale"] = {[7449423635] = "TravelZou"},
    ["Conjured Cocoa"] = {[7449423635] = "TravelZou"},
    ["Bones"] = {[7449423635] = "TravelZou"},
}
local CFrameBlacksmith 
function DetectMaterialsUpgrade()
    for i,v in next,countUpgradeItem do 
        if i ~= "NameWp" and  i ~= "Physical" and not checkcountitem(i,v) and NameWorldMaterials[i][game.PlaceId] then
            return i
        end
    end
    for i,v in next,countUpgradeItem do 
        if i ~= "NameWp" and  i ~= "Physical" and not checkcountitem(i,v)  then
            return i
        end
    end
end
function AutoUpgradeWeapon()
    if NameWeapon("Sword") ~= DetectNameWpUpgrade() then 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem",DetectNameWpUpgrade())
        return 
    end
    if not countUpgradeItem or countUpgradeItem["NameWp"] ~= DetectNameWpUpgrade() then
        if not CFrameBlacksmith then 
            for i, v in pairs(game.Workspace.NPCs:GetDescendants()) do 
                if v:IsA("Model")
                and v.Name == "Blacksmith"
                and v:FindFirstChild("Head") then
                    CFrameBlacksmith = v.Head.CFrame * CFrame.new(0, -2, 2)   
                end
            end
            for i, v in pairs(getnilinstances()) do 
                if v:IsA("Model")
                and v.Name == "Blacksmith"
                and v:FindFirstChild("Head") and not CFrameBlacksmith then
                    CFrameBlacksmith = v.Head.CFrame * CFrame.new(0, -2, 2)   
                end
            end
        else
            if plr:DistanceFromCharacter(CFrameBlacksmith.Position) > 10 then 
                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,CFrameBlacksmith.Position,CFrameBlacksmith,true)
            else
                countUpgradeItem = DetectItemUpgrade()
                getgenv().ditmemay = DetectMaterialsUpgrade()
            end
        end
        return 
    end
    if countUpgradeItem and not DetectMaterialsUpgrade() then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,CFrameBlacksmith.Position,CFrameBlacksmith,true)
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeItem", "Upgrade", countUpgradeItem["Physical"]);
    end
    if DetectMaterialsUpgrade() then
        if not NameWorldMaterials[DetectMaterialsUpgrade()][game.PlaceId] then 
            local deobietdatlagi = NameWorldMaterials[DetectMaterialsUpgrade()][4442272183] or NameWorldMaterials[DetectMaterialsUpgrade()][2753915549] or NameWorldMaterials[DetectMaterialsUpgrade()][7449423635]
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(deobietdatlagi)
            print("ditmemay")
            return
        end
        local NameSelect = NameMaterials[DetectMaterialsUpgrade()]
        if not NameSelect then 
            Fluent:Notify({
                Title = "Banana Hub",
                Content = "Not Support Material"..DetectMaterialsUpgrade().."Sorry",
                SubContent = "...", -- Optional
                Duration = 5 -- Set to nil to make the notification not disappear
            })
            task.wait(5)
            return 
        end
        AutoKillMob(NameSelect,not Options["Auto Upgrade Sword Inventory"].Value)
    end
end

spawn(function()
    while task.wait() do 
        pcall(function()
            if Options["Auto Upgrade Sword Inventory"].Value  then 
                AutoUpgradeWeapon()
            end
        end)
    end
end)
spawn(function()
    while task.wait() do 
        pcall(function()
            if Options["Auto Farm Mastery 600 Sword In Inventory"].Value  then 
                local Sword = DetectSwordUnlock()
                if Sword and not plr.Backpack:FindFirstChild(Sword) and not plr.Character:FindFirstChild(Sword) then 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem",Sword)
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait() do 
        pcall(function()
            if Options["Auto Buy Legendary Sword"].Value  then 
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","2")
            end
        end)
    end
end)
spawn(function()
    while task.wait() do 
        pcall(function()
            if Options["Auto Buy Haki Color"].Value  then 
                game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("ColorsDealer", "2")
            end
        end)
    end
end)
spawn(function()
    while task.wait() do
        if Options["Trade Bones"].Value then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
            end)
        end
    end
end)
spawn(function()
    while task.wait() do
        if Options["Auto Tushita"].Value then
            pcall(function()
                GetTushita()
            end)
        end
    end
end)
spawn(function()
    while task.wait() do
        if Options["Auto Yama"].Value then
            pcall(function()
                GetYama()
            end)
        end
    end
end)
spawn(function()
    while task.wait() do
        if Options["Auto CDK"].Value then
            pcall(function()
                GetCDK()
            end)
        end
    end
end)
spawn(function()
    while task.wait() do
        if Options["Auto Soul Guitar"].Value then
            
                AutoSoulGuitar()
            
        end
    end
end)

spawn(function()
    while wait() do 
        pcall(function()
            if Options["Auto Craft Item Shark Anchor"].Value then 
                autoCraftSharkAnchor() 
            end
        end)
    end
end)



------------------Dang Lam Tab Item------------------


Tabs.LocalPlayerMain:AddButton({
    Title = "Open Devil Fruit Shop",
    Description = "",
    Callback = function()
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
    end
})
Tabs.LocalPlayerMain:AddButton({
    Title = "Open Title",
    Description = "",
    Callback = function()
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Titles.Visible = true
    end
})
Tabs.LocalPlayerMain:AddButton({
    Title = "Open Color",
    Description = "",
    Callback = function()
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Colors.Visible = true
    end
})
Tabs.LocalPlayerMain:AddButton({
    Title = "Boost FPS",
    Description = "",
    Callback = function()
        local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
        local g = game
        local w = g.Workspace
        local l = g.Lighting
        local t = w.Terrain
        t.WaterWaveSize = 0
        t.WaterWaveSpeed = 0
        t.WaterReflectance = 0
        t.WaterTransparency = 0
        l.GlobalShadows = false
        l.FogEnd = 9e9
        l.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        for i, v in pairs(g:GetDescendants()) do
            if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
            elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
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
            end
        end
        for i, e in pairs(l:GetChildren()) do
            if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                e.Enabled = false
            end
        end
        wait(1)
        getrenv()._G.FastMode = true;
        task.defer(function()
            getrenv()._G.Optimize();
        end);
        local l__Map__462 = workspace:WaitForChild("Map");
        local l__Unloaded__463 = game.ReplicatedStorage:WaitForChild("Unloaded");
        local l__FPSTracker__464 = require(game.ReplicatedStorage:WaitForChild("Util")).FPSTracker;
        game.Players.LocalPlayer.PlayerScripts.OptimizerClient.Disabled = true;
        task.wait();
        game.Players.LocalPlayer.PlayerScripts.OptimizerClient.Disabled = false;
        local v465 = l__Map__462:GetDescendants();
        wait(0.5);
        local v466 = l__Unloaded__463:GetDescendants();
        wait(0.5);
        local v467 = tick();
        local v468 = 0;
        for v469, v470 in next, v465 do
            if v470:IsA("BasePart") then
                v470.Material = Enum.Material.SmoothPlastic;
                v468 = v468 + 1;
                if v468 % 30 == 0 or l__FPSTracker__464.FPS < 40 and (l__FPSTracker__464.FPS < 15 and v468 % 6 == 0 or v468 % 12 == 0) then
    
                    task.wait();
                end;
            elseif v470:IsA("Texture") and not v470:GetAttribute("Offset") then
                v470:Destroy();
            end;
        end;
        for v471, v472 in next, v466 do
            if v472:IsA("BasePart") then
                v472.Material = Enum.Material.SmoothPlastic;
                v468 = v468 + 1;
                if v468 % 30 == 0 or l__FPSTracker__464.FPS < 40 and (l__FPSTracker__464.FPS < 15 and v468 % 3 == 0 or v468 % 10 == 0) then
                    l__TextLabel__461.Text = "Working.. " .. v468;
                    if v460 then
                        v460.Text = l__TextLabel__461.Text;
                    end;
                    task.wait();
                end;
            elseif v472:IsA("Texture") and not v472:GetAttribute("Offset") then
                v472:Destroy();
            end;
        end;
        print("Time taken to Fast Mode: ", tick() - v467);
    end
})
Tabs.LocalPlayerMain:AddDropdown("Select Stats", {
    Title = "Select Stats",
    Values = {'Melee','Defense',"Sword","Gun","Demon Fruit"},
    Multi = true,
    Default = Settings["Select Stats"] or {},
    Callback = function(value)
        SaveSettings("Select Stats",value)
    end
})
Tabs.LocalPlayerMain:AddDropdown("Select Team", {
    Title = "Select Team",
    Values = {'Pirate','Marine'},
    Multi = false,
    Default = Settings["Select Team"] or "Marine",
    Callback = function(value)
        SaveSettings("Select Team",value)
    end
})
Tabs.LocalPlayerMain:AddToggle("Auto Load Script", {
    Title = "Auto Load Script",
    Default = Settings["Auto Load Script"] or false,
    Callback = function(value)
        SaveSettings("Auto Load Script",value)
    end
})
Tabs.LocalPlayerMain:AddToggle("White Screen", {
    Title = "White Screen",
    Default = Settings["White Screen"] or false,
    Callback = function(value)
        SaveSettings("White Screen",value)
    end
})

Tabs.LocalPlayerMain:AddToggle("Auto rejoin Disconnect", {
    Title = "Auto rejoin Disconnect",
    Default = Settings["Auto rejoin Disconnect"] or false,
    Callback = function(value)
        SaveSettings("Auto rejoin Disconnect",value)
    end
})
local Island 
if game.PlaceId == 2753915549 then
    Island = {
        ["Start Island"] = CFrame.new(1071.2832, 16.3085976, 1426.86792),
        ["Marine Start"] = CFrame.new(-2573.3374, 6.88881969, 2046.99817),
        ["Middle Town"] = CFrame.new(-655.824158, 7.88708115, 1436.67908),
        ["Jungle"] = CFrame.new(-1249.77222, 11.8870859, 341.356476),
        ["Pirate Village"] = CFrame.new(-1122.34998, 4.78708982, 3855.91992),
        ["Desert"] = CFrame.new(1094.14587, 6.47350502, 4192.88721),
        ["Frozen Village"] = CFrame.new(1198.00928, 27.0074959, -1211.73376),
        ["MarineFord"] = CFrame.new(-4505.375, 20.687294, 4260.55908),
        ["Colosseum"] = CFrame.new(-1428.35474, 7.38933945, -3014.37305),
        ["Sky 1st Floor"] = CFrame.new(-4970.21875, 717.707275, -2622.35449),
        ["Sky 2st Floor"] = CFrame.new(-4813.0249, 903.708557, -1912.69055),
        ["Sky 3st Floor"] = CFrame.new(-7952.31006, 5545.52832, -320.704956),
        ["Prison"] = CFrame.new(4854.16455, 5.68742752, 740.194641),
        ["Magma Village"] = CFrame.new(-5231.75879, 8.61593437, 8467.87695),
        ["UndeyWater City"] = CFrame.new(61163.8516, 11.7796879, 1819.78418),
        ["Fountain City"] = CFrame.new(5132.7124, 4.53632832, 4037.8562),
        ["House Cyborg's"] = CFrame.new(6262.72559, 71.3003616, 3998.23047),
        ["Shank's Room"] = CFrame.new(-1442.16553, 29.8788261, -28.3547478),
        ["Mob Island"] = CFrame.new(-2850.20068, 7.39224768, 5354.99268),
    }
elseif game.PlaceId == 4442272183 then
    Island = {
        ["First Spot"] = CFrame.new(82.9490662, 18.0710983, 2834.98779),
        ["Kingdom of Rose"] = game.Workspace["_WorldOrigin"].Locations["Kingdom of Rose"].CFrame,
        ["Dark Ares"] = game.Workspace["_WorldOrigin"].Locations["Dark Arena"].CFrame,
        ["Flamingo Mansion"] = CFrame.new(-390.096313, 331.886475, 673.464966),
        ["Flamingo Room"] = CFrame.new(2302.19019, 15.1778421, 663.811035),
        ["Green bit"] = CFrame.new(-2372.14697, 72.9919434, -3166.51416),
        ["Cafe"] = CFrame.new(-385.250916, 73.0458984, 297.388397),
        ["Factroy"] = CFrame.new(430.42569, 210.019623, -432.504791),
        ["Colosseum"] = CFrame.new(-1836.58191, 44.5890656, 1360.30652),
        ["Ghost Island"] = CFrame.new(-5571.84424, 195.182297, -795.432922),
        ["Ghost Island 2nd"] = CFrame.new(-5931.77979, 5.19706631, -1189.6908),
        ["Snow Mountain"] = CFrame.new(1384.68298, 453.569031, -4990.09766),
        ["Hot and Cold"] = CFrame.new(-6026.96484, 14.7461271, -5071.96338),
        ["Magma Side"] = CFrame.new(-5478.39209, 15.9775667, -5246.9126),
        ["Cursed Ship"] = CFrame.new(902.059143, 124.752518, 33071.8125),
        ["Frosted Island"] = CFrame.new(5400.40381, 28.21698, -6236.99219),
        ["Forgotten Island"] = CFrame.new(-3043.31543, 238.881271, -10191.5791),
        ["Usoapp Island"] = CFrame.new(4748.78857, 8.35370827, 2849.57959),
        ["Raids Low"] = CFrame.new(-5554.95313, 329.075623, -5930.31396),
        ["Minisky"] = CFrame.new(-260.358917, 49325.7031, -35259.3008),
    }
elseif game.PlaceId == 7449423635 then
    Island = {
        ["Port Town"] = CFrame.new(-287, 30, 5388),
        ["Hydar Island"] = CFrame.new(3399.32227, 72.4142914, 1572.99963, -0.809679806, -4.48284467e-08, 0.586871922, 2.42332163e-08, 1, 1.09818842e-07, -0.586871922, 1.0313989e-07, -0.809679806),
        ["Room Enma/Yama & Secret Temple"] = CFrame.new(5247, 7, 1097),
        ["House Hydar Island"] = CFrame.new(5245, 602, 251),
        ["Great Tree"] = CFrame.new(2443, 36, -6573),
        ["Castle on the sea"] = CFrame.new(-5500, 314, -2855),
        ["Mansion"] = CFrame.new(-12548, 337, -7481),
        ["Floating Turtle"] = CFrame.new(-10016, 332, -8326),
        ["Haunted Castle"] = CFrame.new(-9509.34961, 142.130661, 5535.16309),
        ["Peanut Island"] = CFrame.new(-2131, 38, -10106),
        ["Ice Cream Island"] = CFrame.new(-950, 59, -10907),
        ["CakeLoaf"] = CFrame.new(-1762, 38, -11878)
    }
end
local Island1 = {}
for i,v in next,Island do 
    table.insert(Island1,i)
end
Tabs.LocalPlayerMain:AddDropdown("Select Island", {
    Title = "Select Island",
    Values = Island1,
    Multi = false,
    Default = "",
    Callback = function(value)
    end
})

Tabs.LocalPlayerMain:AddToggle("Teleport Island", {
    Title = "Teleport Island",
    Default =  false,
    Callback = function(value)
    end
})
Tabs.LocalPlayerMain:AddToggle("Teleport Mirage", {
    Title = "Teleport Mirage",
    Default =  false,
    Callback = function(value)
    end
})
spawn(function()
    while task.wait() do 
        if Options["Teleport Mirage"].Value then 
            pcall(function()
                if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    AllNPCS = getnilinstances()
                    for i, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                        table.insert(AllNPCS, v)
                    end
                    for i, v in pairs(AllNPCS) do
                        if v.Name == "Advanced Fruit Dealer" then
                            repeat task.wait()
                                toTarget(plr.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
                            until (v.HumanoidRootPart.Position-plr.Character.HumanoidRootPart.Position).Magnitude < 8 or not Options["Teleport Mirage"].Value
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do 
        if Options["Teleport Island"].Value then 
            pcall(function()
                for i,v in next,Island do
                    if i == Options["Select Island"].Value then
                        toTarget(plr.Character.HumanoidRootPart.Position,v.Position,v)
                    end
                end
            end)
        end
    end
end)


spawn(function()
    while task.wait() do 
        if Options["Auto rejoin Disconnect"].Value then 
            pcall(function()
                if not string.find(game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ErrorPrompt.MessageArea.ErrorFrame.ErrorMessage.Text,"Teleport")  then
                    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId,game.Players.LocalPlayer)
                end
            end)
        end
    end
end)
local fovcircle2 = 10
local fov_circle2 = Drawing.new("Circle")
fov_circle2.Thickness = 1
fov_circle2.NumSides = 100
fov_circle2.Radius = fovcircle2 
fov_circle2.Filled = false
fov_circle2.Visible = false
fov_circle2.ZIndex = 999
fov_circle2.Transparency = 1
fov_circle2.Color = Color3.fromRGB(237, 5, 5)
spawn(function()
    while task.wait() do
        if Options["White Screen"].Value then
            pcall(function()
                if not game.Workspace:FindFirstChild("IgnoredWhiteScreen") then
                    local Ignored = Instance.new("IntValue", game.Workspace)
                    Ignored.Name = "IgnoredWhiteScreen"
                    local RunService = game:GetService("RunService")
                    RunService:Set3dRenderingEnabled(false)
                else
                    fov_circle2.Position = game:GetService("UserInputService").GetMouseLocation(game:GetService("UserInputService"))
                    fov_circle2.Visible =  true 
                end
            end)
        else
            if game.Workspace:FindFirstChild("IgnoredWhiteScreen") then
                fov_circle2.Visible = false
                local RunService = game:GetService("RunService")
                RunService:Set3dRenderingEnabled(true)
                game.Workspace:FindFirstChild("IgnoredWhiteScreen"):Destroy()
            end
        end
    end
end)
tablestats = {
    ["Melee"] = false,
    ["Defense"] = false,
    ["Sword"] = false,
    ["Gun"] = false,
    ["Demon Fruit"] = false,
},
spawn(function()
    while task.wait() do 
        pcall(function()
            for i,v in next,tablestats do 
                if Options["Select Stats"].Value[i] and game.Players.localPlayer.Data.Points.Value > 0 and game:GetService("Players").LocalPlayer.Data.Stats[i].Level.Value < 2550 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", i, 9999)
                    wait(5)
                end
            end
        end)
    end
end)


------------------Done tab Local Player------------------

local TableMaterials = {}
for i,v in next,NameMaterials do 
    table.insert(TableMaterials,i)
end
Tabs.FarmOtherMain:AddDropdown("Select Material", {
    Title = "Select Material",
    Values = TableMaterials,
    Multi = false,
    Default = Settings["Select Material"] or "",
    Callback = function(value)
        SaveSettings("Select Material",value)
    end
})
Tabs.FarmOtherMain:AddToggle("Auto Material", {
    Title = "Auto Material",
    Default = Settings["Auto Material"] or false,
    Callback = function(value)
        SaveSettings("Auto Material",value)
    end
})
Tabs.FarmOtherMain:AddParagraph({
    Title = "....",
    Content = "Mob And Boss",
})
function TableMob()
    local tablemob = {}
    local tablefoldermmb = {}
    for i,v in next,require(game:GetService("ReplicatedStorage").Quests) do
        for i1,v1 in next,v do
            for i2,v2 in next,v1.Task do
                if v2 > 1 then
                    table.insert(tablefoldermmb,i2)
                end
            end
        end
    end
    for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
        if not string.find(v.Name,"Boss") and not table.find(tablemob,v.Name) then
            table.insert(tablemob,v.Name)
        end
    end
    if string.find(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()[1].Name, "Lv.") then
        for i, v in pairs(getnilinstances()) do 
            if  table.find(tablefoldermmb,tostring(v.Name:gsub(" %pLv. %d+%p", ""))) and not table.find(tablemob,v.Name) then
                table.insert(tablemob,v.Name)
            end
        end
    else
        for i, v in pairs(getnilinstances()) do 
            if  table.find(tablefoldermmb,v.Name) and not table.find(tablemob,v.Name) then
                table.insert(tablemob,v.Name)
            end
        end
    end
    return tablemob
end
local TableListBoss = {
    "Gorilla King",
    "Bobby",
    "The Saw",
    "Yeti",
    "Mob Leader",
    "Vice Admiral",
    "Saber Expert",
    "Warden",
    "Chief Warden",
    "Swan",
    "Magma Admiral",
    "Fishman Lord",
    "Wysper",
    "Thunder God",
    "Cyborg",
    "Ice Admiral",
    "Diamond",
    "Jeremy",
    "Fajita",
    "Don Swan",
    "Smoke Admiral",
    "Awakened Ice Admiral",
    "Tide Keeper",
    "Stone",
    "Island Empress",
    "Kilo Admiral",
    "Captain Elephant",
    "Beautiful Pirate",
    "Longma",
    "Cake Queen",
    "GreyBeard",
    "Order",
    "Cursed Captain",
    "Darkbeard",
    "Soul Reaper",
    "Rip_Indra",
    "Mihawk",
    "Cake Prince",
    "Dough King",

}
function tableboss()
    local a = {"Deo Co boss"}
    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
        if table.find(TableListBoss,v.Name) then
            table.insert(a, v.Name)
            if table.find(a,"Deo Co boss") then
                table.remove(a,1)
            end
        end
    end
    for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
        if table.find(TableListBoss,v.Name)  then
            table.insert(a, v.Name)
            if table.find(a,"Deo Co boss") then
                table.remove(a,1)
            end
        end
    end
    return a
end
Tabs.FarmOtherMain:AddDropdown("Select Mob", {
    Title = "Select Mob",
    Values = TableMob(),
    Multi = true,
    Default = Settings["Select Mob"] or {},
    Callback = function(value)
        SaveSettings("Select Mob",value)
    end
})
Tabs.FarmOtherMain:AddToggle("Auto Mob Farm", {
    Title = "Auto Mob Farm",
    Default = Settings["Auto Mob Farm"] or false,
    Callback = function(value)
        SaveSettings("Auto Mob Farm",value)
    end
})

Tabs.FarmOtherMain:AddDropdown("Select Boss", {
    Title = "Select Boss",
    Values = tableboss(),
    Multi = false,
    Default = Settings["Select Boss"] or "",
    Callback = function(value)
        SaveSettings("Select Boss",value)
    end
})
Tabs.FarmOtherMain:AddButton({
    Title = "Refresh List Boss",
    Description = "",
    Callback = function()
        Options["Select Boss"]:SetValues(tableboss())
    end
})
Tabs.FarmOtherMain:AddToggle("Auto Kill Boss", {
    Title = "Auto Kill Boss",
    Default = Settings["Auto Kill Boss"] or false,
    Callback = function(value)
        SaveSettings("Auto Kill Boss",value)
    end
})
Tabs.FarmOtherMain:AddToggle("Auto Kill All Boss", {
    Title = "Auto Kill All Boss",
    Default = Settings["Auto Kill All Boss"] or false,
    Callback = function(value)
        SaveSettings("Auto Kill All Boss",value)
    end
})
function FarmMaterial()
    if not NameWorldMaterials[Options["Select Material"].Value][game.PlaceId] then 
        local deobietdatlagi = NameWorldMaterials[Options["Select Material"].Value][4442272183] or NameWorldMaterials[Options["Select Material"].Value][2753915549] or NameWorldMaterials[Options["Select Material"].Value][7449423635]
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(deobietdatlagi)
        return
    end
    local NameSelect = NameMaterials[Options["Select Material"].Value]
    AutoKillMob(NameSelect,not Options["Auto Material"].Value)
end
function FarmSelectMob()
    local TableMobSelect = {}
    for i,v in next,Options["Select Mob"].Value do 
        table.insert(TableMobSelect,i)
    end
    AutoKillMob(TableMobSelect,not Options["Auto Mob Farm"].Value)
end

spawn(function()
    while wait() do 
        if Options["Auto Material"].Value then 
            pcall(function()
                FarmMaterial()            
            end)
        end
    end
end)
spawn(function()
    while wait() do 
        if Options["Auto Mob Farm"].Value then 
            pcall(function()
                FarmSelectMob()            
            end)
        end
    end
end)
spawn(function()
    while wait() do 
        if Options["Auto Kill Boss"].Value then 
            pcall(function()
                AutoKillBoss(Options["Select Boss"].Value,not Options["Auto Kill Boss"].Value)   
            end)
        end
    end
end)
spawn(function()
    while wait() do 
        if Options["Auto Kill All Boss"].Value then 
            pcall(function()
                local v = CheckNameBoss(TableListBoss)
                AutoKillBoss(v,not Options["Auto Kill All Boss"].Value)   
            end)
        end
    end
end)


------------------Done tab Material And Mob------------------
function DetectNamePlayer()
    local mmb = {}
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Name ~= plr.Name and not table.find(mmb,v.Name) then 
            table.insert(mmb,v.Name)
        end
    end
    return mmb
end
Tabs.PvpTab:AddDropdown("Select Player PVP", {
    Title = "Select Player",
    Values = DetectNamePlayer(),
    Multi = false,
    Default = Settings["Select Player"] or "",
    Callback = function(value)
        SaveSettings("Select Player",value)
    end
})
Tabs.PvpTab:AddDropdown("Select Method Aimbot", {
    Title = "Select Method Aimbot",
    Values = {"Select Player","Target nearest Player"},
    Multi = false,
    Default = Settings["Select Method Aimbot"] or "",
    Callback = function(value)
        SaveSettings("Select Method Aimbot",value)
    end
})
Tabs.PvpTab:AddButton({
    Title = "Refresh List Player",
    Description = "",
    Callback = function()
        Options["Select Player PVP"]:SetValues(DetectNamePlayer())
    end
})

Tabs.PvpTab:AddToggle("Teleport Player", {
    Title = "Teleport Player",
    Default = Settings["Teleport Player"] or false,
    Callback = function(value)
        SaveSettings("Teleport Player",value)
    end
})
Tabs.PvpTab:AddToggle("Auto Aimbot", {
    Title = "Auto Aimbot",
    Default = Settings["Auto Aimbot"] or false,
    Callback = function(value)
        SaveSettings("Auto Aimbot",value)
    end
})

Tabs.PvpTab:AddButton({
    Title = "Dash no Cd",
    Description = "",
    Callback = function()
        for i, v in pairs(getgc()) do 
            if tostring(getfenv(v).script) == "Dodge" then 
                for k, x in pairs(debug.getconstants(v)) do
                    if type(x) == "number" and x > 0.3 and x <= 0.4 then 
                        debug.setconstant(v, k, 0)
                    end
                end
            end    
        end
    end
})
Tabs.PvpTab:AddButton({
    Title = "Inf Soru",
    Description = "",
    Callback = function()
        for i,v in next, getgc() do
            if getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Soru") then
                spawn(function() 
                    for i2,v2 in pairs(debug.getupvalues(v)) do
                        if type(v2) == 'table' then 
                            for mm,m2 in pairs(v2) do  
                                if string.find(mm,"LastUse") then 
                                    repeat wait()
                                        setupvalue(v, i2, {LastAfter = 0,LastUse = (tick()-15)}) 
                                    until mmmb
                                end
                            end
                        end
                    end
                end)
            end
        end
    end
})
Tabs.PvpTab:AddButton({
    Title = "Inf Geppo",
    Description = "",
    Callback = function()
        for i, v in pairs(getgc()) do 
            if tostring(getfenv(v).script) == "Skyjump" then 
                for k, x in pairs(debug.getconstants(v)) do
                    if type(x) == "number" and x == 1  then 
                        debug.setconstant(v, k, 0)
                    end
                end
            end    
        end
    end
})
Tabs.PvpTab:AddButton({
    Title = "Walk On Water",
    Description = "",
    Callback = function()
        platform = Instance.new("Part")
        platform.Name = "WaterWalk"
        platform.Size = Vector3.new(math.huge, 1, math.huge)
        platform.Transparency = 1
        platform.Anchored = true
        platform.Parent = game.workspace
        spawn(function()
            while wait() do
                pcall(function()
                    platform.CanCollide = true
                    platform.Position = Vector3.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.X,game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Y * 0 -5, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Z)
                end)
            end
        end)
    end
})
Tabs.PvpTab:AddButton({
    Title = "infinite Range observation [ Haki Ken ]"",
    Description = "",
    Callback = function()
        game:GetService("Players").LocalPlayer.VisionRadius.Value = math.huge
    end
})
function ClosestPartaimbot()
    local dist = math.huge
    local Closest
    local DistanceToMouse 
    for i,v in pairs(game.Workspace.Characters:GetChildren()) do
        if v:IsA("Model")  then
            if v.Name ~= plr.Name and (game.Players.LocalPlayer.Team == game.Teams.Marines and game.Players[v.Name].Team ~= game.Teams.Marines or game.Players.LocalPlayer.Team ~= game.Teams.Marines)  then
                local conconcac = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).Magnitude
                if conconcac < dist then
                    dist = conconcac
                    Closest = v
                end
            end
        end
    end
    return  Closest
end
function TeleportPlayer()
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Name == Options["Select Player PVP"].Value  then 
            return v 
        end
    end
end
game:GetService("RunService").RenderStepped:connect(function()
    pcall(function()
        if Options["Auto Aimbot"].Value then 
            if Options["Select Method Aimbot"].Value == "Select Player" then 
                local v = game.Workspace.Characters[Options["Select Player PVP"].Value]
                getgenv().psskill =  CFrame.new(v.HumanoidRootPart.CFrame.p, v.HumanoidRootPart.Position + v.HumanoidRootPart.Velocity/0.5)
            else
                local v = ClosestPartaimbot()
                getgenv().psskill =  CFrame.new(v.HumanoidRootPart.CFrame.p, v.HumanoidRootPart.Position + v.HumanoidRootPart.Velocity/0.5)
            end
        end
    end)
end)
spawn(function()
    while wait() do 
        pcall(function()
            if Options["Teleport Player"].Value then 
                toTarget(plr.Character.HumanoidRootPart.Position,TeleportPlayer().Character.HumanoidRootPart.Position,TeleportPlayer().Character.HumanoidRootPart.CFrame)
            end    
        end)
    end
end)
------------------dang lam tab pvp------------------
local CloneOpenUI = Instance.new("ScreenGui")
local CloneImageButton = Instance.new("ImageButton",CloneOpenUI)
local StopTween = Instance.new("TextButton",CloneOpenUI)
CloneOpenUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
CloneOpenUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
CloneOpenUI.ResetOnSpawn  = false
CloneImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
CloneImageButton.Position = UDim2.new(0.159, 0, 0.441, 0)
CloneImageButton.Size = UDim2.new(0.051, 0, 0.087, 0)
CloneImageButton.Image = "http://www.roblox.com/asset/?id=5009915795"
CloneImageButton.MouseButton1Click:Connect(function()
    game:service("VirtualInputManager"):SendKeyEvent(true, "LeftControl", false, game)
    task.wait()
    game:service("VirtualInputManager"):SendKeyEvent(false, "LeftControl", false, game)
end)
StopTween.Name = "StopTween"
StopTween.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
StopTween.BorderColor3 = Color3.fromRGB(0, 0, 0)
StopTween.BorderSizePixel = 0
StopTween.Position = UDim2.new(-1.98252874e-05, 0, 0.218647063, 0)
StopTween.Size = UDim2.new(0.050999999, 0, 0.0869999975, 0)
StopTween.Font = Enum.Font.SourceSans
StopTween.Text = "Stop Tween"
StopTween.TextColor3 = Color3.fromRGB(0, 0, 0)
StopTween.TextScaled = true
StopTween.TextSize = 14.000
StopTween.TextWrapped = true
StopTween.MouseButton1Click:Connect(function()
    getgenv().noclip = false
    if getgenv().Tween then
        getgenv().Tween:Pause()
        wait(0.5)
        getgenv().Tween:Cancel()
    end
end)

spawn(function()
    if not Options["Auto Load Script"].Value then
        repeat wait()
        until Options["Auto Load Script"].Value
    end
    local queue = queue_on_teleport
    if syn then
    queue = syn.queue_on_teleport
    end
    queue(string.format(
        [[
            repeat wait() until game:IsLoaded()
            getgenv().Key = "%s"
            loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BananaHub.lua"))()
        ]],getgenv().Key))
end)
