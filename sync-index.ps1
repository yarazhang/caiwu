# 将主页面同步为 Vercel 首页 index.html
Copy-Item -Path "$PSScriptRoot\other-fund-application.html" -Destination "$PSScriptRoot\index.html" -Force
Write-Host "已同步: other-fund-application.html -> index.html"
