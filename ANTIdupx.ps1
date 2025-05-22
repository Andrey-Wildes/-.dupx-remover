# Caminho da pasta onde os arquivos estão localizados
$folderPath = "C:\Users\Usuario\Desktop\$Caminho do seu diretorio$"

# Obter todos os arquivos com extensão .dupx
$files = Get-ChildItem -Path $folderPath -File -Filter *.dupx

foreach ($file in $files) {
    # Novo nome sem a extensão .dupx
    $newFileName = [System.IO.Path]::GetFileNameWithoutExtension($file.Name)

    # Caminho completo do novo arquivo
    $newFilePath = Join-Path -Path $folderPath -ChildPath $newFileName

    # Renomear o arquivo
    Rename-Item -Path $file.FullName -NewName $newFilePath
}

Write-Output "Extensões .dupx removidas com sucesso!"
