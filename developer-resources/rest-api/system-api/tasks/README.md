
#Task

The Task represents the state of an asynchronous, usually long running operation.

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
            <td>TaskAuditBag</td>
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
            <td><code>status</code></td>
            <td>TaskStatus</td>
            <td>Task status: a new task is created in the Queued (default) or Blocked status.            
            Allowed values:
            <ul>
                <li><code>Queued</code></li>
                                <li><code>Processing</code></li>
                                <li><code>Completed</code></li>
                                <li><code>Failed</code></li>
                                <li><code>Rescheduled</code></li>
                                
            </ul>
            </td>
        </tr>
        <tr>
            <td><code>code</code></td>
            <td>string</td>
            <td>Task code for the workflow, prefixed with the service namespace.
            </td>
        </tr>
        <tr>
            <td><code>queue</code></td>
            <td>string</td>
            <td>Queue name for task execution, prefixed with the controlling service namespace.
            </td>
        </tr>
        <tr>
            <td><code>object</code></td>
            <td>TaskPlatform</td>
            <td>Reference to the business object related to the task.
            </td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
            <td>Parameterized task description.
            </td>
        </tr>
        <tr>
            <td><code>parent</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>progress</code></td>
            <td>number</td>
            <td>Progress in percent. 0-100 or not defined for not yet started task.
            </td>
        </tr>
        <tr>
            <td><code>eta</code></td>
            <td>string</td>
            <td>Estimated finish time, if any.
            </td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>object</td>
            <td>Optional parameters to store task-specific metadata.
            </td>
        </tr>
        <tr>
            <td><code>result</code></td>
            <td>string</td>
            <td>Result URI or reference to the result resource.
            </td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
            <td>External identifier for task correlation.
            </td>
        </tr>
        <tr>
            <td><code>owner</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>access</code></td>
            <td>array</td>
            <td>List of accounts having access to the task and its result.
            </td>
        </tr></tbody>
</table>


#TaskLog



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
            <td><code>task</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>severity</code></td>
            <td>TaskLogSeverity</td>
            <td>            
            Allowed values:
            <ul>
                <li><code>Debug</code></li>
                                <li><code>Info</code></li>
                                <li><code>Warning</code></li>
                                <li><code>Error</code></li>
                                <li><code>Failure</code></li>
                                
            </ul>
            </td>
        </tr>
        <tr>
            <td><code>message</code></td>
            <td>string</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>timestamp</code></td>
            <td>string</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>progress</code></td>
            <td>number</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>eta</code></td>
            <td>string</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>object</td>
            <td>
            </td>
        </tr></tbody>
</table>

