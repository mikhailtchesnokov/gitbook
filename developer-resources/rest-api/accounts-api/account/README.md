
## Account


### IdPrefix 
ACC

### Description
An Account is the platform identity record for an Actor — either a Vendor (a software manufacturer transacting through the SoftwareOne Marketplace), an Operations entity (SoftwareOne itself, acting as platform steward), or a Client (a customer organisation purchasing through the SoftwareOne Marketplace). Every Account has a `type` field that determines which Actor permission profile applies to its Users and API Tokens. In PROD, there is exactly one Operations Account, one Account per Vendor entity, and one Account per Client organisation. Client Accounts have a 1:1 relationship with a CDG (Customer Discount Group) in SoftwareOne's ERP.


### Ownership & Visibility

<table>
  <thead>
    <tr>
      <th width="1">Actor</th>
      <th width="1" style="overflow:visible">Can Create</th>
      <th width="1">Can Read</th>
      <th width="1">Can Update</th>
      <th width="1">Can Delete</th>
      <th width="auto">Notes</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Vendor</td>
      <td>No</td>
      <td>Yes*</td>
      <td>Yes**</td>
      <td>No</td>
      <td>*A Vendor can read its own Account and any Client Account with a Commerce: [[Agreement]] where this Vendor is the Agreement&#39;s Vendor. Non-visible Accounts return 404 — their existence is masked entirely. No field-level suppression exists once an Account is visible. **A Vendor can update its own Account only.</td>
    </tr>
    <tr>
      <td>Operations</td>
      <td>Yes</td>
      <td>Yes*</td>
      <td>Yes</td>
      <td>No</td>
      <td>*Platform-wide read access requires the Account Management module permission. Without it, an Operations user is scoped to their own Account only — the same restriction as Client. No DELETE endpoint exists in the spec.</td>
    </tr>
    <tr>
      <td>Client</td>
      <td>No</td>
      <td>Yes*</td>
      <td>Yes**</td>
      <td>No</td>
      <td>*A Client can read its own Account only. All other Accounts return 404 — their existence is masked entirely. **A Client can update its own Account only.</td>
    </tr>
  </tbody>
</table>


### Example
```json
{
  "id": "ACC-1234-1234",
  "revision": 1,
  "name": "Contoso Ltd",
  "type": "Vendor",
  "status": "Active",
  "externalId": "WW-CON-123456",
  "externalName": "Contoso",
  "website": "https://contoso.com",
  "description": "Enterprise customer account",
  "address": {
    "addressLine1": "123 Main Street",
    "addressLine2": "Apt 4B",
    "postCode": "12345",
    "city": "Cityville",
    "state": "S",
    "country": "ST"
  },
  "eligibility": {
    "client": true,
    "partner": false
  },
  "audit": {
    "created": {
      "at": "2024-02-01T09:12:23.0000000+00:00",
      "by": {
        "id": "USR-0001",
        "name": "Ops User"
      }
    },
    "updated": {
      "at": "2024-02-01T09:12:23.0000000+00:00",
      "by": {
        "id": "USR-0001",
        "name": "Ops User"
      }
    }
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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>Platform-assigned unique identifier. Format: `ACC-NNNN-NNNN`.Immutable. Assigned at creation</td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>PlatformObjectAudit</td>
	        <td></td>
	        <td></td>
            <td>Standard platform audit block. Records `created` and `updated` timestamps and Actor references.Omitted from API responses by default. Request via `select=+audit`. The Operations Account's `audit.created.by` is absent — believed to be a system-bootstrapped account predating Actor attribution</td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>Human-readable name of the Account.Required on creation and update. `minLength: 1`, `maxLength: 500`</td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>URL path to the Account's icon. Defaults to a server-generated jdenticon; a custom icon may be uploaded to replace it.Nullable. Uploaded via `logo` binary field on PUT (`multipart/form-data`). See Preamble Section 9</td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>Increments on each update.Read-only</td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>AccountType</td>
	        <td></td>
	        <td></td>
            <td>Actor type for this Account. One of: `Vendor`, `Operations`, `Client`.Required on creation. Immutable after creation. Determines the Actor permission profile for all associated Users and API Tokens. Creation with `type: Operations` is rejected — see BR-002. Allowed values: Client,Vendor,Operations</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AccountStatus</td>
	        <td></td>
	        <td></td>
            <td>Operational status. One of: `Active`, `Enabled`, `Disabled`.`Active`: on Client Accounts, CDG is ERP-validated — can transact and be billed; on Vendor Accounts, default creation state with no ERP gate. `Enabled`: on Client Accounts, not Disabled but CDG not ERP-validated — cannot transact or be billed; on Operations Account, default creation state. `Disabled`: Vendor and Client Accounts only. See Section 3. Allowed values: Active,Enabled,Disabled</td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>AccountExternalIds</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Operations-managed ERP reference. Meaning varies by Account type: on Vendor Accounts, maps to the ERP manufacturer code; on Client Accounts, maps to the CDG (Customer Discount Group) — the global ERP identifier for a customer organisation; on the Operations Account, has no defined operational purpose. Always set and maintained exclusively by Operations regardless of Account type.`maxLength: 250`. Nullable. Absent from response when null</td>
        </tr>
        <tr>
            <td><code>externalName</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The ERP's own display name for the entity identified by `externalId`.See BR-016. Nullable. Absent from response when null</td>
        </tr>
        <tr>
            <td><code>address</code></td>
            <td>Address</td>
	        <td></td>
	        <td></td>
            <td>Registered address of the Account. All sub-fields are nullable. An empty address object (`{}`) is valid.Sub-fields: `addressLine1`, `addressLine2`, `postCode`, `city`, `state`, `country` — all nullable strings</td>
        </tr>
        <tr>
            <td><code>technicalSupportEmail</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Technical support email address for the Account.Optional. `maxLength: 320`. Must be valid email format. Available on all Account types — see BR-011</td>
        </tr>
        <tr>
            <td><code>website</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Website URL for the Account.Optional. `maxLength: 2000`. Available on all Account types — see BR-012</td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Description of the Account.Optional. `maxLength: 2000`. Available on all Account types — see BR-012</td>
        </tr>
        <tr>
            <td><code>groups</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>User Groups associated with this Account.Omitted from API responses by default. Request via `select=+groups`. Every Account has exactly one Default User Group, permanently assigned — see BR-006</td>
        </tr>
        <tr>
            <td><code>eligibility</code></td>
            <td>Eligibility</td>
	        <td></td>
	        <td></td>
            <td>Controls Client transacting eligibility. Sub-fields: `eligibility.client` (Boolean), `eligibility.partner` (Boolean).Present on Client Accounts only — rejected on other types, see BR-007. Absent from response when null</td>
        </tr>
        <tr>
            <td><code>defaultLanguageCode</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>BCP 47 language tag representing the Account's preferred language.Optional. Observed as `"en-US"` on all three Account types in data sample</td>
        </tr></tbody>
</table>


## Downstream models
### AccountExternalIds



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
            <td><code>pyraTenantId</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### Address



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
            <td><code>addressLine1</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>addressLine2</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>postCode</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>city</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>state</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>country</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### Eligibility



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
            <td><code>client</code></td>
            <td>boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>partner</code></td>
            <td>boolean</td>
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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
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
            <td>array</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### PlatformObjectAudit



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

### UserGroupRef



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>logo</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>isDefault</code></td>
            <td>boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>
