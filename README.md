# Azure_API
Me interacting with different sections of Azure and it's APIs 

1. Sign in to the [Azure portal](https://portal.azure.com/)
2. Navigate to Microsoft Entra ID > App registrations > New registration.
3. In the registration form, choose a name for your application and then select Register.
4. Allow your Application to access permissions.
    - On your application page, select API Permissions > Add permission.....
    - Example:
        - To [work with the user graph API](https://learn.microsoft.com/en-us/graph/permissions-reference?view=graph-rest-1.0#userread), set the following permissions. 
5. Select Grant consent.
    - Every time you add permission, you must click on Grant consent for the new permission to take effect.
6. Add a secret to the application.
    - Select Certificates & secrets, add description to the secret and select Add.
7. Log Application ID, Tenant ID, and Secret ID in your environment variables.