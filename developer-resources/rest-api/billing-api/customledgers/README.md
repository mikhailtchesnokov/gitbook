
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

