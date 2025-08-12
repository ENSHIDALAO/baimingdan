loadstring([==[local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- 白名单列表
local whitelist = {
    "jduej119",  -- 替换为你的用户名
    "hsgisjdhsj",       -- 添加其他用户名
    "hdhdgh830",
    "chunai99y","46469gmmgwg","greenbag119","gjigdtud",        -- 最多支持50个用户名
}

-- 检查白名单是否为空或无效
local function isWhitelistValid()
    -- 检查是否有至少一个非空的有效用户名
    for _, name in ipairs(whitelist) do
        if type(name) == "string" and name ~= "" and name ~= "YourUsernameHere" then
            return true
        end
    end
    return false
end

local function isPlayerWhitelisted(playerName)
    -- 先去除两边空格再比较
    playerName = playerName:gsub("^%s*(.-)%s*$", "%1")
    
    for _, allowedName in ipairs(whitelist) do
        -- 也去除白名单名字的空格
        local trimmedName = allowedName:gsub("^%s*(.-)%s*$", "%1")
        if playerName == trimmedName then
            return true
        end
    end
    return false
end

-- 主检查逻辑
if not isWhitelistValid() then
    LocalPlayer:Kick("白名单配置无效，请联系管理员")
    return
end

if not isPlayerWhitelisted(LocalPlayer.Name) then
    game.StarterGui:SetCore("SendNotification", {
        Title = "白名单限制",
        Text = "您不在白名单中 ("..LocalPlayer.Name..")",
        Duration = 5
    })
    wait(1)
    LocalPlayer:Kick("快去找BEN买白名单")
    wait(999999999999999999999999)
    return
else
    game.StarterGui:SetCore("SendNotification", {
        Title = "验证通过",
        Text = "欢迎 "..LocalPlayer.Name.."，可以使用BEN自动脚本",
        Duration = 5
    })
end]==])()
