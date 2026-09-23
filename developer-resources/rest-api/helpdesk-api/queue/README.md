
#Queue



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
            <td>QueueAudit</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
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
            <td><code>longDescription</code></td>
            <td>string</td>
            <td>Gets or sets the long description associated with the queue.
            </td>
        </tr>
        <tr>
            <td><code>shortDescription</code></td>
            <td>string</td>
            <td>Gets or sets the short description associated with the queue.
            </td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
            <td>Gets or sets the optional external identifier associated with the queue.
            </td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>QueueStatus</td>
            <td>Gets or sets the status of the queue.            
            Allowed values:
            <ul>
                <li><code>Disabled</code></li>
                                <li><code>Active</code></li>
                                
            </ul>
            </td>
        </tr>
        <tr>
            <td><code>default</code></td>
            <td>boolean</td>
            <td>Indicates whether this queue is the default queue.
            </td>
        </tr>
        <tr>
            <td><code>internal</code></td>
            <td>boolean</td>
            <td>Indicates whether this queue is internal.
            </td>
        </tr>
        <tr>
            <td><code>account</code></td>
            <td>Account</td>
            <td>Gets or sets the account associated with the queue.
            </td>
        </tr>
        <tr>
            <td><code>statistics</code></td>
            <td>QueueStatistics</td>
            <td>Gets or sets helpful statistics about the use of the queue.
            </td>
        </tr>
        <tr>
            <td><code>isDeleted</code></td>
            <td>boolean</td>
            <td>Indicates whether the queue has been marked as deleted.
            </td>
        </tr></tbody>
</table>

