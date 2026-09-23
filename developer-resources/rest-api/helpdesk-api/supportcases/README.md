
#SupportCase



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
                <td>SupportCaseAudit</td>
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
                <td>Chat</td>
                <td>Represents the chat this support case is coupled with.
                </td>
            </tr>
            <tr>
                <td><code>reporter</code></td>
                <td>Contact</td>
                <td>Represents the Mpt.Helpdesk.Models.Notifications.Contact who is reporting this issue.
                </td>
            </tr>
            <tr>
                <td><code>assignee</code></td>
                <td>Contact</td>
                <td>Represents the Mpt.Helpdesk.Models.Notifications.Contact to whom this case is currently assigned. It can be null if the case is unassigned.
                </td>
            </tr>
            <tr>
                <td><code>account</code></td>
                <td>Account</td>
                <td>Represents the account context of the Mpt.Helpdesk.Models.Cases.SupportCase.Reporter.
                </td>
            </tr>
            <tr>
                <td><code>queue</code></td>
                <td>Queue</td>
                <td>Queue to which this case is currently assigned.
                </td>
            </tr>
            <tr>
                <td><code>status</code></td>
                <td>SupportCaseStatus</td>
                <td>The status of the support case.            
            Allowed values:
            <ul>
                <li><code>Processing</code></li>
                                <li><code>Querying</code></li>
                                <li><code>Completed</code></li>
                                
            </ul>
                </td>
            </tr>
            <tr>
                <td><code>queryPrompt</code></td>
                <td>string</td>
                <td>The prompt that is set along with setting the Mpt.Helpdesk.Models.Cases.SupportCase.Status to Mpt.Helpdesk.Models.Cases.SupportCaseStatus.Querying
                </td>
            </tr>
            <tr>
                <td><code>parameters</code></td>
                <td>array</td>
                <td>Represents the parameter values in the case.
                </td>
            </tr>
            <tr>
                <td><code>sensitiveParameters</code></td>
                <td>array</td>
                <td>
                </td>
            </tr></tbody>
</table>

