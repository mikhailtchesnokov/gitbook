
## Statement

Represents a billing statement in the system, containing details about transactions, pricing, and associated entities.

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
            <td><code>audit</code></td>
            <td>StatementAuditBag</td>
            <td>Represents a container for audit-related events for a statement</td>
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
            <td><code>id</code></td>
            <td>string</td>
            <td>The unique identifier of the statement.</td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>StatementExternalIds</td>
            <td>Contains external identifiers associated with the statement.</td>
        </tr>
        <tr>
            <td><code>ledger</code></td>
            <td>LedgerRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>customLedger</code></td>
            <td>CustomLedgerRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>StatementType</td>
            <td>Specifies the type of the statement.Allowed values: Debit,Credit</td>
        </tr>
        <tr>
            <td><code>billingType</code></td>
            <td>BillingType</td>
            <td>Specifies the billing type of the statement.Allowed values: Automated,Manual,Consolidated</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>StatementStatus</td>
            <td>Indicates the current status of the statement.Allowed values: Generated,Queued,Error,Cancelled,Pending,Issued,Generating,Consolidating,Consolidated</td>
        </tr>
        <tr>
            <td><code>client</code></td>
            <td>AccountRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>buyer</code></td>
            <td>BuyerRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>AccountRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>seller</code></td>
            <td>SellerRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td>ProductRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>agreement</code></td>
            <td>AgreementRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>licensee</code></td>
            <td>LicenseeRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>StatementPriceSummary</td>
            <td>Contains the pricing summary for the statement.</td>
        </tr>
        <tr>
            <td><code>processing</code></td>
            <td>ProcessingSummary</td>
            <td>Contains the processing summary for the statement, visible to operations.</td>
        </tr>
        <tr>
            <td><code>statusNotes</code></td>
            <td>BillingParametrisedMessage</td>
            <td>Contains additional notes or messages about the status of the statement, if applicable.</td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td>BillingError</td>
            <td>Represents any error associated with the statement, visible to clients or operations.</td>
        </tr>
        <tr>
            <td><code>creditMemo</code></td>
            <td>CreditMemoRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>invoice</code></td>
            <td>InvoiceRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>backup</code></td>
            <td>BackupDetails</td>
            <td>Backup details for the statement.</td>
        </tr>
        <tr>
            <td><code>parent</code></td>
            <td>StatementRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>statistics</code></td>
            <td>StatementStatistics</td>
            <td>Statistics to summarize the composition of a statement.</td>
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

## AgreementRef



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
            <td><code>status</code></td>
            <td>AgreementStatus</td>
            <td>Allowed values: New,Draft,Provisioning,Updating,Active,Terminated,Failed,Deleted</td>
        </tr>
    </tbody>
</table>

## BackupDetails

Represents the details of a backup operation, including its status and date.

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
            <td><code>status</code></td>
            <td>BackupStatus</td>
            <td>Status of the backup.Allowed values: Pending,Exporting,Exported,Verifying,Completed,Failed,Skipped</td>
        </tr>
        <tr>
            <td><code>date</code></td>
            <td>string</td>
            <td>Date and time of the backup action, if available.</td>
        </tr>
    </tbody>
</table>

## BillingError

Represents an error related to a billing entity.

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
            <td><code>errorCode</code></td>
            <td>string</td>
            <td>Represents the error code associated with the billing entity.</td>
        </tr>
        <tr>
            <td><code>errorMessage</code></td>
            <td>string</td>
            <td>Represents the error message providing details about the issue.</td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td>Represents the unique identifier for the error, if applicable.</td>
        </tr>
        <tr>
            <td><code>message</code></td>
            <td>string</td>
            <td>Represents the detailed message associated with the error, if applicable.</td>
        </tr>
    </tbody>
</table>

## BillingParametrisedMessage

Represents a message with associated parameters for use in parameterized communication or formatting scenarios.

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
            <td><code>message</code></td>
            <td>string</td>
            <td>Gets the message associated with the current object.</td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>object</td>
            <td>Gets the parameters associated with the current request or operation.</td>
        </tr>
    </tbody>
</table>

## BuyerRef



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

## CreditMemoRef

Represents a credit memo in the billing system.

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
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td>The unique identifier of the credit memo.</td>
        </tr>
    </tbody>
</table>

## CustomLedgerRef

Represents a custom ledger in the billing system.

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
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td>The unique identifier of the custom ledger.</td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td>Name of the custom ledger.</td>
        </tr>
    </tbody>
</table>

## InvoiceRef

Represents an invoice entity in the billing system.

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
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td>The unique identifier of the invoice.</td>
        </tr>
    </tbody>
</table>

## LedgerRef

Represents a ledger in the billing system.

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
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td>The unique identifier of the ledger.</td>
        </tr>
    </tbody>
</table>

## LicenseeRef



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

## PriceCurrency

Represents the currency details for pricing, including purchase and sale values.

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
            <td><code>purchase</code></td>
            <td>string</td>
            <td>Indicates the purchase price currency visible to vendors or operations.</td>
        </tr>
        <tr>
            <td><code>sale</code></td>
            <td>string</td>
            <td>Indicates the sale price currency visible to clients or operations.</td>
        </tr>
        <tr>
            <td><code>rate</code></td>
            <td>number</td>
            <td>Exchange rate between the purchase and sale currencies.</td>
        </tr>
    </tbody>
</table>

## ProcessingSummary

Represents a summary of the processing status for various billing operations.

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
            <td><code>total</code></td>
            <td>integer</td>
            <td>Indicates the total number of items involved in the processing.</td>
        </tr>
        <tr>
            <td><code>ready</code></td>
            <td>integer</td>
            <td>Indicates the number of items that are ready for further processing.</td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td>integer</td>
            <td>Indicates the number of items that encountered errors during processing.</td>
        </tr>
        <tr>
            <td><code>split</code></td>
            <td>integer</td>
            <td>Indicates the number of items that were split into multiple parts during processing.</td>
        </tr>
        <tr>
            <td><code>skipped</code></td>
            <td>integer</td>
            <td>Indicates the number of items that were skipped during processing.</td>
        </tr>
        <tr>
            <td><code>ignored</code></td>
            <td>integer</td>
            <td>Indicates the number of items that were manually ignored.</td>
        </tr>
    </tbody>
</table>

## ProductExternalIdBag



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
            <td><code>operations</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultErpItem</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ProductRef



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
            <td><code>externalIds</code></td>
            <td>ProductExternalIdBag</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>

## SellerRef



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
            <td></td>
        </tr>
    </tbody>
</table>

## StatementAuditBag

Represents a container for audit-related events for a statement

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
            <td><code>generated</code></td>
            <td>PlatformObjectEvent</td>
            <td>Contains details about the most recent event when the statement reached the "Generated" status.</td>
        </tr>
        <tr>
            <td><code>queued</code></td>
            <td>PlatformObjectEvent</td>
            <td>Contains details about the most recent event when the statement reached the "Queued" status.</td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td>PlatformObjectEvent</td>
            <td>Contains details about the most recent event when the statement reached the "Error" status.</td>
        </tr>
        <tr>
            <td><code>cancelled</code></td>
            <td>PlatformObjectEvent</td>
            <td>Contains details about the most recent event when the statement reached the "Cancelled" status.</td>
        </tr>
        <tr>
            <td><code>pending</code></td>
            <td>PlatformObjectEvent</td>
            <td>Contains details about the most recent event when the statement reached the "Pending" status.</td>
        </tr>
        <tr>
            <td><code>issued</code></td>
            <td>PlatformObjectEvent</td>
            <td>Contains details about the most recent event when the statement reached the "Issued" status.</td>
        </tr>
        <tr>
            <td><code>generating</code></td>
            <td>PlatformObjectEvent</td>
            <td>Contains details about the most recent event when the statement reached the "Generating" status.</td>
        </tr>
        <tr>
            <td><code>consolidating</code></td>
            <td>PlatformObjectEvent</td>
            <td>Contains details about the most recent event when the statement reached the "Consolidating" status.</td>
        </tr>
        <tr>
            <td><code>consolidated</code></td>
            <td>PlatformObjectEvent</td>
            <td>Contains details about the most recent event when the statement reached the "Consolidated" status.</td>
        </tr>
    </tbody>
</table>

## StatementExternalIds

Represents external identifiers associated with a billing statement.

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
            <td><code>operations</code></td>
            <td>string</td>
            <td>Represents the identifier used for operations in the billing system.</td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>string</td>
            <td>Represents the identifier used for vendors in the billing system.</td>
        </tr>
        <tr>
            <td><code>erpId</code></td>
            <td>string</td>
            <td>Represents the identifier used in the ERP system for the statement, if applicable.</td>
        </tr>
        <tr>
            <td><code>client</code></td>
            <td>string</td>
            <td>Represents the identifier used for clients in the billing system.</td>
        </tr>
    </tbody>
</table>

## StatementPriceSummary

Represents a detailed summary of pricing for a billing statement, including currency and totals.

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
            <td><code>markup</code></td>
            <td>number</td>
            <td>Represents the markup value applied to the pricing.</td>
        </tr>
        <tr>
            <td><code>margin</code></td>
            <td>number</td>
            <td>Represents the margin value calculated for the pricing.</td>
        </tr>
        <tr>
            <td><code>totalPP</code></td>
            <td>number</td>
            <td>Represents the total purchase price.</td>
        </tr>
        <tr>
            <td><code>totalBSP</code></td>
            <td>number</td>
            <td>Represents the total sale price in buyer currency.</td>
        </tr>
        <tr>
            <td><code>currency</code></td>
            <td>PriceCurrency</td>
            <td>Specifies the currency details for the pricing, including purchase and sale values.</td>
        </tr>
        <tr>
            <td><code>totalSP</code></td>
            <td>number</td>
            <td>Represents the total sale price.</td>
        </tr>
    </tbody>
</table>

## StatementRef

Represents a billing statement in the system, containing details about transactions, pricing, and associated entities.

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
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td>The unique identifier of the statement.</td>
        </tr>
    </tbody>
</table>

## StatementStatistics

Counts of key dimensions derived from child statements, recalculated on consolidation changes.

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
            <td><code>statements</code></td>
            <td>integer</td>
            <td>Gets or sets the count of child statements.</td>
        </tr>
        <tr>
            <td><code>products</code></td>
            <td>integer</td>
            <td>Gets or sets the count of distinct products across child statements.</td>
        </tr>
        <tr>
            <td><code>agreements</code></td>
            <td>integer</td>
            <td>Gets or sets the count of distinct agreements across child statements.</td>
        </tr>
        <tr>
            <td><code>licensees</code></td>
            <td>integer</td>
            <td>Gets or sets the count of distinct licensees across child statements.</td>
        </tr>
    </tbody>
</table>
