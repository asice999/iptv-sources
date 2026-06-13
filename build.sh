#!/bin/sh
set -eux

# 安装依赖
npm ci --omit=dev

# 执行构建
npm run build:static

# 如果 m3u 目录不存在，创建它
if [ ! -d m3u ]; then
  mkdir -p m3u
fi

# 将生成的静态文件复制到 m3u/（如果有必要）
# 原项目的静态文件已经由 npm run build:static 生成在 m3u/ 下，跳过此步

# 确保存在输出目录
echo "Build completed at $(date)"