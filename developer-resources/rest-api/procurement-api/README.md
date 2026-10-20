# Procurement API

The **Procurement API** provides **REST** endpoints for managing resources within the **procurement** business domain of the SoftwareOne Marketplace. 

The API supports the following business objects:

*  **ErpItem**  - 

*  **SalesOrder**  - 

*  **SalesOrderAttachment**  - 

*  **SalesQuote**  - 

*  **SalesQuoteAttachment**  - 

Use the API to retrieve and manage these resources. Depending on the resource, available operations include creating, updating, and deleting records.
The full list of available operations is provided below.


## Before you start

Review the shared API docs before you work with **procurement** resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)

## Browse collections

The API is organized into collections, each containing a set of operations. Access to these operations varies by role, depending on whether you are a `client`, `vendor`, or `operations` user.&#x20;

See the following sections to determine which roles are authorized to perform specific operations within each collection:

### ErpItem

<table>
<thead>
<tr>
 <td>Operation</td>
 <td>Method</td>
 <td>Description</td>
 <td>Access</td>
</tr>
</thead>
<tbody>
	<tr>
		<td><a href="erpitem/get-procurement-erpitems-393.md">/public/v1/procurement/erp-items</a></td>
		<td>GET</td>
		<td>Get a list of ERP items</td>
		<td>ops,vendor,client</td>
	</tr>
	<tr>
		<td><a href="erpitem/get-procurement-erpitems-394.md">/public/v1/procurement/erp-items/{id}</a></td>
		<td>GET</td>
		<td>Retrieve an ERP item by ID</td>
		<td>ops,vendor,client</td>
	</tr>
	<tr>
		<td><a href="erpitem/post-procurement-erpitems-393.md">/public/v1/procurement/erp-items</a></td>
		<td>POST</td>
		<td>Upsert ERP items</td>
		<td>ops,vendor,client</td>
	</tr>
<tbody>
</table>



### SalesOrder

<table>
<thead>
<tr>
 <td>Operation</td>
 <td>Method</td>
 <td>Description</td>
 <td>Access</td>
</tr>
</thead>
<tbody>
	<tr>
		<td><a href="salesorder/get-procurement-salesorders-395.md">/public/v1/procurement/sales-orders</a></td>
		<td>GET</td>
		<td>Get a list of sales orders</td>
		<td>client,ops,vendor</td>
	</tr>
	<tr>
		<td><a href="salesorder/get-procurement-salesorders-396.md">/public/v1/procurement/sales-orders/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a sales order by ID</td>
		<td>client,ops,vendor</td>
	</tr>
	<tr>
		<td><a href="salesorder/post-procurement-salesorders-395.md">/public/v1/procurement/sales-orders</a></td>
		<td>POST</td>
		<td>Upsert sales orders</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="salesorder/post-procurement-salesorders-397.md">/public/v1/procurement/sales-orders/{id}/finalize</a></td>
		<td>POST</td>
		<td>Finalize a sales order</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="salesorder/post-procurement-salesorders-398.md">/public/v1/procurement/sales-orders/{id}/retry</a></td>
		<td>POST</td>
		<td>Retry a sales order will try to finalize order again if the order is in an error status</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### SalesOrderAttachment

<table>
<thead>
<tr>
 <td>Operation</td>
 <td>Method</td>
 <td>Description</td>
 <td>Access</td>
</tr>
</thead>
<tbody>
	<tr>
		<td><a href="salesorderattachment/get-procurement-salesorders-399.md">/public/v1/procurement/sales-orders/{id}/attachments</a></td>
		<td>GET</td>
		<td>Get sales order attachments</td>
		<td>client,ops,vendor</td>
	</tr>
<tbody>
</table>



### SalesQuote

<table>
<thead>
<tr>
 <td>Operation</td>
 <td>Method</td>
 <td>Description</td>
 <td>Access</td>
</tr>
</thead>
<tbody>
	<tr>
		<td><a href="salesquote/get-procurement-salesquotes-400.md">/public/v1/procurement/sales-quotes</a></td>
		<td>GET</td>
		<td>Get a list of sales quotes</td>
		<td>client,ops,vendor</td>
	</tr>
	<tr>
		<td><a href="salesquote/get-procurement-salesquotes-401.md">/public/v1/procurement/sales-quotes/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a sales quote by ID</td>
		<td>client,ops,vendor</td>
	</tr>
	<tr>
		<td><a href="salesquote/post-procurement-salesquotes-400.md">/public/v1/procurement/sales-quotes</a></td>
		<td>POST</td>
		<td>Upsert sales quotes</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="salesquote/post-procurement-salesquotes-402.md">/public/v1/procurement/sales-quotes/{id}/finalize</a></td>
		<td>POST</td>
		<td>Finalize a sales quote</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="salesquote/post-procurement-salesquotes-403.md">/public/v1/procurement/sales-quotes/{id}/reject</a></td>
		<td>POST</td>
		<td>Reject a sales quote</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="salesquote/post-procurement-salesquotes-404.md">/public/v1/procurement/sales-quotes/{id}/retry</a></td>
		<td>POST</td>
		<td>Retry a sales quote will try to finalize or accept the quote again if the quote is in an error status</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="salesquote/post-procurement-salesquotes-405.md">/public/v1/procurement/sales-quotes/{id}/accept</a></td>
		<td>POST</td>
		<td>Accept a sales quote</td>
		<td>client,ops</td>
	</tr>
<tbody>
</table>



### SalesQuoteAttachment

<table>
<thead>
<tr>
 <td>Operation</td>
 <td>Method</td>
 <td>Description</td>
 <td>Access</td>
</tr>
</thead>
<tbody>
	<tr>
		<td><a href="salesquoteattachment/get-procurement-salesquotes-406.md">/public/v1/procurement/sales-quotes/{id}/attachments</a></td>
		<td>GET</td>
		<td>Get sales quote attachments</td>
		<td>client,ops,vendor</td>
	</tr>
<tbody>
</table>

