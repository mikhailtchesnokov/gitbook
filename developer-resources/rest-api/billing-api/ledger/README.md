
## Ledger


### IdPrefix 
BLE

### Description
A Ledger is the per-Seller rating output of the platform's billing pipeline, sitting between the [[Journal]] and the [[Statement]] (the pipeline is Journal → Ledger → Statement). When the Operations Actor accepts a [[Journal]], the platform generates one Ledger for each [[Seller]] whose [[Charge]] entries appear in that Journal, and rates those charges into the Ledger scoped to that one Seller. A Ledger inherits its [[Authorization]], [[Product]], owning [[Seller]], and currency from its parent Journal; it carries the rated pricing roll-ups and a processing summary for its slice of the Journal's charges. Operations reviews each rated Ledger and accepts it, which produces the client-facing Statements; the Ledger then queues for ERP integration and completes automatically once all of its Statements complete. A Ledger is not created or deleted directly through the API — it exists only as a consequence of its Journal's lifecycle.


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
      <td>No</td>
      <td>No</td>
      <td>No</td>
      <td>The Ledger endpoint is Operations-only; a Vendor request is refused. See BR-003.</td>
    </tr>
    <tr>
      <td>Operations</td>
      <td>No</td>
      <td>Yes</td>
      <td>Yes</td>
      <td>No</td>
      <td>Cannot create or delete a Ledger — creation is a side effect of accepting the parent Journal, and there is no delete endpoint. Reviews, accepts, queues, and recalculates a Ledger, and may set the assignee (the only field a PUT changes — BR-004). Full field visibility.</td>
    </tr>
    <tr>
      <td>Client</td>
      <td>No</td>
      <td>No</td>
      <td>No</td>
      <td>No</td>
      <td>The Ledger endpoint is Operations-only; a Client request is refused. See BR-003.</td>
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
            <td><a href="#ledgerauditbag">LedgerAuditBag</a </td>
	        <td></td>
	        <td></td>
            <td>Represents a container for audit-related events for a ledgerCreated and updated events plus a per-status event history (Rating, Error, Review, Generating, Generated, Queued, Completed).Records the timestamp and Actor for the most recent entry into each status</td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td><a href="#platformmetadata">PlatformMetadata</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td> integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>Monotonic revision counter.Increments on each change</td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>The unique identifier of the ledger.Unique identifier, format `BLE-NNNN-NNNN-NNNN-NNNN`.Deterministic per (parent Journal, Seller) pair</td>
        </tr>
        <tr>
            <td><code>journal</code></td>
            <td><a href="#journalref">JournalRef</a </td>
	        <td></td>
	        <td></td>
            <td>The parent Journal this Ledger was generated from.Fixes the Ledger's scope — see BR-002</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td> LedgerStatus</td>
	        <td></td>
	        <td></td>
            <td>The current status of the ledger.Current lifecycle state — one of the Section 3.1 states.Changes only through the Section 3.2 transitions, never by a direct field write. Allowed values: Rating,Error,Review,Generating,Generated,Queued,Completed</td>
        </tr>
        <tr>
            <td><code>authorization</code></td>
            <td><a href="#authorizationref">AuthorizationRef</a </td>
	        <td></td>
	        <td></td>
            <td>The Authorization the billing is under, inherited from the Journal.Carries the currency</td>
        </tr>
        <tr>
            <td><code>owner</code></td>
            <td><a href="#sellerref">SellerRef</a </td>
	        <td></td>
	        <td></td>
            <td>The owning Seller — the parent Journal's owning Seller.See BR-002</td>
        </tr>
        <tr>
            <td><code>seller</code></td>
            <td><a href="#sellerref">SellerRef</a </td>
	        <td></td>
	        <td></td>
            <td>The Seller this Ledger is scoped to.Each distinct Seller in the Journal yields one Ledger — see BR-001</td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td><a href="#productref">ProductRef</a </td>
	        <td></td>
	        <td></td>
            <td>The Product being billed, inherited from the Journal.—</td>
        </tr>
        <tr>
            <td><code>assignee</code></td>
            <td><a href="#platformidentityref">PlatformIdentityRef</a </td>
	        <td></td>
	        <td></td>
            <td>The Operations reviewer assigned to the Ledger.The only field a PUT changes (BR-004). Operations-set only. Absent from response when null</td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td><a href="#ledgerpricesummary">LedgerPriceSummary</a </td>
	        <td></td>
	        <td></td>
            <td>Pricing details associated with the ledger.Pricing roll-up for the Ledger: currency, total purchase price (totalPP), total buyer sale price (totalBSP), markup, margin.markup and margin are Operations-only; per the schema totalPP is Vendor/Operations and totalBSP/currency are Client/Operations, but Ledger read is Operations-only by design (BR-003), so only Operations reaches them in practice. Recalculated on each rating run. See BR-010</td>
        </tr>
        <tr>
            <td><code>processing</code></td>
            <td><a href="#processingsummary">ProcessingSummary</a </td>
	        <td></td>
	        <td></td>
            <td>Processing status and related details for the ledger, visible to operations.Processing summary for the Ledger's charges: total, ready, error, split, skipped, ignored counts.Visible to Operations only</td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td><a href="#billingerror">BillingError</a </td>
	        <td></td>
	        <td></td>
            <td>Error details associated with the ledger, if any</td>
        </tr>
        <tr>
            <td><code>backup</code></td>
            <td><a href="#backupdetails">BackupDetails</a </td>
	        <td></td>
	        <td></td>
            <td>Backup details for the ledger.Backup summary: status and date of the Ledger's data backup.Visible to Operations only. `status` is one of Pending, Exporting, Exported, Verifying, Completed, Failed, Skipped</td>
        </tr></tbody>
</table>


## Downstream models
### AuthorizationRef



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
            <td><code>revision</code></td>
            <td> integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>currency</code></td>
            <td> string</td>
	        <td><code>core</code></td>
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
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>status</code></td>
            <td> BackupStatus</td>
	        <td></td>
	        <td></td>
            <td>Status of the backup. Allowed values: Pending,Exporting,Exported,Verifying,Completed,Failed,Skipped</td>
        </tr>
        <tr>
            <td><code>date</code></td>
            <td> string</td>
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
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>errorCode</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Represents the error code associated with the billing entity</td>
        </tr>
        <tr>
            <td><code>errorMessage</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Represents the error message providing details about the issue</td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Represents the unique identifier for the error, if applicable</td>
        </tr>
        <tr>
            <td><code>message</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Represents the detailed message associated with the error, if applicable</td>
        </tr>
    </tbody>
</table>

### JournalRef

Represents a journal entry in the billing system.

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
            <td><code>revision</code></td>
            <td> integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>The unique identifier of the journal entry</td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>Name of the journal</td>
        </tr>
        <tr>
            <td><code>dueDate</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>The due date for the journal entry</td>
        </tr>
    </tbody>
</table>

### LedgerAuditBag

Represents a container for audit-related events for a ledger

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
            <td><code>rating</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the ledger reached the "Rating" status</td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the ledger reached the "Error" status</td>
        </tr>
        <tr>
            <td><code>review</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the ledger reached the "Review" status</td>
        </tr>
        <tr>
            <td><code>generating</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the ledger reached the "Generating" status</td>
        </tr>
        <tr>
            <td><code>generated</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the ledger reached the "Generated" status</td>
        </tr>
        <tr>
            <td><code>queued</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the ledger reached the "Queued" status</td>
        </tr>
        <tr>
            <td><code>completed</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the ledger reached the "Completed" status</td>
        </tr>
    </tbody>
</table>

### LedgerPriceSummary

Represents a detailed summary of pricing for a ledger.

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
            <td><code>markup</code></td>
            <td> number</td>
	        <td></td>
	        <td>ops</td>
            <td>Represents the markup value applied to the pricing</td>
        </tr>
        <tr>
            <td><code>margin</code></td>
            <td> number</td>
	        <td></td>
	        <td>ops</td>
            <td>Represents the margin value calculated for the pricing</td>
        </tr>
        <tr>
            <td><code>totalPP</code></td>
            <td> number</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td>Represents the total purchase price</td>
        </tr>
        <tr>
            <td><code>totalBSP</code></td>
            <td> number</td>
	        <td></td>
	        <td>client,ops</td>
            <td>Represents the total sale price in buyer currency</td>
        </tr>
        <tr>
            <td><code>currency</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,ops</td>
            <td>Specifies the currency for the pricing</td>
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

### ProcessingSummary

Represents a summary of the processing status for various billing operations.

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
            <td><code>total</code></td>
            <td> integer</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Indicates the total number of items involved in the processing</td>
        </tr>
        <tr>
            <td><code>ready</code></td>
            <td> integer</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Indicates the number of items that are ready for further processing</td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td> integer</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Indicates the number of items that encountered errors during processing</td>
        </tr>
        <tr>
            <td><code>split</code></td>
            <td> integer</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Indicates the number of items that were split into multiple parts during processing</td>
        </tr>
        <tr>
            <td><code>skipped</code></td>
            <td> integer</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Indicates the number of items that were skipped during processing</td>
        </tr>
        <tr>
            <td><code>ignored</code></td>
            <td> integer</td>
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
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>operations</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultErpItem</code></td>
            <td> string</td>
	        <td><code>core</code></td>
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
            <td><code>externalIds</code></td>
            <td><a href="#productexternalidbag">ProductExternalIdBag</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td> string</td>
	        <td><code>core</code></td>
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
            <td><code>externalId</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>
