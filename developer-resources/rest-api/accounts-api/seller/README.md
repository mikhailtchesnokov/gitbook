
## Seller


### IdPrefix 
SEL

### Description
A Seller is a SoftwareOne legal entity registered in the SoftwareOne Marketplace. Each Seller has a 1:1 relationship with an instance of SoftwareOne's ERP system. Sellers exist for every country or jurisdiction in which SoftwareOne conducts business, including entities acquired through mergers and acquisitions that continue to transact independently until ERP consolidation. A Seller acts as the owner of [[Authorization]]s and as the transacting party on [[Listing]]s — it is the named SoftwareOne entity on a commercial transaction with a Client.


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
      <td>No</td>
      <td>No (query returns empty)</td>
      <td>No</td>
      <td>No</td>
      <td>Seller is surfaced as a reference on Authorizations and Listings only — never fetched directly.</td>
    </tr>
    <tr>
      <td>Operations</td>
      <td>Yes</td>
      <td>Yes</td>
      <td>Yes</td>
      <td>Yes*</td>
      <td>*Deletion is a soft-delete: sets status to `Deleted`, only permitted from `Active`, blocked while any related Licensee is `Active` or `Enabled`. See BR-001, BR-007.</td>
    </tr>
    <tr>
      <td>Client</td>
      <td>No</td>
      <td>Yes (unfiltered, direct)</td>
      <td>No</td>
      <td>No</td>
      <td>Client&#39;s direct `GET` access to the Seller collection and by-ID endpoints returns the same unfiltered representation as Operations — no field-level suppression observed.</td>
    </tr>
  </tbody>
</table>


### Example
{% code title="Seller" overflow="wrap" lineNumbers="true" %}
```json
{
  "id": "SEL-7295-4834",
  "revision": 1,
  "name": "SoftwareOne AG",
  "externalId": "SWO_CH",
  "status": "Active",
  "currencies": [
    "USD"
  ],
  "address": {
    "addressLine1": "Some street",
    "addressLine2": "Apt 4B",
    "postCode": "P0S C0D3",
    "city": "Some city",
    "state": "SS",
    "country": "CH"
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
{% code %}


 


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
            <td>Platform-assigned unique identifier. Format: `SEL-NNNN-NNNN`.Immutable. Assigned at creation</td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>PlatformObjectAudit</td>
	        <td></td>
	        <td></td>
            <td>Standard platform audit block. Records `created` and `updated` timestamps and Actor references.Returned by default on this object's responses in current observation (no `select=+audit` was needed to see it in this run's live sample) — this differs from the platform-wide default of omitting `audit` unless requested (preamble Section 6.2); treat as object-specific pending further confirmation</td>
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
            <td>Human-readable label for the Seller. Freeform — no naming convention enforced by the platform.Required on creation. `minLength: 1`, `maxLength: 500`. See BR-004</td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>URL path to the Seller's icon. Follows the jdenticon behaviour — defaults to a server-generated jdenticon; a custom icon may be uploaded to replace it.Returns jdenticon URL by default. Nullable in the spec. Uploaded via the `logo` binary field on the multipart `PUT` endpoint; removed automatically by any multipart `PUT` that omits a `logo` file. See BR-008. One entry in production data has no `icon` field — see SEL-004</td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>Increments on each update.Read-only</td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>The ERP-side identifier for this Seller. Represents the 1:1 relationship between a Seller and an ERP instance.Marked nullable in the API schema, but functionally required — a null/empty value is rejected on creation. Enforced unique across all Sellers (any status) at creation only. See BR-002</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>SellerStatus</td>
	        <td></td>
	        <td></td>
            <td>Operational status of the Seller. One of: `Active`, `Disabled`, `Offline`, `Deleted`.Managed via dedicated action endpoints (`/activate`, `/disable`, `/deactivate`) plus `DELETE` for the transition into `Deleted`. See Section 3. Allowed values: Active,Disabled,Offline,Deleted</td>
        </tr>
        <tr>
            <td><code>currencies</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The set of currencies this Seller may transact in. Each entry: `value` (ISO 4217 code), `billingEnabled` (Boolean), `isDefault` (Boolean).1–1000 entries; exactly one `isDefault: true`; at least one `billingEnabled: true`. Update replaces the full set — see BR-003</td>
        </tr>
        <tr>
            <td><code>address</code></td>
            <td>Address</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>erpLink</code></td>
            <td>ErpLinkRef</td>
	        <td></td>
	        <td></td>
            <td>Present in the schema as a single reference, but not populated on the standalone Seller resource in practice (absent from live responses, and not listed in `$meta.omitted`).A Seller may in fact have many ErpLinks — one per linked Buyer, since an ErpLink pairs exactly one Buyer with one Seller (Accounts: ErpLink). The singular `erpLink` field does not represent this collection</td>
        </tr>
        <tr>
            <td><code>attributes</code></td>
            <td>SellerAttributes</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr></tbody>
</table>


## Downstream models
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

### ErpLinkRef



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
        <tr>
            <td><code>companyName</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>ErpLinkStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Active,Blocked,Disabled</td>
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

### SellerAttributes



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
            <td><code>navision</code></td>
            <td>object</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### SellerCurrency



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
            <td><code>value</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>billingEnabled</code></td>
            <td>boolean</td>
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
