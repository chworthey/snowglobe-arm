Import-Module ./common.psm1
$config = Import-Config

$id = (Get-AzTemplateSpec -ResourceGroupName $config.TemplateSpecRGName -Name $config.TemplateSpecName -Version $config.DeployVersion).Versions.Id

New-AzResourceGroupDeployment `
  -TemplateSpecId $id `
  -ResourceGroupName $config.MainRGName