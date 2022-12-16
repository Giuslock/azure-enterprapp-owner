
# Timestamp di partenza
$ts = Get-Date
$dt = Get-Date -Format "yyyyMMdd_HH.mm"
$result_csv = ".\enterprise_apps_owners_$dt.csv"
#$ErrorActionPreference = 'SilentlyCOntinue' 

$appList = Get-AzureADApplication -All 1
$appsNum = $appList.Count
$index = 1


Write-Host "Starting script:" -ForegroundColor blue
foreach ($app in $appList) {

    # Progress
    Write-host "App $($index) / $($appsNum) --- Name: $($app.DisplayName)"  -ForegroundColor green
    $index++
    $owners = Get-AzureADApplicationOwner -ObjectId $app.ObjectId
    try{$s = [String]::Join('; ',$owners.DisplayName)
    $app | Add-Member -MemberType NoteProperty -Name 'Owner' -Value $s}
    catch{
    $app | Add-Member -MemberType NoteProperty -Name 'Owner' -Value $owners.DisplayName
    }  
    
    
    
    
}


$appList | Select-Object * -ExcludeProperty 'WwwHomepage','RequiredResourceAccess','RequiredResourceAccess','ReplyUrls','RecordConsentConditions','PreAuthorizedApplications','PasswordCredentials','ParentalControlSettings','OptionalClaims','OrgRestrictions','Oauth2Permissions','AddIns','DeletionTImestamp','AllowGuestsSignIn','AllowPassthroughUsers', 'AppLogoUrl','AppRoles', 'ErrorUrl','GroupMembershipClaims','IdentifierUris','InformationalUrls','IsDeviceOnlyAuthSupported','IsDisabled','KeyCredentials','KnownClientApplications','LogoutUrl'| export-csv -Path $result_csv -NoTypeInformation

# Stampo i timestamp
Write-host "Inizio processo: $ts" -ForegroundColor yellow
$ts = Get-Date
Write-host "Fine processo:   $ts" -ForegroundColor yellow