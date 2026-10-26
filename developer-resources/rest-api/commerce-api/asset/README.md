
## Asset


### IdPrefix 
AST

### Description
An Asset is the platform's record of a one-time purchase fulfilment for a Client under a specific [[Agreement]]. Assets represent [[Item]]s billed once rather than on a recurring schedule — as opposed to [[Subscription]]s, which represent recurring Items. Like Subscriptions, Assets are owned by the Vendor. They are created during [[Order]] Processing as an OrderAsset (a temporary representation scoped to the Order) and promoted to a live Asset when the Purchase or Change Order completes, retaining the same ID. The Vendor may also create Assets directly without an Order for migration and edge-case scenarios — this direct-creation path requires at least one Line and requires the parent Agreement to be in New, Draft, or Active status. Assets carry their own parameters, pricing, template, and Lines, but unlike Subscriptions have no renewal service, no commitment date, and no expiry path. A Terminated Asset has no effect on its parent Agreement's status — Active Assets can exist under Terminated Agreements.


### Ownership & Visibility

<table>
  <thead>
    <tr>
      <th>Actor</th>
      <th>Can Create</th>
      <th>Can Read</th>
      <th>Can Update</th>
      <th>Can Delete</th>
      <th>Notes</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Vendor</td>
      <td>Yes</td>
      <td>Yes</td>
      <td>Yes</td>
      <td>No</td>
      <td>Can create Assets directly (migration/edge cases) or via Order Processing — direct creation and every subsequent Vendor update require the parent Agreement to be in New, Draft, or Active status (see BR-019). Can update `name`, `template`, `parameters.fulfillment`, `externalIds.vendor`, and Lines — not gated by the Asset&#39;s own status (see BR-020). Can terminate via the terminate action. Read is scoped to Assets on Agreements where they are the Vendor.</td>
    </tr>
    <tr>
      <td>Operations</td>
      <td>No</td>
      <td>Yes</td>
      <td>Yes</td>
      <td>No</td>
      <td>Can update `externalIds.operations` at any time; can update `price.defaultMarkup`, `price.defaultMargin`, and markup/sale-price fields on Asset Lines only while the Asset is Active. Read is not self-scoped — Operations sees all Assets platform-wide.</td>
    </tr>
    <tr>
      <td>Client</td>
      <td>No</td>
      <td>Yes</td>
      <td>Yes</td>
      <td>No</td>
      <td>Can update `externalIds.client` at any time; can update `name` only while the Asset is Active. Cannot create, terminate, or delete Assets. Read is scoped to Assets on Agreements belonging to their own Account.</td>
    </tr>
  </tbody>
</table>



 


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
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td><a href="#assetaudit">AssetAudit</a </td>
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
            <td><code>revision</code></td>
            <td> integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td><a href="#externalids">ExternalIds</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td> AssetStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: New,Draft,Active,Terminated</td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td><a href="#assetsummaryprice">AssetSummaryPrice</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>template</code></td>
            <td><a href="#templateref">TemplateRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td><a href="#assetparameterbag">AssetParameterBag</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terms</code></td>
            <td><a href="#terms">Terms</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>agreement</code></td>
            <td><a href="#agreementref">AgreementRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td><a href="#productref">ProductRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>priceList</code></td>
            <td><a href="#pricelistref">PriceListRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>listing</code></td>
            <td><a href="#listingref">ListingRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>licensee</code></td>
            <td><a href="#licenseeref">LicenseeRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>lines</code></td>
            <td> array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
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

### Agreement

An Agreement is the platform's record of the ongoing commercial relationship between a Client and a Vendor for a specific Catalog: [[Product]]. It is the container for all [[Subscription]]s, [[Asset]]s, Lines ([[Entitlement]]s), and Commerce: [[Order]]s associated with that relationship, and it carries the relationship's own Agreement-scoped parameter state. An Agreement is normally co-created by the platform when a Purchase [[Order]] is first persisted, and thereafter its lifecycle is driven by the state transitions of its Orders and Subscriptions — from Draft through Active to the terminal states Terminated, Failed, or Deleted. Operations can additionally create an Agreement directly, outside the Order flow, for reconciliation and back-office scenarios.

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
            <td><a href="#agreementaudit">AgreementAudit</a </td>
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
            <td><code>status</code></td>
            <td> AgreementStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: New,Draft,Provisioning,Updating,Active,Terminated,Failed,Deleted</td>
        </tr>
        <tr>
            <td><code>listing</code></td>
            <td><a href="#listingref">ListingRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>authorization</code></td>
            <td><a href="#authorizationref">AuthorizationRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td><a href="#accountref">AccountRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>client</code></td>
            <td><a href="#accountref">AccountRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td><a href="#agreementsummaryprice">AgreementSummaryPrice</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>startDate</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>endDate</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>template</code></td>
            <td><a href="#templateref">TemplateRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td><a href="#parametrisedmessage">ParametrisedMessage</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>lines</code></td>
            <td> array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>assets</code></td>
            <td> array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>subscriptions</code></td>
            <td> array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td><a href="#parameterbag">ParameterBag</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>licensee</code></td>
            <td><a href="#licenseeref">LicenseeRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>buyer</code></td>
            <td><a href="#buyerref">BuyerRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>seller</code></td>
            <td><a href="#sellerref">SellerRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td><a href="#productref">ProductRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td><a href="#externalids">ExternalIds</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>split</code></td>
            <td><a href="#splitbillingagreementref">SplitBillingAgreementRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>termsAndConditions</code></td>
            <td> array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>certificates</code></td>
            <td> array</td>
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
            <td><code>active</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>provisioning</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminated</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
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
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td><a href="#agreementlineaudit">AgreementLineAudit</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>quantity</code></td>
            <td> integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>item</code></td>
            <td><a href="#productitem">ProductItem</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td><a href="#agreementlineprice">AgreementLinePrice</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>order</code></td>
            <td><a href="#order">Order</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td> AgreementLineStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Active,Terminated,Deleted,Expired</td>
        </tr>
        <tr>
            <td><code>subscription</code></td>
            <td><a href="#subscription">Subscription</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>asset</code></td>
            <td><a href="#asset">Asset</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>agreement</code></td>
            <td><a href="#agreement">Agreement</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>client</code></td>
            <td><a href="#account">Account</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td><a href="#account">Account</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>buyer</code></td>
            <td><a href="#buyer">Buyer</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>seller</code></td>
            <td><a href="#seller">Seller</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td><a href="#product">Product</a </td>
	        <td></td>
	        <td></td>
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
            <td><code>info</code></td>
            <td><a href="#priceinfo">PriceInfo</a </td>
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
            <td><code>terminated</code></td>
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
            <td> string</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>markup</code></td>
            <td> number</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>margin</code></td>
            <td> number</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkupSource</code></td>
            <td><a href="#markupsourceprice">MarkupSourcePrice</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>markupSource</code></td>
            <td><a href="#markupsourceprice">MarkupSourcePrice</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>unitSP</code></td>
            <td> number</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>unitPP</code></td>
            <td> number</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPx1</code></td>
            <td> number</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPx1</code></td>
            <td> number</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxY</code></td>
            <td> number</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxM</code></td>
            <td> number</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxY</code></td>
            <td> number</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxM</code></td>
            <td> number</td>
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
        <tr>
            <td><code>status</code></td>
            <td> AgreementStatus</td>
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
            <td> string</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>markup</code></td>
            <td> number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>margin</code></td>
            <td> number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkupSource</code></td>
            <td><a href="#markupsourceprice">MarkupSourcePrice</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>markupSource</code></td>
            <td><a href="#markupsourceprice">MarkupSourcePrice</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxY</code></td>
            <td> number</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxM</code></td>
            <td> number</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxY</code></td>
            <td> number</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxM</code></td>
            <td> number</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkup</code></td>
            <td> number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMargin</code></td>
            <td> number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>billingCurrency</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>source</code></td>
            <td> string</td>
	        <td></td>
	        <td>ops</td>
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
            <td><code>draft</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>active</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminated</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
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
            <td> array</td>
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
            <td><code>status</code></td>
            <td> AssetStatus</td>
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
            <td> string</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>markup</code></td>
            <td> number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>margin</code></td>
            <td> number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkupSource</code></td>
            <td><a href="#markupsourceprice">MarkupSourcePrice</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>markupSource</code></td>
            <td><a href="#markupsourceprice">MarkupSourcePrice</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPx1</code></td>
            <td> number</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPx1</code></td>
            <td> number</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkup</code></td>
            <td> number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMargin</code></td>
            <td> number</td>
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
            <td><code>currency</code></td>
            <td> string</td>
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
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td><a href="#buyeraudit">BuyerAudit</a </td>
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
            <td><code>externalIds</code></td>
            <td><a href="#buyerexternalids">BuyerExternalIds</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td> BuyerStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Active,Enabled,Disabled,Deleted,Unassigned,Conflict,Mismatch</td>
        </tr>
        <tr>
            <td><code>address</code></td>
            <td><a href="#address">Address</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>taxId</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>account</code></td>
            <td><a href="#accountref">AccountRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>errors</code></td>
            <td> array</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>sellers</code></td>
            <td> array</td>
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
            <td><code>activated</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>unassigned</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>disabled</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
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
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>erpCustomer</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>accountExternalId</code></td>
            <td> string</td>
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
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
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
            <td><code>name</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td> ParameterType</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: SingleLineText,MultiLineText,Address,Contact,Checkbox,Choice,Subdomain,Heading,DropDown,Email,DataObject,Date,DateAndTime,Collection</td>
        </tr>
        <tr>
            <td><code>phase</code></td>
            <td> ParameterPhase</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Configuration,Order,Fulfillment</td>
        </tr>
        <tr>
            <td><code>scope</code></td>
            <td> ParameterScope</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Agreement,Item,Subscription,Order,Asset</td>
        </tr>
        <tr>
            <td><code>multiple</code></td>
            <td> boolean</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td><a href="#parametrisedmessage">ParametrisedMessage</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>constraints</code></td>
            <td><a href="#parameterconstraints">ParameterConstraints</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>displayValue</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>value</code></td>
            <td> object</td>
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
            <td><code>accepted</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>acceptedBy</code></td>
            <td><a href="#extendedidentity">ExtendedIdentity</a </td>
	        <td></td>
	        <td></td>
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
        <tr>
            <td><code>companyName</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td> ErpLinkStatus</td>
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
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
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
            <td><code>firstName</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>lastName</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>email</code></td>
            <td> string</td>
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
            <td> string</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>operations</code></td>
            <td> string</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td> string</td>
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
        <tr>
            <td><code>externalId</code></td>
            <td> string</td>
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
            <td><code>name</code></td>
            <td> string</td>
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
            <td> string</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>ref</code></td>
            <td><a href="#markupsourcerefprice">MarkupSourceRefPrice</a </td>
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
            <td> string</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td> string</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

### Order

An Order is the platform's record of a request to create, modify, configure, terminate, suspend, or resume the commercial relationship between a Client and a Vendor for a specific [[Product]]. Every Order exists within the scope of an [[Agreement]] and carries a type — Purchase, Change, Configuration, Termination, Suspend, or Resume — that defines the nature of the requested change. Purchase, Change, Configuration, and Termination Orders are created and placed by the Client Actor; Suspend and Resume Orders are created and placed by Operations and act on existing [[Subscription]]s. All Order types are fulfilled by the Vendor, driving coupled state transitions on the [[Agreement]] and its associated [[Subscription]]s and [[Asset]]s. An Order moves through a defined lifecycle from Draft to a terminal state of Completed, Failed, or Deleted.

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
            <td><a href="#orderaudit">OrderAudit</a </td>
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
            <td><code>revision</code></td>
            <td> integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td> OrderType</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Purchase,Change,Termination,Configuration</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td> OrderStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: New,Draft,Deleted,Processing,Querying,Failed,Completed,Quoted</td>
        </tr>
        <tr>
            <td><code>notes</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>comments</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>statusNotes</code></td>
            <td><a href="#parametrisedmessage">ParametrisedMessage</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>template</code></td>
            <td><a href="#templateref">TemplateRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>listing</code></td>
            <td><a href="#listingref">ListingRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>authorization</code></td>
            <td><a href="#authorizationref">AuthorizationRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>agreement</code></td>
            <td><a href="#agreementref">AgreementRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>assignee</code></td>
            <td><a href="#platformidentityref">PlatformIdentityRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td><a href="#externalids">ExternalIds</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td><a href="#ordersummaryprice">OrderSummaryPrice</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>lines</code></td>
            <td> array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>subscriptions</code></td>
            <td> array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>assets</code></td>
            <td> array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td><a href="#parameterbag">ParameterBag</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td><a href="#parametrisedmessage">ParametrisedMessage</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td><a href="#productref">ProductRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>client</code></td>
            <td><a href="#accountref">AccountRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>licensee</code></td>
            <td><a href="#licenseeref">LicenseeRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>buyer</code></td>
            <td><a href="#buyerref">BuyerRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>seller</code></td>
            <td><a href="#sellerref">SellerRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td><a href="#accountref">AccountRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>billTo</code></td>
            <td><a href="#buyerref">BuyerRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>pricingPolicy</code></td>
            <td><a href="#pricingpolicyref">PricingPolicyRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>termsAndConditions</code></td>
            <td> array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>certificates</code></td>
            <td> array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkupSource</code></td>
            <td> MarkupSource</td>
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
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td><a href="#orderassetaudit">OrderAssetAudit</a </td>
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
            <td><code>revision</code></td>
            <td> integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td><a href="#externalids">ExternalIds</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td> AssetStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: New,Draft,Active,Terminated</td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td><a href="#assetsummaryprice">AssetSummaryPrice</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>template</code></td>
            <td><a href="#templateref">TemplateRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td><a href="#assetparameterbag">AssetParameterBag</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terms</code></td>
            <td><a href="#terms">Terms</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>lines</code></td>
            <td> array</td>
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
            <td><code>draft</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>active</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminated</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
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
            <td><code>status</code></td>
            <td> AssetStatus</td>
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
            <td><code>completed</code></td>
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
            <td></td>
        </tr>
        <tr>
            <td><code>failed</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>processing</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>querying</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>quoted</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
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
            <td><code>oldQuantity</code></td>
            <td> integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>quantity</code></td>
            <td> integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td><a href="#orderlineprice">OrderLinePrice</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>item</code></td>
            <td><a href="#productitem">ProductItem</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>subscription</code></td>
            <td><a href="#ordersubscription">OrderSubscription</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>asset</code></td>
            <td><a href="#orderasset">OrderAsset</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>agreement</code></td>
            <td><a href="#agreement">Agreement</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>order</code></td>
            <td><a href="#order">Order</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>client</code></td>
            <td><a href="#account">Account</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td><a href="#account">Account</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>buyer</code></td>
            <td><a href="#buyer">Buyer</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>seller</code></td>
            <td><a href="#seller">Seller</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td><a href="#product">Product</a </td>
	        <td></td>
	        <td></td>
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
            <td><code>info</code></td>
            <td><a href="#priceinfo">PriceInfo</a </td>
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
            <td> string</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>markup</code></td>
            <td> number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>margin</code></td>
            <td> number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkupSource</code></td>
            <td><a href="#markupsourceprice">MarkupSourcePrice</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>markupSource</code></td>
            <td><a href="#markupsourceprice">MarkupSourcePrice</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>unitSP</code></td>
            <td> number</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>unitPP</code></td>
            <td> number</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPx1</code></td>
            <td> number</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPx1</code></td>
            <td> number</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxY</code></td>
            <td> number</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxM</code></td>
            <td> number</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxY</code></td>
            <td> number</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxM</code></td>
            <td> number</td>
	        <td></td>
	        <td>vendor,ops</td>
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
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td><a href="#ordersubscriptionaudit">OrderSubscriptionAudit</a </td>
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
            <td><code>revision</code></td>
            <td> integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>startDate</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminationDate</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td><a href="#externalids">ExternalIds</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terms</code></td>
            <td><a href="#terms">Terms</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td><a href="#productref">ProductRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td> OrderSubscriptionStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Draft,Active,Deleted,Updating,Terminating,Terminated</td>
        </tr>
        <tr>
            <td><code>commitmentDate</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td><a href="#subscriptionparameterbag">SubscriptionParameterBag</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>agreement</code></td>
            <td><a href="#agreementref">AgreementRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td><a href="#subscriptionsummaryprice">SubscriptionSummaryPrice</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>lines</code></td>
            <td> array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>template</code></td>
            <td><a href="#templateref">TemplateRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>autoRenew</code></td>
            <td> boolean</td>
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
            <td><code>active</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminated</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminating</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updating</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
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
            <td><code>status</code></td>
            <td> OrderSubscriptionStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Draft,Active,Deleted,Updating,Terminating,Terminated</td>
        </tr>
        <tr>
            <td><code>autoRenew</code></td>
            <td> boolean</td>
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
            <td> string</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>markup</code></td>
            <td> number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>margin</code></td>
            <td> number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkupSource</code></td>
            <td><a href="#markupsourceprice">MarkupSourcePrice</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>markupSource</code></td>
            <td><a href="#markupsourceprice">MarkupSourcePrice</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkup</code></td>
            <td> number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPx1</code></td>
            <td> number</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPx1</code></td>
            <td> number</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxY</code></td>
            <td> number</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxM</code></td>
            <td> number</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxY</code></td>
            <td> number</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxM</code></td>
            <td> number</td>
	        <td></td>
	        <td>vendor,ops</td>
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
            <td> array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>fulfillment</code></td>
            <td> array</td>
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
            <td> boolean</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
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
            <td><code>capacity</code></td>
            <td><a href="#capacitysettings">CapacitySettings</a </td>
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
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>multiple</code></td>
            <td> boolean</td>
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
            <td><code>value</code></td>
            <td> object</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>displayValue</code></td>
            <td> string</td>
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
            <td> string</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>message</code></td>
            <td> string</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td> object</td>
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
            <td> boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>purchaseOrderQuerying</code></td>
            <td> boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>changeOrderDraft</code></td>
            <td> boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>configurationOrderDraft</code></td>
            <td> boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminationOrder</code></td>
            <td> boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
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
            <td> boolean</td>
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
            <td><code>currency</code></td>
            <td> string</td>
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
            <td><code>client</code></td>
            <td><a href="#account">Account</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>eligibility</code></td>
            <td><a href="#pricingpolicyeligibility">PricingPolicyEligibility</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>products</code></td>
            <td> array</td>
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
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td><a href="#productaudit">ProductAudit</a </td>
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
            <td><code>shortDescription</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>longDescription</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td><a href="#productexternalidbag">ProductExternalIdBag</a </td>
	        <td></td>
	        <td></td>
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
            <td><code>status</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td><a href="#accountref">AccountRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>settings</code></td>
            <td><a href="#productsettings">ProductSettings</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>statistics</code></td>
            <td><a href="#productstatistics">ProductStatistics</a </td>
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
            <td><code>published</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>pending</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>unpublished</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
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
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultErpItem</code></td>
            <td> string</td>
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
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td><a href="#productitemaudit">ProductItemAudit</a </td>
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
            <td><code>revision</code></td>
            <td> integer</td>
	        <td><code>core</code></td>
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
            <td><code>externalIds</code></td>
            <td><a href="#productitemexternalidbag">ProductItemExternalIdBag</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>group</code></td>
            <td><a href="#itemgroupref">ItemGroupRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>unit</code></td>
            <td><a href="#unitofmeasureref">UnitOfMeasureRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terms</code></td>
            <td><a href="#terms">Terms</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>quantityNotApplicable</code></td>
            <td> boolean</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td><a href="#productref">ProductRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td> array</td>
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
            <td><code>pending</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>published</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>unpublished</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
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
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>operations</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
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
        <tr>
            <td><code>externalIds</code></td>
            <td><a href="#productexternalidbag">ProductExternalIdBag</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td> string</td>
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
            <td> boolean</td>
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
            <td><code>label</code></td>
            <td> string</td>
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
            <td> boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>productRequests</code></td>
            <td><a href="#productrequestssetting">ProductRequestsSetting</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>itemSelection</code></td>
            <td> boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>orderQueueChanges</code></td>
            <td> boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>preValidation</code></td>
            <td><a href="#prevalidationsettings">PreValidationSettings</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>splitBilling</code></td>
            <td><a href="#productsplitbillingrequestssetting">ProductSplitBillingRequestsSetting</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>sendCostToErp</code></td>
            <td> boolean</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>subscriptionCessation</code></td>
            <td><a href="#subscriptioncessationsetting">SubscriptionCessationSetting</a </td>
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
            <td> boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td> string</td>
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
            <td> integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>ordersPlacedCount</code></td>
            <td> integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>agreementCount</code></td>
            <td> integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>subscriptionCount</code></td>
            <td> integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
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
            <td><code>externalId</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td> SellerStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Active,Disabled,Offline,Deleted</td>
        </tr>
        <tr>
            <td><code>currencies</code></td>
            <td> array</td>
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
            <td><code>erpLink</code></td>
            <td><a href="#erplinkref">ErpLinkRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>attributes</code></td>
            <td><a href="#sellerattributes">SellerAttributes</a </td>
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
            <td> object</td>
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
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>billingEnabled</code></td>
            <td> boolean</td>
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
        <tr>
            <td><code>externalId</code></td>
            <td> string</td>
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

### Subscription

A Subscription is the platform's record of a recurring fulfilment relationship between a Client and a Vendor for a specific Item under a Commerce [[Agreement]]. Subscriptions are owned by the Vendor — the Vendor creates and maintains them as the authoritative fulfilment record — while SoftwareOne (Operations) owns the parent [[Agreement]]. A Subscription is created during [[Order]] processing and promoted to a live record when the Purchase or Change [[Order]] completes, or created directly by the Vendor for migration and edge-case scenarios. Subscriptions carry their own parameters, pricing, terms, and rendered [[Template]], and are renewed or expired automatically by the platform's daily renewal service. A Subscription can also be suspended and resumed.

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
            <td><a href="#subscriptionaudit">SubscriptionAudit</a </td>
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
            <td><code>revision</code></td>
            <td> integer</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>startDate</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminationDate</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td><a href="#externalids">ExternalIds</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terms</code></td>
            <td><a href="#terms">Terms</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td><a href="#productref">ProductRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>autoRenew</code></td>
            <td> boolean</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td> SubscriptionStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Active,Updating,Terminating,Terminated,Expired</td>
        </tr>
        <tr>
            <td><code>commitmentDate</code></td>
            <td> string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td><a href="#subscriptionsummaryprice">SubscriptionSummaryPrice</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td><a href="#subscriptionparameterbag">SubscriptionParameterBag</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>agreement</code></td>
            <td><a href="#agreementref">AgreementRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>buyer</code></td>
            <td><a href="#buyerref">BuyerRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>licensee</code></td>
            <td><a href="#licenseeref">LicenseeRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>seller</code></td>
            <td><a href="#sellerref">SellerRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>split</code></td>
            <td><a href="#splitbillingsubscriptionref">SplitBillingSubscriptionRef</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>splitStatus</code></td>
            <td> SplitStatus</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Disabled,Active,Review</td>
        </tr>
        <tr>
            <td><code>lines</code></td>
            <td> array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>template</code></td>
            <td><a href="#templateref">TemplateRef</a </td>
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
            <td><code>active</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminated</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminating</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>updating</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>expired</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>renewed</code></td>
            <td><a href="#platformobjectevent">PlatformObjectEvent</a </td>
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
            <td> boolean</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>mode</code></td>
            <td> string</td>
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
            <td> array</td>
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
            <td> string</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>markup</code></td>
            <td> number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>margin</code></td>
            <td> number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkupSource</code></td>
            <td><a href="#markupsourceprice">MarkupSourcePrice</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>markupSource</code></td>
            <td><a href="#markupsourceprice">MarkupSourcePrice</a </td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxY</code></td>
            <td> number</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxM</code></td>
            <td> number</td>
	        <td></td>
	        <td>client,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxY</code></td>
            <td> number</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxM</code></td>
            <td> number</td>
	        <td></td>
	        <td>vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMarkup</code></td>
            <td> number</td>
	        <td></td>
	        <td>ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultMargin</code></td>
            <td> number</td>
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
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>period</code></td>
            <td> string</td>
	        <td><code>core</code></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>commitment</code></td>
            <td> string</td>
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
