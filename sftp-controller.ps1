param(
    [string]$StorageAccountName,
    [string]$ResourceGroupName,
    [bool]$EnableSftp
)

# Import the Az.Storage module
Import-Module Az.Storage

# Set the SFTP setting on the storage account
Set-AzStorageAccount -ResourceGroupName $ResourceGroupName -Name $StorageAccountName -EnableSftp $EnableSftp
