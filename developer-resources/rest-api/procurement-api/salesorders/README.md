
## SalesOrder



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
            <td>ErpAuditBag</td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>attributes</code></td>
            <td>ErpAttributes</td>
            <td></td>
        </tr>
        <tr>
            <td><code>source</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>SalesDocumentPrice</td>
            <td></td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td>ParametrisedMessage</td>
            <td></td>
        </tr>
        <tr>
            <td><code>buyer</code></td>
            <td>BuyerRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>client</code></td>
            <td>AccountRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>seller</code></td>
            <td>SellerRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendors</code></td>
            <td>array</td>
            <td></td>
        </tr>
        <tr>
            <td><code>products</code></td>
            <td>array</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>SalesOrderStatus</td>
            <td>. Allowed values: Draft,Finalizing,Pending,Ready,Completed,Deleted,Error</td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>SalesDocumentExternalIds</td>
            <td></td>
        </tr>
        <tr>
            <td><code>salesQuote</code></td>
            <td>SalesQuoteRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>lines</code></td>
            <td>array</td>
            <td></td>
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
            <td>. Allowed values: Client,Vendor,Operations</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AccountStatus</td>
            <td>. Allowed values: Active,Enabled,Disabled</td>
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
            <td>. Allowed values: Client,Vendor,Operations</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AccountStatus</td>
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

## BuyerRef



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

## CategoryRef



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
            <td><code>status</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>

## DatePeriod

Represents the period during which a charge is applicable.

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
            <td><code>start</code></td>
            <td>string</td>
            <td>The start date and time of the period</td>
        </tr>
        <tr>
            <td><code>end</code></td>
            <td>string</td>
            <td>The end date and time of the period</td>
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

## ErpAttributes



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
            <td><code>navision</code></td>
            <td>object</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ErpAuditBag



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
            <td><code>synced</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ErpItemExternalIds



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
            <td><code>operations</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ErpItemRef



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
            <td><code>status</code></td>
            <td>ErpItemStatus</td>
            <td>. Allowed values: Active,Deleted,Blocked</td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>ErpItemExternalIds</td>
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
            <td><code>message</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>object</td>
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
            <td>PlatformIdentityRef</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ProductProfileRef



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
            <td><code>vendorProfile</code></td>
            <td>VendorProfile</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>

## SalesDocumentExternalIds



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
            <td><code>operations</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>

## SalesDocumentLinePrice



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
            <td><code>currency</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>markup</code></td>
            <td>number</td>
            <td></td>
        </tr>
        <tr>
            <td><code>margin</code></td>
            <td>number</td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPx1</code></td>
            <td>number</td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPx1</code></td>
            <td>number</td>
            <td></td>
        </tr>
        <tr>
            <td><code>unitSP</code></td>
            <td>number</td>
            <td></td>
        </tr>
        <tr>
            <td><code>unitPP</code></td>
            <td>number</td>
            <td></td>
        </tr>
    </tbody>
</table>

## SalesDocumentPrice



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
            <td><code>currency</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>markup</code></td>
            <td>number</td>
            <td></td>
        </tr>
        <tr>
            <td><code>margin</code></td>
            <td>number</td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPx1</code></td>
            <td>number</td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPx1</code></td>
            <td>number</td>
            <td></td>
        </tr>
    </tbody>
</table>

## SalesOrderLine



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
            <td><code>attributes</code></td>
            <td>ErpAttributes</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>SalesDocumentExternalIds</td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>lineNo</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>quantity</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>period</code></td>
            <td>DatePeriod</td>
            <td></td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>SalesDocumentLinePrice</td>
            <td></td>
        </tr>
        <tr>
            <td><code>erpItem</code></td>
            <td>ErpItemRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>salesOrder</code></td>
            <td>SalesOrderRef</td>
            <td></td>
        </tr>
    </tbody>
</table>

## SalesOrderRef



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
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>SalesOrderStatus</td>
            <td>. Allowed values: Draft,Finalizing,Pending,Ready,Completed,Deleted,Error</td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>SalesDocumentExternalIds</td>
            <td></td>
        </tr>
    </tbody>
</table>

## SalesQuoteRef



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
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>SalesQuoteStatus</td>
            <td>. Allowed values: Draft,Finalizing,Pending,Accepting,Accepted,Rejected,Expired,Deleted,Error,AwaitingAcceptance</td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>SalesDocumentExternalIds</td>
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
            <td><code>externalId</code></td>
            <td>string</td>
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

## VendorProfile



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
            <td>VendorProfileAudit</td>
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
            <td><code>description</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>featured</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>website</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>linkedIn</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>facebook</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>youTube</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>xProfile</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>categories</code></td>
            <td>array</td>
            <td></td>
        </tr>
        <tr>
            <td><code>productProfiles</code></td>
            <td>array</td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>Account</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>

## VendorProfileAudit



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

## VendorProfileRef



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
            <td><code>vendor</code></td>
            <td>Account</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>
