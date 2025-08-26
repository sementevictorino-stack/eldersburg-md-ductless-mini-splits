# Script to fix remaining "MD" description issues
Write-Host "Fixing remaining 'MD' description issues..." -ForegroundColor Green

# Define description fixes
$descriptionFixes = @{
    "installation MD Eldersburg" = "installation in Eldersburg"
    "services MD Eldersburg" = "services in Eldersburg"
    "repair MD Eldersburg" = "repair in Eldersburg"
    "maintenance MD Eldersburg" = "maintenance in Eldersburg"
    "installation MD Westminster" = "installation in Westminster"
    "services MD Westminster" = "services in Westminster"
    "repair MD Westminster" = "repair in Westminster"
    "maintenance MD Westminster" = "maintenance in Westminster"
}

# Get all HTML files
$htmlFiles = Get-ChildItem -Path "." -Filter "*.html" -Recurse

Write-Host "Found $($htmlFiles.Count) HTML files to fix" -ForegroundColor Yellow

foreach ($file in $htmlFiles) {
    Write-Host "Processing: $($file.Name)" -ForegroundColor Cyan
    
    try {
        # Read file content
        $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8
        $originalContent = $content
        
        # Apply description fixes
        foreach ($find in $descriptionFixes.Keys) {
            $replace = $descriptionFixes[$find]
            $content = $content -replace [regex]::Escape($find), $replace
        }
        
        # Only write if content changed
        if ($content -ne $originalContent) {
            Set-Content -Path $file.FullName -Value $content -Encoding UTF8
            Write-Host "  Updated successfully" -ForegroundColor Green
        } else {
            Write-Host "  No changes needed" -ForegroundColor Gray
        }
    }
    catch {
        Write-Host "  Error processing file: $($_.Exception.Message)" -ForegroundColor Red
    }
}

Write-Host "`nDescription fixes completed!" -ForegroundColor Green
