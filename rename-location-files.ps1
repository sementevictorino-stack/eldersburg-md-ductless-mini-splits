# PowerShell script to rename location files to Maryland cities
Write-Host "Renaming location files to Maryland cities..." -ForegroundColor Green

# Define file rename mappings (old -> new)
$fileRenameMappings = @{
    "huntertown-ductless-mini-splits.html" = "eldersburg-ductless-mini-splits.html"
    "fort-wayne-ductless-mini-splits.html" = "westminster-ductless-mini-splits.html"
    "new-haven-ductless-mini-splits.html" = "sykesville-ductless-mini-splits.html"
    "woodburn-ductless-mini-splits.html" = "finksburg-ductless-mini-splits.html"
    "grabill-ductless-mini-splits.html" = "owings-mills-ductless-mini-splits.html"
    "auburn-ductless-mini-splits.html" = "reisterstown-ductless-mini-splits.html"
    "garrett-ductless-mini-splits.html" = "randallstown-ductless-mini-splits.html"
    "butler-ductless-mini-splits.html" = "liberty-ductless-mini-splits.html"
    "waterloo-ductless-mini-splits.html" = "woodstock-ductless-mini-splits.html"
    "angola-ductless-mini-splits.html" = "marriottsville-ductless-mini-splits.html"
    "fremont-ductless-mini-splits.html" = "ellicott-city-ductless-mini-splits.html"
    "kendallville-ductless-mini-splits.html" = "catonsville-ductless-mini-splits.html"
    "ligonier-ductless-mini-splits.html" = "pikesville-ductless-mini-splits.html"
    "albion-ductless-mini-splits.html" = "hampstead-ductless-mini-splits.html"
    "rome-city-ductless-mini-splits.html" = "manchester-ductless-mini-splits.html"
    "avilla-ductless-mini-splits.html" = "taneytown-ductless-mini-splits.html"
    "churubusco-ductless-mini-splits.html" = "new-windsor-ductless-mini-splits.html"
    "columbia-city-ductless-mini-splits.html" = "union-bridge-ductless-mini-splits.html"
    "roanoke-ductless-mini-splits.html" = "mount-airy-ductless-mini-splits.html"
    "monroeville-ductless-mini-splits.html" = "damascus-ductless-mini-splits.html"
}

# Change to locations directory
Set-Location -Path ".\locations"

foreach ($oldName in $fileRenameMappings.Keys) {
    $newName = $fileRenameMappings[$oldName]
    
    if (Test-Path $oldName) {
        try {
            Rename-Item -Path $oldName -NewName $newName
            Write-Host "Renamed: $oldName -> $newName" -ForegroundColor Green
        }
        catch {
            Write-Host "Error renaming $oldName : $($_.Exception.Message)" -ForegroundColor Red
        }
    } else {
        Write-Host "File not found: $oldName" -ForegroundColor Yellow
    }
}

# Change back to parent directory
Set-Location -Path ".."

Write-Host "`nFile renaming completed!" -ForegroundColor Green
