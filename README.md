# Azure Powershell Scripts
The goal of this repo is to share some of the commands, tips, and tricks I find regarding Azure.

## Azure Setup on Mac

### Requirements
* Install [brew.sh](https://brew.sh/)

### Step 1 - Install Powershell

Run `brew cask install powershell`

### Step 2 - Install AzureRM

Run these commands
```
pwsh
Install-Module az
mkdir -p $HOME/.config/powershell
Connect-AzureRmAccount
Import-Module Az
Enable-AzureRmAlias -Scope CurrentUser
```

### Step 3 - Check your Resource Groups

```
Get-AzureRMResourceGroup
```


### Running a Powershell Script

Example script: `scriptfile.ps1`
```powershell
param([string]$msg="Hello World")

echo $msg
```

```
pwsh ./scriptfile.ps1 -msg "Hello friend"
```

## Scripts
### Create Storage

Run
`create-storage.ps1`

## Commands
### Show Resource Groups
`Get-AzureRMResourceGroup`
