# GitHub 工具使用示例

这个项目展示了如何使用各种 GitHub API 工具来管理代码仓库。

## 功能特性

### 1. 仓库管理
- 创建新仓库
- 搜索仓库
- Fork 仓库

### 2. 文件操作
- 获取文件内容
- 创建/更新文件
- 批量推送文件

### 3. 分支管理
- 创建新分支
- 切换分支
- 合并分支

### 4. Issue 和 Pull Request
- 创建 Issue
- 创建 Pull Request
- 代码审查
- 合并 PR

### 5. 代码搜索
- 搜索代码片段
- 搜索用户
- 搜索 Issue

## 使用示例

```lua
-- 加载示例控制器
local GameController = require('lua-example')

-- 创建游戏实例
local game = GameController:new()
game:init()

-- 添加玩家
game:addPlayer('玩家1')
game:addPlayer('玩家2')

-- 运行游戏循环
for i = 1, 10 do
    game:update(1.0)
    print('游戏状态:', game:getStatus())
end

game:stop()
```

## 项目结构

```
├── lua-example.lua     # Lua 游戏控制器示例
├── config.json         # 项目配置文件
├── docs/
│   └── README_zh.md    # 中文文档
└── README.md           # 主文档
```

## 贡献指南

1. Fork 这个仓库
2. 创建功能分支 (`git checkout -b feature/new-feature`)
3. 提交更改 (`git commit -am 'Add new feature'`)
4. 推送到分支 (`git push origin feature/new-feature`)
5. 创建 Pull Request

## 许可证

MIT License - 详见 LICENSE 文件
