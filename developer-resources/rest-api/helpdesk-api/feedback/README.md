
# Feedback



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
            <td>
            </td>
        </tr>
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
            <td><code>name</code></td>
            <td>string</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
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
            <td><code>description</code></td>
            <td>string</td>
            <td>Gets or sets the description associated with the feedback.
            </td>
        </tr>
        <tr>
            <td><code>requester</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>account</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>FeedbackStatus</td>
            <td>Gets or sets the status associated with the feedback.            
            Allowed values:
            <ul>
                <li><code>Submitted</code></li>
                                <li><code>Reviewed</code></li>
                                <li><code>Deleted</code></li>
                                
            </ul>
            </td>
        </tr>
        <tr>
            <td><code>rating</code></td>
            <td>integer</td>
            <td>Gets or sets the rating associated with the feedback.
            </td>
        </tr>
        <tr>
            <td><code>notes</code></td>
            <td>string</td>
            <td>Gets or sets the notes associated with the feedback.
            </td>
        </tr>
        <tr>
            <td><code>internalNotes</code></td>
            <td>string</td>
            <td>Gets or sets the internal notes associated with the feedback.
            </td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
            <td>Gets or sets the externalId associated with the feedback.
            </td>
        </tr>
        <tr>
            <td><code>metaData</code></td>
            <td>object</td>
            <td>Gets the metadata as a JSON document (read-only).
            </td>
        </tr>
        <tr>
            <td><code>attachments</code></td>
            <td>array</td>
            <td>Represents the attachments associated with the feedback.
            </td>
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
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AccountStatus</td>
            <td></td>
        </tr>
    </tbody>
</table>


## FeedbackAttachmentRef



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
            <td><code>feedback</code></td>
            <td>Feedback</td>
            <td>Represents the feedback this attachment belongs to.</td>
        </tr>
        <tr>
            <td><code>file</code></td>
            <td>File</td>
            <td>Represents the file this attachment belongs to.</td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td>Represents the name this attachment.</td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
            <td>Represents the description this attachment.</td>
        </tr>
    </tbody>
</table>


## File

Represents a file in the helpdesk module

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
            <td>FileType</td>
            <td>Specifies the type of the file, such as attachment or icon</td>
        </tr>
        <tr>
            <td><code>filename</code></td>
            <td>string</td>
            <td>Represents the name of the file associated with the attachment.</td>
        </tr>
        <tr>
            <td><code>size</code></td>
            <td>integer</td>
            <td>Indicates the size of the file in bytes.</td>
        </tr>
        <tr>
            <td><code>contentType</code></td>
            <td>string</td>
            <td>Represents the MIME type of the file content.</td>
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
