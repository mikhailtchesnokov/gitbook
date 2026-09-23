
#Statement

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
            <td>Represents a container for audit-related events for a statement
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
            <td>The unique identifier of the statement.
            </td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>StatementExternalIds</td>
            <td>Contains external identifiers associated with the statement.
            </td>
        </tr>
        <tr>
            <td><code>ledger</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>customLedger</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>StatementType</td>
            <td>Specifies the type of the statement.            
            Allowed values:
            <ul>
                <li><code>Debit</code></li>
                                <li><code>Credit</code></li>
                                
            </ul>
            </td>
        </tr>
        <tr>
            <td><code>billingType</code></td>
            <td>BillingType</td>
            <td>Specifies the billing type of the statement.            
            Allowed values:
            <ul>
                <li><code>Automated</code></li>
                                <li><code>Manual</code></li>
                                <li><code>Consolidated</code></li>
                                
            </ul>
            </td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>StatementStatus</td>
            <td>Indicates the current status of the statement.            
            Allowed values:
            <ul>
                <li><code>Generated</code></li>
                                <li><code>Queued</code></li>
                                <li><code>Error</code></li>
                                <li><code>Cancelled</code></li>
                                <li><code>Pending</code></li>
                                <li><code>Issued</code></li>
                                <li><code>Generating</code></li>
                                <li><code>Consolidating</code></li>
                                <li><code>Consolidated</code></li>
                                
            </ul>
            </td>
        </tr>
        <tr>
            <td><code>client</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>buyer</code></td>
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
            <td><code>agreement</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>licensee</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>StatementPriceSummary</td>
            <td>Contains the pricing summary for the statement.
            </td>
        </tr>
        <tr>
            <td><code>processing</code></td>
            <td>ProcessingSummary</td>
            <td>Contains the processing summary for the statement, visible to operations.
            </td>
        </tr>
        <tr>
            <td><code>statusNotes</code></td>
            <td>BillingParametrisedMessage</td>
            <td>Contains additional notes or messages about the status of the statement, if applicable.
            </td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td>BillingError</td>
            <td>Represents any error associated with the statement, visible to clients or operations.
            </td>
        </tr>
        <tr>
            <td><code>creditMemo</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>invoice</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>backup</code></td>
            <td>BackupDetails</td>
            <td>Backup details for the statement.
            </td>
        </tr>
        <tr>
            <td><code>parent</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>statistics</code></td>
            <td>StatementStatistics</td>
            <td>Statistics to summarize the composition of a statement.
            </td>
        </tr></tbody>
</table>

