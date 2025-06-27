# Set required env variables for AD App to use later

$clientId     = $env:AZURE_CLIENT_ID
$tenantId     = $env:AZURE_TENANT_ID
$clientSecret = $env:AZURE_CLIENT_SECRET 

#Build the token to use with the Graph API

$body = @{
    client_id     = $clientId
    scope         = "https://graph.microsoft.com/.default"
    client_secret = $clientSecret
    grant_type    = "client_credentials"
}

$tokenResponse = Invoke-RestMethod -Method POST -Uri "https://login.microsoftonline.com/$tenantId/oauth2/v2.0/token" -Body $body
$accessToken   = $tokenResponse.access_token

#Use access token to call the Graph API

$headers = @{
    Authorization = "Bearer $accessToken"
    "Content-Type" = "application/json"
}

#Call the Graph API to get users

$response = Invoke-RestMethod -Uri "https://graph.microsoft.com/v1.0/users" -Headers $headers -Method GET
$response.value

