# Catalog API

You can also perform additional operations, including:


## Before you start

Review the shared API docs before you work with currency resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)


## Core concepts

The Catalog API is built around the following core resources:

*  **PricingPolicyAttachment**  - 

*  **Authorization**  - 

*  **ProductDocument**  - 

*  **Document**  - 

*  **ItemGroup**  - 

*  **Listing**  - 

*  **ParameterGroup**  - 

*  **ParameterDefinition**  - 

*  **PriceList**  - 

*  **PriceListItem**  - 

*  **PricingPolicy**  - 

*  **ProductItem**  - 

*  **ProductMedia**  - 

*  **Product**  - 

*  **Template**  - 

*  **TermsAndConditions**  - 

*  **TermsAndConditionsVariant**  - 

*  **UnitOfMeasure**  - 


## Browse collections

The API is organized into collections, each containing a set of operations. Access to these operations varies by role, depending on whether you are a `client`, `vendor`, or `operations` user.&#x20;

See the following sections to determine which roles are authorized to perform specific operations within each collection:

### Attachments

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
		<td><a href="attachments/get-catalog-attachments-324.md">/public/v1/catalog/pricing-policies/{pricingPolicyId}/attachments</a></td>
		<td>GET</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="attachments/get-catalog-attachments-325.md">/public/v1/catalog/pricing-policies/{pricingPolicyId}/attachments/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="attachments/post-catalog-attachments-324.md">/public/v1/catalog/pricing-policies/{pricingPolicyId}/attachments</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="attachments/put-catalog-attachments-325.md">/public/v1/catalog/pricing-policies/{pricingPolicyId}/attachments/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="attachments/delete-catalog-attachments-325.md">/public/v1/catalog/pricing-policies/{pricingPolicyId}/attachments/{id}</a></td>
		<td>DELETE</td>
		<td></td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Authorizations

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
		<td><a href="authorizations/get-catalog-authorizations-326.md">/public/v1/catalog/authorizations</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="authorizations/get-catalog-authorizations-327.md">/public/v1/catalog/authorizations/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="authorizations/post-catalog-authorizations-326.md">/public/v1/catalog/authorizations</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="authorizations/put-catalog-authorizations-327.md">/public/v1/catalog/authorizations/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="authorizations/delete-catalog-authorizations-327.md">/public/v1/catalog/authorizations/{id}</a></td>
		<td>DELETE</td>
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
		<td><a href="documents/get-catalog-documents-328.md">/public/v1/catalog/products/{productId}/documents/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="documents/get-catalog-documents-329.md">/public/v1/catalog/products/{productId}/documents</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="documents/post-catalog-documents-329.md">/public/v1/catalog/products/{productId}/documents</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="documents/post-catalog-documents-330.md">/public/v1/catalog/products/{productId}/documents/{id}/review</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="documents/post-catalog-documents-331.md">/public/v1/catalog/products/{productId}/documents/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="documents/post-catalog-documents-332.md">/public/v1/catalog/products/{productId}/documents/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="documents/put-catalog-documents-328.md">/public/v1/catalog/products/{productId}/documents/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="documents/delete-catalog-documents-328.md">/public/v1/catalog/products/{productId}/documents/{id}</a></td>
		<td>DELETE</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
<tbody>
</table>



### Itemgroups

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
		<td><a href="itemgroups/get-catalog-itemgroups-333.md">/public/v1/catalog/products/{productId}/item-groups</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="itemgroups/get-catalog-itemgroups-334.md">/public/v1/catalog/products/{productId}/item-groups/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="itemgroups/post-catalog-itemgroups-333.md">/public/v1/catalog/products/{productId}/item-groups</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="itemgroups/put-catalog-itemgroups-334.md">/public/v1/catalog/products/{productId}/item-groups/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="itemgroups/delete-catalog-itemgroups-334.md">/public/v1/catalog/products/{productId}/item-groups/{id}</a></td>
		<td>DELETE</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Listing

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
		<td><a href="listing/get-catalog-listing-335.md">/public/v1/catalog/listings</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="listing/get-catalog-listing-336.md">/public/v1/catalog/listings/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="listing/post-catalog-listing-335.md">/public/v1/catalog/listings</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="listing/put-catalog-listing-336.md">/public/v1/catalog/listings/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="listing/delete-catalog-listing-336.md">/public/v1/catalog/listings/{id}</a></td>
		<td>DELETE</td>
		<td></td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Parametergroups

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
		<td><a href="parametergroups/get-catalog-parametergroups-337.md">/public/v1/catalog/products/{productId}/parameter-groups</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="parametergroups/get-catalog-parametergroups-338.md">/public/v1/catalog/products/{productId}/parameter-groups/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="parametergroups/post-catalog-parametergroups-337.md">/public/v1/catalog/products/{productId}/parameter-groups</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="parametergroups/put-catalog-parametergroups-338.md">/public/v1/catalog/products/{productId}/parameter-groups/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="parametergroups/delete-catalog-parametergroups-338.md">/public/v1/catalog/products/{productId}/parameter-groups/{id}</a></td>
		<td>DELETE</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### Parameters

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
		<td><a href="parameters/get-catalog-parameters-339.md">/public/v1/catalog/products/{productId}/parameters</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="parameters/get-catalog-parameters-340.md">/public/v1/catalog/products/{productId}/parameters/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="parameters/post-catalog-parameters-339.md">/public/v1/catalog/products/{productId}/parameters</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="parameters/put-catalog-parameters-340.md">/public/v1/catalog/products/{productId}/parameters/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="parameters/delete-catalog-parameters-340.md">/public/v1/catalog/products/{productId}/parameters/{id}</a></td>
		<td>DELETE</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### Pricelists

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
		<td><a href="pricelists/get-catalog-pricelists-341.md">/public/v1/catalog/price-lists</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="pricelists/get-catalog-pricelists-342.md">/public/v1/catalog/price-lists/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="pricelists/post-catalog-pricelists-341.md">/public/v1/catalog/price-lists</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="pricelists/put-catalog-pricelists-342.md">/public/v1/catalog/price-lists/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="pricelists/delete-catalog-pricelists-342.md">/public/v1/catalog/price-lists/{id}</a></td>
		<td>DELETE</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
<tbody>
</table>



### Pricelistsitems

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
		<td><a href="pricelistsitems/get-catalog-pricelistsitems-343.md">/public/v1/catalog/price-lists/{priceListId}/items/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="pricelistsitems/get-catalog-pricelistsitems-344.md">/public/v1/catalog/price-lists/{priceListId}/items</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="pricelistsitems/put-catalog-pricelistsitems-343.md">/public/v1/catalog/price-lists/{priceListId}/items/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
<tbody>
</table>



### Pricingpolicies

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
		<td><a href="pricingpolicies/get-catalog-pricingpolicies-345.md">/public/v1/catalog/pricing-policies</a></td>
		<td>GET</td>
		<td></td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="pricingpolicies/get-catalog-pricingpolicies-346.md">/public/v1/catalog/pricing-policies/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="pricingpolicies/post-catalog-pricingpolicies-345.md">/public/v1/catalog/pricing-policies</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="pricingpolicies/post-catalog-pricingpolicies-347.md">/public/v1/catalog/pricing-policies/{id}/activate</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="pricingpolicies/post-catalog-pricingpolicies-348.md">/public/v1/catalog/pricing-policies/{id}/disable</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="pricingpolicies/put-catalog-pricingpolicies-346.md">/public/v1/catalog/pricing-policies/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="pricingpolicies/delete-catalog-pricingpolicies-346.md">/public/v1/catalog/pricing-policies/{id}</a></td>
		<td>DELETE</td>
		<td></td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Productitems

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
		<td><a href="productitems/get-catalog-productitems-349.md">/public/v1/catalog/items</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productitems/get-catalog-productitems-350.md">/public/v1/catalog/items/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productitems/get-catalog-productitems-354.md">/public/v1/catalog/products/{productId}/items</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productitems/get-catalog-productitems-355.md">/public/v1/catalog/products/{productId}/items/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productitems/post-catalog-productitems-349.md">/public/v1/catalog/items</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productitems/post-catalog-productitems-351.md">/public/v1/catalog/items/{id}/review</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productitems/post-catalog-productitems-352.md">/public/v1/catalog/items/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productitems/post-catalog-productitems-353.md">/public/v1/catalog/items/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productitems/put-catalog-productitems-350.md">/public/v1/catalog/items/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productitems/delete-catalog-productitems-350.md">/public/v1/catalog/items/{id}</a></td>
		<td>DELETE</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Productmedia

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
		<td><a href="productmedia/get-catalog-productmedia-356.md">/public/v1/catalog/products/{productId}/media/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productmedia/get-catalog-productmedia-357.md">/public/v1/catalog/products/{productId}/media</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productmedia/get-catalog-productmedia-361.md">/public/v1/catalog/products/{productId}/media/{id}/image</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productmedia/post-catalog-productmedia-357.md">/public/v1/catalog/products/{productId}/media</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="productmedia/post-catalog-productmedia-358.md">/public/v1/catalog/products/{productId}/media/{id}/review</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="productmedia/post-catalog-productmedia-359.md">/public/v1/catalog/products/{productId}/media/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="productmedia/post-catalog-productmedia-360.md">/public/v1/catalog/products/{productId}/media/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="productmedia/put-catalog-productmedia-356.md">/public/v1/catalog/products/{productId}/media/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="productmedia/delete-catalog-productmedia-356.md">/public/v1/catalog/products/{productId}/media/{id}</a></td>
		<td>DELETE</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
<tbody>
</table>



### Products

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
		<td><a href="products/get-catalog-products-362.md">/public/v1/catalog/products</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="products/get-catalog-products-363.md">/public/v1/catalog/products/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="products/get-catalog-products-368.md">/public/v1/catalog/products/{id}/icon</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="products/post-catalog-products-362.md">/public/v1/catalog/products</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="products/post-catalog-products-365.md">/public/v1/catalog/products/{id}/review</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="products/post-catalog-products-366.md">/public/v1/catalog/products/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="products/post-catalog-products-367.md">/public/v1/catalog/products/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="products/put-catalog-products-363.md">/public/v1/catalog/products/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="products/put-catalog-products-364.md">/public/v1/catalog/products/{id}/settings</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="products/delete-catalog-products-363.md">/public/v1/catalog/products/{id}</a></td>
		<td>DELETE</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### Templates

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
		<td><a href="templates/get-catalog-templates-369.md">/public/v1/catalog/products/{productId}/templates</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="templates/get-catalog-templates-370.md">/public/v1/catalog/products/{productId}/templates/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="templates/post-catalog-templates-369.md">/public/v1/catalog/products/{productId}/templates</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="templates/put-catalog-templates-370.md">/public/v1/catalog/products/{productId}/templates/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="templates/delete-catalog-templates-370.md">/public/v1/catalog/products/{productId}/templates/{id}</a></td>
		<td>DELETE</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### Termsandconditions

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
		<td><a href="termsandconditions/get-catalog-termsandconditions-371.md">/public/v1/catalog/products/{productId}/terms</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="termsandconditions/get-catalog-termsandconditions-372.md">/public/v1/catalog/products/{productId}/terms/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="termsandconditions/post-catalog-termsandconditions-371.md">/public/v1/catalog/products/{productId}/terms</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="termsandconditions/post-catalog-termsandconditions-373.md">/public/v1/catalog/products/{productId}/terms/{id}/review</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="termsandconditions/post-catalog-termsandconditions-374.md">/public/v1/catalog/products/{productId}/terms/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="termsandconditions/post-catalog-termsandconditions-375.md">/public/v1/catalog/products/{productId}/terms/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="termsandconditions/put-catalog-termsandconditions-372.md">/public/v1/catalog/products/{productId}/terms/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="termsandconditions/delete-catalog-termsandconditions-372.md">/public/v1/catalog/products/{productId}/terms/{id}</a></td>
		<td>DELETE</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### Termsandconditionsvariant

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
		<td><a href="termsandconditionsvariant/get-catalog-termsandconditionsvariant-376.md">/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="termsandconditionsvariant/get-catalog-termsandconditionsvariant-377.md">/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="termsandconditionsvariant/post-catalog-termsandconditionsvariant-376.md">/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="termsandconditionsvariant/post-catalog-termsandconditionsvariant-378.md">/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}/review</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="termsandconditionsvariant/post-catalog-termsandconditionsvariant-379.md">/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="termsandconditionsvariant/post-catalog-termsandconditionsvariant-380.md">/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="termsandconditionsvariant/put-catalog-termsandconditionsvariant-377.md">/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="termsandconditionsvariant/delete-catalog-termsandconditionsvariant-377.md">/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}</a></td>
		<td>DELETE</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### Unitsofmeasure

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
		<td><a href="unitsofmeasure/get-catalog-unitsofmeasure-381.md">/public/v1/catalog/units-of-measure</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="unitsofmeasure/get-catalog-unitsofmeasure-382.md">/public/v1/catalog/units-of-measure/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="unitsofmeasure/post-catalog-unitsofmeasure-381.md">/public/v1/catalog/units-of-measure</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="unitsofmeasure/put-catalog-unitsofmeasure-382.md">/public/v1/catalog/units-of-measure/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops</td>
	</tr>
<tbody>
</table>

