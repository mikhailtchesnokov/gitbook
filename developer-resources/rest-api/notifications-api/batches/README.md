
#Batch

Represents a batch of notification messages that share common properties.

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
                <td>
                </td>
            </tr>
            <tr>
                <td><code>audit</code></td>
                <td>BatchAudit</td>
                <td>Represents audit information for a Mpt.Notifications.Models.Messages.Batch.
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
                <td><code>account</code></td>
                <td>Account</td>
                <td>Gets or sets the account associated with this batch, if applicable.
                </td>
            </tr>
            <tr>
                <td><code>attachments</code></td>
                <td>array</td>
                <td>Gets or sets the list of file attachments included with messages in this batch.
                </td>
            </tr>
            <tr>
                <td><code>body</code></td>
                <td>string</td>
                <td>Gets or sets the body content for messages in this batch.
                </td>
            </tr>
            <tr>
                <td><code>category</code></td>
                <td>Category</td>
                <td>Gets or sets the category to which this batch belongs.
                </td>
            </tr>
            <tr>
                <td><code>template</code></td>
                <td>NotificationTemplate</td>
                <td>Gets or sets the template used to create this batch, if applicable.
                </td>
            </tr>
            <tr>
                <td><code>statistics</code></td>
                <td>BatchStatistics</td>
                <td>Gets or sets the statistics for messages in this batch.
                </td>
            </tr>
            <tr>
                <td><code>subject</code></td>
                <td>string</td>
                <td>Gets or sets the subject for messages in this batch.
                </td>
            </tr>
            <tr>
                <td><code>status</code></td>
                <td>string</td>
                <td>Gets or sets the current status of the batch.
                </td>
            </tr>
            <tr>
                <td><code>statusReason</code></td>
                <td>string</td>
                <td>Gets or sets the reason for the current status of the batch.
                </td>
            </tr>
            <tr>
                <td><code>type</code></td>
                <td>string</td>
                <td>Gets or sets the type of batch.
                </td>
            </tr>
            <tr>
                <td><code>payload</code></td>
                <td>string</td>
                <td>Gets or sets the payload data used for template-based batches.
                </td>
            </tr>
            <tr>
                <td><code>sendContext</code></td>
                <td>string</td>
                <td>Gets or sets the send context of the batch.
                </td>
            </tr>
            <tr>
                <td><code>sourceAccount</code></td>
                <td>object</td>
                <td>
                </td>
            </tr></tbody>
</table>

