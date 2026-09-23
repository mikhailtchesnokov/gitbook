
#CustomLedger

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
            <td><code>audit</code></td>
            <td>CustomLedgerAuditBag</td>
            <td>Represents a container for audit-related events for a custom ledger
            </td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td>The unique identifier of the custom ledger.
            </td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td>Name of the custom ledger.
            </td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>BillingExternalIds</td>
            <td>External identifiers associated with the custom ledger.
            </td>
        </tr>
        <tr>
            <td><code>seller</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>billingStartDate</code></td>
            <td>string</td>
            <td>The start date of the billing period for the custom ledger.
            </td>
        </tr>
        <tr>
            <td><code>billingEndDate</code></td>
            <td>string</td>
            <td>The end date of the billing period for the custom ledger.
            </td>
        </tr>
        <tr>
            <td><code>notes</code></td>
            <td>string</td>
            <td>Additional notes or comments about the custom ledger.
            </td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>CustomLedgerStatus</td>
            <td>The current status of the custom ledger.            
            Allowed values:
            <ul>
                <li><code>Draft</code></li>
                                <li><code>Deleted</code></li>
                                <li><code>Validating</code></li>
                                <li><code>Validated</code></li>
                                <li><code>Error</code></li>
                                <li><code>Generating</code></li>
                                <li><code>Generated</code></li>
                                <li><code>Queued</code></li>
                                <li><code>Completed</code></li>
                                
            </ul>
            </td>
        </tr>
        <tr>
            <td><code>assignee</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>CustomLedgerPriceSummary</td>
            <td>Pricing details associated with the custom ledger.
            </td>
        </tr>
        <tr>
            <td><code>processing</code></td>
            <td>ProcessingSummary</td>
            <td>Processing status and related details for the custom ledger, visible to operations.
            </td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td>BillingError</td>
            <td>Error details associated with the custom ledger, if any.
            </td>
        </tr>
        <tr>
            <td><code>backup</code></td>
            <td>BackupDetails</td>
            <td>Backup details for the custom ledger.
            </td>
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
            <td></td>
        </tr>
    
        <tr>
            <td><code>status</code></td>
            <td>AccountStatus</td>
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
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>status</code></td>
            <td>BackupStatus</td>
            <td>Status of the backup.</td>
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


## BillingExternalIds

Represents external identifiers associated with billing entities.

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
    
    </tbody>
</table>


## CustomLedgerAuditBag

Represents a container for audit-related events for a custom ledger

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
            <td><code>draft</code></td>
            <td>PlatformObjectEvent</td>
            <td>Contains details about the most recent event when the custom ledger reached the "Draft" status.</td>
        </tr>
    
        <tr>
            <td><code>deleted</code></td>
            <td>PlatformObjectEvent</td>
            <td>Contains details about the most recent event when the custom ledger reached the "Deleted" status.</td>
        </tr>
    
        <tr>
            <td><code>validating</code></td>
            <td>PlatformObjectEvent</td>
            <td>Contains details about the most recent event when the custom ledger reached the "Validating" status.</td>
        </tr>
    
        <tr>
            <td><code>validated</code></td>
            <td>PlatformObjectEvent</td>
            <td>Contains details about the most recent event when the custom ledger reached the "Validated" status.</td>
        </tr>
    
        <tr>
            <td><code>error</code></td>
            <td>PlatformObjectEvent</td>
            <td>Contains details about the most recent event when the custom ledger reached the "Error" status.</td>
        </tr>
    
        <tr>
            <td><code>generating</code></td>
            <td>PlatformObjectEvent</td>
            <td>Contains details about the most recent event when the custom ledger reached the "Generating" status.</td>
        </tr>
    
        <tr>
            <td><code>generated</code></td>
            <td>PlatformObjectEvent</td>
            <td>Contains details about the most recent event when the custom ledger reached the "Generated" status.</td>
        </tr>
    
        <tr>
            <td><code>queued</code></td>
            <td>PlatformObjectEvent</td>
            <td>Contains details about the most recent event when the custom ledger reached the "Queued" status.</td>
        </tr>
    
        <tr>
            <td><code>completed</code></td>
            <td>PlatformObjectEvent</td>
            <td>Contains details about the most recent event when the custom ledger reached the "Completed" status.</td>
        </tr>
    
    </tbody>
</table>


## CustomLedgerPriceSummary

Represents a detailed summary of pricing for a custom ledger, including currency and totals.

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
            <td>object</td>
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
