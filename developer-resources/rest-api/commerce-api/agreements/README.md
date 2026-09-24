
## Agreement



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>AgreementAudit</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AgreementStatus</td>
	        <td></td>
            <td>. Allowed values: New,Draft,Provisioning,Updating,Active,Terminated,Failed,Deleted</td>
        </tr>
        <tr>
            <td><code>listing</code></td>
            <td>ListingRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>authorization</code></td>
            <td>AuthorizationRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>AccountRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>client</code></td>
            <td>AccountRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>AgreementSummaryPrice</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>startDate</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>endDate</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>template</code></td>
            <td>TemplateRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td>ParametrisedMessage</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>lines</code></td>
            <td>array</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>assets</code></td>
            <td>array</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>subscriptions</code></td>
            <td>array</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>ParameterBag</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>licensee</code></td>
            <td>LicenseeRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>buyer</code></td>
            <td>BuyerRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>seller</code></td>
            <td>SellerRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td>ProductRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>ExternalIds</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>split</code></td>
            <td>SplitBillingAgreementRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>termsAndConditions</code></td>
            <td>array</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>certificates</code></td>
            <td>array</td>
	        <td></td>
            <td></td>
        </tr></tbody>
</table>

## Account



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>PlatformObjectAudit</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>AccountType</td>
	        <td></td>
            <td>. Allowed values: Client,Vendor,Operations</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AccountStatus</td>
	        <td></td>
            <td>. Allowed values: Active,Enabled,Disabled</td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>AccountExternalIds</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalName</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>address</code></td>
            <td>Address</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>technicalSupportEmail</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>website</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>groups</code></td>
            <td>array</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>eligibility</code></td>
            <td>Eligibility</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultLanguageCode</code></td>
            <td>string</td>
	        <td></td>
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
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>pyraTenantId</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## AccountRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>AccountType</td>
	        <td></td>
            <td>. Allowed values: Client,Vendor,Operations</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AccountStatus</td>
	        <td></td>
            <td>. Allowed values: Active,Enabled,Disabled</td>
        </tr>
    </tbody>
</table>

## Address



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>addressLine1</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>addressLine2</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>postCode</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>city</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>state</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>country</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## AgreementAudit



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>created</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>active</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>provisioning</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## AgreementLine



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>AgreementLineAudit</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>quantity</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>item</code></td>
            <td>ProductItem</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>AgreementLinePrice</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>order</code></td>
            <td>Order</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AgreementLineStatus</td>
	        <td></td>
            <td>. Allowed values: Active,Terminated,Deleted,Expired</td>
        </tr>
        <tr>
            <td><code>subscription</code></td>
            <td>Subscription</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>asset</code></td>
            <td>Asset</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>agreement</code></td>
            <td>Agreement</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>client</code></td>
            <td>Account</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>Account</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>buyer</code></td>
            <td>Buyer</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>seller</code></td>
            <td>Seller</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td>Product</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>info</code></td>
            <td>PriceInfo</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## AgreementLineAudit



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>created</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>deleted</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## AgreementLinePrice



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>currency</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>markup</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>margin</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkupSource</code></td>
            <td>MarkupSourcePrice</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>markupSource</code></td>
            <td>MarkupSourcePrice</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>unitSP</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>unitPP</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPx1</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPx1</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxY</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxM</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxY</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxM</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## AgreementRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AgreementStatus</td>
	        <td></td>
            <td>. Allowed values: New,Draft,Provisioning,Updating,Active,Terminated,Failed,Deleted</td>
        </tr>
    </tbody>
</table>

## AgreementSummaryPrice



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>currency</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>markup</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>margin</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkupSource</code></td>
            <td>MarkupSourcePrice</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>markupSource</code></td>
            <td>MarkupSourcePrice</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxY</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxM</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxY</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxM</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkup</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMargin</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>billingCurrency</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>source</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## Asset



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>AssetAudit</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>ExternalIds</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AssetStatus</td>
	        <td></td>
            <td>. Allowed values: New,Draft,Active,Terminated</td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>AssetSummaryPrice</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>template</code></td>
            <td>TemplateRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>AssetParameterBag</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terms</code></td>
            <td>Terms</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>agreement</code></td>
            <td>AgreementRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td>ProductRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>priceList</code></td>
            <td>PriceListRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>listing</code></td>
            <td>ListingRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>licensee</code></td>
            <td>LicenseeRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>lines</code></td>
            <td>array</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## AssetAudit



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>created</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>draft</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>active</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## AssetParameterBag



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>fulfillment</code></td>
            <td>array</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## AssetRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AssetStatus</td>
	        <td></td>
            <td>. Allowed values: New,Draft,Active,Terminated</td>
        </tr>
    </tbody>
</table>

## AssetSummaryPrice



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>currency</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>markup</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>margin</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkupSource</code></td>
            <td>MarkupSourcePrice</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>markupSource</code></td>
            <td>MarkupSourcePrice</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPx1</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPx1</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkup</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMargin</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## AuthorizationRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>currency</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## Buyer



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>BuyerAudit</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>BuyerExternalIds</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>BuyerStatus</td>
	        <td></td>
            <td>. Allowed values: Active,Enabled,Disabled,Deleted,Unassigned,Conflict,Mismatch</td>
        </tr>
        <tr>
            <td><code>address</code></td>
            <td>Address</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>taxId</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>account</code></td>
            <td>AccountRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>errors</code></td>
            <td>array</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>sellers</code></td>
            <td>array</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## BuyerAudit



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>created</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>activated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>unassigned</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>disabled</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## BuyerExternalIds



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>erpCompanyContact</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>erpCustomer</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>accountExternalId</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## BuyerRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## CapacitySettings



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>min</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>max</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## CertificateRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## CommerceParameter



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>ParameterType</td>
	        <td></td>
            <td>. Allowed values: SingleLineText,MultiLineText,Address,Contact,Checkbox,Choice,Subdomain,Heading,DropDown,Email,DataObject,Date,DateAndTime,Collection</td>
        </tr>
        <tr>
            <td><code>phase</code></td>
            <td>ParameterPhase</td>
	        <td></td>
            <td>. Allowed values: Configuration,Order,Fulfillment</td>
        </tr>
        <tr>
            <td><code>scope</code></td>
            <td>ParameterScope</td>
	        <td></td>
            <td>. Allowed values: Agreement,Item,Subscription,Order,Asset</td>
        </tr>
        <tr>
            <td><code>multiple</code></td>
            <td>boolean</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td>ParametrisedMessage</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>constraints</code></td>
            <td>ParameterConstraints</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>displayValue</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>value</code></td>
            <td>object</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## CommerceTermsAndConditionsRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>accepted</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>acceptedBy</code></td>
            <td>ExtendedIdentity</td>
	        <td></td>
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
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>client</code></td>
            <td>boolean</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>partner</code></td>
            <td>boolean</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ErpLinkRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>companyName</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>ErpLinkStatus</td>
	        <td></td>
            <td>. Allowed values: Active,Blocked,Disabled</td>
        </tr>
    </tbody>
</table>

## ExtendedIdentity



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>firstName</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>lastName</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>email</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## ExternalIds



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>client</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>operations</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## ItemGroupRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## LicenseeRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ListingRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## MarkupSourcePrice



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>type</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>ref</code></td>
            <td>MarkupSourceRefPrice</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## MarkupSourceRefPrice



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## Order



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>OrderAudit</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>OrderType</td>
	        <td></td>
            <td>. Allowed values: Purchase,Change,Termination,Configuration</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>OrderStatus</td>
	        <td></td>
            <td>. Allowed values: New,Draft,Deleted,Processing,Querying,Failed,Completed,Quoted</td>
        </tr>
        <tr>
            <td><code>notes</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>comments</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>statusNotes</code></td>
            <td>ParametrisedMessage</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>template</code></td>
            <td>TemplateRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>listing</code></td>
            <td>ListingRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>authorization</code></td>
            <td>AuthorizationRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>agreement</code></td>
            <td>AgreementRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>assignee</code></td>
            <td>PlatformIdentityRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>ExternalIds</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>OrderSummaryPrice</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>lines</code></td>
            <td>array</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>subscriptions</code></td>
            <td>array</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>assets</code></td>
            <td>array</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>ParameterBag</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td>ParametrisedMessage</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td>ProductRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>client</code></td>
            <td>AccountRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>licensee</code></td>
            <td>LicenseeRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>buyer</code></td>
            <td>BuyerRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>seller</code></td>
            <td>SellerRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>AccountRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>billTo</code></td>
            <td>BuyerRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>pricingPolicy</code></td>
            <td>PricingPolicyRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>termsAndConditions</code></td>
            <td>array</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>certificates</code></td>
            <td>array</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkupSource</code></td>
            <td>MarkupSource</td>
	        <td></td>
            <td>. Allowed values: Unknown,PriceList,PricingPolicy,Manual</td>
        </tr>
    </tbody>
</table>

## OrderAsset



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>OrderAssetAudit</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>ExternalIds</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AssetStatus</td>
	        <td></td>
            <td>. Allowed values: New,Draft,Active,Terminated</td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>AssetSummaryPrice</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>template</code></td>
            <td>TemplateRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>AssetParameterBag</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terms</code></td>
            <td>Terms</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>lines</code></td>
            <td>array</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## OrderAssetAudit



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>created</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>draft</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>active</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## OrderAssetRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AssetStatus</td>
	        <td></td>
            <td>. Allowed values: New,Draft,Active,Terminated</td>
        </tr>
    </tbody>
</table>

## OrderAudit



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>created</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>completed</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>deleted</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>failed</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>processing</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>querying</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>quoted</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## OrderLine



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>PlatformObjectAudit</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>oldQuantity</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>quantity</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>OrderLinePrice</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>item</code></td>
            <td>ProductItem</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>subscription</code></td>
            <td>OrderSubscription</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>asset</code></td>
            <td>OrderAsset</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>agreement</code></td>
            <td>Agreement</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>order</code></td>
            <td>Order</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>client</code></td>
            <td>Account</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>Account</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>buyer</code></td>
            <td>Buyer</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>seller</code></td>
            <td>Seller</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td>Product</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>info</code></td>
            <td>PriceInfo</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## OrderLinePrice



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>currency</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>markup</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>margin</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkupSource</code></td>
            <td>MarkupSourcePrice</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>markupSource</code></td>
            <td>MarkupSourcePrice</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>unitSP</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>unitPP</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPx1</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPx1</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxY</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxM</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxY</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxM</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## OrderSubscription



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>OrderSubscriptionAudit</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>startDate</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminationDate</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>ExternalIds</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terms</code></td>
            <td>Terms</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td>ProductRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>OrderSubscriptionStatus</td>
	        <td></td>
            <td>. Allowed values: Draft,Active,Deleted,Updating,Terminating,Terminated</td>
        </tr>
        <tr>
            <td><code>commitmentDate</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>SubscriptionParameterBag</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>agreement</code></td>
            <td>AgreementRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>SubscriptionSummaryPrice</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>lines</code></td>
            <td>array</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>template</code></td>
            <td>TemplateRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>autoRenew</code></td>
            <td>boolean</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## OrderSubscriptionAudit



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>created</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>active</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminating</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updating</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## OrderSubscriptionRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>OrderSubscriptionStatus</td>
	        <td></td>
            <td>. Allowed values: Draft,Active,Deleted,Updating,Terminating,Terminated</td>
        </tr>
        <tr>
            <td><code>autoRenew</code></td>
            <td>boolean</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## OrderSummaryPrice



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>currency</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>markup</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>margin</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkupSource</code></td>
            <td>MarkupSourcePrice</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>markupSource</code></td>
            <td>MarkupSourcePrice</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkup</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPx1</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPx1</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxY</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxM</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxY</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxM</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## ParameterBag



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>ordering</code></td>
            <td>array</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>fulfillment</code></td>
            <td>array</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## ParameterConstraints



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>required</code></td>
            <td>boolean</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>hidden</code></td>
            <td>boolean</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>readonly</code></td>
            <td>boolean</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>capacity</code></td>
            <td>CapacitySettings</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## ParameterValue



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>multiple</code></td>
            <td>boolean</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>value</code></td>
            <td>object</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>displayValue</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ParametrisedMessage



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>message</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>object</td>
	        <td></td>
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
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
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
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>omitted</code></td>
            <td>array</td>
	        <td></td>
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
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>created</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
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
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>at</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>by</code></td>
            <td>PlatformIdentityRef</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## PreValidationSettings



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>purchaseOrderDraft</code></td>
            <td>boolean</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>purchaseOrderQuerying</code></td>
            <td>boolean</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>changeOrderDraft</code></td>
            <td>boolean</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>configurationOrderDraft</code></td>
            <td>boolean</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminationOrder</code></td>
            <td>boolean</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## PriceInfo



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>visible</code></td>
            <td>boolean</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## PriceListRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>currency</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## PricingPolicyEligibility



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>client</code></td>
            <td>boolean</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>partner</code></td>
            <td>boolean</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## PricingPolicyRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>client</code></td>
            <td>Account</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>eligibility</code></td>
            <td>PricingPolicyEligibility</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>products</code></td>
            <td>array</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## Product



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>ProductAudit</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>shortDescription</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>longDescription</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>ProductExternalIdBag</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>website</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>AccountRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>settings</code></td>
            <td>ProductSettings</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>statistics</code></td>
            <td>ProductStatistics</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## ProductAudit



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>created</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>published</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>pending</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>unpublished</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## ProductExternalIdBag



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>operations</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultErpItem</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ProductItem



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>ProductItemAudit</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>ProductItemExternalIdBag</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>group</code></td>
            <td>ItemGroupRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>unit</code></td>
            <td>UnitOfMeasureRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terms</code></td>
            <td>Terms</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>quantityNotApplicable</code></td>
            <td>boolean</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td>ProductRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>array</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## ProductItemAudit



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>created</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>pending</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>published</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>unpublished</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## ProductItemExternalIdBag



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>vendor</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>operations</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ProductRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>ProductExternalIdBag</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ProductRequestsSetting



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>enabled</code></td>
            <td>boolean</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>label</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ProductSettings



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>productOrdering</code></td>
            <td>boolean</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>productRequests</code></td>
            <td>ProductRequestsSetting</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>itemSelection</code></td>
            <td>boolean</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>orderQueueChanges</code></td>
            <td>boolean</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>preValidation</code></td>
            <td>PreValidationSettings</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>splitBilling</code></td>
            <td>ProductSplitBillingRequestsSetting</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>sendCostToErp</code></td>
            <td>boolean</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>subscriptionCessation</code></td>
            <td>SubscriptionCessationSetting</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## ProductSplitBillingRequestsSetting



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>enabled</code></td>
            <td>boolean</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ProductStatistics



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>itemCount</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>ordersPlacedCount</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>agreementCount</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>subscriptionCount</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## Seller



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>PlatformObjectAudit</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>SellerStatus</td>
	        <td></td>
            <td>. Allowed values: Active,Disabled,Offline,Deleted</td>
        </tr>
        <tr>
            <td><code>currencies</code></td>
            <td>array</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>address</code></td>
            <td>Address</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>erpLink</code></td>
            <td>ErpLinkRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>attributes</code></td>
            <td>SellerAttributes</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## SellerAttributes



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>navision</code></td>
            <td>object</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## SellerCurrency



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>value</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>billingEnabled</code></td>
            <td>boolean</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>isDefault</code></td>
            <td>boolean</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## SellerRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## SplitBillingAgreementRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## SplitBillingSubscriptionRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## Subscription



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>SubscriptionAudit</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>startDate</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminationDate</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>ExternalIds</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terms</code></td>
            <td>Terms</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td>ProductRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>autoRenew</code></td>
            <td>boolean</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>SubscriptionStatus</td>
	        <td></td>
            <td>. Allowed values: Active,Updating,Terminating,Terminated,Expired</td>
        </tr>
        <tr>
            <td><code>commitmentDate</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>SubscriptionSummaryPrice</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>SubscriptionParameterBag</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>agreement</code></td>
            <td>AgreementRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>buyer</code></td>
            <td>BuyerRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>licensee</code></td>
            <td>LicenseeRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>seller</code></td>
            <td>SellerRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>split</code></td>
            <td>SplitBillingSubscriptionRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>splitStatus</code></td>
            <td>SplitStatus</td>
	        <td></td>
            <td>. Allowed values: Disabled,Active,Review</td>
        </tr>
        <tr>
            <td><code>lines</code></td>
            <td>array</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>template</code></td>
            <td>TemplateRef</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## SubscriptionAudit



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>created</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>active</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminated</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminating</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updating</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>expired</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>renewed</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## SubscriptionCessationSetting



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>enabled</code></td>
            <td>boolean</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>mode</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## SubscriptionParameterBag



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>fulfillment</code></td>
            <td>array</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## SubscriptionRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## SubscriptionSummaryPrice



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>currency</code></td>
            <td>string</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>markup</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>margin</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkupSource</code></td>
            <td>MarkupSourcePrice</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>markupSource</code></td>
            <td>MarkupSourcePrice</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxY</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxM</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxY</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxM</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkup</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMargin</code></td>
            <td>number</td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## TemplateRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## Terms



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>model</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>period</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>commitment</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>

## UnitOfMeasureRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
	        <td>✔</td>
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
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>logo</code></td>
            <td>string</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>isDefault</code></td>
            <td>boolean</td>
	        <td>✔</td>
            <td></td>
        </tr>
    </tbody>
</table>
