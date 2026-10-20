# Accounts API

The **Accounts API** provides **REST** endpoints for managing resources within the **accounts** business domain of the SoftwareOne Marketplace. 

The API supports the following business objects:

*  **Account**  - 

*  **AccountSettings**  - represents account-specific notification settings

*  **AccountSettingsDto**  - 

*  **AccountUser**  - 

*  **AccountUserQueryLegacy**  - 

*  **ApiToken**  - 

*  **Buyer**  - 

*  **BuyerTransferDetails**  - 

*  **BuyerValidate**  - 

*  **CloudTenant**  - 

*  **ErpLink**  - 

*  **Licensee**  - 

*  **Module**  - 

*  **Seller**  - 

*  **Service**  - 

*  **User**  - 

*  **UserExtendedAccount**  - 

*  **UserGroup**  - 

Use the API to retrieve and manage these resources. Depending on the resource, available operations include creating, updating, and deleting records.
The full list of available operations is provided below.


## Before you start

Review the shared API docs before you work with **accounts** resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)

## Browse collections

The API is organized into collections, each containing a set of operations. Access to these operations varies by role, depending on whether you are a `client`, `vendor`, or `operations` user.&#x20;

See the following sections to determine which roles are authorized to perform specific operations within each collection:

### Account

<table>
<thead>
<tr>
 <td>Operation</td>
 <td>Method</td>
 <td>Description</td>
 <td>Access</td>
</tr>
</thead>
<tbody>
	<tr>
		<td><a href="account/get-accounts-accounts-198.md">/public/v1/accounts/accounts/{id}</a></td>
		<td>GET</td>
		<td>Get account by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="account/post-accounts-accounts-197.md">/public/v1/accounts/accounts</a></td>
		<td>POST</td>
		<td>Create account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="account/post-accounts-accounts-199.md">/public/v1/accounts/accounts/{id}/enable</a></td>
		<td>POST</td>
		<td>Enable account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="account/post-accounts-accounts-200.md">/public/v1/accounts/accounts/{id}/disable</a></td>
		<td>POST</td>
		<td>Disable account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="account/post-accounts-accounts-201.md">/public/v1/accounts/accounts/{id}/activate</a></td>
		<td>POST</td>
		<td>Activate account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="account/post-accounts-accounts-202.md">/public/v1/accounts/accounts/{id}/deactivate</a></td>
		<td>POST</td>
		<td>Deactivate account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="account/post-accounts-accounts-203.md">/public/v1/accounts/accounts/{id}/validate</a></td>
		<td>POST</td>
		<td>Validate account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="account/put-accounts-accounts-198.md">/public/v1/accounts/accounts/{id}</a></td>
		<td>PUT</td>
		<td>Update account</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Accountsettings

<table>
<thead>
<tr>
 <td>Operation</td>
 <td>Method</td>
 <td>Description</td>
 <td>Access</td>
</tr>
</thead>
<tbody>
	<tr>
		<td><a href="accountsettings/get-accounts-settings-196.md">/public/v1/accounts/accounts/{accountId}/settings/notifications</a></td>
		<td>GET</td>
		<td>Gets account notification settings</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="accountsettings/put-accounts-settings-196.md">/public/v1/accounts/accounts/{accountId}/settings/notifications</a></td>
		<td>PUT</td>
		<td>Updates account notification settings</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Accountsettingsdto

<table>
<thead>
<tr>
 <td>Operation</td>
 <td>Method</td>
 <td>Description</td>
 <td>Access</td>
</tr>
</thead>
<tbody>
	<tr>
		<td><a href="accountsettingsdto/put-accounts-settings-196.md">/public/v1/accounts/accounts/{accountId}/settings/notifications</a></td>
		<td>PUT</td>
		<td>Updates account notification settings</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Accountuser

<table>
<thead>
<tr>
 <td>Operation</td>
 <td>Method</td>
 <td>Description</td>
 <td>Access</td>
</tr>
</thead>
<tbody>
	<tr>
		<td><a href="accountuser/get-accounts-accountusers-205.md">/public/v1/accounts/accounts/{accountId}/users/{userId}</a></td>
		<td>GET</td>
		<td>Get account user by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="accountuser/post-accounts-accountusers-204.md">/public/v1/accounts/accounts/{accountId}/users</a></td>
		<td>POST</td>
		<td>Create user (invite or add) inviting him into the account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="accountuser/post-accounts-accountusers-206.md">/public/v1/accounts/accounts/{accountId}/users/{userId}/groups</a></td>
		<td>POST</td>
		<td>Add account user to group</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="accountuser/put-accounts-accountusers-205.md">/public/v1/accounts/accounts/{accountId}/users/{userId}</a></td>
		<td>PUT</td>
		<td>Update user in account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="accountuser/put-accounts-accountusers-206.md">/public/v1/accounts/accounts/{accountId}/users/{userId}/groups</a></td>
		<td>PUT</td>
		<td>Change account user groups</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Accountuserquerylegacy

<table>
<thead>
<tr>
 <td>Operation</td>
 <td>Method</td>
 <td>Description</td>
 <td>Access</td>
</tr>
</thead>
<tbody>
	<tr>
		<td><a href="accountuserquerylegacy/post-accounts-accountusers-207.md">/public/v1/accounts/accounts/{accountId}/users/{userId}/resend-invite</a></td>
		<td>POST</td>
		<td>Resend invite</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="accountuserquerylegacy/post-accounts-accountusers-208.md">/public/v1/accounts/accounts/{accountId}/users/{userId}/send-new-invite</a></td>
		<td>POST</td>
		<td>Send new invite</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="accountuserquerylegacy/post-accounts-accountusers-209.md">/public/v1/accounts/accounts/{accountId}/users/{userId}/accept-invite</a></td>
		<td>POST</td>
		<td>Accept invite</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### Apitoken

<table>
<thead>
<tr>
 <td>Operation</td>
 <td>Method</td>
 <td>Description</td>
 <td>Access</td>
</tr>
</thead>
<tbody>
	<tr>
		<td><a href="apitoken/get-accounts-apitokens-211.md">/public/v1/accounts/api-tokens/{id}</a></td>
		<td>GET</td>
		<td>Get API token by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="apitoken/post-accounts-apitokens-210.md">/public/v1/accounts/api-tokens</a></td>
		<td>POST</td>
		<td>Create API token</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="apitoken/post-accounts-apitokens-212.md">/public/v1/accounts/api-tokens/{id}/enable</a></td>
		<td>POST</td>
		<td>Enable API token</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="apitoken/post-accounts-apitokens-213.md">/public/v1/accounts/api-tokens/{id}/disable</a></td>
		<td>POST</td>
		<td>Disable API token</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="apitoken/put-accounts-apitokens-211.md">/public/v1/accounts/api-tokens/{id}</a></td>
		<td>PUT</td>
		<td>Update API token</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Buyer

<table>
<thead>
<tr>
 <td>Operation</td>
 <td>Method</td>
 <td>Description</td>
 <td>Access</td>
</tr>
</thead>
<tbody>
	<tr>
		<td><a href="buyer/get-accounts-buyers-219.md">/public/v1/accounts/buyers/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="buyer/post-accounts-buyers-214.md">/public/v1/accounts/buyers</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="buyer/post-accounts-buyers-215.md">/public/v1/accounts/buyers/{id}/enable</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="buyer/post-accounts-buyers-216.md">/public/v1/accounts/buyers/{id}/disable</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="buyer/post-accounts-buyers-217.md">/public/v1/accounts/buyers/{id}/activate</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="buyer/post-accounts-buyers-218.md">/public/v1/accounts/buyers/{id}/deactivate</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="buyer/post-accounts-buyers-220.md">/public/v1/accounts/buyers/{id}/transfer</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="buyer/post-accounts-buyers-221.md">/public/v1/accounts/buyers/{id}/synchronize</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="buyer/put-accounts-buyers-219.md">/public/v1/accounts/buyers/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Buyertransferdetails

<table>
<thead>
<tr>
 <td>Operation</td>
 <td>Method</td>
 <td>Description</td>
 <td>Access</td>
</tr>
</thead>
<tbody>
	<tr>
		<td><a href="buyertransferdetails/get-accounts-buyers-220.md">/public/v1/accounts/buyers/{id}/transfer</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Buyervalidate

<table>
<thead>
<tr>
 <td>Operation</td>
 <td>Method</td>
 <td>Description</td>
 <td>Access</td>
</tr>
</thead>
<tbody>
	<tr>
		<td><a href="buyervalidate/post-accounts-buyers-222.md">/public/v1/accounts/buyers/{id}/validate</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Cloudtenant

<table>
<thead>
<tr>
 <td>Operation</td>
 <td>Method</td>
 <td>Description</td>
 <td>Access</td>
</tr>
</thead>
<tbody>
	<tr>
		<td><a href="cloudtenant/get-accounts-cloudtenants-224.md">/public/v1/accounts/cloud-tenants/{id}</a></td>
		<td>GET</td>
		<td>Get cloud tenant by ID</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="cloudtenant/post-accounts-cloudtenants-223.md">/public/v1/accounts/cloud-tenants</a></td>
		<td>POST</td>
		<td>Create cloud tenant</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="cloudtenant/put-accounts-cloudtenants-224.md">/public/v1/accounts/cloud-tenants/{id}</a></td>
		<td>PUT</td>
		<td>Update cloud tenant</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### Erplink

<table>
<thead>
<tr>
 <td>Operation</td>
 <td>Method</td>
 <td>Description</td>
 <td>Access</td>
</tr>
</thead>
<tbody>
	<tr>
		<td><a href="erplink/get-accounts-erplinks-225.md">/public/v1/accounts/erp-links/{id}</a></td>
		<td>GET</td>
		<td>Get ERP link by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="erplink/post-accounts-erplinks-226.md">/public/v1/accounts/erp-links/{id}/block</a></td>
		<td>POST</td>
		<td>Block ERP link</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="erplink/post-accounts-erplinks-227.md">/public/v1/accounts/erp-links/{id}/unblock</a></td>
		<td>POST</td>
		<td>Unblock ERP link</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="erplink/put-accounts-erplinks-225.md">/public/v1/accounts/erp-links/{id}</a></td>
		<td>PUT</td>
		<td>Update ERP link</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Licensee

<table>
<thead>
<tr>
 <td>Operation</td>
 <td>Method</td>
 <td>Description</td>
 <td>Access</td>
</tr>
</thead>
<tbody>
	<tr>
		<td><a href="licensee/get-accounts-licensees-229.md">/public/v1/accounts/licensees/{id}</a></td>
		<td>GET</td>
		<td>Get licensee by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="licensee/post-accounts-licensees-228.md">/public/v1/accounts/licensees</a></td>
		<td>POST</td>
		<td>Create licensee</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="licensee/post-accounts-licensees-230.md">/public/v1/accounts/licensees/{id}/enable</a></td>
		<td>POST</td>
		<td>Enable licensee</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="licensee/post-accounts-licensees-231.md">/public/v1/accounts/licensees/{id}/disable</a></td>
		<td>POST</td>
		<td>Disable licensee</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="licensee/put-accounts-licensees-229.md">/public/v1/accounts/licensees/{id}</a></td>
		<td>PUT</td>
		<td>Update licensee</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Module

<table>
<thead>
<tr>
 <td>Operation</td>
 <td>Method</td>
 <td>Description</td>
 <td>Access</td>
</tr>
</thead>
<tbody>
	<tr>
		<td><a href="module/get-accounts-modules-232.md">/public/v1/accounts/modules/{id}</a></td>
		<td>GET</td>
		<td>Get module by ID</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### Seller

<table>
<thead>
<tr>
 <td>Operation</td>
 <td>Method</td>
 <td>Description</td>
 <td>Access</td>
</tr>
</thead>
<tbody>
	<tr>
		<td><a href="seller/get-accounts-sellers-234.md">/public/v1/accounts/sellers/{id}</a></td>
		<td>GET</td>
		<td>Get seller by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="seller/post-accounts-sellers-233.md">/public/v1/accounts/sellers</a></td>
		<td>POST</td>
		<td>Create seller</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="seller/post-accounts-sellers-235.md">/public/v1/accounts/sellers/{id}/activate</a></td>
		<td>POST</td>
		<td>Activate seller</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="seller/post-accounts-sellers-236.md">/public/v1/accounts/sellers/{id}/deactivate</a></td>
		<td>POST</td>
		<td>Deactivate seller</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="seller/post-accounts-sellers-237.md">/public/v1/accounts/sellers/{id}/disable</a></td>
		<td>POST</td>
		<td>Disable seller</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="seller/put-accounts-sellers-234.md">/public/v1/accounts/sellers/{id}</a></td>
		<td>PUT</td>
		<td>Update seller</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Service

<table>
<thead>
<tr>
 <td>Operation</td>
 <td>Method</td>
 <td>Description</td>
 <td>Access</td>
</tr>
</thead>
<tbody>
	<tr>
		<td><a href="service/get-accounts-services-238.md">/public/v1/accounts/services/{id}</a></td>
		<td>GET</td>
		<td>Get service identity by ID</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### User

<table>
<thead>
<tr>
 <td>Operation</td>
 <td>Method</td>
 <td>Description</td>
 <td>Access</td>
</tr>
</thead>
<tbody>
	<tr>
		<td><a href="user/get-accounts-users-241.md">/public/v1/accounts/users/{uniqueFilter}</a></td>
		<td>GET</td>
		<td>Get user by ID or unique filter</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="user/post-accounts-users-242.md">/public/v1/accounts/users/{uniqueFilter}/set-password</a></td>
		<td>POST</td>
		<td>Set user password</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="user/post-accounts-users-243.md">/public/v1/accounts/users/{uniqueFilter}/unblock</a></td>
		<td>POST</td>
		<td>Unblock user</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="user/post-accounts-users-244.md">/public/v1/accounts/users/{uniqueFilter}/block</a></td>
		<td>POST</td>
		<td>Block user</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="user/put-accounts-users-241.md">/public/v1/accounts/users/{uniqueFilter}</a></td>
		<td>PUT</td>
		<td>Update user (multipart form)</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Userextendedaccount

<table>
<thead>
<tr>
 <td>Operation</td>
 <td>Method</td>
 <td>Description</td>
 <td>Access</td>
</tr>
</thead>
<tbody>
	<tr>
		<td><a href="userextendedaccount/put-accounts-users-245.md">/public/v1/accounts/users/{uniqueFilter}/accounts/{accountId}</a></td>
		<td>PUT</td>
		<td>Update user's account settings</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Usergroup

<table>
<thead>
<tr>
 <td>Operation</td>
 <td>Method</td>
 <td>Description</td>
 <td>Access</td>
</tr>
</thead>
<tbody>
	<tr>
		<td><a href="usergroup/get-accounts-usergroups-240.md">/public/v1/accounts/user-groups/{id}</a></td>
		<td>GET</td>
		<td>Get user group by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="usergroup/post-accounts-usergroups-239.md">/public/v1/accounts/user-groups</a></td>
		<td>POST</td>
		<td>Create user group</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="usergroup/put-accounts-usergroups-240.md">/public/v1/accounts/user-groups/{id}</a></td>
		<td>PUT</td>
		<td>Update user group</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>

