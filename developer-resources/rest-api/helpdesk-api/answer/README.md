
## Answer

A form submission within a chat, containing parameter values filled by participants

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
            <td>AnswerAudit</td>
            <td>Audit information for answer lifecycle events</td>
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
            <td><code>form</code></td>
            <td>Form</td>
            <td>The parent form that defines the structure of this answer</td>
        </tr>
        <tr>
            <td><code>chat</code></td>
            <td>Chat</td>
            <td>The chat this answer belongs to</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AnswerStatus</td>
            <td>The current lifecycle status of the answerAllowed values: Draft,Submitted,Querying,Accepted</td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>array</td>
            <td>Flat list of parameter values for this answer, each referencing a ParameterDefinition and optionally belonging to one or more groups</td>
        </tr>
        <tr>
            <td><code>isDeleted</code></td>
            <td>boolean</td>
            <td>Indicates whether the answer has been soft-deleted</td>
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

## AnswerAudit

Audit information for answer lifecycle events

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
            <td>The soft-deletion event details</td>
        </tr>
        <tr>
            <td><code>submitted</code></td>
            <td>PlatformObjectEvent</td>
            <td>The submission event details</td>
        </tr>
        <tr>
            <td><code>queried</code></td>
            <td>PlatformObjectEvent</td>
            <td>The query (change request) event details</td>
        </tr>
        <tr>
            <td><code>accepted</code></td>
            <td>PlatformObjectEvent</td>
            <td>The acceptance event details</td>
        </tr>
    </tbody>
</table>

## AnswerParameter

A parameter value within an answer, identified by its ParameterDefinition ID

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
            <td>Reference to the original ParameterDefinition ID</td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td>Snapshot of the parameter name from the ParameterDefinition at creation time</td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
            <td>The external identifier from the ParameterDefinition, used as alternate lookup key</td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>ParameterType</td>
            <td>Gets or sets the type of the parameter.Allowed values: SingleLineText,MultiLineText,Address,Contact,Checkbox,Choice,Subdomain,Heading,DropDown,Email,DataObject,Date,DateAndTime,Collection</td>
        </tr>
        <tr>
            <td><code>value</code></td>
            <td>JsonNode</td>
            <td>The user-provided value, null when unfilled</td>
        </tr>
        <tr>
            <td><code>displayValue</code></td>
            <td>string</td>
            <td>Gets or sets the human-readable display representation of Mpt.Helpdesk.Models.Answers.AnswerParameter.Value.</td>
        </tr>
        <tr>
            <td><code>constraints</code></td>
            <td>HelpdeskConstraints</td>
            <td>Constraints for this parameter instance, initially copied from definition and overridable by the assignee</td>
        </tr>
        <tr>
            <td><code>options</code></td>
            <td>object</td>
            <td>Snapshot of the list options for this parameter instance, as a `{optionsList, defaultValue}` fragment.
Populated only for Platform.Models.Core.Components.Parameters.ParameterType.Choice, Platform.Models.Core.Components.Parameters.ParameterType.Checkbox and
Platform.Models.Core.Components.Parameters.ParameterType.DropDown; null for every other type. Initially copied from the
ParameterDefinition and overridable by the validate webhook, so submitted values are checked against the
options this answer was offered rather than the definition's current list.</td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td>ErrorDetails</td>
            <td>Structured error on this parameter, set by the assignee (manual) or by automated validation
(system errors E000001 required, E000002 capacity exceeded, E000003 capacity not met,
E000004 value out of range). A manual error set by the assignee always takes precedence over a
system error.</td>
        </tr>
        <tr>
            <td><code>groups</code></td>
            <td>array</td>
            <td>The parameter groups this parameter belongs to, stored as IDs in the database and resolved to full objects at query time</td>
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
            <td>ChatMessageRef</td>
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

## ErrorDetails

Structured error details for an answer parameter

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
            <td>The error code identifying system-generated errors, null for manual errors set by the assignee</td>
        </tr>
        <tr>
            <td><code>message</code></td>
            <td>string</td>
            <td>Human-readable error description</td>
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

## Form



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
            <td>FormAudit</td>
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
            <td>Gets or sets the description associated with the form.</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>FormStatus</td>
            <td>Gets or sets the status of the Form.Allowed values: Unpublished,Published</td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
            <td>Gets or sets the optional external identifier associated with the form.</td>
        </tr>
        <tr>
            <td><code>account</code></td>
            <td>AccountRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>statistics</code></td>
            <td>FormStatistics</td>
            <td>Gets or sets usage statistics for this form.</td>
        </tr>
        <tr>
            <td><code>isDeleted</code></td>
            <td>boolean</td>
            <td>Indicates whether the queue has been marked as deleted.</td>
        </tr>
    </tbody>
</table>

## FormAudit



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
            <td><code>published</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>unpublished</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
    </tbody>
</table>

## FormStatistics

Represents usage statistics for a form.

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
            <td><code>groups</code></td>
            <td>integer</td>
            <td>The number of parameter groups assigned to this form.</td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>integer</td>
            <td>The total number of parameter definitions across all groups in this form.</td>
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

## OrderedParameterGroupRef

Ordered parameter group within a form

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
            <td><code>externalId</code></td>
            <td>string</td>
            <td>The optional external identifier associated with the parameter group</td>
        </tr>
        <tr>
            <td><code>displayOrder</code></td>
            <td>integer</td>
            <td>The display order of this parameter group within the form</td>
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
