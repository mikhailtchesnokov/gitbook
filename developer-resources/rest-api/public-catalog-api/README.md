# PublicCatalog API

You can also perform additional operations, including:

*  Gets a single category by its identifier.

*  Updates an existing category record in the public catalog.

*  Soft deletes an category record from the public catalog.

*  Creates a new category record in the public catalog.
Accepts a request with necessary details to create the category.

*  Publishes an category by updating its status to published.

*  Unpublishes a specific category identified by its ID. This operation
sets the category record to an unpublished state in the system.

*  Gets a single industry by its identifier.

*  Updates an existing industry record in the public catalog.

*  Soft deletes an industry record from the public catalog.

*  Creates a new industry record in the public catalog.
Accepts a request with necessary details to create the industry.

*  Publishes an industry by updating its status to published.

*  Unpublishes a specific industry identified by its ID. This operation
sets the industry record to an unpublished state in the system.

*  Lists attachments for the specified product profile.

*  Creates a new attachment for an product profile.

*  Gets an attachment by id or redirects to its download.

*  Updates an existing product profile attachment.

*  Deletes an product profile attachment.

*  Represent Get media for product profile.

*  Represent Add/Create media for product profile.

*  Represents get by media id.

*  Update media for product profile.

*  Delete media for product profile

*  Download Image.

*  Gets a single product profile by its identifier.

*  Updates an existing product-profile record in the public catalog.

*  Soft deletes an product-profile record from the public catalog.

*  Creates a new product-profile record in the public catalog.
Accepts a request with necessary details to create the product profiles.

*  Publishes an product-profile by updating its status to published.

*  Unpublishes a specific product-profile identified by its ID. This operation
sets the product profiles record to an unpublished state in the system.

*  Retrieves the icon associated with a product-profile record.

*  Gets a single segment by its identifier.

*  Updates an existing segment record in the public catalog.

*  Deletes a segment from the public catalog.

*  Creates a new segment record in the public catalog.

*  Publishes a segment in the public catalog.

*  Unpublishes a segment in the public catalog.

*  Gets a single vendor profile by its identifier.

*  Updates an existing vendor-profile record in the public catalog.

*  Soft deletes an vendor-profile record from the public catalog.

*  Creates a new vendor-profile record in the public catalog.
Accepts a request with necessary details to create the vendor-profiles.

*  Publishes an vendor-profile by updating its status to published.

*  Unpublishes a specific vendor-profile identified by its ID. This operation
sets the vendor-profiles record to an unpublished state in the system.

*  Retrieves the icon associated with a vendor-profile record.


## Before you start

Review the shared API docs before you work with currency resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)


## Core concepts

The PublicCatalog API is built around the following core resources:

*  **Category**  - Represents a notification category that can be used to organize and filter notifications.

*  **Industry**  - 

*  **ProductProfileAttachment**  - Represents a product profile attachment entity.

*  **ProductProfileMedia**  - Represents a product profile media entity.

*  **ProductProfile**  - 

*  **Segment**  - 

*  **VendorProfile**  - 


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
		<td>/public/v1/public-catalog/categories/{id}</td>
		<td>GET</td>
		<td>Gets a single category by its identifier.</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/categories</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/categories</td>
		<td>POST</td>
		<td>Creates a new category record in the public catalog.
Accepts a request with necessary details to create the category.</td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/categories/{id}/publish</td>
		<td>POST</td>
		<td>Publishes an category by updating its status to published.</td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/categories/{id}/unpublish</td>
		<td>POST</td>
		<td>Unpublishes a specific category identified by its ID. This operation
sets the category record to an unpublished state in the system.</td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/categories/{id}</td>
		<td>PUT</td>
		<td>Updates an existing category record in the public catalog.</td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/categories/{id}</td>
		<td>DELETE</td>
		<td>Soft deletes an category record from the public catalog.</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Industries

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
		<td>/public/v1/public-catalog/industries/{id}</td>
		<td>GET</td>
		<td>Gets a single industry by its identifier.</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/industries</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/industries</td>
		<td>POST</td>
		<td>Creates a new industry record in the public catalog.
Accepts a request with necessary details to create the industry.</td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/industries/{id}/publish</td>
		<td>POST</td>
		<td>Publishes an industry by updating its status to published.</td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/industries/{id}/unpublish</td>
		<td>POST</td>
		<td>Unpublishes a specific industry identified by its ID. This operation
sets the industry record to an unpublished state in the system.</td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/industries/{id}</td>
		<td>PUT</td>
		<td>Updates an existing industry record in the public catalog.</td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/industries/{id}</td>
		<td>DELETE</td>
		<td>Soft deletes an industry record from the public catalog.</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Productprofileattachment

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
		<td>/public/v1/public-catalog/product-profiles/{productProfileId}/attachments</td>
		<td>GET</td>
		<td>Lists attachments for the specified product profile.</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/product-profiles/{productProfileId}/attachments/{id}</td>
		<td>GET</td>
		<td>Gets an attachment by id or redirects to its download.</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/product-profiles/{productProfileId}/attachments</td>
		<td>POST</td>
		<td>Creates a new attachment for an product profile.</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/product-profiles/{productProfileId}/attachments/{id}</td>
		<td>PUT</td>
		<td>Updates an existing product profile attachment.</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/product-profiles/{productProfileId}/attachments/{id}</td>
		<td>DELETE</td>
		<td>Deletes an product profile attachment.</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Productprofilemedia

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
		<td>/public/v1/public-catalog/product-profiles/{productProfileId}/media</td>
		<td>GET</td>
		<td>Represent Get media for product profile.</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/product-profiles/{productProfileId}/media/{id}</td>
		<td>GET</td>
		<td>Represents get by media id.</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/product-profiles/{productProfileId}/media/{id}/image</td>
		<td>GET</td>
		<td>Download Image.</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/product-profiles/{productProfileId}/media</td>
		<td>POST</td>
		<td>Represent Add/Create media for product profile.</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/product-profiles/{productProfileId}/media/{id}</td>
		<td>PUT</td>
		<td>Update media for product profile.</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/product-profiles/{productProfileId}/media/{id}</td>
		<td>DELETE</td>
		<td>Delete media for product profile</td>
		<td>vendor,ops</td>
	</tr>
<tbody>
</table>



### Productprofiles

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
		<td>/public/v1/public-catalog/product-profiles/{id}</td>
		<td>GET</td>
		<td>Gets a single product profile by its identifier.</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/product-profiles</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/product-profiles/{id}/icon</td>
		<td>GET</td>
		<td>Retrieves the icon associated with a product-profile record.</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/product-profiles</td>
		<td>POST</td>
		<td>Creates a new product-profile record in the public catalog.
Accepts a request with necessary details to create the product profiles.</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/product-profiles/{id}/publish</td>
		<td>POST</td>
		<td>Publishes an product-profile by updating its status to published.</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/product-profiles/{id}/unpublish</td>
		<td>POST</td>
		<td>Unpublishes a specific product-profile identified by its ID. This operation
sets the product profiles record to an unpublished state in the system.</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/product-profiles/{id}</td>
		<td>PUT</td>
		<td>Updates an existing product-profile record in the public catalog.</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/product-profiles/{id}</td>
		<td>DELETE</td>
		<td>Soft deletes an product-profile record from the public catalog.</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Segments

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
		<td>/public/v1/public-catalog/segments/{id}</td>
		<td>GET</td>
		<td>Gets a single segment by its identifier.</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/segments</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/segments</td>
		<td>POST</td>
		<td>Creates a new segment record in the public catalog.</td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/segments/{id}/publish</td>
		<td>POST</td>
		<td>Publishes a segment in the public catalog.</td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/segments/{id}/unpublish</td>
		<td>POST</td>
		<td>Unpublishes a segment in the public catalog.</td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/segments/{id}</td>
		<td>PUT</td>
		<td>Updates an existing segment record in the public catalog.</td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/segments/{id}</td>
		<td>DELETE</td>
		<td>Deletes a segment from the public catalog.</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Vendorprofiles

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
		<td>/public/v1/public-catalog/vendor-profiles/{id}</td>
		<td>GET</td>
		<td>Gets a single vendor profile by its identifier.</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/vendor-profiles</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/vendor-profiles/{id}/icon</td>
		<td>GET</td>
		<td>Retrieves the icon associated with a vendor-profile record.</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/vendor-profiles</td>
		<td>POST</td>
		<td>Creates a new vendor-profile record in the public catalog.
Accepts a request with necessary details to create the vendor-profiles.</td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/vendor-profiles/{id}/publish</td>
		<td>POST</td>
		<td>Publishes an vendor-profile by updating its status to published.</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/vendor-profiles/{id}/unpublish</td>
		<td>POST</td>
		<td>Unpublishes a specific vendor-profile identified by its ID. This operation
sets the vendor-profiles record to an unpublished state in the system.</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/vendor-profiles/{id}</td>
		<td>PUT</td>
		<td>Updates an existing vendor-profile record in the public catalog.</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td>/public/v1/public-catalog/vendor-profiles/{id}</td>
		<td>DELETE</td>
		<td>Soft deletes an vendor-profile record from the public catalog.</td>
		<td>ops</td>
	</tr>
<tbody>
</table>

