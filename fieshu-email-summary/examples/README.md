# examples/

示例输入输出目录。给 Agent 看的"参考答案"。

## 为什么需要 examples/

LLM 模仿能力很强。与其在 `SKILL.md` 里用文字描述"输出应该长什么样"，不如直接给 1-3 个示例。

## 适合放什么

- ✅ 典型输入 → 期望输出的完整样例
- ✅ 多种风格 / 长度 / 语气的对照
- ✅ 边界情况的处理示例（输入缺失字段、输入过长等）

## 不适合放什么

- ❌ 模板（用 `references/format.md`）
- ❌ 真实的敏感数据 —— 用脱敏后的样例
- ❌ 数百个例子 —— 1-3 个高质量的够了

## 怎么在 SKILL.md 里引用

```markdown
4. 参考 `examples/sample-output.md` 的行文风格组织最终输出。
```

或者在 frontmatter 后立刻贴一个简短示例：

```markdown
## 一个完整示例

输入：<sample input>

输出：<sample output>
```

## 命名建议

- 用 `sample-` / `example-` 前缀，避免和实际数据混淆
- 配对放：`sample-input-1.md` + `sample-output-1.md`
- 一个文件一个完整例子，方便对照

## 当前文件

- `sample-input.md` —— 输入样例
- `sample-output.md` —— 对应的期望输出
