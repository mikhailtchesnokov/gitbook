# Catalog API

The **Catalog API** provides **REST** endpoints for managing resources within the **catalog** business domain of the SoftwareOne Marketplace. 

The API supports the following business objects:

*  **Authorization**  - 

*  **Document**  - 

*  **ItemGroup**  - 

*  **Listing**  - 

*  **ParameterDefinition**  - 

*  **ParameterGroup**  - 

*  **PriceList**  - 

*  **PriceListItem**  - 

*  **PricingPolicy**  - 

*  **PricingPolicyAttachment**  - 

*  **Product**  - 

*  **ProductDocument**  - 

*  **ProductItem**  - 

*  **ProductMedia**  - 

*  **Template**  - 

*  **TermsAndConditions**  - 

*  **TermsAndConditionsVariant**  - 

*  **UnitOfMeasure**  - 

Use the API to retrieve and manage these resources. Depending on the resource, available operations include creating, updating, and deleting records.
The full list of available operations is provided below.


## Before you start

Review the shared API docs before you work with **catalog** resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)

## Browse collections

The API is organized into collections, each containing a set of operations. Access to these operations varies by role, depending on whether you are a `client`, `vendor`, or `operations` user.&#x20;

See the following sections to determine which roles are authorized to perform specific operations within each collection:

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
		<td><a href="authorization/get-catalog-authorizations-300.md">/public/v1/catalog/authorizations</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="authorization/get-catalog-authorizations-301.md">/public/v1/catalog/authorizations/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="authorization/post-catalog-authorizations-300.md">/public/v1/catalog/authorizations</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="authorization/put-catalog-authorizations-301.md">/public/v1/catalog/authorizations/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor,ops</td>
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
		<td><a href="document/post-catalog-documents-303.md">/public/v1/catalog/products/{productId}/documents</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### ItemGroup

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
		<td><a href="itemgroup/get-catalog-itemgroups-307.md">/public/v1/catalog/products/{productId}/item-groups</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="itemgroup/get-catalog-itemgroups-308.md">/public/v1/catalog/products/{productId}/item-groups/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="itemgroup/post-catalog-itemgroups-307.md">/public/v1/catalog/products/{productId}/item-groups</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="itemgroup/put-catalog-itemgroups-308.md">/public/v1/catalog/products/{productId}/item-groups/{id}</a></td>
		<td>PUT</td>
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
		<td><a href="listing/get-catalog-listing-309.md">/public/v1/catalog/listings</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="listing/get-catalog-listing-310.md">/public/v1/catalog/listings/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="listing/post-catalog-listing-309.md">/public/v1/catalog/listings</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="listing/put-catalog-listing-310.md">/public/v1/catalog/listings/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### ParameterDefinition

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
		<td><a href="parameterdefinition/get-catalog-parameters-313.md">/public/v1/catalog/products/{productId}/parameters</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="parameterdefinition/get-catalog-parameters-314.md">/public/v1/catalog/products/{productId}/parameters/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="parameterdefinition/post-catalog-parameters-313.md">/public/v1/catalog/products/{productId}/parameters</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="parameterdefinition/put-catalog-parameters-314.md">/public/v1/catalog/products/{productId}/parameters/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### ParameterGroup

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
		<td><a href="parametergroup/get-catalog-parametergroups-311.md">/public/v1/catalog/products/{productId}/parameter-groups</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="parametergroup/get-catalog-parametergroups-312.md">/public/v1/catalog/products/{productId}/parameter-groups/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="parametergroup/post-catalog-parametergroups-311.md">/public/v1/catalog/products/{productId}/parameter-groups</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="parametergroup/put-catalog-parametergroups-312.md">/public/v1/catalog/products/{productId}/parameter-groups/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### PriceList

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
		<td><a href="pricelist/get-catalog-pricelists-315.md">/public/v1/catalog/price-lists</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="pricelist/get-catalog-pricelists-316.md">/public/v1/catalog/price-lists/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="pricelist/post-catalog-pricelists-315.md">/public/v1/catalog/price-lists</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="pricelist/put-catalog-pricelists-316.md">/public/v1/catalog/price-lists/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
<tbody>
</table>



### PriceListItem

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
		<td><a href="pricelistitem/get-catalog-pricelistsitems-317.md">/public/v1/catalog/price-lists/{priceListId}/items/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="pricelistitem/get-catalog-pricelistsitems-318.md">/public/v1/catalog/price-lists/{priceListId}/items</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="pricelistitem/put-catalog-pricelistsitems-317.md">/public/v1/catalog/price-lists/{priceListId}/items/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
<tbody>
</table>



### PricingPolicy

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
		<td><a href="pricingpolicy/get-catalog-pricingpolicies-319.md">/public/v1/catalog/pricing-policies</a></td>
		<td>GET</td>
		<td></td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="pricingpolicy/get-catalog-pricingpolicies-320.md">/public/v1/catalog/pricing-policies/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="pricingpolicy/post-catalog-pricingpolicies-319.md">/public/v1/catalog/pricing-policies</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="pricingpolicy/post-catalog-pricingpolicies-321.md">/public/v1/catalog/pricing-policies/{id}/disable</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="pricingpolicy/put-catalog-pricingpolicies-320.md">/public/v1/catalog/pricing-policies/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### PricingPolicyAttachment

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
		<td><a href="pricingpolicyattachment/get-catalog-attachments-298.md">/public/v1/catalog/pricing-policies/{pricingPolicyId}/attachments</a></td>
		<td>GET</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="pricingpolicyattachment/get-catalog-attachments-299.md">/public/v1/catalog/pricing-policies/{pricingPolicyId}/attachments/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="pricingpolicyattachment/post-catalog-attachments-298.md">/public/v1/catalog/pricing-policies/{pricingPolicyId}/attachments</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="pricingpolicyattachment/put-catalog-attachments-299.md">/public/v1/catalog/pricing-policies/{pricingPolicyId}/attachments/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops</td>
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
		<td><a href="product/get-catalog-products-333.md">/public/v1/catalog/products</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="product/get-catalog-products-334.md">/public/v1/catalog/products/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="product/post-catalog-products-333.md">/public/v1/catalog/products</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="product/post-catalog-products-336.md">/public/v1/catalog/products/{id}/review</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="product/post-catalog-products-337.md">/public/v1/catalog/products/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="product/post-catalog-products-338.md">/public/v1/catalog/products/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="product/put-catalog-products-334.md">/public/v1/catalog/products/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="product/put-catalog-products-335.md">/public/v1/catalog/products/{id}/settings</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
<tbody>
</table>



### ProductDocument

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
		<td><a href="productdocument/get-catalog-documents-302.md">/public/v1/catalog/products/{productId}/documents/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productdocument/get-catalog-documents-303.md">/public/v1/catalog/products/{productId}/documents</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productdocument/post-catalog-documents-304.md">/public/v1/catalog/products/{productId}/documents/{id}/review</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="productdocument/post-catalog-documents-305.md">/public/v1/catalog/products/{productId}/documents/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="productdocument/post-catalog-documents-306.md">/public/v1/catalog/products/{productId}/documents/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="productdocument/put-catalog-documents-302.md">/public/v1/catalog/products/{productId}/documents/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### ProductItem

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
		<td><a href="productitem/get-catalog-productitems-322.md">/public/v1/catalog/items</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productitem/get-catalog-productitems-323.md">/public/v1/catalog/items/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productitem/get-catalog-productitems-326.md">/public/v1/catalog/products/{productId}/items</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productitem/get-catalog-productitems-327.md">/public/v1/catalog/products/{productId}/items/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productitem/post-catalog-productitems-322.md">/public/v1/catalog/items</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productitem/post-catalog-productitems-324.md">/public/v1/catalog/items/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productitem/post-catalog-productitems-325.md">/public/v1/catalog/items/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productitem/put-catalog-productitems-323.md">/public/v1/catalog/items/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### ProductMedia

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
		<td><a href="productmedia/get-catalog-productmedia-328.md">/public/v1/catalog/products/{productId}/media/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productmedia/get-catalog-productmedia-329.md">/public/v1/catalog/products/{productId}/media</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="productmedia/post-catalog-productmedia-329.md">/public/v1/catalog/products/{productId}/media</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="productmedia/post-catalog-productmedia-330.md">/public/v1/catalog/products/{productId}/media/{id}/review</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="productmedia/post-catalog-productmedia-331.md">/public/v1/catalog/products/{productId}/media/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="productmedia/post-catalog-productmedia-332.md">/public/v1/catalog/products/{productId}/media/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="productmedia/put-catalog-productmedia-328.md">/public/v1/catalog/products/{productId}/media/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
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
		<td><a href="template/get-catalog-templates-339.md">/public/v1/catalog/products/{productId}/templates</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="template/get-catalog-templates-340.md">/public/v1/catalog/products/{productId}/templates/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="template/post-catalog-templates-339.md">/public/v1/catalog/products/{productId}/templates</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="template/put-catalog-templates-340.md">/public/v1/catalog/products/{productId}/templates/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### TermsAndConditions

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
		<td><a href="termsandconditions/get-catalog-termsandconditions-341.md">/public/v1/catalog/products/{productId}/terms</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="termsandconditions/get-catalog-termsandconditions-342.md">/public/v1/catalog/products/{productId}/terms/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="termsandconditions/post-catalog-termsandconditions-341.md">/public/v1/catalog/products/{productId}/terms</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="termsandconditions/post-catalog-termsandconditions-343.md">/public/v1/catalog/products/{productId}/terms/{id}/review</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="termsandconditions/post-catalog-termsandconditions-344.md">/public/v1/catalog/products/{productId}/terms/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="termsandconditions/post-catalog-termsandconditions-345.md">/public/v1/catalog/products/{productId}/terms/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="termsandconditions/put-catalog-termsandconditions-342.md">/public/v1/catalog/products/{productId}/terms/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### TermsAndConditionsVariant

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
		<td><a href="termsandconditionsvariant/get-catalog-termsandconditionsvariant-346.md">/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="termsandconditionsvariant/get-catalog-termsandconditionsvariant-347.md">/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="termsandconditionsvariant/post-catalog-termsandconditionsvariant-346.md">/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="termsandconditionsvariant/post-catalog-termsandconditionsvariant-348.md">/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}/review</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="termsandconditionsvariant/post-catalog-termsandconditionsvariant-349.md">/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="termsandconditionsvariant/post-catalog-termsandconditionsvariant-350.md">/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="termsandconditionsvariant/put-catalog-termsandconditionsvariant-347.md">/public/v1/catalog/products/{productId}/terms/{termsAndConditionsId}/variants/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### UnitOfMeasure

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
		<td><a href="unitofmeasure/get-catalog-unitsofmeasure-351.md">/public/v1/catalog/units-of-measure</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="unitofmeasure/get-catalog-unitsofmeasure-352.md">/public/v1/catalog/units-of-measure/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="unitofmeasure/post-catalog-unitsofmeasure-351.md">/public/v1/catalog/units-of-measure</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="unitofmeasure/put-catalog-unitsofmeasure-352.md">/public/v1/catalog/units-of-measure/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops</td>
	</tr>
<tbody>
</table>

