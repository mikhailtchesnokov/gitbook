
#Subscriber

Represents a subscription that defines which users or user groups should automatically receive notifications for a specific category.

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
            <td>SubscriberAudit</td>
            <td>Represents audit information for a Mpt.Notifications.Models.Subscribers.Subscriber.
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
            <td><code>revision</code></td>
            <td>integer</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
            <td>Gets or initializes the current status of the subscriber.
            </td>
        </tr>
        <tr>
            <td><code>note</code></td>
            <td>string</td>
            <td>Gets or initializes an optional note about this subscriber.
            </td>
        </tr>
        <tr>
            <td><code>recipients</code></td>
            <td>Recipients</td>
            <td>Gets or initializes the list of recipients who will receive notifications.
            </td>
        </tr>
        <tr>
            <td><code>account</code></td>
            <td>Account</td>
            <td>Gets or initializes the account to which this subscriber is associated.
            </td>
        </tr>
        <tr>
            <td><code>category</code></td>
            <td>Category</td>
            <td>Gets or initializes the category this subscriber monitors for automatic notifications.
            </td>
        </tr></tbody>
</table>

