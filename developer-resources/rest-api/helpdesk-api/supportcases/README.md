
# SupportCase



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
            <td>SupportCaseAudit</td>
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
            <td>Chat</td>
            <td>Represents the chat this support case is coupled with.</td>
        </tr>
        <tr>
            <td><code>reporter</code></td>
            <td>Contact</td>
            <td>Represents the Mpt.Helpdesk.Models.Notifications.Contact who is reporting this issue.</td>
        </tr>
        <tr>
            <td><code>assignee</code></td>
            <td>Contact</td>
            <td>Represents the Mpt.Helpdesk.Models.Notifications.Contact to whom this case is currently assigned. It can be null if the case is unassigned.</td>
        </tr>
        <tr>
            <td><code>account</code></td>
            <td>Account</td>
            <td>Represents the account context of the Mpt.Helpdesk.Models.Cases.SupportCase.Reporter.</td>
        </tr>
        <tr>
            <td><code>queue</code></td>
            <td>Queue</td>
            <td>Queue to which this case is currently assigned.</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>SupportCaseStatus</td>
            <td>The status of the support case.Allowed values: Processing,Querying,Completed</td>
        </tr>
        <tr>
            <td><code>queryPrompt</code></td>
            <td>string</td>
            <td>The prompt that is set along with setting the Mpt.Helpdesk.Models.Cases.SupportCase.Status to Mpt.Helpdesk.Models.Cases.SupportCaseStatus.Querying</td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>array</td>
            <td>Represents the parameter values in the case.</td>
        </tr>
        <tr>
            <td><code>sensitiveParameters</code></td>
            <td>array</td>
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


## CapacitySettings



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
            <td><code>min</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>max</code></td>
            <td>integer</td>
            <td></td>
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


## Chat



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
            <td><code>description</code></td>
            <td>string</td>
            <td>Gets or sets the description associated with the chat.</td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>ChatType</td>
            <td>Represents the type of chat, indicating whether it is a direct message, group chat, channel, or support case.Allowed values: Direct,Group,Channel,Case</td>
        </tr>
        <tr>
            <td><code>participants</code></td>
            <td>array</td>
            <td>Represents the participants in the chat.</td>
        </tr>
        <tr>
            <td><code>lastMessage</code></td>
            <td>object</td>
            <td></td>
        </tr>
        <tr>
            <td><code>attachments</code></td>
            <td>array</td>
            <td>Represents the attachments associated with the chat.</td>
        </tr>
    </tbody>
</table>


## ChatAttachmentRef



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
            <td><code>file</code></td>
            <td>File</td>
            <td>Represents the file this attachment belongs to.</td>
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
            <td>Represents audit information for a Mpt.Notifications.Models.Contacts.Contact.</td>
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
            <td>Gets or sets the list of categories for which this contact has opted out of receiving notifications.</td>
        </tr>
        <tr>
            <td><code>user</code></td>
            <td>User</td>
            <td>Gets or sets the associated user information, if this contact is linked to a platform user.</td>
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
            <td>Gets or sets the event information for when the contact was activated.</td>
        </tr>
        <tr>
            <td><code>blocked</code></td>
            <td>PlatformObjectEvent</td>
            <td>Gets or sets the event information for when the contact was blocked.</td>
        </tr>
        <tr>
            <td><code>deleted</code></td>
            <td>PlatformObjectEvent</td>
            <td>Gets or sets the event information for when the contact was deleted.</td>
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
            <td>Specifies the type of the file, such as attachment or iconAllowed values: Attachment,Icon,Image,Video</td>
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


## HelpdeskConstraints

Constraints specific to helpdesk parameters

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
            <td><code>hidden</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>readonly</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>required</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>capacity</code></td>
            <td>CapacitySettings</td>
            <td></td>
        </tr>
        <tr>
            <td><code>visibility</code></td>
            <td>VisibilityMode</td>
            <td>The visibility mode controlling who can see the parameterAllowed values: All,OnlyMyAccount</td>
        </tr>
    </tbody>
</table>


## JsonNode



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
            <td><code>options</code></td>
            <td>JsonNodeOptions</td>
            <td></td>
        </tr>
        <tr>
            <td><code>parent</code></td>
            <td>JsonNode</td>
            <td></td>
        </tr>
        <tr>
            <td><code>root</code></td>
            <td>JsonNode</td>
            <td></td>
        </tr>
    </tbody>
</table>


## JsonNodeOptions



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
            <td><code>propertyNameCaseInsensitive</code></td>
            <td>boolean</td>
            <td></td>
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
            <td>object</td>
            <td></td>
        </tr>
    </tbody>
</table>


## Queue



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
            <td>QueueAudit</td>
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
            <td><code>longDescription</code></td>
            <td>string</td>
            <td>Gets or sets the long description associated with the queue.</td>
        </tr>
        <tr>
            <td><code>shortDescription</code></td>
            <td>string</td>
            <td>Gets or sets the short description associated with the queue.</td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
            <td>Gets or sets the optional external identifier associated with the queue.</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>QueueStatus</td>
            <td>Gets or sets the status of the queue.Allowed values: Disabled,Active</td>
        </tr>
        <tr>
            <td><code>default</code></td>
            <td>boolean</td>
            <td>Indicates whether this queue is the default queue.</td>
        </tr>
        <tr>
            <td><code>internal</code></td>
            <td>boolean</td>
            <td>Indicates whether this queue is internal.</td>
        </tr>
        <tr>
            <td><code>account</code></td>
            <td>Account</td>
            <td>Gets or sets the account associated with the queue.</td>
        </tr>
        <tr>
            <td><code>statistics</code></td>
            <td>QueueStatistics</td>
            <td>Gets or sets helpful statistics about the use of the queue.</td>
        </tr>
        <tr>
            <td><code>isDeleted</code></td>
            <td>boolean</td>
            <td>Indicates whether the queue has been marked as deleted.</td>
        </tr>
    </tbody>
</table>


## QueueAudit



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
            <td><code>activated</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>disabled</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
    </tbody>
</table>


## QueueStatistics



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
            <td><code>totalCases</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>openCases</code></td>
            <td>integer</td>
            <td></td>
        </tr>
    </tbody>
</table>


## SupportCaseAudit



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
            <td><code>processed</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>queried</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>transferred</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>completed</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
    </tbody>
</table>


## SupportCaseParameter

Represents a parameter associated with a support case in the helpdesk system.

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
            <td>Gets or sets the unique identifier for the parameter.</td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td>Gets or sets the name of the parameter.</td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
            <td>Gets or sets the external identifier for the parameter, if applicable.</td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>ParameterType</td>
            <td>Gets or sets the type of the parameter.Allowed values: SingleLineText,MultiLineText,Address,Contact,Checkbox,Choice,Subdomain,Heading,DropDown,Email,DataObject,Date,DateAndTime,Collection</td>
        </tr>
        <tr>
            <td><code>multiple</code></td>
            <td>boolean</td>
            <td>Indicates whether this parameter accepts multiple values.
When true, Mpt.Helpdesk.Models.Cases.SupportCaseParameter.Value is a JSON array.</td>
        </tr>
        <tr>
            <td><code>constraints</code></td>
            <td>HelpdeskConstraints</td>
            <td>Gets or sets the helpdesk-specific constraints for the parameter.
Treated as a primitive type for RQL queries.</td>
        </tr>
        <tr>
            <td><code>displayOrder</code></td>
            <td>integer</td>
            <td>Gets or sets the formatted display order of the parameter for UI presentation.</td>
        </tr>
        <tr>
            <td><code>value</code></td>
            <td>JsonNode</td>
            <td>Gets or sets the actual value of the parameter as a JSON element.
This is a core property for RQL queries.</td>
        </tr>
        <tr>
            <td><code>displayValue</code></td>
            <td>string</td>
            <td>Gets or sets the human-readable display representation of Mpt.Helpdesk.Models.Cases.SupportCaseParameter.Value.</td>
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
            <td>object</td>
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
