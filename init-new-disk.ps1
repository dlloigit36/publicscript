##provide new drive letter to use
$newdriveletter = 70..89 | ForEach-Object { [char]$_ }

##check in-used drive letter
$useddriveletter = (Get-Partition).DriveLetter
#Write-Output $useddriveletter

##avalibale drive letter excluded in-used drive letter
$newdriveletter = $newdriveletter -notmatch "[$($useddriveletter -join ',')]"
#Write-Output $newdriveletter

##get new raw disk number
$newrawdisknumber = (Get-Disk | Where partitionstyle -eq ‘RAW’).Number
#Write-Output $newrawdisknumber


If ($newrawdisknumber -ne $null) {
$i = 0
$newrawdisknumber |ForEach-Object {
   $datadisknumber = $newrawdisknumber[$i].ToString()
   Initialize-Disk -Number $newrawdisknumber[$i] -PartitionStyle GPT
   New-Partition -disknumber $newrawdisknumber[$i] -UseMaximumSize -driveletter $newdriveletter[$i] |
   Format-Volume -filesystem NTFS -newfilesystemlabel datadisk-$datadisknumber -Confirm:$false -Force
   $i += 1
   }
}

else {Write-Output 'no new disk to initialize'}