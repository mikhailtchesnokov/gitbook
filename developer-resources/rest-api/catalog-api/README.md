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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/pricing-policies/{pricingPolicyId}/attachments</a></td>
		<td>GET</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/pricing-policies/{pricingPolicyId}/attachments/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/pricing-policies/{pricingPolicyId}/attachments</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/pricing-policies/{pricingPolicyId}/attachments/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/pricing-policies/{pricingPolicyId}/attachments/{id}</a></td>
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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/authorizations</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/authorizations/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/authorizations</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/authorizations/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/authorizations/{id}</a></td>
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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/documents/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/documents</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/documents</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/documents/{id}/review</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/documents/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/documents/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/documents/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/documents/{id}</a></td>
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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/item-groups</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/item-groups/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/item-groups</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/item-groups/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/item-groups/{id}</a></td>
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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/listings</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/listings/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/listings</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/listings/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/listings/{id}</a></td>
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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/parameter-groups</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/parameter-groups/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/parameter-groups</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/parameter-groups/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/parameter-groups/{id}</a></td>
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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/parameters</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/parameters/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/parameters</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/parameters/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/parameters/{id}</a></td>
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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/price-lists</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/price-lists/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/price-lists</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/price-lists/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/price-lists/{id}</a></td>
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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/price-lists/{priceListId}/items/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/price-lists/{priceListId}/items</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/price-lists/{priceListId}/items/{id}</a></td>
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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/pricing-policies</a></td>
		<td>GET</td>
		<td></td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/pricing-policies/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/pricing-policies</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/pricing-policies/{id}/activate</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/pricing-policies/{id}/disable</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/pricing-policies/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/pricing-policies/{id}</a></td>
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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/items</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/items/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/items</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/items/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/items</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/items/{id}/review</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/items/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/items/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/items/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/items/{id}</a></td>
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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/media/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/media</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/media/{id}/image</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/media</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/media/{id}/review</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/media/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/media/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/media/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/media/{id}</a></td>
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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{id}/icon</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{id}/review</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{id}/settings</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{id}</a></td>
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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/templates</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/templates/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/templates</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/templates/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/templates/{id}</a></td>
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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/terms</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/terms/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/terms</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/terms/{id}/review</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/terms/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/terms/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/terms/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/terms/{id}</a></td>
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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}/review</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}</a></td>
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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/units-of-measure</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/units-of-measure/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/units-of-measure</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/catalog/units-of-measure/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops</td>
	</tr>
<tbody>
</table>

