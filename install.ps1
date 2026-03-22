# VuiVui Installer — chạy trong thư mục dự án cần cài
# Usage: irm https://raw.githubusercontent.com/Toihoccode1405/VuiVui/master/install.ps1 | iex

$repo = "https://github.com/Toihoccode1405/VuiVui.git"
$tmp = Join-Path $env:TEMP "vuivui_$(Get-Random)"
$target = Join-Path (Get-Location) ".agent\workflows"

Write-Host "`n  VuiVui Installer" -ForegroundColor Cyan
Write-Host "  ================`n" -ForegroundColor DarkGray

git clone --depth 1 --quiet $repo $tmp 2>$null
if (-not $?) { Write-Host "  [X] Clone failed." -ForegroundColor Red; return }

New-Item -ItemType Directory -Path $target -Force | Out-Null
Copy-Item "$tmp\.agent\workflows\*.md" $target -Force
Remove-Item $tmp -Recurse -Force -ErrorAction SilentlyContinue

$count = (Get-ChildItem $target -Filter "*vuivui*.md").Count
Write-Host "  Done! $count workflows installed to $target" -ForegroundColor Green
Write-Host "  Usage: just code! Or type /00-vuivui.core`n" -ForegroundColor DarkGray
