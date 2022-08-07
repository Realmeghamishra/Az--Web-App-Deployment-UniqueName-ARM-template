$templateFile = ".\webapp.json"
$parameterFile=".\webapp.parameters.dev.json"

 $rg = "ArmDeployment"
$rg_location = "eastus"
New-AzResourceGroup -Name $rg -Location $rg_location -Force

#New-AzResourceGroup `
 #Name myResourceGroupDev `
 #Location "East US"
New-AzResourceGroupDeployment `
  -Name devenvironment `
  -ResourceGroupName $rg `
  -TemplateFile $templateFile `
  -TemplateParameterFile $parameterFile