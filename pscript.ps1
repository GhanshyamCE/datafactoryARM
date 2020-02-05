$resourceGroupName = "TestGateway-sql"
New-AzResourceGroup -Name $resourceGroupName  -Location "East Asia" -Force 

# Just validates the json file from github
Test-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName `
-TemplateUri 'https://github.com/GhanshyamCE/AppgatewayAssignment/blob/master/azuredeploy-main.json' `
-TemplateParameterUri 'https://github.com/GhanshyamCE/AppgatewayAssignment/blob/master/azuredeploy.paramaters.json'


# Deploy from Github repo
$resourceGroupDeployment = New-AzResourceGroupDeployment -Name $resourceGroupName'Deployment' -ResourceGroupName $resourceGroupName `
-TemplateUri 'https://github.com/GhanshyamCE/AppgatewayAssignment/blob/master/azuredeploy-main.json' `
-TemplateParameterUri 'https://github.com/GhanshyamCE/AppgatewayAssignment/blob/master/azuredeploy.paramaters.json' `
-DeploymentDebugLogLevel All -Mode Complete -Force

