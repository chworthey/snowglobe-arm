Import-Module ./common.psm1
$config = Import-Config

New-AzTemplateSpec `
  -Name $config.TemplateSpecName `
  -Version $config.UploadVersion `
  -ResourceGroupName $config.TemplateSpecRGName `
  -Location $config.Location `
  -TemplateFile "../ARM-Templates/master.json"