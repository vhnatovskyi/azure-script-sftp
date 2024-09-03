param(
    [string]$StorageAccountName,
    [string]$ResourceGroupName,
    [bool]$EnableSftp
)

# Import the Az.Storage module
Import-Module Az.Storage

# Увійти в Azure
Connect-AzAccount -Identity

# Вимкнути SFTP для облікового запису зберігання
$storageAccount = Get-AzStorageAccount -ResourceGroupName $ResourceGroupName -Name $StorageAccountName

if ($storageAccount) {
    $storageAccount.EnableSftp = $false

    # Оновлення налаштувань облікового запису
    Set-AzStorageAccount -ResourceGroupName $ResourceGroupName -Name $StorageAccountName -EnableSftp $EnableSftp
    
    Write-Output "SFTP successfully updated for $StorageAccountName to $EnableSftp."
} else {
    Write-Output "Not Found $StorageAccountName."
}
