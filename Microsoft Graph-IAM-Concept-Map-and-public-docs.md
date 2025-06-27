| **Category**                       | **Endpoint Prefix**                         | **Docs Link**                                                                                             | **Purpose**                                                     |
| ---------------------------------- | ------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------- |
| **Users**                          | `/users`                                    | [🔗 Users (Microsoft Graph)](https://learn.microsoft.com/graph/api/resources/user)                        | Create, read, update, delete (CRUD) user accounts               |
| **Groups**                         | `/groups`                                   | [🔗 Groups (Microsoft Graph)](https://learn.microsoft.com/graph/api/resources/group)                      | Manage security groups, M365 groups                             |
| **Group Membership**               | `/groups/{id}/members`                      | [🔗 Add member to group](https://learn.microsoft.com/graph/api/group-post-members)                        | Add or remove members from a group                              |
| **Directory Roles**                | `/directoryRoles`                           | [🔗 Directory roles](https://learn.microsoft.com/graph/api/resources/directoryrole)                       | View/assign tenant-wide roles (e.g., Global Admin)              |
| **Role Assignments**               | `/roleManagement/directory/roleAssignments` | [🔗 Role assignments](https://learn.microsoft.com/graph/api/resources/unifiedroleassignment)              | Assign directory roles to users, groups, or service principals  |
| **Privileged Identity Mgmt (PIM)** | `/roleManagement/directory/...`             | [🔗 PIM API overview](https://learn.microsoft.com/graph/api/resources/privilegedidentitymanagement-root)  | Just-in-time privileged role access, activations, eligibility   |
| **Conditional Access**             | `/identity/conditionalAccess/policies`      | [🔗 Conditional Access policies](https://learn.microsoft.com/graph/api/resources/conditionalaccesspolicy) | Define policies for MFA, compliant device, location, etc.       |
| **Access Reviews**                 | `/identityGovernance/accessReviews`         | [🔗 Access reviews](https://learn.microsoft.com/graph/api/resources/accessreviewsv2-root)                 | Periodically review group or role membership                    |
| **Entitlement Management**         | `/identityGovernance/entitlementManagement` | [🔗 Entitlement management](https://learn.microsoft.com/graph/api/resources/entitlementmanagement-root)   | Automate access to resources through access packages & policies |
| **Applications**                   | `/applications`                             | [🔗 Applications (App registrations)](https://learn.microsoft.com/graph/api/resources/application)        | Manage app registrations (used in automation/auth)              |
| **Service Principals**             | `/servicePrincipals`                        | [🔗 Service principals](https://learn.microsoft.com/graph/api/resources/serviceprincipal)                 | Represents the app identity in a specific tenant                |



            ┌────────────────────────────┐
            │        Azure AD Tenant     │
            └────────────┬───────────────┘
                         │
                         ▼
             ┌─────────────────────┐
             │  Users              │◄────┐
             │  (/users)           │     │
             └─────────────────────┘     │
                         │               │
                         ▼               │
             ┌─────────────────────┐     │
             │  Groups             │     │
             │  (/groups)          │◄────┘
             └─────────────────────┘
                         │
                         ▼
             ┌─────────────────────┐
             │ Group Membership    │
             │ /groups/{id}/members│
             └─────────────────────┘
                         │
                         ▼
             ┌─────────────────────┐
             │ Directory Roles     │
             │ /directoryRoles     │◄─┐
             └─────────────────────┘  │
                         │            │
                         ▼            │
             ┌─────────────────────┐  │
             │ Role Assignments    │◄─┘
             │ /roleAssignments    │
             └─────────────────────┘
                         │
                         ▼
        ┌─────────────────────────────────────────┐
        │ Privileged Identity Mgmt (PIM)          │
        │ /roleManagement/directory/...           │
        └─────────────────────────────────────────┘
                         │
                         ▼
        ┌─────────────────────────────────────────┐
        │ Conditional Access Policies             │
        │ /identity/conditionalAccess/...         │
        └─────────────────────────────────────────┘
                         │
                         ▼
        ┌─────────────────────────────────────────┐
        │ Entitlement Mgmt / Access Packages      │
        │ /identityGovernance/entitlement...      │
        └─────────────────────────────────────────┘
