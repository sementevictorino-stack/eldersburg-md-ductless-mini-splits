# PowerShell script to fix remaining state and location issues
Write-Host "Fixing remaining state and location inconsistencies..." -ForegroundColor Green

# Additional replacements to fix remaining issues
$additionalReplacements = @{
    # Fix state abbreviations that were missed
    'Westminster, IN' = 'Westminster, MD'
    'Eldersburg, IN' = 'Eldersburg, MD'
    '"addressRegion": "IN"' = '"addressRegion": "MD"'
    
    # Fix any remaining Indiana references
    ", IN." = ", MD."
    ", IN " = ", MD "
    " IN " = " MD "
    
    # Fix title inconsistencies
    'Westminster IN |' = 'Westminster MD |'
    'Eldersburg IN |' = 'Eldersburg MD |'
    
    # Fix description inconsistencies
    'Westminster, IN.' = 'Westminster, MD.'
    'Eldersburg, IN.' = 'Eldersburg, MD.'
    
    # Fix any other location issues
    'zip codes 21784, 21144' = 'zip codes 21784, 21157'
}

# Get all HTML files
$htmlFiles = Get-ChildItem -Path "." -Filter "*.html" -Recurse

Write-Host "Found $($htmlFiles.Count) HTML files to update" -ForegroundColor Yellow

foreach ($file in $htmlFiles) {
    Write-Host "Processing: $($file.Name)" -ForegroundColor Cyan
    
    try {
        # Read file content
        $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8
        $originalContent = $content
        
        # Apply all replacements
        foreach ($find in $additionalReplacements.Keys) {
            $replace = $additionalReplacements[$find]
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

Write-Host "`nAdditional fixes completed!" -ForegroundColor Green
