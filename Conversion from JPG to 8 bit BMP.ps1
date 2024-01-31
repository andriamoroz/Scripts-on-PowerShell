function ConvertImage {

    $Origen = "D:\new" # file path
    $Destino = $Origen # path to save files

    if (Test-Path $Origen) {
        # downloading the necessary dependencies and getting a link to the object
        [Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") | Out-Null
        foreach ($file in (Get-ChildItem -Path "$Origen\*.jpg" -Exclude *-*)) {
            # converting an image to Format8bppIndexed
            $convertFile = New-Object System.Drawing.Bitmap($file.FullName)
            $format = [System.Drawing.Imaging.ImageFormat]::Bmp
            $newFileName = $Destino + '\' + $file.BaseName + '.bmp'
            $newFile = $convertFile.Clone([System.Drawing.Rectangle]::FromLTRB(0, 0, $convertFile.Width, $convertFile.Height), [System.Drawing.Imaging.PixelFormat]::Format8bppIndexed)
            $newFile.Save($newFileName, $format)
            $file.FullName
        }
    } else {
        Write-Host "Path not found."
    }
}

ConvertImage 
