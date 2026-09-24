
## JournalAttachment

Represents an attachment associated with a journal in the billing system.

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
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td>Name of the attachment</td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>BillingAttachmentType</td>
            <td>Specifies the type of the attachment, such as input, output, or general attachmentAllowed values: Attachment,Input,Output</td>
        </tr>
        <tr>
            <td><code>filename</code></td>
            <td>string</td>
            <td>Represents the name of the file associated with the attachment</td>
        </tr>
        <tr>
            <td><code>size</code></td>
            <td>integer</td>
            <td>Indicates the size of the file in bytes</td>
        </tr>
        <tr>
            <td><code>contentType</code></td>
            <td>string</td>
            <td>Represents the MIME type of the file content</td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
            <td>Provides a description of the attachment</td>
        </tr>
        <tr>
            <td><code>isDeleted</code></td>
            <td>boolean</td>
            <td>Indicates whether the attachment has been marked as deleted</td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td>The unique identifier of the attachment</td>
        </tr>
        <tr>
            <td><code>journal</code></td>
            <td>JournalRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>AccountRef</td>
            <td></td>
        </tr></tbody>
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

## JournalRef

Represents a journal entry in the billing system.

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
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td>The unique identifier of the journal entry</td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td>Name of the journal</td>
        </tr>
        <tr>
            <td><code>dueDate</code></td>
            <td>string</td>
            <td>The due date for the journal entry</td>
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
