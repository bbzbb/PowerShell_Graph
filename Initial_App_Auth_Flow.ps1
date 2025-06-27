# Set required env variables for AD App to use later

$clientId     = $env:AZURE_CLIENT_ID
$tenantId     = $env:AZURE_TENANT_ID
$clientSecret = $env:AZURE_CLIENT_SECRET 

#Build the token to use with the Graph APIt

function Receive-token {
    param($clientId, $clientSecret, $tenantId)

    $body = @{
        client_id     = $clientId
        scope         = "https://graph.microsoft.com/.default"
        client_secret = $clientSecret
        grant_type    = "client_credentials"
        }
  
    try {
        $tokenResponse = Invoke-RestMethod -Method POST -Uri "https://login.microsoftonline.com/$tenantId/oauth2/v2.0/token" -Body $body
        return $tokenResponse.access_token
    } catch {
        Write-Error "Error retrieving access token: $($_.Exception.Message)"
        return $null
    }
}
