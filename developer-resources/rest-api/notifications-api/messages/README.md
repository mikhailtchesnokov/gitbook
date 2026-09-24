
## Message

Represents an individual notification message sent to a specific contact.

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>MessageAudit</td>
            <td>Represents audit information for a Mpt.Notifications.Models.Messages.Message</td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>account</code></td>
            <td>Account</td>
            <td>Gets or sets the account associated with this message, if applicable</td>
        </tr>
        <tr>
            <td><code>attachments</code></td>
            <td>array</td>
            <td>Gets or sets the list of file attachments included with this message</td>
        </tr>
        <tr>
            <td><code>batch</code></td>
            <td>BatchRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>body</code></td>
            <td>string</td>
            <td>Gets or sets the body content of the message</td>
        </tr>
        <tr>
            <td><code>category</code></td>
            <td>Category</td>
            <td>Gets or sets the category to which this message belongs</td>
        </tr>
        <tr>
            <td><code>contact</code></td>
            <td>Contact</td>
            <td>Gets or sets the recipient contact for this message</td>
        </tr>
        <tr>
            <td><code>discardReason</code></td>
            <td>string</td>
            <td>Gets or sets the reason the message was discarded, if applicable</td>
        </tr>
        <tr>
            <td><code>template</code></td>
            <td>NotificationTemplateRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
            <td>Gets or sets the current status of the message</td>
        </tr>
        <tr>
            <td><code>statusReason</code></td>
            <td>string</td>
            <td>Gets or sets the reason for the current status</td>
        </tr>
        <tr>
            <td><code>subject</code></td>
            <td>string</td>
            <td>Gets or sets the subject of the message</td>
        </tr></tbody>
</table>

## Account



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>PlatformObjectAudit</td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>AccountType</td>
            <td>Allowed values: Client,Vendor,Operations</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AccountStatus</td>
            <td>Allowed values: Active,Enabled,Disabled</td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>AccountExternalIds</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalName</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>address</code></td>
            <td>Address</td>
            <td></td>
        </tr>
        <tr>
            <td><code>technicalSupportEmail</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>website</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>groups</code></td>
            <td>array</td>
            <td></td>
        </tr>
        <tr>
            <td><code>eligibility</code></td>
            <td>Eligibility</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultLanguageCode</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>

## AccountExternalIds



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>pyraTenantId</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>

## AccountRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>AccountType</td>
            <td>Allowed values: Client,Vendor,Operations</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AccountStatus</td>
            <td>Allowed values: Active,Enabled,Disabled</td>
        </tr>
    </tbody>
</table>

## Address



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>addressLine1</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>addressLine2</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>postCode</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>city</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>state</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>country</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>

## Attachment

Represents a file attachment associated with a notification message or batch.

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td>Gets or sets the unique identifier for the attachment</td>
        </tr>
        <tr>
            <td><code>href</code></td>
            <td>string</td>
            <td>Gets the URL to download the attachment</td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td>Gets or sets the display name for the attachment</td>
        </tr>
        <tr>
            <td><code>fileName</code></td>
            <td>string</td>
            <td>Gets or sets the file name of the attachment</td>
        </tr>
        <tr>
            <td><code>fileSize</code></td>
            <td>integer</td>
            <td>Gets or sets the size of the attachment in bytes</td>
        </tr>
        <tr>
            <td><code>contentType</code></td>
            <td>string</td>
            <td>Gets or sets the content type of the attachment</td>
        </tr>
    </tbody>
</table>

## BatchRef

Represents a batch of notification messages that share common properties.

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>account</code></td>
            <td>Account</td>
            <td>Gets or sets the account associated with this batch, if applicable</td>
        </tr>
        <tr>
            <td><code>category</code></td>
            <td>Category</td>
            <td>Gets or sets the category to which this batch belongs</td>
        </tr>
        <tr>
            <td><code>template</code></td>
            <td>NotificationTemplate</td>
            <td>Gets or sets the template used to create this batch, if applicable</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
            <td>Gets or sets the current status of the batch</td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>string</td>
            <td>Gets or sets the type of batch</td>
        </tr>
    </tbody>
</table>

## Category

Represents a notification category that can be used to organize and filter notifications.

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>NotificationCategoryAudit</td>
            <td>Represents audit information for a Mpt.Notifications.Models.Categories.Category</td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
            <td>Gets or sets the description of the category</td>
        </tr>
        <tr>
            <td><code>optOutAllowed</code></td>
            <td>boolean</td>
            <td>Gets or sets a value indicating whether recipients can opt out of notifications in this category</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
            <td>Gets or sets the current status of the category</td>
        </tr>
        <tr>
            <td><code>note</code></td>
            <td>string</td>
            <td>Gets or sets an optional note about the category</td>
        </tr>
        <tr>
            <td><code>deleteAllowed</code></td>
            <td>boolean</td>
            <td>Gets or sets a value indicating whether this category can be deleted</td>
        </tr>
        <tr>
            <td><code>statistics</code></td>
            <td>MessageStatistics</td>
            <td>Gets or sets the message statistics for this category</td>
        </tr>
        <tr>
            <td><code>lastUsed</code></td>
            <td>string</td>
            <td>Gets or sets the timestamp of when this category was last used to send a notification</td>
        </tr>
        <tr>
            <td><code>enabledByDefault</code></td>
            <td>boolean</td>
            <td>Gets or sets a value indicating whether this category is enabled by default for new recipients</td>
        </tr>
    </tbody>
</table>

## CategoryRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>

## Contact

Represents a notification contact who can receive email notifications.

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>ContactAudit</td>
            <td>Represents audit information for a Mpt.Notifications.Models.Contacts.Contact</td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>blockedReason</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>email</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>identity</code></td>
            <td>PlatformIdentity</td>
            <td></td>
        </tr>
        <tr>
            <td><code>directories</code></td>
            <td>array</td>
            <td></td>
        </tr>
        <tr>
            <td><code>chat</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>optOuts</code></td>
            <td>array</td>
            <td>Gets or sets the list of categories for which this contact has opted out of receiving notifications</td>
        </tr>
        <tr>
            <td><code>user</code></td>
            <td>User</td>
            <td>Gets or sets the associated user information, if this contact is linked to a platform user</td>
        </tr>
    </tbody>
</table>

## ContactAudit

Represents audit information for a Mpt.Notifications.Models.Contacts.Contact.

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>created</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>activated</code></td>
            <td>PlatformObjectEvent</td>
            <td>Gets or sets the event information for when the contact was activated</td>
        </tr>
        <tr>
            <td><code>blocked</code></td>
            <td>PlatformObjectEvent</td>
            <td>Gets or sets the event information for when the contact was blocked</td>
        </tr>
        <tr>
            <td><code>deleted</code></td>
            <td>PlatformObjectEvent</td>
            <td>Gets or sets the event information for when the contact was deleted</td>
        </tr>
    </tbody>
</table>

## DirectoryRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
    </tbody>
</table>

## Eligibility



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>client</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>partner</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
    </tbody>
</table>

## MessageAudit

Represents audit information for a Mpt.Notifications.Models.Messages.Message.

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>created</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>queued</code></td>
            <td>PlatformObjectEvent</td>
            <td>Gets or sets the event information for when the message was queued for sending</td>
        </tr>
        <tr>
            <td><code>discarded</code></td>
            <td>PlatformObjectEvent</td>
            <td>Gets or sets the event information for when the message was discarded</td>
        </tr>
        <tr>
            <td><code>sent</code></td>
            <td>PlatformObjectEvent</td>
            <td>Gets or sets the event information for when the message was successfully sent</td>
        </tr>
        <tr>
            <td><code>bounced</code></td>
            <td>PlatformObjectEvent</td>
            <td>Gets or sets the event information for when the message bounced</td>
        </tr>
        <tr>
            <td><code>complained</code></td>
            <td>PlatformObjectEvent</td>
            <td>Gets or sets the event information for when a complaint was received about the message</td>
        </tr>
        <tr>
            <td><code>failed</code></td>
            <td>PlatformObjectEvent</td>
            <td>Gets or sets the event information for when the message failed to send</td>
        </tr>
    </tbody>
</table>

## MessageStatistics

Represents message statistics aggregated over different time periods.

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>month</code></td>
            <td>integer</td>
            <td>Gets or sets the number of messages sent in the current month</td>
        </tr>
        <tr>
            <td><code>today</code></td>
            <td>integer</td>
            <td>Gets or sets the number of messages sent today</td>
        </tr>
        <tr>
            <td><code>week</code></td>
            <td>integer</td>
            <td>Gets or sets the number of messages sent in the current week</td>
        </tr>
    </tbody>
</table>

## NotificationCategoryAudit

Represents audit information for a Mpt.Notifications.Models.Categories.Category.

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>created</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>published</code></td>
            <td>PlatformObjectEvent</td>
            <td>Gets or sets the event information for when the category was published</td>
        </tr>
        <tr>
            <td><code>unpublished</code></td>
            <td>PlatformObjectEvent</td>
            <td>Gets or sets the event information for when the category was unpublished</td>
        </tr>
        <tr>
            <td><code>deleted</code></td>
            <td>PlatformObjectEvent</td>
            <td>Gets or sets the event information for when the category was deleted</td>
        </tr>
    </tbody>
</table>

## NotificationTemplate

Represents a reusable template that can be used to generate messages.

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>NotificationTemplateAudit</td>
            <td>Represents audit information for a Mpt.Notifications.Models.NotificationTemplates.NotificationTemplate</td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>category</code></td>
            <td>CategoryRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>criteria</code></td>
            <td>NotificationTemplateCriteria</td>
            <td>Gets or sets the criteria for automatic triggering of this template based on events</td>
        </tr>
        <tr>
            <td><code>defaultVariant</code></td>
            <td>TemplateVariantRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
            <td>Gets or sets the description of this template</td>
        </tr>
        <tr>
            <td><code>lastUsed</code></td>
            <td>string</td>
            <td>Gets or sets the timestamp of when this template was last used to send a notification</td>
        </tr>
        <tr>
            <td><code>owner</code></td>
            <td>AccountRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>statistics</code></td>
            <td>MessageStatistics</td>
            <td>Gets or sets the usage statistics for this template</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
            <td>Gets or sets the current status of the template</td>
        </tr>
        <tr>
            <td><code>variants</code></td>
            <td>array</td>
            <td>Gets or sets the list of language-specific variants for this template</td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
            <td>Gets or sets an external identifier for integration with external systems</td>
        </tr>
    </tbody>
</table>

## NotificationTemplateAudit

Represents audit information for a Mpt.Notifications.Models.NotificationTemplates.NotificationTemplate.

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>created</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>activated</code></td>
            <td>PlatformObjectEvent</td>
            <td>Gets or sets the event information for when the template was activated</td>
        </tr>
        <tr>
            <td><code>deleted</code></td>
            <td>PlatformObjectEvent</td>
            <td>Gets or sets the event information for when the template was deleted</td>
        </tr>
        <tr>
            <td><code>disabled</code></td>
            <td>PlatformObjectEvent</td>
            <td>Gets or sets the event information for when the template was disabled</td>
        </tr>
    </tbody>
</table>

## NotificationTemplateCriteria

Represents the criteria for automatically triggering a template based on platform events.

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>accountTypes</code></td>
            <td>array</td>
            <td>Gets or sets the list of account types for which this template should trigger</td>
        </tr>
        <tr>
            <td><code>filterCondition</code></td>
            <td>string</td>
            <td>Gets or sets the RQL filter condition that must be satisfied for the template to trigger</td>
        </tr>
        <tr>
            <td><code>objectType</code></td>
            <td>string</td>
            <td>Gets or sets the platform object type this template monitors</td>
        </tr>
        <tr>
            <td><code>recipients</code></td>
            <td>NotificationTemplateCriteriaRecipients</td>
            <td>Gets or sets the custom Recipients condition. If specified, this RQL condition determines the recipients of the notification</td>
        </tr>
    </tbody>
</table>

## NotificationTemplateCriteriaRecipients

Represents the recipients criteria for automatically triggering a template based on platform events.

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>selector</code></td>
            <td>string</td>
            <td>Gets or sets the RQL filter condition that must be satisfied for the template to trigger</td>
        </tr>
    </tbody>
</table>

## NotificationTemplateRef

Represents a reusable template that can be used to generate messages.

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>lastUsed</code></td>
            <td>string</td>
            <td>Gets or sets the timestamp of when this template was last used to send a notification</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
            <td>Gets or sets the current status of the template</td>
        </tr>
    </tbody>
</table>

## NumberFormat



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>decimalSeparator</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>groupSeparator</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>

## PhoneNumber



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>prefix</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>number</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>

## PlatformIdentity



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>PlatformObjectAudit</td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
    </tbody>
</table>

## PlatformIdentityRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
    </tbody>
</table>

## PlatformMetadata



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>omitted</code></td>
            <td>array</td>
            <td></td>
        </tr>
    </tbody>
</table>

## PlatformObjectAudit



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>created</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
    </tbody>
</table>

## PlatformObjectEvent



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>at</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>by</code></td>
            <td>PlatformIdentityRef</td>
            <td></td>
        </tr>
    </tbody>
</table>

## TemplateVariantRef

Represents a language-specific variant of a template.

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>default</code></td>
            <td>boolean</td>
            <td>Gets or sets a value indicating whether this is the default variant for the parent template</td>
        </tr>
        <tr>
            <td><code>languageCode</code></td>
            <td>string</td>
            <td>Gets or sets the language code for this variant</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
            <td>Gets or sets the current status of the variant</td>
        </tr>
    </tbody>
</table>

## User



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>UserAudit</td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>email</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>phone</code></td>
            <td>PhoneNumber</td>
            <td></td>
        </tr>
        <tr>
            <td><code>firstName</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>lastName</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>lastLoginAt</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>settings</code></td>
            <td>UserSettings</td>
            <td></td>
        </tr>
        <tr>
            <td><code>accounts</code></td>
            <td>array</td>
            <td></td>
        </tr>
        <tr>
            <td><code>currentAccount</code></td>
            <td>AccountRef</td>
            <td></td>
        </tr>
    </tbody>
</table>

## UserAudit



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>created</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>invitationAcceptedAt</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>

## UserGroupRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>logo</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>isDefault</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
    </tbody>
</table>

## UserSettings



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>cultureCode</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>dateFormat</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>languageCode</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>numberFormat</code></td>
            <td>NumberFormat</td>
            <td></td>
        </tr>
        <tr>
            <td><code>timeFormat</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>timeZone</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>optOuts</code></td>
            <td>UserSettingsOptOuts</td>
            <td></td>
        </tr>
    </tbody>
</table>

## UserSettingsOptOuts



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>objectTypes</code></td>
            <td>array</td>
            <td></td>
        </tr>
    </tbody>
</table>
