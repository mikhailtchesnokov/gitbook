
## Ledger

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
            <td><code>audit</code></td>
            <td>LedgerAuditBag</td>
	        <td></td>
	        <td></td>
            <td>Represents a container for audit-related events for a ledger</td>
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
        <tr>
            <td><code>journal</code></td>
            <td>JournalRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>LedgerStatus</td>
	        <td></td>
	        <td></td>
            <td>The current status of the ledger. Allowed values: Rating,Error,Review,Generating,Generated,Queued,Completed</td>
        </tr>
        <tr>
            <td><code>authorization</code></td>
            <td>AuthorizationRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>owner</code></td>
            <td>SellerRef</td>
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
            <td></td>
        </tr>
        <tr>
            <td><code>assignee</code></td>
            <td>PlatformIdentityRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>LedgerPriceSummary</td>
	        <td></td>
	        <td></td>
            <td>Pricing details associated with the ledger</td>
        </tr>
        <tr>
            <td><code>processing</code></td>
            <td>ProcessingSummary</td>
	        <td></td>
	        <td></td>
            <td>Processing status and related details for the ledger, visible to operations</td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td>BillingError</td>
	        <td></td>
	        <td></td>
            <td>Error details associated with the ledger, if any</td>
        </tr>
        <tr>
            <td><code>backup</code></td>
            <td>BackupDetails</td>
	        <td></td>
	        <td></td>
            <td>Backup details for the ledger</td>
        </tr></tbody>
</table>

## AuthorizationRef



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

## BackupDetails

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

## BillingError

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

## JournalRef

Represents a journal entry in the billing system.

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
            <td>The unique identifier of the journal entry</td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>Name of the journal</td>
        </tr>
        <tr>
            <td><code>dueDate</code></td>
            <td>string</td>
	        <td>✔</td>
	        <td>client,vendor,ops</td>
            <td>The due date for the journal entry</td>
        </tr>
    </tbody>
</table>

## LedgerAuditBag

Represents a container for audit-related events for a ledger

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
            <td><code>rating</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the ledger reached the "Rating" status</td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the ledger reached the "Error" status</td>
        </tr>
        <tr>
            <td><code>review</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the ledger reached the "Review" status</td>
        </tr>
        <tr>
            <td><code>generating</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the ledger reached the "Generating" status</td>
        </tr>
        <tr>
            <td><code>generated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the ledger reached the "Generated" status</td>
        </tr>
        <tr>
            <td><code>queued</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the ledger reached the "Queued" status</td>
        </tr>
        <tr>
            <td><code>completed</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the ledger reached the "Completed" status</td>
        </tr>
    </tbody>
</table>

## LedgerPriceSummary

Represents a detailed summary of pricing for a ledger.

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

## PlatformIdentityRef



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

## PlatformMetadata



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

## PlatformObjectEvent



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

## ProcessingSummary

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

## ProductExternalIdBag



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

## ProductRef



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

## SellerRef



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
