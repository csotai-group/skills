#!/usr/bin/env bash
# helper.sh —— 示例脚本
#
# 用途：演示 scripts/ 目录下脚本应该长什么样。
# 真实使用时，把这个文件替换成你的实际逻辑。
#
# 用法：
#   bash scripts/helper.sh <input>
#
# 退出码：
#   0 - 成功
#   1 - 参数错误
#   2 - 处理失败

set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: $0 <input>" >&2
  exit 1
fi

INPUT="$1"

# 这里放你的实际逻辑，比如：
# - 读取文件
# - 调用外部命令
# - 处理数据
# - 输出结果到 stdout

echo "Received input: $INPUT"
echo "Replace this script with your actual logic."
