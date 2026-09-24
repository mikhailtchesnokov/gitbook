# Procurement API

You can also perform additional operations, including:

*  Get a list of ERP items

*  Upsert ERP items

*  Delete ERP items

*  Retrieve an ERP item by ID

*  Get a list of sales orders

*  Upsert sales orders

*  Delete sales orders

*  Retrieve a sales order by ID

*  Finalize a sales order

*  Retry a sales order will try to finalize order again if the order is in an error status.

*  Get sales order attachments

*  Download a sales order attachment

*  Get a list of sales quotes

*  Upsert sales quotes

*  Delete sales quotes

*  Retrieve a sales quote by ID

*  Finalize a sales quote

*  Reject a sales quote

*  Retry a sales quote will try to finalize or accept the quote again if the quote is in an error status.

*  Accept a sales quote

*  Get sales quote attachments

*  Download a sales quote attachment


## Before you start

Review the shared API docs before you work with currency resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)


## Core concepts

The Procurement API is built around the following core resources:

*  **ErpItem**  - 

*  **SalesOrder**  - 

*  **SalesQuote**  - 


## Browse collections

The API is organized into collections, each containing a set of operations. Access to these operations varies by role, depending on whether you are a `client`, `vendor`, or `operations` user.&#x20;

See the following sections to determine which roles are authorized to perform specific operations within each collection:

### Erpitems

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/procurement/erp-items</a></td>
		<td>GET</td>
		<td>Get a list of ERP items</td>
		<td>ops,vendor,client</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/procurement/erp-items/{id}</a></td>
		<td>GET</td>
		<td>Retrieve an ERP item by ID</td>
		<td>ops,vendor,client</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/procurement/erp-items</a></td>
		<td>POST</td>
		<td>Upsert ERP items</td>
		<td>ops,vendor,client</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/procurement/erp-items</a></td>
		<td>DELETE</td>
		<td>Delete ERP items</td>
		<td>ops,vendor,client</td>
	</tr>
<tbody>
</table>



### Salesorders

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/procurement/sales-orders</a></td>
		<td>GET</td>
		<td>Get a list of sales orders</td>
		<td>client,ops,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/procurement/sales-orders/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a sales order by ID</td>
		<td>client,ops,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/procurement/sales-orders/{id}/attachments</a></td>
		<td>GET</td>
		<td>Get sales order attachments</td>
		<td>client,ops,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/procurement/sales-orders/{id}/attachments/{attachmentId}</a></td>
		<td>GET</td>
		<td>Download a sales order attachment</td>
		<td>client,ops,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/procurement/sales-orders</a></td>
		<td>POST</td>
		<td>Upsert sales orders</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/procurement/sales-orders/{id}/finalize</a></td>
		<td>POST</td>
		<td>Finalize a sales order</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/procurement/sales-orders/{id}/retry</a></td>
		<td>POST</td>
		<td>Retry a sales order will try to finalize order again if the order is in an error status</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/procurement/sales-orders</a></td>
		<td>DELETE</td>
		<td>Delete sales orders</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Salesquotes

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/procurement/sales-quotes</a></td>
		<td>GET</td>
		<td>Get a list of sales quotes</td>
		<td>client,ops,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/procurement/sales-quotes/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a sales quote by ID</td>
		<td>client,ops,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/procurement/sales-quotes/{id}/attachments</a></td>
		<td>GET</td>
		<td>Get sales quote attachments</td>
		<td>client,ops,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/procurement/sales-quotes/{id}/attachments/{attachmentId}</a></td>
		<td>GET</td>
		<td>Download a sales quote attachment</td>
		<td>client,ops,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/procurement/sales-quotes</a></td>
		<td>POST</td>
		<td>Upsert sales quotes</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/procurement/sales-quotes/{id}/finalize</a></td>
		<td>POST</td>
		<td>Finalize a sales quote</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/procurement/sales-quotes/{id}/reject</a></td>
		<td>POST</td>
		<td>Reject a sales quote</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/procurement/sales-quotes/{id}/retry</a></td>
		<td>POST</td>
		<td>Retry a sales quote will try to finalize or accept the quote again if the quote is in an error status</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/procurement/sales-quotes/{id}/accept</a></td>
		<td>POST</td>
		<td>Accept a sales quote</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/procurement/sales-quotes</a></td>
		<td>DELETE</td>
		<td>Delete sales quotes</td>
		<td>ops</td>
	</tr>
<tbody>
</table>

