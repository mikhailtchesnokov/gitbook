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

### Batches

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
		<td><a href="batches/get-notifications-batches-190.md">/public/v1/notifications/batches</a></td>
		<td>GET</td>
		<td>Gets a list of resources</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="batches/get-notifications-batches-191.md">/public/v1/notifications/batches/{batchId}/attachments/{attachmentId}</a></td>
		<td>GET</td>
		<td>Gets a batch attachment</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="batches/get-notifications-batches-192.md">/public/v1/notifications/batches/{id}</a></td>
		<td>GET</td>
		<td>Gets a resource by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="batches/post-notifications-batches-190.md">/public/v1/notifications/batches</a></td>
		<td>POST</td>
		<td>Creates a new message batch with attachments</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Categories

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
		<td><a href="categories/get-notifications-categories-193.md">/public/v1/notifications/categories</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="categories/get-notifications-categories-194.md">/public/v1/notifications/categories/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="categories/post-notifications-categories-193.md">/public/v1/notifications/categories</a></td>
		<td>POST</td>
		<td>Creates a new category</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="categories/post-notifications-categories-195.md">/public/v1/notifications/categories/{id}/unpublish</a></td>
		<td>POST</td>
		<td>Unpublishes a category</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="categories/post-notifications-categories-196.md">/public/v1/notifications/categories/{id}/publish</a></td>
		<td>POST</td>
		<td>Publishes a category</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="categories/put-notifications-categories-194.md">/public/v1/notifications/categories/{id}</a></td>
		<td>PUT</td>
		<td>Updates a category</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="categories/delete-notifications-categories-194.md">/public/v1/notifications/categories/{id}</a></td>
		<td>DELETE</td>
		<td>Deletes a category</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Contacts

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
		<td><a href="contacts/get-notifications-contacts-198.md">/public/v1/notifications/contacts</a></td>
		<td>GET</td>
		<td>Gets a list of resources</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="contacts/get-notifications-contacts-200.md">/public/v1/notifications/contacts/{id}</a></td>
		<td>GET</td>
		<td>Gets a resource by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="contacts/get-notifications-contacts-201.md">/public/v1/notifications/accounts/{accountId}/categories/{categoryId}/contacts</a></td>
		<td>GET</td>
		<td>Gets contacts for a category and account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="contacts/post-notifications-contacts-197.md">/public/v1/notifications/contacts/{id}/block</a></td>
		<td>POST</td>
		<td>Blocks a contact</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="contacts/post-notifications-contacts-198.md">/public/v1/notifications/contacts</a></td>
		<td>POST</td>
		<td>Creates a new contact</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="contacts/post-notifications-contacts-199.md">/public/v1/notifications/contacts/{id}/unblock</a></td>
		<td>POST</td>
		<td>Unblocks a contact</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="contacts/put-notifications-contacts-200.md">/public/v1/notifications/contacts/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing contact</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="contacts/delete-notifications-contacts-200.md">/public/v1/notifications/contacts/{id}</a></td>
		<td>DELETE</td>
		<td>Deletes a contact</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Directories

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
		<td><a href="directories/get-notifications-directories-202.md">/public/v1/notifications/directories</a></td>
		<td>GET</td>
		<td>Gets a list of resources</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="directories/get-notifications-directories-203.md">/public/v1/notifications/directories/{id}</a></td>
		<td>GET</td>
		<td>Gets a resource by ID</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Footers

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
		<td><a href="footers/get-notifications-footers-204.md">/public/v1/notifications/footers</a></td>
		<td>GET</td>
		<td>Gets a list of resources</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="footers/get-notifications-footers-205.md">/public/v1/notifications/footers/{id}</a></td>
		<td>GET</td>
		<td>Gets a resource by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="footers/post-notifications-footers-204.md">/public/v1/notifications/footers</a></td>
		<td>POST</td>
		<td>Creates a new footer</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="footers/put-notifications-footers-205.md">/public/v1/notifications/footers/{id}</a></td>
		<td>PUT</td>
		<td>Updates a footer</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="footers/delete-notifications-footers-205.md">/public/v1/notifications/footers/{id}</a></td>
		<td>DELETE</td>
		<td>Deletes a footer</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Messages

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
		<td><a href="messages/get-notifications-messages-206.md">/public/v1/notifications/messages</a></td>
		<td>GET</td>
		<td>Gets a list of resources</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="messages/get-notifications-messages-207.md">/public/v1/notifications/messages/{id}</a></td>
		<td>GET</td>
		<td>Gets a resource by ID</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Notificationtemplates

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
		<td><a href="notificationtemplates/get-notifications-notificationtemplates-209.md">/public/v1/notifications/templates</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="notificationtemplates/get-notifications-notificationtemplates-210.md">/public/v1/notifications/templates/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="notificationtemplates/post-notifications-notificationtemplates-208.md">/public/v1/notifications/templates/{id}/activate</a></td>
		<td>POST</td>
		<td>Activates a notification template</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="notificationtemplates/post-notifications-notificationtemplates-209.md">/public/v1/notifications/templates</a></td>
		<td>POST</td>
		<td>Creates a notification template</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="notificationtemplates/post-notifications-notificationtemplates-211.md">/public/v1/notifications/templates/{id}/disable</a></td>
		<td>POST</td>
		<td>Disables a notification template</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="notificationtemplates/put-notifications-notificationtemplates-210.md">/public/v1/notifications/templates/{id}</a></td>
		<td>PUT</td>
		<td>Updates a notification template</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="notificationtemplates/delete-notifications-notificationtemplates-210.md">/public/v1/notifications/templates/{id}</a></td>
		<td>DELETE</td>
		<td>Deletes a notification template</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Subscribers

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
		<td><a href="subscribers/get-notifications-subscribers-212.md">/public/v1/notifications/subscribers/{id}</a></td>
		<td>GET</td>
		<td>Gets a resource by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="subscribers/get-notifications-subscribers-215.md">/public/v1/notifications/subscribers</a></td>
		<td>GET</td>
		<td>Gets a list of resources</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="subscribers/post-notifications-subscribers-213.md">/public/v1/notifications/subscribers/{id}/enable</a></td>
		<td>POST</td>
		<td>Enables a subscriber</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="subscribers/post-notifications-subscribers-214.md">/public/v1/notifications/subscribers/{id}/disable</a></td>
		<td>POST</td>
		<td>Disables a subscriber</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="subscribers/put-notifications-subscribers-212.md">/public/v1/notifications/subscribers/{id}</a></td>
		<td>PUT</td>
		<td>Updates subscriber recipients</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Templatevariants

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
		<td><a href="templatevariants/get-notifications-templatevariants-217.md">/public/v1/notifications/templates/{templateId}/variants</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="templatevariants/get-notifications-templatevariants-218.md">/public/v1/notifications/templates/{templateId}/variants/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="templatevariants/post-notifications-templatevariants-216.md">/public/v1/notifications/templates/{templateId}/variants/{id}/activate</a></td>
		<td>POST</td>
		<td>Activates a template variant</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="templatevariants/post-notifications-templatevariants-217.md">/public/v1/notifications/templates/{templateId}/variants</a></td>
		<td>POST</td>
		<td>Creates a template variant</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="templatevariants/post-notifications-templatevariants-219.md">/public/v1/notifications/templates/{templateId}/variants/{id}/disable</a></td>
		<td>POST</td>
		<td>Disables a template variant</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="templatevariants/put-notifications-templatevariants-218.md">/public/v1/notifications/templates/{templateId}/variants/{id}</a></td>
		<td>PUT</td>
		<td>Updates a template variant</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="templatevariants/delete-notifications-templatevariants-218.md">/public/v1/notifications/templates/{templateId}/variants/{id}</a></td>
		<td>DELETE</td>
		<td>Deletes a template variant</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Webhooks

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
		<td><a href="webhooks/get-notifications-webhooks-220.md">/public/v1/notifications/webhooks</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="webhooks/get-notifications-webhooks-221.md">/public/v1/notifications/webhooks/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="webhooks/post-notifications-webhooks-220.md">/public/v1/notifications/webhooks</a></td>
		<td>POST</td>
		<td>Upsert webhooks</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="webhooks/post-notifications-webhooks-222.md">/public/v1/notifications/webhooks/{id}/enable</a></td>
		<td>POST</td>
		<td>Enables webhook</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="webhooks/post-notifications-webhooks-223.md">/public/v1/notifications/webhooks/{id}/disable</a></td>
		<td>POST</td>
		<td>Disables webhook</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="webhooks/put-notifications-webhooks-221.md">/public/v1/notifications/webhooks/{id}</a></td>
		<td>PUT</td>
		<td>Updates webhook</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="webhooks/delete-notifications-webhooks-221.md">/public/v1/notifications/webhooks/{id}</a></td>
		<td>DELETE</td>
		<td>Deletes webhook</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>

