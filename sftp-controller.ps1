param(
    [string]$StorageAccountName,
    [string]$ResourceGroupName,
    [bool]$EnableSftp
)

# Import the Az.Storage module
Import-Module Az.Storage

# Get the storage account
$storageAccount = Get-AzStorageAccount -ResourceGroupName $ResourceGroupName -Name $StorageAccountName

# Update the SFTP settings
$storageAccount.UpdateProperties.sftpEnabled = $EnableSftp

# Apply the update
$storageAccount | Set-AzStorageAccount

Update-AzStorageAccount -ResourceGroupName $ResourceGroupName -Name $StorageAccountName -EnableSftp $EnableSftp
