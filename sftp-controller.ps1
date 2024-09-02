param(
    [string]$StorageAccountName,
    [string]$ResourceGroupName,
    [bool]$EnableSftp
)
Update-AzStorageAccount -ResourceGroupName $ResourceGroupName -Name $StorageAccountName -EnableSftp $EnableSftp