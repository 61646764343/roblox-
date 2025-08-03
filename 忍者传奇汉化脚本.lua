-- Script Created By Ronin --

local player = game.Players.LocalPlayer

local library = loadstring(game:HttpGet("https://pastebin.com/raw/JsdM2jiP",true))()
library.options.underlinecolor = "rainbow"

-- Farming Tab
local Farming = library:CreateWindow("锻炼")
Farming:Section("- 业报锻炼 -")
local GK = Farming:Toggle("自动刷善良业报", {flag = "GK"})
local BK = Farming:Toggle("自动刷邪恶业报", {flag = "BK"})
Farming:Section("- 超级硬币 -")
local Swing = Farming:Toggle("自动挥刀", {flag = "Swing"})
local Sell = Farming:Toggle("自动出售", {flag = "Sell"})
local BackpackFull = Farming:Toggle("自动全部出售", {flag = "FullSell"})
Farming:Section("- 超级芝加哥 -")
local Chi = Farming:Toggle("自动芝加哥", {flag = "Chi"})
Farming:Section("- boss锻炼 -")
local Boss = Farming:Toggle("自动杀死机器人boss", {flag = "Boss"})
local ETBoss = Farming:Toggle("自动杀死不朽boss", {flag = "EBoss"})
local AMBoss = Farming:Toggle("自动杀死古代boss", {flag = "ABoss"})
local SNB = Farming:Toggle("自动杀死圣诞老人boss", {flag = "SBoss"})
local AllBoss = Farming:Toggle("自动杀死全部boss", {flag = "AllBosses"})
Farming:Section("- 给宠物升级 -")
local EAR = Farming:Toggle("自动给宠物升级", {flag = "L"}) 

-- Auto-Buy Tab
local AutoBuy = library:CreateWindow("自动买")
AutoBuy:Section("- 自动买东西 -")
local Rank = AutoBuy:Toggle("自动买等级", {flag = "Rank"}) 
local Sword = AutoBuy:Toggle("自动买剑", {flag = "Sword"}) 
local Belt = AutoBuy:Toggle("自己买腰带", {flag = "Belt"}) 
local Skill = AutoBuy:Toggle("自动买技能", {flag = "Skill"}) 
local Shuriken = AutoBuy:Toggle("自动买飞镖", {flag = "Shurikens"})
_G.Enabled = AutoBuy.flags.Purchase
_G.Sword = AutoBuy.flags.Sword
_G.Belt = AutoBuy.flags.Belt
_G.Rank = AutoBuy.flags.Rank
_G.Skill = AutoBuy.flags.Skill

local Pets = library:CreateWindow("宠物用品")
-- Open Pets
Pets:Section("- 打开宠物 -")
local Settings = {}
local Crystals = {}
for i,v in next, game.workspace.mapCrystalsFolder:GetChildren() do 
if v then 
table.insert(Crystals,v.Name)
end
end
Pets:Dropdown('Crystals', {location = Settings, flag = "水晶", list = Crystals})
Pets:Toggle("打开蛋", {location = Settings, flag = "TEgg"})

-- Pet Options
Pets:Section("- 宠物选项 -")
local Evolve = Pets:Toggle("自动进化", {flag = "Evolve"})
local Eternalise = Pets:Toggle("自动永恒", {flag = "Eternalise"})
local Immortalize = Pets:Toggle("自动永生", {flag = "Immortalize"}) 
local Legend = Pets:Toggle("自动传奇", {flag = "Legend"}) 
local Elemental = Pets:Toggle("自动元素", {flag = "Elemental"}) 

-- Sell Pets
Pets:Section("- 卖宠物 -")
local Basic = Pets:Toggle("出售全部基本宠物", {flag = "SBasic"}) 
local Advanced = Pets:Toggle("出售全部高级宠物", {flag = "SAdvanced"})
local Rare = Pets:Toggle("出售全部稀有宠物", {flag = "SRare"}) 
local Epic = Pets:Toggle("出售全部史诗宠物", {flag = "SEpic"}) 
local Unique = Pets:Toggle("出售全部独一无二的宠物", {flag = "SUnique"})
local Omega = Pets:Toggle("出售全部欧米茄宠物", {flag = "SOmega"})
local Elite = Pets:Toggle("出售全部精英宠物", {flag = "SElite"})
local Infinity = Pets:Toggle("出售全部无限宠物", {flag = "SInfinity"})

-- Sell Seperate Pets Tab
local Pets2 = library:CreateWindow("更多宠物用品")
Pets2:Section("- 出售分离宠物 -")
local Pet1 = Pets2:Toggle("出售全部冬季小猫", {flag = "S1"})
local Pet2 = Pets2:Toggle("出售全部北极熊", {flag = "S2"})
local Pet3 = Pets2:Toggle("出售全部驯鹿唤醒", {flag = "S3"})
local Pet4 = Pets2:Toggle("自动出售全部黑企鹅", {flag = "S4"})
local Pet5 = Pets2:Toggle("出售全部雪橇高手", {flag = "S5"})
-- Misc
local Misc = library:CreateWindow("杂项")
Misc:Section("- 其他传送脚本 -")
local Shuriken = Misc:Toggle("快速手里剑", {flag = "Fast"})
local Shuriken2 = Misc:Toggle("慢速手里剑", {flag = "Slow"})
local Invis = Misc:Toggle("", {flag = "Invis"})

-- Collect All Chest
local ChestCollect = Misc:Button("收集所有宝箱", function()
game:GetService("Workspace").mythicalChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(3.5)
game:GetService("Workspace").goldenChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(3.5)
game:GetService("Workspace").enchantedChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(3.5)
game:GetService("Workspace").magmaChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(3.5)
game:GetService("Workspace").legendsChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(3.5)
game:GetService("Workspace").eternalChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(3.5)
game:GetService("Workspace").saharaChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(3.5)
game:GetService("Workspace").thunderChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(3.5)
game:GetService("Workspace").ancientChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(3.5)
game:GetService("Workspace").midnightShadowChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(3.5)
game:GetService("Workspace").groupRewardsCircle["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(3.5)
game:GetService("Workspace")["Daily Chest"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(3.5)
game:GetService("Workspace")["wonderChest"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(3.5)
game:GetService("Workspace").wonderChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game:GetService("Workspace").midnightShadowChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game:GetService("Workspace").ancientChest["circleInner"].CFrame = game.Workspace.Part.CFrame
game:GetService("Workspace").midnightShadowChest["circleInner"].CFrame = game.Workspace.Part.CFrame
game:GetService("Workspace").thunderChest["circleInner"].CFrame = game.Workspace.Part.CFrame
game:GetService("Workspace").saharaChest["circleInner"].CFrame = game.Workspace.Part.CFrame
game:GetService("Workspace").eternalChest["circleInner"].CFrame = game.Workspace.Part.CFrame
game:GetService("Workspace").legendsChest["circleInner"].CFrame = game.Workspace.Part.CFrame
game:GetService("Workspace").magmaChest["circleInner"].CFrame = game.Workspace.Part.CFrame
game:GetService("Workspace").enchantedChest["circleInner"].CFrame = game.Workspace.Part.CFrame
game:GetService("Workspace").goldenChest["circleInner"].CFrame = game.Workspace.Part.CFrame
game:GetService("Workspace").mythicalChest["circleInner"].CFrame = game.Workspace.Part.CFrame
game:GetService("Workspace").groupRewardsCircle["circleInner"].CFrame = game.Workspace.Part.CFrame
game:GetService("Workspace")["Daily Chest"].circleInner.CFrame = game.Workspace.Part.CFrame
end)

-- Collect Light Karma Chest
local LightKarma = Misc:Button("收集光明宝箱", function()
game:GetService("Workspace").lightKarmaChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(5)
game:GetService("Workspace").lightKarmaChest["circleInner"].CFrame = game.Workspace.Part.CFrame
end)
 
-- Collect Dark Karma Chest
local ChestCollect = Misc:Button("收集黑暗宝箱", function()
game:GetService("Workspace").evilKarmaChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(5)
game:GetService("Workspace").evilKarmaChest["circleInner"].CFrame = game.Workspace.Part.CFrame
end)

-- Unlock All Islands
local UnlockIsland = Misc:Button("解锁岛屿", function()
for i,v in next, game.workspace.islandUnlockParts:GetChildren() do 
if v then 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.islandSignPart.CFrame; 
wait(.5)
end
end
end)

-- Max Jump
local MaxJP = Misc:Button("最高跳", function()
while wait(.0001) do
game.Players.LocalPlayer.multiJumpCount.Value = "50"
end
end)

-- Hide Name
local HideName = Misc:Button("隐藏名称", function()
local plrname = game.Players.LocalPlayer.Name
workspace[plrname].Head.nameGui:Destroy()
end)

-- ESP
local ESP = Misc:Button("经验", function()
function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
function UpdatePlayerChams()
for i,v in pairs(game:GetService'Players':GetChildren()) do
pcall(function()
if not isnil(v.Character) then
for _,k in pairs(v.Character:GetChildren()) do
if k:IsA'BasePart' and not k:FindFirstChild'Cham' then
local cham = Instance.new('BoxHandleAdornment',k)
cham.ZIndex= 10
cham.Adornee=k
cham.AlwaysOnTop=true
cham.Size=k.Size
cham.Transparency=.8
cham.Color3=Color3.new(0,0,1)
cham.Name = 'Cham'
end
end
if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild'NameEsp' then
local bill = Instance.new('BillboardGui',v.Character.Head)
bill.Name = 'NameEsp'
bill.Size=UDim2.new(1,200,1,30)
bill.Adornee=v.Character.Head
bill.AlwaysOnTop=true
local name = Instance.new('TextLabel',bill)
name.TextWrapped=true
name.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..'m')
name.Size = UDim2.new(1,0,1,0)
name.TextYAlignment='Top'
name.TextColor3=Color3.new(1,1,1)
name.BackgroundTransparency=1
else
v.Character.Head.NameEsp.TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..'m')
end
end
end)
end
end
while wait() do
UpdatePlayerChams()
end
end)

-- Toggle Popups (Chi/Coin thigns)
Misc:Bind("切换弹出窗口",
{flag = "pop", owo = true},
function()
game:GetService("Players").LocalPlayer.PlayerGui.statEffectsGui.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.statEffectsGui.Enabled
game:GetService("Players").LocalPlayer.PlayerGui.hoopGui.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.hoopGui.Enabled
end)

-- Toggable GUI Key
Misc:Bind("切换GUI键",
{flag = "Toggle", owo = true},
function()
library.toggled = not library.toggled;
for i, data in next, library.queue do
local pos = (library.toggled and data.p or UDim2.new(-1, 0, -0.5,0))
data.w:TweenPosition(pos, (library.toggled and 'Out' or 'In'), 'Quad', 0.15, true)
wait();
end
end)

-- Destroy GUI
local Kill = Misc:Button("破坏GUI", function()
game:GetService("CoreGui").ScreenGui:Destroy()
end)

local Teleports = library:CreateWindow("传送")

-- World/Island Teleports
Teleports:Section("- 岛屿 -")
local Islands = {}
for i,v in next, game.workspace.islandUnlockParts:GetChildren() do 
if v then 
table.insert(Islands, v.Name)
end
end
Teleports:Dropdown('Teleports', {list = Islands}, function(a)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.islandUnlockParts[a].islandSignPart.CFrame
end)

-- Utilitys
Teleports:Section("- Utilitys -")
local Shop = Teleports:Button("Shop", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").shopAreaCircles["shopAreaCircle11"].circleInner.CFrame
end)
local Skills = Teleports:Button("Skills Shop", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").skillAreaCircles["skillsAreaCircle11"].circleInner.CFrame
end)
local Skills1 = Teleports:Button("Light Skills Shop", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-116.49514, 3.24800324, 0.0838552266)
end)
local Skills2 = Teleports:Button("Dark Skills Shop", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-116.549767, 3.24800324, 58.087841)
end)
local KOTH = Teleports:Button("KOTH", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").kingOfTheHillPart.CFrame
end)

-- Training Area Teleports
Teleports:Section("- Training Areas -")
local a1 = Teleports:Button("Mystical Waters (Good)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(347.74881, 8824.53809, 114.271019)
end)
local a2 = Teleports:Button("Sword of Legends (Good)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1834.15967, 38.704483, -141.375641)
end)
local a5 = Teleports:Button("Elemental Tornado (Good)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(299.758484, 30383.0957, -90.1542206)
end)
local a3 = Teleports:Button("Lava Pit (Bad)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-116.631485, 12952.5381, 271.14624)
end)
local a4 = Teleports:Button("Tornado (Bad)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(325.641174, 16872.0938, -9.9906435)
end)
local a6 = Teleports:Button("Swords Of Ancients (Bad)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(648.365662, 38.704483, 2409.72266)
end)

if _G.PlaceLoopTP == true then
local Teleports2 = library:CreateWindow("More Teleports")
Teleports2:Section("- Training Areas (Looped) -")
local avh = Teleports2:Button("Mystical Waters (Good)", function()
while true do
wait(.001)
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(347.74881, 8824.53809, 114.271019)
end
end
end)
local sdgy6 = Teleports2:Button("Sword of Legends (Good)", function()
while true do
wait(.001)
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1834.15967, 38.704483, -141.375641)
end
end
end)
local asdy = Teleports2:Button("Elemental Tornado (Good)", function()
while true do
wait(.001)
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(299.758484, 30383.0957, -90.1542206)
end
end
end)
local yassf = Teleports2:Button("Lava Pit (Bad)", function()
while true do
wait(.001)
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-116.631485, 12952.5381, 271.14624)
end
end
end)
local sdfj = Teleports2:Button("Tornado (Bad)", function()
while true do
wait(.001)
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(325.641174, 16872.0938, -9.9906435)
end
end
end)
local jhas = Teleports2:Button("Swords Of Ancients (Bad)", function()
while true do
wait(.001)
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(648.365662, 38.704483, 2409.72266)
end
end
end)
end



-- Open Crystals
spawn(function()
while wait(.01) do
if Settings.TEgg then
local oh1 = "openCrystal"
local oh2 = Settings.Crystal
game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(oh1, oh2)
end
end
end)

-- Auto-Swing
spawn(function()
while wait() do
if Farming.flags.Swing then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then 
game.Players.LocalPlayer.ninjaEvent:FireServer("swingKatana")
else
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
if v.ClassName == "Tool" and v:FindFirstChild("attackShurikenScript") then 
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
wait()
if v.ClassName == "Tool" and v:FindFirstChild("attackKatanaScript") then 
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)                            
end
end
end
end
end
end
end
end)

-- Auto-Sell
spawn(function()
while wait(0.01) do
if Farming.flags.Sell then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
wait(.1)
game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame = game.Workspace.Part.CFrame
end
end
end
end)

-- Auto-Full Sell
spawn(function()
while wait(0.01) do
if Farming.flags.FullSell then 
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
if player.PlayerGui.gameGui.maxNinjitsuMenu.Visible == true then
game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
wait(.05)
game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame = game.Workspace.Part.CFrame
end
end
end
end
end)

-- Invisibility
spawn(function()
while wait(0.001) do
if Misc.flags.Invis then
local A_1 = "goInvisible"
local Event = game.Players.LocalPlayer.ninjaEvent
Event:FireServer(A_1)
end
end
end)

-- Auto-Pet Levels
spawn(function()
while wait(0.00011) do
if Farming.flags.L then
local plr = game.Players.LocalPlayer
for _,v in pairs(workspace.Hoops:GetDescendants()) do
if v.ClassName == "MeshPart" then
v.touchPart.CFrame = plr.Character.HumanoidRootPart.CFrame
end
end
end
end
end)

-- Good Karma Farm
spawn(function()
while wait(0.4) do
if Farming.flags.GK then
loadstring(game:HttpGet(('https://pastebin.com/raw/AaqHqPyw'),true))()
end
end
end)

-- Bad Karma Farm
spawn(function()
while wait(0.4) do
if Farming.flags.BK then
loadstring(game:HttpGet(('https://pastebin.com/raw/wEEB3nQt'),true))()	
end
end
end)

-- Auto-Normal Boss
spawn(function()
while wait(.001) do
if Farming.flags.Boss then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
if game:GetService("Workspace").bossFolder:WaitForChild("RobotBoss"):WaitForChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.bossFolder.RobotBoss.HumanoidRootPart.CFrame
if player.Character:FindFirstChildOfClass("Tool") then
player.Character:FindFirstChildOfClass("Tool"):Activate()
else
for i,v in pairs(player.Backpack:GetChildren()) do
if v.ClassName == "Tool" and v:FindFirstChild("attackKatanaScript") then
v.attackTime.Value = 0.2
player.Character.Humanoid:EquipTool(v)
if attackfar then
for i,v in pairs(player.Backpack:GetChildren()) do
if v.ClassName == "Tool" and v:FindFirstChild("attackShurikenScript") then
player.Character.Humanoid:EquipTool(v)
end
end
end            
end
end
end
end
end
end
end
end)

-- Auto-Eternal Boss
spawn(function()
while wait(.001) do
if Farming.flags.EBoss then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
if game:GetService("Workspace").bossFolder:WaitForChild("EternalBoss"):WaitForChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.bossFolder.EternalBoss.HumanoidRootPart.CFrame
if player.Character:FindFirstChildOfClass("Tool") then
player.Character:FindFirstChildOfClass("Tool"):Activate()
else
for i,v in pairs(player.Backpack:GetChildren()) do
if v.ClassName == "Tool" and v:FindFirstChild("attackKatanaScript") then
v.attackTime.Value = 0.2
player.Character.Humanoid:EquipTool(v)
if attackfar then
for i,v in pairs(player.Backpack:GetChildren()) do
if v.ClassName == "Tool" and v:FindFirstChild("attackShurikenScript") then
player.Character.Humanoid:EquipTool(v)
end
end
end      
end      
end
end
end
end
end
end
end)

-- Auto-Anchient Boss
spawn(function()
while wait(.001) do
if Farming.flags.ABoss then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
if game:GetService("Workspace").bossFolder:WaitForChild("AncientMagmaBoss"):WaitForChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.bossFolder.AncientMagmaBoss.HumanoidRootPart.CFrame
if player.Character:FindFirstChildOfClass("Tool") then
player.Character:FindFirstChildOfClass("Tool"):Activate()
else
for i,v in pairs(player.Backpack:GetChildren()) do
if v.ClassName == "Tool" and v:FindFirstChild("attackKatanaScript") then
v.attackTime.Value = 0.2
player.Character.Humanoid:EquipTool(v)
if attackfar then
for i,v in pairs(player.Backpack:GetChildren()) do
if v.ClassName == "Tool" and v:FindFirstChild("attackShurikenScript") then
player.Character.Humanoid:EquipTool(v)
end
end
end      
end      
end
end
end
end
end
end
end)

spawn(function()
while wait(.001) do
if Farming.flags.SBoss then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
if game:GetService("Workspace").bossFolder:WaitForChild("Samurai Santa"):WaitForChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.bossFolder["Samurai Santa"].HumanoidRootPart.CFrame
if player.Character:FindFirstChildOfClass("Tool") then
player.Character:FindFirstChildOfClass("Tool"):Activate()
else
for i,v in pairs(player.Backpack:GetChildren()) do
if v.ClassName == "Tool" and v:FindFirstChild("attackKatanaScript") then
v.attackTime.Value = 0.2
player.Character.Humanoid:EquipTool(v)
if attackfar then
for i,v in pairs(player.Backpack:GetChildren()) do
if v.ClassName == "Tool" and v:FindFirstChild("attackShurikenScript") then
player.Character.Humanoid:EquipTool(v)
end
end
end      
end      
end
end
end
end
end
end
end)

-- Auto-All Bosses
spawn(function()
while wait(.001) do
if Farming.flags.AllBosses then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
if game.Workspace.bossFolder:FindFirstChild("Samurai Santa") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.bossFolder["Samurai Santa"].HumanoidRootPart.CFrame
else
if not game.Workspace.bossFolder:FindFirstChild("Samurai Santa") then
if game.Workspace.bossFolder:FindFirstChild("AncientMagmaBoss") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.bossFolder.AncientMagmaBoss.HumanoidRootPart.CFrame
else
if not game.Workspace.bossFolder:FindFirstChild("AncientMagmaBoss") then
if game.Workspace.bossFolder:FindFirstChild("EternalBoss") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.bossFolder.EternalBoss.HumanoidRootPart.CFrame
else
if not game.Workspace.bossFolder:FindFirstChild("EternalBoss") then
if game.Workspace.bossFolder:FindFirstChild("RobotBoss") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.bossFolder.RobotBoss.HumanoidRootPart.CFrame
end
end
end
end
end
end
end
if player.Character:FindFirstChildOfClass("Tool") then
player.Character:FindFirstChildOfClass("Tool"):Activate()
else
for i,v in pairs(player.Backpack:GetChildren()) do
if v.ClassName == "Tool" and v:FindFirstChild("attackKatanaScript") then
v.attackTime.Value = 0.2
player.Character.Humanoid:EquipTool(v)
if attackfar then
for i,v in pairs(player.Backpack:GetChildren()) do
if v.ClassName == "Tool" and v:FindFirstChild("attackShurikenScript") then
player.Character.Humanoid:EquipTool(v)
end
end
end
end
end
end
end
end
end
end)

-- Auto-Buy Swords
spawn(function()
while wait(0.5) do
if AutoBuy.flags.Sword then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
local oh1 = "buyAllSwords"
local oh2 = {"Ground", "Astral Island", "Space Island","Tundra Island", "Eternal Island", "Sandstorm", "Thunderstorm", "Ancient Inferno Island", "Midnight Shadow Island", "Mythical Souls Island", "Winter Wonder Island"}
for i = 1,#oh2 do
game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
end
end
end
end
end)

-- Auto-Buy Belts
spawn(function()
while wait(0.5) do
if AutoBuy.flags.Belt then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
local oh1 = "buyAllBelts"
local oh2 = {"Ground", "Astral Island", "Space Island","Tundra Island", "Eternal Island", "Sandstorm", "Thunderstorm", "Ancient Inferno Island", "Midnight Shadow Island", "Mythical Souls Island", "Winter Wonder Island"}
for i = 1,#oh2 do
game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
end
end
end
end
end)

-- Auto-Buy Skills
spawn(function()
while wait(0.5) do
if AutoBuy.flags.Skill then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
local oh1 = "buyAllSkills"
local oh2 = {"Ground", "Astral Island", "Space Island","Tundra Island", "Eternal Island", "Sandstorm", "Thunderstorm", "Ancient Inferno Island", "Midnight Shadow Island", "Mythical Souls Island", "Winter Wonder Island"}
for i = 1,#oh2 do
game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
end
end
end
end
end)

-- Auto-Buy Ranks
spawn(function()
while wait(0.5) do
if AutoBuy.flags.Rank then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
local oh1 = "buyRank"
local oh2 = game:GetService("ReplicatedStorage").Ranks.Ground:GetChildren()
for i = 1,#oh2 do
game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i].Name)
end
end
end
end
end)

-- Auto-Buy Shurikens
spawn(function()
while wait(0.5) do
if AutoBuy.flags.Shurikens then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
local oh1 = "buyAllShurikens"
local oh2 = {"Ground", "Astral Island", "Space Island","Tundra Island", "Eternal Island", "Sandstorm", "Thunderstorm", "Ancient Inferno Island", "Midnight Shadow Island", "Mythical Souls Island", "Winter Wonder Island"}
for i = 1,#oh2 do
game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
end
end
end
end
end)

-- Auto-Chi
spawn(function()
while wait(0.033) do 
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
if Farming.flags.Chi then
for i,v in pairs(game.Workspace.spawnedCoins.Valley:GetChildren()) do
if v.Name == "Blue Chi Crate" then 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
wait(.16)
end
end
end
end
end
end)

-- Auto Evolve Pet
spawn(function()
while wait(3) do
if Pets.flags.Evolve then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game:GetService("Players").LocalPlayer.petsFolder:GetChildren()) do
for i,x in pairs(v:GetChildren()) do
local oh1 = "evolvePet"
local oh2 = x.Name
game:GetService("ReplicatedStorage").rEvents.petEvolveEvent:FireServer(oh1, oh2)
end
end
end
end
end
end)

-- Auto-Eternalize Pet
spawn(function()
while wait(3) do
if Pets.flags.Eternalise then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game:GetService("Players").LocalPlayer.petsFolder:GetChildren()) do
for i,x in pairs(v:GetChildren()) do
local oh1 = "eternalizePet"
local oh2 = x.Name
game:GetService("ReplicatedStorage").rEvents.petEternalizeEvent:FireServer(oh1, oh2)
end
end
end
end
end
end)

-- Auto-Immortalize Pet
spawn(function()
while wait(3) do
if Pets.flags.Immortalize then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game:GetService("Players").LocalPlayer.petsFolder:GetChildren()) do
for i,x in pairs(v:GetChildren()) do
local oh1 = "immortalizePet"
local oh2 = x.Name
game:GetService("ReplicatedStorage").rEvents.petImmortalizeEvent:FireServer(oh1, oh2)
end
end
end
end
end
end)

-- Auto-Legend Pet
spawn(function()
while wait(3) do
if Pets.flags.Legend then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game:GetService("Players").LocalPlayer.petsFolder:GetChildren()) do
for i,x in pairs(v:GetChildren()) do
local oh1 = "legendizePet"
local oh2 = x.Name
game:GetService("ReplicatedStorage").rEvents.petLegendEvent:FireServer(oh1, oh2)
end
end
end
end
end
end)

spawn(function()
while wait(3) do
if Pets.flags.Elemental then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game:GetService("Players").LocalPlayer.petsFolder:GetChildren()) do
for i,x in pairs(v:GetChildren()) do
local oh1 = "elementalizePet"
local oh2 = x.Name
game:GetService("ReplicatedStorage").rEvents.petLegendEvent:FireServer(oh1, oh2)
end
end
end
end
end
end)

-- Sell All Basics
spawn(function() 
while wait(1) do 
if Pets.flags.SBasic then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game.Players.LocalPlayer.petsFolder.Basic:GetChildren()) do
game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
end
end
end
end
end)

-- Sell All Advanced
spawn(function() 
while wait(1) do 
if Pets.flags.SAdvanced then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game.Players.LocalPlayer.petsFolder.Advanced:GetChildren()) do
game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
end
end
end
end
end)

-- Sell All Rares
spawn(function() 
while wait(1) do 
if Pets.flags.SRare then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game.Players.LocalPlayer.petsFolder.Rare:GetChildren()) do
game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
end
end
end
end
end)


-- Sell All Epics
spawn(function() 
while wait(1) do 
if Pets.flags.SEpic then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game.Players.LocalPlayer.petsFolder.Epic:GetChildren()) do
game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
end
end
end
end
end)

-- Sell All Uniques
spawn(function() 
while wait(1) do 
if Pets.flags.SUnique then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game.Players.LocalPlayer.petsFolder.Unique:GetChildren()) do
game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
end
end
end
end
end)

-- Sell All Omegas
spawn(function() 
while wait(1) do 
if Pets.flags.SOmega then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game.Players.LocalPlayer.petsFolder.Omega:GetChildren()) do
game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
end
end
end
end
end)

-- Sell All Elites
spawn(function() 
while wait(1) do 
if Pets.flags.SElite then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game.Players.LocalPlayer.petsFolder.Elite:GetChildren()) do
game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
end
end
end
end
end)


-- Sell All Infinites
spawn(function() 
while wait(1) do 
if Pets.flags.SInfinity then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game.Players.LocalPlayer.petsFolder.Infinity:GetChildren()) do
game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
end
end
end
end
end)

-- Second Pet Stuff Tab
spawn(function() 
while wait(1) do 
if Pets2.flags.S1 then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game.Players.LocalPlayer.petsFolder.Infinity:GetChildren()) do
if v.Name == "Winter Wonder Kitty" then
game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
end
end
end
end
end
end)

spawn(function() 
while wait(1) do 
if Pets2.flags.S2 then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game.Players.LocalPlayer.petsFolder.Infinity:GetChildren()) do
if v.Name == "Winter Legends Polar Bear" then
game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
end
end
end
end
end
end)

spawn(function() 
while wait(1) do 
if Pets2.flags.S3 then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game.Players.LocalPlayer.petsFolder.Infinity:GetChildren()) do
if v.Name == "Christmas Sensei Reindeer" then
game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
end
end
end
end
end
end)

spawn(function() 
while wait(1) do 
if Pets2.flags.S4 then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game.Players.LocalPlayer.petsFolder.Infinity:GetChildren()) do
if v.Name == "Dark Blizzard Master Penguin" then
game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
end
end
end
end
end
end)

spawn(function() 
while wait(1) do 
if Pets2.flags.S5 then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game.Players.LocalPlayer.petsFolder.Infinity:GetChildren()) do
if v.Name == "Cybernetic Sleigh Rider" then
game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
end
end
end
end
end
end)

-- Fast Shuriken
spawn(function() 
while wait(.001) do 
if Misc.flags.Fast then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
local plr = game.Players.LocalPlayer
local Mouse = plr:GetMouse()
local velocity = 1000
for _,p in pairs(game.Workspace.shurikensFolder:GetChildren()) do
if p.Name == "Handle" then
if p:FindFirstChild("BodyVelocity") then
local bv = p:FindFirstChildOfClass("BodyVelocity")
bv.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
bv.Velocity = Mouse.Hit.lookVector * velocity
end
end
end
end
end
end
end)

-- Slow Shuriken
spawn(function() 
while wait(.001) do 
if Misc.flags.Slow then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
local plr = game.Players.LocalPlayer
local Mouse = plr:GetMouse()
local velocity = 35
for _,p in pairs(game.Workspace.shurikensFolder:GetChildren()) do
if p.Name == "Handle" then
if p:FindFirstChild("BodyVelocity") then
local bv = p:FindFirstChildOfClass("BodyVelocity")
bv.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
bv.Velocity = Mouse.Hit.lookVector * velocity
end
end
end
end
end
end
end)

-- Anti-AFK
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(
function()
vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)
