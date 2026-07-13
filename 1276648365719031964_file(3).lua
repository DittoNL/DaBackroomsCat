-- Lua 5.3+ / Luau compatibility polyfills
if not math.ldexp then math.ldexp = function(x, n) return x * 2 ^ n end end
if not math.frexp then math.frexp = function(x)
    if x == 0 then return 0, 0 end
    local exp = math.floor(math.log(math.abs(x)) / math.log(2)) + 1
    local mantissa = x / 2 ^ exp
    return mantissa, exp
end end
if not loadstring and load then loadstring = load end
if not loadstring then loadstring = function(s) return load(s) end end

--[Obfuscated by Hercules v2.0.0 | hercules-obfuscator.xyz/discord | hercules-obfuscator.xyz/source]
do
    local _BFR,_MFR,T,E,Pa,GM,RG={["assert"]=assert,["math.floor"]=math.floor,["math.modf"]=math.modf,["math.acos"]=math.acos,["getmetatable"]=getmetatable,["setmetatable"]=setmetatable,["math.atan"]=math.atan,["pcall"]=pcall,["rawset"]=rawset,["string.byte"]=string.byte,["rawget"]=rawget,["string.len"]=string.len,["os.time"]=os.time,["select"]=select,["os.date"]=os.date,["string.sub"]=string.sub,["string.gmatch"]=string.gmatch,["xpcall"]=xpcall,["math.abs"]=math.abs,["type"]=type,["math.tan"]=math.tan,["math.fmod"]=math.fmod,["math.exp"]=math.exp,["math.rad"]=math.rad,["math.sin"]=math.sin,["math.sqrt"]=math.sqrt,["rawequal"]=rawequal,["math.min"]=math.min,["math.max"]=math.max,["tostring"]=tostring,["table.insert"]=table.insert,["string.upper"]=string.upper,["string.lower"]=string.lower,["math.deg"]=math.deg,["math.asin"]=math.asin,["tonumber"]=tonumber,["table.sort"]=table.sort,["math.cos"]=math.cos,["math.ceil"]=math.ceil,["os.difftime"]=os.difftime,["os.clock"]=os.clock,["string.find"]=string.find,["string.gsub"]=string.gsub,["next"]=next,["string.char"]=string.char,["table.remove"]=table.remove,["string.match"]=string.match,["error"]=error,["string.rep"]=string.rep,["table.concat"]=table.concat,["string.reverse"]=string.reverse,["string.format"]=string.format},{},type,error,pairs,getmetatable,rawget
    local DG={table=table,string=string,math=math,os=os}
    local function check()
        for n,ref in Pa(_BFR) do
            if ref==nil then
                E("Tamper Detected! Reason: Critical function removed: "..n)
                return
            end
            if T(ref)~="function" then
                E("Tamper Detected! Reason: Critical function type changed: "..n.." (was function, now "..T(ref)..")")
                return
            end
        end
        for tname in Pa(_MFR) do
            local parts={}
            for p in tname:gmatch("[^.]+") do parts[#parts+1]=p end
            local t=DG[(parts[1])]
            if t then
                local mt=GM(t)
                if mt then
                    local mf=RG(mt,parts[2])
                    if mf then
                        local expected=_MFR[tname]
                        if T(mf)~=expected then
                            E("Tamper Detected! Reason: Metamethod tampered: "..tname)
                            return
                        end
                    end
                end
            end
        end
        local d=debug
        if T(d)=="table" then
            local _DK={"info","traceback"}
            for _,k in Pa(_DK) do
                if T(d[k])~="function" then
                    E("Tamper Detected! Reason: Debug library incomplete")
                    return
                end
            end
        end
    end
    check()
end

local VeUjpuJhOXt,LVaUaIKNPCl,arPKTYBj,KpVzGBga,yAhYSpNlI,ybdvalLQuw,nFiMeJwN,kXzGxuMgQ,FRzoPVjWEwdr,kuDqUUMOfF
VeUjpuJhOXt=ipairs;LVaUaIKNPCl=pairs;arPKTYBj=pcall;KpVzGBga=print;yAhYSpNlI=tostring;ybdvalLQuw=math.floor;nFiMeJwN=math.min;kXzGxuMgQ=string.char;FRzoPVjWEwdr=table.concat;kuDqUUMOfF=table.insert;
local function FVFaZIuvhSr(rSrrVYxzTBx)
    return (rSrrVYxzTBx >= 48 and rSrrVYxzTBx <= 57) or (rSrrVYxzTBx >= 65 and rSrrVYxzTBx <= 90) or (rSrrVYxzTBx >= 97 and rSrrVYxzTBx <= 122)
end

local function RUXqxIdf(hWuJoutX, zNYUAOtQuTqj)
    local YjbgDwQYhDC = {}
    for i = 1, #hWuJoutX do
        local rSrrVYxzTBx = hWuJoutX:byte(i)
        if FVFaZIuvhSr(rSrrVYxzTBx) then
            local hkChZfSPp            if rSrrVYxzTBx >= 48 and rSrrVYxzTBx <= 57 then
                hkChZfSPp = ((rSrrVYxzTBx - 48 - zNYUAOtQuTqj + 10) % 10) + 48
            elseif rSrrVYxzTBx >= 65 and rSrrVYxzTBx <= 90 then
                hkChZfSPp = ((rSrrVYxzTBx - 65 - zNYUAOtQuTqj + 26) % 26) + 65
            elseif rSrrVYxzTBx >= 97 and rSrrVYxzTBx <= 122 then
                hkChZfSPp = ((rSrrVYxzTBx - 97 - zNYUAOtQuTqj + 26) % 26) + 97
            end
            table.insert(YjbgDwQYhDC, string.char(hkChZfSPp))
        else
            table.insert(YjbgDwQYhDC, string.char(rSrrVYxzTBx))
        end
    end
    return table.concat(YjbgDwQYhDC)
end





local kDubMKJVawOr = loadstring(game:HttpGet(RUXqxIdf('gssor://qzv.fhsgtatrdqbnmsdms.bnl/zrsqzkm/RdmshmdkTHKHA/lzhm/TH.ktz', 25), true))()

local mzUcMFGJcG = kDubMKJVawOr:Window(RUXqxIdf('Zw Xwygnkkio xu ywp!', 22))

local sQIdTHEXT = mzUcMFGJcG:Tab(RUXqxIdf('Iwej', 22))
local rnzFRxSFaw = mzUcMFGJcG:Tab(RUXqxIdf('Ykixwp', 22))
local YyplBgsTRp = mzUcMFGJcG:Tab(RUXqxIdf('Tgqsyj', 24))
local OWKoArAvnQ = mzUcMFGJcG:Tab(RUXqxIdf('Zqlheywpekj', 22))
local SPWUsJcdLlJ = mzUcMFGJcG:Tab(RUXqxIdf('Zskdmzhziovg', 21))
local lIcqTUxW = mzUcMFGJcG:Tab(RUXqxIdf('Zmt', 18))
local keHINczrB = mzUcMFGJcG:Tab(RUXqxIdf('Ejbkniwpekj', 22))



local cYJBgNHLAyj,JfJeqfLNz=game:GetService(RUXqxIdf("QdokhbzsdcRsnqzfd", 25)).ItemPoses:FindFirstChild(RUXqxIdf("Rvozm Ncvmy", 21)),game:GetService(RUXqxIdf("ObmifzxqbaPqloxdb", 23)).ItemPoses:FindFirstChild(RUXqxIdf("Dlia Ebii Ptloa", 23)) if cYJBgNHLAyj and JfJeqfLNz and not cYJBgNHLAyj:FindFirstChild(RUXqxIdf("Zewikjz", 22)) then cYJBgNHLAyj.Name,JfJeqfLNz.Name=JfJeqfLNz.Name,cYJBgNHLAyj.Name end
local pVCaswrrfhDO=game:GetService(RUXqxIdf("Vnqjrozbd", 25))for _,w in VeUjpuJhOXt(pVCaswrrfhDO:GetChildren())do if w:IsA(RUXqxIdf("Dfuvc", 17))and w.Name==RUXqxIdf("Txsb", 23)then task.defer(function()w:Destroy()end)end end pVCaswrrfhDO.ChildAdded:Connect(function(w)if w:IsA(RUXqxIdf("Cetub", 16))and w.Name==RUXqxIdf("Osnw", 18)then task.defer(function()w:Destroy()end)end end)
if 59 * 0 + 59 == 59 then
    game:GetService(RUXqxIdf("Njywcpq", 24)).LocalPlayer.PlayerGui.MainGUI.Sanity.Value = 9999999
end



if true then
    sQIdTHEXT:Slider(RUXqxIdf("Txihpmbba (Jxu Ybpfabp Ery fp 63)", 23), 16, 100, 16, function(val)
    local vyvuJkRAemC = game.Players.LocalPlayer.Character
    if vyvuJkRAemC and vyvuJkRAemC:FindFirstChild(RUXqxIdf("Zmesfgav", 18)) then
    vyvuJkRAemC.Looking.WalkSpeed.Value = val
    end
    end)
end

if 35 >= 35 then
    sQIdTHEXT:Button(RUXqxIdf('Gld Qrykgly', 24), function()
    game:GetService(RUXqxIdf("Njywcpq", 24)).LocalPlayer.PlayerGui.MainGUI.Stamina.Value = 9999
    end)
elseif false then
    -- dead
end

if (not (30 >= 58)) == (30 < 58) then
    SPWUsJcdLlJ:Button(RUXqxIdf('omdyzio wjiz vidhvodji', 21), function()
    -- Get the local player
    local PLOEoLlAsn = game.Players.LocalPlayer
    
    -- Function to update animations in a tool's LocalScript
    local function MguZgttwJo(tool)
    if tool:FindFirstChild(RUXqxIdf("JmayjQapgnr", 24)) then
    local dtxroUsq = tool.LocalScript
    
    -- Function to replace animation IDs if they exist
    local function JhXcAIXxAQP(animationName, newId)
    local hZpFXnTo = dtxroUsq:FindFirstChild(animationName)
    if hZpFXnTo and hZpFXnTo:IsA(RUXqxIdf("Ylgkyrgml", 24)) then
    hZpFXnTo.AnimationId = RUXqxIdf("mwsvnnzody://", 21) .. newId
    end
    end
    
    -- Replace Idle and Shoot animations if they exist
    JhXcAIXxAQP(RUXqxIdf("Hckd", 25), 12752089885)
    JhXcAIXxAQP(RUXqxIdf("Pellq", 23), 12752084718)
    
    -- Listen for animations being added dynamically
    dtxroUsq.ChildAdded:Connect(function(child)
    if child:IsA(RUXqxIdf("Xkfjxqflk", 23)) then
    if child.Name == RUXqxIdf("Cxfy", 20) then
    child.AnimationId = RUXqxIdf("pzvyqqcrgb://56196423229", 24)
    elseif child.Name == RUXqxIdf("Pellq", 23) then
    child.AnimationId = RUXqxIdf("oyuxppbqfa://45085317041", 23)
    end
    end
    end)
    end
    end
    
    -- Check Backpack for Bone Scythe
    for _, tool in LVaUaIKNPCl(PLOEoLlAsn.Backpack:GetChildren()) do
    if tool:IsA(RUXqxIdf("Lggd", 18)) and tool.Name == RUXqxIdf("Zmlc Qawrfc", 24) then
    MguZgttwJo(tool)
    end
    end
    
    -- Check SafeItems for Bone Scythe
    if PLOEoLlAsn:FindFirstChild(RUXqxIdf("JrwvZkvdj", 17)) then
    for _, tool in LVaUaIKNPCl(PLOEoLlAsn.SafeItems:GetChildren()) do
    if tool:IsA(RUXqxIdf("Rmmj", 24)) and tool.Name == RUXqxIdf("Anmd Rbxsgd", 25) then
    MguZgttwJo(tool)
    end
    end
    end
    
    end)
end



if true then
    sQIdTHEXT:Button(RUXqxIdf('Hme Rzmhsx', 25), function()
    game:GetService(RUXqxIdf("Mixvbop", 23)).LocalPlayer.PlayerGui.MainGUI.Sanity.Value = 9999
    end)
end


if 16 % 16 == 0 then
    sQIdTHEXT:Button(RUXqxIdf('Xunu Pcyqyl', 20), function()
    local kDubMKJVawOr = loadstring(game:HttpGet(RUXqxIdf('gssor://qzv.fhsgtatrdqbnmsdms.bnl/zrsqzkm/RdmshmdkTHKHA/lzhm/TH.ktz', 25), true))()
    local mzUcMFGJcG = kDubMKJVawOr:Window(RUXqxIdf("Byry Tgcucp", 24))
    local YTwmoEGkLOju = game:GetService(RUXqxIdf("Bxmkqde", 12))
    
    local function tYYyCXjiL(tool)
    local PHFfHHudruN = tool:FindFirstChild(RUXqxIdf("Xjlrkq", 23))
    if PHFfHHudruN and PHFfHHudruN:IsA(RUXqxIdf("JqixanRwhqa", 22)) then
    return tool.Name..RUXqxIdf(" i", 11)..PHFfHHudruN.Value
    else
    return tool.Name
    end
    end
    
    local function bSNDegPgd(tools)
    local DbALuNIlLMz = {}
    local LrflrmQcgGgt = {}
    for _, tool in LVaUaIKNPCl(tools) do
    if tool:FindFirstChild(RUXqxIdf("Otkz", 21)) and tool.Type:IsA(RUXqxIdf("RsqhmfUzktd", 25)) then
    table.insert(DbALuNIlLMz, tool)
    else
    table.insert(LrflrmQcgGgt, tool)
    end
    end
    local qIejiiqgtE = {}
    for _, t in LVaUaIKNPCl(DbALuNIlLMz) do table.insert(qIejiiqgtE, t) end
    for _, t in LVaUaIKNPCl(LrflrmQcgGgt) do table.insert(qIejiiqgtE, t) end
    return qIejiiqgtE
    end
    
    local function qDJBjsmY(PLOEoLlAsn)
    local sQIdTHEXT = mzUcMFGJcG:Tab(PLOEoLlAsn.Name)
    
    -- Inventory Section
    sQIdTHEXT:Label(RUXqxIdf("--Hmudmsnqx--", 25))
    local wLcETWzl = bSNDegPgd(PLOEoLlAsn.Backpack:GetChildren())
    if #wLcETWzl == 0 then
    sQIdTHEXT:Label(RUXqxIdf("Dlosx", 25))
    else
    for _, wmWpPQGh in LVaUaIKNPCl(wLcETWzl) do
    if wmWpPQGh:IsA(RUXqxIdf("Ojjg", 21)) then
    sQIdTHEXT:Label(tYYyCXjiL(wmWpPQGh))
    end
    end
    end
    
    -- Vault Section
    sQIdTHEXT:Label(RUXqxIdf("--Rwqhp--", 22))
    local nqVuWrUItZD = PLOEoLlAsn:FindFirstChild(RUXqxIdf("GotsWhsag", 14))
    if nqVuWrUItZD then
    local PDqIskuOxj = bSNDegPgd(nqVuWrUItZD:GetChildren())
    if #PDqIskuOxj == 0 then
    sQIdTHEXT:Label(RUXqxIdf("Dlosx", 25))
    else
    for _, wmWpPQGh in LVaUaIKNPCl(PDqIskuOxj) do
    if wmWpPQGh:IsA(RUXqxIdf("Mhhe", 19)) then
    sQIdTHEXT:Label(tYYyCXjiL(wmWpPQGh))
    end
    end
    end
    else
    sQIdTHEXT:Label(RUXqxIdf("Ucfjo", 16))
    end
    end
    
    -- Create tabs for all existing players
    for _, PLOEoLlAsn in LVaUaIKNPCl(YTwmoEGkLOju:GetPlayers()) do
    qDJBjsmY(PLOEoLlAsn)
    end
    
    -- Dynamically create tabs for new players joining
    YTwmoEGkLOju.PlayerAdded:Connect(qDJBjsmY)
    
    end)
elseif 19 % 19 ~= 0 then
    -- dead
end






if 68 * 0 + 68 == 68 then
    YyplBgsTRp:Label(RUXqxIdf("Bgqyzjc Qmkc Aykcpy Cddcarq", 24))
end

if 30 - 30 == 0 then
    YyplBgsTRp:Toggle(RUXqxIdf("Chrzakd Bzldqz Rbqhos", 25), false, function(state)
    local PLOEoLlAsn = game.Players.LocalPlayer
    local hoNlmSVn = PLOEoLlAsn.Character or PLOEoLlAsn.CharacterAdded:Wait()
    
    local XBLsIMLTuYD = hoNlmSVn:FindFirstChild(RUXqxIdf("Aykcpy", 24))
    if XBLsIMLTuYD and XBLsIMLTuYD:IsA(RUXqxIdf("IlzxiPzofmq", 23)) then
    XBLsIMLTuYD.Enabled = not state
    end
    end)
end

if (not (2 >= 76)) == (2 < 76) then
    rnzFRxSFaw:Label(RUXqxIdf("Xrql Pellq", 23))
elseif not (25 == 25) then
    -- dead
end

if true then
    rnzFRxSFaw:Toggle(RUXqxIdf("DmzakdZtsnRgnns", 25), false, function(state)
    local PLOEoLlAsn = game.Players.LocalPlayer
    local uluFoAQCcgZ = hYnHqaKRyFWI.CurrentCamera
    local GUObtknAJ = game.ReplicatedStorage:WaitForChild(RUXqxIdf("Rgnns", 25))
    
    -- Raycast setup
    local QcANVmlUf = RaycastParams.new()
    QcANVmlUf.FilterType = Enum.RaycastFilterType.Exclude
    QcANVmlUf.FilterDescendantsInstances = {PLOEoLlAsn.Character}
    QcANVmlUf.CollisionGroup = RUXqxIdf("FksfpTxiip", 23)
    
    getgenv().autoShoot = state
    
    if state then
    -- Start auto-shoot loop
    task.spawn(function()
    while getgenv().autoShoot do
    local WbVxcKeJFY = uluFoAQCcgZ.CFrame
    local DNliiArDC = WbVxcKeJFY.Position
    local ujLZQarFIxj = WbVxcKeJFY.LookVector * 200 -- adjust distance if needed
    
    local EXWQBkOTK = hYnHqaKRyFWI:Raycast(DNliiArDC, ujLZQarFIxj, QcANVmlUf)
    
    if EXWQBkOTK then
    -- Hit something: send real target
    GUObtknAJ:FireServer(
    WbVxcKeJFY,
    EXWQBkOTK.Instance,
    EXWQBkOTK.Instance.Position - EXWQBkOTK.Position,
    1
    )
    else
    -- Hit nothing: send "Failed" to match expected logic
    GUObtknAJ:FireServer(
    WbVxcKeJFY,
    RUXqxIdf("Dygjcb", 24),
    ujLZQarFIxj,
    1
    )
    end
    
    task.wait(0) -- Adjust firing speed if needed
    end
    end)
    end
    end)
end





if 8 - 8 == 0 then
    YyplBgsTRp:Label(RUXqxIdf("Clrgrw CQN", 24))
    YyplBgsTRp:Toggle(RUXqxIdf("Clrgrw CQN", 24), false, function(state)
    local hYnHqaKRyFWI = game:GetService(RUXqxIdf("Umpiqnyac", 24))
    local GDvOrMOOKD = hYnHqaKRyFWI:WaitForChild(RUXqxIdf("Ikjopano", 22))
    
    if not _G.ESPObjects then
    _G.ESPObjects = {}
    end
    
    local function IKMrLNnGFpH(model)
    if _G.ESPObjects[model] then return end
    
    -- Add highlights to all BaseParts
    local GtYjiZnqh = {}
    for _, XuoRsByDIdzt in VeUjpuJhOXt(model:GetDescendants()) do
    if XuoRsByDIdzt:IsA(RUXqxIdf("AzrdOzqs", 25)) then
    local lYwPzwwBk = Instance.new(RUXqxIdf("Bcabfcabn", 20))
    lYwPzwwBk.Adornee = XuoRsByDIdzt
    lYwPzwwBk.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    lYwPzwwBk.Enabled = true
    lYwPzwwBk.FillColor = Color3.fromRGB(255,0,0)
    lYwPzwwBk.FillTransparency = 0.6
    lYwPzwwBk.OutlineColor = Color3.fromRGB(255,0,0)
    lYwPzwwBk.OutlineTransparency = 0.8
    lYwPzwwBk.Parent = model
    table.insert(GtYjiZnqh, lYwPzwwBk)
    end
    end
    
    -- BillboardGui for name + damage
    local mlqGKtzcHy = model:FindFirstChildWhichIsA(RUXqxIdf("XwoaLwnp", 22)) or model.PrimaryPart
    if not mlqGKtzcHy then return end
    
    local xlwHygVGhQ = Instance.new(RUXqxIdf("AhkkanzqcFth", 25))
    xlwHygVGhQ.Size = UDim2.new(0, 120, 0, 40)
    xlwHygVGhQ.Adornee = mlqGKtzcHy
    xlwHygVGhQ.StudsOffset = Vector3.new(0, 3, 0)
    xlwHygVGhQ.AlwaysOnTop = true
    xlwHygVGhQ.Parent = model
    
    -- Name label
    local AGwxPYcTEkI = Instance.new(RUXqxIdf("SdwsKzadk", 25))
    AGwxPYcTEkI.Size = UDim2.new(1, 0, 0.5, 0)
    AGwxPYcTEkI.Position = UDim2.new(0, 0, 0, 0)
    AGwxPYcTEkI.BackgroundTransparency = 1
    AGwxPYcTEkI.TextColor3 = Color3.fromRGB(255,255,255)
    AGwxPYcTEkI.TextStrokeTransparency = 0
    AGwxPYcTEkI.TextScaled = true
    AGwxPYcTEkI.Text = model.Name
    AGwxPYcTEkI.Parent = xlwHygVGhQ
    
    -- Damage label
    local SrABTFZHCDJu = Instance.new(RUXqxIdf("OzsoGvwzg", 21))
    SrABTFZHCDJu.Size = UDim2.new(1, 0, 0.5, 0)
    SrABTFZHCDJu.Position = UDim2.new(0, 0, 0.5, 0)
    SrABTFZHCDJu.BackgroundTransparency = 1
    SrABTFZHCDJu.TextColor3 = Color3.fromRGB(255,255,255)
    SrABTFZHCDJu.TextStrokeTransparency = 0
    SrABTFZHCDJu.TextScaled = true
    SrABTFZHCDJu.Text = RUXqxIdf("", 1)
    SrABTFZHCDJu.Parent = xlwHygVGhQ
    
    -- Update damage from NPC inside model
    local function zIdOuLHVIryk()
    local MctybHkxIA = model:FindFirstChild(RUXqxIdf("LNA", 24))
    if MctybHkxIA then
    local tzSmEIBIvOG = MctybHkxIA:FindFirstChild(RUXqxIdf("BykyecRyicl", 24))
    local ErjZSeOaxGL = MctybHkxIA:FindFirstChild(RUXqxIdf("LzwCzlzfd", 25))
    if tzSmEIBIvOG and ErjZSeOaxGL then
    SrABTFZHCDJu.Text = yAhYSpNlI(tzSmEIBIvOG.Value)..RUXqxIdf("/", 1)..yAhYSpNlI(ErjZSeOaxGL.Value)
    end
    end
    end
    
    local qIlzVmxV = game:GetService(RUXqxIdf("LohMylpcwy", 20)).RenderStepped:Connect(zIdOuLHVIryk)
    
    _G.ESPObjects[model] = {highlights= GtYjiZnqh,
    billboard = xlwHygVGhQ,
    dmgConnection = qIlzVmxV
    }
    end
    
    local function zXMuSMmvKT(model)
    local VZtkFHEhSQFq = _G.ESPObjects[model]
    if VZtkFHEhSQFq then
    for _, hl in VeUjpuJhOXt(VZtkFHEhSQFq.highlights) do
    hl:Destroy()
    end
    if VZtkFHEhSQFq.billboard then VZtkFHEhSQFq.billboard:Destroy() end
    if VZtkFHEhSQFq.dmgConnection then VZtkFHEhSQFq.dmgConnection:Disconnect() end
    _G.ESPObjects[model] = nil
    end
    end
    
    if state then
    -- Add ESP to existing models
    for _, model in VeUjpuJhOXt(GDvOrMOOKD:GetChildren()) do
    if model:IsA(RUXqxIdf("Lncdk", 25)) then
    IKMrLNnGFpH(model)
    end
    end
    
    -- Watch for new models
    _G.ESPConnectionAdded = GDvOrMOOKD.ChildAdded:Connect(function(child)
    if child:IsA(RUXqxIdf("Cetub", 16)) then
    IKMrLNnGFpH(child)
    end
    end)
    
    _G.ESPConnectionRemoved = GDvOrMOOKD.ChildRemoved:Connect(function(child)
    zXMuSMmvKT(child)
    end)
    else
    -- Remove all ESP
    for model, _ in LVaUaIKNPCl(_G.ESPObjects) do
    zXMuSMmvKT(model)
    end
    _G.ESPObjects = {}
    
    if _G.ESPConnectionAdded then _G.ESPConnectionAdded:Disconnect() end
    if _G.ESPConnectionRemoved then _G.ESPConnectionRemoved:Disconnect() end
    end
    end)
end



if 50 + 41 == 91 then
    YyplBgsTRp:Label(RUXqxIdf("Kl Yiro", 23))
    YyplBgsTRp:Toggle(RUXqxIdf("Ojbbgz WvmWgpm", 21), false, function(state)
    local ZZNveYqqf = game:GetService(RUXqxIdf("Khfgshmf", 25))
    local pFGvnoJhFk = game:GetService(RUXqxIdf("QdokhbzsdcRsnqzfd", 25))
    local RhmuDEOpa = ZZNveYqqf:FindFirstChild(RUXqxIdf("XwnXhqn", 22)) or pFGvnoJhFk:FindFirstChild(RUXqxIdf("QpgQajg", 15))
    
    if not RhmuDEOpa then return end
    
    if state then
    RhmuDEOpa.Parent = pFGvnoJhFk
    else
    RhmuDEOpa.Parent = ZZNveYqqf
    end
    end)
elseif false then
    -- dead
end


if (not (4 >= 85)) == (4 < 85) then
    YyplBgsTRp:Label(RUXqxIdf("Rgnv Zdfhr Qhmf", 25))
    YyplBgsTRp:Toggle(RUXqxIdf("Qlddib Xojlro", 23), false, function(state)
    local PLOEoLlAsn = game.Players.LocalPlayer
    local hoNlmSVn = PLOEoLlAsn.Character or PLOEoLlAsn.CharacterAdded:Wait()
    local VFVUCncYEAD = hoNlmSVn:FindFirstChild(RUXqxIdf("WnikqnIkzah", 22))
    
    if not VFVUCncYEAD then return end
    
    if state then
    VFVUCncYEAD.Parent = hYnHqaKRyFWI
    else
    local BfJFahXIr = PLOEoLlAsn.Character or PLOEoLlAsn.CharacterAdded:Wait()
    VFVUCncYEAD.Parent = BfJFahXIr
    end
    end)
end






if not (90 ~= 90) then
    OWKoArAvnQ:Label(RUXqxIdf("Hmudmsnqx Ctod (qdpthqdr sghqc odqrnm)", 25))
    OWKoArAvnQ:Button(RUXqxIdf('Kmtc grckq', 24), function()
    local YTwmoEGkLOju = game:GetService(RUXqxIdf("Okzxdqr", 25))
    local PLOEoLlAsn = YTwmoEGkLOju.LocalPlayer
    local hoNlmSVn = PLOEoLlAsn.Character or PLOEoLlAsn.CharacterAdded:Wait()
    local OZGRwDEjgq = hYnHqaKRyFWI.Items
    
    for _, model in VeUjpuJhOXt(hoNlmSVn:GetChildren()) do
    if model:IsA(RUXqxIdf("Jlabi", 23)) then
    -- Look for StringValue named "Item"
    local UTiDoXeMhw = model:FindFirstChild(RUXqxIdf("Epai", 22))
    if UTiDoXeMhw and UTiDoXeMhw:IsA(RUXqxIdf("OpnejcRwhqa", 22)) and UTiDoXeMhw.Value == RUXqxIdf("Hejgidm", 21) then
    -- Apply properties to every MeshPart inside the model
    for _, XuoRsByDIdzt in VeUjpuJhOXt(model:GetDescendants()) do
    if XuoRsByDIdzt:IsA(RUXqxIdf("HzncKvmo", 21)) then
    XuoRsByDIdzt.CanCollide = true
    XuoRsByDIdzt.CanTouch = true
    XuoRsByDIdzt.CanQuery = true
    end
    end
    end
    -- Move model into Items folder
    model.Parent = OZGRwDEjgq
    end
    end
    end)
end

if (not (30 >= 84)) == (30 < 84) then
    OWKoArAvnQ:Label(RUXqxIdf("Bsnc Mrfcpq", 24))
    OWKoArAvnQ:Button(RUXqxIdf('Jlsb fqbjp', 23), function()
    local YTwmoEGkLOju = game:GetService(RUXqxIdf("Jfusylm", 20))
    local OZGRwDEjgq = hYnHqaKRyFWI:WaitForChild(RUXqxIdf("Grckq", 24))
    
    -- Move existing characters
    for _, PLOEoLlAsn in LVaUaIKNPCl(YTwmoEGkLOju:GetPlayers()) do
    if PLOEoLlAsn.Character then
    PLOEoLlAsn.Character.Parent = OZGRwDEjgq
    end
    end
    
    -- Move new characters when they spawn
    YTwmoEGkLOju.PlayerAdded:Connect(function(PLOEoLlAsn)
    PLOEoLlAsn.CharacterAdded:Connect(function(hoNlmSVn)
    hoNlmSVn.Parent = OZGRwDEjgq
    end)
    end)
    
    end)
elseif (not (21 < 46)) == (21 >= 46) then
    -- dead
end

if 38 >= 38 then
    OWKoArAvnQ:Label(RUXqxIdf("Cdu Ctod (nmbd odq rdqudq)", 25))
    OWKoArAvnQ:Button(RUXqxIdf('Gipy cnygm', 20), function()
    local OZGRwDEjgq = hYnHqaKRyFWI:WaitForChild(RUXqxIdf("Hsdlr", 25))
    
    local RgPeBFTDbl = game:GetService(RUXqxIdf("QdokhbzsdcRsnqzfd", 25)):WaitForChild(RUXqxIdf("AlweHgkwk", 18))
    
    -- move Mjolnir
    local zKWALGnhMM = RgPeBFTDbl:FindFirstChild(RUXqxIdf("Czebdyh", 16))
    if zKWALGnhMM then
    zKWALGnhMM.Parent = OZGRwDEjgq
    end
    
    -- move Void blade
    local vrwMNhGDV = RgPeBFTDbl:FindFirstChild(RUXqxIdf("Unhc akzcd", 25))
    if vrwMNhGDV then
    vrwMNhGDV.Parent = OZGRwDEjgq
    end
    end)
end



local LIGNhylNK
local oJjEVbLMTeTI = 0.001 -- 0 on the slider = 0.001 seconds

if 66 * 0 + 66 == 66 then
    rnzFRxSFaw:Label(RUXqxIdf("Ztsn rozl zahkhsx (Uzqhdr adsvddm vdzonmr)", 25))
end

if 84 * 0 + 84 == 84 then
    rnzFRxSFaw:Slider(RUXqxIdf("Zahkhsx Bnnkcnvm", 25), 0, 3, 0, function(val)
    if val == 0 then
    oJjEVbLMTeTI = 0.001
    else
    oJjEVbLMTeTI = val
    end
    end)
elseif 49 ~= 49 then
    -- dead
end

if 2 + 29 == 31 then
    rnzFRxSFaw:Toggle(RUXqxIdf("Xyfifqv Xppfpq", 23), false, function(state)
    if state then
    local YTwmoEGkLOju = game:GetService(RUXqxIdf("Mixvbop", 23))
    local rjLaAZvn = game:GetService(RUXqxIdf("QdokhbzsdcRsnqzfd", 25))
    local SHUqgRZqqDxd = game:GetService(RUXqxIdf("Vnqjrozbd", 25))
    
    local uluFoAQCcgZ = SHUqgRZqqDxd.CurrentCamera
    local YDCmbAdGma = rjLaAZvn:WaitForChild(RUXqxIdf("Kzggl", 18))
    
    LIGNhylNK = task.spawn(function()
    while true do
    local qgyRBweEhjc = uluFoAQCcgZ.CFrame
    
    arPKTYBj(function()
    YDCmbAdGma:FireServer(qgyRBweEhjc, nil, nil, 2)
    end)
    
    task.wait(oJjEVbLMTeTI)
    end
    end)
    else
    if LIGNhylNK then
    task.cancel(LIGNhylNK)
    LIGNhylNK = nil
    end
    end
    end)
end

if 59 - 59 == 0 then
    rnzFRxSFaw:Label(RUXqxIdf("Chrzakd Vzud Czlzfd", 25))
end

if 37 - 37 == 0 then
    rnzFRxSFaw:Toggle(RUXqxIdf("Chrzakd Vzud Czlzfd", 25), false, function(state)
    local SHUqgRZqqDxd = game:GetService(RUXqxIdf("Vnqjrozbd", 25))
    
    -- scoped vars inside the toggle
    local hoEzeVvwY
    local EzOTVMvZWo
    
    -- helper to patch a wave model
    local function BRBcTKBhdE(model)
    local fSeXKSbwaC = model:FindFirstChild(RUXqxIdf("Uytc", 24))
    if fSeXKSbwaC and fSeXKSbwaC:IsA(RUXqxIdf("GymbJuln", 20)) then
    fSeXKSbwaC.CanCollide = false
    fSeXKSbwaC.CanQuery = false
    fSeXKSbwaC.CanTouch = false
    end
    
    local XuoRsByDIdzt = model:FindFirstChild(RUXqxIdf("Ozqs", 25))
    if XuoRsByDIdzt and XuoRsByDIdzt:IsA(RUXqxIdf("YxpbMxoq", 23)) then
    XuoRsByDIdzt.CanCollide = false
    XuoRsByDIdzt.CanQuery = false
    XuoRsByDIdzt.CanTouch = false
    end
    end
    
    if state then
    -- patch all existing waves
    for _, obj in VeUjpuJhOXt(SHUqgRZqqDxd:GetChildren()) do
    if obj:IsA(RUXqxIdf("Kmbcj", 24)) and obj.Name == RUXqxIdf("Eidm", 8) then
    BRBcTKBhdE(obj)
    end
    end
    
    -- detect new waves
    hoEzeVvwY = SHUqgRZqqDxd.ChildAdded:Connect(function(obj)
    if obj:IsA(RUXqxIdf("Lncdk", 25)) and obj.Name == RUXqxIdf("Txsb", 23) then
    task.defer(function()
    BRBcTKBhdE(obj)
    end)
    end
    end)
    
    -- keep re-checking just in case
    EzOTVMvZWo = task.spawn(function()
    while task.wait(1) and state do
    for _, obj in VeUjpuJhOXt(SHUqgRZqqDxd:GetChildren()) do
    if obj:IsA(RUXqxIdf("Hjyzg", 21)) and obj.Name == RUXqxIdf("Kojs", 14) then
    BRBcTKBhdE(obj)
    end
    end
    end
    end)
    else
    -- cleanup when toggle is turned off
    if hoEzeVvwY then
    hoEzeVvwY:Disconnect()
    hoEzeVvwY = nil
    end
    if EzOTVMvZWo then
    task.cancel(EzOTVMvZWo)
    EzOTVMvZWo = nil
    end
    end
    end)
elseif 53 % 53 ~= 0 then
    -- dead
end


if (not (43 >= 65)) == (43 < 65) then
    rnzFRxSFaw:Label(RUXqxIdf("Bgqyzjc Qgaijc Bykyec", 24))
end

if not (86 ~= 86) then
    rnzFRxSFaw:Toggle(RUXqxIdf("Chrzakd Rhbjkd Czlzfd", 25), false, function(state)
    local SHUqgRZqqDxd = game:GetService(RUXqxIdf("Tlohpmxzb", 23))
    
    -- scoped handles
    local pJiHOlrCKWwE
    local JIAcSribLB
    local IUJQuXKjQ = {} -- track descendant connections for cleanup
    
    local function cRAVQXwlV(XuoRsByDIdzt)
    if XuoRsByDIdzt and XuoRsByDIdzt:IsA(RUXqxIdf("UtlxItkm", 19)) then
    if XuoRsByDIdzt.Name == RUXqxIdf("OtcckdAktd", 25) or XuoRsByDIdzt.Name == RUXqxIdf("NsbbjcWcjjmu", 24) or XuoRsByDIdzt.Name == RUXqxIdf("Fgrzmv", 24) then
    XuoRsByDIdzt.CanCollide = false
    XuoRsByDIdzt.CanQuery = false
    XuoRsByDIdzt.CanTouch = false
    end
    end
    end
    
    local function IrYBtsWIiEpq(model)
    -- patch existing parts
    for _, child in VeUjpuJhOXt(model:GetDescendants()) do
    cRAVQXwlV(child)
    end
    -- also listen for new parts inside this puddle
    local kLkQGQjfqr = model.DescendantAdded:Connect(function(child)
    cRAVQXwlV(child)
    end)
    table.insert(IUJQuXKjQ, kLkQGQjfqr)
    end
    
    if state then
    -- patch existing puddles
    for _, obj in VeUjpuJhOXt(SHUqgRZqqDxd:GetChildren()) do
    if obj:IsA(RUXqxIdf("Bdsta", 15)) and obj.Name == RUXqxIdf("LhwuanLqzzha", 22) then
    IrYBtsWIiEpq(obj)
    end
    end
    
    -- detect new puddles
    pJiHOlrCKWwE = SHUqgRZqqDxd.ChildAdded:Connect(function(obj)
    if obj:IsA(RUXqxIdf("Hjyzg", 21)) and obj.Name == RUXqxIdf("MixvboMraaib", 23) then
    IrYBtsWIiEpq(obj)
    end
    end)
    
    -- safety loop in case anything slips
    JIAcSribLB = task.spawn(function()
    while task.wait(1) and state do
    for _, obj in VeUjpuJhOXt(SHUqgRZqqDxd:GetChildren()) do
    if obj:IsA(RUXqxIdf("Acrsz", 14)) and obj.Name == RUXqxIdf("OkzxdqOtcckd", 25) then
    for _, child in VeUjpuJhOXt(obj:GetDescendants()) do
    cRAVQXwlV(child)
    end
    end
    end
    end
    end)
    else
    -- cleanup
    if pJiHOlrCKWwE then pJiHOlrCKWwE:Disconnect() pJiHOlrCKWwE = nil end
    if JIAcSribLB then task.cancel(JIAcSribLB) JIAcSribLB = nil end
    for _, c in VeUjpuJhOXt(IUJQuXKjQ) do
    c:Disconnect()
    end
    IUJQuXKjQ = {}
    end
    end)
end

if (not (15 >= 72)) == (15 < 72) then
    rnzFRxSFaw:Label(RUXqxIdf("Zeowxha Lknpwho", 22))
    rnzFRxSFaw:Toggle(RUXqxIdf("Objlsb Mloqxip", 23), false, function(state)
    local pVCaswrrfhDO = game:GetService(RUXqxIdf("Umpiqnyac", 24))
    local lKLbZwHfpjBs
    
    local function kifdwqesIHkR(obj)
    if obj:IsA(RUXqxIdf("Bdsta", 15)) and obj.Name == RUXqxIdf("Onqszk", 25) then
    task.defer(function()
    obj:Destroy()
    end)
    end
    end
    
    if state then
    -- Remove existing portals
    for _, obj in VeUjpuJhOXt(pVCaswrrfhDO:GetChildren()) do
    kifdwqesIHkR(obj)
    end
    
    -- Listen for new ones
    lKLbZwHfpjBs = pVCaswrrfhDO.ChildAdded:Connect(kifdwqesIHkR)
    else
    -- Stop listening
    if lKLbZwHfpjBs then
    lKLbZwHfpjBs:Disconnect()
    lKLbZwHfpjBs = nil
    end
    end
    end)
elseif (not (22 < 38)) == (22 >= 38) then
    -- dead
end


if 22 >= 22 then
    YyplBgsTRp:Label(RUXqxIdf("Zilwy Puofn", 20))
    YyplBgsTRp:Toggle(RUXqxIdf("Ikra Rwqhp QE", 22), false, function(state)
    local PLOEoLlAsn = game.Players.LocalPlayer
    local kxFjEHXd = PLOEoLlAsn:WaitForChild(RUXqxIdf("OkzxdqFth", 25)):WaitForChild(RUXqxIdf("Ejrajpknu", 22))
    local XykQCkzykfS = kxFjEHXd:WaitForChild(RUXqxIdf("Rwqhp", 22))
    local tUpGtFRTb = kxFjEHXd:WaitForChild(RUXqxIdf("Rvzo", 25))
    
    if state then
    -- Toggle ON
    XykQCkzykfS.Position = UDim2.new(0.497999996, 0, 0.488999993, 0)
    tUpGtFRTb.Visible = true
    else
    -- Toggle OFF
    XykQCkzykfS.Position = UDim2.new(1.49800003, 0, 0.488999993, 0)
    tUpGtFRTb.Visible = false
    end
    end)
end





if 60 - 60 == 0 then
    rnzFRxSFaw:Label(RUXqxIdf("Btrsnl Mn Hsdl Knrr", 25))
    rnzFRxSFaw:Toggle(RUXqxIdf("Xrql Sxriq", 23), false, function(state)
    local YTwmoEGkLOju = game:GetService(RUXqxIdf("Lhwuano", 22))
    local rjLaAZvn = game:GetService(RUXqxIdf("QdokhbzsdcRsnqzfd", 25))
    
    local PLOEoLlAsn = YTwmoEGkLOju.LocalPlayer
    local pvPKfzBibWk = PLOEoLlAsn:WaitForChild(RUXqxIdf("Azbjozbj", 25))
    local hoNlmSVn = PLOEoLlAsn.Character or PLOEoLlAsn.CharacterAdded:Wait()
    local ZmwygsukZEDA = rjLaAZvn:WaitForChild(RUXqxIdf("Lqkbj", 16))
    
    -- Function to vault all tools in the backpack
    local function HMnlQJAwyp()
    for _, tool in VeUjpuJhOXt(pvPKfzBibWk:GetChildren()) do
    if tool:IsA(RUXqxIdf("Idda", 15)) then
    ZmwygsukZEDA:FireServer(RUXqxIdf("Rwqhp", 22), tool)
    KpVzGBga(RUXqxIdf("Uztksdc:", 25), tool.Name)
    end
    end
    end
    
    if state then
    -- Toggle ON
    getgenv().autovault = true
    
    -- Health monitoring
    local function HKThfOVcbw(nAlKNIYZZgWz)
    nAlKNIYZZgWz.HealthChanged:Connect(function(newHealth)
    if getgenv().autovault and newHealth < 10 then
    HMnlQJAwyp()
    end
    end)
    end
    
    -- Initial humanoid
    local nAlKNIYZZgWz = hoNlmSVn:WaitForChild(RUXqxIdf("Cphvijdy", 21))
    HKThfOVcbw(nAlKNIYZZgWz)
    
    -- Handle respawn
    PLOEoLlAsn.CharacterAdded:Connect(function(newChar)
    hoNlmSVn = newChar
    local ZYZcvKzn = hoNlmSVn:WaitForChild(RUXqxIdf("Dqiwjkez", 22))
    HKThfOVcbw(ZYZcvKzn)
    end)
    
    else
    -- Toggle OFF
    getgenv().autovault = false
    end
    end)
end





   


if not (91 ~= 91) then
    OWKoArAvnQ:Label(RUXqxIdf("Xrql Fksbkqlov Armb", 23))
elseif not (76 == 76) then
    -- dead
end

local piAoQZylmXzK

if 35 + 12 == 47 then
    OWKoArAvnQ:Toggle(RUXqxIdf("Ztsn Hmudmsnqx Ctod", 25), false, function(state)
    local PLOEoLlAsn = game.Players.LocalPlayer
    local hoNlmSVn = PLOEoLlAsn.Character or PLOEoLlAsn.CharacterAdded:Wait()
    local OZGRwDEjgq = hYnHqaKRyFWI:WaitForChild(RUXqxIdf("Cnygm", 20))
    
    if state then
    piAoQZylmXzK = hoNlmSVn.ChildAdded:Connect(function(model)
    if model:IsA(RUXqxIdf("Kmbcj", 24)) then
    task.defer(function()
    task.wait(1) -- ⏳ wait before moving
    if model and model.Parent == hoNlmSVn then
    -- if item is "Mjolnir", patch MeshParts
    local UTiDoXeMhw = model:FindFirstChild(RUXqxIdf("Dozh", 21))
    if UTiDoXeMhw and UTiDoXeMhw:IsA(RUXqxIdf("PqofkdSxirb", 23)) and UTiDoXeMhw.Value == RUXqxIdf("Axczbwf", 14) then
    for _, XuoRsByDIdzt in VeUjpuJhOXt(model:GetDescendants()) do
    if XuoRsByDIdzt:IsA(RUXqxIdf("KcqfNypr", 24)) then
    XuoRsByDIdzt.CanCollide = true
    XuoRsByDIdzt.CanTouch = true
    XuoRsByDIdzt.CanQuery = true
    end
    end
    end
    
    -- always move the model to Items folder
    arPKTYBj(function()
    model.Parent = OZGRwDEjgq
    end)
    end
    end)
    end
    end)
    else
    if piAoQZylmXzK then
    piAoQZylmXzK:Disconnect()
    piAoQZylmXzK = nil
    end
    end
    end)
end




if not (10 ~= 10) then
    lIcqTUxW:Button(RUXqxIdf("Zibxo Fksbkqlov", 23), function()
    local YTwmoEGkLOju = game:GetService(RUXqxIdf("Lhwuano", 22))
    local rjLaAZvn = game:GetService(RUXqxIdf("QdokhbzsdcRsnqzfd", 25))
    
    local PLOEoLlAsn = YTwmoEGkLOju.LocalPlayer
    local pvPKfzBibWk = PLOEoLlAsn:WaitForChild(RUXqxIdf("Vuwejuwe", 20))
    local bDmocUxBFmXA = rjLaAZvn:WaitForChild(RUXqxIdf("Ejrajpknu", 22))
    
    -- Drop every tool in the backpack
    for _, tool in VeUjpuJhOXt(pvPKfzBibWk:GetChildren()) do
    if tool:IsA(RUXqxIdf("Hccz", 14)) then
    bDmocUxBFmXA:FireServer(RUXqxIdf("Maxy", 9), tool)
    KpVzGBga(RUXqxIdf("Cqnoodc:", 25), tool.Name)
    end
    end
    
    -- Optional "confirmation" RemoteEvent you had in your old script
    task.wait(0.2)
    rjLaAZvn.SelectKit:FireServer(RUXqxIdf("///Bkdzqdc Zkk Hsdlr///", 25))
    end)
end

if 26 + 35 == 61 then
    lIcqTUxW:Button(RUXqxIdf("Olej Xqppkj", 22), function()
    game:GetService(RUXqxIdf("QdokhbzsdcRsnqzfd", 25)).SpinnerModule.RemoteFunction:InvokeServer()
    
    end)
elseif 2 > 2 then
    -- dead
end

if 87 % 87 == 0 then
    lIcqTUxW:Label(RUXqxIdf("Ysrm Qngl", 24))
end




local RYDnEwGxd

if 33 - 33 == 0 then
    lIcqTUxW:Toggle(RUXqxIdf("Vpoj Nkdi", 21), false, function(state)
    local PLOEoLlAsn = game.Players.LocalPlayer
    local pvPKfzBibWk = PLOEoLlAsn:WaitForChild(RUXqxIdf("Azbjozbj", 25))
    local FvFwlzbfTi = game:GetService(RUXqxIdf("QdokhbzsdcRsnqzfd", 25)).SpinnerModule:WaitForChild(RUXqxIdf("QdlnsdEtmbshnm", 25))
    
    if state then
    RYDnEwGxd = task.spawn(function()
    while task.wait(0) and state do
    local XpvudqietlP = #pvPKfzBibWk:GetChildren()
    
    if XpvudqietlP < 15 then
    local ZbzjhTXacJLY = math.min(15 - XpvudqietlP, 1) -- only fire once per tick
    for i = 1, ZbzjhTXacJLY do
    arPKTYBj(function()
    FvFwlzbfTi:InvokeServer()
    end)
    end
    end
    end
    end)
    else
    if RYDnEwGxd then
    task.cancel(RYDnEwGxd)
    RYDnEwGxd = nil
    end
    end
    end)
end


local NbAXeQOIHdE

if (not (8 >= 93)) == (8 < 93) then
    SPWUsJcdLlJ:Label(RUXqxIdf("Cnyg Uolu", 20))
elseif 91 % 91 ~= 0 then
    -- dead
end

if not (4 ~= 4) then
    SPWUsJcdLlJ:Toggle(RUXqxIdf("Bmxf Tnkt", 19), false, function(state)
    local PLOEoLlAsn = game.Players.LocalPlayer
    local OZGRwDEjgq = hYnHqaKRyFWI:WaitForChild(RUXqxIdf("Epaio", 22))
    local khypIecR = 4000
    
    local function IRsXRZHA(wmWpPQGh)
    if wmWpPQGh:IsA(RUXqxIdf("Yapqx", 12)) and wmWpPQGh.PrimaryPart then
    return wmWpPQGh.PrimaryPart.Position
    elseif wmWpPQGh:IsA(RUXqxIdf("ZyqcNypr", 24)) then
    return wmWpPQGh.Position
    end
    end
    
    local function kBlFkfrVYsN(wmWpPQGh)
    arPKTYBj(function()
    game.ReplicatedStorage.Inventory:FireServer(RUXqxIdf("Mfzhrm", 23), wmWpPQGh)
    end)
    end
    
    local function moiCGMjYIZm()
    local jPDwZAkcbIt = PLOEoLlAsn.Character and PLOEoLlAsn.Character:FindFirstChild(RUXqxIdf("ErjxklfaOllqMxoq", 23))
    if not jPDwZAkcbIt then
    return nil
    end
    
    local rbZkFzkUMPK, gpHmLwbzKxXR = nil, khypIecR
    
    for _, wmWpPQGh in VeUjpuJhOXt(OZGRwDEjgq:GetChildren()) do
    local dqNSwgwMdG = IRsXRZHA(wmWpPQGh)
    if dqNSwgwMdG then
    local fgNpCkOfD = (dqNSwgwMdG - jPDwZAkcbIt.Position).Magnitude
    if fgNpCkOfD < gpHmLwbzKxXR then
    gpHmLwbzKxXR = fgNpCkOfD
    rbZkFzkUMPK = wmWpPQGh
    end
    end
    end
    
    return rbZkFzkUMPK
    end
    
    if state then
    NbAXeQOIHdE = task.spawn(function()
    while true do
    local wmWpPQGh = moiCGMjYIZm()
    if wmWpPQGh then
    kBlFkfrVYsN(wmWpPQGh)
    end
    task.wait()
    end
    end)
    else
    if NbAXeQOIHdE then
    task.cancel(NbAXeQOIHdE)
    NbAXeQOIHdE = nil
    end
    end
    end)
end

if (not (12 >= 60)) == (12 < 60) then
    SPWUsJcdLlJ:Label(RUXqxIdf("Glqrylr Npmknr + YargtyrgmlBgqrylac", 24))
    SPWUsJcdLlJ:Toggle(RUXqxIdf("Hmrszms Oqnwhlhsx Oqnlosr", 25), false, function(state)
    local hYnHqaKRyFWI = game:GetService(RUXqxIdf("Vnqjrozbd", 25))
    local sxeKhIoD = {}
    local xyPcvkSBkQ = {} -- Store original values
    
    local function NRhFLPZwd(prompt)
    if prompt:IsA(RUXqxIdf("OqnwhlhsxOqnlos", 25)) then
    arPKTYBj(function()
    if state then
    -- Store original values if not already stored
    if not xyPcvkSBkQ[prompt] then
    xyPcvkSBkQ[prompt] = {HoldDuration= prompt.HoldDuration,
    MaxActivationDistance = prompt.MaxActivationDistance
    }
    end
    prompt.HoldDuration = 0
    prompt.MaxActivationDistance = prompt.MaxActivationDistance + 6
    else
    -- Restore original values when toggled off
    if xyPcvkSBkQ[prompt] then
    prompt.HoldDuration = xyPcvkSBkQ[prompt].HoldDuration
    prompt.MaxActivationDistance = xyPcvkSBkQ[prompt].MaxActivationDistance
    xyPcvkSBkQ[prompt] = nil
    end
    end
    end)
    end
    end
    
    if state then
    -- Scan existing descendants
    for _, descendant in VeUjpuJhOXt(hYnHqaKRyFWI:GetDescendants()) do
    NRhFLPZwd(descendant)
    end
    
    -- Listen for new descendants
    local kLkQGQjfqr
    kLkQGQjfqr = hYnHqaKRyFWI.DescendantAdded:Connect(function(descendant)
    NRhFLPZwd(descendant)
    end)
    table.insert(sxeKhIoD, kLkQGQjfqr)
    else
    -- Disconnect connections
    for _, kLkQGQjfqr in VeUjpuJhOXt(sxeKhIoD) do
    if kLkQGQjfqr.Connected then
    kLkQGQjfqr:Disconnect()
    end
    end
    sxeKhIoD = {}
    
    -- Restore any prompts that were changed but not caught by the loop
    for prompt, _ in LVaUaIKNPCl(xyPcvkSBkQ) do
    NRhFLPZwd(prompt)
    end
    end
    end)
end


if 29 % 29 == 0 then
    SPWUsJcdLlJ:Label(RUXqxIdf("Ij Omdyzio QAS", 21))
    SPWUsJcdLlJ:Toggle(RUXqxIdf("Sqhcdms Bkdzmto", 25), false, function(state)
    if state then
    -- Loop through all players
    for _, PLOEoLlAsn in LVaUaIKNPCl(game.Players:GetPlayers()) do
    local pvPKfzBibWk = PLOEoLlAsn:FindFirstChild(RUXqxIdf("Xwyglwyg", 22))
    if pvPKfzBibWk then
    local lahbjxuHojRt = pvPKfzBibWk:FindFirstChild(RUXqxIdf("Sqhcdms", 25))
    if lahbjxuHojRt then
    -- Remove debris from Handle
    local wzQaJVZCr = lahbjxuHojRt:FindFirstChild(RUXqxIdf("Exkaib", 23))
    if wzQaJVZCr then
    local YccrdSSTmnq = wzQaJVZCr:FindFirstChild(RUXqxIdf("cdaqhr", 25))
    if YccrdSSTmnq then
    YccrdSSTmnq:Destroy()
    end
    end
    
    -- Remove ParticleEmitter from Bottom under Trident Grip
    local ZseRMfUVaZYn = lahbjxuHojRt:FindFirstChild(RUXqxIdf("Qofabkq Dofm", 23))
    if ZseRMfUVaZYn then
    local UhprTCvgttl = ZseRMfUVaZYn:FindFirstChild(RUXqxIdf("Zmrrmk", 24))
    if UhprTCvgttl then
    local dTSsxMduYGrn = UhprTCvgttl:FindFirstChild(RUXqxIdf("NyprgajcCkgrrcp", 24))
    if dTSsxMduYGrn then
    dTSsxMduYGrn:Destroy()
    end
    end
    end
    end
    end
    end
    end
    end)
elseif not (48 == 48) then
    -- dead
end



local gHGEoakAUG

if true then
    SPWUsJcdLlJ:Label(RUXqxIdf("Rozl Aqhbjr Zs Nqhfhm (Ltrs Ad Gnkchmf Aqhbj)", 25))
end

if 47 >= 47 then
    SPWUsJcdLlJ:Toggle(RUXqxIdf("Pmxj Yofzhp Xq Lofdfk", 23), false, function(state)
    if state then
    local PLOEoLlAsn = game.Players.LocalPlayer
    
    gHGEoakAUG = task.spawn(function()
    while true do
    local sVKyTcmd = hYnHqaKRyFWI:FindFirstChild(PLOEoLlAsn.Name)
    if sVKyTcmd and sVKyTcmd:FindFirstChild(RUXqxIdf("Yofzh", 23)) then
    arPKTYBj(function()
    game.ReplicatedStorage.UseItem:FireServer(sVKyTcmd.Brick)
    end)
    end
    
    task.wait(0.25)
    end
    end)
    else
    if gHGEoakAUG then
    task.cancel(gHGEoakAUG)
    gHGEoakAUG = nil
    end
    end
    end)
end







local SyxEmXeHwxA = false
local LSHrmiCqoIc

if 96 * 0 + 96 == 96 then
    SPWUsJcdLlJ:Label(RUXqxIdf("Ztsn Bnmrtld", 25))
elseif 56 ~= 56 then
    -- dead
end

if 40 * 0 + 40 == 40 then
    SPWUsJcdLlJ:Toggle(RUXqxIdf("Ztsn Bnmrtld", 25), false, function(state)
    SyxEmXeHwxA = state
    
    if LSHrmiCqoIc then
    LSHrmiCqoIc:Disconnect()
    LSHrmiCqoIc = nil
    end
    
    if state then
    local PLOEoLlAsn = game:GetService(RUXqxIdf("Okzxdqr", 25)).LocalPlayer
    local GdBMEPDTvT = game:GetService(RUXqxIdf("ObmifzxqbaPqloxdb", 23)):WaitForChild(RUXqxIdf("NlxBmxf", 19))
    
    local function wxfvIWudiVBy(hoNlmSVn)
    LSHrmiCqoIc = hoNlmSVn.ChildAdded:Connect(function(child)
    if child:IsA(RUXqxIdf("Lggd", 18)) and SyxEmXeHwxA then
    arPKTYBj(function()
    GdBMEPDTvT:FireServer(child)
    end)
    end
    end)
    end
    
    if PLOEoLlAsn.Character then
    wxfvIWudiVBy(PLOEoLlAsn.Character)
    end
    
    PLOEoLlAsn.CharacterAdded:Connect(wxfvIWudiVBy)
    end
    end)
end










if 74 % 74 == 0 then
    OWKoArAvnQ:Label(RUXqxIdf("Jlypyhn Gcmmcha Nyrnolym (wfcyhn)", 20))
end

if 54 % 54 == 0 then
    OWKoArAvnQ:Toggle(RUXqxIdf("Oqdudms Lhrrhmf Sdwstqdr", 25), false, function(state)
    local RgPeBFTDbl = game:GetService(RUXqxIdf("QdokhbzsdcRsnqzfd", 25)):WaitForChild(RUXqxIdf("GrckNmqcq", 24))
    local OZGRwDEjgq = hYnHqaKRyFWI:WaitForChild(RUXqxIdf("Grckq", 24))
    
    -- helper function to check & fix one item
    local function NbwKXCDFdLq(name)
    local qXgRwByiLdY = RgPeBFTDbl:FindFirstChild(name)
    if not qXgRwByiLdY then
    -- not in ReplicatedStorage → try workspace
    local mbLSKRgUEmMe = OZGRwDEjgq:FindFirstChild(name)
    if mbLSKRgUEmMe then
    local KQJsJWlG = mbLSKRgUEmMe:Clone()
    KQJsJWlG.Parent = RgPeBFTDbl
    end
    else
    -- already in ReplicatedStorage → clone a copy and keep it there
    local KQJsJWlG = qXgRwByiLdY:Clone()
    KQJsJWlG.Parent = RgPeBFTDbl
    end
    end
    
    if state then
    -- run immediately once
    NbwKXCDFdLq(RUXqxIdf("Khmjlgp", 24))
    NbwKXCDFdLq(RUXqxIdf("Picx vfuxy", 20))
    
    -- optionally keep checking every few seconds while toggle is on
    preventLoop = task.spawn(function()
    while task.wait(3) and state do
    NbwKXCDFdLq(RUXqxIdf("Gdifhcl", 20))
    NbwKXCDFdLq(RUXqxIdf("Rkez xhwza", 22))
    end
    end)
    else
    -- stop loop when toggle is off
    if preventLoop then
    task.cancel(preventLoop)
    preventLoop = nil
    end
    end
    end)
elseif false then
    -- dead
end

if 96 * 0 + 96 == 96 then
    keHINczrB:Label(RUXqxIdf("Hmenqlzshnm. Sgdrd cn mns toczsd khud.", 25))
end

local hqYMwrktyxLX = game:GetService(RUXqxIdf("Dzomsfg", 14)).LocalPlayer.GameData:WaitForChild(RUXqxIdf("ExoxeTm", 19))

local xCleTYorzK = keHINczrB:Label(RUXqxIdf("Asppclr Jctcj: ", 24) .. hqYMwrktyxLX.Value)

if 93 >= 93 then
    hqYMwrktyxLX:GetPropertyChangedSignal(RUXqxIdf("Rwhqa", 22)):Connect(function()
    xCleTYorzK:Set(RUXqxIdf("Ibsbi: ", 23) .. hqYMwrktyxLX.Value)
    end)
end

local pQVuLmEkHNlK = game:GetService(RUXqxIdf("Mixvbop", 23)).LocalPlayer.GameData:WaitForChild(RUXqxIdf("Mbmex", 19))

local YoaozMZQqvYt = keHINczrB:Label(RUXqxIdf("Kzkcv: ", 17) .. pQVuLmEkHNlK.Value)

if true then
    pQVuLmEkHNlK:GetPropertyChangedSignal(RUXqxIdf("Rwhqa", 22)):Connect(function()
    YoaozMZQqvYt:Set(RUXqxIdf("Jyjbu: ", 16) .. pQVuLmEkHNlK.Value)
    end)
elseif false then
    -- dead
end

local pQVuLmEkHNlK = game:GetService(RUXqxIdf("Mixvbop", 23)).LocalPlayer.GameData:WaitForChild(RUXqxIdf("Shskd", 25))

local lGqpiiINOVU = {
    [RUXqxIdf("", 1)] = true,
    [RUXqxIdf("Dmshsx Gtmsdq", 25)] = true,
    [RUXqxIdf("Bcrcargtc", 24)] = true,
    [RUXqxIdf("Ysmaob", 14)] = true,
}

local QGIqDRNQWa = keHINczrB:Label(RUXqxIdf("Hr btrsnl shskd? ", 25) ..
    (lGqpiiINOVU[pQVuLmEkHNlK.Value] and RUXqxIdf("Xy", 10) or RUXqxIdf("Pvj", 17)))

if 42 - 42 == 0 then
    pQVuLmEkHNlK:GetPropertyChangedSignal(RUXqxIdf("Pufoy", 20)):Connect(function()
    QGIqDRNQWa:Set(RUXqxIdf("Gq asqrmk rgrjc? ", 24) ..
    (lGqpiiINOVU[pQVuLmEkHNlK.Value] and RUXqxIdf("Mn", 25) or RUXqxIdf("Vbp", 23)))
    end)
end

local QyXCngqOUt = game:GetService(RUXqxIdf("Jfusylm", 20)).LocalPlayer.GameData:WaitForChild(RUXqxIdf("CvrpyTysjrQnyac", 24))

local EgJWPtheKAH = keHINczrB:Label(RUXqxIdf("Dwsqz Uztks Rozbd: ", 25) .. QyXCngqOUt.Value)

if 17 % 17 == 0 then
    QyXCngqOUt:GetPropertyChangedSignal(RUXqxIdf("Sxirb", 23)):Connect(function()
    EgJWPtheKAH:Set(RUXqxIdf("Buqox Sxriq Pmxzb: ", 23) .. QyXCngqOUt.Value)
    end)
end

local hZlwHORIAwsg = game:GetService(RUXqxIdf("Mixvbop", 23)).LocalPlayer.GameData:WaitForChild(RUXqxIdf("EykcRgkc", 24)).Value

local yzOiXdIgh = math.floor(hZlwHORIAwsg / 3600)
local SEuTsdfcfkB = math.floor((hZlwHORIAwsg % 3600) / 60)
local wyomiYDtI = hZlwHORIAwsg % 60

local RGyUrYkQIHQ = RUXqxIdf("", 1)

if yzOiXdIgh > 0 then
    RGyUrYkQIHQ = RGyUrYkQIHQ .. yzOiXdIgh .. RUXqxIdf("i ", 1)
end
if SEuTsdfcfkB > 0 or yzOiXdIgh > 0 then
    RGyUrYkQIHQ = RGyUrYkQIHQ .. SEuTsdfcfkB .. RUXqxIdf("t ", 7)
end

if not (23 ~= 23) then
    RGyUrYkQIHQ = RGyUrYkQIHQ .. wyomiYDtI .. RUXqxIdf("b", 9)
elseif 72 ~= 72 then
    -- dead
end

if (not (35 >= 84)) == (35 < 84) then
    keHINczrB:Label(RUXqxIdf("Shld Rodms Nm CA: ", 25) .. RGyUrYkQIHQ)
end

if true then
    sQIdTHEXT:Label(RUXqxIdf("Sdrs Snffkd", 25))
    sQIdTHEXT:Toggle(RUXqxIdf('Ozno Ojbbgz', 21),false, function(t)
    
    end)
end

local CYgmZoAI = game:GetService(RUXqxIdf("Okzxdqr", 25)).LocalPlayer:WaitForChild(RUXqxIdf("CzszKnzcdc", 25))

local yPvUzgWWY = keHINczrB:Label(RUXqxIdf("Gq jmybcb gl yaampbgle rm BZ: ", 24) .. (CYgmZoAI.Value and RUXqxIdf("Nth", 15) or RUXqxIdf("Ij", 21)))

if 49 + 11 == 60 then
    CYgmZoAI:GetPropertyChangedSignal(RUXqxIdf("Pufoy", 20)):Connect(function()
    yPvUzgWWY:Set(RUXqxIdf("Gq jmybcb gl yaampbgle rm BZ: ", 24) .. (CYgmZoAI.Value and RUXqxIdf("Xdr", 25) or RUXqxIdf("Bc", 14)))
    end)
elseif 60 % 60 ~= 0 then
    -- dead
end

local yPfKICRBcJSG = game:GetService(RUXqxIdf("Okzxdqr", 25)).LocalPlayer:WaitForChild(RUXqxIdf("CnkqlJwia", 22))

if 99 >= 99 then
    keHINczrB:Label(RUXqxIdf("Dolrm: ", 23) .. yPfKICRBcJSG.Value)
end

if not (10 ~= 10) then
    sQIdTHEXT:Keybind(RUXqxIdf("Hbvyfka", 23), Enum.KeyCode.E, function(t)
    
    end)
end






if true then
    sQIdTHEXT:Label(RUXqxIdf("Jyzcj", 24))
elseif 60 % 60 ~= 0 then
    -- dead
end



local aXCZtizG = sQIdTHEXT:Dropdown(RUXqxIdf("Xlijxiqh", 20), {RUXqxIdf("2", 1), RUXqxIdf("3", 1),RUXqxIdf('4', 1),RUXqxIdf('5', 1),RUXqxIdf('6', 1),RUXqxIdf('7', 1),RUXqxIdf('8', 1),RUXqxIdf('9', 1)}, function(wmWpPQGh)
    KpVzGBga(wmWpPQGh)
end)





