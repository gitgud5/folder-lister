# List all folders in the current directory and write their names to a .txt file
# This is the command line that you can input in your powershell or CMD (remove the "#" before inputting it)
#Get-ChildItem -Directory | Select-Object -ExpandProperty Name | Out-File -FilePath "current-folders.txt"

$filePath = "current-folders.txt"

# List all folders in the current directory
$folderNames = Get-ChildItem -Directory | Select-Object -ExpandProperty Name

# Check if the file exists
if (Test-Path -Path $filePath) {
    # If file exists then append to the file
    $folderNames | Out-File -FilePath $filePath -Append
} else {
    # Otherwise create a new file and write folder names into it
    $folderNames | Out-File -FilePath $filePath
}
