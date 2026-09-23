
#Webhook



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
            <td>PlatformObjectAudit</td>
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
            <td><code>name</code></td>
            <td>string</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>url</code></td>
            <td>string</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>WebhookStatus</td>
            <td>            
            Allowed values:
            <ul>
                <li><code>Enabled</code></li>
                                <li><code>Disabled</code></li>
                                
            </ul>
            </td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>WebhookType</td>
            <td>            
            Allowed values:
            <ul>
                <li><code>ValidatePurchaseOrderDraft</code></li>
                                <li><code>ValidatePurchaseOrderQuerying</code></li>
                                <li><code>ValidateChangeOrderDraft</code></li>
                                <li><code>ValidateTerminateOrder</code></li>
                                <li><code>SelectOrderLines</code></li>
                                <li><code>ValidateEnrollmentDraft</code></li>
                                <li><code>ValidateEnrollmentQuerying</code></li>
                                <li><code>ValidateReEnrollment</code></li>
                                <li><code>ValidateReEnrollmentQuerying</code></li>
                                <li><code>ValidateConfigurationOrderDraft</code></li>
                                <li><code>ValidateAnswer</code></li>
                                
            </ul>
            </td>
        </tr>
        <tr>
            <td><code>secret</code></td>
            <td>string</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>statistics</code></td>
            <td>WebhookStatistics</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>objectType</code></td>
            <td>WebhookObjectType</td>
            <td>            
            Allowed values:
            <ul>
                <li><code>Order</code></li>
                                <li><code>Request</code></li>
                                <li><code>Account</code></li>
                                <li><code>Enrollment</code></li>
                                <li><code>Answer</code></li>
                                
            </ul>
            </td>
        </tr>
        <tr>
            <td><code>account</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>object</code></td>
            <td>WebhookObjectRef</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>criteria</code></td>
            <td>array</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>lastSuccess</code></td>
            <td>WebhookCall</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>lastFailure</code></td>
            <td>WebhookCall</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>lastCall</code></td>
            <td>WebhookCall</td>
            <td>
            </td>
        </tr></tbody>
</table>







## AccountRef



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


## WebhookCall



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
            <td><code>success</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>callTime</code></td>
            <td>string</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>responseTime</code></td>
            <td>string</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>headers</code></td>
            <td>string</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>error</code></td>
            <td>string</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>response</code></td>
            <td>string</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>reasonPhrase</code></td>
            <td>string</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>httpStatusCode</code></td>
            <td>HttpStatusCode</td>
            <td></td>
        </tr>
    
    </tbody>
</table>


## WebhookCriteria



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
            <td><code>key</code></td>
            <td>string</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>value</code></td>
            <td>string</td>
            <td></td>
        </tr>
    
    </tbody>
</table>


## WebhookObjectRef



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
    
    </tbody>
</table>


## WebhookStatistics



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
            <td><code>total</code></td>
            <td>integer</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>successes</code></td>
            <td>integer</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>failures</code></td>
            <td>integer</td>
            <td></td>
        </tr>
    
        <tr>
            <td><code>failuresSinceLastSuccess</code></td>
            <td>integer</td>
            <td></td>
        </tr>
    
    </tbody>
</table>
