# Commerce API

The **Commerce API** provides **REST** endpoints for managing resources within the **commerce** business domain of the SoftwareOne Marketplace. 

The API supports the following business objects:

*  **Agreement**  - 

*  **AgreementAttachment**  - 

*  **AgreementLine**  - 

*  **Asset**  - 

*  **CommerceAgreementAttachment**  - 

*  **Order**  - 

*  **OrderAsset**  - 

*  **OrderLine**  - 

*  **OrderNotificationRequest**  - 

*  **OrderSubscription**  - 

*  **SplitBillingAgreement**  - 

*  **SplitBillingSubscription**  - 

*  **Subscription**  - 

Use the API to retrieve and manage these resources. Depending on the resource, available operations include creating, updating, and deleting records.
The full list of available operations is provided below.


## Before you start

Review the shared API docs before you work with **commerce** resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)

## Browse collections

The API is organized into collections, each containing a set of operations. Access to these operations varies by role, depending on whether you are a `client`, `vendor`, or `operations` user.&#x20;

See the following sections to determine which roles are authorized to perform specific operations within each collection:

### Agreement

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
		<td><a href="agreement/get-commerce-agreements-268.md">/public/v1/commerce/agreements</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="agreement/get-commerce-agreements-269.md">/public/v1/commerce/agreements/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="agreement/post-commerce-agreements-268.md">/public/v1/commerce/agreements</a></td>
		<td>POST</td>
		<td>Creates a new agreement</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="agreement/put-commerce-agreements-269.md">/public/v1/commerce/agreements/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing agreement</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### AgreementAttachment

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
		<td><a href="agreementattachment/get-commerce-agreementsattachments-270.md">/public/v1/commerce/agreements/{agreementId}/attachments</a></td>
		<td>GET</td>
		<td>Lists attachments for the specified agreement</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### AgreementLine

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
		<td><a href="agreementline/get-commerce-lines-275.md">/public/v1/commerce/lines</a></td>
		<td>GET</td>
		<td>Lists all agreement lines across the marketplace</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="agreementline/get-commerce-lines-276.md">/public/v1/commerce/agreements/{agreementId}/lines</a></td>
		<td>GET</td>
		<td>Lists agreement lines for the specified agreement</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="agreementline/get-commerce-lines-277.md">/public/v1/commerce/subscriptions/{subscriptionId}/lines</a></td>
		<td>GET</td>
		<td>Lists agreement lines for the specified subscription</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="agreementline/get-commerce-lines-278.md">/public/v1/commerce/assets/{assetId}/lines</a></td>
		<td>GET</td>
		<td>Lists agreement lines for the specified asset</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### Asset

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
		<td><a href="asset/get-commerce-assets-272.md">/public/v1/commerce/assets</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="asset/get-commerce-assets-273.md">/public/v1/commerce/assets/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="asset/post-commerce-assets-272.md">/public/v1/commerce/assets</a></td>
		<td>POST</td>
		<td>Creates a new asset</td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="asset/post-commerce-assets-274.md">/public/v1/commerce/assets/{id}/terminate</a></td>
		<td>POST</td>
		<td>Terminates an existing asset</td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="asset/put-commerce-assets-273.md">/public/v1/commerce/assets/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing asset</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### CommerceAgreementAttachment

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
		<td><a href="commerceagreementattachment/get-commerce-agreementsattachments-271.md">/public/v1/commerce/agreements/{agreementId}/attachments/{id}</a></td>
		<td>GET</td>
		<td>Gets an attachment by id or redirects to its download</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="commerceagreementattachment/post-commerce-agreementsattachments-270.md">/public/v1/commerce/agreements/{agreementId}/attachments</a></td>
		<td>POST</td>
		<td>Creates a new attachment for an agreement</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="commerceagreementattachment/put-commerce-agreementsattachments-271.md">/public/v1/commerce/agreements/{agreementId}/attachments/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing agreement attachment</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### Order

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
		<td><a href="order/get-commerce-orders-282.md">/public/v1/commerce/orders</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="order/get-commerce-orders-283.md">/public/v1/commerce/orders/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="order/post-commerce-orders-282.md">/public/v1/commerce/orders</a></td>
		<td>POST</td>
		<td>Creates a new order for an agreement or creates a purchase order with a new agreement</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="order/post-commerce-orders-284.md">/public/v1/commerce/orders/{id}/process</a></td>
		<td>POST</td>
		<td>Places an order and sets its status to processing</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="order/post-commerce-orders-285.md">/public/v1/commerce/orders/{id}/query</a></td>
		<td>POST</td>
		<td>Query's an order, returning it to the client for updates</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="order/post-commerce-orders-286.md">/public/v1/commerce/orders/{id}/complete</a></td>
		<td>POST</td>
		<td>Completes an order and updates the related agreement</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="order/post-commerce-orders-287.md">/public/v1/commerce/orders/{id}/quote</a></td>
		<td>POST</td>
		<td>Quotes an order</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="order/post-commerce-orders-288.md">/public/v1/commerce/orders/{id}/fail</a></td>
		<td>POST</td>
		<td>Fails an order and sets its status to failed</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="order/post-commerce-orders-289.md">/public/v1/commerce/orders/{id}/validate</a></td>
		<td>POST</td>
		<td>Validates an order by invoking the vendor connector validation workflow</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="order/put-commerce-orders-283.md">/public/v1/commerce/orders/{id}</a></td>
		<td>PUT</td>
		<td>Updates an order. Immutable fields such as state and agreement assignment cannot be changed</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="order/delete-commerce-orders-283.md">/public/v1/commerce/orders/{id}</a></td>
		<td>DELETE</td>
		<td>Deletes an order. Only draft orders can be deleted</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### OrderAsset

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
		<td><a href="orderasset/get-commerce-orderassets-280.md">/public/v1/commerce/orders/{orderId}/assets</a></td>
		<td>GET</td>
		<td>Lists assets for the specified order</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="orderasset/get-commerce-orderassets-281.md">/public/v1/commerce/orders/{orderId}/assets/{id}</a></td>
		<td>GET</td>
		<td>Gets an order asset by id</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="orderasset/post-commerce-orderassets-280.md">/public/v1/commerce/orders/{orderId}/assets</a></td>
		<td>POST</td>
		<td>Creates a new asset for the order</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="orderasset/put-commerce-orderassets-281.md">/public/v1/commerce/orders/{orderId}/assets/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing order asset</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### OrderLine

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
		<td><a href="orderline/get-commerce-lines-279.md">/public/v1/commerce/orders/{orderId}/lines</a></td>
		<td>GET</td>
		<td>Lists order lines for the specified order</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### OrderNotificationRequest

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
		<td><a href="ordernotificationrequest/post-commerce-orders-290.md">/public/v1/commerce/orders/{id}/notify</a></td>
		<td>POST</td>
		<td>Sends an order notification to a user</td>
		<td>client,ops</td>
	</tr>
<tbody>
</table>



### OrderSubscription

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
		<td><a href="ordersubscription/get-commerce-ordersubscriptions-291.md">/public/v1/commerce/orders/{orderId}/subscriptions</a></td>
		<td>GET</td>
		<td>Lists subscriptions for the specified order</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="ordersubscription/get-commerce-ordersubscriptions-292.md">/public/v1/commerce/orders/{orderId}/subscriptions/{id}</a></td>
		<td>GET</td>
		<td>Gets an order subscription by id</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### SplitBillingAgreement

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
		<td><a href="splitbillingagreement/get-commerce-splitbillingagreement-296.md">/public/v1/commerce/agreements/{agreementId}/split</a></td>
		<td>GET</td>
		<td>Gets split billing allocations for an agreement</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="splitbillingagreement/post-commerce-splitbillingagreement-296.md">/public/v1/commerce/agreements/{agreementId}/split</a></td>
		<td>POST</td>
		<td>Activates split billing for an agreement</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="splitbillingagreement/put-commerce-splitbillingagreement-296.md">/public/v1/commerce/agreements/{agreementId}/split</a></td>
		<td>PUT</td>
		<td>Updates split billing allocations for an agreement</td>
		<td>client,ops</td>
	</tr>
<tbody>
</table>



### SplitBillingSubscription

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
		<td><a href="splitbillingsubscription/get-commerce-splitbillingsubscription-297.md">/public/v1/commerce/subscriptions/{subscriptionId}/split</a></td>
		<td>GET</td>
		<td>Gets split billing allocations for a subscription</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="splitbillingsubscription/put-commerce-splitbillingsubscription-297.md">/public/v1/commerce/subscriptions/{subscriptionId}/split</a></td>
		<td>PUT</td>
		<td>Updates split billing allocations for a subscription</td>
		<td>client,ops</td>
	</tr>
<tbody>
</table>



### Subscription

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
		<td><a href="subscription/get-commerce-subscriptions-293.md">/public/v1/commerce/subscriptions</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="subscription/get-commerce-subscriptions-294.md">/public/v1/commerce/subscriptions/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="subscription/post-commerce-ordersubscriptions-291.md">/public/v1/commerce/orders/{orderId}/subscriptions</a></td>
		<td>POST</td>
		<td>Creates a new subscription for the order</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="subscription/post-commerce-subscriptions-293.md">/public/v1/commerce/subscriptions</a></td>
		<td>POST</td>
		<td>Creates a new subscription</td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="subscription/post-commerce-subscriptions-295.md">/public/v1/commerce/subscriptions/{id}/terminate</a></td>
		<td>POST</td>
		<td>Terminates an existing subscription</td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="subscription/put-commerce-ordersubscriptions-292.md">/public/v1/commerce/orders/{orderId}/subscriptions/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing order subscription</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="subscription/put-commerce-subscriptions-294.md">/public/v1/commerce/subscriptions/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing subscription</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>

