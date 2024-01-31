# Your prefix to put
$prefix = "Your_prefix_"

# Path to the file and File extension filter
Get-ChildItem -Path "D:\new" -Filter "*.mp3" | ForEach-Object {
  $newName = $prefix + $_.Name
  Rename-Item -Path $_.FullName -NewName $newName
} 
