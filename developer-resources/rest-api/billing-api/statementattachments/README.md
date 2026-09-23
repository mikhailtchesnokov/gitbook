
#StatementAttachment

Represents an attachment associated with a billing statement in the system.

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
                <td>
                </td>
            </tr>
            <tr>
                <td><code>$meta</code></td>
                <td>PlatformMetadata</td>
                <td>
                </td>
            </tr>
            <tr>
                <td><code>revision</code></td>
                <td>integer</td>
                <td>
                </td>
            </tr>
            <tr>
                <td><code>name</code></td>
                <td>string</td>
                <td>Name of the attachment.
                </td>
            </tr>
            <tr>
                <td><code>type</code></td>
                <td>BillingAttachmentType</td>
                <td>Specifies the type of the attachment, such as input, output, or general attachment.            
            Allowed values:
            <ul>
                <li><code>Attachment</code></li>
                                <li><code>Input</code></li>
                                <li><code>Output</code></li>
                                
            </ul>
                </td>
            </tr>
            <tr>
                <td><code>filename</code></td>
                <td>string</td>
                <td>Represents the name of the file associated with the attachment.
                </td>
            </tr>
            <tr>
                <td><code>size</code></td>
                <td>integer</td>
                <td>Indicates the size of the file in bytes.
                </td>
            </tr>
            <tr>
                <td><code>contentType</code></td>
                <td>string</td>
                <td>Represents the MIME type of the file content.
                </td>
            </tr>
            <tr>
                <td><code>description</code></td>
                <td>string</td>
                <td>Provides a description of the attachment.
                </td>
            </tr>
            <tr>
                <td><code>isDeleted</code></td>
                <td>boolean</td>
                <td>Indicates whether the attachment has been marked as deleted.
                </td>
            </tr>
            <tr>
                <td><code>id</code></td>
                <td>string</td>
                <td>The unique identifier of the attachment.
                </td>
            </tr>
            <tr>
                <td><code>statement</code></td>
                <td>object</td>
                <td>
                </td>
            </tr></tbody>
</table>

