# Exchange API

The **Exchange API** provides **REST** endpoints for managing resources within the **exchange** business domain of the SoftwareOne Marketplace. 

The API supports the following business objects:

*  **Currency**  - represents currency in exchange module

*  **Pair**  - represents a pair of currencies in exchange module

*  **PairBulkData**  - bulk operation data model

*  **Rate**  - record of rate for specific day

*  **RateBulkData**  - bulk operation data model

Use the API to retrieve and manage these resources. Depending on the resource, available operations include creating, updating, and deleting records.
The full list of available operations is provided below.


## Before you start

Review the shared API docs before you work with **exchange** resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)

## Browse collections

The API is organized into collections, each containing a set of operations. Access to these operations varies by role, depending on whether you are a `client`, `vendor`, or `operations` user.&#x20;

See the following sections to determine which roles are authorized to perform specific operations within each collection:

### Currency

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
		<td><a href="currency/get-exchange-currencies-081.md">/public/v1/exchange/currencies/{id}</a></td>
		<td>GET</td>
		<td>Retrieves a currency by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currency/post-exchange-currencies-080.md">/public/v1/exchange/currencies</a></td>
		<td>POST</td>
		<td>Creates a new currency</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="currency/put-exchange-currencies-081.md">/public/v1/exchange/currencies/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing currency</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Pair

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
		<td><a href="pair/get-exchange-pairs-083.md">/public/v1/exchange/pairs/{id}</a></td>
		<td>GET</td>
		<td>Retrieves a currency pair by ID</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### PairBulkData

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
		<td><a href="pairbulkdata/post-exchange-pairs-082.md">/public/v1/exchange/pairs</a></td>
		<td>POST</td>
		<td>Creates a new pair or pairs of currencies</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="pairbulkdata/put-exchange-pairs-082.md">/public/v1/exchange/pairs</a></td>
		<td>PUT</td>
		<td>Updates pairs from bulk data</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="pairbulkdata/delete-exchange-pairs-082.md">/public/v1/exchange/pairs</a></td>
		<td>DELETE</td>
		<td>Deletes multiple pairs from the body</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Rate

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
		<td><a href="rate/get-exchange-rates-084.md">/public/v1/exchange/pairs/{pairId}/rates/{rateId}</a></td>
		<td>GET</td>
		<td>Retrieves a rate by ID within a pair</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### RateBulkData

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
		<td><a href="ratebulkdata/post-exchange-rates-086.md">/public/v1/exchange/pairs/-/rates</a></td>
		<td>POST</td>
		<td>Creates a new rate</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="ratebulkdata/put-exchange-rates-085.md">/public/v1/exchange/pairs/{pairId}/rates</a></td>
		<td>PUT</td>
		<td>Updates rates for a pair</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="ratebulkdata/delete-exchange-rates-087.md">/public/v1/exchange/rates</a></td>
		<td>DELETE</td>
		<td>Deletes rates from bulk data</td>
		<td>ops</td>
	</tr>
<tbody>
</table>

