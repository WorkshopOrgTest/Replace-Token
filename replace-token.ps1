param(
[string]$find-text,
[string]$replace-text,
[string]$filepath)

$tempFilePath = "$env:TEMP\$($filePath | Split-Path -Leaf)"

(Get-Content -Path $filePath) -replace $find-text, $replace-text | Add-Content -Path $tempFilePath

Remove-Item -Path $filePath
Move-Item -Path $tempFilePath -Destination $filePath
