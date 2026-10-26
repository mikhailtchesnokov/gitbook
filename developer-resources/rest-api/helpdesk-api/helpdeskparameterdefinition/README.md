
## HelpdeskParameterDefinition


### Description
Parameter definition in the helpdesk system
 


### Attributes

{% include "../../../../.gitbook/includes/api-table-header.md" %}

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td> string</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td><a href="#parameterdefinitionaudit">ParameterDefinitionAudit</a </td>
	        <td></td>
	        <td></td>
            <td>Audit information for a parameter definition</td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td><a href="#platformmetadata">PlatformMetadata</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td> string</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td> string</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td> integer</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>scope</code></td>
            <td> HelpdeskParameterScope</td>
	        <td></td>
	        <td></td>
            <td>The scope that defines the applicability and context of the helpdesk parameter within the system. Allowed values: Case,Form</td>
        </tr>
        <tr>
            <td><code>phase</code></td>
            <td> HelpdeskParameterPhase</td>
	        <td></td>
	        <td></td>
            <td>The phase of the parameter in the helpdesk workflow. Allowed values: Request,Response</td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td> string</td>
	        <td></td>
	        <td></td>
            <td>The description of the parameter</td>
        </tr>
        <tr>
            <td><code>multiple</code></td>
            <td> boolean</td>
	        <td></td>
	        <td></td>
            <td>Indicates whether the parameter can accept multiple values</td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td> string</td>
	        <td></td>
	        <td></td>
            <td>The optional external identifier of the parameter for integration purposes</td>
        </tr>
        <tr>
            <td><code>displayOrder</code></td>
            <td> integer</td>
	        <td></td>
	        <td></td>
            <td>The display order of the parameter where a lower value indicates higher priority in the display sequence</td>
        </tr>
        <tr>
            <td><code>constraints</code></td>
            <td><a href="#helpdeskconstraints">HelpdeskConstraints</a </td>
	        <td></td>
	        <td></td>
            <td>The constraints associated with the parameter including required, readonly, and visibility settings</td>
        </tr>
        <tr>
            <td><code>options</code></td>
            <td> object</td>
	        <td></td>
	        <td></td>
            <td>The type-specific options for the parameter which vary based on the parameter type</td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td> ParameterType</td>
	        <td></td>
	        <td></td>
            <td>The parameter type defining the data format and validation rules. Allowed values: SingleLineText,MultiLineText,Address,Contact,Checkbox,Choice,Subdomain,Heading,DropDown,Email,DataObject,Date,DateAndTime,Collection</td>
        </tr>
        <tr>
            <td><code>statistics</code></td>
            <td><a href="#parameterusagestatistics">ParameterUsageStatistics</a </td>
	        <td></td>
	        <td></td>
            <td>Statistics about parameter usage across cases and groups</td>
        </tr>
        <tr>
            <td><code>account</code></td>
            <td><a href="#account">Account</a </td>
	        <td></td>
	        <td></td>
            <td>The platform account that owns this parameter definition</td>
        </tr>
        <tr>
            <td><code>isDeleted</code></td>
            <td> boolean</td>
	        <td></td>
	        <td></td>
            <td>Indicates whether the parameter definition has been marked as deleted</td>
        </tr></tbody>
</table>


## Downstream models
### Account



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td><a href="#platformobjectaudit">PlatformObjectAudit</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td><a href="#platformmetadata">PlatformMetadata</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td> integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td> AccountType</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Client,Vendor,Operations</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td> AccountStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Active,Enabled,Disabled</td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td><a href="#accountexternalids">AccountExternalIds</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalName</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>address</code></td>
            <td><a href="#address">Address</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>technicalSupportEmail</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>website</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>groups</code></td>
            <td> array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>eligibility</code></td>
            <td><a href="#eligibility">Eligibility</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultLanguageCode</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### AccountExternalIds



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>pyraTenantId</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### Address



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>addressLine1</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>addressLine2</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>postCode</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>city</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>state</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>country</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### CapacitySettings



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>min</code></td>
            <td> integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>max</code></td>
            <td> integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### Eligibility



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>client</code></td>
            <td> boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>partner</code></td>
            <td> boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### HelpdeskConstraints

Constraints specific to helpdesk parameters

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>hidden</code></td>
            <td> boolean</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>readonly</code></td>
            <td> boolean</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>required</code></td>
            <td> boolean</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>capacity</code></td>
            <td><a href="#capacitysettings">CapacitySettings</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>visibility</code></td>
            <td> VisibilityMode</td>
	        <td></td>
	        <td></td>
            <td>The visibility mode controlling who can see the parameter. Allowed values: All,OnlyMyAccount</td>
        </tr>
    </tbody>
</table>

### ParameterDefinitionAudit

Audit information for a parameter definition

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>created</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>deleted</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td>The deletion event details</td>
        </tr>
    </tbody>
</table>

### ParameterUsageStatistics

Usage statistics for a parameter definition

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>cases</code></td>
            <td> integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>The number of cases using this parameter</td>
        </tr>
        <tr>
            <td><code>groups</code></td>
            <td> integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>The number of groups using this parameter</td>
        </tr>
        <tr>
            <td><code>forms</code></td>
            <td> integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>The number of forms using this parameter</td>
        </tr>
    </tbody>
</table>

### PlatformIdentityRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td> integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### PlatformMetadata



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>omitted</code></td>
            <td> array</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### PlatformObjectAudit



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>created</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### PlatformObjectEvent



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>at</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>by</code></td>
            <td><a href="#platformidentityref">PlatformIdentityRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### UserGroupRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td> integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>logo</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>isDefault</code></td>
            <td> boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>
