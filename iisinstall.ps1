mkdir c:\buildArtifacts
echo Azure-Image-Builder-Was-Here  > c:\buildArtifacts\azureImageBuilder.txt
ping localhost > c:\buildActions\pinglocalhost.txt
Install-WindowsFeature -name Web-Server -IncludeManagementTools