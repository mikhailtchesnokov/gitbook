# Procurement API

The **Procurement API** provides **REST** endpoints for managing resources within the **procurement** business domain of the SoftwareOne Marketplace. 

The API supports the following business objects:

*  **ErpItem**  - 

*  **SalesOrder**  - 

*  **SalesQuote**  - 

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
		<td><a href="erpitem/get-procurement-erpitems-365.md">/public/v1/procurement/erp-items/{id}</a></td>
		<td>GET</td>
		<td>Retrieve an ERP item by ID</td>
		<td>ops,vendor,client</td>
	</tr>
	<tr>
		<td><a href="erpitem/post-procurement-erpitems-364.md">/public/v1/procurement/erp-items</a></td>
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
		<td><a href="salesorder/get-procurement-salesorders-367.md">/public/v1/procurement/sales-orders/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a sales order by ID</td>
		<td>client,ops,vendor</td>
	</tr>
	<tr>
		<td><a href="salesorder/post-procurement-salesorders-366.md">/public/v1/procurement/sales-orders</a></td>
		<td>POST</td>
		<td>Upsert sales orders</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="salesorder/post-procurement-salesorders-368.md">/public/v1/procurement/sales-orders/{id}/finalize</a></td>
		<td>POST</td>
		<td>Finalize a sales order</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="salesorder/post-procurement-salesorders-369.md">/public/v1/procurement/sales-orders/{id}/retry</a></td>
		<td>POST</td>
		<td>Retry a sales order will try to finalize order again if the order is in an error status</td>
		<td>ops</td>
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
		<td><a href="salesquote/get-procurement-salesquotes-371.md">/public/v1/procurement/sales-quotes/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a sales quote by ID</td>
		<td>client,ops,vendor</td>
	</tr>
	<tr>
		<td><a href="salesquote/post-procurement-salesquotes-370.md">/public/v1/procurement/sales-quotes</a></td>
		<td>POST</td>
		<td>Upsert sales quotes</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="salesquote/post-procurement-salesquotes-372.md">/public/v1/procurement/sales-quotes/{id}/finalize</a></td>
		<td>POST</td>
		<td>Finalize a sales quote</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="salesquote/post-procurement-salesquotes-373.md">/public/v1/procurement/sales-quotes/{id}/reject</a></td>
		<td>POST</td>
		<td>Reject a sales quote</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="salesquote/post-procurement-salesquotes-374.md">/public/v1/procurement/sales-quotes/{id}/retry</a></td>
		<td>POST</td>
		<td>Retry a sales quote will try to finalize or accept the quote again if the quote is in an error status</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="salesquote/post-procurement-salesquotes-375.md">/public/v1/procurement/sales-quotes/{id}/accept</a></td>
		<td>POST</td>
		<td>Accept a sales quote</td>
		<td>client,ops</td>
	</tr>
<tbody>
</table>

