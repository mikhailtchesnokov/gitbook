# PublicCatalog API

The **PublicCatalog API** provides **REST** endpoints for managing resources within the **public-catalog** business domain of the SoftwareOne Marketplace. 

The API supports the following business objects:

*  **Category**  - represents a notification category that can be used to organize and filter notifications

*  **Industry**  - 

*  **ProductProfile**  - 

*  **ProductProfileAttachment**  - represents a product profile attachment entity

*  **ProductProfileMedia**  - represents a product profile media entity

*  **Segment**  - 

*  **VendorProfile**  - 

Use the API to retrieve and manage these resources. Depending on the resource, available operations include creating, updating, and deleting records.
The full list of available operations is provided below.


## Before you start

Review the shared API docs before you work with **public-catalog** resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)

## Browse collections

The API is organized into collections, each containing a set of operations. Access to these operations varies by role, depending on whether you are a `client`, `vendor`, or `operations` user.&#x20;

See the following sections to determine which roles are authorized to perform specific operations within each collection:

### Category

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
		<td><a href="category/get-public-catalog-categories-056.md">/public/v1/public-catalog/categories/{id}</a></td>
		<td>GET</td>
		<td>Gets a single category by its identifier</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="category/post-public-catalog-categories-057.md">/public/v1/public-catalog/categories</a></td>
		<td>POST</td>
		<td>Creates a new category record in the public catalog.
Accepts a request with necessary details to create the category</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="category/post-public-catalog-categories-058.md">/public/v1/public-catalog/categories/{id}/publish</a></td>
		<td>POST</td>
		<td>Publishes an category by updating its status to published</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="category/post-public-catalog-categories-059.md">/public/v1/public-catalog/categories/{id}/unpublish</a></td>
		<td>POST</td>
		<td>Unpublishes a specific category identified by its ID. This operation
sets the category record to an unpublished state in the system</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="category/put-public-catalog-categories-056.md">/public/v1/public-catalog/categories/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing category record in the public catalog</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Industry

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
		<td><a href="industry/get-public-catalog-industries-060.md">/public/v1/public-catalog/industries/{id}</a></td>
		<td>GET</td>
		<td>Gets a single industry by its identifier</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="industry/post-public-catalog-industries-061.md">/public/v1/public-catalog/industries</a></td>
		<td>POST</td>
		<td>Creates a new industry record in the public catalog.
Accepts a request with necessary details to create the industry</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="industry/post-public-catalog-industries-062.md">/public/v1/public-catalog/industries/{id}/publish</a></td>
		<td>POST</td>
		<td>Publishes an industry by updating its status to published</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="industry/post-public-catalog-industries-063.md">/public/v1/public-catalog/industries/{id}/unpublish</a></td>
		<td>POST</td>
		<td>Unpublishes a specific industry identified by its ID. This operation
sets the industry record to an unpublished state in the system</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="industry/put-public-catalog-industries-060.md">/public/v1/public-catalog/industries/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing industry record in the public catalog</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### ProductProfile

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
		<td><a href="productprofile/get-public-catalog-productprofiles-068.md">/public/v1/public-catalog/product-profiles/{id}</a></td>
		<td>GET</td>
		<td>Gets a single product profile by its identifier</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productprofile/post-public-catalog-productprofiles-069.md">/public/v1/public-catalog/product-profiles</a></td>
		<td>POST</td>
		<td>Creates a new product-profile record in the public catalog.
Accepts a request with necessary details to create the product profiles</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="productprofile/post-public-catalog-productprofiles-070.md">/public/v1/public-catalog/product-profiles/{id}/publish</a></td>
		<td>POST</td>
		<td>Publishes an product-profile by updating its status to published</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="productprofile/post-public-catalog-productprofiles-071.md">/public/v1/public-catalog/product-profiles/{id}/unpublish</a></td>
		<td>POST</td>
		<td>Unpublishes a specific product-profile identified by its ID. This operation
sets the product profiles record to an unpublished state in the system</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="productprofile/put-public-catalog-productprofiles-068.md">/public/v1/public-catalog/product-profiles/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing product-profile record in the public catalog</td>
		<td>vendor,ops</td>
	</tr>
<tbody>
</table>



### ProductProfileAttachment

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
		<td><a href="productprofileattachment/get-public-catalog-productprofileattachment-065.md">/public/v1/public-catalog/product-profiles/{productProfileId}/attachments/{id}</a></td>
		<td>GET</td>
		<td>Gets an attachment by id or redirects to its download</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productprofileattachment/post-public-catalog-productprofileattachment-064.md">/public/v1/public-catalog/product-profiles/{productProfileId}/attachments</a></td>
		<td>POST</td>
		<td>Creates a new attachment for an product profile</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productprofileattachment/put-public-catalog-productprofileattachment-065.md">/public/v1/public-catalog/product-profiles/{productProfileId}/attachments/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing product profile attachment</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### ProductProfileMedia

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
		<td><a href="productprofilemedia/get-public-catalog-productprofilemedia-067.md">/public/v1/public-catalog/product-profiles/{productProfileId}/media/{id}</a></td>
		<td>GET</td>
		<td>Represents get by media id</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productprofilemedia/post-public-catalog-productprofilemedia-066.md">/public/v1/public-catalog/product-profiles/{productProfileId}/media</a></td>
		<td>POST</td>
		<td>Represent Add/Create media for product profile</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="productprofilemedia/put-public-catalog-productprofilemedia-067.md">/public/v1/public-catalog/product-profiles/{productProfileId}/media/{id}</a></td>
		<td>PUT</td>
		<td>Update media for product profile</td>
		<td>vendor,ops</td>
	</tr>
<tbody>
</table>



### Segment

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
		<td><a href="segment/get-public-catalog-segments-072.md">/public/v1/public-catalog/segments/{id}</a></td>
		<td>GET</td>
		<td>Gets a single segment by its identifier</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="segment/post-public-catalog-segments-073.md">/public/v1/public-catalog/segments</a></td>
		<td>POST</td>
		<td>Creates a new segment record in the public catalog</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="segment/post-public-catalog-segments-074.md">/public/v1/public-catalog/segments/{id}/publish</a></td>
		<td>POST</td>
		<td>Publishes a segment in the public catalog</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="segment/post-public-catalog-segments-075.md">/public/v1/public-catalog/segments/{id}/unpublish</a></td>
		<td>POST</td>
		<td>Unpublishes a segment in the public catalog</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="segment/put-public-catalog-segments-072.md">/public/v1/public-catalog/segments/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing segment record in the public catalog</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### VendorProfile

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
		<td><a href="vendorprofile/get-public-catalog-vendorprofiles-076.md">/public/v1/public-catalog/vendor-profiles/{id}</a></td>
		<td>GET</td>
		<td>Gets a single vendor profile by its identifier</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="vendorprofile/post-public-catalog-vendorprofiles-077.md">/public/v1/public-catalog/vendor-profiles</a></td>
		<td>POST</td>
		<td>Creates a new vendor-profile record in the public catalog.
Accepts a request with necessary details to create the vendor-profiles</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="vendorprofile/post-public-catalog-vendorprofiles-078.md">/public/v1/public-catalog/vendor-profiles/{id}/publish</a></td>
		<td>POST</td>
		<td>Publishes an vendor-profile by updating its status to published</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="vendorprofile/post-public-catalog-vendorprofiles-079.md">/public/v1/public-catalog/vendor-profiles/{id}/unpublish</a></td>
		<td>POST</td>
		<td>Unpublishes a specific vendor-profile identified by its ID. This operation
sets the vendor-profiles record to an unpublished state in the system</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="vendorprofile/put-public-catalog-vendorprofiles-076.md">/public/v1/public-catalog/vendor-profiles/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing vendor-profile record in the public catalog</td>
		<td>vendor,ops</td>
	</tr>
<tbody>
</table>

