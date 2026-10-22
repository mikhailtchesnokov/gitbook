
## ApiToken


### IdPrefix 
TKN

### Description
An API Token is a non-human authentication credential used to call the platform API on behalf of an [[Account]]. It is the mechanism by which Extensions, integrations, and automation authenticate — the machine equivalent of a [[User]]'s interactive session. Each API Token is scoped to exactly one [[Account]] and carries a permission set derived from that Account's type and the [[Module]]s assigned to the token, so a token can never act outside the Account it belongs to or beyond the permissions granted to it (preamble §2.1a and §67). A token is created by an administrator when an integration needs programmatic access, and its secret credential is used thereafter to authenticate every call the integration makes.


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
      <td>*Gated by holding the Access Management permission within the token&#39;s Account, not by Actor type (preamble &#167;2.1a). Scoped to tokens in the Vendor&#39;s own Account. See BR-003, BR-004.</td>
    </tr>
    <tr>
      <td>Operations</td>
      <td>Yes*</td>
      <td>Yes</td>
      <td>Yes*</td>
      <td>Yes*</td>
      <td>*Same permission gating. With Platform Account Management, Operations manages and reads tokens across Accounts; with Platform Account Management plus Access Management it also sees tokens in Operations Accounts. See BR-004.</td>
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
            <td>Platform identifier, `TKN-NNNN-NNNN`.—</td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>PlatformObjectAudit</td>
	        <td></td>
	        <td></td>
            <td>Created/updated (and enabled/disabled) event metadata with acting identity.Omitted by default — request via `select=+audit`</td>
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
            <td>Human-readable label for the token.Required; max 200 chars; restricted charset (BR-006)</td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>Optional URL of a custom image for the token.Optional; no server-generated default is produced when absent (this object is not in the preamble §9 jdenticon set). Absent from response when null</td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>Monotonic revision counter.Increments on change</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Lifecycle state.Values: `Active`, `Disabled`, `Deleted`. `Deleted` is internal and not reachable on a readable token for Vendor/Client (BR-009)</td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Free-text description of the token's purpose.Optional; max 2000 chars. Absent from response when null</td>
        </tr>
        <tr>
            <td><code>lastAccessAt</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Approximate timestamp of the token's most recent authenticated access.Updated only when the token's session token is refreshed, so it is approximate, not per-call. Absent from response when null</td>
        </tr>
        <tr>
            <td><code>token</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The authentication secret used to call the API as this token.Form `idt:<id>:<opaque value>`. Generated once at creation and not regenerable (BR-005). Returned in full on read as well as at creation, by design (BR-011) — see Section 9</td>
        </tr>
        <tr>
            <td><code>account</code></td>
            <td>AccountRef</td>
	        <td></td>
	        <td></td>
            <td>The owning [[Account]].Set at creation from the request; immutable (BR-001)</td>
        </tr>
        <tr>
            <td><code>modules</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The Modules that define the token's granular permission scope.See BR-002. Can also narrow automatically when the Account's Modules change (BR-007)</td>
        </tr>
        <tr>
            <td><code>extensions</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The Extensions the token may act through.Null = all Extensions; empty = none; populated = only those listed (BR-010). Absent from response when null. Extensions are not yet canonised</td>
        </tr></tbody>
</table>


## Downstream models
### AccountRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>AccountType</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Client,Vendor,Operations</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AccountStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Active,Enabled,Disabled</td>
        </tr>
    </tbody>
</table>

### Filters



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>group.buyers</code></td>
            <td>array</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### ModuleRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>filters</code></td>
            <td>Filters</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>settings</code></td>
            <td>ModuleSettings</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### ModuleSettings



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>sharedAccount</code></td>
            <td>boolean</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>configurable</code></td>
            <td>boolean</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>default</code></td>
            <td>boolean</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>paid</code></td>
            <td>boolean</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>array</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>obsolete</code></td>
            <td>boolean</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>eligibility</code></td>
            <td>ModuleSettingsEligibility</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### ModuleSettingsEligibility



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>multi</code></td>
            <td>boolean</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>single</code></td>
            <td>boolean</td>
	        <td></td>
	        <td></td>
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
	        <th>Core</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
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
	        <th>Core</th>
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
	        <th>Core</th>
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

### PlatformObjectAuditPlatformExtension



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>PlatformObjectAudit</td>
	        <td></td>
	        <td></td>
            <td></td>
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
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
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
	        <th>Core</th>
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
