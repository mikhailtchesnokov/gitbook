
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







## Account



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
            <td><code>audit</code></td>
            <td>PlatformObjectAudit</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
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
    
        <tr>
            <td><code>type</code></td>
            <td>AccountType</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>status</code></td>
            <td>AccountStatus</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>externalIds</code></td>
            <td>AccountExternalIds</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>externalName</code></td>
            <td>string</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>address</code></td>
            <td>Address</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>technicalSupportEmail</code></td>
            <td>string</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>website</code></td>
            <td>string</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>description</code></td>
            <td>string</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>groups</code></td>
            <td>array</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>eligibility</code></td>
            <td>Eligibility</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>defaultLanguageCode</code></td>
            <td>string</td>
            <td></td>
        </tr>
    
    </tbody>
</table>


## AccountExternalIds



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
            <td><code>pyraTenantId</code></td>
            <td>string</td>
            <td></td>
        </tr>
    
    </tbody>
</table>


## Address



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
            <td><code>addressLine1</code></td>
            <td>string</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>addressLine2</code></td>
            <td>string</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>postCode</code></td>
            <td>string</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>city</code></td>
            <td>string</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>state</code></td>
            <td>string</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>country</code></td>
            <td>string</td>
            <td></td>
        </tr>
    
    </tbody>
</table>


## Eligibility



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
            <td><code>client</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>partner</code></td>
            <td>boolean</td>
            <td></td>
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


## PlatformObjectAudit



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


## QueueAudit



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
            <td><code>deleted</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>activated</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>disabled</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
    
    </tbody>
</table>


## QueueStatistics



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
            <td><code>totalCases</code></td>
            <td>integer</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>openCases</code></td>
            <td>integer</td>
            <td></td>
        </tr>
    
    </tbody>
</table>


## UserGroupRef



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
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>description</code></td>
            <td>string</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>logo</code></td>
            <td>string</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>isDefault</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
    
    </tbody>
</table>
