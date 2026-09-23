
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







## MessageStatistics

Represents message statistics aggregated over different time periods.

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
            <td><code>month</code></td>
            <td>integer</td>
            <td>Gets or sets the number of messages sent in the current month.</td>
        </tr>
    
        <tr>
            <td><code>today</code></td>
            <td>integer</td>
            <td>Gets or sets the number of messages sent today.</td>
        </tr>
    
        <tr>
            <td><code>week</code></td>
            <td>integer</td>
            <td>Gets or sets the number of messages sent in the current week.</td>
        </tr>
    
    </tbody>
</table>


## NotificationCategoryAudit

Represents audit information for a Mpt.Notifications.Models.Categories.Category.

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
            <td><code>created</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>published</code></td>
            <td>PlatformObjectEvent</td>
            <td>Gets or sets the event information for when the category was published.</td>
        </tr>
    
        <tr>
            <td><code>unpublished</code></td>
            <td>PlatformObjectEvent</td>
            <td>Gets or sets the event information for when the category was unpublished.</td>
        </tr>
    
        <tr>
            <td><code>deleted</code></td>
            <td>PlatformObjectEvent</td>
            <td>Gets or sets the event information for when the category was deleted.</td>
        </tr>
    
    </tbody>
</table>


## PlatformIdentityRef



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
            <td></td>
        </tr>
    
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
    
    </tbody>
</table>


## PlatformMetadata



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
            <td><code>omitted</code></td>
            <td>array</td>
            <td></td>
        </tr>
    
    </tbody>
</table>


## PlatformObjectEvent



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
            <td><code>at</code></td>
            <td>string</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>by</code></td>
            <td>object</td>
            <td></td>
        </tr>
    
    </tbody>
</table>
