# PowerShell script to update all internal content to match new Maryland city names
Write-Host "Updating internal content for Maryland cities..." -ForegroundColor Green

# Define city name mappings for content updates
$cityMappings = @{
    # Original Indiana cities -> New Maryland cities
    "Huntertown" = "Eldersburg"
    "Fort Wayne" = "Westminster"
    "New Haven" = "Sykesville"
    "Woodburn" = "Finksburg"
    "Grabill" = "Owings Mills"
    "Auburn" = "Reisterstown"
    "Garrett" = "Randallstown"
    "Butler" = "Liberty"
    "Waterloo" = "Woodstock"
    "Angola" = "Marriottsville"
    "Fremont" = "Ellicott City"
    "Kendallville" = "Catonsville"
    "Ligonier" = "Pikesville"
    "Albion" = "Hampstead"
    "Rome City" = "Manchester"
    "Avilla" = "Taneytown"
    "Churubusco" = "New Windsor"
    "Columbia City" = "Union Bridge"
    "Roanoke" = "Mount Airy"
    "Monroeville" = "Damascus"
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
        
        # Apply city name replacements
        foreach ($oldCity in $cityMappings.Keys) {
            $newCity = $cityMappings[$oldCity]
            
            # Replace various forms of the city name
            $content = $content -replace "\b$oldCity\b", $newCity
            $content = $content -replace "$oldCity,", "$newCity,"
            $content = $content -replace "$oldCity\.", "$newCity."
            $content = $content -replace "$oldCity's", "$newCity's"
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

Write-Host "`nCity name updates completed!" -ForegroundColor Green
