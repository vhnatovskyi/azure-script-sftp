param(
    [string]$StorageAccountName,
    [string]$ResourceGroupName,
    [bool]$EnableSftp
)

Import-Module Az.Storage
Connect-AzAccount -Identity
$storageAccount = Get-AzStorageAccount -ResourceGroupName $ResourceGroupName -Name $StorageAccountName

if ($storageAccount) {
    $storageAccount.EnableSftp = $false

    Set-AzStorageAccount -ResourceGroupName $ResourceGroupName -Name $StorageAccountName -EnableSftp $EnableSftp -DisableLocalUsers $DisableLocalUsers
    
    Write-Output "SFTP successfully updated for $StorageAccountName to $EnableSftp."
} else {
    Write-Output "Not Found $StorageAccountName."
}
