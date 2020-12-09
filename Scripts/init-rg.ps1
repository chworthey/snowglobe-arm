Import-Module ./common.psm1
$config = Import-Config

New-AzResourceGroup `
  -Name $config.TemplateSpecRGName `
  -Location $config.Location

New-AzResourceGroup `
  -Name $config.MainRGName `
  -Location $config.Location