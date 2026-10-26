
## Charge


### Description
Represents a charge in the billing system.
 


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
            <td><code>audit</code></td>
            <td>ChargeAuditBag</td>
	        <td></td>
	        <td></td>
            <td>Represents a container for audit-related events for a charge</td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>The unique identifier of the charge</td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>ChargeExternalIds</td>
	        <td></td>
	        <td></td>
            <td>Contains external identifiers associated with the charge</td>
        </tr>
        <tr>
            <td><code>search</code></td>
            <td>ChargeSearchBag</td>
	        <td></td>
	        <td></td>
            <td>Contains search-related details for the charge</td>
        </tr>
        <tr>
            <td><code>period</code></td>
            <td>DatePeriod</td>
	        <td></td>
	        <td></td>
            <td>Represents the period during which the charge is applicable</td>
        </tr>
        <tr>
            <td><code>quantity</code></td>
            <td>number</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Indicates the quantity associated with the charge</td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>ChargePrice</td>
	        <td></td>
	        <td></td>
            <td>Contains pricing details for the charge</td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>ChargeDescription</td>
	        <td></td>
	        <td></td>
            <td>Contains a description of the charge, if applicable</td>
        </tr>
        <tr>
            <td><code>attributes</code></td>
            <td>ChargeAttributes</td>
	        <td></td>
	        <td></td>
            <td>Contains additional attributes for the charge</td>
        </tr>
        <tr>
            <td><code>journal</code></td>
            <td>JournalRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>ledger</code></td>
            <td>LedgerRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>customLedger</code></td>
            <td>CustomLedgerRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>parent</code></td>
            <td>ChargeRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>billingType</code></td>
            <td>BillingType</td>
	        <td></td>
	        <td></td>
            <td>Indicates the billing type of the charge, defaulting to automated. Allowed values: Automated,Manual,Consolidated</td>
        </tr>
        <tr>
            <td><code>upload</code></td>
            <td>ChargeStatusBag</td>
	        <td></td>
	        <td></td>
            <td>Contains the upload status and related details for the charge, visible to vendors or operations</td>
        </tr>
        <tr>
            <td><code>licensee</code></td>
            <td>LicenseeRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>agreement</code></td>
            <td>AgreementRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>subscription</code></td>
            <td>SubscriptionRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>line</code></td>
            <td>AgreementLine</td>
	        <td></td>
	        <td></td>
            <td>The line associated with the charge, if applicable</td>
        </tr>
        <tr>
            <td><code>order</code></td>
            <td>OrderRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>asset</code></td>
            <td>AssetRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>item</code></td>
            <td>ProductItemRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>authorization</code></td>
            <td>AuthorizationRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>statement</code></td>
            <td>StatementRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>statementType</code></td>
            <td>StatementType</td>
	        <td></td>
	        <td></td>
            <td>Indicates the type of statement associated with the charge. Allowed values: Debit,Credit</td>
        </tr>
        <tr>
            <td><code>processing</code></td>
            <td>ChargeStatusBag</td>
	        <td></td>
	        <td></td>
            <td>Contains the processing status and related details for the charge, visible to operations</td>
        </tr>
        <tr>
            <td><code>erpData</code></td>
            <td>ErpData</td>
	        <td></td>
	        <td></td>
            <td>Contains ERP-related data for the charge</td>
        </tr>
        <tr>
            <td><code>buyer</code></td>
            <td>BuyerRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>AccountRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>seller</code></td>
            <td>SellerRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>split</code></td>
            <td>ChargeSplit</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the charge split, if applicable</td>
        </tr>
        <tr>
            <td><code>reconciliation</code></td>
            <td>Reconciliation</td>
	        <td></td>
	        <td></td>
            <td>Contains reconciliation info for the journal charge</td>
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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>PlatformObjectAudit</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>AccountType</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Client,Vendor,Operations</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AccountStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Active,Enabled,Disabled</td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>AccountExternalIds</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalName</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>address</code></td>
            <td>Address</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>technicalSupportEmail</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>website</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>groups</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>eligibility</code></td>
            <td>Eligibility</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultLanguageCode</code></td>
            <td>string</td>
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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### AccountRef



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>AccountType</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Client,Vendor,Operations</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AccountStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Active,Enabled,Disabled</td>
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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>addressLine2</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>postCode</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>city</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>state</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>country</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### Agreement



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>AgreementAudit</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AgreementStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: New,Draft,Provisioning,Updating,Active,Terminated,Failed,Deleted</td>
        </tr>
        <tr>
            <td><code>listing</code></td>
            <td>ListingRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>authorization</code></td>
            <td>AuthorizationRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>AccountRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>client</code></td>
            <td>AccountRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>AgreementSummaryPrice</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>startDate</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>endDate</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>template</code></td>
            <td>TemplateRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td>ParametrisedMessage</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>lines</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>assets</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>subscriptions</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>ParameterBag</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>licensee</code></td>
            <td>LicenseeRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>buyer</code></td>
            <td>BuyerRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>seller</code></td>
            <td>SellerRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td>ProductRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>ExternalIds</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>split</code></td>
            <td>SplitBillingAgreementRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>termsAndConditions</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>certificates</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### AgreementAudit



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
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>active</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>provisioning</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### AgreementLine



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>AgreementLineAudit</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>quantity</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>item</code></td>
            <td>ProductItem</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>AgreementLinePrice</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>order</code></td>
            <td>Order</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AgreementLineStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Active,Terminated,Deleted,Expired</td>
        </tr>
        <tr>
            <td><code>subscription</code></td>
            <td>Subscription</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>asset</code></td>
            <td>Asset</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>agreement</code></td>
            <td>Agreement</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>client</code></td>
            <td>Account</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>Account</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>buyer</code></td>
            <td>Buyer</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>seller</code></td>
            <td>Seller</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td>Product</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>info</code></td>
            <td>PriceInfo</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### AgreementLineAudit



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
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>deleted</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### AgreementLinePrice



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
            <td><code>currency</code></td>
            <td>string</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>markup</code></td>
            <td>number</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>margin</code></td>
            <td>number</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkupSource</code></td>
            <td>MarkupSourcePrice</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>markupSource</code></td>
            <td>MarkupSourcePrice</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>unitSP</code></td>
            <td>number</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>unitPP</code></td>
            <td>number</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPx1</code></td>
            <td>number</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPx1</code></td>
            <td>number</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxY</code></td>
            <td>number</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxM</code></td>
            <td>number</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxY</code></td>
            <td>number</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxM</code></td>
            <td>number</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### AgreementRef



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AgreementStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: New,Draft,Provisioning,Updating,Active,Terminated,Failed,Deleted</td>
        </tr>
    </tbody>
</table>

### AgreementSummaryPrice



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
            <td><code>currency</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>markup</code></td>
            <td>number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>margin</code></td>
            <td>number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkupSource</code></td>
            <td>MarkupSourcePrice</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>markupSource</code></td>
            <td>MarkupSourcePrice</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxY</code></td>
            <td>number</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxM</code></td>
            <td>number</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxY</code></td>
            <td>number</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxM</code></td>
            <td>number</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkup</code></td>
            <td>number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMargin</code></td>
            <td>number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>billingCurrency</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>source</code></td>
            <td>string</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### Asset



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>AssetAudit</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>ExternalIds</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AssetStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: New,Draft,Active,Terminated</td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>AssetSummaryPrice</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>template</code></td>
            <td>TemplateRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>AssetParameterBag</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terms</code></td>
            <td>Terms</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>agreement</code></td>
            <td>AgreementRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td>ProductRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>priceList</code></td>
            <td>PriceListRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>listing</code></td>
            <td>ListingRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>licensee</code></td>
            <td>LicenseeRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>lines</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### AssetAudit



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
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>draft</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>active</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### AssetParameterBag



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
            <td><code>fulfillment</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### AssetRef



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AssetStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: New,Draft,Active,Terminated</td>
        </tr>
    </tbody>
</table>

### AssetSummaryPrice



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
            <td><code>currency</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>markup</code></td>
            <td>number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>margin</code></td>
            <td>number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkupSource</code></td>
            <td>MarkupSourcePrice</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>markupSource</code></td>
            <td>MarkupSourcePrice</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPx1</code></td>
            <td>number</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPx1</code></td>
            <td>number</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkup</code></td>
            <td>number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMargin</code></td>
            <td>number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### AuthorizationRef



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>currency</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### Buyer



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>BuyerAudit</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>BuyerExternalIds</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>BuyerStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Active,Enabled,Disabled,Deleted,Unassigned,Conflict,Mismatch</td>
        </tr>
        <tr>
            <td><code>address</code></td>
            <td>Address</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>taxId</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>account</code></td>
            <td>AccountRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>errors</code></td>
            <td>array</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>sellers</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### BuyerAudit



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
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>activated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>unassigned</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>disabled</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### BuyerExternalIds



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
            <td><code>erpCompanyContact</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>erpCustomer</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>accountExternalId</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### BuyerRef



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
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
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>max</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### CertificateRef



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### ChargeAttributes

Represents additional attributes associated with a charge in the billing system.

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
            <td><code>documentNumber</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The document number associated with the charge</td>
        </tr>
        <tr>
            <td><code>orderType</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The type of order associated with the charge</td>
        </tr>
        <tr>
            <td><code>externalDocumentNo</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The primary external document number associated with the charge, if applicable</td>
        </tr>
        <tr>
            <td><code>externalDocumentNo2</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>An additional external document number associated with the charge, if applicable</td>
        </tr>
        <tr>
            <td><code>yourReference</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>A reference provided by the customer for the charge, if applicable</td>
        </tr>
        <tr>
            <td><code>agreementVendorId</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>An identifier for the vendor's agreement related to the charge, if applicable</td>
        </tr>
        <tr>
            <td><code>segment</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Represents the segment associated with the charge</td>
        </tr>
    </tbody>
</table>

### ChargeAuditBag

Represents a container for audit-related events for a charge

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
            <td><code>reconciled</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the charge was reconciled</td>
        </tr>
        <tr>
            <td><code>reset</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td>Contains details about the most recent event when the charge was reset (undoing previous reconcile actions)</td>
        </tr>
    </tbody>
</table>

### ChargeDescription

Represents a description of a charge.

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
            <td><code>value1</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The first value of the description, if applicable</td>
        </tr>
        <tr>
            <td><code>value2</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The second value of the description, if applicable</td>
        </tr>
    </tbody>
</table>

### ChargeExternalIds

Represents external identifiers associated with a charge.

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
            <td><code>reference</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>A reference identifier for the charge, if applicable</td>
        </tr>
        <tr>
            <td><code>invoice</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The invoice identifier associated with the charge</td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The vendor identifier associated with the charge</td>
        </tr>
    </tbody>
</table>

### ChargePrice

Represents the pricing details of a charge, including currency, markup, margin, and unit prices.

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
            <td><code>currency</code></td>
            <td>PriceCurrency</td>
	        <td></td>
	        <td></td>
            <td>Specifies the currency details for the charge, including purchase and sale values</td>
        </tr>
        <tr>
            <td><code>markup</code></td>
            <td>number</td>
	        <td></td>
	        <td>ops</td>
            <td>Represents the markup value applied to the charge</td>
        </tr>
        <tr>
            <td><code>markupSource</code></td>
            <td>ChargeMarkupSource</td>
	        <td></td>
	        <td></td>
            <td>Specifies the source of the markup value. Allowed values: Subscription,Line,Agreement,Asset</td>
        </tr>
        <tr>
            <td><code>margin</code></td>
            <td>number</td>
	        <td></td>
	        <td>ops</td>
            <td>Represents the margin value calculated for the charge</td>
        </tr>
        <tr>
            <td><code>unitPP</code></td>
            <td>number</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td>Represents the unit purchase price of the charge</td>
        </tr>
        <tr>
            <td><code>PPx1</code></td>
            <td>number</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td>Represents an total purchase price value for the charge</td>
        </tr>
        <tr>
            <td><code>unitBSP</code></td>
            <td>number</td>
	        <td></td>
	        <td>client,ops</td>
            <td>Represents the unit sale price of the charge in buyer currency</td>
        </tr>
        <tr>
            <td><code>BSPx1</code></td>
            <td>number</td>
	        <td></td>
	        <td>client,ops</td>
            <td>Represents an total sale price value for the charge in buyer currency</td>
        </tr>
        <tr>
            <td><code>unitSP</code></td>
            <td>number</td>
	        <td></td>
	        <td>client,ops</td>
            <td>Represents the unit sale price of the charge</td>
        </tr>
        <tr>
            <td><code>SPx1</code></td>
            <td>number</td>
	        <td></td>
	        <td>client,ops</td>
            <td>Represents an total sale price value for the charge</td>
        </tr>
    </tbody>
</table>

### ChargeRef

Represents a charge in the billing system.

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
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>The unique identifier of the charge</td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>ChargeExternalIds</td>
	        <td></td>
	        <td></td>
            <td>Contains external identifiers associated with the charge</td>
        </tr>
    </tbody>
</table>

### ChargeSearch

Represents a search criterion and its value for a charge.

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
            <td><code>criteria</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The search criterion used for the charge</td>
        </tr>
        <tr>
            <td><code>value</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The value associated with the search criterion</td>
        </tr>
    </tbody>
</table>

### ChargeSearchBag

Represents search-related details for a charge.

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
            <td><code>source</code></td>
            <td>ChargeSourceSearch</td>
	        <td></td>
	        <td></td>
            <td>Contains subscription-related search details for the charge, if applicable</td>
        </tr>
        <tr>
            <td><code>order</code></td>
            <td>ChargeSearch</td>
	        <td></td>
	        <td></td>
            <td>Contains order-related search details for the charge, if applicable</td>
        </tr>
        <tr>
            <td><code>item</code></td>
            <td>ChargeSearch</td>
	        <td></td>
	        <td></td>
            <td>Contains item-related search details for the charge, if applicable</td>
        </tr>
    </tbody>
</table>

### ChargeSourceSearch

Represents a search criterion and its value for a charge.

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
            <td><code>criteria</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The search criterion used for the charge</td>
        </tr>
        <tr>
            <td><code>value</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The value associated with the search criterion</td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>JournalChargeSource</td>
	        <td></td>
	        <td></td>
            <td>Source type. Allowed values: Unknown,Agreement,Subscription,Asset</td>
        </tr>
    </tbody>
</table>

### ChargeSplit

Represents the details of a charge split.

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
            <td><code>percentage</code></td>
            <td>number</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The percentage of the charge allocated to this split</td>
        </tr>
    </tbody>
</table>

### ChargeStatusBag

Represents the status and associated errors of a charge in the billing system.

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
            <td><code>status</code></td>
            <td>ChargeStatus</td>
	        <td></td>
	        <td></td>
            <td>Indicates the current status of the charge. Allowed values: Ready,Error,Split,Skipped,Ignored,Reconciling</td>
        </tr>
        <tr>
            <td><code>errors</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Contains a list of error messages associated with the charge, if any</td>
        </tr>
    </tbody>
</table>

### CommerceParameter



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
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>ParameterType</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: SingleLineText,MultiLineText,Address,Contact,Checkbox,Choice,Subdomain,Heading,DropDown,Email,DataObject,Date,DateAndTime,Collection</td>
        </tr>
        <tr>
            <td><code>phase</code></td>
            <td>ParameterPhase</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Configuration,Order,Fulfillment</td>
        </tr>
        <tr>
            <td><code>scope</code></td>
            <td>ParameterScope</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Agreement,Item,Subscription,Order,Asset</td>
        </tr>
        <tr>
            <td><code>multiple</code></td>
            <td>boolean</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td>ParametrisedMessage</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>constraints</code></td>
            <td>ParameterConstraints</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>displayValue</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>value</code></td>
            <td>object</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### CommerceTermsAndConditionsRef



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>accepted</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>acceptedBy</code></td>
            <td>ExtendedIdentity</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### CustomLedgerRef

Represents a custom ledger in the billing system.

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
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>The unique identifier of the custom ledger</td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>Name of the custom ledger</td>
        </tr>
    </tbody>
</table>

### DatePeriod

Represents the period during which a charge is applicable.

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
            <td><code>start</code></td>
            <td>string</td>
	        <td></td>
	        <td></td>
            <td>The start date and time of the period</td>
        </tr>
        <tr>
            <td><code>end</code></td>
            <td>string</td>
	        <td></td>
	        <td></td>
            <td>The end date and time of the period</td>
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
            <td>boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>partner</code></td>
            <td>boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### ErpData

Represents ERP-related data associated with a charge in the billing system.

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
            <td><code>erpCountryCode</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The country code used in the ERP system</td>
        </tr>
        <tr>
            <td><code>defaultErpProductId</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The default product identifier used in the ERP system</td>
        </tr>
        <tr>
            <td><code>defaultErpProductName</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The default product name used in the ERP system</td>
        </tr>
        <tr>
            <td><code>cdg</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The CDG (Customer Designation Group) value associated with the ERP data</td>
        </tr>
        <tr>
            <td><code>scu</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The SCU (Service Configuration Unit) value associated with the ERP data</td>
        </tr>
        <tr>
            <td><code>cco</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The CCO (Customer Configuration Option) value associated with the ERP data</td>
        </tr>
        <tr>
            <td><code>erpItemId</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>The item identifier used in the ERP system</td>
        </tr>
    </tbody>
</table>

### ErpLinkRef



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>companyName</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>ErpLinkStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Active,Blocked,Disabled</td>
        </tr>
    </tbody>
</table>

### ExtendedIdentity



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>firstName</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>lastName</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>email</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### ExternalIds



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
            <td>string</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>operations</code></td>
            <td>string</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>string</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### ItemGroupRef



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### JournalRef

Represents a journal entry in the billing system.

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
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>The unique identifier of the journal entry</td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>Name of the journal</td>
        </tr>
        <tr>
            <td><code>dueDate</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>The due date for the journal entry</td>
        </tr>
    </tbody>
</table>

### LedgerRef

Represents a ledger in the billing system.

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
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>The unique identifier of the ledger</td>
        </tr>
    </tbody>
</table>

### LicenseeRef



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### ListingRef



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### MarkupSourcePrice



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
            <td><code>type</code></td>
            <td>string</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>ref</code></td>
            <td>MarkupSourceRefPrice</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### MarkupSourceRefPrice



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
            <td>string</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### Order



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>OrderAudit</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>OrderType</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Purchase,Change,Termination,Configuration</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>OrderStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: New,Draft,Deleted,Processing,Querying,Failed,Completed,Quoted</td>
        </tr>
        <tr>
            <td><code>notes</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>comments</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>statusNotes</code></td>
            <td>ParametrisedMessage</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>template</code></td>
            <td>TemplateRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>listing</code></td>
            <td>ListingRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>authorization</code></td>
            <td>AuthorizationRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>agreement</code></td>
            <td>AgreementRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>assignee</code></td>
            <td>PlatformIdentityRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>ExternalIds</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>OrderSummaryPrice</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>lines</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>subscriptions</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>assets</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>ParameterBag</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td>ParametrisedMessage</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td>ProductRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>client</code></td>
            <td>AccountRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>licensee</code></td>
            <td>LicenseeRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>buyer</code></td>
            <td>BuyerRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>seller</code></td>
            <td>SellerRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>AccountRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>billTo</code></td>
            <td>BuyerRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>pricingPolicy</code></td>
            <td>PricingPolicyRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>termsAndConditions</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>certificates</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkupSource</code></td>
            <td>MarkupSource</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Unknown,PriceList,PricingPolicy,Manual</td>
        </tr>
    </tbody>
</table>

### OrderAsset



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>OrderAssetAudit</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>ExternalIds</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AssetStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: New,Draft,Active,Terminated</td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>AssetSummaryPrice</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>template</code></td>
            <td>TemplateRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>AssetParameterBag</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terms</code></td>
            <td>Terms</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>lines</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### OrderAssetAudit



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
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>draft</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>active</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### OrderAssetRef



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AssetStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: New,Draft,Active,Terminated</td>
        </tr>
    </tbody>
</table>

### OrderAudit



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
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>completed</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>deleted</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>failed</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>processing</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>querying</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>quoted</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### OrderLine



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>PlatformObjectAudit</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>oldQuantity</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>quantity</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>OrderLinePrice</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>item</code></td>
            <td>ProductItem</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>subscription</code></td>
            <td>OrderSubscription</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>asset</code></td>
            <td>OrderAsset</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>agreement</code></td>
            <td>Agreement</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>order</code></td>
            <td>Order</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>client</code></td>
            <td>Account</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>Account</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>buyer</code></td>
            <td>Buyer</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>seller</code></td>
            <td>Seller</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td>Product</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>info</code></td>
            <td>PriceInfo</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### OrderLinePrice



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
            <td><code>currency</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>markup</code></td>
            <td>number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>margin</code></td>
            <td>number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkupSource</code></td>
            <td>MarkupSourcePrice</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>markupSource</code></td>
            <td>MarkupSourcePrice</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>unitSP</code></td>
            <td>number</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>unitPP</code></td>
            <td>number</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPx1</code></td>
            <td>number</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPx1</code></td>
            <td>number</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxY</code></td>
            <td>number</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxM</code></td>
            <td>number</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxY</code></td>
            <td>number</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxM</code></td>
            <td>number</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### OrderRef



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### OrderSubscription



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>OrderSubscriptionAudit</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>startDate</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminationDate</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>ExternalIds</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terms</code></td>
            <td>Terms</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td>ProductRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>OrderSubscriptionStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Draft,Active,Deleted,Updating,Terminating,Terminated</td>
        </tr>
        <tr>
            <td><code>commitmentDate</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>SubscriptionParameterBag</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>agreement</code></td>
            <td>AgreementRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>SubscriptionSummaryPrice</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>lines</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>template</code></td>
            <td>TemplateRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>autoRenew</code></td>
            <td>boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### OrderSubscriptionAudit



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
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>active</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminating</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updating</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### OrderSubscriptionRef



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>OrderSubscriptionStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Draft,Active,Deleted,Updating,Terminating,Terminated</td>
        </tr>
        <tr>
            <td><code>autoRenew</code></td>
            <td>boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### OrderSummaryPrice



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
            <td><code>currency</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>markup</code></td>
            <td>number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>margin</code></td>
            <td>number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkupSource</code></td>
            <td>MarkupSourcePrice</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>markupSource</code></td>
            <td>MarkupSourcePrice</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkup</code></td>
            <td>number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPx1</code></td>
            <td>number</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPx1</code></td>
            <td>number</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxY</code></td>
            <td>number</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxM</code></td>
            <td>number</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxY</code></td>
            <td>number</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxM</code></td>
            <td>number</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### OriginalValues

Values assigned during initial journal calculation.

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
            <td><code>subscription</code></td>
            <td>SubscriptionRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>agreement</code></td>
            <td>AgreementRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>line</code></td>
            <td>AgreementLine</td>
	        <td></td>
	        <td></td>
            <td>The original line entity, if applicable</td>
        </tr>
        <tr>
            <td><code>order</code></td>
            <td>OrderRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### ParameterBag



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
            <td><code>ordering</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>fulfillment</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### ParameterConstraints



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
            <td><code>required</code></td>
            <td>boolean</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>hidden</code></td>
            <td>boolean</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>readonly</code></td>
            <td>boolean</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>capacity</code></td>
            <td>CapacitySettings</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### ParameterValue



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>multiple</code></td>
            <td>boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>value</code></td>
            <td>object</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>displayValue</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### ParametrisedMessage



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
            <td>string</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>message</code></td>
            <td>string</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>object</td>
	        <td></td>
	        <td></td>
            <td></td>
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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
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
            <td>array</td>
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
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
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
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>by</code></td>
            <td>PlatformIdentityRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### PreValidationSettings



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
            <td><code>purchaseOrderDraft</code></td>
            <td>boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>purchaseOrderQuerying</code></td>
            <td>boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>changeOrderDraft</code></td>
            <td>boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>configurationOrderDraft</code></td>
            <td>boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminationOrder</code></td>
            <td>boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### PriceCurrency

Represents the currency details for pricing, including purchase and sale values.

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
            <td><code>purchase</code></td>
            <td>string</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td>Indicates the purchase price currency visible to vendors or operations</td>
        </tr>
        <tr>
            <td><code>sale</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,ops</td>
            <td>Indicates the sale price currency visible to clients or operations</td>
        </tr>
        <tr>
            <td><code>rate</code></td>
            <td>number</td>
	        <td></td>
	        <td>ops</td>
            <td>Exchange rate between the purchase and sale currencies</td>
        </tr>
    </tbody>
</table>

### PriceInfo



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
            <td><code>visible</code></td>
            <td>boolean</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### PriceListRef



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>currency</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### PricingPolicyEligibility



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
            <td>boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>partner</code></td>
            <td>boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### PricingPolicyRef



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>client</code></td>
            <td>Account</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>eligibility</code></td>
            <td>PricingPolicyEligibility</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>products</code></td>
            <td>array</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### Product



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>ProductAudit</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>shortDescription</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>longDescription</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>ProductExternalIdBag</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>website</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>AccountRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>settings</code></td>
            <td>ProductSettings</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>statistics</code></td>
            <td>ProductStatistics</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### ProductAudit



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
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>published</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>pending</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>unpublished</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### ProductExternalIdBag



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
            <td><code>operations</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultErpItem</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### ProductItem



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>ProductItemAudit</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>ProductItemExternalIdBag</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>group</code></td>
            <td>ItemGroupRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>unit</code></td>
            <td>UnitOfMeasureRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terms</code></td>
            <td>Terms</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>quantityNotApplicable</code></td>
            <td>boolean</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td>ProductRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### ProductItemAudit



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
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>pending</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>published</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>unpublished</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### ProductItemExternalIdBag



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
            <td><code>vendor</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>operations</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### ProductItemRef



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>ProductItemExternalIdBag</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### ProductRef



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>ProductExternalIdBag</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### ProductRequestsSetting



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
            <td><code>enabled</code></td>
            <td>boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>label</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### ProductSettings



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
            <td><code>productOrdering</code></td>
            <td>boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>productRequests</code></td>
            <td>ProductRequestsSetting</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>itemSelection</code></td>
            <td>boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>orderQueueChanges</code></td>
            <td>boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>preValidation</code></td>
            <td>PreValidationSettings</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>splitBilling</code></td>
            <td>ProductSplitBillingRequestsSetting</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>sendCostToErp</code></td>
            <td>boolean</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>subscriptionCessation</code></td>
            <td>SubscriptionCessationSetting</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### ProductSplitBillingRequestsSetting



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
            <td><code>enabled</code></td>
            <td>boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### ProductStatistics



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
            <td><code>itemCount</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>ordersPlacedCount</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>agreementCount</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>subscriptionCount</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### Reconciliation

Represents reconciliation info for a journal charge.

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
            <td><code>type</code></td>
            <td>ReconciliationType</td>
	        <td></td>
	        <td></td>
            <td>Type of action — either Mpt.Models.Billing.ReconciliationType.Match (linking the charge to a source object),
Mpt.Models.Billing.ReconciliationType.Ignore (excludes the charge from billing),
or Mpt.Models.Billing.ReconciliationType.Reset (resets the charge to its original state). Allowed values: Match,Ignore,Reset</td>
        </tr>
        <tr>
            <td><code>source</code></td>
            <td>JournalChargeSource</td>
	        <td></td>
	        <td></td>
            <td>Identifies which object was used to reconcile the charge when Mpt.Models.Billing.Charges.Reconciliation.Type is Mpt.Models.Billing.ReconciliationType.Match.
Possible values: Mpt.Models.Billing.Charges.JournalChargeSource.Agreement, Mpt.Models.Billing.Charges.JournalChargeSource.Subscription, Mpt.Models.Billing.Charges.JournalChargeSource.Asset. Allowed values: Unknown,Agreement,Subscription,Asset</td>
        </tr>
        <tr>
            <td><code>reason</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Reason provided for the action. Required when Mpt.Models.Billing.Charges.Reconciliation.Type is Mpt.Models.Billing.ReconciliationType.Ignore</td>
        </tr>
        <tr>
            <td><code>original</code></td>
            <td>OriginalValues</td>
	        <td></td>
	        <td></td>
            <td>Values assigned during initial journal calculation — used for audit and to support charge reset</td>
        </tr>
    </tbody>
</table>

### Seller



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>PlatformObjectAudit</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>SellerStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Active,Disabled,Offline,Deleted</td>
        </tr>
        <tr>
            <td><code>currencies</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>address</code></td>
            <td>Address</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>erpLink</code></td>
            <td>ErpLinkRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>attributes</code></td>
            <td>SellerAttributes</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### SellerAttributes



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
            <td><code>navision</code></td>
            <td>object</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### SellerCurrency



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
            <td><code>value</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>billingEnabled</code></td>
            <td>boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>isDefault</code></td>
            <td>boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### SellerRef



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### SplitBillingAgreementRef



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### SplitBillingSubscriptionRef



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### StatementRef

Represents a billing statement in the system, containing details about transactions, pricing, and associated entities.

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
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td>The unique identifier of the statement</td>
        </tr>
    </tbody>
</table>

### Subscription



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>SubscriptionAudit</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>startDate</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminationDate</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>ExternalIds</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terms</code></td>
            <td>Terms</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td>ProductRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>autoRenew</code></td>
            <td>boolean</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>SubscriptionStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Active,Updating,Terminating,Terminated,Expired</td>
        </tr>
        <tr>
            <td><code>commitmentDate</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>SubscriptionSummaryPrice</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>SubscriptionParameterBag</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>agreement</code></td>
            <td>AgreementRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>buyer</code></td>
            <td>BuyerRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>licensee</code></td>
            <td>LicenseeRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>seller</code></td>
            <td>SellerRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>split</code></td>
            <td>SplitBillingSubscriptionRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>splitStatus</code></td>
            <td>SplitStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Disabled,Active,Review</td>
        </tr>
        <tr>
            <td><code>lines</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>template</code></td>
            <td>TemplateRef</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### SubscriptionAudit



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
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>active</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminating</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updating</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>expired</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>renewed</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

### SubscriptionCessationSetting



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
            <td><code>enabled</code></td>
            <td>boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>mode</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### SubscriptionParameterBag



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
            <td><code>fulfillment</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### SubscriptionRef



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### SubscriptionSummaryPrice



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
            <td><code>currency</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>markup</code></td>
            <td>number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>margin</code></td>
            <td>number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkupSource</code></td>
            <td>MarkupSourcePrice</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>markupSource</code></td>
            <td>MarkupSourcePrice</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxY</code></td>
            <td>number</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxM</code></td>
            <td>number</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxY</code></td>
            <td>number</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxM</code></td>
            <td>number</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkup</code></td>
            <td>number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMargin</code></td>
            <td>number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### TemplateRef



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### Terms



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
            <td><code>model</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>period</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>commitment</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### UnitOfMeasureRef



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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
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
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>logo</code></td>
            <td>string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>isDefault</code></td>
            <td>boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>
