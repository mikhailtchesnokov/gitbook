
#Message

Represents an individual notification message sent to a specific contact.

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
                <td>MessageAudit</td>
                <td>Represents audit information for a Mpt.Notifications.Models.Messages.Message.
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
                <td>Gets or sets the account associated with this message, if applicable.
                </td>
            </tr>
            <tr>
                <td><code>attachments</code></td>
                <td>array</td>
                <td>Gets or sets the list of file attachments included with this message.
                </td>
            </tr>
            <tr>
                <td><code>batch</code></td>
                <td>object</td>
                <td>
                </td>
            </tr>
            <tr>
                <td><code>body</code></td>
                <td>string</td>
                <td>Gets or sets the body content of the message.
                </td>
            </tr>
            <tr>
                <td><code>category</code></td>
                <td>Category</td>
                <td>Gets or sets the category to which this message belongs.
                </td>
            </tr>
            <tr>
                <td><code>contact</code></td>
                <td>Contact</td>
                <td>Gets or sets the recipient contact for this message.
                </td>
            </tr>
            <tr>
                <td><code>discardReason</code></td>
                <td>string</td>
                <td>Gets or sets the reason the message was discarded, if applicable.
                </td>
            </tr>
            <tr>
                <td><code>template</code></td>
                <td>object</td>
                <td>
                </td>
            </tr>
            <tr>
                <td><code>status</code></td>
                <td>string</td>
                <td>Gets or sets the current status of the message.
                </td>
            </tr>
            <tr>
                <td><code>statusReason</code></td>
                <td>string</td>
                <td>Gets or sets the reason for the current status.
                </td>
            </tr>
            <tr>
                <td><code>subject</code></td>
                <td>string</td>
                <td>Gets or sets the subject of the message.
                </td>
            </tr></tbody>
</table>

