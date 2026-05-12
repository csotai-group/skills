# scripts/

可执行助手脚本目录。把"主流程要确定性复用"的逻辑放在这里，而不是让 LLM 每次都自由发挥。

## 为什么需要 scripts/

- **确定性**：日期格式化、ID 生成、签名校验这类不能出错的事，交给代码
- **省 token**：脚本不需要被加载进上下文，只需要被调用
- **可测试**：脚本可以单独跑 unit test
- **避免幻觉**：复杂的字符串处理、正则匹配，让 LLM 写代码不如直接给它脚本

## 适合放什么

- ✅ 数据预处理（CSV 清洗、JSON 重组）
- ✅ 格式转换（Markdown → HTML、PDF 提取文本）
- ✅ 调用外部命令的封装（git、curl）
- ✅ 校验 / 验证逻辑（schema 检查、数据合法性）

## 不适合放什么

- ❌ 一次性的、不会复用的逻辑 —— 直接让 Agent 写
- ❌ 需要 LLM 理解语义的步骤 —— 那是 Agent 的事
- ❌ 涉及秘密 / API key 的硬编码 —— 用 env

## 怎么在 SKILL.md 里调用

在 `SKILL.md` 的执行步骤里直接说"调用这个脚本"，不要让 Agent 复述脚本内容：

```markdown
2. 执行 `bash scripts/helper.sh <input-file>`，得到清洗后的 JSON。
3. 把 JSON 中的 `summary` 字段交给下一步。
```

并且要在 frontmatter 的 `allowed-tools` 里允许 `Bash`：

```yaml
allowed-tools: [Bash(scripts/*), Read]
```

## 命名 & 约定

- 用动词命名：`extract-meeting-notes.sh`、`format-email.py`
- 第一行写清楚 shebang：`#!/usr/bin/env bash` / `#!/usr/bin/env python3`
- 写好 usage：脚本不带参数时打印用法
- 错误就 `exit 1`，不要静默失败

## 当前文件

- `helper.sh` —— 示例脚本，演示规范
