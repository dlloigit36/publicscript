mkdir c:\buildArtifacts
echo Azure-Image-Builder-Was-Here  > c:\buildArtifacts\azureImageBuilder.txt
ping localhost > c:\buildArtifacts\pinglocalhost.txt
Install-WindowsFeature -name Web-Server -IncludeManagementTools
ping localhost > c:\buildArtifacts\pinglocalhost2.txt
