# 推送到 GitHub 并部署 Vercel

| 项目 | 你的设置 |
|------|----------|
| GitHub 用户名 | `yarazhang` |
| 仓库名 | `财务` |
| 仓库地址 | https://github.com/yarazhang/财务 |

---

## 一、在 GitHub 网页新建仓库

1. 登录 https://github.com  
2. 右上角 **+** → **New repository**  
3. **Repository name** 填：`财务`  
4. 选 **Public**（Vercel 免费版导入更方便）  
5. **不要**勾选 “Add a README”  
6. 点 **Create repository**

---

## 二、本机安装 Git 后执行（在 Cursor 终端）

```powershell
cd c:\Users\yara\Desktop\cursor

# 若刚改过主页面，先同步首页
.\sync-index.ps1

git init
git add index.html other-fund-application.html vercel.json README.md .gitignore GITHUB-DEPLOY.md
git commit -m "其他资金付款申请原型：Vercel 静态部署"

git branch -M main
git remote add origin https://github.com/yarazhang/财务.git
git push -u origin main
```

首次 `git push` 会弹出浏览器或要求登录 GitHub（Personal Access Token 或 GitHub Desktop）。

### 若提示 remote 已存在

```powershell
git remote set-url origin https://github.com/yarazhang/财务.git
git push -u origin main
```

---

## 三、Vercel 导入

1. https://vercel.com → 用 GitHub 登录  
2. **Add New… → Project** → 选仓库 **`财务`**  
3. **Framework Preset**：Other  
4. **Build Command**：留空  
5. **Output Directory**：`.`  
6. **Deploy**

完成后访问 Vercel 给的域名（如 `https://财务-xxx.vercel.app`，以控制台为准）。

---

## 四、以后更新

```powershell
cd c:\Users\yara\Desktop\cursor
.\sync-index.ps1
git add index.html other-fund-application.html
git commit -m "更新申请页面"
git push
```

Vercel 会自动重新部署。
