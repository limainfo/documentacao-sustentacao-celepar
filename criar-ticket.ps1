<#
Uso:
  .\criar-ticket.ps1 -Ticket "5678" -Descricao "correcao-erro-x"
#>

param(
    [Parameter(Mandatory = $true)]
    [string]$Ticket,          # ex: 5678
    [Parameter(Mandatory = $true)]
    [string]$Descricao        # ex: correcao-erro-x
)

# Prefixo do template base
$TemplatePrefix = "MANTIS-1234"

# Prefixo que será usado para o novo ticket
$NewPrefix = "MANTIS-$Ticket"

# Ex.: sustentacao/MANTIS-5678-correcao-erro-x
$TargetDir = Join-Path "sustentacao" ("{0}-{1}" -f $NewPrefix, $Descricao)

Write-Host ">> Criando pasta: $TargetDir"
New-Item -ItemType Directory -Path $TargetDir -Force | Out-Null

Write-Host ">> Copiando arquivos de docs\$TemplatePrefix-* para $TargetDir"

Get-ChildItem -Path "docs" -Filter "$TemplatePrefix-* " | ForEach-Object {
    $base = $_.Name
    # Troca MANTIS-1234 por MANTIS-5678 (ou o número que você passar)
    $newName = $base -replace [regex]::Escape($TemplatePrefix), $NewPrefix
    Write-Host ("   - {0} -> {1}" -f $base, $newName)
    Copy-Item $_.FullName (Join-Path $TargetDir $newName)
}

Write-Host ">> Concluído."
Write-Host "Pasta criada: $TargetDir"
