#storageaccountcontext
$storageaccountkey = "<Storageaccountkey>"
$ctx = New-AzureStorageContext -StorageAccountName "sachallenge2" -StorageAccountKey $storageaccountkey

$blob = Get-AzureStorageBlob -context $ctx -Container "myluck" -Blob "dummyfile1.txt"

#convert Icloudblob object to cloudblobblock object
$cloudblockblob = [Microsoft.WindowsAzure.Storage.Blob.CloudBlockBlob]$blob.ICloudBlock
$cloudblockblob.Metadata