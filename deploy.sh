#!/bin/sh

# 如果出错则退出
set -e

# 构建项目
hugo # 如果使用了不同的配置文件，请使用 hugo --config <config_file>

# 进入构建输出目录
cd public

# 初始化一个新的 Git 仓库
git init
git add .
git commit -m "Deploy to GitHub Pages"

# 如果这是首次部署，则需要创建 gh-pages 分支
git branch -M gh-pages

# 推送到 GitHub 的 gh-pages 分支
git remote add origin https://github.com/wulin-no2/wulin-no2.github.io.git
git push --force origin gh-pages

# 返回到项目根目录
cd ..
