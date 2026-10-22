
## Service


### IdPrefix 
SVC

### Description
A Service is the platform's identity for an internal, non-human component (for example, the billing or scheduler component). It sits alongside the human identity ([[User]]) and the programmatic identity ([[API Token]]) as one of the platform's identity types, so that actions performed autonomously by an internal component can be attributed to a named identity in the audit trail. Service identities are provisioned and maintained by the platform itself, not by any Actor; the public API exposes them as read-only reference data.


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
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td>Read access via the public list and get-by-id endpoints.</td>
    </tr>
    <tr>
      <td>Operations</td>
      <td>No</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td>No elevated authority over this object — same read-only access as other Actors.</td>
    </tr>
    <tr>
      <td>Client</td>
      <td>No</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td>Read access via the public list and get-by-id endpoints.</td>
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
            <td>Unique identifier, prefixed `SVC-`.Read-only</td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>PlatformObjectAudit</td>
	        <td></td>
	        <td></td>
            <td>Creation and last-modification events, each with a timestamp and the attributed identity.Omitted by default — request via `select=+audit`. Contains `created` and `updated`</td>
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
            <td>Human-readable name of the internal component (e.g. `platform`, `scheduler`, `Billing`).—</td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>Reference to a visual identity image for the component (see preamble §9).Nullable; null in observed data. Absent from response when null</td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>Monotonic revision counter for the record.Increments on internal modification</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Lifecycle status of the Service.Enum: `Active`, `Deleted`. No public transition — see Section 3</td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Free-text description of the component's purpose.Nullable. Absent from response when null</td>
        </tr></tbody>
</table>


## Downstream models
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
