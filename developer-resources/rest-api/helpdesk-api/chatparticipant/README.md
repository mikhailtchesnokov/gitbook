
#ChatParticipant



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
            <td>ChatParticipantAudit</td>
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
            <td><code>revision</code></td>
            <td>integer</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>chat</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>contact</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>identity</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>account</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>muted</code></td>
            <td>boolean</td>
            <td>Flag indicates whether participant should be notified of new messages in the chat.
            </td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>ParticipantStatus</td>
            <td>Represents the status of the chat participant, indicating whether they are active, suspended, or exited.            
            Allowed values:
            <ul>
                <li><code>Active</code></li>
                                <li><code>Exited</code></li>
                                <li><code>Deactivated</code></li>
                                
            </ul>
            </td>
        </tr>
        <tr>
            <td><code>lastReadMessage</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>unreadMessageCount</code></td>
            <td>integer</td>
            <td>The count of messages in the chat not read by this participant.
            </td>
        </tr></tbody>
</table>

