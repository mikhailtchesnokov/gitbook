
## CreditMemo

Represents a credit memo in the billing system.

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
            <td><code>audit</code></td>
            <td>CreditMemoAuditBag</td>
	        <td></td>
            <td>Represents a container for audit-related events for a credit memo</td>
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
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td>The unique identifier of the credit memo</td>
        </tr>
        <tr>
            <td><code>countryCode</code></td>
            <td>string</td>
	        <td></td>
            <td>The country code</td>
        </tr>
        <tr>
            <td><code>documentNo</code></td>
            <td>string</td>
	        <td></td>
            <td>The document number assigned by the ERP system</td>
        </tr>
        <tr>
            <td><code>attributes</code></td>
            <td>BillingErpAttributes</td>
	        <td></td>
            <td>ERP attributes associated with the entity</td>
        </tr>
        <tr>
            <td><code>erpData</code></td>
            <td>CreditMemoErpData</td>
	        <td></td>
            <td>ERP-specific data related to the credit memo</td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>ErpExternalIds</td>
	        <td></td>
            <td>Credit memo external ids</td>
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
            <td><code>lines</code></td>
            <td>array</td>
	        <td></td>
            <td>The list of credit memo lines associated with the credit memo</td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>CreditMemoPriceSummary</td>
	        <td></td>
            <td>Pricing details of the credit memo</td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td>ProductRef</td>
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
            <td><code>status</code></td>
            <td>CreditMemoStatus</td>
	        <td></td>
            <td>The current status of the credit memo. Allowed values: Issued</td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>AccountRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>statement</code></td>
            <td>StatementRef</td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>analytics</code></td>
            <td>AnalyticsInfo</td>
	        <td></td>
            <td>Analytics information related to the credit memo</td>
        </tr>
        <tr>
            <td><code>cloudiqInvoiceReference</code></td>
            <td>string</td>
	        <td></td>
            <td>Cloud iQ invoice reference</td>
        </tr>
        <tr>
            <td><code>cloudiqReportLayout</code></td>
            <td>integer</td>
	        <td></td>
            <td>Cloud iQ report layout</td>
        </tr></tbody>
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

## AnalyticsInfo

Analytics insofmation.

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
            <td><code>status</code></td>
            <td>AnalyticsStatus</td>
	        <td></td>
            <td>The current status of the analytics operation. Allowed values: Pending,Running,Ready,Failed</td>
        </tr>
    </tbody>
</table>

## BillingErpAttributes

Attributes related to ERP systems for an invoice or credit memo.

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
            <td><code>postingDate</code></td>
            <td>string</td>
	        <td></td>
            <td>The date when the invoice was posted</td>
        </tr>
        <tr>
            <td><code>documentDate</code></td>
            <td>string</td>
	        <td></td>
            <td>The date when the document was created</td>
        </tr>
        <tr>
            <td><code>externalDocumentNo</code></td>
            <td>string</td>
	        <td></td>
            <td>The external document number associated with the invoice</td>
        </tr>
        <tr>
            <td><code>externalDocumentNo2</code></td>
            <td>string</td>
	        <td></td>
            <td>The second external document number associated with the invoice</td>
        </tr>
        <tr>
            <td><code>yourReference</code></td>
            <td>string</td>
	        <td></td>
            <td>Can be the custom reference (free text) or the statement ID (fixed format)</td>
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

## CreditMemoAuditBag

Represents a container for audit-related events for a credit memo

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
            <td><code>issued</code></td>
            <td>PlatformObjectEvent</td>
	        <td></td>
            <td>Contains details about the most recent event when the credit memo reached the "Issued" status</td>
        </tr>
    </tbody>
</table>

## CreditMemoErpData

Represents ERP-specific data related to a credit memo.

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
            <td><code>addresses</code></td>
            <td>ErpAddressList</td>
	        <td></td>
            <td>The list of addresses associated with the credit memo</td>
        </tr>
        <tr>
            <td><code>appliesToDocNo</code></td>
            <td>string</td>
	        <td></td>
            <td>The document number to which this credit memo applies</td>
        </tr>
        <tr>
            <td><code>currencyCode</code></td>
            <td>string</td>
	        <td></td>
            <td>The currency code of the credit memo</td>
        </tr>
        <tr>
            <td><code>documentDate</code></td>
            <td>string</td>
	        <td></td>
            <td>The document date of the credit memo</td>
        </tr>
        <tr>
            <td><code>documentNo</code></td>
            <td>string</td>
	        <td></td>
            <td>The document number of the credit memo</td>
        </tr>
        <tr>
            <td><code>externalDocumentNo</code></td>
            <td>string</td>
	        <td></td>
            <td>The external document number of the credit memo</td>
        </tr>
        <tr>
            <td><code>externalDocumentNo2</code></td>
            <td>string</td>
	        <td></td>
            <td>The second external document number of the credit memo</td>
        </tr>
        <tr>
            <td><code>insideSalesCode</code></td>
            <td>string</td>
	        <td></td>
            <td>The inside sales code associated with the credit memo</td>
        </tr>
        <tr>
            <td><code>navisionCountryCode</code></td>
            <td>string</td>
	        <td></td>
            <td>The Navision country code of the credit memo</td>
        </tr>
        <tr>
            <td><code>postingDate</code></td>
            <td>string</td>
	        <td></td>
            <td>The posting date of the credit memo</td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td></td>
            <td>The revision of the invoice, used for versioning control</td>
        </tr>
        <tr>
            <td><code>rowVersion</code></td>
            <td>integer</td>
	        <td></td>
            <td>The row version of the credit memo, used for concurrency control</td>
        </tr>
        <tr>
            <td><code>responsibilityCenterCode</code></td>
            <td>string</td>
	        <td></td>
            <td>The responsibility center code of the credit memo</td>
        </tr>
        <tr>
            <td><code>salesPersonCode</code></td>
            <td>string</td>
	        <td></td>
            <td>The sales person code of the credit memo</td>
        </tr>
        <tr>
            <td><code>shipmentMethodCode</code></td>
            <td>string</td>
	        <td></td>
            <td>The shipment method code of the credit memo</td>
        </tr>
        <tr>
            <td><code>vatRegistrationNo</code></td>
            <td>string</td>
	        <td></td>
            <td>The VAT registration number of the credit memo</td>
        </tr>
        <tr>
            <td><code>yourReference</code></td>
            <td>string</td>
	        <td></td>
            <td>The reference provided by the customer</td>
        </tr>
    </tbody>
</table>

## CreditMemoLine

Represents a line item in a credit memo, containing details such as amounts, descriptions, and identifiers.

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
            <td>The unique identifier for the credit memo line</td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
	        <td></td>
            <td>The description of the credit memo line</td>
        </tr>
        <tr>
            <td><code>description2</code></td>
            <td>string</td>
	        <td></td>
            <td>The secondary description (aka additional info) of the credit memo line</td>
        </tr>
        <tr>
            <td><code>documentNo</code></td>
            <td>string</td>
	        <td></td>
            <td>The document number associated with the credit memo line</td>
        </tr>
        <tr>
            <td><code>erpData</code></td>
            <td>CreditMemoLineErpData</td>
	        <td></td>
            <td>The ERP-specific data related to the credit memo line</td>
        </tr>
        <tr>
            <td><code>itemNo</code></td>
            <td>string</td>
	        <td></td>
            <td>The item number for the credit memo line</td>
        </tr>
        <tr>
            <td><code>lineNo</code></td>
            <td>integer</td>
	        <td></td>
            <td>The line number for the credit memo line</td>
        </tr>
        <tr>
            <td><code>period</code></td>
            <td>DatePeriod</td>
	        <td></td>
            <td>The period associated with the credit memo line</td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>CreditMemoLinePrice</td>
	        <td></td>
            <td>The price details for the credit memo line</td>
        </tr>
        <tr>
            <td><code>cloudiqTenant</code></td>
            <td>string</td>
	        <td></td>
            <td>Cloud iQ tenant</td>
        </tr>
    </tbody>
</table>

## CreditMemoLineErpData

Represents ERP-specific data related to a credit memo line.

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
            <td><code>contractNo</code></td>
            <td>string</td>
	        <td></td>
            <td>The contract number associated with the credit memo line</td>
        </tr>
        <tr>
            <td><code>countryOfUsage</code></td>
            <td>string</td>
	        <td></td>
            <td>The country of usage for the credit memo line</td>
        </tr>
        <tr>
            <td><code>dataOrigin</code></td>
            <td>integer</td>
	        <td></td>
            <td>The data origin for the credit memo line</td>
        </tr>
        <tr>
            <td><code>externalPositionNo</code></td>
            <td>string</td>
	        <td></td>
            <td>The external position number for the credit memo line</td>
        </tr>
        <tr>
            <td><code>navisionCountryCode</code></td>
            <td>string</td>
	        <td></td>
            <td>The Navision country code for the credit memo line</td>
        </tr>
        <tr>
            <td><code>parentItemNo</code></td>
            <td>string</td>
	        <td></td>
            <td>The parent item number for the credit memo line</td>
        </tr>
        <tr>
            <td><code>primary</code></td>
            <td>ErpCode</td>
	        <td></td>
            <td>The primary code details for the credit memo line, if any</td>
        </tr>
        <tr>
            <td><code>secondary</code></td>
            <td>ErpCode</td>
	        <td></td>
            <td>The secondary code details for the credit memo line, if any</td>
        </tr>
        <tr>
            <td><code>rowVersion</code></td>
            <td>integer</td>
	        <td></td>
            <td>The row version of the credit memo line, for concurrency control</td>
        </tr>
        <tr>
            <td><code>responsibilityCenterCode</code></td>
            <td>string</td>
	        <td></td>
            <td>The responsibility center code for the credit memo line</td>
        </tr>
        <tr>
            <td><code>swoPurchaseOrderNo</code></td>
            <td>string</td>
	        <td></td>
            <td>The SWO purchase order number for the credit memo line</td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>integer</td>
	        <td></td>
            <td>The type of the credit memo line</td>
        </tr>
        <tr>
            <td><code>unitOfMeasure</code></td>
            <td>string</td>
	        <td></td>
            <td>The unit of measure for the credit memo line</td>
        </tr>
        <tr>
            <td><code>varAgreementNo</code></td>
            <td>string</td>
	        <td></td>
            <td>The VAR agreement number for the credit memo line</td>
        </tr>
        <tr>
            <td><code>varPartnerNo</code></td>
            <td>string</td>
	        <td></td>
            <td>The VAR partner number for the credit memo line</td>
        </tr>
    </tbody>
</table>

## CreditMemoLinePrice

Represents the price details of a credit memo line.

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
            <td><code>amount</code></td>
            <td>number</td>
	        <td></td>
            <td>The amount for the credit memo line, visible to clients or operations</td>
        </tr>
        <tr>
            <td><code>amountIncludingVat</code></td>
            <td>number</td>
	        <td></td>
            <td>The amount including VAT for the credit memo line, visible to clients or operations</td>
        </tr>
        <tr>
            <td><code>discountAmount</code></td>
            <td>number</td>
	        <td></td>
            <td>The discount amount for the credit memo line, visible to clients or operations</td>
        </tr>
        <tr>
            <td><code>invoiceDiscountAmount</code></td>
            <td>number</td>
	        <td></td>
            <td>The invoice discount amount for the credit memo line, visible to clients or operations</td>
        </tr>
        <tr>
            <td><code>lineAmount</code></td>
            <td>number</td>
	        <td></td>
            <td>The line amount for the credit memo line, visible to clients or operations</td>
        </tr>
        <tr>
            <td><code>purchaseCurrencyCode</code></td>
            <td>string</td>
	        <td></td>
            <td>The currency used for the purchase price, visible only to operations</td>
        </tr>
        <tr>
            <td><code>purchaseCurrencyFactor</code></td>
            <td>number</td>
	        <td></td>
            <td>The factor applied to the purchase currency, visible only to operations</td>
        </tr>
        <tr>
            <td><code>purchasePrice</code></td>
            <td>number</td>
	        <td></td>
            <td>The purchase price for the credit memo line, visible only to operations</td>
        </tr>
        <tr>
            <td><code>purchasePriceLcy</code></td>
            <td>number</td>
	        <td></td>
            <td>The purchase price in local currency for the credit memo line, visible only to operations</td>
        </tr>
        <tr>
            <td><code>purchasePriceTotal</code></td>
            <td>number</td>
	        <td></td>
            <td>The total purchase price for the credit memo line, visible only to operations</td>
        </tr>
        <tr>
            <td><code>purchasePriceTotalLcy</code></td>
            <td>number</td>
	        <td></td>
            <td>The total purchase price in local currency for the credit memo line, visible only to operations</td>
        </tr>
        <tr>
            <td><code>quantity</code></td>
            <td>integer</td>
	        <td></td>
            <td>The quantity for the credit memo line</td>
        </tr>
        <tr>
            <td><code>salesMarkup</code></td>
            <td>number</td>
	        <td></td>
            <td>The sales markup for the credit memo line, visible only to operations</td>
        </tr>
        <tr>
            <td><code>salesMargin</code></td>
            <td>number</td>
	        <td></td>
            <td>The sales margin for the credit memo line, visible only to operations</td>
        </tr>
        <tr>
            <td><code>unitPrice</code></td>
            <td>number</td>
	        <td></td>
            <td>The unit price for the credit memo line</td>
        </tr>
        <tr>
            <td><code>vatBaseAmount</code></td>
            <td>number</td>
	        <td></td>
            <td>The VAT base amount for the credit memo line</td>
        </tr>
        <tr>
            <td><code>vatCalculationType</code></td>
            <td>integer</td>
	        <td></td>
            <td>The VAT calculation type for the credit memo line</td>
        </tr>
        <tr>
            <td><code>vatPercent</code></td>
            <td>number</td>
	        <td></td>
            <td>The VAT percentage for the credit memo line</td>
        </tr>
    </tbody>
</table>

## CreditMemoPriceSummary

Represents a summary of price details for a credit memo.

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
            <td>The currency of the credit memo</td>
        </tr>
        <tr>
            <td><code>currencyFactor</code></td>
            <td>number</td>
	        <td></td>
            <td>The factor applied to the currency, used for conversion or adjustments</td>
        </tr>
        <tr>
            <td><code>currencyFactor2</code></td>
            <td>number</td>
	        <td></td>
            <td>The second factor applied to the currency, used for conversion or adjustments</td>
        </tr>
        <tr>
            <td><code>margin</code></td>
            <td>number</td>
	        <td></td>
            <td>The margin value of the credit memo, visible to operations</td>
        </tr>
        <tr>
            <td><code>markup</code></td>
            <td>number</td>
	        <td></td>
            <td>The markup value of the credit memo, visible to operations</td>
        </tr>
        <tr>
            <td><code>totalPP</code></td>
            <td>number</td>
	        <td></td>
            <td>The total purchase price (PP) of the credit memo, visible to operations</td>
        </tr>
        <tr>
            <td><code>totalSP</code></td>
            <td>number</td>
	        <td></td>
            <td>The total selling price (SP) of the credit memo, visible to clients or operations</td>
        </tr>
        <tr>
            <td><code>totalST</code></td>
            <td>number</td>
	        <td></td>
            <td>The total sales tax (ST) of the credit memo, visible to clients or operations</td>
        </tr>
        <tr>
            <td><code>totalGT</code></td>
            <td>number</td>
	        <td></td>
            <td>The total gross amount (GT) of the credit memo, visible to clients or operations</td>
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
	        <th>Core</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>start</code></td>
            <td>string</td>
	        <td></td>
            <td>The start date and time of the period</td>
        </tr>
        <tr>
            <td><code>end</code></td>
            <td>string</td>
	        <td></td>
            <td>The end date and time of the period</td>
        </tr>
    </tbody>
</table>

## ErpAddress

Represents an address with various details such as name, address lines, city, postcode, country, and contact name.

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
            <td><code>name</code></td>
            <td>string</td>
	        <td></td>
            <td>The primary name associated with the address</td>
        </tr>
        <tr>
            <td><code>name2</code></td>
            <td>string</td>
	        <td></td>
            <td>The secondary name associated with the address</td>
        </tr>
        <tr>
            <td><code>email</code></td>
            <td>string</td>
	        <td></td>
            <td>The email associated with the address</td>
        </tr>
        <tr>
            <td><code>customerNo</code></td>
            <td>string</td>
	        <td></td>
            <td>The customer number associated with the address</td>
        </tr>
        <tr>
            <td><code>addressLine1</code></td>
            <td>string</td>
	        <td></td>
            <td>The first line of the address</td>
        </tr>
        <tr>
            <td><code>addressLine2</code></td>
            <td>string</td>
	        <td></td>
            <td>The second line of the address</td>
        </tr>
        <tr>
            <td><code>addressLine3</code></td>
            <td>string</td>
	        <td></td>
            <td>The third line of the address</td>
        </tr>
        <tr>
            <td><code>city</code></td>
            <td>string</td>
	        <td></td>
            <td>The city of the address</td>
        </tr>
        <tr>
            <td><code>postCode</code></td>
            <td>string</td>
	        <td></td>
            <td>The postal code of the address</td>
        </tr>
        <tr>
            <td><code>county</code></td>
            <td>string</td>
	        <td></td>
            <td>The county/state/region of the address</td>
        </tr>
        <tr>
            <td><code>country</code></td>
            <td>string</td>
	        <td></td>
            <td>The country of the address</td>
        </tr>
        <tr>
            <td><code>contactName</code></td>
            <td>string</td>
	        <td></td>
            <td>The contact name associated with the address</td>
        </tr>
        <tr>
            <td><code>contactNo</code></td>
            <td>string</td>
	        <td></td>
            <td>The contact number associated with the address</td>
        </tr>
        <tr>
            <td><code>contactEmail</code></td>
            <td>string</td>
	        <td></td>
            <td>The contact email associated with the address</td>
        </tr>
        <tr>
            <td><code>contactPhone</code></td>
            <td>string</td>
	        <td></td>
            <td>The contact phone number associated with the address</td>
        </tr>
        <tr>
            <td><code>code</code></td>
            <td>string</td>
	        <td></td>
            <td>The code associated with the address</td>
        </tr>
    </tbody>
</table>

## ErpAddressList

Represents a list of addresses for billing purposes.

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
            <td><code>billTo</code></td>
            <td>ErpAddress</td>
	        <td></td>
            <td>The bill to address</td>
        </tr>
        <tr>
            <td><code>licenseTo</code></td>
            <td>ErpAddress</td>
	        <td></td>
            <td>The license to address</td>
        </tr>
        <tr>
            <td><code>sellTo</code></td>
            <td>ErpAddress</td>
	        <td></td>
            <td>The sell to address</td>
        </tr>
        <tr>
            <td><code>shipTo</code></td>
            <td>ErpAddress</td>
	        <td></td>
            <td>The ship to address</td>
        </tr>
    </tbody>
</table>

## ErpCode

Represents ERP-specific data related to a credit memo line or invoice line.

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
            <td><code>identifier</code></td>
            <td>string</td>
	        <td></td>
            <td>The unique identifier for the ERP code</td>
        </tr>
        <tr>
            <td><code>value</code></td>
            <td>string</td>
	        <td></td>
            <td>The value of the ERP code</td>
        </tr>
        <tr>
            <td><code>version</code></td>
            <td>string</td>
	        <td></td>
            <td>The version of the ERP code</td>
        </tr>
    </tbody>
</table>

## ErpExternalIds

Represents invoice references .

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
            <td><code>statement</code></td>
            <td>string</td>
	        <td></td>
            <td>Statement identifier</td>
        </tr>
        <tr>
            <td><code>customer</code></td>
            <td>string</td>
	        <td></td>
            <td>Bill to customer identifier</td>
        </tr>
        <tr>
            <td><code>agreement</code></td>
            <td>string</td>
	        <td></td>
            <td>Agreement identifier</td>
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

## StatementRef

Represents a billing statement in the system, containing details about transactions, pricing, and associated entities.

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
            <td><code>revision</code></td>
            <td>integer</td>
	        <td>✔</td>
            <td></td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td>✔</td>
            <td>The unique identifier of the statement</td>
        </tr>
    </tbody>
</table>
