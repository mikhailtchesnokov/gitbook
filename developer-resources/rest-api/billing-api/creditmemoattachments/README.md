
## CreditMemoAttachment

Represents an attachment associated with a credit memo in the billing system.

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
            <td><code>audit</code></td>
            <td>PlatformObjectAudit</td>
	        <td></td>
	        <td></td>
            <td></td>
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
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>Name of the attachment</td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>BillingAttachmentType</td>
	        <td></td>
	        <td></td>
            <td>Specifies the type of the attachment, such as input, output, or general attachment. Allowed values: Attachment,Input,Output</td>
        </tr>
        <tr>
            <td><code>filename</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>Represents the name of the file associated with the attachment</td>
        </tr>
        <tr>
            <td><code>size</code></td>
            <td>integer</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Indicates the size of the file in bytes</td>
        </tr>
        <tr>
            <td><code>contentType</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Represents the MIME type of the file content</td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>Provides a description of the attachment</td>
        </tr>
        <tr>
            <td><code>isDeleted</code></td>
            <td>boolean</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Indicates whether the attachment has been marked as deleted</td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>The unique identifier of the attachment</td>
        </tr>
        <tr>
            <td><code>creditMemo</code></td>
            <td>CreditMemoRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>isExternal</code></td>
            <td>boolean</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Indicates whether the attachment is stored externally</td>
        </tr></tbody>
</table>

## CreditMemoRef

Represents a credit memo in the billing system.

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
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>The unique identifier of the credit memo</td>
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

## PlatformObjectAudit



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
