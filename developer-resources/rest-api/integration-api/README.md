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
		<td><a href="categories/get-integration-categories-101.md">/public/v1/integration/categories</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="categories/get-integration-categories-102.md">/public/v1/integration/categories/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="categories/post-integration-categories-101.md">/public/v1/integration/categories</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="categories/post-integration-categories-103.md">/public/v1/integration/categories/{id}/activate</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="categories/post-integration-categories-104.md">/public/v1/integration/categories/{id}/deactivate</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="categories/put-integration-categories-102.md">/public/v1/integration/categories/{id}</a></td>
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
		<td><a href="documents/get-integration-documents-105.md">/public/v1/integration/extensions/{extensionId}/documents</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="documents/get-integration-documents-106.md">/public/v1/integration/extensions/{extensionId}/documents/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="documents/post-integration-documents-105.md">/public/v1/integration/extensions/{extensionId}/documents</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="documents/post-integration-documents-107.md">/public/v1/integration/extensions/{extensionId}/documents/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="documents/post-integration-documents-108.md">/public/v1/integration/extensions/{extensionId}/documents/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="documents/put-integration-documents-106.md">/public/v1/integration/extensions/{extensionId}/documents/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="documents/delete-integration-documents-106.md">/public/v1/integration/extensions/{extensionId}/documents/{id}</a></td>
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
		<td><a href="extension/get-integration-extension-109.md">/public/v1/integration/extensions</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="extension/get-integration-extension-110.md">/public/v1/integration/extensions/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="extension/get-integration-extension-115.md">/public/v1/integration/extensions/{id}/icon</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="extension/get-integration-extension-116.md">/public/v1/integration/extensions/{id}/installations</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="extension/get-integration-extension-117.md">/public/v1/integration/extensions/{id}/installations/{installationId}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="extension/post-integration-extension-109.md">/public/v1/integration/extensions</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="extension/post-integration-extension-111.md">/public/v1/integration/extensions/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="extension/post-integration-extension-112.md">/public/v1/integration/extensions/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="extension/post-integration-extension-113.md">/public/v1/integration/extensions/{id}/regenerate</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="extension/post-integration-extension-114.md">/public/v1/integration/extensions/{id}/token</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="extension/put-integration-extension-110.md">/public/v1/integration/extensions/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="extension/delete-integration-extension-110.md">/public/v1/integration/extensions/{id}</a></td>
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
		<td><a href="installation/get-integration-installation-118.md">/public/v1/integration/installations</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="installation/get-integration-installation-119.md">/public/v1/integration/installations/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="installation/post-integration-installation-118.md">/public/v1/integration/installations</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="installation/post-integration-installation-120.md">/public/v1/integration/installations/{id}/redeem</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="installation/post-integration-installation-121.md">/public/v1/integration/installations/{id}/renew</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="installation/post-integration-installation-122.md">/public/v1/integration/installations/{id}/token</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="installation/post-integration-installation-123.md">/public/v1/integration/installations/-/token</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="installation/put-integration-installation-119.md">/public/v1/integration/installations/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="installation/delete-integration-installation-119.md">/public/v1/integration/installations/{id}</a></td>
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
		<td><a href="instance/get-integration-instance-124.md">/public/v1/integration/extensions/{extensionId}/instances</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="instance/get-integration-instance-125.md">/public/v1/integration/extensions/{extensionId}/instances/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="instance/post-integration-instance-124.md">/public/v1/integration/extensions/{extensionId}/instances</a></td>
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
		<td><a href="media/get-integration-media-126.md">/public/v1/integration/extensions/{extensionId}/media</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="media/get-integration-media-127.md">/public/v1/integration/extensions/{extensionId}/media/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="media/get-integration-media-130.md">/public/v1/integration/extensions/{extensionId}/media/{id}/image</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="media/post-integration-media-126.md">/public/v1/integration/extensions/{extensionId}/media</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="media/post-integration-media-128.md">/public/v1/integration/extensions/{extensionId}/media/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="media/post-integration-media-129.md">/public/v1/integration/extensions/{extensionId}/media/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="media/put-integration-media-127.md">/public/v1/integration/extensions/{extensionId}/media/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="media/delete-integration-media-127.md">/public/v1/integration/extensions/{extensionId}/media/{id}</a></td>
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
		<td><a href="terms/get-integration-terms-131.md">/public/v1/integration/extensions/{extensionId}/terms</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="terms/get-integration-terms-132.md">/public/v1/integration/extensions/{extensionId}/terms/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="terms/post-integration-terms-131.md">/public/v1/integration/extensions/{extensionId}/terms</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="terms/post-integration-terms-133.md">/public/v1/integration/extensions/{extensionId}/terms/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="terms/post-integration-terms-134.md">/public/v1/integration/extensions/{extensionId}/terms/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="terms/put-integration-terms-132.md">/public/v1/integration/extensions/{extensionId}/terms/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="terms/delete-integration-terms-132.md">/public/v1/integration/extensions/{extensionId}/terms/{id}</a></td>
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
		<td><a href="termvariants/get-integration-termvariants-135.md">/public/v1/integration/extensions/{extensionId}/terms/{termId}/variants</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="termvariants/get-integration-termvariants-136.md">/public/v1/integration/extensions/{extensionId}/terms/{termId}/variants/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="termvariants/post-integration-termvariants-135.md">/public/v1/integration/extensions/{extensionId}/terms/{termId}/variants</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="termvariants/post-integration-termvariants-137.md">/public/v1/integration/extensions/{extensionId}/terms/{termId}/variants/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="termvariants/post-integration-termvariants-138.md">/public/v1/integration/extensions/{extensionId}/terms/{termId}/variants/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="termvariants/put-integration-termvariants-136.md">/public/v1/integration/extensions/{extensionId}/terms/{termId}/variants/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="termvariants/delete-integration-termvariants-136.md">/public/v1/integration/extensions/{extensionId}/terms/{termId}/variants/{id}</a></td>
		<td>DELETE</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>

