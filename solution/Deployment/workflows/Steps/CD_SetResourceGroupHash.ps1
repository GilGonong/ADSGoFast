

function Get-UniqueString ([string]$id, $length=13)
{
$hashArray = (new-object System.Security.Cryptography.SHA512Managed).ComputeHash($id.ToCharArray())
-join ($hashArray[1..$length] | ForEach-Object { [char]($_ % 26 + [byte][char]'a') })
}

Write-Host "Creating RG Hash"
$hashinput = $env:AdsOpts_CD_ResourceGroup_Name
$ResourceGroupHash = Get-UniqueString ($hashinput, $length=13)
Write-Host $ResourceGroupHash

PersistEnvVariable -Name "AdsOpts_CD_ResourceGroup_Hash" -Value $ResourceGroupHash
Write-Host "Created RG Hash"
