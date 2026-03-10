# Context Hub Skill

> 让 AI 编程时使用最新 API 文档，避免"幻觉"

## 概述

集成吴恩达的 [Context Hub](https://github.com/andrewyng/context-hub)，让 AI 在编写调用第三方 API 的代码时，可以先查询最新文档，确保使用正确的调用方式。

## 核心功能

- 🔍 **文档搜索** - 搜索 API 提供商的最新文档
- 📖 **文档阅读** - 获取具体的 API 调用方式
- 📝 **批注功能** - 记录踩坑经验，下次自动复用
- 👍 **反馈机制** - 帮助改进文档质量

## 触发词

- `查文档`
- `API 文档`
- `最新 API`
- `context hub`
- `chub`

## 命令

### 搜索文档

```bash
npx @aisuite/chub search <provider>
```

**示例**：

| 命令 | 说明 |
|------|------|
| `npx @aisuite/chub search openai` | OpenAI API |
| `npx @aisuite/chub search anthropic` | Anthropic Claude API |
| `npx @aisuite/chub search stripe` | Stripe 支付 |
| `npx @aisuite/chub search github` | GitHub API |
| `npx @aisuite/chub search aws` | AWS 服务 |
| `npx @aisuite/chub search google` | Google Cloud |
| `npx @aisuite/chub search slack` | Slack API |
| `npx @aisuite/chub search twilio` | Twilio |

### 阅读文档

```bash
npx @aisuite/chub read <provider>/<doc>
```

### 添加批注

```bash
npx @aisuite/chub annotate <provider>/<doc> "<批注内容>"
```

**示例**：
```bash
npx @aisuite/chub annotate stripe/api "webhook 验证需要 raw body，不能用 parsed JSON"
```

### 反馈

```bash
npx @aisuite/chub feedback <provider>/<doc> up|down
```

## 使用场景

### 场景 1：调用 OpenAI API

**用户**：帮我写一个调用 GPT-4 的函数

**AI**：
```
让我先查一下 OpenAI 的最新 API 文档...
npx @aisuite/chub search openai
```

### 场景 2：使用 Stripe 支付

**用户**：集成 Stripe 支付

**AI**：
```
先查一下 Stripe 最新文档...
npx @aisuite/chub search stripe
```

### 场景 3：GitHub API 调用

**用户**：帮我调用 GitHub API 获取仓库信息

**AI**：
```
npx @aisuite/chub search github
```

## 安装

```bash
# 方式 1：通过 ClawHub 安装
clawhub install context-hub

# 方式 2：手动安装
git clone https://github.com/your-repo/openclaw-skill-context-hub.git ~/.openclaw/skills/context-hub
```

## 配置

无需额外配置，依赖 npx 自动下载。

## 与 Self-Improving 集成

结合 Self-Improving Skill 使用效果更佳：

1. 用 Context Hub 查询文档
2. 踩坑后用 `chub annotate` 记录
3. Self-Improving 自动学习，下次优先使用

## 注意事项

- 首次搜索可能需要下载文档，稍等片刻
- 文档按需加载，不占用 context
- 批注会持久化存储

## 相关链接

- [Context Hub GitHub](https://github.com/andrewyng/context-hub)
- [吴恩达推文](https://x.com/AndrewYNg/status/2031051809499054099)
- [DeepLearning.AI](https://www.deeplearning.ai/)

---

**维护者**: OpenClaw Community  
**版本**: 1.0.0  
**许可证**: MIT
