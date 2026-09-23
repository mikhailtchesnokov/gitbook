
# Installation



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
            <td>InstallationAudit</td>
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
            <td><code>revision</code></td>
            <td>integer</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>account</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>extension</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>configuration</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>invitation</code></td>
            <td>Invitation</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>modules</code></td>
            <td>array</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>terms</code></td>
            <td>array</td>
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


## ExtensionRef



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


## Filters



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
            <td><code>group.buyers</code></td>
            <td>array</td>
            <td></td>
        </tr>
    </tbody>
</table>


## InstallationAudit



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
            <td><code>invited</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>installed</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>expired</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>uninstalled</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
    </tbody>
</table>


## InstallationTermRef



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
            <td><code>accepted</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>acceptedBy</code></td>
            <td>PlatformIdentity</td>
            <td></td>
        </tr>
    </tbody>
</table>


## Invitation



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
            <td><code>url</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>expiresAt</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>message</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>validity</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>


## ModuleRef



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
            <td><code>filters</code></td>
            <td>Filters</td>
            <td></td>
        </tr>
        <tr>
            <td><code>settings</code></td>
            <td>ModuleSettings</td>
            <td></td>
        </tr>
    </tbody>
</table>


## ModuleSettings



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
            <td><code>sharedAccount</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>configurable</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>default</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>paid</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>array</td>
            <td></td>
        </tr>
        <tr>
            <td><code>obsolete</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>eligibility</code></td>
            <td>ModuleSettingsEligibility</td>
            <td></td>
        </tr>
    </tbody>
</table>


## ModuleSettingsEligibility



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
            <td><code>multi</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>single</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
    </tbody>
</table>


## PlatformIdentity



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
