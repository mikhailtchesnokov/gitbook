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

### Pricingpolicyattachment

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
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/pricing-policies/{pricingPolicyId}/attachments/{id}</td>
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/pricing-policies/{pricingPolicyId}/attachments</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/pricing-policies/{pricingPolicyId}/attachments/{id}</td>
		<td>Put</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/pricing-policies/{pricingPolicyId}/attachments/{id}</td>
		<td>Delete</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>



### Authorization

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
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/authorizations/{id}</td>
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/authorizations</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/authorizations/{id}</td>
		<td>Put</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/authorizations/{id}</td>
		<td>Delete</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>



### Productdocument

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
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/documents/{id}/review</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/documents/{id}/publish</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/documents/{id}/unpublish</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/documents/{id}</td>
		<td>Put</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/documents/{id}</td>
		<td>Delete</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>



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
		<td>/public/v1/catalog/products/{productId}/documents</td>
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/documents</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>



### Itemgroup

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
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/item-groups/{id}</td>
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/item-groups</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/item-groups/{id}</td>
		<td>Put</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/item-groups/{id}</td>
		<td>Delete</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
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
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/listings/{id}</td>
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/listings</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/listings/{id}</td>
		<td>Put</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/listings/{id}</td>
		<td>Delete</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>



### Parametergroup

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
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/parameter-groups/{id}</td>
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/parameter-groups</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/parameter-groups/{id}</td>
		<td>Put</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/parameter-groups/{id}</td>
		<td>Delete</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>



### Parameterdefinition

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
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/parameters/{id}</td>
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/parameters</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/parameters/{id}</td>
		<td>Put</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/parameters/{id}</td>
		<td>Delete</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>



### Pricelist

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
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/price-lists/{id}</td>
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/price-lists</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/price-lists/{id}</td>
		<td>Put</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/price-lists/{id}</td>
		<td>Delete</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>



### Pricelistitem

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
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/price-lists/{priceListId}/items/{id}</td>
		<td>Put</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>



### Pricingpolicy

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
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/pricing-policies/{id}</td>
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/pricing-policies</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/pricing-policies/{id}/disable</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/pricing-policies/{id}</td>
		<td>Put</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/pricing-policies/{id}</td>
		<td>Delete</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>



### Productitem

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
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/items/{id}</td>
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/items/{id}</td>
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/items</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/items/{id}/publish</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/items/{id}/unpublish</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/items/{id}</td>
		<td>Put</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/items/{id}</td>
		<td>Delete</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
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
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/media</td>
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/media</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/media/{id}/review</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/media/{id}/publish</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/media/{id}/unpublish</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/media/{id}</td>
		<td>Put</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/media/{id}</td>
		<td>Delete</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>



### Product

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
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{id}</td>
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{id}/review</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{id}/publish</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{id}/unpublish</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{id}</td>
		<td>Put</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{id}/settings</td>
		<td>Put</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{id}</td>
		<td>Delete</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>



### Template

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
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/templates/{id}</td>
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/templates</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/templates/{id}</td>
		<td>Put</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/templates/{id}</td>
		<td>Delete</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
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
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms/{id}</td>
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms/{id}/review</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms/{id}/publish</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms/{id}/unpublish</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms/{id}</td>
		<td>Put</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms/{id}</td>
		<td>Delete</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
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
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}</td>
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}/review</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}/publish</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}/unpublish</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}</td>
		<td>Put</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}</td>
		<td>Delete</td>
		<td></td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>



### Unitofmeasure

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
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/units-of-measure/{id}</td>
		<td>Get</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/units-of-measure</td>
		<td>Post</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/catalog/units-of-measure/{id}</td>
		<td>Put</td>
		<td></td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>

