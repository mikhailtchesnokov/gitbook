# Accounts API

You can also perform additional operations, including:

*  Gets account notification settings.

*  Updates account notification settings.

*  List accounts

*  Create account

*  Get account by ID

*  Update account

*  Enable account

*  Disable account

*  Activate account

*  Deactivate account

*  Validate account

*  Get account icon

*  List account users

*  Create user (invite or add) inviting him into the account

*  Get account user by ID

*  Update user in account

*  Delete user from account

*  Add account user to group

*  Change account user groups

*  Remove account user from group

*  Resend invite

*  Send new invite

*  Accept invite

*  List API tokens

*  Create API token

*  Get API token by ID

*  Update API token

*  Delete API token

*  Enable API token

*  Disable API token

*  List cloud tenants

*  Create cloud tenant

*  Get cloud tenant by ID

*  Delete cloud tenant

*  Update cloud tenant

*  List ERP links

*  Get ERP link by ID

*  Update ERP link

*  Block ERP link

*  Unblock ERP link

*  List licensees

*  Create licensee

*  Get licensee by ID

*  Update licensee

*  Delete licensee

*  Enable licensee

*  Disable licensee

*  Get licensee icon

*  List modules

*  Get module by ID

*  List sellers

*  Create seller

*  Get seller by ID

*  Update seller

*  Delete seller

*  Activate seller

*  Deactivate seller

*  Disable seller

*  Get seller icon

*  List service identities

*  Get service identity by ID

*  List user groups

*  Create user group

*  Get user group by ID

*  Update user group

*  Delete user group

*  List users

*  Get user by ID or unique filter

*  Update user (multipart form)

*  Delete user

*  Set user password

*  Unblock user

*  Block user

*  Check SSO status

*  Get user icon

*  List accounts associated with the user

*  Update user's account settings


## Before you start

Review the shared API docs before you work with currency resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)


## Core concepts

The Accounts API is built around the following core resources:

*  **Account**  - 

*  **AccountUser**  - 

*  **ApiToken**  - 

*  **Buyer**  - 

*  **CloudTenant**  - 

*  **ErpLink**  - 

*  **Licensee**  - 

*  **Module**  - 

*  **Seller**  - 

*  **Service**  - 

*  **UserGroup**  - 

*  **User**  - 


## Browse collections

The API is organized into collections, each containing a set of operations. Access to these operations varies by role, depending on whether you are a `client`, `vendor`, or `operations` user.&#x20;

See the following sections to determine which roles are authorized to perform specific operations within each collection:

### Settings

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/accounts/{accountId}/settings/notifications</a></td>
		<td>GET</td>
		<td>Gets account notification settings</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/accounts/{accountId}/settings/notifications</a></td>
		<td>PUT</td>
		<td>Updates account notification settings</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Accounts

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/accounts</a></td>
		<td>GET</td>
		<td>List accounts</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/accounts/{id}</a></td>
		<td>GET</td>
		<td>Get account by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/accounts/{id}/icon</a></td>
		<td>GET</td>
		<td>Get account icon</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/accounts</a></td>
		<td>POST</td>
		<td>Create account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/accounts/{id}/enable</a></td>
		<td>POST</td>
		<td>Enable account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/accounts/{id}/disable</a></td>
		<td>POST</td>
		<td>Disable account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/accounts/{id}/activate</a></td>
		<td>POST</td>
		<td>Activate account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/accounts/{id}/deactivate</a></td>
		<td>POST</td>
		<td>Deactivate account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/accounts/{id}/validate</a></td>
		<td>POST</td>
		<td>Validate account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/accounts/{id}</a></td>
		<td>PUT</td>
		<td>Update account</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Accountusers

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/accounts/{accountId}/users</a></td>
		<td>GET</td>
		<td>List account users</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/accounts/{accountId}/users/{userId}</a></td>
		<td>GET</td>
		<td>Get account user by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/accounts/{accountId}/users</a></td>
		<td>POST</td>
		<td>Create user (invite or add) inviting him into the account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/accounts/{accountId}/users/{userId}/groups</a></td>
		<td>POST</td>
		<td>Add account user to group</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/accounts/{accountId}/users/{userId}/resend-invite</a></td>
		<td>POST</td>
		<td>Resend invite</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/accounts/{accountId}/users/{userId}/send-new-invite</a></td>
		<td>POST</td>
		<td>Send new invite</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/accounts/{accountId}/users/{userId}/accept-invite</a></td>
		<td>POST</td>
		<td>Accept invite</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/accounts/{accountId}/users/{userId}</a></td>
		<td>PUT</td>
		<td>Update user in account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/accounts/{accountId}/users/{userId}/groups</a></td>
		<td>PUT</td>
		<td>Change account user groups</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/accounts/{accountId}/users/{userId}</a></td>
		<td>DELETE</td>
		<td>Delete user from account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/accounts/{accountId}/users/{userId}/groups/{userGroupId}</a></td>
		<td>DELETE</td>
		<td>Remove account user from group</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Apitokens

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/api-tokens</a></td>
		<td>GET</td>
		<td>List API tokens</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/api-tokens/{id}</a></td>
		<td>GET</td>
		<td>Get API token by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/api-tokens</a></td>
		<td>POST</td>
		<td>Create API token</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/api-tokens/{id}/enable</a></td>
		<td>POST</td>
		<td>Enable API token</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/api-tokens/{id}/disable</a></td>
		<td>POST</td>
		<td>Disable API token</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/api-tokens/{id}</a></td>
		<td>PUT</td>
		<td>Update API token</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/api-tokens/{id}</a></td>
		<td>DELETE</td>
		<td>Delete API token</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Buyers

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/buyers</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/buyers/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/buyers/{id}/transfer</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/buyers/{id}/icon</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/buyers</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/buyers/{id}/enable</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/buyers/{id}/disable</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/buyers/{id}/activate</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/buyers/{id}/deactivate</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/buyers/{id}/transfer</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/buyers/{id}/validate</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/buyers/{id}/synchronize</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/buyers/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/buyers/{id}</a></td>
		<td>DELETE</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Cloudtenants

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/cloud-tenants</a></td>
		<td>GET</td>
		<td>List cloud tenants</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/cloud-tenants/{id}</a></td>
		<td>GET</td>
		<td>Get cloud tenant by ID</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/cloud-tenants</a></td>
		<td>POST</td>
		<td>Create cloud tenant</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/cloud-tenants/{id}</a></td>
		<td>PUT</td>
		<td>Update cloud tenant</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/cloud-tenants/{id}</a></td>
		<td>DELETE</td>
		<td>Delete cloud tenant</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### Erplinks

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/erp-links</a></td>
		<td>GET</td>
		<td>List ERP links</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/erp-links/{id}</a></td>
		<td>GET</td>
		<td>Get ERP link by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/erp-links/{id}/block</a></td>
		<td>POST</td>
		<td>Block ERP link</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/erp-links/{id}/unblock</a></td>
		<td>POST</td>
		<td>Unblock ERP link</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/erp-links/{id}</a></td>
		<td>PUT</td>
		<td>Update ERP link</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Licensees

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/licensees</a></td>
		<td>GET</td>
		<td>List licensees</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/licensees/{id}</a></td>
		<td>GET</td>
		<td>Get licensee by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/licensees/{id}/icon</a></td>
		<td>GET</td>
		<td>Get licensee icon</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/licensees</a></td>
		<td>POST</td>
		<td>Create licensee</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/licensees/{id}/enable</a></td>
		<td>POST</td>
		<td>Enable licensee</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/licensees/{id}/disable</a></td>
		<td>POST</td>
		<td>Disable licensee</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/licensees/{id}</a></td>
		<td>PUT</td>
		<td>Update licensee</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/licensees/{id}</a></td>
		<td>DELETE</td>
		<td>Delete licensee</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Modules

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/modules</a></td>
		<td>GET</td>
		<td>List modules</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/modules/{id}</a></td>
		<td>GET</td>
		<td>Get module by ID</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### Sellers

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/sellers</a></td>
		<td>GET</td>
		<td>List sellers</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/sellers/{id}</a></td>
		<td>GET</td>
		<td>Get seller by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/sellers/{id}/icon</a></td>
		<td>GET</td>
		<td>Get seller icon</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/sellers</a></td>
		<td>POST</td>
		<td>Create seller</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/sellers/{id}/activate</a></td>
		<td>POST</td>
		<td>Activate seller</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/sellers/{id}/deactivate</a></td>
		<td>POST</td>
		<td>Deactivate seller</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/sellers/{id}/disable</a></td>
		<td>POST</td>
		<td>Disable seller</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/sellers/{id}</a></td>
		<td>PUT</td>
		<td>Update seller</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/sellers/{id}</a></td>
		<td>DELETE</td>
		<td>Delete seller</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Services

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/services</a></td>
		<td>GET</td>
		<td>List service identities</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/services/{id}</a></td>
		<td>GET</td>
		<td>Get service identity by ID</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Usergroups

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/user-groups</a></td>
		<td>GET</td>
		<td>List user groups</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/user-groups/{id}</a></td>
		<td>GET</td>
		<td>Get user group by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/user-groups</a></td>
		<td>POST</td>
		<td>Create user group</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/user-groups/{id}</a></td>
		<td>PUT</td>
		<td>Update user group</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/user-groups/{id}</a></td>
		<td>DELETE</td>
		<td>Delete user group</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Users

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/users</a></td>
		<td>GET</td>
		<td>List users</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/users/{uniqueFilter}</a></td>
		<td>GET</td>
		<td>Get user by ID or unique filter</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/users/{uniqueFilter}/sso</a></td>
		<td>GET</td>
		<td>Check SSO status</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/users/{uniqueFilter}/icon</a></td>
		<td>GET</td>
		<td>Get user icon</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/users/{uniqueFilter}/accounts</a></td>
		<td>GET</td>
		<td>List accounts associated with the user</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/users/{uniqueFilter}/set-password</a></td>
		<td>POST</td>
		<td>Set user password</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/users/{uniqueFilter}/unblock</a></td>
		<td>POST</td>
		<td>Unblock user</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/users/{uniqueFilter}/block</a></td>
		<td>POST</td>
		<td>Block user</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/users/{uniqueFilter}</a></td>
		<td>PUT</td>
		<td>Update user (multipart form)</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/users/{uniqueFilter}/accounts/{accountId}</a></td>
		<td>PUT</td>
		<td>Update user's account settings</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/accounts/users/{uniqueFilter}</a></td>
		<td>DELETE</td>
		<td>Delete user</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>

