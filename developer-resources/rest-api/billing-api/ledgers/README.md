
#Ledger

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
            <td><code>audit</code></td>
            <td>LedgerAuditBag</td>
            <td>Represents a container for audit-related events for a ledger
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
            <td>The unique identifier of the ledger.
            </td>
        </tr>
        <tr>
            <td><code>journal</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>LedgerStatus</td>
            <td>The current status of the ledger.            
            Allowed values:
            <ul>
                <li><code>Rating</code></li>
                                <li><code>Error</code></li>
                                <li><code>Review</code></li>
                                <li><code>Generating</code></li>
                                <li><code>Generated</code></li>
                                <li><code>Queued</code></li>
                                <li><code>Completed</code></li>
                                
            </ul>
            </td>
        </tr>
        <tr>
            <td><code>authorization</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>owner</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>seller</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td>object</td>
            <td>
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
            <td>LedgerPriceSummary</td>
            <td>Pricing details associated with the ledger.
            </td>
        </tr>
        <tr>
            <td><code>processing</code></td>
            <td>ProcessingSummary</td>
            <td>Processing status and related details for the ledger, visible to operations.
            </td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td>BillingError</td>
            <td>Error details associated with the ledger, if any.
            </td>
        </tr>
        <tr>
            <td><code>backup</code></td>
            <td>BackupDetails</td>
            <td>Backup details for the ledger.
            </td>
        </tr></tbody>
</table>

