## What is a resource group?

- A **resource group** is a logical container that associates multiple resources so you can manage them as a single entity—based on lifecycle and security.
- Each resource in Azure must belong to a resource group.
- There can be multiple resource group in a single subscription

![Azure Resource Group](https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/_images/govern/design/governance-1-10.png)

You can get the more information [here](https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/govern/resource-consistency/resource-access-management)

## What is Azure CLI?

- The Azure Command-Line Interface (CLI) is a cross-platform command-line tool to connect to Azure and execute administrative commands on Azure resources. 
- It allows the execution of commands through a terminal using interactive command-line prompts or a script.

You can get the more information [here](https://learn.microsoft.com/en-us/cli/azure/)

## Pre-requsties

- Setup Azure CLI, check for the installation of Azure CLI [here](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
- List of the unwanted resource group

## How to run the script

- Clone the repo
- Go to repo directory `cd delete-multiple-resource-group`
- Add the list of the resource group to `rg.txt`
- Run the script using command `./delete-resource-group.sh`
