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
		<td><a href="account/get-accounts-accounts-214.md">/public/v1/accounts/accounts</a></td>
		<td>GET</td>
		<td>List accounts</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="account/get-accounts-accounts-215.md">/public/v1/accounts/accounts/{id}</a></td>
		<td>GET</td>
		<td>Get account by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="account/post-accounts-accounts-214.md">/public/v1/accounts/accounts</a></td>
		<td>POST</td>
		<td>Create account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="account/post-accounts-accounts-216.md">/public/v1/accounts/accounts/{id}/enable</a></td>
		<td>POST</td>
		<td>Enable account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="account/post-accounts-accounts-217.md">/public/v1/accounts/accounts/{id}/disable</a></td>
		<td>POST</td>
		<td>Disable account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="account/post-accounts-accounts-218.md">/public/v1/accounts/accounts/{id}/activate</a></td>
		<td>POST</td>
		<td>Activate account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="account/post-accounts-accounts-219.md">/public/v1/accounts/accounts/{id}/deactivate</a></td>
		<td>POST</td>
		<td>Deactivate account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="account/post-accounts-accounts-220.md">/public/v1/accounts/accounts/{id}/validate</a></td>
		<td>POST</td>
		<td>Validate account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="account/put-accounts-accounts-215.md">/public/v1/accounts/accounts/{id}</a></td>
		<td>PUT</td>
		<td>Update account</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### AccountSettings

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
		<td><a href="accountsettings/get-accounts-settings-213.md">/public/v1/accounts/accounts/{accountId}/settings/notifications</a></td>
		<td>GET</td>
		<td>Gets account notification settings</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="accountsettings/put-accounts-settings-213.md">/public/v1/accounts/accounts/{accountId}/settings/notifications</a></td>
		<td>PUT</td>
		<td>Updates account notification settings</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### AccountSettingsDto

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
		<td><a href="accountsettingsdto/put-accounts-settings-213.md">/public/v1/accounts/accounts/{accountId}/settings/notifications</a></td>
		<td>PUT</td>
		<td>Updates account notification settings</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### AccountUser

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
		<td><a href="accountuser/get-accounts-accountusers-221.md">/public/v1/accounts/accounts/{accountId}/users</a></td>
		<td>GET</td>
		<td>List account users</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="accountuser/get-accounts-accountusers-222.md">/public/v1/accounts/accounts/{accountId}/users/{userId}</a></td>
		<td>GET</td>
		<td>Get account user by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="accountuser/post-accounts-accountusers-221.md">/public/v1/accounts/accounts/{accountId}/users</a></td>
		<td>POST</td>
		<td>Create user (invite or add) inviting him into the account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="accountuser/post-accounts-accountusers-223.md">/public/v1/accounts/accounts/{accountId}/users/{userId}/groups</a></td>
		<td>POST</td>
		<td>Add account user to group</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="accountuser/put-accounts-accountusers-222.md">/public/v1/accounts/accounts/{accountId}/users/{userId}</a></td>
		<td>PUT</td>
		<td>Update user in account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="accountuser/put-accounts-accountusers-223.md">/public/v1/accounts/accounts/{accountId}/users/{userId}/groups</a></td>
		<td>PUT</td>
		<td>Change account user groups</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### AccountUserQueryLegacy

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
		<td><a href="accountuserquerylegacy/post-accounts-accountusers-224.md">/public/v1/accounts/accounts/{accountId}/users/{userId}/resend-invite</a></td>
		<td>POST</td>
		<td>Resend invite</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="accountuserquerylegacy/post-accounts-accountusers-225.md">/public/v1/accounts/accounts/{accountId}/users/{userId}/send-new-invite</a></td>
		<td>POST</td>
		<td>Send new invite</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="accountuserquerylegacy/post-accounts-accountusers-226.md">/public/v1/accounts/accounts/{accountId}/users/{userId}/accept-invite</a></td>
		<td>POST</td>
		<td>Accept invite</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### ApiToken

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
		<td><a href="apitoken/get-accounts-apitokens-227.md">/public/v1/accounts/api-tokens</a></td>
		<td>GET</td>
		<td>List API tokens</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="apitoken/get-accounts-apitokens-228.md">/public/v1/accounts/api-tokens/{id}</a></td>
		<td>GET</td>
		<td>Get API token by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="apitoken/post-accounts-apitokens-227.md">/public/v1/accounts/api-tokens</a></td>
		<td>POST</td>
		<td>Create API token</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="apitoken/post-accounts-apitokens-229.md">/public/v1/accounts/api-tokens/{id}/enable</a></td>
		<td>POST</td>
		<td>Enable API token</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="apitoken/post-accounts-apitokens-230.md">/public/v1/accounts/api-tokens/{id}/disable</a></td>
		<td>POST</td>
		<td>Disable API token</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="apitoken/put-accounts-apitokens-228.md">/public/v1/accounts/api-tokens/{id}</a></td>
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
		<td><a href="buyer/get-accounts-buyers-231.md">/public/v1/accounts/buyers</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="buyer/get-accounts-buyers-236.md">/public/v1/accounts/buyers/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="buyer/post-accounts-buyers-231.md">/public/v1/accounts/buyers</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="buyer/post-accounts-buyers-232.md">/public/v1/accounts/buyers/{id}/enable</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="buyer/post-accounts-buyers-233.md">/public/v1/accounts/buyers/{id}/disable</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="buyer/post-accounts-buyers-234.md">/public/v1/accounts/buyers/{id}/activate</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="buyer/post-accounts-buyers-235.md">/public/v1/accounts/buyers/{id}/deactivate</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="buyer/post-accounts-buyers-237.md">/public/v1/accounts/buyers/{id}/transfer</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="buyer/post-accounts-buyers-238.md">/public/v1/accounts/buyers/{id}/synchronize</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="buyer/put-accounts-buyers-236.md">/public/v1/accounts/buyers/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### BuyerTransferDetails

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
		<td><a href="buyertransferdetails/get-accounts-buyers-237.md">/public/v1/accounts/buyers/{id}/transfer</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### BuyerValidate

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
		<td><a href="buyervalidate/post-accounts-buyers-239.md">/public/v1/accounts/buyers/{id}/validate</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### CloudTenant

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
		<td><a href="cloudtenant/get-accounts-cloudtenants-240.md">/public/v1/accounts/cloud-tenants</a></td>
		<td>GET</td>
		<td>List cloud tenants</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="cloudtenant/get-accounts-cloudtenants-241.md">/public/v1/accounts/cloud-tenants/{id}</a></td>
		<td>GET</td>
		<td>Get cloud tenant by ID</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="cloudtenant/post-accounts-cloudtenants-240.md">/public/v1/accounts/cloud-tenants</a></td>
		<td>POST</td>
		<td>Create cloud tenant</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="cloudtenant/put-accounts-cloudtenants-241.md">/public/v1/accounts/cloud-tenants/{id}</a></td>
		<td>PUT</td>
		<td>Update cloud tenant</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### ErpLink

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
		<td><a href="erplink/get-accounts-erplinks-242.md">/public/v1/accounts/erp-links</a></td>
		<td>GET</td>
		<td>List ERP links</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="erplink/get-accounts-erplinks-243.md">/public/v1/accounts/erp-links/{id}</a></td>
		<td>GET</td>
		<td>Get ERP link by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="erplink/post-accounts-erplinks-244.md">/public/v1/accounts/erp-links/{id}/block</a></td>
		<td>POST</td>
		<td>Block ERP link</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="erplink/post-accounts-erplinks-245.md">/public/v1/accounts/erp-links/{id}/unblock</a></td>
		<td>POST</td>
		<td>Unblock ERP link</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="erplink/put-accounts-erplinks-243.md">/public/v1/accounts/erp-links/{id}</a></td>
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
		<td><a href="licensee/get-accounts-licensees-246.md">/public/v1/accounts/licensees</a></td>
		<td>GET</td>
		<td>List licensees</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="licensee/get-accounts-licensees-247.md">/public/v1/accounts/licensees/{id}</a></td>
		<td>GET</td>
		<td>Get licensee by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="licensee/post-accounts-licensees-246.md">/public/v1/accounts/licensees</a></td>
		<td>POST</td>
		<td>Create licensee</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="licensee/post-accounts-licensees-248.md">/public/v1/accounts/licensees/{id}/enable</a></td>
		<td>POST</td>
		<td>Enable licensee</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="licensee/post-accounts-licensees-249.md">/public/v1/accounts/licensees/{id}/disable</a></td>
		<td>POST</td>
		<td>Disable licensee</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="licensee/put-accounts-licensees-247.md">/public/v1/accounts/licensees/{id}</a></td>
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
		<td><a href="module/get-accounts-modules-250.md">/public/v1/accounts/modules</a></td>
		<td>GET</td>
		<td>List modules</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="module/get-accounts-modules-251.md">/public/v1/accounts/modules/{id}</a></td>
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
		<td><a href="seller/get-accounts-sellers-252.md">/public/v1/accounts/sellers</a></td>
		<td>GET</td>
		<td>List sellers</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="seller/get-accounts-sellers-253.md">/public/v1/accounts/sellers/{id}</a></td>
		<td>GET</td>
		<td>Get seller by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="seller/post-accounts-sellers-252.md">/public/v1/accounts/sellers</a></td>
		<td>POST</td>
		<td>Create seller</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="seller/post-accounts-sellers-254.md">/public/v1/accounts/sellers/{id}/activate</a></td>
		<td>POST</td>
		<td>Activate seller</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="seller/post-accounts-sellers-255.md">/public/v1/accounts/sellers/{id}/deactivate</a></td>
		<td>POST</td>
		<td>Deactivate seller</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="seller/post-accounts-sellers-256.md">/public/v1/accounts/sellers/{id}/disable</a></td>
		<td>POST</td>
		<td>Disable seller</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="seller/put-accounts-sellers-253.md">/public/v1/accounts/sellers/{id}</a></td>
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
		<td><a href="service/get-accounts-services-257.md">/public/v1/accounts/services</a></td>
		<td>GET</td>
		<td>List service identities</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="service/get-accounts-services-258.md">/public/v1/accounts/services/{id}</a></td>
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
		<td><a href="user/get-accounts-users-261.md">/public/v1/accounts/users</a></td>
		<td>GET</td>
		<td>List users</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="user/get-accounts-users-262.md">/public/v1/accounts/users/{uniqueFilter}</a></td>
		<td>GET</td>
		<td>Get user by ID or unique filter</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="user/post-accounts-users-263.md">/public/v1/accounts/users/{uniqueFilter}/set-password</a></td>
		<td>POST</td>
		<td>Set user password</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="user/post-accounts-users-264.md">/public/v1/accounts/users/{uniqueFilter}/unblock</a></td>
		<td>POST</td>
		<td>Unblock user</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="user/post-accounts-users-265.md">/public/v1/accounts/users/{uniqueFilter}/block</a></td>
		<td>POST</td>
		<td>Block user</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="user/put-accounts-users-262.md">/public/v1/accounts/users/{uniqueFilter}</a></td>
		<td>PUT</td>
		<td>Update user (multipart form)</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### UserExtendedAccount

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
		<td><a href="userextendedaccount/get-accounts-users-266.md">/public/v1/accounts/users/{uniqueFilter}/accounts</a></td>
		<td>GET</td>
		<td>List accounts associated with the user</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="userextendedaccount/put-accounts-users-267.md">/public/v1/accounts/users/{uniqueFilter}/accounts/{accountId}</a></td>
		<td>PUT</td>
		<td>Update user's account settings</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### UserGroup

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
		<td><a href="usergroup/get-accounts-usergroups-259.md">/public/v1/accounts/user-groups</a></td>
		<td>GET</td>
		<td>List user groups</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="usergroup/get-accounts-usergroups-260.md">/public/v1/accounts/user-groups/{id}</a></td>
		<td>GET</td>
		<td>Get user group by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="usergroup/post-accounts-usergroups-259.md">/public/v1/accounts/user-groups</a></td>
		<td>POST</td>
		<td>Create user group</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="usergroup/put-accounts-usergroups-260.md">/public/v1/accounts/user-groups/{id}</a></td>
		<td>PUT</td>
		<td>Update user group</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>

