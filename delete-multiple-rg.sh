#!/bin/sh

# set -o errexit
# set -o xtrace  # used for debugging

echo "Delete resource group\n"

#echo "Enter Resource Group Name:"
#read rg_name

for rg_name in `cat rg.txt`
do
	echo "Check if resource group '$rg_name' exists"
	rg_exists=$(az group exists \
    		--name $rg_name)

	if [ $rg_exists ]
	then
    		echo "Resource Group '$rg_name' Exists \nDeleting Resource '$rg_name' Group"

    		result=$(az group delete \
        		--name $rg_name \
        		--yes)
	else
    		echo "Resource Group '$rg_name' not exists"
    		exit 1
	fi

	status=$?

	[ $status -eq 0 ] && echo "Resource Group '$rg_name' Deleted\n\n" || echo "Error deleting Resource Group '$rg_name' \n $result\n\n"
done