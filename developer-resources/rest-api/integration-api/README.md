# Integration API

The **Integration API** provides **REST** endpoints for managing resources within the **integration** business domain of the SoftwareOne Marketplace. 

The API supports the following business objects:

*  **Document**  - 

*  **Extension**  - 

*  **ExtensionCategory**  - 

*  **Installation**  - 

*  **Instance**  - 

*  **Media**  - 

*  **Term**  - 

*  **TermVariant**  - 

*  **TokenResponse**  - 

Use the API to retrieve and manage these resources. Depending on the resource, available operations include creating, updating, and deleting records.
The full list of available operations is provided below.


## Before you start

Review the shared API docs before you work with **integration** resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)

## Browse collections

The API is organized into collections, each containing a set of operations. Access to these operations varies by role, depending on whether you are a `client`, `vendor`, or `operations` user.&#x20;

See the following sections to determine which roles are authorized to perform specific operations within each collection:

### Document

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
		<td><a href="document/get-integration-documents-093.md">/public/v1/integration/extensions/{extensionId}/documents/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="document/post-integration-documents-092.md">/public/v1/integration/extensions/{extensionId}/documents</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="document/post-integration-documents-094.md">/public/v1/integration/extensions/{extensionId}/documents/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="document/post-integration-documents-095.md">/public/v1/integration/extensions/{extensionId}/documents/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="document/put-integration-documents-093.md">/public/v1/integration/extensions/{extensionId}/documents/{id}</a></td>
		<td>PUT</td>
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
		<td><a href="extension/get-integration-extension-097.md">/public/v1/integration/extensions/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="extension/post-integration-extension-096.md">/public/v1/integration/extensions</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="extension/post-integration-extension-098.md">/public/v1/integration/extensions/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="extension/post-integration-extension-099.md">/public/v1/integration/extensions/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="extension/post-integration-extension-100.md">/public/v1/integration/extensions/{id}/regenerate</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="extension/put-integration-extension-097.md">/public/v1/integration/extensions/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
<tbody>
</table>



### Extensioncategory

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
		<td><a href="extensioncategory/get-integration-categories-089.md">/public/v1/integration/categories/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="extensioncategory/post-integration-categories-088.md">/public/v1/integration/categories</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="extensioncategory/post-integration-categories-090.md">/public/v1/integration/categories/{id}/activate</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="extensioncategory/post-integration-categories-091.md">/public/v1/integration/categories/{id}/deactivate</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="extensioncategory/put-integration-categories-089.md">/public/v1/integration/categories/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops</td>
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
		<td><a href="installation/get-integration-extension-104.md">/public/v1/integration/extensions/{id}/installations</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="installation/get-integration-extension-105.md">/public/v1/integration/extensions/{id}/installations/{installationId}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="installation/get-integration-installation-107.md">/public/v1/integration/installations/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="installation/post-integration-installation-106.md">/public/v1/integration/installations</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="installation/post-integration-installation-108.md">/public/v1/integration/installations/{id}/redeem</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="installation/post-integration-installation-109.md">/public/v1/integration/installations/{id}/renew</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="installation/put-integration-installation-107.md">/public/v1/integration/installations/{id}</a></td>
		<td>PUT</td>
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
		<td><a href="instance/get-integration-instance-111.md">/public/v1/integration/extensions/{extensionId}/instances/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="instance/post-integration-instance-110.md">/public/v1/integration/extensions/{extensionId}/instances</a></td>
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
		<td><a href="media/get-integration-media-113.md">/public/v1/integration/extensions/{extensionId}/media/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="media/post-integration-media-112.md">/public/v1/integration/extensions/{extensionId}/media</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="media/post-integration-media-114.md">/public/v1/integration/extensions/{extensionId}/media/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="media/post-integration-media-115.md">/public/v1/integration/extensions/{extensionId}/media/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="media/put-integration-media-113.md">/public/v1/integration/extensions/{extensionId}/media/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### Term

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
		<td><a href="term/get-integration-terms-117.md">/public/v1/integration/extensions/{extensionId}/terms/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="term/post-integration-terms-116.md">/public/v1/integration/extensions/{extensionId}/terms</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="term/post-integration-terms-118.md">/public/v1/integration/extensions/{extensionId}/terms/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="term/post-integration-terms-119.md">/public/v1/integration/extensions/{extensionId}/terms/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="term/put-integration-terms-117.md">/public/v1/integration/extensions/{extensionId}/terms/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### Termvariant

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
		<td><a href="termvariant/get-integration-termvariants-121.md">/public/v1/integration/extensions/{extensionId}/terms/{termId}/variants/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="termvariant/post-integration-termvariants-120.md">/public/v1/integration/extensions/{extensionId}/terms/{termId}/variants</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="termvariant/post-integration-termvariants-122.md">/public/v1/integration/extensions/{extensionId}/terms/{termId}/variants/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="termvariant/post-integration-termvariants-123.md">/public/v1/integration/extensions/{extensionId}/terms/{termId}/variants/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="termvariant/put-integration-termvariants-121.md">/public/v1/integration/extensions/{extensionId}/terms/{termId}/variants/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### Tokenresponse

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
		<td><a href="tokenresponse/post-integration-extension-101.md">/public/v1/integration/extensions/{id}/token</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="tokenresponse/post-integration-installation-102.md">/public/v1/integration/installations/{id}/token</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="tokenresponse/post-integration-installation-103.md">/public/v1/integration/installations/-/token</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>

