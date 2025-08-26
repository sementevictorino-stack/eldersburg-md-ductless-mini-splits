# Final cleanup script for remaining inconsistencies
Write-Host "Performing final cleanup of remaining inconsistencies..." -ForegroundColor Green

# Define final cleanup replacements
$finalCleanups = @{
    # Fix description issues
    "services MD Eldersburg" = "services in Eldersburg"
    "Professional ductless mini split services MD" = "Professional ductless mini split services in"
    
    # Fix any remaining wrong coordinates
    '"latitude": 41.2228' = '"latitude": 39.4026'
    '"longitude": -85.1694' = '"longitude": -76.9497'
    '"latitude": 41.1' = '"latitude": 39.4026'
    '"longitude": -85.1' = '"longitude": -76.9497'
    
    # Fix addresses that weren't updated
    "15920 Lima Road" = "1350 Liberty Road"
    "1234 Main Street" = "1350 Liberty Road"
    "Fort Wayne, MD" = "Eldersburg, MD"
    
    # Fix any remaining wrong zip codes in text
    "46748" = "21784"
    "46845" = "21784"
    "46805" = "21784"
    
    # Fix service area descriptions
    "Baltimore-Westminster metropolitan area including zip codes 21784, 21157" = "Baltimore-Westminster metropolitan area including zip codes 21784, 21144"
}

# Get all HTML files
$htmlFiles = Get-ChildItem -Path "." -Filter "*.html" -Recurse

Write-Host "Found $($htmlFiles.Count) HTML files to clean up" -ForegroundColor Yellow

foreach ($file in $htmlFiles) {
    Write-Host "Processing: $($file.Name)" -ForegroundColor Cyan
    
    try {
        # Read file content
        $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8
        $originalContent = $content
        
        # Apply final cleanups
        foreach ($find in $finalCleanups.Keys) {
            $replace = $finalCleanups[$find]
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

Write-Host "`nFinal cleanup completed!" -ForegroundColor Green
