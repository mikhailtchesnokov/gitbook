# Spotlight API

The **Spotlight API** provides **REST** endpoints for managing resources within the **spotlight** business domain of the SoftwareOne Marketplace. 

The API supports the following business objects:

*  **SpotlightQuery**  - 

Use the API to retrieve and manage these resources. Depending on the resource, available operations include creating, updating, and deleting records.
The full list of available operations is provided below.


## Before you start

Review the shared API docs before you work with **spotlight** resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)

## Browse collections

The API is organized into collections, each containing a set of operations. Access to these operations varies by role, depending on whether you are a `client`, `vendor`, or `operations` user.&#x20;

See the following sections to determine which roles are authorized to perform specific operations within each collection:

### SpotlightQuery

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
		<td><a href="spotlightquery/get-spotlight-spotlightqueries-376.md">/public/v1/spotlight/queries/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a spotlight query by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="spotlightquery/put-spotlight-spotlightqueries-376.md">/public/v1/spotlight/queries/{id}</a></td>
		<td>PUT</td>
		<td>Update a spotlight query</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>

