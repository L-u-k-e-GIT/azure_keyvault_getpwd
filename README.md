# azure_keyvault_getpwd
Get a secret from a azure key vault

Example of usage
from main.tf you can call module

```erlang
module "get_pwd_ad" {
   
  source         = "git::https://github.com/L-u-k-e-GIT/azure_KEYVAULT_GETPWD.git"
  #### Name of the secret you want to get key
  MD_SECRET   = (var.USERNAME)
  #### Key Vault Id where to lookup secret: "/subscriptions/***************/resourceGroups/************/providers/Microsoft.KeyVault/vaults/keyvaultname""
  MD_VAULT_ID = var.KEY_VAULT_SANDBOX 
 
}
```


##### Then you can use the output everywhere in this way 
```erlang
MD_USERPWD            = module.get_pwd_ad.secret_value
```