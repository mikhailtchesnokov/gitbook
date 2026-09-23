
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
            <td>PlatformIdentityRef</td>
            <td></td>
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
            <td>AccountRef</td>
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
