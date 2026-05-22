# 其他资金付款申请（演示原型）

静态单页应用，可直接部署到 [Vercel](https://vercel.com)。

## 线上访问

部署成功后，根路径 `/` 即为申请页面（`index.html`，与 `other-fund-application.html` 内容一致）。

## 本地预览

双击 `other-fund-application.html`，或在本目录执行：

```bash
npx --yes serve .
```

浏览器打开提示的地址（一般为 `http://localhost:3000`）。

## 部署到 Vercel（推荐：GitHub + Vercel）

### 1. 准备 GitHub 仓库

本机需已安装 [Git](https://git-scm.com/download/win)。在 **本文件夹** 打开终端，执行：

```bash
git init
git add index.html other-fund-application.html vercel.json README.md .gitignore
git commit -m "Add other fund application static site for Vercel"
```

在 GitHub 新建空仓库 **财务**（详见 [GITHUB-DEPLOY.md](./GITHUB-DEPLOY.md)），然后：

```bash
git branch -M main
git remote add origin https://github.com/yarazhang/财务.git
git push -u origin main
```

> 显示名是「yara zhang」时，Git 地址仍要用个人资料里的 **Username**（无空格）。  
> 也可在 Cursor 中对 Agent 说：「帮我把当前目录推送到 GitHub 仓库 财务」。

### 2. 连接 Vercel

1. 打开 [https://vercel.com](https://vercel.com) 并登录（可用 GitHub 账号）。
2. 点击 **Add New… → Project**。
3. **Import Git Repository**，选择上面的仓库。
4. 框架预设选 **Other**（静态站点，无需构建命令）。
5. **Root Directory** 保持 `.`，**Build Command** 留空，**Output Directory** 为 `.`。
6. 点击 **Deploy**，约 30–60 秒完成。

### 3. 获取网址

部署完成后会得到类似 `https://other-fund-application.vercel.app` 的地址，可直接分享。

## 不用 Git 的备选：Vercel CLI

已安装 Node.js 时：

```bash
npm i -g vercel
cd 本目录
vercel login
vercel --prod
```

按提示完成即可得到线上 URL。

## 文件说明

| 文件 | 说明 |
|------|------|
| `other-fund-application.html` | 主页面（开发编辑此文件） |
| `index.html` | 部署用首页（与主页面同步，推送前请复制更新） |
| `vercel.json` | Vercel 路由与缓存配置 |

更新 `other-fund-application.html` 后，部署前请同步到首页：

```powershell
Copy-Item other-fund-application.html index.html -Force
```
