
## Journal


### IdPrefix 
BJO

### Description
A Journal is the entry point of the platform's billing pipeline: the normalized set of billing charges a Vendor submits for one [[Authorization]] and one billing period. A Vendor creates it in the scope of a single [[Authorization]], which fixes the Vendor [[Account]], the [[Product]], the owning [[Seller]], the currency, and the submission cadence; the Vendor then uploads charge data, which the platform validates and enriches with matched commercial identities. Once the Vendor submits the Journal to SoftwareOne, the Operations Actor reviews it and either returns it to the Vendor for clarification or accepts it. Accepting a Journal rates its charges into one [[Ledger]] per Seller, and the Journal completes automatically when all of its Ledgers complete.


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
      <td>Yes</td>
      <td>Yes</td>
      <td>Yes</td>
      <td>Yes</td>
      <td>Creates the Journal, uploads charge data, and submits it to SoftwareOne. Cannot see sell-side pricing (markup, margin, total sale price), the processing summary, or the backup summary. Delete is state-guarded — see BR-011.</td>
    </tr>
    <tr>
      <td>Operations</td>
      <td>No</td>
      <td>Yes</td>
      <td>Yes</td>
      <td>No</td>
      <td>Cannot create or delete a Journal. Reviews and adjudicates a submitted Journal — return to vendor (enquiry), accept, regenerate, recalculate, reset — and may re-upload charge data. Full field visibility.</td>
    </tr>
    <tr>
      <td>Client</td>
      <td>No</td>
      <td>No</td>
      <td>No</td>
      <td>No</td>
      <td>A Journal is never readable by the Client Actor (BR-015); client-facing billing figures surface downstream via the Statement, not the Journal.</td>
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
            <td><code>audit</code></td>
            <td>JournalAuditBag</td>
	        <td></td>
	        <td></td>
            <td>Represents a container for audit-related events for a journalCreated/updated events plus a per-status event history (Draft, Validating, Validated, Error, Review, Enquiring, Generating, Generated, Accepted, Completed, Deleted).—</td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>Monotonic revision counter.Increments on each change</td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>The unique identifier of the journal entry.Unique identifier, format `BJO-NNNN-NNNN`.—</td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>Name of the journal.Human-readable Journal name.Required at creation</td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>A description of the journal entry.Free-text description of the Journal.Absent from response when null</td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>BillingExternalIds</td>
	        <td></td>
	        <td></td>
            <td>External identifiers associated with the journal entry</td>
        </tr>
        <tr>
            <td><code>notes</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Additional notes or comments about the journal entry.Additional notes or comments.Absent from response when null</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>JournalStatus</td>
	        <td></td>
	        <td></td>
            <td>The current status of the journal entry.Current lifecycle state — one of the Section 3.1 states.Changes only through the Section 3.2 transitions, never by a direct field write. Allowed values: Draft,Deleted,Error,Validating,Validated,Review,Reconciling,Enquiring,Generating,Generated,Accepted,Queued,Completed,Resetting</td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>AccountRef</td>
	        <td></td>
	        <td></td>
            <td>The Vendor Account.Derived from the Authorization</td>
        </tr>
        <tr>
            <td><code>owner</code></td>
            <td>SellerRef</td>
	        <td></td>
	        <td></td>
            <td>The owning Seller — always the Authorization's Seller.The Journal's charges may span multiple Sellers, each of which yields a Ledger on accept</td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td>ProductRef</td>
	        <td></td>
	        <td></td>
            <td>The Product being billed.Derived from the Authorization</td>
        </tr>
        <tr>
            <td><code>authorization</code></td>
            <td>AuthorizationRef</td>
	        <td></td>
	        <td></td>
            <td>The Authorization the Journal is billed under.Required at creation; fixes vendor, product, owner, and currency — see BR-001</td>
        </tr>
        <tr>
            <td><code>dueDate</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>The due date for the journal entry.The billing due date for the period.Cadence is defined by the Authorization</td>
        </tr>
        <tr>
            <td><code>assignee</code></td>
            <td>PlatformIdentityRef</td>
	        <td></td>
	        <td></td>
            <td>The Operations reviewer assigned to the Journal.Operations-set only. Absent from response when null</td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>JournalPriceSummary</td>
	        <td></td>
	        <td></td>
            <td>Pricing details associated with the journal entry.Pricing summary: currency, total purchase price (totalPP), total sale price in buyer currency (totalBSP), markup, margin.markup and margin are Operations-only; totalBSP is not visible to the Vendor; totalPP and currency are visible to the Vendor. Recalculated on each processing run. See BR-014</td>
        </tr>
        <tr>
            <td><code>upload</code></td>
            <td>JournalUploadSummary</td>
	        <td></td>
	        <td></td>
            <td>Upload summary details for the journal entry, visible to vendors or operations.Upload summary: total, split, ready, error counts from the latest upload.Visible to Vendor and Operations</td>
        </tr>
        <tr>
            <td><code>processing</code></td>
            <td>ProcessingSummary</td>
	        <td></td>
	        <td></td>
            <td>Processing status and related details for the journal entry, visible to operations.Processing summary: total, ready, error, split, skipped, ignored counts.Visible to Operations only; omitted for the Vendor</td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td>BillingError</td>
	        <td></td>
	        <td></td>
            <td>Error details associated with the journal entry, if any</td>
        </tr>
        <tr>
            <td><code>backup</code></td>
            <td>BackupDetails</td>
	        <td></td>
	        <td></td>
            <td>Backup details for the journal.Backup summary: status and date of the Journal's data backup.Visible to Operations only</td>
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

### AuthorizationRef



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
            <td><code>currency</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### BackupDetails

Represents the details of a backup operation, including its status and date.

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
            <td><code>status</code></td>
            <td>BackupStatus</td>
	        <td></td>
	        <td></td>
            <td>Status of the backup. Allowed values: Pending,Exporting,Exported,Verifying,Completed,Failed,Skipped</td>
        </tr>
        <tr>
            <td><code>date</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Date and time of the backup action, if available</td>
        </tr>
    </tbody>
</table>

### BillingError

Represents an error related to a billing entity.

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
            <td><code>errorCode</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Represents the error code associated with the billing entity</td>
        </tr>
        <tr>
            <td><code>errorMessage</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Represents the error message providing details about the issue</td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Represents the unique identifier for the error, if applicable</td>
        </tr>
        <tr>
            <td><code>message</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Represents the detailed message associated with the error, if applicable</td>
        </tr>
    </tbody>
</table>

### BillingExternalIds

Represents external identifiers associated with billing entities.

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
            <td><code>operations</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>Represents the identifier used for operations in the billing system</td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>Represents the identifier used for vendors in the billing system</td>
        </tr>
    </tbody>
</table>

### JournalAuditBag

Represents a container for audit-related events for a journal

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
        <tr>
            <td><code>draft</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the journal reached the "Draft" status</td>
        </tr>
        <tr>
            <td><code>deleted</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the journal reached the "Deleted" status</td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the journal reached the "Error" status</td>
        </tr>
        <tr>
            <td><code>validating</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the journal reached the "Validating" status</td>
        </tr>
        <tr>
            <td><code>validated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the journal reached the "Validated" status</td>
        </tr>
        <tr>
            <td><code>review</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the journal reached the "Review" status</td>
        </tr>
        <tr>
            <td><code>enquiring</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the journal reached the "Enquiring" status</td>
        </tr>
        <tr>
            <td><code>generating</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the journal reached the "Generating" status</td>
        </tr>
        <tr>
            <td><code>generated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the journal reached the "Generated" status</td>
        </tr>
        <tr>
            <td><code>accepted</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the journal reached the "Accepted" status</td>
        </tr>
        <tr>
            <td><code>completed</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the journal reached the "Completed" status</td>
        </tr>
    </tbody>
</table>

### JournalPriceSummary

Represents a detailed summary of pricing.

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
            <td><code>markup</code></td>
            <td>number</td>
	        <td></td>
	        <td>ops</td>
            <td>Represents the markup value applied to the pricing</td>
        </tr>
        <tr>
            <td><code>margin</code></td>
            <td>number</td>
	        <td></td>
	        <td>ops</td>
            <td>Represents the margin value calculated for the pricing</td>
        </tr>
        <tr>
            <td><code>totalPP</code></td>
            <td>number</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td>Represents the total purchase price</td>
        </tr>
        <tr>
            <td><code>totalBSP</code></td>
            <td>number</td>
	        <td></td>
	        <td>client,ops</td>
            <td>Represents the total sale price in buyer currency</td>
        </tr>
        <tr>
            <td><code>currency</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,ops</td>
            <td>Specifies the currency for the pricing</td>
        </tr>
    </tbody>
</table>

### JournalUploadSummary

Represents a summary of the upload status for a journal entry.

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
            <td><code>total</code></td>
            <td>integer</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The total number of items in the upload</td>
        </tr>
        <tr>
            <td><code>split</code></td>
            <td>integer</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The number of items that were split during the upload</td>
        </tr>
        <tr>
            <td><code>ready</code></td>
            <td>integer</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The number of items that are ready for processing</td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td>integer</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The number of items that encountered errors during the upload</td>
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

### ProcessingSummary

Represents a summary of the processing status for various billing operations.

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
            <td><code>total</code></td>
            <td>integer</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Indicates the total number of items involved in the processing</td>
        </tr>
        <tr>
            <td><code>ready</code></td>
            <td>integer</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Indicates the number of items that are ready for further processing</td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td>integer</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Indicates the number of items that encountered errors during processing</td>
        </tr>
        <tr>
            <td><code>split</code></td>
            <td>integer</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Indicates the number of items that were split into multiple parts during processing</td>
        </tr>
        <tr>
            <td><code>skipped</code></td>
            <td>integer</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Indicates the number of items that were skipped during processing</td>
        </tr>
        <tr>
            <td><code>ignored</code></td>
            <td>integer</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Indicates the number of items that were manually ignored</td>
        </tr>
    </tbody>
</table>

### ProductExternalIdBag



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
            <td><code>operations</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultErpItem</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### ProductRef



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
            <td><code>externalIds</code></td>
            <td>ProductExternalIdBag</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### SellerRef



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
            <td><code>externalId</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>
