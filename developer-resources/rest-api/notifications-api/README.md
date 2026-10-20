# Notifications API

The **Notifications API** provides **REST** endpoints for managing resources within the **notifications** business domain of the SoftwareOne Marketplace. 

The API supports the following business objects:

*  **Attachment**  - represents a file attachment associated with a notification message or batch

*  **Batch**  - represents a batch of notification messages that share common properties

*  **Category**  - represents a notification category that can be used to organize and filter notifications

*  **Contact**  - represents a notification contact who can receive email notifications

*  **Directory**  - 

*  **Footer**  - represents a localized footer template that can be appended to notification messages

*  **Message**  - represents an individual notification message sent to a specific contact

*  **NotificationTemplate**  - represents a reusable template that can be used to generate messages

*  **Subscriber**  - represents a subscription that defines which users or user groups should automatically receive notifications for a specific category

*  **TemplateVariant**  - represents a language-specific variant of a template

*  **Webhook**  - 

Use the API to retrieve and manage these resources. Depending on the resource, available operations include creating, updating, and deleting records.
The full list of available operations is provided below.


## Before you start

Review the shared API docs before you work with **notifications** resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)

## Browse collections

The API is organized into collections, each containing a set of operations. Access to these operations varies by role, depending on whether you are a `client`, `vendor`, or `operations` user.&#x20;

See the following sections to determine which roles are authorized to perform specific operations within each collection:

### Attachment

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
		<td><a href="attachment/get-notifications-batches-183.md">/public/v1/notifications/batches/{batchId}/attachments/{attachmentId}</a></td>
		<td>GET</td>
		<td>Gets a batch attachment</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



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
		<td><a href="batch/get-notifications-batches-181.md">/public/v1/notifications/batches</a></td>
		<td>GET</td>
		<td>Gets a list of resources</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="batch/get-notifications-batches-182.md">/public/v1/notifications/batches/{id}</a></td>
		<td>GET</td>
		<td>Gets a resource by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="batch/post-notifications-batches-181.md">/public/v1/notifications/batches</a></td>
		<td>POST</td>
		<td>Creates a new message batch with attachments</td>
		<td>ops,client,vendor</td>
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
		<td><a href="category/get-notifications-categories-184.md">/public/v1/notifications/categories</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="category/get-notifications-categories-185.md">/public/v1/notifications/categories/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="category/post-notifications-categories-184.md">/public/v1/notifications/categories</a></td>
		<td>POST</td>
		<td>Creates a new category</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="category/post-notifications-categories-186.md">/public/v1/notifications/categories/{id}/unpublish</a></td>
		<td>POST</td>
		<td>Unpublishes a category</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="category/post-notifications-categories-187.md">/public/v1/notifications/categories/{id}/publish</a></td>
		<td>POST</td>
		<td>Publishes a category</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="category/put-notifications-categories-185.md">/public/v1/notifications/categories/{id}</a></td>
		<td>PUT</td>
		<td>Updates a category</td>
		<td>ops,client,vendor</td>
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
		<td><a href="contact/get-notifications-contacts-189.md">/public/v1/notifications/contacts</a></td>
		<td>GET</td>
		<td>Gets a list of resources</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="contact/get-notifications-contacts-191.md">/public/v1/notifications/contacts/{id}</a></td>
		<td>GET</td>
		<td>Gets a resource by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="contact/get-notifications-contacts-192.md">/public/v1/notifications/accounts/{accountId}/categories/{categoryId}/contacts</a></td>
		<td>GET</td>
		<td>Gets contacts for a category and account</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="contact/post-notifications-contacts-188.md">/public/v1/notifications/contacts/{id}/block</a></td>
		<td>POST</td>
		<td>Blocks a contact</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="contact/post-notifications-contacts-189.md">/public/v1/notifications/contacts</a></td>
		<td>POST</td>
		<td>Creates a new contact</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="contact/post-notifications-contacts-190.md">/public/v1/notifications/contacts/{id}/unblock</a></td>
		<td>POST</td>
		<td>Unblocks a contact</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="contact/put-notifications-contacts-191.md">/public/v1/notifications/contacts/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing contact</td>
		<td>ops,client,vendor</td>
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
		<td><a href="directory/get-notifications-directories-193.md">/public/v1/notifications/directories</a></td>
		<td>GET</td>
		<td>Gets a list of resources</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="directory/get-notifications-directories-194.md">/public/v1/notifications/directories/{id}</a></td>
		<td>GET</td>
		<td>Gets a resource by ID</td>
		<td>ops,client,vendor</td>
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
		<td><a href="footer/get-notifications-footers-195.md">/public/v1/notifications/footers</a></td>
		<td>GET</td>
		<td>Gets a list of resources</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="footer/get-notifications-footers-196.md">/public/v1/notifications/footers/{id}</a></td>
		<td>GET</td>
		<td>Gets a resource by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="footer/post-notifications-footers-195.md">/public/v1/notifications/footers</a></td>
		<td>POST</td>
		<td>Creates a new footer</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="footer/put-notifications-footers-196.md">/public/v1/notifications/footers/{id}</a></td>
		<td>PUT</td>
		<td>Updates a footer</td>
		<td>ops,client,vendor</td>
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
		<td><a href="message/get-notifications-messages-197.md">/public/v1/notifications/messages</a></td>
		<td>GET</td>
		<td>Gets a list of resources</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="message/get-notifications-messages-198.md">/public/v1/notifications/messages/{id}</a></td>
		<td>GET</td>
		<td>Gets a resource by ID</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### NotificationTemplate

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
		<td><a href="notificationtemplate/get-notifications-notificationtemplates-200.md">/public/v1/notifications/templates</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="notificationtemplate/get-notifications-notificationtemplates-201.md">/public/v1/notifications/templates/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="notificationtemplate/post-notifications-notificationtemplates-199.md">/public/v1/notifications/templates/{id}/activate</a></td>
		<td>POST</td>
		<td>Activates a notification template</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="notificationtemplate/post-notifications-notificationtemplates-200.md">/public/v1/notifications/templates</a></td>
		<td>POST</td>
		<td>Creates a notification template</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="notificationtemplate/post-notifications-notificationtemplates-202.md">/public/v1/notifications/templates/{id}/disable</a></td>
		<td>POST</td>
		<td>Disables a notification template</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="notificationtemplate/put-notifications-notificationtemplates-201.md">/public/v1/notifications/templates/{id}</a></td>
		<td>PUT</td>
		<td>Updates a notification template</td>
		<td>ops,client,vendor</td>
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
		<td><a href="subscriber/get-notifications-subscribers-203.md">/public/v1/notifications/subscribers/{id}</a></td>
		<td>GET</td>
		<td>Gets a resource by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="subscriber/get-notifications-subscribers-206.md">/public/v1/notifications/subscribers</a></td>
		<td>GET</td>
		<td>Gets a list of resources</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="subscriber/post-notifications-subscribers-204.md">/public/v1/notifications/subscribers/{id}/enable</a></td>
		<td>POST</td>
		<td>Enables a subscriber</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="subscriber/post-notifications-subscribers-205.md">/public/v1/notifications/subscribers/{id}/disable</a></td>
		<td>POST</td>
		<td>Disables a subscriber</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="subscriber/put-notifications-subscribers-203.md">/public/v1/notifications/subscribers/{id}</a></td>
		<td>PUT</td>
		<td>Updates subscriber recipients</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### TemplateVariant

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
		<td><a href="templatevariant/get-notifications-templatevariants-208.md">/public/v1/notifications/templates/{templateId}/variants</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="templatevariant/get-notifications-templatevariants-209.md">/public/v1/notifications/templates/{templateId}/variants/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="templatevariant/post-notifications-templatevariants-207.md">/public/v1/notifications/templates/{templateId}/variants/{id}/activate</a></td>
		<td>POST</td>
		<td>Activates a template variant</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="templatevariant/post-notifications-templatevariants-208.md">/public/v1/notifications/templates/{templateId}/variants</a></td>
		<td>POST</td>
		<td>Creates a template variant</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="templatevariant/post-notifications-templatevariants-210.md">/public/v1/notifications/templates/{templateId}/variants/{id}/disable</a></td>
		<td>POST</td>
		<td>Disables a template variant</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="templatevariant/put-notifications-templatevariants-209.md">/public/v1/notifications/templates/{templateId}/variants/{id}</a></td>
		<td>PUT</td>
		<td>Updates a template variant</td>
		<td>ops,client,vendor</td>
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
		<td><a href="webhook/get-notifications-webhooks-211.md">/public/v1/notifications/webhooks</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="webhook/get-notifications-webhooks-212.md">/public/v1/notifications/webhooks/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="webhook/put-notifications-webhooks-212.md">/public/v1/notifications/webhooks/{id}</a></td>
		<td>PUT</td>
		<td>Updates webhook</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>

