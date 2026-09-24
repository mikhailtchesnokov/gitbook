
## TemplateVariant

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
            <td><code>audit</code></td>
            <td>TemplateVariantAudit</td>
	        <td></td>
	        <td></td>
            <td>Represents audit information for a Mpt.Notifications.Models.NotificationTemplates.TemplateVariant</td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
	        <td></td>
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
            <td><code>body</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Gets or sets the body content for this variant</td>
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
            <td><code>template</code></td>
            <td>NotificationTemplateRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>Gets or sets the current status of the variant</td>
        </tr>
        <tr>
            <td><code>subject</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Gets or sets the subject for messages created from this variant</td>
        </tr></tbody>
</table>

## NotificationTemplateRef

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
            <td><code>lastUsed</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>Gets or sets the timestamp of when this template was last used to send a notification</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>Gets or sets the current status of the template</td>
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

## TemplateVariantAudit

Represents audit information for a Mpt.Notifications.Models.NotificationTemplates.TemplateVariant.

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
            <td><code>deleted</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Gets or sets the event information for when the variant was deleted</td>
        </tr>
    </tbody>
</table>
