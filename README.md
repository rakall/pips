
**Module name: Public IP - pip**

Module name:  **Public IP**
Acronym: **pip**

Check [List of Acronyms](https://confluence.ci.gsnet.corp/display/OPTIMUM/List+of+Acronyms) for a complete list of acronyms

#**Introduction**

Public IP is a utility given by Azure in order that resources can communicate each other or with the internet.

## Azure documentation

[Public IP Overview](https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-ip-addresses-overview-arm)

### Configuration

The product supports the [common configuration parameters](https://confluence.ci.gsnet.corp/display/OPTIMUM/Product+Parameters#ProductParameters-Common) for all certified products.

[Product Parameters](https://confluence.ci.gsnet.corp/display/OPTIMUM/Product+Parameters#ProductParameters-Common)

Additionally the product supports the following custom configuration:

|Parameter| Tf Name | Default Value | Type |Mandatory |Others |
|:--|:--:|:--:|:--:|:--:|:--|
|name| name | n/a | string | yes |specifies the name of the Resource create to|
|resource group | resource_group | n/a | string | yes | Resource Group Name where the resources will be created.|
|location| location | n/a | List of string | yes | site where the resource is deployed |
|sku| sku | n/a | List of string | yes | specifies the SKU|
|allocation_method| allocation_method | n/a | List of string | yes | Dynamic or Static|

# **Naming**

The resource name will be automatically created according to the standardized CCoE Naming Convention for Azure resources. 
You can see  [Naming Convention for Azure Resources](https://confluence.ci.gsnet.corp/display/OPTIMUM/Naming+Convention+for+Azure+resources) for detailed information on naming.

The name will contain the following information:

|segment|number of characters|description|
|:--:|:--:|--|
|#1|3|Entity|
|#2|2|Environment and business domain to wich the resource belongs|
|#3|3|Region where the resource is deployed|
|#4|3| **pip**  = Type of resource| 
|#5|6|Application acronym|
|#6|4|Function or purpose|
|#7|3|Sequence number|

# **Getting Started**

Default SKU is Basic. This allows to set its allocation as Static or Dynamic.

### **Repository**

https://github.alm.europe.cloudcenter.corp/ccc-ccoe/iac.az.modules.pip

## **Software dependencies**

- [ ] You need Terraform 0.11.11 or higher.

## **API references and templates**

[Terraform page for azurerm resource group](https://www.terraform.io/docs/providers/azurerm/r/resource_group.html)
[Terraform page for azurerm public IP](https://www.terraform.io/docs/providers/azurerm/r/public_ip.html)

# **Bug and Comments**

Found a bug? Have comments? Let us know: TBD 

# **Links to internal documentation**

**Reference documents** :  

- [List of Acronyms](https://confluence.ci.gsnet.corp/display/OPTIMUM/List%2Bof%2BAcronyms)
- [Naming Convention for Repos](https://confluence.ci.gsnet.corp/display/OPTIMUM/Naming+Convention+for+Azure+resources)
- [Repo module strategy for terraform](https://confluence.ci.gsnet.corp/display/OPTIMUM/Repo+module+strategy+for+Terraform)
- [Product Portfolio](https://confluence.ci.gsnet.corp/display/OPTIMUM/CCoE+Product+Portfolio)
- [Naming Convention for Azure Resources](https://confluence.ci.gsnet.corp/display/OPTIMUM/Naming+Convention+for+Azure+resources)
