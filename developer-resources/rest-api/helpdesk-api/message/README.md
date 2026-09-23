
## ChatMessage



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
            <td>ChatMessageAudit</td>
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
            <td><code>chat</code></td>
            <td>object</td>
            <td></td>
        </tr>
        <tr>
            <td><code>sender</code></td>
            <td>object</td>
            <td></td>
        </tr>
        <tr>
            <td><code>content</code></td>
            <td>string</td>
            <td>Content of the chat message.</td>
        </tr>
        <tr>
            <td><code>visibility</code></td>
            <td>MessageVisibility</td>
            <td>Visibility of the chat message, indicating whether it is public or private.Allowed values: Public,Private</td>
        </tr>
        <tr>
            <td><code>isDeleted</code></td>
            <td>boolean</td>
            <td>Set to true when the message should be considered deleted</td>
        </tr>
        <tr>
            <td><code>links</code></td>
            <td>array</td>
            <td></td>
        </tr>
        <tr>
            <td><code>identity</code></td>
            <td>object</td>
            <td></td>
        </tr>
        <tr>
            <td><code>replyTo</code></td>
            <td>object</td>
            <td></td>
        </tr></tbody>
</table>

## ChatLinkRef



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
            <td><code>message</code></td>
            <td>ChatMessage</td>
            <td>Represents the message this link belongs to.</td>
        </tr>
        <tr>
            <td><code>uri</code></td>
            <td>string</td>
            <td>Represents the URI for link.</td>
        </tr>
        <tr>
            <td><code>objectId</code></td>
            <td>string</td>
            <td>Represents the ObjectId for link.</td>
        </tr>
    </tbody>
</table>

## ChatMessageAudit



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
            <td><code>deleted</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>madePublic</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>madePrivate</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ChatMessageRef



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
            <td><code>content</code></td>
            <td>string</td>
            <td>Content of the chat message.</td>
        </tr>
        <tr>
            <td><code>visibility</code></td>
            <td>MessageVisibility</td>
            <td>Visibility of the chat message, indicating whether it is public or private.Allowed values: Public,Private</td>
        </tr>
        <tr>
            <td><code>isDeleted</code></td>
            <td>boolean</td>
            <td>Set to true when the message should be considered deleted</td>
        </tr>
    </tbody>
</table>

## ChatParticipantRef



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
            <td><code>muted</code></td>
            <td>boolean</td>
            <td>Flag indicates whether participant should be notified of new messages in the chat.</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>ParticipantStatus</td>
            <td>Represents the status of the chat participant, indicating whether they are active, suspended, or exited.Allowed values: Active,Exited,Deactivated</td>
        </tr>
    </tbody>
</table>

## ChatRef



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
            <td>ChatType</td>
            <td>Represents the type of chat, indicating whether it is a direct message, group chat, channel, or support case.Allowed values: Direct,Group,Channel,Case</td>
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
