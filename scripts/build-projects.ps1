# Build script for integrating all projects into portfolio
# Run from portfolio root: .\scripts\build-projects.ps1

$ErrorActionPreference = "Stop"
$portfolioRoot = "D:\Projects\portfolio"
$projectsOutput = "$portfolioRoot\public\projects"

# Back button HTML to inject into all project HTML files
$backButton = @'
<a href="/projects" id="portfolio-back-btn" onclick="window.location.href='/projects';return false;" style="position:fixed;top:16px;left:16px;z-index:99999;background:#1a1a1a;color:#fff;padding:8px 16px;border-radius:8px;text-decoration:none;font-family:system-ui,sans-serif;font-size:14px;display:flex;align-items:center;gap:6px;box-shadow:0 2px 8px rgba(0,0,0,0.3);" onmouseover="this.style.background='#333'" onmouseout="this.style.background='#1a1a1a'"><img src="/077Ponyta.png" style="width:24px;height:24px;object-fit:contain;" alt="" /> Portfolio</a>
'@

# Favicon mapping for each project
$projectFavicons = @{
    "full-of-noise" = '<link rel="icon" type="image/png" href="/icons/full-of-noise.png">'
    "telos" = '<link rel="icon" type="image/png" href="/icons/telos.png">'
    "it-support-docs" = '<link rel="icon" type="image/svg+xml" href="/icons/frederiksberg.svg">'
    "semler-frontend" = '<link rel="icon" type="image/svg+xml" href="/icons/semler.svg">'
    "angular-pokemon-app" = '<link rel="icon" type="image/png" href="/icons/ponyta.png">'
}

function Inject-BackButtonAndFavicon {
    param([string]$htmlPath, [string]$projectSlug)
    $content = Get-Content -Path $htmlPath -Raw
    if ($content -notmatch "portfolio-back-btn") {
        $content = $content -replace "</body>", "$backButton</body>"
    }
    $favicon = $projectFavicons[$projectSlug]
    if ($favicon) {
        # Remove existing favicon links first
        $content = $content -replace '<link[^>]*rel=[''"]icon[''"][^>]*>', ''
        $content = $content -replace "</head>", "$favicon</head>"
    }
    Set-Content -Path $htmlPath -Value $content -NoNewline
}

# Ensure output directory exists
New-Item -ItemType Directory -Force -Path $projectsOutput | Out-Null

Write-Host "Building and copying projects..." -ForegroundColor Cyan

# 1. SEMLER-frontend (static - just copy)
Write-Host "`n[1/5] Copying SEMLER-frontend..." -ForegroundColor Yellow
$semlerSrc = "D:\Projects\SEMLER-frontend"
$semlerDest = "$projectsOutput\semler-frontend"
Remove-Item -Recurse -Force $semlerDest -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Force -Path $semlerDest | Out-Null
Copy-Item "$semlerSrc\index.html" $semlerDest
Copy-Item "$semlerSrc\style.css" $semlerDest
Copy-Item -Recurse "$semlerSrc\static" "$semlerDest\static"
Inject-BackButtonAndFavicon "$semlerDest\index.html" "semler-frontend"
Write-Host "SEMLER-frontend copied!" -ForegroundColor Green

# 2. TELOS (static - just copy)
Write-Host "`n[2/5] Copying TELOS..." -ForegroundColor Yellow
$telosSrc = "D:\Projects\TELOS"
$telosDest = "$projectsOutput\telos"
Remove-Item -Recurse -Force $telosDest -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Force -Path $telosDest | Out-Null
# Copy all files except .git
Get-ChildItem $telosSrc -Exclude ".git" | Copy-Item -Destination $telosDest -Recurse -Force
# Inject back button and favicon into all HTML files
Get-ChildItem "$telosDest\*.html" | ForEach-Object { Inject-BackButtonAndFavicon $_.FullName "telos" }
Write-Host "TELOS copied!" -ForegroundColor Green

# 3. Full of Noise (static - just copy)
Write-Host "`n[3/5] Copying full-of-noise..." -ForegroundColor Yellow
$noiseSrc = "D:\Projects\full-of-noise"
$noiseDest = "$projectsOutput\full-of-noise"
Remove-Item -Recurse -Force $noiseDest -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Force -Path $noiseDest | Out-Null
Copy-Item "$noiseSrc\*" $noiseDest -Recurse -Force
Inject-BackButtonAndFavicon "$noiseDest\index.html" "full-of-noise"
Write-Host "full-of-noise copied!" -ForegroundColor Green

# 4. IT Support Docs (VitePress)
Write-Host "`n[4/5] Building it-support-docs..." -ForegroundColor Yellow
$docsSrc = "D:\Projects\it-support-docs"
$docsDest = "$projectsOutput\it-support-docs"
Push-Location $docsSrc
if (-not (Test-Path "node_modules")) {
    Write-Host "Installing dependencies..." -ForegroundColor Gray
    npm install
}
# VitePress needs base in config, we'll set it via env or modify config
$env:VITEPRESS_BASE = "/projects/it-support-docs/"
npm run docs:build
Remove-Item -Recurse -Force $docsDest -ErrorAction SilentlyContinue
Copy-Item -Recurse "$docsSrc\docs\.vitepress\dist" $docsDest
# Inject back button and favicon into all HTML files
Get-ChildItem "$docsDest" -Recurse -Filter "*.html" | ForEach-Object { Inject-BackButtonAndFavicon $_.FullName "it-support-docs" }
Pop-Location
Write-Host "it-support-docs built!" -ForegroundColor Green

# 5. Angular Pokemon App
Write-Host "`n[5/5] Building angular-pokemon-app..." -ForegroundColor Yellow
$angularSrc = "D:\Projects\angular-pokemon-app"
$angularDest = "$projectsOutput\angular-pokemon-app"
Push-Location $angularSrc
if (-not (Test-Path "node_modules")) {
    Write-Host "Installing dependencies..." -ForegroundColor Gray
    npm install
}
# Build with base href
npx ng build --base-href=/projects/angular-pokemon-app/
Remove-Item -Recurse -Force $angularDest -ErrorAction SilentlyContinue
# Angular outputs to dist/[project-name]
$angularDistFolder = Get-ChildItem "$angularSrc\dist" -Directory | Select-Object -First 1
Copy-Item -Recurse $angularDistFolder.FullName $angularDest
Inject-BackButtonAndFavicon "$angularDest\index.html" "angular-pokemon-app"
Pop-Location
Write-Host "angular-pokemon-app built!" -ForegroundColor Green

Write-Host "`n========================================" -ForegroundColor Cyan
Write-Host "All projects built and copied to public/projects!" -ForegroundColor Green
Write-Host "Run 'npm run dev' in portfolio to test." -ForegroundColor Cyan
