#!/bin/sh
set -e -x
#
# refs
# https://docs.microsoft.com/en-us/cli/azure/functionapp?view=azure-cli-latest
#

RESOURCE_GROUP="clint-new-rg"
REGION="westus"
STORAGE_ACCOUNT="clint-test-strg"
APP_NAME="demo-func-clint" #  the name needs to be unique across all apps in Azure.

echo "Create Resource Group: $RESOURCE_GROUP"
az group create --name $RESOURCE_GROUP --location $REGION

echo "Create an Azure Storage account: $STORAGE_ACCOUNT"
az storage account create --name $STORAGE_ACCOUNT \
    --location $REGION \
    --resource-group $RESOURCE_GROUP \
    --sku Standard_LRS

#echo "Clearning up all resources"
# az group delete --name $RESOURCE_GROUP

echo "Done"