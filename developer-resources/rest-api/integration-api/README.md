# Integration API

You can also perform additional operations, including:


## Before you start

Review the shared API docs before you work with currency resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)


## Core concepts

The Integration API is built around the following core resources:

*  **ExtensionCategory**  - 

*  **Document**  - 

*  **Extension**  - 

*  **Installation**  - 

*  **Instance**  - 

*  **Media**  - 

*  **Term**  - 

*  **TermVariant**  - 


## Browse collections

The API is organized into collections, each containing a set of operations. Access to these operations varies by role, depending on whether you are a `client`, `vendor`, or `operations` user.&#x20;

See the following sections to determine which roles are authorized to perform specific operations within each collection:

### Categories

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
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/categories</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/categories/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/categories</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/categories/{id}/activate</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/categories/{id}/deactivate</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/categories/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Documents

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
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/documents</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/documents/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/documents</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/documents/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/documents/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/documents/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/documents/{id}</a></td>
		<td>DELETE</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Extension

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
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{id}/icon</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{id}/installations</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{id}/installations/{installationId}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{id}/regenerate</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{id}/token</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{id}</a></td>
		<td>DELETE</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### Installation

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
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/installations</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/installations/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/installations</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/installations/{id}/redeem</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/installations/{id}/renew</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/installations/{id}/token</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/installations/-/token</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/installations/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/installations/{id}</a></td>
		<td>DELETE</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Instance

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
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/instances</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/instances/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/instances</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Media

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
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/media</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/media/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/media/{id}/image</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/media</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/media/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/media/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/media/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/media/{id}</a></td>
		<td>DELETE</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### Terms

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
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/terms</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/terms/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/terms</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/terms/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/terms/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/terms/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/terms/{id}</a></td>
		<td>DELETE</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### Termvariants

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
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/terms/{termId}/variants</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/terms/{termId}/variants/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/terms/{termId}/variants</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/terms/{termId}/variants/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/terms/{termId}/variants/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/terms/{termId}/variants/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/integration/extensions/{extensionId}/terms/{termId}/variants/{id}</a></td>
		<td>DELETE</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>

