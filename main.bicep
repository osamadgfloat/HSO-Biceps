param location string = 'eastus'
param vmName string
@description('Specifies the role definition ID used in the role assignment.')
param roleDefinitionID string

@description('Specifies the principal ID assigned to the role.')
param principalId string

@secure()
param adminUsername string
@description('Password for the Virtual Machine.')
@minLength(12)
@secure()
param adminPassword string

module vm 'vm.bicep' = {
 name: 'vm'
 params: {
  location: location
  adminUsername: adminUsername
  adminPassword: adminPassword
  vmName: vmName
  principalId: principalId
  roleDefinitionID: roleDefinitionID
 }
}



