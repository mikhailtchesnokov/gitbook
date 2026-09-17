# Procurement Api

You can also perform additional operations, including:

*Get a list of ERP items

*Upsert ERP items

*Delete ERP items

*Retrieve an ERP item by ID

*Get a list of sales orders

*Upsert sales orders

*Delete sales orders

*Retrieve a sales order by ID

*Finalize a sales order

*Retry a sales order will try to finalize order again if the order is in an error status.

*Get sales order attachments

*Download a sales order attachment

*Get a list of sales quotes

*Upsert sales quotes

*Delete sales quotes

*Retrieve a sales quote by ID

*Finalize a sales quote

*Reject a sales quote

*Retry a sales quote will try to finalize or accept the quote again if the quote is in an error status.

*Accept a sales quote

*Get sales quote attachments

*Download a sales quote attachment


## Before you start

Review the shared API docs before you work with currency resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)


## Core concepts

The Procurement Api is built around the following core resources:

*  **ErpItem**  - 

*  **SalesOrder**  - 

*  **SalesQuote**  - 


## Browse collections

The API is organized into collections, each containing a set of operations. Access to these operations varies by role, depending on whether you are a `client`, `vendor`, or `operations` user.&#x20;

See the following sections to determine which roles are authorized to perform specific operations within each collection:

### ErpItems<table>
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
		<td>/public/v1/procurement/erp-items</td>
		<td>Get</td>
		<td>Get a list of ERP items</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Vendor</li>
				  <li>Client</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/procurement/erp-items</td>
		<td>Post</td>
		<td>Upsert ERP items</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Vendor</li>
				  <li>Client</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/procurement/erp-items</td>
		<td>Delete</td>
		<td>Delete ERP items</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Vendor</li>
				  <li>Client</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/procurement/erp-items/{id}</td>
		<td>Get</td>
		<td>Retrieve an ERP item by ID</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Vendor</li>
				  <li>Client</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>



### SalesOrders<table>
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
		<td>/public/v1/procurement/sales-orders</td>
		<td>Get</td>
		<td>Get a list of sales orders</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/procurement/sales-orders</td>
		<td>Post</td>
		<td>Upsert sales orders</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/procurement/sales-orders</td>
		<td>Delete</td>
		<td>Delete sales orders</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/procurement/sales-orders/{id}</td>
		<td>Get</td>
		<td>Retrieve a sales order by ID</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/procurement/sales-orders/{id}/finalize</td>
		<td>Post</td>
		<td>Finalize a sales order</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/procurement/sales-orders/{id}/retry</td>
		<td>Post</td>
		<td>Retry a sales order will try to finalize order again if the order is in an error status.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/procurement/sales-orders/{id}/attachments</td>
		<td>Get</td>
		<td>Get sales order attachments</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/procurement/sales-orders/{id}/attachments/{attachmentId}</td>
		<td>Get</td>
		<td>Download a sales order attachment</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>



### SalesQuotes<table>
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
		<td>/public/v1/procurement/sales-quotes</td>
		<td>Get</td>
		<td>Get a list of sales quotes</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/procurement/sales-quotes</td>
		<td>Post</td>
		<td>Upsert sales quotes</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/procurement/sales-quotes</td>
		<td>Delete</td>
		<td>Delete sales quotes</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/procurement/sales-quotes/{id}</td>
		<td>Get</td>
		<td>Retrieve a sales quote by ID</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/procurement/sales-quotes/{id}/finalize</td>
		<td>Post</td>
		<td>Finalize a sales quote</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/procurement/sales-quotes/{id}/reject</td>
		<td>Post</td>
		<td>Reject a sales quote</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/procurement/sales-quotes/{id}/retry</td>
		<td>Post</td>
		<td>Retry a sales quote will try to finalize or accept the quote again if the quote is in an error status.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/procurement/sales-quotes/{id}/accept</td>
		<td>Post</td>
		<td>Accept a sales quote</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/procurement/sales-quotes/{id}/attachments</td>
		<td>Get</td>
		<td>Get sales quote attachments</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/procurement/sales-quotes/{id}/attachments/{attachmentId}</td>
		<td>Get</td>
		<td>Download a sales quote attachment</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>

