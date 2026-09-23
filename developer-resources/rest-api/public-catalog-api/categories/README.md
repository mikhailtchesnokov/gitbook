
#Category

Represents a notification category that can be used to organize and filter notifications.

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
            <td>NotificationCategoryAudit</td>
            <td>Represents audit information for a Mpt.Notifications.Models.Categories.Category.
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
            <td><code>description</code></td>
            <td>string</td>
            <td>Gets or sets the description of the category.
            </td>
        </tr>
        <tr>
            <td><code>optOutAllowed</code></td>
            <td>boolean</td>
            <td>Gets or sets a value indicating whether recipients can opt out of notifications in this category.
            </td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
            <td>Gets or sets the current status of the category.
            </td>
        </tr>
        <tr>
            <td><code>note</code></td>
            <td>string</td>
            <td>Gets or sets an optional note about the category.
            </td>
        </tr>
        <tr>
            <td><code>deleteAllowed</code></td>
            <td>boolean</td>
            <td>Gets or sets a value indicating whether this category can be deleted.
            </td>
        </tr>
        <tr>
            <td><code>statistics</code></td>
            <td>MessageStatistics</td>
            <td>Gets or sets the message statistics for this category.
            </td>
        </tr>
        <tr>
            <td><code>lastUsed</code></td>
            <td>string</td>
            <td>Gets or sets the timestamp of when this category was last used to send a notification.
            </td>
        </tr>
        <tr>
            <td><code>enabledByDefault</code></td>
            <td>boolean</td>
            <td>Gets or sets a value indicating whether this category is enabled by default for new recipients.
            </td>
        </tr></tbody>
</table>

