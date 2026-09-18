# Notifications API

You can also perform additional operations, including:

*  Creates a new message batch with attachments.

*  Gets a list of resources.

*  Gets a batch attachment.

*  Gets a resource by ID.

*  Creates a new category.

*  Updates a category.

*  Deletes a category.

*  Unpublishes a category.

*  Publishes a category.

*  Blocks a contact.

*  Creates a new contact.

*  Gets a list of resources.

*  Unblocks a contact.

*  Updates an existing contact.

*  Deletes a contact.

*  Gets a resource by ID.

*  Gets contacts for a category and account.

*  Gets a list of resources.

*  Gets a resource by ID.

*  Creates a new footer.

*  Gets a list of resources.

*  Updates a footer.

*  Deletes a footer.

*  Gets a resource by ID.

*  Gets a list of resources.

*  Gets a resource by ID.

*  Activates a notification template.

*  Creates a notification template.

*  Deletes a notification template.

*  Updates a notification template.

*  Disables a notification template.

*  Updates subscriber recipients.

*  Gets a resource by ID.

*  Enables a subscriber.

*  Disables a subscriber.

*  Gets a list of resources.

*  Activates a template variant.

*  Creates a template variant.

*  Deletes a template variant.

*  Updates a template variant.

*  Disables a template variant.

*  Upsert webhooks

*  Updates webhook.

*  Deletes webhook.

*  Enables webhook.

*  Disables webhook.


## Before you start

Review the shared API docs before you work with currency resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)


## Core concepts

The Notifications API is built around the following core resources:

*  **Batch**  - Represents a batch of notification messages that share common properties.

*  **Category**  - Represents a notification category that can be used to organize and filter notifications.

*  **Contact**  - Represents a notification contact who can receive email notifications.

*  **Directory**  - 

*  **Footer**  - Represents a localized footer template that can be appended to notification messages.

*  **Message**  - Represents an individual notification message sent to a specific contact.

*  **NotificationTemplate**  - Represents a reusable template that can be used to generate messages.

*  **Subscriber**  - Represents a subscription that defines which users or user groups should automatically receive notifications for a specific category.

*  **TemplateVariant**  - Represents a language-specific variant of a template.

*  **Webhook**  - 


## Browse collections

The API is organized into collections, each containing a set of operations. Access to these operations varies by role, depending on whether you are a `client`, `vendor`, or `operations` user.&#x20;

See the following sections to determine which roles are authorized to perform specific operations within each collection:

### Batch

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
		<td>/public/v1/notifications/batches</td>
		<td>Get</td>
		<td>Gets a list of resources.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/batches/{id}</td>
		<td>Get</td>
		<td>Gets a resource by ID.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/batches</td>
		<td>Post</td>
		<td>Creates a new message batch with attachments.</td>
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



### Category

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
		<td>/public/v1/notifications/categories</td>
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
		<td>/public/v1/notifications/categories/{id}</td>
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
		<td>/public/v1/notifications/categories</td>
		<td>Post</td>
		<td>Creates a new category.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/categories/{id}/unpublish</td>
		<td>Post</td>
		<td>Unpublishes a category.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/categories/{id}/publish</td>
		<td>Post</td>
		<td>Publishes a category.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/categories/{id}</td>
		<td>Put</td>
		<td>Updates a category.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/categories/{id}</td>
		<td>Delete</td>
		<td>Deletes a category.</td>
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



### Contact

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
		<td>/public/v1/notifications/contacts</td>
		<td>Get</td>
		<td>Gets a list of resources.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/contacts/{id}</td>
		<td>Get</td>
		<td>Gets a resource by ID.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/contacts/{id}/block</td>
		<td>Post</td>
		<td>Blocks a contact.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/contacts</td>
		<td>Post</td>
		<td>Creates a new contact.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/contacts/{id}/unblock</td>
		<td>Post</td>
		<td>Unblocks a contact.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/contacts/{id}</td>
		<td>Put</td>
		<td>Updates an existing contact.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/contacts/{id}</td>
		<td>Delete</td>
		<td>Deletes a contact.</td>
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



### Directory

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
		<td>/public/v1/notifications/directories/{id}</td>
		<td>Get</td>
		<td>Gets a resource by ID.</td>
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



### Footer

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
		<td>/public/v1/notifications/footers</td>
		<td>Get</td>
		<td>Gets a list of resources.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/footers/{id}</td>
		<td>Get</td>
		<td>Gets a resource by ID.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/footers</td>
		<td>Post</td>
		<td>Creates a new footer.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/footers/{id}</td>
		<td>Put</td>
		<td>Updates a footer.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/footers/{id}</td>
		<td>Delete</td>
		<td>Deletes a footer.</td>
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



### Message

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
		<td>/public/v1/notifications/messages/{id}</td>
		<td>Get</td>
		<td>Gets a resource by ID.</td>
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



### Notificationtemplate

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
		<td>/public/v1/notifications/templates</td>
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
		<td>/public/v1/notifications/templates/{id}</td>
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
		<td>/public/v1/notifications/templates/{id}/activate</td>
		<td>Post</td>
		<td>Activates a notification template.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/templates</td>
		<td>Post</td>
		<td>Creates a notification template.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/templates/{id}/disable</td>
		<td>Post</td>
		<td>Disables a notification template.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/templates/{id}</td>
		<td>Put</td>
		<td>Updates a notification template.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/templates/{id}</td>
		<td>Delete</td>
		<td>Deletes a notification template.</td>
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



### Subscriber

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
		<td>/public/v1/notifications/subscribers/{id}</td>
		<td>Get</td>
		<td>Gets a resource by ID.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/subscribers/{id}/enable</td>
		<td>Post</td>
		<td>Enables a subscriber.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/subscribers/{id}/disable</td>
		<td>Post</td>
		<td>Disables a subscriber.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/subscribers/{id}</td>
		<td>Put</td>
		<td>Updates subscriber recipients.</td>
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



### Templatevariant

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
		<td>/public/v1/notifications/templates/{templateId}/variants</td>
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
		<td>/public/v1/notifications/templates/{templateId}/variants/{id}</td>
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
		<td>/public/v1/notifications/templates/{templateId}/variants/{id}/activate</td>
		<td>Post</td>
		<td>Activates a template variant.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/templates/{templateId}/variants</td>
		<td>Post</td>
		<td>Creates a template variant.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/templates/{templateId}/variants/{id}/disable</td>
		<td>Post</td>
		<td>Disables a template variant.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/templates/{templateId}/variants/{id}</td>
		<td>Put</td>
		<td>Updates a template variant.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/templates/{templateId}/variants/{id}</td>
		<td>Delete</td>
		<td>Deletes a template variant.</td>
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



### Webhook

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
		<td>/public/v1/notifications/webhooks/{id}</td>
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
		<td>/public/v1/notifications/webhooks/{id}</td>
		<td>Put</td>
		<td>Updates webhook.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/notifications/webhooks/{id}</td>
		<td>Delete</td>
		<td>Deletes webhook.</td>
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

