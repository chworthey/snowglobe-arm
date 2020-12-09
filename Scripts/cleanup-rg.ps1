Import-Module ./common.psm1
$config = Import-Config

Remove-AzResourceGroup -Name $config.MainRGName
Remove-AzResourceGroup -Name $config.TemplateSpecRGName