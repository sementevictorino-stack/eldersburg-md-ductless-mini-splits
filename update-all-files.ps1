# PowerShell script to update all HTML files for Eldersburg, MD
# This script replaces Huntertown, IN and related content with Eldersburg, MD

Write-Host "Starting bulk update for Eldersburg, MD..." -ForegroundColor Green

# Define replacement mappings
$replacements = @{
    # Location replacements
    "Huntertown, IN" = "Eldersburg, MD"
    "Huntertown, Indiana" = "Eldersburg, Maryland"
    "Huntertown IN" = "Eldersburg MD"
    "Fort Wayne" = "Westminster"
    "northeastern Indiana" = "central Maryland"
    "Allen County" = "Carroll County"
    "Indiana's" = "Maryland's"
    "continental climate" = "humid subtropical climate"
    "frigid winter months" = "cooler winter months"
    "46748" = "21784"
    "46845" = "21144"
    "46805" = "21157"
    "sub-zero conditions" = "freezing conditions"
    
    # Geographic coordinates for Eldersburg - latitude
    '"latitude": 41.1306' = '"latitude": 39.4026'
    '"latitude": 41.0793' = '"latitude": 39.4026'
    
    # Geographic coordinates for Eldersburg - longitude  
    '"longitude": -85.1394' = '"longitude": -76.9497'
    
    # Address updates
    "12845 Coldwater Road" = "1350 Liberty Road"
    "3402 Fairfield Avenue" = "1350 Liberty Road"
    
    # Service area updates
    "Fort Wayne metropolitan area" = "Baltimore-Westminster metropolitan area"
    
    # Review location updates
    ", Huntertown" = ", Eldersburg"
    ", Fort Wayne" = ", Westminster"
    ", New Haven" = ", Sykesville"
    ", Woodburn" = ", Finksburg"
    ", Grabill" = ", Owings Mills"
    ", Auburn" = ", Reisterstown"
    ", Garrett" = ", Randallstown"
    ", Butler" = ", Liberty"
    
    # Link updates in navigation
    "Huntertown's" = "Eldersburg's"
    
    # Business name in schema
    "Huntertown Ductless Mini Splits" = "Eldersburg Ductless Mini Splits"
    "Fort Wayne Ductless Mini Splits" = "Westminster Ductless Mini Splits"
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
        foreach ($find in $replacements.Keys) {
            $replace = $replacements[$find]
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

Write-Host "`nBulk update completed!" -ForegroundColor Green
Write-Host "Please manually verify the changes and update any remaining location-specific content." -ForegroundColor Yellow
