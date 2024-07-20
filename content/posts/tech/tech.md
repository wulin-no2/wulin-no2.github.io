---
title: "Common Git Operations for Developer Beginners"
date: 2024-07-20T00:17:58+08:00
lastmod: 2024-07-20T00:17:58+08:00
author: ["Lina"]
keywords: 
- 
categories: 
- 
tags: 
- tech
- Git
- Beginner
description: ""
weight:
slug: ""
draft: false # 是否为草稿
comments: true
reward: false # 打赏
mermaid: true #是否开启mermaid
showToc: true # 显示目录
TocOpen: true # 自动展开目录
hidemeta: false # 是否隐藏文章的元信息，如发布日期、作者等
disableShare: true # 底部不显示分享栏
showbreadcrumbs: true #顶部显示路径
cover:
    # image: "https://www.sulvblog.cn/posts/blog/how_to_write_a_blog/1.png" #图片路径例如：posts/tech/123/123.png
    image: "https:wulin-no2.github.io/posts/tech/tech0_git/img.png" #图片路径例如：posts/tech/123/123.png
    # caption: "git article background" #图片底部描述
    alt: "git article background"
    relative: false
---


### New Branch
```bash
git checkout -b feature/music-api
```

### Switch Branch

```bash
git checkout dev
```

### Merge a Branch into the `dev` Branch

1. Fetch the Latest Changes: Ensure your local repository is up to date with the remote repository.
   ```bash
   git fetch origin
   ```
2. Switch to the `dev` Branch: Make sure you are on the `dev` branch.
   ```bash
   git checkout dev
   ```
3. Merge the `feature/music-api` Branch into `dev`.
   ```bash
   git merge feature/music-api
   ```
4. Commit the Merge.
   ```bash
   git commit
   ```
5. Push the Changes.
   ```bash
   git push origin dev
   ```

### Delete a Branch

1. Delete the Local Branch.
   ```bash
   git branch -d feature/music-api
   ```
2. Delete the Remote Branch.
   ```bash
   git push origin --delete feature/music-api
   ```

### Interact with Remote Repo

Discard All Local Changes and Pull from Remote Repo:
```bash
git reset --hard
git pull
```

Back to a Previous Commit:
```bash
git reset --hard 1dab19813ff616774c76366309213a3c8a468e42
git push origin dev --force
```

### Pull `dev` Code into the Current Branch to Update the Current Branch

1. Check Out the Feature Branch:
   ```bash
   git checkout feature/fill-in-the-blanks
   ```
2. Pull the `dev` Branch Into Your Feature Branch:
   ```bash
   git pull origin dev
   ```
3. Push the Updates to Remote:
   ```bash
   git push origin feature/fill-in-the-blanks
   ```
