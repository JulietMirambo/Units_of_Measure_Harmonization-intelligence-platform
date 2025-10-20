# ============================================================================
# MASTER GITHUB REPOSITORY OPTIMIZATION SCRIPT - ENHANCED
# ============================================================================

param(
    [string]$RepoPath = ".",
    [string]$RepoOwner = "JulietMirambo",
    [string]$RepoName = "Units_of_Measure_Harmonization-intelligence-platform",
    [string]$DashboardGifPath = "C:\Users\Julie.Mirambo\Desktop\UOM intelligence VISUAL DASHBOARD RESULTS DISPLAY",
    [string]$WorkflowScreenshotPath = "C:\Users\Julie.Mirambo\Videos\Captures\KNIME WORKFLOW SCREENSHOT",
    [string]$GitHubToken = $env:GITHUB_TOKEN,
    [string]$Version = "1.0.0",
    [string]$YourEmail = "juliet.mirambo@example.com",
    [string]$YourLinkedIn = "julietmirambo",
    [string]$YourTwitter = "julietmirambo"
)

$ErrorActionPreference = "Continue"
Set-Location $RepoPath

Clear-Host
Write-Host ""
Write-Host "====================================================================" -ForegroundColor Cyan
Write-Host "    GITHUB REPOSITORY OPTIMIZATION SCRIPT v2.0" -ForegroundColor Cyan
Write-Host "    Transform Your Repo for Mass Adoption" -ForegroundColor Cyan
Write-Host "====================================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Repository: $RepoOwner/$RepoName" -ForegroundColor Gray
Write-Host "Version:    v$Version" -ForegroundColor Gray
Write-Host ""

$confirm = Read-Host "Continue? (Y/N)"
if ($confirm -ne "Y" -and $confirm -ne "y") {
    Write-Host "Operation cancelled" -ForegroundColor Red
    exit
}

Write-Host ""
Write-Host "Starting optimization process..." -ForegroundColor Green
Write-Host ""

# Create directories
Write-Host "Creating directory structure..." -ForegroundColor Cyan
$directories = @(
    "docs",
    "docs/images",
    "examples",
    ".github",
    ".github/ISSUE_TEMPLATE",
    ".github/workflows"
)

foreach ($dir in $directories) {
    if (-not (Test-Path $dir)) {
        New-Item -ItemType Directory -Path $dir -Force | Out-Null
        Write-Host "  Created: $dir" -ForegroundColor Green
    }
}

Write-Host ""
Write-Host "All directories created successfully!" -ForegroundColor Green
Write-Host ""
Write-Host "====================================================================" -ForegroundColor Green
Write-Host "    OPTIMIZATION COMPLETE!" -ForegroundColor Green
Write-Host "====================================================================" -ForegroundColor Green
Write-Host ""
Write-Host "NEXT STEPS:" -ForegroundColor Yellow
Write-Host "1. Manually copy your media files to docs/images/" -ForegroundColor White
Write-Host "2. Update README.md with your content" -ForegroundColor White
Write-Host "3. Run: git add ." -ForegroundColor White
Write-Host "4. Run: git commit -m 'feat: optimize repository'" -ForegroundColor White
Write-Host "5. Run: git push origin main" -ForegroundColor White
Write-Host ""
