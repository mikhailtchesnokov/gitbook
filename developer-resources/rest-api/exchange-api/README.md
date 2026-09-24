# Exchange API

You can also perform additional operations, including:

*  Gets a list of currencies.

*  Creates a new currency.

*  Retrieves a currency by ID.

*  Updates an existing currency.

*  Deletes currency by ID.

*  Gets a download redirect for a currency icon.

*  Gets a list of currency pairs.

*  Creates a new pair or pairs of currencies.

*  Updates pairs from bulk data.

*  Deletes multiple pairs from the body.

*  Retrieves a currency pair by ID.

*  Retrieves a rate by ID within a pair.

*  Gets a list of rates for a pair.

*  Updates rates for a pair.

*  Creates a new rate.

*  Deletes rates from bulk data.


## Before you start

Review the shared API docs before you work with currency resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)


## Core concepts

The Exchange API is built around the following core resources:

*  **Currency**  - Represents currency in exchange module.

*  **Pair**  - Represents a pair of currencies in exchange module.

*  **Rate**  - Record of rate for specific day


## Browse collections

The API is organized into collections, each containing a set of operations. Access to these operations varies by role, depending on whether you are a `client`, `vendor`, or `operations` user.&#x20;

See the following sections to determine which roles are authorized to perform specific operations within each collection:

### Currencies

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/exchange/currencies</a></td>
		<td>GET</td>
		<td>Gets a list of currencies</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-093.md">/public/v1/exchange/currencies/{id}</a></td>
		<td>GET</td>
		<td>Retrieves a currency by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-094.md">/public/v1/exchange/currencies/{id}/icon</a></td>
		<td>GET</td>
		<td>Gets a download redirect for a currency icon</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/post-exchange-currencies-092.md">/public/v1/exchange/currencies</a></td>
		<td>POST</td>
		<td>Creates a new currency</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="currencies/put-exchange-currencies-093.md">/public/v1/exchange/currencies/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing currency</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="currencies/delete-exchange-currencies-093.md">/public/v1/exchange/currencies/{id}</a></td>
		<td>DELETE</td>
		<td>Deletes currency by ID</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Pairs

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
		<td><a href="pairs/get-exchange-pairs-095.md">/public/v1/exchange/pairs</a></td>
		<td>GET</td>
		<td>Gets a list of currency pairs</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="pairs/get-exchange-pairs-096.md">/public/v1/exchange/pairs/{id}</a></td>
		<td>GET</td>
		<td>Retrieves a currency pair by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="pairs/post-exchange-pairs-095.md">/public/v1/exchange/pairs</a></td>
		<td>POST</td>
		<td>Creates a new pair or pairs of currencies</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="pairs/put-exchange-pairs-095.md">/public/v1/exchange/pairs</a></td>
		<td>PUT</td>
		<td>Updates pairs from bulk data</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="pairs/delete-exchange-pairs-095.md">/public/v1/exchange/pairs</a></td>
		<td>DELETE</td>
		<td>Deletes multiple pairs from the body</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Rates

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
		<td><a href="rates/get-exchange-rates-097.md">/public/v1/exchange/pairs/{pairId}/rates/{rateId}</a></td>
		<td>GET</td>
		<td>Retrieves a rate by ID within a pair</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="rates/get-exchange-rates-098.md">/public/v1/exchange/pairs/{pairId}/rates</a></td>
		<td>GET</td>
		<td>Gets a list of rates for a pair</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="rates/post-exchange-rates-099.md">/public/v1/exchange/pairs/-/rates</a></td>
		<td>POST</td>
		<td>Creates a new rate</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="rates/put-exchange-rates-098.md">/public/v1/exchange/pairs/{pairId}/rates</a></td>
		<td>PUT</td>
		<td>Updates rates for a pair</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="rates/delete-exchange-rates-100.md">/public/v1/exchange/rates</a></td>
		<td>DELETE</td>
		<td>Deletes rates from bulk data</td>
		<td>ops</td>
	</tr>
<tbody>
</table>

