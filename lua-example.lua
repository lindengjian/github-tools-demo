-- GitHub 工具演示 - Lua 示例文件
-- 这是一个简单的 Lua 游戏控制器示例，类似于您项目中的结构

local GameController = {}

-- 构造函数
function GameController:new()
    local obj = {
        isRunning = false,
        players = {},
        score = 0
    }
    setmetatable(obj, self)
    self.__index = self
    return obj
end

-- 初始化游戏
function GameController:init()
    print("正在初始化游戏...")
    self.isRunning = true
    self.score = 0
    print("游戏初始化完成!")
end

-- 添加玩家
function GameController:addPlayer(name)
    local player = {
        name = name,
        health = 100,
        position = {x = 0, y = 0}
    }
    table.insert(self.players, player)
    print("玩家 " .. name .. " 已加入游戏")
end

-- 更新游戏状态
function GameController:update(deltaTime)
    if not self.isRunning then
        return
    end
    
    -- 更新逻辑
    self.score = self.score + deltaTime * 10
    
    -- 更新玩家位置
    for _, player in ipairs(self.players) do
        player.position.x = player.position.x + math.random(-1, 1)
        player.position.y = player.position.y + math.random(-1, 1)
    end
end

-- 获取游戏状态
function GameController:getStatus()
    return {
        isRunning = self.isRunning,
        playerCount = #self.players,
        score = math.floor(self.score)
    }
end

-- 停止游戏
function GameController:stop()
    self.isRunning = false
    print("游戏已停止")
end

-- 示例使用
local function main()
    local game = GameController:new()
    game:init()
    
    game:addPlayer("Player1")
    game:addPlayer("Player2")
    
    -- 模拟游戏循环
    for i = 1, 5 do
        game:update(1.0)
        local status = game:getStatus()
        print("游戏状态: 运行中=" .. tostring(status.isRunning) .. 
              ", 玩家数量=" .. status.playerCount .. 
              ", 分数=" .. status.score)
    end
    
    game:stop()
end

-- 如果直接运行此文件，执行主函数
if ... == nil then
    main()
end

return GameController