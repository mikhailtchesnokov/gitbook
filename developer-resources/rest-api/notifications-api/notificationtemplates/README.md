
## NotificationTemplate

Represents a reusable template that can be used to generate messages.

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>NotificationTemplateAudit</td>
	        <td></td>
	        <td></td>
            <td>Represents audit information for a Mpt.Notifications.Models.NotificationTemplates.NotificationTemplate</td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>category</code></td>
            <td>CategoryRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>criteria</code></td>
            <td>NotificationTemplateCriteria</td>
	        <td></td>
	        <td></td>
            <td>Gets or sets the criteria for automatic triggering of this template based on events</td>
        </tr>
        <tr>
            <td><code>defaultVariant</code></td>
            <td>TemplateVariantRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Gets or sets the description of this template</td>
        </tr>
        <tr>
            <td><code>lastUsed</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>Gets or sets the timestamp of when this template was last used to send a notification</td>
        </tr>
        <tr>
            <td><code>owner</code></td>
            <td>AccountRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>statistics</code></td>
            <td>MessageStatistics</td>
	        <td></td>
	        <td></td>
            <td>Gets or sets the usage statistics for this template</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>Gets or sets the current status of the template</td>
        </tr>
        <tr>
            <td><code>variants</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Gets or sets the list of language-specific variants for this template</td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Gets or sets an external identifier for integration with external systems</td>
        </tr></tbody>
</table>

## AccountRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>AccountType</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Client,Vendor,Operations</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AccountStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Active,Enabled,Disabled</td>
        </tr>
    </tbody>
</table>

## CategoryRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
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
	        <th>Core</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>month</code></td>
            <td>integer</td>
	        <td></td>
	        <td>client,ops</td>
            <td>Gets or sets the number of messages sent in the current month</td>
        </tr>
        <tr>
            <td><code>today</code></td>
            <td>integer</td>
	        <td></td>
	        <td>client,ops</td>
            <td>Gets or sets the number of messages sent today</td>
        </tr>
        <tr>
            <td><code>week</code></td>
            <td>integer</td>
	        <td></td>
	        <td>client,ops</td>
            <td>Gets or sets the number of messages sent in the current week</td>
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
	        <th>Core</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>created</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>activated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Gets or sets the event information for when the template was activated</td>
        </tr>
        <tr>
            <td><code>deleted</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Gets or sets the event information for when the template was deleted</td>
        </tr>
        <tr>
            <td><code>disabled</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
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
	        <th>Core</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>accountTypes</code></td>
            <td>array</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>Gets or sets the list of account types for which this template should trigger</td>
        </tr>
        <tr>
            <td><code>filterCondition</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>Gets or sets the RQL filter condition that must be satisfied for the template to trigger</td>
        </tr>
        <tr>
            <td><code>objectType</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>Gets or sets the platform object type this template monitors</td>
        </tr>
        <tr>
            <td><code>recipients</code></td>
            <td>NotificationTemplateCriteriaRecipients</td>
	        <td></td>
	        <td></td>
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
	        <th>Core</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>selector</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>Gets or sets the RQL filter condition that must be satisfied for the template to trigger</td>
        </tr>
    </tbody>
</table>

## PlatformIdentityRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
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
	        <th>Core</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>omitted</code></td>
            <td>array</td>
	        <td></td>
	        <td></td>
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
	        <th>Core</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>at</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>by</code></td>
            <td>PlatformIdentityRef</td>
	        <td></td>
	        <td></td>
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
	        <th>Core</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>default</code></td>
            <td>boolean</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>Gets or sets a value indicating whether this is the default variant for the parent template</td>
        </tr>
        <tr>
            <td><code>languageCode</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>Gets or sets the language code for this variant</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>Gets or sets the current status of the variant</td>
        </tr>
    </tbody>
</table>
