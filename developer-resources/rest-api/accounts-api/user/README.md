
## User


### IdPrefix 
USR

### Description
A User is the platform's global identity for a single human being — one person, one User record, keyed by email address. It holds the person's name, contact details, locale/formatting preferences, authentication status, and the set of [[Account]]s they belong to. A User is not itself typed as Vendor, Operations, or Client; the Actor permissions that apply to any given call are derived from which Account the User is operating in and their Group memberships within it (preamble §2.1a). A User is created the first time a person is invited into any Account, and thereafter is reused — additional Account memberships attach to the same global identity rather than creating a second User.


### Ownership & Visibility

<table>
  <thead>
    <tr>
      <th>Actor</th>
      <th>Can Create</th>
      <th>Can Read</th>
      <th>Can Update</th>
      <th>Can Delete</th>
      <th>Notes</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Vendor</td>
      <td>Yes*</td>
      <td>Yes (scoped)</td>
      <td>Yes*</td>
      <td>Yes*</td>
      <td>*Gated by holding an administration Group permission within the Account scope, not by Actor type (preamble &#167;2.1a). Vendor management is scoped to the Vendor&#39;s own Account. Read is scoped to Users sharing visibility; the `accounts` membership list is Operations-only. See BR-004, BR-007.</td>
    </tr>
    <tr>
      <td>Operations</td>
      <td>Yes*</td>
      <td>Yes</td>
      <td>Yes*</td>
      <td>Yes*</td>
      <td>*Same permission gating, unscoped. Operations additionally sees the full `accounts` membership list and the populated `currentAccount` (see Section 5).</td>
    </tr>
    <tr>
      <td>Client</td>
      <td>Yes*</td>
      <td>Yes (scoped)</td>
      <td>Yes*</td>
      <td>Yes*</td>
      <td>*Same permission gating as Vendor, scoped to the Client&#39;s own Account.</td>
    </tr>
  </tbody>
</table>


### Example
```json
{
  "id": "USR-3758-7092",
  "email": "john.doe@example.com",
  "status": "Active",
  "audit": {
    "invitationAcceptedAt": "2026-02-02T10:00:00.0000000+00:00"
  }
}
```


 


### Attributes

{% include "../../../../.gitbook/includes/api-table-header.md" %}

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>Platform-assigned global identifier. Format: `USR-NNNN-NNNN`.Immutable. Also usable as the `{uniqueFilter}` path value</td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td><a href="#useraudit">UserAudit</a </td>
	        <td></td>
	        <td></td>
            <td>Creation/update events plus `invitationAcceptedAt`.Omitted by default — request via `select=+audit`</td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td><a href="#platformmetadata">PlatformMetadata</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>Display name, composed from first and last name.Read-only composite</td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>URL of the User's icon (jdenticon default or uploaded custom).Jdenticon behaviour — see BR-011 and preamble §9. Nullable in schema; never null in practice</td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td> integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>email</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The person's email address and the unique key for the global identity.Unique across all Users (BR-001). Editable only via SSO auto-update (BR-009)</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Authentication/lifecycle status. One of: `New`, `Invited`, `InvitationExpired`, `Active`, `Blocked`, `Disabled`, `Deleted`.Derived from memberships except for `Blocked`/`Deleted`. See Section 3, BR-005</td>
        </tr>
        <tr>
            <td><code>phone</code></td>
            <td><a href="#phonenumber">PhoneNumber</a </td>
	        <td></td>
	        <td></td>
            <td>Optional phone number (`prefix`, `number`).Nullable. Absent from response when null</td>
        </tr>
        <tr>
            <td><code>firstName</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The person's given name.Required</td>
        </tr>
        <tr>
            <td><code>lastName</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The person's family name.Required</td>
        </tr>
        <tr>
            <td><code>lastLoginAt</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Timestamp of the most recent sign-in.Nullable; absent from response when the User has never signed in</td>
        </tr>
        <tr>
            <td><code>settings</code></td>
            <td><a href="#usersettings">UserSettings</a </td>
	        <td></td>
	        <td></td>
            <td>Locale and formatting preferences: `cultureCode`, `languageCode`, and optional `dateFormat`, `timeFormat`, `timeZone`, `numberFormat`, notification `optOuts`.`cultureCode` and `languageCode` always present; other members absent when null</td>
        </tr>
        <tr>
            <td><code>accounts</code></td>
            <td> array</td>
	        <td></td>
	        <td>ops</td>
            <td>The Accounts the User belongs to, each a reference with type and status.Operations-only (Actor-suppressed): omitted for Vendor and Client and not retrievable by them even via `select=+accounts`</td>
        </tr>
        <tr>
            <td><code>currentAccount</code></td>
            <td><a href="#accountref">AccountRef</a </td>
	        <td></td>
	        <td></td>
            <td>The Account the User is currently operating in, as an Account reference.Not Actor-suppressed. Populated for Operations; for Vendor and Client it is nulled when the fetched User's current Account differs from the viewer's Account. Switch constrained by BR-010</td>
        </tr></tbody>
</table>


## Downstream models
### AccountRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td> integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td> AccountType</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Client,Vendor,Operations</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td> AccountStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Active,Enabled,Disabled</td>
        </tr>
    </tbody>
</table>

### NumberFormat



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>decimalSeparator</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>groupSeparator</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### PhoneNumber



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>prefix</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>number</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### PlatformIdentityRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td> integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### PlatformMetadata



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>omitted</code></td>
            <td> array</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### PlatformObjectEvent



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>at</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>by</code></td>
            <td><a href="#platformidentityref">PlatformIdentityRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### UserAudit



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>created</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>invitationAcceptedAt</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### UserSettings



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>cultureCode</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>dateFormat</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>languageCode</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>numberFormat</code></td>
            <td><a href="#numberformat">NumberFormat</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>timeFormat</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>timeZone</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>optOuts</code></td>
            <td><a href="#usersettingsoptouts">UserSettingsOptOuts</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### UserSettingsOptOuts



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>objectTypes</code></td>
            <td> array</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>
