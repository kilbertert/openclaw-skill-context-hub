# OpenClaw Skill: Context Hub

> 让 AI 编程时使用最新 API 文档，避免"幻觉"

[![OpenClaw Skill](https://img.shields.io/badge/OpenClaw-Skill-blue)](https://openclaw.ai)
[![npm](https://img.shields.io/badge/npm-@aisuite/chub-green)](https://www.npmjs.com/package/@aisuite/chub)

## 概述

集成吴恩达的 [Context Hub](https://github.com/andrewyng/context-hub)，让 AI 在编写调用第三方 API 的代码时，可以先查询最新文档，确保使用正确的调用方式。

## 解决的问题

- ❌ API 幻觉 - AI 编造过时的 API 调用方式
- ❌ 文档过时 - 搜索结果质量参差不齐
- ❌ 重复踩坑 - 同样的错误反复出现

## 核心功能

- 🔍 **文档搜索** - 搜索 API 提供商的最新文档
- 📖 **文档阅读** - 获取具体的 API 调用方式
- 📝 **批注功能** - 记录踩坑经验，下次自动复用
- 👍 **反馈机制** - 帮助改进文档质量

## 快速开始

### 安装

```bash
# 方式 1：通过 ClawHub 安装
clawhub install context-hub

# 方式 2：手动安装
git clone https://github.com/YOUR_USERNAME/openclaw-skill-context-hub.git ~/.openclaw/skills/context-hub
```

### 使用

```bash
# 搜索 OpenAI 文档
npx @aisuite/chub search openai

# 搜索 Stripe 文档
npx @aisuite/chub search stripe

# 搜索 Anthropic 文档  
npx @aisuite/chub search anthropic
```

## 与 OpenClaw 集成

在 AGENTS.md 中添加触发词：

```
## Context Hub 使用
- "查文档" - 搜索 API 文档
- "最新 API" - 获取最新调用方式
```

## 使用示例

### 场景：调用 OpenAI API

```bash
$ npx @aisuite/chub search openai
1 results for "openai":
  openai/chat  [doc]  js, py  [maintainer]
       OpenAI API for text generation, chat completions...
```

### 场景：记录踩坑经验

```bash
$ npx @aisuite/chub annotate stripe/api "webhook 验证需要 raw body"
✓ Annotation added to stripe/api
```

## 支持的 API 提供商

| 提供商 | 搜索命令 |
|--------|----------|
| OpenAI | `chub search openai` |
| Anthropic | `chub search anthropic` |
| Stripe | `chub search stripe` |
| GitHub | `chub search github` |
| AWS | `chub search aws` |
| Google Cloud | `chub search google` |
| Slack | `chub search slack` |
| Twilio | `chub search twilio` |

## 与 Self-Improving 集成

结合 [Self-Improving](https://github.com/ivangdavila/self-improving) Skill 使用效果更佳：

1. 用 Context Hub 查询文档
2. 踩坑后用 `chub annotate` 记录
3. Self-Improving 自动学习，下次优先使用

## 项目结构

```
openclaw-skill-context-hub/
├── SKILL.md           # OpenClaw Skill 定义
├── README.md          # 项目说明
├── package.json       # npm 配置
└── scripts/
    └── chub.sh       # 便捷脚本
```

## 相关链接

- [Context Hub GitHub](https://github.com/andrewyng/context-hub)
- [吴恩达推文](https://x.com/AndrewYNg/status/2031051809499054099)
- [OpenClaw 文档](https://docs.openclaw.ai)
- [ClawHub](https://clawhub.com)

## 许可证

MIT License - 欢迎贡献！

---

**维护者**: OpenClaw Community  
**版本**: 1.0.0
