loadstring([==[local whitelist = {
    "YourUsernameHere",  -- 替换为你的用户名
    "填加白名单的地方",       -- 添加其他用户名
            -- 最多支持50个用户名
}

-- 检查当前玩家是否在白名单中
local function isPlayerWhitelisted(playerName)
    for _, allowedName in ipairs(whitelist) do
        if playerName == allowedName then
            return true
        end
    end
    return false
end

-- 获取当前玩家
local _9a0x1 = game:GetService("\80\108\97\121\101\114\115").LocalPlayer

-- 白名单检查
if not isPlayerWhitelisted(_9a0x1.Name) then
    game.StarterGui:SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
        Title = "白名单限制",
        Text = "你不可使用此脚本 (".._9a0x1.Name..")",
        Duration = 10
    })
    return -- 停止脚本执行
else
    -- 添加白名单验证通过提示
    game.StarterGui:SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
        Title = "白名单验证通过",
        Text = "欢迎 ".._9a0x1.Name.."，您可以使用BEN脚本！",
        Duration = 5
    })
end]==])()