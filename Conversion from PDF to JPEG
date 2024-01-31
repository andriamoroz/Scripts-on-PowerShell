# Path to the folder with PDF files
 $pdfFolderPath = "D:\new"

 # Path to the folder where JPEG images will be saved
 $jpegFolderPath = "D:\new"

 #  Additional ImageMagick conversion options
 $convertParams = "-density 150 -quality 100"

 # Check the existence of folders
 if (-not (Test-Path $pdfFolderPath)) {
     Write-Host "Папка з PDF не існує."
     exit
 }

 if (-not (Test-Path $jpegFolderPath)) {
     New-Item -ItemType Directory -Path $jpegFolderPath | Out-Null
 }

 # Get a list of PDF files in a folder
 $pdfFiles = Get-ChildItem -Path $pdfFolderPath -Filter *.pdf

 # Iteration for each PDF file and conversion to JPEG with automatic numbering
 foreach ($pdfFile in $pdfFiles) {

     # Starting page number
     $startPageNumber = 1

     $outputFileName = Join-Path $jpegFolderPath "$($pdfFile.BaseName)_Сторінка_%d.jpg"
     $command = "magick convert $convertParams -scene $startPageNumber `"$($pdfFile.FullName)`" `"$outputFileName`""
     Invoke-Expression -Command $command
     Write-Host "Conversion is complete for $($pdfFile.Name)."
     $startPageNumber++
 }

 Write-Host "All files were converted successfully."

     $startPageNumber++
 }

 Write-Host "Всі файли конвертовано успішно."
