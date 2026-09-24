# Commerce API

You can also perform additional operations, including:

*  Creates a new agreement.

*  Updates an existing agreement.

*  Renders an agreement template.

*  Renders an agreement template.

*  Lists attachments for the specified agreement.

*  Creates a new attachment for an agreement.

*  Gets an attachment by id or redirects to its download.

*  Updates an existing agreement attachment.

*  Deletes an agreement attachment.

*  Creates a new asset.

*  Updates an existing asset.

*  Terminates an existing asset.

*  Renders an asset template.

*  Lists all agreement lines across the marketplace.

*  Lists agreement lines for the specified agreement.

*  Lists agreement lines for the specified subscription.

*  Lists order lines for the specified order.

*  Lists agreement lines for the specified asset.

*  Lists assets for the specified order.

*  Creates a new asset for the order.

*  Gets an order asset by id.

*  Updates an existing order asset.

*  Deletes an existing order asset.

*  Renders an order asset template.

*  Creates a new order for an agreement or creates a purchase order with a new agreement.

*  Updates an order. Immutable fields such as state and agreement assignment cannot be changed.

*  Deletes an order. Only draft orders can be deleted.

*  Places an order and sets its status to processing.

*  Query's an order, returning it to the client for updates.

*  Completes an order and updates the related agreement.

*  Quotes an order.

*  Fails an order and sets its status to failed.

*  Validates an order by invoking the vendor connector validation workflow.

*  Renders an order template.

*  Renders an order template.

*  Sends an order notification to a user.

*  Lists subscriptions for the specified order.

*  Creates a new subscription for the order.

*  Gets an order subscription by id.

*  Updates an existing order subscription.

*  Deletes an order subscription.

*  Renders an order subscription template.

*  Gets split billing allocations for an agreement.

*  Activates split billing for an agreement.

*  Updates split billing allocations for an agreement.

*  Gets split billing allocations for a subscription.

*  Updates split billing allocations for a subscription.

*  Creates a new subscription.

*  Updates an existing subscription.

*  Terminates an existing subscription.

*  Renders a subscription template.


## Before you start

Review the shared API docs before you work with currency resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)


## Core concepts

The Commerce API is built around the following core resources:

*  **Agreement**  - 

*  **CommerceAgreementAttachment**  - 

*  **Asset**  - 

*  **Order**  - 

*  **Subscription**  - 

*  **SplitBillingAgreement**  - 

*  **SplitBillingSubscription**  - 


## Browse collections

The API is organized into collections, each containing a set of operations. Access to these operations varies by role, depending on whether you are a `client`, `vendor`, or `operations` user.&#x20;

See the following sections to determine which roles are authorized to perform specific operations within each collection:

### Agreements

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
		<td><a href="agreements/get-commerce-agreements-286.md">/public/v1/commerce/agreements</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="agreements/get-commerce-agreements-287.md">/public/v1/commerce/agreements/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="agreements/get-commerce-agreements-288.md">/public/v1/commerce/agreements/{id}/template</a></td>
		<td>GET</td>
		<td>Renders an agreement template</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="agreements/get-commerce-agreements-289.md">/public/v1/commerce/agreements/{id}/render</a></td>
		<td>GET</td>
		<td>Renders an agreement template</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="agreements/post-commerce-agreements-286.md">/public/v1/commerce/agreements</a></td>
		<td>POST</td>
		<td>Creates a new agreement</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="agreements/put-commerce-agreements-287.md">/public/v1/commerce/agreements/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing agreement</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### Agreementsattachments

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
		<td><a href="agreementsattachments/get-commerce-agreementsattachments-290.md">/public/v1/commerce/agreements/{agreementId}/attachments</a></td>
		<td>GET</td>
		<td>Lists attachments for the specified agreement</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="agreementsattachments/get-commerce-agreementsattachments-291.md">/public/v1/commerce/agreements/{agreementId}/attachments/{id}</a></td>
		<td>GET</td>
		<td>Gets an attachment by id or redirects to its download</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="agreementsattachments/post-commerce-agreementsattachments-290.md">/public/v1/commerce/agreements/{agreementId}/attachments</a></td>
		<td>POST</td>
		<td>Creates a new attachment for an agreement</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="agreementsattachments/put-commerce-agreementsattachments-291.md">/public/v1/commerce/agreements/{agreementId}/attachments/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing agreement attachment</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="agreementsattachments/delete-commerce-agreementsattachments-291.md">/public/v1/commerce/agreements/{agreementId}/attachments/{id}</a></td>
		<td>DELETE</td>
		<td>Deletes an agreement attachment</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### Assets

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
		<td><a href="assets/get-commerce-assets-292.md">/public/v1/commerce/assets</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="assets/get-commerce-assets-293.md">/public/v1/commerce/assets/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="assets/get-commerce-assets-295.md">/public/v1/commerce/assets/{id}/render</a></td>
		<td>GET</td>
		<td>Renders an asset template</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="assets/post-commerce-assets-292.md">/public/v1/commerce/assets</a></td>
		<td>POST</td>
		<td>Creates a new asset</td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="assets/post-commerce-assets-294.md">/public/v1/commerce/assets/{id}/terminate</a></td>
		<td>POST</td>
		<td>Terminates an existing asset</td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="assets/put-commerce-assets-293.md">/public/v1/commerce/assets/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing asset</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### Lines

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
		<td><a href="lines/get-commerce-lines-296.md">/public/v1/commerce/lines</a></td>
		<td>GET</td>
		<td>Lists all agreement lines across the marketplace</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="lines/get-commerce-lines-297.md">/public/v1/commerce/agreements/{agreementId}/lines</a></td>
		<td>GET</td>
		<td>Lists agreement lines for the specified agreement</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="lines/get-commerce-lines-298.md">/public/v1/commerce/subscriptions/{subscriptionId}/lines</a></td>
		<td>GET</td>
		<td>Lists agreement lines for the specified subscription</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="lines/get-commerce-lines-299.md">/public/v1/commerce/orders/{orderId}/lines</a></td>
		<td>GET</td>
		<td>Lists order lines for the specified order</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="lines/get-commerce-lines-300.md">/public/v1/commerce/assets/{assetId}/lines</a></td>
		<td>GET</td>
		<td>Lists agreement lines for the specified asset</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### Orderassets

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
		<td><a href="orderassets/get-commerce-orderassets-301.md">/public/v1/commerce/orders/{orderId}/assets</a></td>
		<td>GET</td>
		<td>Lists assets for the specified order</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="orderassets/get-commerce-orderassets-302.md">/public/v1/commerce/orders/{orderId}/assets/{id}</a></td>
		<td>GET</td>
		<td>Gets an order asset by id</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="orderassets/get-commerce-orderassets-303.md">/public/v1/commerce/orders/{orderId}/assets/{id}/render</a></td>
		<td>GET</td>
		<td>Renders an order asset template</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="orderassets/post-commerce-orderassets-301.md">/public/v1/commerce/orders/{orderId}/assets</a></td>
		<td>POST</td>
		<td>Creates a new asset for the order</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="orderassets/put-commerce-orderassets-302.md">/public/v1/commerce/orders/{orderId}/assets/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing order asset</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="orderassets/delete-commerce-orderassets-302.md">/public/v1/commerce/orders/{orderId}/assets/{id}</a></td>
		<td>DELETE</td>
		<td>Deletes an existing order asset</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### Orders

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
		<td><a href="orders/get-commerce-orders-304.md">/public/v1/commerce/orders</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="orders/get-commerce-orders-305.md">/public/v1/commerce/orders/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="orders/get-commerce-orders-312.md">/public/v1/commerce/orders/{id}/template</a></td>
		<td>GET</td>
		<td>Renders an order template</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="orders/get-commerce-orders-313.md">/public/v1/commerce/orders/{id}/render</a></td>
		<td>GET</td>
		<td>Renders an order template</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="orders/post-commerce-orders-304.md">/public/v1/commerce/orders</a></td>
		<td>POST</td>
		<td>Creates a new order for an agreement or creates a purchase order with a new agreement</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="orders/post-commerce-orders-306.md">/public/v1/commerce/orders/{id}/process</a></td>
		<td>POST</td>
		<td>Places an order and sets its status to processing</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="orders/post-commerce-orders-307.md">/public/v1/commerce/orders/{id}/query</a></td>
		<td>POST</td>
		<td>Query's an order, returning it to the client for updates</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="orders/post-commerce-orders-308.md">/public/v1/commerce/orders/{id}/complete</a></td>
		<td>POST</td>
		<td>Completes an order and updates the related agreement</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="orders/post-commerce-orders-309.md">/public/v1/commerce/orders/{id}/quote</a></td>
		<td>POST</td>
		<td>Quotes an order</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="orders/post-commerce-orders-310.md">/public/v1/commerce/orders/{id}/fail</a></td>
		<td>POST</td>
		<td>Fails an order and sets its status to failed</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="orders/post-commerce-orders-311.md">/public/v1/commerce/orders/{id}/validate</a></td>
		<td>POST</td>
		<td>Validates an order by invoking the vendor connector validation workflow</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="orders/post-commerce-orders-314.md">/public/v1/commerce/orders/{id}/notify</a></td>
		<td>POST</td>
		<td>Sends an order notification to a user</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="orders/put-commerce-orders-305.md">/public/v1/commerce/orders/{id}</a></td>
		<td>PUT</td>
		<td>Updates an order. Immutable fields such as state and agreement assignment cannot be changed</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="orders/delete-commerce-orders-305.md">/public/v1/commerce/orders/{id}</a></td>
		<td>DELETE</td>
		<td>Deletes an order. Only draft orders can be deleted</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### Ordersubscriptions

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
		<td><a href="ordersubscriptions/get-commerce-ordersubscriptions-315.md">/public/v1/commerce/orders/{orderId}/subscriptions</a></td>
		<td>GET</td>
		<td>Lists subscriptions for the specified order</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="ordersubscriptions/get-commerce-ordersubscriptions-316.md">/public/v1/commerce/orders/{orderId}/subscriptions/{id}</a></td>
		<td>GET</td>
		<td>Gets an order subscription by id</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="ordersubscriptions/get-commerce-ordersubscriptions-317.md">/public/v1/commerce/orders/{orderId}/subscriptions/{id}/render</a></td>
		<td>GET</td>
		<td>Renders an order subscription template</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="ordersubscriptions/post-commerce-ordersubscriptions-315.md">/public/v1/commerce/orders/{orderId}/subscriptions</a></td>
		<td>POST</td>
		<td>Creates a new subscription for the order</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="ordersubscriptions/put-commerce-ordersubscriptions-316.md">/public/v1/commerce/orders/{orderId}/subscriptions/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing order subscription</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="ordersubscriptions/delete-commerce-ordersubscriptions-316.md">/public/v1/commerce/orders/{orderId}/subscriptions/{id}</a></td>
		<td>DELETE</td>
		<td>Deletes an order subscription</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### Splitbillingagreement

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
		<td><a href="splitbillingagreement/get-commerce-splitbillingagreement-318.md">/public/v1/commerce/agreements/{agreementId}/split</a></td>
		<td>GET</td>
		<td>Gets split billing allocations for an agreement</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="splitbillingagreement/post-commerce-splitbillingagreement-318.md">/public/v1/commerce/agreements/{agreementId}/split</a></td>
		<td>POST</td>
		<td>Activates split billing for an agreement</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="splitbillingagreement/put-commerce-splitbillingagreement-318.md">/public/v1/commerce/agreements/{agreementId}/split</a></td>
		<td>PUT</td>
		<td>Updates split billing allocations for an agreement</td>
		<td>client,ops</td>
	</tr>
<tbody>
</table>



### Splitbillingsubscription

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
		<td><a href="splitbillingsubscription/get-commerce-splitbillingsubscription-319.md">/public/v1/commerce/subscriptions/{subscriptionId}/split</a></td>
		<td>GET</td>
		<td>Gets split billing allocations for a subscription</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="splitbillingsubscription/put-commerce-splitbillingsubscription-319.md">/public/v1/commerce/subscriptions/{subscriptionId}/split</a></td>
		<td>PUT</td>
		<td>Updates split billing allocations for a subscription</td>
		<td>client,ops</td>
	</tr>
<tbody>
</table>



### Subscriptions

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
		<td><a href="subscriptions/get-commerce-subscriptions-320.md">/public/v1/commerce/subscriptions</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="subscriptions/get-commerce-subscriptions-321.md">/public/v1/commerce/subscriptions/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="subscriptions/get-commerce-subscriptions-323.md">/public/v1/commerce/subscriptions/{id}/render</a></td>
		<td>GET</td>
		<td>Renders a subscription template</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="subscriptions/post-commerce-subscriptions-320.md">/public/v1/commerce/subscriptions</a></td>
		<td>POST</td>
		<td>Creates a new subscription</td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="subscriptions/post-commerce-subscriptions-322.md">/public/v1/commerce/subscriptions/{id}/terminate</a></td>
		<td>POST</td>
		<td>Terminates an existing subscription</td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="subscriptions/put-commerce-subscriptions-321.md">/public/v1/commerce/subscriptions/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing subscription</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>

