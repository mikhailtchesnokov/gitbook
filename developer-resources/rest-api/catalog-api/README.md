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
		<td>/public/v1/catalog/pricing-policies/{pricingPolicyId}/attachments</td>
		<td>GET</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/pricing-policies/{pricingPolicyId}/attachments/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/pricing-policies/{pricingPolicyId}/attachments</td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/pricing-policies/{pricingPolicyId}/attachments/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/pricing-policies/{pricingPolicyId}/attachments/{id}</td>
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
		<td>/public/v1/catalog/authorizations</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/authorizations/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/authorizations</td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/authorizations/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/authorizations/{id}</td>
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
		<td>/public/v1/catalog/products/{productId}/documents/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/documents</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/documents</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/documents/{id}/review</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/documents/{id}/publish</td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/documents/{id}/unpublish</td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/documents/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/documents/{id}</td>
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
		<td>/public/v1/catalog/products/{productId}/item-groups</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/item-groups/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/item-groups</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/item-groups/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/item-groups/{id}</td>
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
		<td>/public/v1/catalog/listings</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/listings/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/listings</td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/listings/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/listings/{id}</td>
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
		<td>/public/v1/catalog/products/{productId}/parameter-groups</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/parameter-groups/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/parameter-groups</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/parameter-groups/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/parameter-groups/{id}</td>
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
		<td>/public/v1/catalog/products/{productId}/parameters</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/parameters/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/parameters</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/parameters/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/parameters/{id}</td>
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
		<td>/public/v1/catalog/price-lists</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/price-lists/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/price-lists</td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/price-lists/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/price-lists/{id}</td>
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
		<td>/public/v1/catalog/price-lists/{priceListId}/items/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/price-lists/{priceListId}/items</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/price-lists/{priceListId}/items/{id}</td>
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
		<td>/public/v1/catalog/pricing-policies</td>
		<td>GET</td>
		<td></td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/pricing-policies/{id}</td>
		<td>GET</td>
		<td></td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/pricing-policies</td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/pricing-policies/{id}/activate</td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/pricing-policies/{id}/disable</td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/pricing-policies/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/pricing-policies/{id}</td>
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
		<td>/public/v1/catalog/items</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/items/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/items</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/items/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/items</td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/items/{id}/review</td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/items/{id}/publish</td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/items/{id}/unpublish</td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/items/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/items/{id}</td>
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
		<td>/public/v1/catalog/products/{productId}/media/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/media</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/media/{id}/image</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/media</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/media/{id}/review</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/media/{id}/publish</td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/media/{id}/unpublish</td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/media/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/media/{id}</td>
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
		<td>/public/v1/catalog/products</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{id}/icon</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{id}/review</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{id}/publish</td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{id}/unpublish</td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{id}/settings</td>
		<td>PUT</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{id}</td>
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
		<td>/public/v1/catalog/products/{productId}/templates</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/templates/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/templates</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/templates/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/templates/{id}</td>
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
		<td>/public/v1/catalog/products/{productId}/terms</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms/{id}/review</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms/{id}/publish</td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms/{id}/unpublish</td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms/{id}</td>
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
		<td>/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}/review</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}/publish</td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}/unpublish</td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}</td>
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
		<td>/public/v1/catalog/units-of-measure</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/units-of-measure/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/units-of-measure</td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/units-of-measure/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>ops</td>
	</tr>
<tbody>
</table>

