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
		<td><a href="developer-resources/exchange-api/currencies/get-currencies.md">/public/v1/exchange/currencies</a></td>
		<td>GET</td>
		<td>Gets a list of currencies.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/exchange/currencies/{id}</td>
		<td>GET</td>
		<td>Retrieves a currency by ID.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/exchange/currencies/{id}/icon</td>
		<td>GET</td>
		<td>Gets a download redirect for a currency icon.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/exchange/currencies</td>
		<td>POST</td>
		<td>Creates a new currency.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/exchange/currencies/{id}</td>
		<td>PUT</td>
		<td>Updates an existing currency.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/exchange/currencies/{id}</td>
		<td>DELETE</td>
		<td>Deletes currency by ID.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
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
		<td>/public/v1/exchange/pairs</td>
		<td>GET</td>
		<td>Gets a list of currency pairs.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/exchange/pairs/{id}</td>
		<td>GET</td>
		<td>Retrieves a currency pair by ID.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/exchange/pairs</td>
		<td>POST</td>
		<td>Creates a new pair or pairs of currencies.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/exchange/pairs</td>
		<td>PUT</td>
		<td>Updates pairs from bulk data.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/exchange/pairs</td>
		<td>DELETE</td>
		<td>Deletes multiple pairs from the body.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
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
		<td>/public/v1/exchange/pairs/{pairId}/rates/{rateId}</td>
		<td>GET</td>
		<td>Retrieves a rate by ID within a pair.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/exchange/pairs/{pairId}/rates</td>
		<td>GET</td>
		<td>Gets a list of rates for a pair.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/exchange/pairs/-/rates</td>
		<td>POST</td>
		<td>Creates a new rate.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/exchange/pairs/{pairId}/rates</td>
		<td>PUT</td>
		<td>Updates rates for a pair.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/exchange/rates</td>
		<td>DELETE</td>
		<td>Deletes rates from bulk data.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>

