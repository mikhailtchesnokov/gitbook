
#CreditMemo

Represents a credit memo in the billing system.

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
            <td><code>audit</code></td>
            <td>CreditMemoAuditBag</td>
            <td>Represents a container for audit-related events for a credit memo
            </td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
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
            <td><code>id</code></td>
            <td>string</td>
            <td>The unique identifier of the credit memo.
            </td>
        </tr>
        <tr>
            <td><code>countryCode</code></td>
            <td>string</td>
            <td>The country code.
            </td>
        </tr>
        <tr>
            <td><code>documentNo</code></td>
            <td>string</td>
            <td>The document number assigned by the ERP system.
            </td>
        </tr>
        <tr>
            <td><code>attributes</code></td>
            <td>BillingErpAttributes</td>
            <td>ERP attributes associated with the entity.
            </td>
        </tr>
        <tr>
            <td><code>erpData</code></td>
            <td>CreditMemoErpData</td>
            <td>ERP-specific data related to the credit memo.
            </td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>ErpExternalIds</td>
            <td>Credit memo external ids.
            </td>
        </tr>
        <tr>
            <td><code>agreement</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>buyer</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>client</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>licensee</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>lines</code></td>
            <td>array</td>
            <td>The list of credit memo lines associated with the credit memo.
            </td>
        </tr>
        <tr>
            <td><code>price</code></td>
            <td>CreditMemoPriceSummary</td>
            <td>Pricing details of the credit memo.
            </td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>seller</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>CreditMemoStatus</td>
            <td>The current status of the credit memo.            
            Allowed values:
            <ul>
                <li><code>Issued</code></li>
                                
            </ul>
            </td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>statement</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>analytics</code></td>
            <td>AnalyticsInfo</td>
            <td>Analytics information related to the credit memo.
            </td>
        </tr>
        <tr>
            <td><code>cloudiqInvoiceReference</code></td>
            <td>string</td>
            <td>Cloud iQ invoice reference.
            </td>
        </tr>
        <tr>
            <td><code>cloudiqReportLayout</code></td>
            <td>integer</td>
            <td>Cloud iQ report layout.
            </td>
        </tr></tbody>
</table>

