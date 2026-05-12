---
name: meeting-summary-to-email
description: 从会议纪要中提炼重点生成中文总结邮件发送给参会人。触发词：发会议总结 / 总结会纪邮件 / 把会记发邮件。
allowed-tools: [Skill(lark-vc), Skill(lark-mail), Read]
version: 1.0.0
---

# 何时使用
- 用户明确说"发会议总结""把会纪发给大家""生成会议总结邮件"。
- 仅在用户表达创建邮件意图时才加载 — 避免误触发。

# 执行步骤
1. 调用 lark-vc Skill 拉取最近一场会议的纪要全文。
2. 提炼 3-5 个重点 + 后续行动项（责人 + 截止日）。
3. 读取 references/email-template.md 跳出邮件模板。
4. 调用 lark-mail Skill，收件人=全部参会人，主题=【会议总结】<会议名>。

# 输出格式
```text
主题：【会议总结】<会议名>·<日期>

要点：
· ...

行动项：
· [责任人] <事项>  —  截止 <日期>
```

# 错误处理
- 拿不到会记：提示用户提供会议链接。
- 参会人名单为空：询问用户补充收件人。
- 用户对总结表现不满意：完成修改后再发送。

// references/email-template.md 里放不同会议类型的邮件模板