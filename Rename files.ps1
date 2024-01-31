-Path "D:\new" | Rename-Item -NewName { $_.name -replace "old_name ", "new_name" }  

PS D:\> Get-ChildItem -Path "D:\new*" | ForEach-Object {
    $newName = $_.Name -replace "old_name", "new_name"
    Rename-Item -Path $_.FullName -NewName $newName
}
 
