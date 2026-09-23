
#Answer

A form submission within a chat, containing parameter values filled by participants

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
            <td>AnswerAudit</td>
            <td>Audit information for answer lifecycle events
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
            <td><code>form</code></td>
            <td>Form</td>
            <td>The parent form that defines the structure of this answer
            </td>
        </tr>
        <tr>
            <td><code>chat</code></td>
            <td>Chat</td>
            <td>The chat this answer belongs to
            </td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AnswerStatus</td>
            <td>The current lifecycle status of the answer            
            Allowed values:
            <ul>
                <li><code>Draft</code></li>
                                <li><code>Submitted</code></li>
                                <li><code>Querying</code></li>
                                <li><code>Accepted</code></li>
                                
            </ul>
            </td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>array</td>
            <td>Flat list of parameter values for this answer, each referencing a ParameterDefinition and optionally belonging to one or more groups
            </td>
        </tr>
        <tr>
            <td><code>isDeleted</code></td>
            <td>boolean</td>
            <td>Indicates whether the answer has been soft-deleted
            </td>
        </tr></tbody>
</table>

