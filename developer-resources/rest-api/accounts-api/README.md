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

*  Check whether SSO is enabled (deprecated)

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
		<td>/public/v1/accounts/accounts/{accountId}/settings/notifications</td>
		<td>Get</td>
		<td>Gets account notification settings.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/accounts/{accountId}/settings/notifications</td>
		<td>Put</td>
		<td>Updates account notification settings.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/accounts</td>
		<td>Get</td>
		<td>List accounts</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/accounts</td>
		<td>Post</td>
		<td>Create account</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/accounts/{id}</td>
		<td>Get</td>
		<td>Get account by ID</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/accounts/{id}</td>
		<td>Put</td>
		<td>Update account</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/accounts/{id}/enable</td>
		<td>Post</td>
		<td>Enable account</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/accounts/{id}/disable</td>
		<td>Post</td>
		<td>Disable account</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/accounts/{id}/activate</td>
		<td>Post</td>
		<td>Activate account</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/accounts/{id}/deactivate</td>
		<td>Post</td>
		<td>Deactivate account</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/accounts/{id}/validate</td>
		<td>Post</td>
		<td>Validate account</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/accounts/{id}/icon</td>
		<td>Get</td>
		<td>Get account icon</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/accounts/{accountId}/users</td>
		<td>Get</td>
		<td>List account users</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/accounts/{accountId}/users</td>
		<td>Post</td>
		<td>Create user (invite or add) inviting him into the account</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/accounts/{accountId}/users/{userId}</td>
		<td>Get</td>
		<td>Get account user by ID</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/accounts/{accountId}/users/{userId}</td>
		<td>Put</td>
		<td>Update user in account</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/accounts/{accountId}/users/{userId}</td>
		<td>Delete</td>
		<td>Delete user from account</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/accounts/{accountId}/users/{userId}/groups</td>
		<td>Post</td>
		<td>Add account user to group</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/accounts/{accountId}/users/{userId}/groups</td>
		<td>Put</td>
		<td>Change account user groups</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/accounts/{accountId}/users/{userId}/groups/{userGroupId}</td>
		<td>Delete</td>
		<td>Remove account user from group</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/accounts/{accountId}/users/{userId}/resend-invite</td>
		<td>Post</td>
		<td>Resend invite</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/accounts/{accountId}/users/{userId}/send-new-invite</td>
		<td>Post</td>
		<td>Send new invite</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/accounts/{accountId}/users/{userId}/accept-invite</td>
		<td>Post</td>
		<td>Accept invite</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>



### {accountid}

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
		<td>/public/v1/accounts/{accountId}/users</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/{accountId}/users</td>
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/{accountId}/users/{userId}</td>
		<td>Put</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/{accountId}/users/{userId}</td>
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/{accountId}/users/{userId}</td>
		<td>Delete</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/{accountId}/users/{userId}/accept-invite</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/{accountId}/users/{userId}/resend-invite</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/{accountId}/users/{userId}/send-new-invite</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/{accountId}/users/{userId}/groups</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/{accountId}/users/{userId}/groups</td>
		<td>Put</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/{accountId}/users/{userId}/groups/{userGroupId}</td>
		<td>Delete</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>



### AccountUsers

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
		<td>/public/v1/accounts/account-users</td>
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/account-users</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/account-users/{id}</td>
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/account-users/{id}</td>
		<td>Delete</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/account-users/{id}/groups</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/account-users/{id}/groups</td>
		<td>Put</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/account-users/{id}/groups/{userGroupId}</td>
		<td>Delete</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/account-users/{id}/accept-invite</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/account-users/{id}/resend-invite</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/account-users/{id}/send-new-invite</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>



### ApiTokens

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
		<td>/public/v1/accounts/api-tokens</td>
		<td>Get</td>
		<td>List API tokens</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/api-tokens</td>
		<td>Post</td>
		<td>Create API token</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/api-tokens/{id}</td>
		<td>Get</td>
		<td>Get API token by ID</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/api-tokens/{id}</td>
		<td>Put</td>
		<td>Update API token</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/api-tokens/{id}</td>
		<td>Delete</td>
		<td>Delete API token</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/api-tokens/{id}/enable</td>
		<td>Post</td>
		<td>Enable API token</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/api-tokens/{id}/disable</td>
		<td>Post</td>
		<td>Disable API token</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
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
		<td>/public/v1/accounts/buyers</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/buyers</td>
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/buyers/{id}/enable</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/buyers/{id}/disable</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/buyers/{id}/activate</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/buyers/{id}/deactivate</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/buyers/{id}</td>
		<td>Delete</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/buyers/{id}</td>
		<td>Put</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/buyers/{id}</td>
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/buyers/{id}/transfer</td>
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/buyers/{id}/transfer</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/buyers/{id}/validate</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/buyers/{id}/synchronize</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/buyers/{id}/icon</td>
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>



### CloudTenants

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
		<td>/public/v1/accounts/cloud-tenants</td>
		<td>Get</td>
		<td>List cloud tenants</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/cloud-tenants</td>
		<td>Post</td>
		<td>Create cloud tenant</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/cloud-tenants/{id}</td>
		<td>Get</td>
		<td>Get cloud tenant by ID</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/cloud-tenants/{id}</td>
		<td>Delete</td>
		<td>Delete cloud tenant</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/cloud-tenants/{id}</td>
		<td>Put</td>
		<td>Update cloud tenant</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>



### ErpLinks

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
		<td>/public/v1/accounts/erp-links</td>
		<td>Get</td>
		<td>List ERP links</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/erp-links/{id}</td>
		<td>Get</td>
		<td>Get ERP link by ID</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/erp-links/{id}</td>
		<td>Put</td>
		<td>Update ERP link</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/erp-links/{id}/block</td>
		<td>Post</td>
		<td>Block ERP link</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/erp-links/{id}/unblock</td>
		<td>Post</td>
		<td>Unblock ERP link</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
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
		<td>/public/v1/accounts/licensees</td>
		<td>Get</td>
		<td>List licensees</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/licensees</td>
		<td>Post</td>
		<td>Create licensee</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/licensees/{id}</td>
		<td>Get</td>
		<td>Get licensee by ID</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/licensees/{id}</td>
		<td>Put</td>
		<td>Update licensee</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/licensees/{id}</td>
		<td>Delete</td>
		<td>Delete licensee</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/licensees/{id}/enable</td>
		<td>Post</td>
		<td>Enable licensee</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/licensees/{id}/disable</td>
		<td>Post</td>
		<td>Disable licensee</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/licensees/{id}/icon</td>
		<td>Get</td>
		<td>Get licensee icon</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
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
		<td>/public/v1/accounts/modules</td>
		<td>Get</td>
		<td>List modules</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/modules/{id}</td>
		<td>Get</td>
		<td>Get module by ID</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
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
		<td>/public/v1/accounts/sellers</td>
		<td>Get</td>
		<td>List sellers</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/sellers</td>
		<td>Post</td>
		<td>Create seller</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/sellers/{id}</td>
		<td>Get</td>
		<td>Get seller by ID</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/sellers/{id}</td>
		<td>Put</td>
		<td>Update seller</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/sellers/{id}</td>
		<td>Delete</td>
		<td>Delete seller</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/sellers/{id}/activate</td>
		<td>Post</td>
		<td>Activate seller</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/sellers/{id}/deactivate</td>
		<td>Post</td>
		<td>Deactivate seller</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/sellers/{id}/disable</td>
		<td>Post</td>
		<td>Disable seller</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/sellers/{id}/icon</td>
		<td>Get</td>
		<td>Get seller icon</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
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
		<td>/public/v1/accounts/services</td>
		<td>Get</td>
		<td>List service identities</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/services/{id}</td>
		<td>Get</td>
		<td>Get service identity by ID</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>



### UserGroups

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
		<td>/public/v1/accounts/user-groups</td>
		<td>Get</td>
		<td>List user groups</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/user-groups</td>
		<td>Post</td>
		<td>Create user group</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/user-groups/{id}</td>
		<td>Get</td>
		<td>Get user group by ID</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/user-groups/{id}</td>
		<td>Put</td>
		<td>Update user group</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/user-groups/{id}</td>
		<td>Delete</td>
		<td>Delete user group</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
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
		<td>/public/v1/accounts/users</td>
		<td>Get</td>
		<td>List users</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/users/{uniqueFilter}</td>
		<td>Get</td>
		<td>Get user by ID or unique filter</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/users/{uniqueFilter}</td>
		<td>Put</td>
		<td>Update user (multipart form)</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/users/{uniqueFilter}</td>
		<td>Delete</td>
		<td>Delete user</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/users/{uniqueFilter}/set-password</td>
		<td>Post</td>
		<td>Set user password</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/users/{uniqueFilter}/unblock</td>
		<td>Post</td>
		<td>Unblock user</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/users/{uniqueFilter}/block</td>
		<td>Post</td>
		<td>Block user</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/users/{uniqueFilter}/sso-check</td>
		<td>Get</td>
		<td>Check whether SSO is enabled (deprecated)</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/users/{uniqueFilter}/sso</td>
		<td>Get</td>
		<td>Check SSO status</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/users/{uniqueFilter}/icon</td>
		<td>Get</td>
		<td>Get user icon</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/users/{uniqueFilter}/accounts</td>
		<td>Get</td>
		<td>List accounts associated with the user</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/accounts/users/{uniqueFilter}/accounts/{accountId}</td>
		<td>Put</td>
		<td>Update user's account settings</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>

