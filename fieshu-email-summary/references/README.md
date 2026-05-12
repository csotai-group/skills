# references/

按需加载的长文档目录。Agent **不会自动读**这里的内容 —— 只有 `SKILL.md` 明确指引时才会 `Read`，从而节省上下文 token。

## 适合放什么

- 输出模板的完整版本（多种变体、多种风格）
- 领域知识（行业术语、产品规范、术语对照表）
- 详细示例（典型输入输出对照）
- 边界情况手册（各种异常输入怎么处理）
- 5000 字以上的、平时用不到但必要时要查的资料

## 不适合放什么

- ❌ 每次都要用到的核心步骤 —— 放 `SKILL.md` 主体
- ❌ 可执行代码 —— 放 `scripts/`
- ❌ 输入样例 —— 放 `examples/`

## 怎么在 SKILL.md 里引用

在 `SKILL.md` 的执行步骤里明确写出来：

```markdown
3. 读取 `references/format.md` 跳出邮件模板。
```

或者在末尾专门列出来：

```markdown
## references/

- `references/format.md` —— 输出模板完整版
- `references/examples.md` —— 输入输出对照
```

## 命名建议

- 用功能描述命名：`format.md`、`examples.md`、`error-handling.md`
- 不用版本号命名（版本号放 frontmatter）
- 一个文件聚焦一个主题，超过 300 行就考虑拆分

## 当前文件

- `format.md` —— 输出格式模板
- `examples.md` —— 典型输入输出对照
