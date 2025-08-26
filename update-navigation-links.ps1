# PowerShell script to update navigation links in all files
Write-Host "Updating navigation links to Maryland locations..." -ForegroundColor Green

# Define navigation link replacements
$linkReplacements = @{
    # Update href links to new Maryland location files
    'href="../locations/fort-wayne-ductless-mini-splits.html"' = 'href="../locations/westminster-ductless-mini-splits.html"'
    'href="../locations/new-haven-ductless-mini-splits.html"' = 'href="../locations/sykesville-ductless-mini-splits.html"'
    'href="../locations/woodburn-ductless-mini-splits.html"' = 'href="../locations/finksburg-ductless-mini-splits.html"'
    'href="../locations/grabill-ductless-mini-splits.html"' = 'href="../locations/owings-mills-ductless-mini-splits.html"'
    'href="../locations/auburn-ductless-mini-splits.html"' = 'href="../locations/reisterstown-ductless-mini-splits.html"'
    'href="../locations/garrett-ductless-mini-splits.html"' = 'href="../locations/randallstown-ductless-mini-splits.html"'
    'href="../locations/butler-ductless-mini-splits.html"' = 'href="../locations/liberty-ductless-mini-splits.html"'
    'href="../locations/waterloo-ductless-mini-splits.html"' = 'href="../locations/woodstock-ductless-mini-splits.html"'
    'href="../locations/angola-ductless-mini-splits.html"' = 'href="../locations/marriottsville-ductless-mini-splits.html"'
    'href="../locations/fremont-ductless-mini-splits.html"' = 'href="../locations/ellicott-city-ductless-mini-splits.html"'
    'href="../locations/kendallville-ductless-mini-splits.html"' = 'href="../locations/catonsville-ductless-mini-splits.html"'
    'href="../locations/ligonier-ductless-mini-splits.html"' = 'href="../locations/pikesville-ductless-mini-splits.html"'
    'href="../locations/albion-ductless-mini-splits.html"' = 'href="../locations/hampstead-ductless-mini-splits.html"'
    'href="../locations/rome-city-ductless-mini-splits.html"' = 'href="../locations/manchester-ductless-mini-splits.html"'
    'href="../locations/avilla-ductless-mini-splits.html"' = 'href="../locations/taneytown-ductless-mini-splits.html"'
    'href="../locations/churubusco-ductless-mini-splits.html"' = 'href="../locations/new-windsor-ductless-mini-splits.html"'
    'href="../locations/columbia-city-ductless-mini-splits.html"' = 'href="../locations/union-bridge-ductless-mini-splits.html"'
    'href="../locations/huntertown-ductless-mini-splits.html"' = 'href="../locations/eldersburg-ductless-mini-splits.html"'
    'href="../locations/roanoke-ductless-mini-splits.html"' = 'href="../locations/mount-airy-ductless-mini-splits.html"'
    'href="../locations/monroeville-ductless-mini-splits.html"' = 'href="../locations/damascus-ductless-mini-splits.html"'
    
    # Also update the non-relative paths for index.html
    'href="locations/fort-wayne-ductless-mini-splits.html"' = 'href="locations/westminster-ductless-mini-splits.html"'
    'href="locations/new-haven-ductless-mini-splits.html"' = 'href="locations/sykesville-ductless-mini-splits.html"'
    'href="locations/woodburn-ductless-mini-splits.html"' = 'href="locations/finksburg-ductless-mini-splits.html"'
    'href="locations/grabill-ductless-mini-splits.html"' = 'href="locations/owings-mills-ductless-mini-splits.html"'
    'href="locations/auburn-ductless-mini-splits.html"' = 'href="locations/reisterstown-ductless-mini-splits.html"'
    'href="locations/garrett-ductless-mini-splits.html"' = 'href="locations/randallstown-ductless-mini-splits.html"'
    'href="locations/butler-ductless-mini-splits.html"' = 'href="locations/liberty-ductless-mini-splits.html"'
    'href="locations/waterloo-ductless-mini-splits.html"' = 'href="locations/woodstock-ductless-mini-splits.html"'
    'href="locations/angola-ductless-mini-splits.html"' = 'href="locations/marriottsville-ductless-mini-splits.html"'
    'href="locations/fremont-ductless-mini-splits.html"' = 'href="locations/ellicott-city-ductless-mini-splits.html"'
    'href="locations/kendallville-ductless-mini-splits.html"' = 'href="locations/catonsville-ductless-mini-splits.html"'
    'href="locations/ligonier-ductless-mini-splits.html"' = 'href="locations/pikesville-ductless-mini-splits.html"'
    'href="locations/albion-ductless-mini-splits.html"' = 'href="locations/hampstead-ductless-mini-splits.html"'
    'href="locations/rome-city-ductless-mini-splits.html"' = 'href="locations/manchester-ductless-mini-splits.html"'
    'href="locations/avilla-ductless-mini-splits.html"' = 'href="locations/taneytown-ductless-mini-splits.html"'
    'href="locations/churubusco-ductless-mini-splits.html"' = 'href="locations/new-windsor-ductless-mini-splits.html"'
    'href="locations/columbia-city-ductless-mini-splits.html"' = 'href="locations/union-bridge-ductless-mini-splits.html"'
    'href="locations/huntertown-ductless-mini-splits.html"' = 'href="locations/eldersburg-ductless-mini-splits.html"'
    'href="locations/roanoke-ductless-mini-splits.html"' = 'href="locations/mount-airy-ductless-mini-splits.html"'
    'href="locations/monroeville-ductless-mini-splits.html"' = 'href="locations/damascus-ductless-mini-splits.html"'
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
        
        # Apply link replacements
        foreach ($oldLink in $linkReplacements.Keys) {
            $newLink = $linkReplacements[$oldLink]
            $content = $content -replace [regex]::Escape($oldLink), $newLink
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

Write-Host "`nNavigation link updates completed!" -ForegroundColor Green
