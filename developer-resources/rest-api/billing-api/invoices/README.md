
#Invoice

Represents an invoice entity in the billing system.

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
                <td>InvoiceAuditBag</td>
                <td>Represents a container for audit-related events for an invoice
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
                <td>The unique identifier of the invoice.
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
                <td><code>externalIds</code></td>
                <td>ErpExternalIds</td>
                <td>Invoice external ids.
                </td>
            </tr>
            <tr>
                <td><code>buyer</code></td>
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
                <td><code>attributes</code></td>
                <td>InvoiceErpAttributes</td>
                <td>ERP attributes associated with the entity.
                </td>
            </tr>
            <tr>
                <td><code>status</code></td>
                <td>InvoiceStatus</td>
                <td>The current status of the invoice.            
            Allowed values:
            <ul>
                <li><code>Issued</code></li>
                                <li><code>Paid</code></li>
                                <li><code>Overdue</code></li>
                                
            </ul>
                </td>
            </tr>
            <tr>
                <td><code>statement</code></td>
                <td>object</td>
                <td>
                </td>
            </tr>
            <tr>
                <td><code>agreement</code></td>
                <td>object</td>
                <td>
                </td>
            </tr>
            <tr>
                <td><code>billingType</code></td>
                <td>BillingType</td>
                <td>The billing type associated with the invoice.            
            Allowed values:
            <ul>
                <li><code>Automated</code></li>
                                <li><code>Manual</code></li>
                                <li><code>Consolidated</code></li>
                                
            </ul>
                </td>
            </tr>
            <tr>
                <td><code>client</code></td>
                <td>object</td>
                <td>
                </td>
            </tr>
            <tr>
                <td><code>clientId</code></td>
                <td>string</td>
                <td>The client identifier associated with the invoice, if any.
                </td>
            </tr>
            <tr>
                <td><code>licensee</code></td>
                <td>object</td>
                <td>
                </td>
            </tr>
            <tr>
                <td><code>product</code></td>
                <td>object</td>
                <td>
                </td>
            </tr>
            <tr>
                <td><code>vendor</code></td>
                <td>object</td>
                <td>
                </td>
            </tr>
            <tr>
                <td><code>erpData</code></td>
                <td>InvoiceErpData</td>
                <td>ERP-specific data related to the invoice, if available.
                </td>
            </tr>
            <tr>
                <td><code>price</code></td>
                <td>InvoicePrice</td>
                <td>Pricing details of the invoice, if available.
                </td>
            </tr>
            <tr>
                <td><code>lines</code></td>
                <td>array</td>
                <td>The list of invoice lines associated with the invoice.
                </td>
            </tr>
            <tr>
                <td><code>analytics</code></td>
                <td>AnalyticsInfo</td>
                <td>Analytics information related to the credit invoice.
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

