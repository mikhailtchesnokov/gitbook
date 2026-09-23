
# Batch

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
            <td><code>audit</code></td>
            <td>BatchAudit</td>
            <td>Represents audit information for a Mpt.Notifications.Models.Messages.Batch.</td>
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
            <td>Gets or sets the account associated with this batch, if applicable.</td>
        </tr>
        <tr>
            <td><code>attachments</code></td>
            <td>array</td>
            <td>Gets or sets the list of file attachments included with messages in this batch.</td>
        </tr>
        <tr>
            <td><code>body</code></td>
            <td>string</td>
            <td>Gets or sets the body content for messages in this batch.</td>
        </tr>
        <tr>
            <td><code>category</code></td>
            <td>Category</td>
            <td>Gets or sets the category to which this batch belongs.</td>
        </tr>
        <tr>
            <td><code>template</code></td>
            <td>NotificationTemplate</td>
            <td>Gets or sets the template used to create this batch, if applicable.</td>
        </tr>
        <tr>
            <td><code>statistics</code></td>
            <td>BatchStatistics</td>
            <td>Gets or sets the statistics for messages in this batch.</td>
        </tr>
        <tr>
            <td><code>subject</code></td>
            <td>string</td>
            <td>Gets or sets the subject for messages in this batch.</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
            <td>Gets or sets the current status of the batch.</td>
        </tr>
        <tr>
            <td><code>statusReason</code></td>
            <td>string</td>
            <td>Gets or sets the reason for the current status of the batch.</td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>string</td>
            <td>Gets or sets the type of batch.</td>
        </tr>
        <tr>
            <td><code>payload</code></td>
            <td>string</td>
            <td>Gets or sets the payload data used for template-based batches.</td>
        </tr>
        <tr>
            <td><code>sendContext</code></td>
            <td>string</td>
            <td>Gets or sets the send context of the batch.</td>
        </tr>
        <tr>
            <td><code>sourceAccount</code></td>
            <td>object</td>
            <td></td>
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
            <td>Gets or sets the unique identifier for the attachment.</td>
        </tr>
        <tr>
            <td><code>href</code></td>
            <td>string</td>
            <td>Gets the URL to download the attachment.</td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td>Gets or sets the display name for the attachment.</td>
        </tr>
        <tr>
            <td><code>fileName</code></td>
            <td>string</td>
            <td>Gets or sets the file name of the attachment.</td>
        </tr>
        <tr>
            <td><code>fileSize</code></td>
            <td>integer</td>
            <td>Gets or sets the size of the attachment in bytes.</td>
        </tr>
        <tr>
            <td><code>contentType</code></td>
            <td>string</td>
            <td>Gets or sets the content type of the attachment.</td>
        </tr>
    </tbody>
</table>


## BatchAudit

Represents audit information for a Mpt.Notifications.Models.Messages.Batch.

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
            <td><code>completed</code></td>
            <td>PlatformObjectEvent</td>
            <td>Gets or sets the event information for when the batch was completed.</td>
        </tr>
        <tr>
            <td><code>processed</code></td>
            <td>PlatformObjectEvent</td>
            <td>Gets or sets the event information for when the batch was processed.</td>
        </tr>
    </tbody>
</table>


## BatchStatistics

Represents statistics for a notification batch, tracking the count of messages in various states.

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
            <td><code>bounced</code></td>
            <td>integer</td>
            <td>Gets or sets the number of messages that bounced.</td>
        </tr>
        <tr>
            <td><code>complained</code></td>
            <td>integer</td>
            <td>Gets or sets the number of messages that received complaints.</td>
        </tr>
        <tr>
            <td><code>discarded</code></td>
            <td>integer</td>
            <td>Gets or sets the number of messages that were discarded before sending.</td>
        </tr>
        <tr>
            <td><code>failed</code></td>
            <td>integer</td>
            <td>Gets or sets the number of messages that failed to send.</td>
        </tr>
        <tr>
            <td><code>queued</code></td>
            <td>integer</td>
            <td>Gets or sets the number of messages currently queued for sending.</td>
        </tr>
        <tr>
            <td><code>sent</code></td>
            <td>integer</td>
            <td>Gets or sets the number of messages that were successfully sent.</td>
        </tr>
        <tr>
            <td><code>total</code></td>
            <td>integer</td>
            <td>Gets or sets the total number of messages in the batch.</td>
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
            <td>Represents audit information for a Mpt.Notifications.Models.Categories.Category.</td>
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
            <td>Gets or sets the description of the category.</td>
        </tr>
        <tr>
            <td><code>optOutAllowed</code></td>
            <td>boolean</td>
            <td>Gets or sets a value indicating whether recipients can opt out of notifications in this category.</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
            <td>Gets or sets the current status of the category.</td>
        </tr>
        <tr>
            <td><code>note</code></td>
            <td>string</td>
            <td>Gets or sets an optional note about the category.</td>
        </tr>
        <tr>
            <td><code>deleteAllowed</code></td>
            <td>boolean</td>
            <td>Gets or sets a value indicating whether this category can be deleted.</td>
        </tr>
        <tr>
            <td><code>statistics</code></td>
            <td>MessageStatistics</td>
            <td>Gets or sets the message statistics for this category.</td>
        </tr>
        <tr>
            <td><code>lastUsed</code></td>
            <td>string</td>
            <td>Gets or sets the timestamp of when this category was last used to send a notification.</td>
        </tr>
        <tr>
            <td><code>enabledByDefault</code></td>
            <td>boolean</td>
            <td>Gets or sets a value indicating whether this category is enabled by default for new recipients.</td>
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
            <td>Gets or sets the number of messages sent in the current month.</td>
        </tr>
        <tr>
            <td><code>today</code></td>
            <td>integer</td>
            <td>Gets or sets the number of messages sent today.</td>
        </tr>
        <tr>
            <td><code>week</code></td>
            <td>integer</td>
            <td>Gets or sets the number of messages sent in the current week.</td>
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
            <td>Gets or sets the event information for when the category was published.</td>
        </tr>
        <tr>
            <td><code>unpublished</code></td>
            <td>PlatformObjectEvent</td>
            <td>Gets or sets the event information for when the category was unpublished.</td>
        </tr>
        <tr>
            <td><code>deleted</code></td>
            <td>PlatformObjectEvent</td>
            <td>Gets or sets the event information for when the category was deleted.</td>
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
            <td>Represents audit information for a Mpt.Notifications.Models.NotificationTemplates.NotificationTemplate.</td>
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
            <td>object</td>
            <td></td>
        </tr>
        <tr>
            <td><code>criteria</code></td>
            <td>NotificationTemplateCriteria</td>
            <td>Gets or sets the criteria for automatic triggering of this template based on events.</td>
        </tr>
        <tr>
            <td><code>defaultVariant</code></td>
            <td>object</td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
            <td>Gets or sets the description of this template.</td>
        </tr>
        <tr>
            <td><code>lastUsed</code></td>
            <td>string</td>
            <td>Gets or sets the timestamp of when this template was last used to send a notification.</td>
        </tr>
        <tr>
            <td><code>owner</code></td>
            <td>object</td>
            <td></td>
        </tr>
        <tr>
            <td><code>statistics</code></td>
            <td>MessageStatistics</td>
            <td>Gets or sets the usage statistics for this template.</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
            <td>Gets or sets the current status of the template.</td>
        </tr>
        <tr>
            <td><code>variants</code></td>
            <td>array</td>
            <td>Gets or sets the list of language-specific variants for this template.</td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
            <td>Gets or sets an external identifier for integration with external systems.</td>
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
            <td>Gets or sets the event information for when the template was activated.</td>
        </tr>
        <tr>
            <td><code>deleted</code></td>
            <td>PlatformObjectEvent</td>
            <td>Gets or sets the event information for when the template was deleted.</td>
        </tr>
        <tr>
            <td><code>disabled</code></td>
            <td>PlatformObjectEvent</td>
            <td>Gets or sets the event information for when the template was disabled.</td>
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
            <td>Gets or sets the list of account types for which this template should trigger.</td>
        </tr>
        <tr>
            <td><code>filterCondition</code></td>
            <td>string</td>
            <td>Gets or sets the RQL filter condition that must be satisfied for the template to trigger.</td>
        </tr>
        <tr>
            <td><code>objectType</code></td>
            <td>string</td>
            <td>Gets or sets the platform object type this template monitors.</td>
        </tr>
        <tr>
            <td><code>recipients</code></td>
            <td>NotificationTemplateCriteriaRecipients</td>
            <td>Gets or sets the custom Recipients condition. If specified, this RQL condition determines the recipients of the notification.</td>
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
            <td>Gets or sets the RQL filter condition that must be satisfied for the template to trigger.</td>
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
            <td>object</td>
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
            <td>Gets or sets a value indicating whether this is the default variant for the parent template.</td>
        </tr>
        <tr>
            <td><code>languageCode</code></td>
            <td>string</td>
            <td>Gets or sets the language code for this variant.</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
            <td>Gets or sets the current status of the variant.</td>
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
