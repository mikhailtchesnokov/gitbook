
## Statement


### IdPrefix 
SOM

### Description
A Statement is the client-facing billing document the platform's billing pipeline produces from a [[Ledger]] (or, for manually-uploaded billing, a Custom Ledger — not yet canonised), scoped to exactly one Commerce: [[Agreement]]. Its net total determines its type — Debit (zero or positive, becoming an ERP Sales Order and, once posted, an [[Invoice]]) or Credit (negative, becoming an ERP [[Credit Memo]]) — and its per-line detail is exposed as a separate child [[Charge]] collection rather than an embedded array. A Statement can also be a Consolidated grouping — an Operations-created shell that rolls several existing standalone Statements together into a single ERP posting. Clients read their own Statements; every action on a Statement, including its own creation, is restricted to the Operations Actor.


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
      <td>The Statement endpoint&#39;s access policy excludes the Vendor Actor entirely — a Vendor token is refused before any action executes (confirmed via a live PROD fetch: HTTP 403).</td>
    </tr>
    <tr>
      <td>Operations</td>
      <td>Yes (Consolidated only)</td>
      <td>Yes</td>
      <td>Yes (limited fields)</td>
      <td>No</td>
      <td>The only Actor that can create a Statement (a Consolidated grouping shell — see BR-005) and the only Actor permitted any Statement action, including every state transition. No delete endpoint exists.</td>
    </tr>
    <tr>
      <td>Client</td>
      <td>No</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td>Can read its own Statements (a token is accepted for the endpoint generally), but every mutating action — including update — is rejected: all Statement actions are Operations-only. See BR-004.</td>
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
            <td>StatementAuditBag</td>
	        <td></td>
	        <td></td>
            <td>Represents a container for audit-related events for a statementCreated and updated events plus a per-status event history.Records the timestamp and Actor for the most recent entry into each status</td>
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
            <td>The unique identifier of the statement.Unique identifier, format `SOM-NNNN-NNNN-NNNN-NNNN`.—</td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>StatementExternalIds</td>
	        <td></td>
	        <td></td>
            <td>Contains external identifiers associated with the statement.Operations, Vendor, ERP, and Client reference identifiers.Absent from response when null</td>
        </tr>
        <tr>
            <td><code>ledger</code></td>
            <td>LedgerRef</td>
	        <td></td>
	        <td></td>
            <td>The source Ledger, for an Automated Statement.Null for Manual and Consolidated Statements</td>
        </tr>
        <tr>
            <td><code>customLedger</code></td>
            <td>CustomLedgerRef</td>
	        <td></td>
	        <td></td>
            <td>The source Custom Ledger, for a Manual Statement.Null for Automated and Consolidated Statements. Custom Ledger not yet canonised</td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>StatementType</td>
	        <td></td>
	        <td></td>
            <td>Specifies the type of the statement.Debit or Credit.Derived from the sign of the net total. See BR-002. Allowed values: Debit,Credit</td>
        </tr>
        <tr>
            <td><code>billingType</code></td>
            <td>BillingType</td>
	        <td></td>
	        <td></td>
            <td>Specifies the billing type of the statement.Automated, Manual, or Consolidated.Fixes which creation path produced the Statement (see T1) and governs the add/remove-child rules (BR-008). Allowed values: Automated,Manual,Consolidated</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>StatementStatus</td>
	        <td></td>
	        <td></td>
            <td>Indicates the current status of the statement.Current lifecycle state — one of the Section 3.1 states.Changes only through Section 3.2 transitions, never by a direct field write. Allowed values: Generated,Queued,Error,Cancelled,Pending,Issued,Generating,Consolidating,Consolidated</td>
        </tr>
        <tr>
            <td><code>client</code></td>
            <td>AccountRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>buyer</code></td>
            <td>BuyerRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>AccountRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>seller</code></td>
            <td>SellerRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td>ProductRef</td>
	        <td></td>
	        <td></td>
            <td>The Product being billed.Null for a Consolidated shell</td>
        </tr>
        <tr>
            <td><code>agreement</code></td>
            <td>AgreementRef</td>
	        <td></td>
	        <td></td>
            <td>The Agreement the Statement is scoped to.Null for a Consolidated shell — see BR-001</td>
        </tr>
        <tr>
            <td><code>licensee</code></td>
            <td>LicenseeRef</td>
	        <td></td>
	        <td></td>
            <td>The Licensee consuming the service.—</td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>StatementPriceSummary</td>
	        <td></td>
	        <td></td>
            <td>Contains the pricing summary for the statement.Pricing summary: currency (purchase, sale, rate), totalPP, totalSP, totalBSP, markup, margin.markup, margin, totalPP, and purchase currency/rate are Operations-only; totalSP/totalBSP and sale currency are Client/Operations. Recalculated on every re-enrichment and on every add/remove-child. See BR-012</td>
        </tr>
        <tr>
            <td><code>processing</code></td>
            <td>ProcessingSummary</td>
	        <td></td>
	        <td></td>
            <td>Contains the processing summary for the statement, visible to operations.Processing summary: total, ready, error, split, skipped, ignored counts.Operations-only</td>
        </tr>
        <tr>
            <td><code>statusNotes</code></td>
            <td>BillingParametrisedMessage</td>
	        <td></td>
	        <td></td>
            <td>Contains additional notes or messages about the status of the statement, if applicable.A message and parameters describing the current status.The message is required when transitioning to Error. Absent from response when null</td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td>BillingError</td>
	        <td></td>
	        <td></td>
            <td>Represents any error associated with the statement, visible to clients or operations</td>
        </tr>
        <tr>
            <td><code>creditMemo</code></td>
            <td>CreditMemoRef</td>
	        <td></td>
	        <td></td>
            <td>The downstream ERP Credit Memo, once created.Populated only for a Credit-type Statement</td>
        </tr>
        <tr>
            <td><code>invoice</code></td>
            <td>InvoiceRef</td>
	        <td></td>
	        <td></td>
            <td>The downstream ERP Sales Order/Invoice, once created.Populated only for a Debit-type Statement</td>
        </tr>
        <tr>
            <td><code>backup</code></td>
            <td>BackupDetails</td>
	        <td></td>
	        <td></td>
            <td>Backup details for the statement.Status and date of the Statement's data export/backup.Operations-only</td>
        </tr>
        <tr>
            <td><code>parent</code></td>
            <td>StatementRef</td>
	        <td></td>
	        <td></td>
            <td>The Consolidated parent Statement this Statement is linked to, if any.Set by add-child, cleared by remove-child or by the parent's own cancel. See T16/T17/T19/T20</td>
        </tr>
        <tr>
            <td><code>statistics</code></td>
            <td>StatementStatistics</td>
	        <td></td>
	        <td></td>
            <td>Statistics to summarize the composition of a statement.Counts of distinct child Statements, Products, Agreements, and Licensees — Consolidated parent only.Client/Operations visible. Recalculated on every add/remove-child</td>
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

### AgreementRef



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
            <td><code>status</code></td>
            <td>AgreementStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: New,Draft,Provisioning,Updating,Active,Terminated,Failed,Deleted</td>
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

### BillingParametrisedMessage

Represents a message with associated parameters for use in parameterized communication or formatting scenarios.

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
            <td><code>message</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>Gets the message associated with the current object</td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>object</td>
	        <td></td>
	        <td></td>
            <td>Gets the parameters associated with the current request or operation</td>
        </tr>
    </tbody>
</table>

### BuyerRef



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

### CreditMemoRef

Represents a credit memo in the billing system.

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
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>The unique identifier of the credit memo</td>
        </tr>
    </tbody>
</table>

### CustomLedgerRef

Represents a custom ledger in the billing system.

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
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>The unique identifier of the custom ledger</td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>Name of the custom ledger</td>
        </tr>
    </tbody>
</table>

### InvoiceRef

Represents an invoice entity in the billing system.

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
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>The unique identifier of the invoice</td>
        </tr>
    </tbody>
</table>

### LedgerRef

Represents a ledger in the billing system.

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
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>The unique identifier of the ledger</td>
        </tr>
    </tbody>
</table>

### LicenseeRef



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

### PriceCurrency

Represents the currency details for pricing, including purchase and sale values.

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
            <td><code>purchase</code></td>
            <td>string</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td>Indicates the purchase price currency visible to vendors or operations</td>
        </tr>
        <tr>
            <td><code>sale</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,ops</td>
            <td>Indicates the sale price currency visible to clients or operations</td>
        </tr>
        <tr>
            <td><code>rate</code></td>
            <td>number</td>
	        <td></td>
	        <td>ops</td>
            <td>Exchange rate between the purchase and sale currencies</td>
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

### StatementAuditBag

Represents a container for audit-related events for a statement

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
            <td><code>generated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the statement reached the "Generated" status</td>
        </tr>
        <tr>
            <td><code>queued</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the statement reached the "Queued" status</td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the statement reached the "Error" status</td>
        </tr>
        <tr>
            <td><code>cancelled</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the statement reached the "Cancelled" status</td>
        </tr>
        <tr>
            <td><code>pending</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the statement reached the "Pending" status</td>
        </tr>
        <tr>
            <td><code>issued</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the statement reached the "Issued" status</td>
        </tr>
        <tr>
            <td><code>generating</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the statement reached the "Generating" status</td>
        </tr>
        <tr>
            <td><code>consolidating</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the statement reached the "Consolidating" status</td>
        </tr>
        <tr>
            <td><code>consolidated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the statement reached the "Consolidated" status</td>
        </tr>
    </tbody>
</table>

### StatementExternalIds

Represents external identifiers associated with a billing statement.

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
        <tr>
            <td><code>erpId</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>Represents the identifier used in the ERP system for the statement, if applicable</td>
        </tr>
        <tr>
            <td><code>client</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>Represents the identifier used for clients in the billing system</td>
        </tr>
    </tbody>
</table>

### StatementPriceSummary

Represents a detailed summary of pricing for a billing statement, including currency and totals.

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
            <td>PriceCurrency</td>
	        <td></td>
	        <td></td>
            <td>Specifies the currency details for the pricing, including purchase and sale values</td>
        </tr>
        <tr>
            <td><code>totalSP</code></td>
            <td>number</td>
	        <td></td>
	        <td>client,ops</td>
            <td>Represents the total sale price</td>
        </tr>
    </tbody>
</table>

### StatementRef

Represents a billing statement in the system, containing details about transactions, pricing, and associated entities.

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
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>The unique identifier of the statement</td>
        </tr>
    </tbody>
</table>

### StatementStatistics

Counts of key dimensions derived from child statements, recalculated on consolidation changes.

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
            <td><code>statements</code></td>
            <td>integer</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Gets or sets the count of child statements</td>
        </tr>
        <tr>
            <td><code>products</code></td>
            <td>integer</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Gets or sets the count of distinct products across child statements</td>
        </tr>
        <tr>
            <td><code>agreements</code></td>
            <td>integer</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Gets or sets the count of distinct agreements across child statements</td>
        </tr>
        <tr>
            <td><code>licensees</code></td>
            <td>integer</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Gets or sets the count of distinct licensees across child statements</td>
        </tr>
    </tbody>
</table>
