
# Form



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
            <td>FormAudit</td>
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
            <td><code>description</code></td>
            <td>string</td>
            <td>Gets or sets the description associated with the form.
            </td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>FormStatus</td>
            <td>Gets or sets the status of the Form.            
            Allowed values:
            <ul>
                <li><code>Unpublished</code></li>
                                <li><code>Published</code></li>
                                
            </ul>
            </td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
            <td>Gets or sets the optional external identifier associated with the form.
            </td>
        </tr>
        <tr>
            <td><code>account</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>statistics</code></td>
            <td>FormStatistics</td>
            <td>Gets or sets usage statistics for this form.
            </td>
        </tr>
        <tr>
            <td><code>isDeleted</code></td>
            <td>boolean</td>
            <td>Indicates whether the queue has been marked as deleted.
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


## FormAudit



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
            <td><code>published</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>unpublished</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
    </tbody>
</table>


## FormStatistics

Represents usage statistics for a form.

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
            <td><code>groups</code></td>
            <td>integer</td>
            <td>The number of parameter groups assigned to this form.</td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>integer</td>
            <td>The total number of parameter definitions across all groups in this form.</td>
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
