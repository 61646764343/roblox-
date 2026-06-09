local type, pairs, ipairs, pcall, xpcall = type, pairs, ipairs, pcall, xpcall
local task = task
local game = game
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

local str_gsub = string.gsub
local str_find = string.find
local tbl_sort = table.sort
local math_random = math.random
local str_lower = string.lower

local TRANSLATIONS = {
    ["Admins - Rhino, Jandro, Ducrio, Gooser"] = "管理员 - Rhino, Jandro, Ducrio, Gooser\nQQ群：960841427",
    ["AutoBuy"] = "自动购买",
    ["Build"] = "建造",
    ["Copy Discord Server"] = "复制 Discord 服务器",
    ["Credits"] = "制作名单及QQ群聊",
    ["Dupe"] = "复制",
    ["FREE"] = "免费",
    ["Home"] = "主页",
    ["Item"] = "物品",
    ["Join Another Server"] = "加入其他服务器",
    ["Lookup"] = "查询",
    ["Owner - .Kron"] = "作者 - .Kron\n汉化 - 夜晚",
    ["Rejoin server"] = "重连服务器",
    ["Script version"] = "脚本版本",
    ["Slot"] = "存档槽",
    ["Sorter"] = "分类器",
    ["Teleport"] = "传送",
    ["Toggle UI"] = "切换界面",
    ["Vehicle"] = "载具",
    ["Version - 3.0"] = "版本 - 3.0",
    ["Wood"] = "Wood",
    ["World"] = "世界",
    ["Settings"] = "设置",
    ["Click to Fill"] = "点击填充",
    ["Auto Fill"] = "自动填充",
    ["Player"] = "玩家",

    ["Always Day"] = "永恒白昼",
    ["Always Night"] = "永恒黑夜",
    ["Bridge"] = "Bridge",
    ["Btools"] = "建筑工具",
    ["Character"] = "角色",
    ["Disable Sits"] = "禁用坐下",
    ["Environment"] = "环境",
    ["Fly"] = "飞行",
    ["Fly Key"] = "飞行键",
    ["Fly Speed"] = "飞行速度",
    ["Fly UpKey"] = "上升键",
    ["Fly UpKey [E]"] = "上升键 [E]",
    ["Hard Dragger"] = "强力拖拽",
    ["InfJump"] = "无限跳跃",
    ["Jumpower"] = "跳跃力量",
    ["Long Wire"] = "长线",
    ["Misc"] = "杂项",
    ["Movement"] = "移动",
    ["Noclip"] = "穿墙",
    ["Remove boulders"] = "移除巨石",
    ["Remove Fog"] = "移除雾效",
    ["Remove water"] = "移除水",
    ["Shadows"] = "阴影",
    ["Sprint"] = "冲刺",
    ["Trees"] = "树木",
    ["Walk on water"] = "水上行走",
    ["Walkspeed"] = "行走速度",
    ["Water"] = "水体",

    ["Location:"] = "位置：",
    ["Locations"] = "地点",
    ["Player:"] = "玩家：",
    ["Teleport to Base"] = "传送到基地",
    ["Teleport to Player"] = "传送到玩家",

    ["1x1 cutter"] = "1x1 切割机",
    ["Amount"] = "数量",
    ["Base Option"] = "基地选项",
    ["Bring all Log(s)"] = "拉取所有原木",
    ["Click sell"] = "点击出售",
    ["Force Save"] = "强制保存",
    ["Free Land"] = "免费土地",
    ["Get Tree"] = "获取树木",
    ["Get Tree Option"] = "获取树木选项",
    ["Land Option"] = "土地选项",
    ["Load Slot"] = "加载存档",
    ["Logs Option"] = "原木选项",
    ["Max Land"] = "最大土地",
    ["Mod Tree"] = "修改树木",
    ["Planks Option"] = "木板选项",
    ["Sell all Log(s)"] = "出售所有原木",
    ["Sell Sold Sign"] = "出售已售标牌",
    ["Slot to load"] = "要加载的存档",
    ["Tree Option"] = "树木选项",
    ["Tree Type:"] = "树木类型：",
    ["View LoneCave"] = "查看幻影木",
    ["Your Loaded Slot"] = "你加载的存档",

    ["Base Dupe"] = "基地复制",
    ["BaseToPlace:"] = "要放置的基地：",
    ["BaseToSteal:"] = "要偷取的基地：",
    ["Buildables"] = "可建造物",
    ["Click selection"] = "点击选择",
    ["Deselect after items teleport"] = "传送后取消选择",
    ["Deselect all"] = "取消全选",
    ["Direction:"] = "方向：",
    ["Dupe Axe"] = "复制斧头",
    ["Gifts/Planks"] = "礼物/木板",
    ["Group selection"] = "组选",
    ["Items options"] = "物品选项",
    ["Lasso Tool"] = "套索工具",
    ["Settings dupe"] = "复制设置",
    ["Start basedrop"] = "开始投掷基地",
    ["Teleport items"] = "传送物品",
    ["Teleport to last position after items teleport"] = "传送后回到原位",

    ["Buy All Blueprints"] = "购买全部蓝图",
    ["Buy RukiryAxe - 7,400$"] = "购买鲨鱼斧 - 7,400$",
    ["Others"] = "其他",
    ["Purchase Item"] = "购买物品",
    ["Purchase service"] = "购买服务",
    ["Select Item:"] = "选择物品：",
    ["Select Player:"] = "选择玩家：",
    ["Select service:"] = "选择服务：",
    ["Sort Items/Wood"] = "整理物品/木材",
    ["Sorter Settings"] = "分类器设置",
    ["Special"] = "特殊",
    ["Start Sort"] = "开始整理",
    ["Teleport speed"] = "传送速度",
    ["Truck Teleport"] = "卡车传送",

    ["Auto Fill with selected planks"] = "使用选中的木板自动填充",
    ["AutoBuild"] = "自动建造",
    ["AutoBuild Structures"] = "自动建造结构",
    ["BuildMode UI"] = "建造模式界面",
    ["Copy Base"] = "复制基地",
    ["Drift Mode"] = "漂移模式",
    ["Fill Settings"] = "填充设置",
    ["Flip Vehicle"] = "扶正载具",
    ["Load Build"] = "加载建筑",
    ["Open/Close"] = "打开/关闭",
    ["Options:"] = "选项：",
    ["Options: Click to Fill, Auto Fill"] = "选项：点击填充，自动填充",
    ["Plank Type:"] = "木板类型：",
    ["Player Base:"] = "玩家基地：",
    ["Player base to build:"] = "要建造的玩家基地：",
    ["Player base to use:"] = "操作的基地：",
    ["Player wood to use:"] = "使用的木材来源：",
    ["Select color:"] = "选择颜色：",
    ["Select the fill type for planks:"] = "选择木板填充类型：",
    ["Spawner"] = "生成器",
    ["Start build (Structures only !)"] = "开始建造 (仅结构！)",
    ["Start spawn"] = "开始生成",
    ["Steal Base"] = "偷取基地",
    ["Stop"] = "停止",
    ["Unload Preview"] = "卸载预览",
    ["Vehicle Speed"] = "载具速度",

    ["Not Found"] = "未找到",
    ["LoneCave: Not Found"] = "幻影木：未找到",
    ["SpookTree: Not Found"] = "幽灵树：未找到",
    ["SpookyNeonTree: Not Found"] = "霓虹幽灵树：未找到",

    ["LoneCave: In the Server"] = "幻影木：在服务器中",
    ["SpookTree: In the Server"] = "幽灵树：在服务器中",
    ["SpookyNeonTree: In the Server"] = "霓虹幽灵树：在服务器中",

    ["Anti AFK"] = "防挂机",
}

local RULES = {}
local CACHE = {}
local CACHE_LIMIT = 2000
local cacheCount = 0
local ruleVersion = 0

local function escapePattern(str)
    return str_gsub(str, "([%.%+%-%*%?%[%^%$%(%)%%])", "%%%1")
end

local function escapeReplacement(str)
    return str_gsub(str, "%%", "%%%%")
end

local function buildRules()
    local tmp = {}
    for key, val in pairs(TRANSLATIONS) do
        tmp[#tmp + 1] = {
            plain = key,
            pattern = escapePattern(key),
            repl = escapeReplacement(val),
        }
    end
    tbl_sort(tmp, function(a, b) return #a.plain > #b.plain end)
    RULES = tmp
    ruleVersion = ruleVersion + 1
end

buildRules()

local function pruneCache()
    local new_cache = {}
    local new_count = 0
    for k, v in pairs(CACHE) do
        if math_random(1, 2) == 1 then
            new_cache[k] = v
            new_count = new_count + 1
        end
    end
    CACHE = new_cache
    cacheCount = new_count
    if cacheCount >= CACHE_LIMIT then
        pruneCache()
    end
end

local function translate(text)
    if type(text) ~= "string" or text == "" then
        return text
    end

    local cacheEntry = CACHE[text]
    if cacheEntry then
        if cacheEntry.version == ruleVersion then
            return cacheEntry.result
        end
    end

    local exact = TRANSLATIONS[text]
    if exact then
        local entry = { version = ruleVersion, result = exact }
        if cacheCount >= CACHE_LIMIT then pruneCache() end
        CACHE[text] = entry
        cacheCount = cacheCount + 1
        return exact
    end

    local result = text
    for i = 1, #RULES do
        local rule = RULES[i]
        local new_result = str_gsub(result, rule.pattern, rule.repl, 1)
        if new_result ~= result then
            result = new_result
            break
        end
    end

    if result ~= text then
        local entry = { version = ruleVersion, result = result }
        if cacheCount >= CACHE_LIMIT then pruneCache() end
        CACHE[text] = entry
        cacheCount = cacheCount + 1
    end

    return result
end

local TEXT_CLASSES = {
    TextLabel = true,
    TextButton = true,
    TextBox = true,
}

local hookedControls = setmetatable({}, { __mode = "k" })

local ignoreKeywords = {
    "chat",
    "message",
    "notification",
    "toast",
    "popup",
    "billboard",
    "surface",
    "hint",
    "system",
}

local function shouldIgnore(guiObject)
    if guiObject:GetAttribute("IsChatBox") then
        return true
    end

    local fullName = str_lower(guiObject:GetFullName())
    for _, keyword in ipairs(ignoreKeywords) do
        if str_find(fullName, keyword, 1, true) then
            if guiObject.ClassName == "TextBox" then
                guiObject:SetAttribute("IsChatBox", true)
            end
            return true
        end
    end

    if guiObject.ClassName == "TextBox" then
        local parent = guiObject.Parent
        while parent do
            local parentName = str_lower(parent.Name)
            if parentName == "chat" or parentName == "chatbar" or parentName == "messagebox" then
                guiObject:SetAttribute("IsChatBox", true)
                return true
            end
            parent = parent.Parent
        end
    end

    return false
end

local function safeResetInProgress(guiObject)
    pcall(function()
        guiObject:SetAttribute("TransInProgress", false)
    end)
end

local function applyTranslation(guiObject)
    if typeof(guiObject) ~= "Instance" then return end
    if not TEXT_CLASSES[guiObject.ClassName] then return end
    if guiObject:GetAttribute("TransInProgress") then return end
    if shouldIgnore(guiObject) then return end

    guiObject:SetAttribute("TransInProgress", true)
    xpcall(function()
        local original = guiObject.Text
        if type(original) ~= "string" or original == "" then return end
        local translated = translate(original)
        if translated ~= original then
            guiObject.Text = translated
        end
    end, function(err)
        warn("[翻译引擎] 控件翻译异常:", err)
    end)
    safeResetInProgress(guiObject)
end

local function hookControl(guiObject)
    if typeof(guiObject) ~= "Instance" then return end
    if hookedControls[guiObject] then return end
    if not TEXT_CLASSES[guiObject.ClassName] then return end
    if shouldIgnore(guiObject) then return end

    hookedControls[guiObject] = true

    applyTranslation(guiObject)
    guiObject:GetPropertyChangedSignal("Text"):Connect(function()
        applyTranslation(guiObject)
    end)
end

local activeConnections = {}

local function removeConnection(conn)
    for i = #activeConnections, 1, -1 do
        if activeConnections[i] == conn then
            table.remove(activeConnections, i)
            break
        end
    end
end

local function setupContainer(container)
    if not container then return end
    if container:GetAttribute("TransContainer") then return end
    container:SetAttribute("TransContainer", true)

    local descendants = container:GetDescendants()
    for i = 1, #descendants do
        hookControl(descendants[i])
    end

    local conn = container.DescendantAdded:Connect(function(child)
        hookControl(child)
    end)
    table.insert(activeConnections, conn)

    local destroyConn
    destroyConn = container.Destroying:Connect(function()
        conn:Disconnect()
        removeConnection(conn)
        destroyConn:Disconnect()
    end)
end

local function cleanupAll()
    for _, conn in ipairs(activeConnections) do
        if conn then conn:Disconnect() end
    end
    activeConnections = {}
end

local engineStarted = false

local function startEngine()
    if engineStarted then return end
    engineStarted = true

    if CoreGui and not CoreGui:GetAttribute("TransEngineHooked") then
        CoreGui:SetAttribute("TransEngineHooked", true)
        setupContainer(CoreGui)
    end

    local function hookPlayerGui(plr)
        if plr ~= Players.LocalPlayer then return end

        local pgui = plr:FindFirstChild("PlayerGui")
        if pgui then
            setupContainer(pgui)
        else
            local childConn
            childConn = plr.ChildAdded:Connect(function(child)
                if child.Name == "PlayerGui" then
                    setupContainer(child)
                    if childConn then
                        childConn:Disconnect()
                        removeConnection(childConn)
                        childConn = nil
                    end
                end
            end)
            table.insert(activeConnections, childConn)

            pgui = plr:WaitForChild("PlayerGui", 5)
            if pgui then
                if childConn then
                    childConn:Disconnect()
                    removeConnection(childConn)
                end
                setupContainer(pgui)
            end
        end
    end

    local player = Players.LocalPlayer
    if player then
        hookPlayerGui(player)
    end

    local playerConn = Players.PlayerAdded:Connect(hookPlayerGui)
    table.insert(activeConnections, playerConn)
end

task.wait(2)
startEngine()

local function loadExternalScript()
    local ok, err = xpcall(function()
        local loader = game:HttpGet("https://api.luarmor.net/files/v4/loaders/bfdbe0a98d30cb361cee1a9d27a59d92.lua")
        local fn, loadErr = loadstring(loader)
        if not fn then
            error("语法错误: " .. loadErr)
        end
        fn()
    end, debug.traceback)

    if not ok then
        warn("[翻译引擎] 外部脚本加载失败:\n", err)
    end
end

loadExternalScript()

game:BindToClose(function()
    cleanupAll()
end)

if not shared.TranslationEngine then
    shared.TranslationEngine = {}
end

local rebuildScheduled = false
local function scheduleRebuild()
    if rebuildScheduled then return end
    rebuildScheduled = true
    task.defer(function()
        rebuildScheduled = false
        buildRules()
    end)
end

function shared.TranslationEngine.AddTranslation(key, value)
    if type(key) ~= "string" or type(value) ~= "string" then return end
    TRANSLATIONS[key] = value
    scheduleRebuild()
end

function shared.TranslationEngine.AddTranslationsBatch(tbl)
    if type(tbl) ~= "table" then return end
    for key, value in pairs(tbl) do
        if type(key) == "string" and type(value) == "string" then
            TRANSLATIONS[key] = value
        end
    end
    scheduleRebuild()
end

function shared.TranslationEngine.AddIgnoreKeyword(keyword)
    if type(keyword) ~= "string" then return end
    ignoreKeywords[#ignoreKeywords + 1] = str_lower(keyword)
end

function shared.TranslationEngine.RemoveIgnoreKeyword(keyword)
    if type(keyword) ~= "string" then return end
    local lower = str_lower(keyword)
    for i = #ignoreKeywords, 1, -1 do
        if ignoreKeywords[i] == lower then
            table.remove(ignoreKeywords, i)
            break
        end
    end
end

shared.TranslationEngine.Translate = translate

shared.TranslationEngine.LoadExternal = loadExternalScript
