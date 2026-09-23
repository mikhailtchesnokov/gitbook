
#Journal

Represents a journal entry in the billing system.

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
                <td>JournalAuditBag</td>
                <td>Represents a container for audit-related events for a journal
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
                <td>The unique identifier of the journal entry.
                </td>
            </tr>
            <tr>
                <td><code>name</code></td>
                <td>string</td>
                <td>Name of the journal.
                </td>
            </tr>
            <tr>
                <td><code>description</code></td>
                <td>string</td>
                <td>A description of the journal entry.
                </td>
            </tr>
            <tr>
                <td><code>externalIds</code></td>
                <td>BillingExternalIds</td>
                <td>External identifiers associated with the journal entry.
                </td>
            </tr>
            <tr>
                <td><code>notes</code></td>
                <td>string</td>
                <td>Additional notes or comments about the journal entry.
                </td>
            </tr>
            <tr>
                <td><code>status</code></td>
                <td>JournalStatus</td>
                <td>The current status of the journal entry.            
            Allowed values:
            <ul>
                <li><code>Draft</code></li>
                                <li><code>Deleted</code></li>
                                <li><code>Error</code></li>
                                <li><code>Validating</code></li>
                                <li><code>Validated</code></li>
                                <li><code>Review</code></li>
                                <li><code>Reconciling</code></li>
                                <li><code>Enquiring</code></li>
                                <li><code>Generating</code></li>
                                <li><code>Generated</code></li>
                                <li><code>Accepted</code></li>
                                <li><code>Queued</code></li>
                                <li><code>Completed</code></li>
                                <li><code>Resetting</code></li>
                                
            </ul>
                </td>
            </tr>
            <tr>
                <td><code>vendor</code></td>
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
                <td><code>product</code></td>
                <td>object</td>
                <td>
                </td>
            </tr>
            <tr>
                <td><code>authorization</code></td>
                <td>object</td>
                <td>
                </td>
            </tr>
            <tr>
                <td><code>dueDate</code></td>
                <td>string</td>
                <td>The due date for the journal entry.
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
                <td>JournalPriceSummary</td>
                <td>Pricing details associated with the journal entry.
                </td>
            </tr>
            <tr>
                <td><code>upload</code></td>
                <td>JournalUploadSummary</td>
                <td>Upload summary details for the journal entry, visible to vendors or operations.
                </td>
            </tr>
            <tr>
                <td><code>processing</code></td>
                <td>ProcessingSummary</td>
                <td>Processing status and related details for the journal entry, visible to operations.
                </td>
            </tr>
            <tr>
                <td><code>error</code></td>
                <td>BillingError</td>
                <td>Error details associated with the journal entry, if any.
                </td>
            </tr>
            <tr>
                <td><code>backup</code></td>
                <td>BackupDetails</td>
                <td>Backup details for the journal.
                </td>
            </tr></tbody>
</table>

