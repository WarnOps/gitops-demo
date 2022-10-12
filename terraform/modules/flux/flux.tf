resource "azapi_resource" "symbolicname" {
  type = "Microsoft.KubernetesConfiguration/fluxConfigurations@2022-07-01"
  name = "string"
  parent_id = "string"
  body = jsonencode({
    properties = {
      azureBlob = {
        accountKey = "string"
        containerName = "string"
        localAuthRef = "string"
        managedIdentity = {
          clientId = "string"
        }
        sasToken = "string"
        servicePrincipal = {
          clientCertificate = "string"
          clientCertificatePassword = "string"
          clientCertificateSendChain = bool
          clientId = "string"
          clientSecret = "string"
          tenantId = "string"
        }
        syncIntervalInSeconds = int
        timeoutInSeconds = int
        url = "string"
      }
      bucket = {
        accessKey = "string"
        bucketName = "string"
        insecure = bool
        localAuthRef = "string"
        syncIntervalInSeconds = int
        timeoutInSeconds = int
        url = "string"
      }
      configurationProtectedSettings = {}
      gitRepository = {
        httpsCACert = "string"
        httpsUser = "string"
        localAuthRef = "string"
        repositoryRef = {
          branch = "string"
          commit = "string"
          semver = "string"
          tag = "string"
        }
        sshKnownHosts = "string"
        syncIntervalInSeconds = int
        timeoutInSeconds = int
        url = "string"
      }
      kustomizations = {}
      namespace = "string"
      scope = "string"
      sourceKind = "string"
      suspend = bool
    }
  })
}