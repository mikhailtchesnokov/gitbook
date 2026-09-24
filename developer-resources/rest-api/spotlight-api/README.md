# Spotlight API

You can also perform additional operations, including:

*  Get spotlight objects for the current account and buyer group

*  Refresh spotlight cache for the current account and buyer group

*  Refresh spotlight cache for a specific object in the current context

*  Get a list of spotlight queries

*  Retrieve a spotlight query by ID

*  Update a spotlight query


## Before you start

Review the shared API docs before you work with currency resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)


## Core concepts

The Spotlight API is built around the following core resources:

*  **SpotlightQuery**  - 


## Browse collections

The API is organized into collections, each containing a set of operations. Access to these operations varies by role, depending on whether you are a `client`, `vendor`, or `operations` user.&#x20;

See the following sections to determine which roles are authorized to perform specific operations within each collection:

### Spotlightobjects

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
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/spotlight/objects</a></td>
		<td>GET</td>
		<td>Get spotlight objects for the current account and buyer group</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/spotlight/objects/-/refresh</a></td>
		<td>POST</td>
		<td>Refresh spotlight cache for the current account and buyer group</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/spotlight/objects/{id}/refresh</a></td>
		<td>POST</td>
		<td>Refresh spotlight cache for a specific object in the current context</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Spotlightqueries

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
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/spotlight/queries</a></td>
		<td>GET</td>
		<td>Get a list of spotlight queries</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/spotlight/queries/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a spotlight query by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/spotlight/queries/{id}</a></td>
		<td>PUT</td>
		<td>Update a spotlight query</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>

