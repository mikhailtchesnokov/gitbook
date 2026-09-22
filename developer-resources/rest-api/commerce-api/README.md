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
		<td>/public/v1/commerce/agreements</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/agreements/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/agreements/{id}/template</td>
		<td>GET</td>
		<td>Renders an agreement template.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/agreements/{id}/render</td>
		<td>GET</td>
		<td>Renders an agreement template.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/agreements</td>
		<td>POST</td>
		<td>Creates a new agreement.</td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/agreements/{id}</td>
		<td>PUT</td>
		<td>Updates an existing agreement.</td>
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
		<td>/public/v1/commerce/agreements/{agreementId}/attachments</td>
		<td>GET</td>
		<td>Lists attachments for the specified agreement.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/agreements/{agreementId}/attachments/{id}</td>
		<td>GET</td>
		<td>Gets an attachment by id or redirects to its download.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/agreements/{agreementId}/attachments</td>
		<td>POST</td>
		<td>Creates a new attachment for an agreement.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/agreements/{agreementId}/attachments/{id}</td>
		<td>PUT</td>
		<td>Updates an existing agreement attachment.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/agreements/{agreementId}/attachments/{id}</td>
		<td>DELETE</td>
		<td>Deletes an agreement attachment.</td>
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
		<td>/public/v1/commerce/assets</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/assets/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/assets/{id}/render</td>
		<td>GET</td>
		<td>Renders an asset template.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/assets</td>
		<td>POST</td>
		<td>Creates a new asset.</td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/assets/{id}/terminate</td>
		<td>POST</td>
		<td>Terminates an existing asset.</td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/assets/{id}</td>
		<td>PUT</td>
		<td>Updates an existing asset.</td>
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
		<td>/public/v1/commerce/lines</td>
		<td>GET</td>
		<td>Lists all agreement lines across the marketplace.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/agreements/{agreementId}/lines</td>
		<td>GET</td>
		<td>Lists agreement lines for the specified agreement.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/subscriptions/{subscriptionId}/lines</td>
		<td>GET</td>
		<td>Lists agreement lines for the specified subscription.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{orderId}/lines</td>
		<td>GET</td>
		<td>Lists order lines for the specified order.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/assets/{assetId}/lines</td>
		<td>GET</td>
		<td>Lists agreement lines for the specified asset.</td>
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
		<td>/public/v1/commerce/orders/{orderId}/assets</td>
		<td>GET</td>
		<td>Lists assets for the specified order.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{orderId}/assets/{id}</td>
		<td>GET</td>
		<td>Gets an order asset by id.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{orderId}/assets/{id}/render</td>
		<td>GET</td>
		<td>Renders an order asset template.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{orderId}/assets</td>
		<td>POST</td>
		<td>Creates a new asset for the order.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{orderId}/assets/{id}</td>
		<td>PUT</td>
		<td>Updates an existing order asset.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{orderId}/assets/{id}</td>
		<td>DELETE</td>
		<td>Deletes an existing order asset.</td>
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
		<td>/public/v1/commerce/orders</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{id}/template</td>
		<td>GET</td>
		<td>Renders an order template.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{id}/render</td>
		<td>GET</td>
		<td>Renders an order template.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders</td>
		<td>POST</td>
		<td>Creates a new order for an agreement or creates a purchase order with a new agreement.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{id}/process</td>
		<td>POST</td>
		<td>Places an order and sets its status to processing.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{id}/query</td>
		<td>POST</td>
		<td>Query's an order, returning it to the client for updates.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{id}/complete</td>
		<td>POST</td>
		<td>Completes an order and updates the related agreement.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{id}/quote</td>
		<td>POST</td>
		<td>Quotes an order.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{id}/fail</td>
		<td>POST</td>
		<td>Fails an order and sets its status to failed.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{id}/validate</td>
		<td>POST</td>
		<td>Validates an order by invoking the vendor connector validation workflow.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{id}/notify</td>
		<td>POST</td>
		<td>Sends an order notification to a user.</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{id}</td>
		<td>PUT</td>
		<td>Updates an order. Immutable fields such as state and agreement assignment cannot be changed.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{id}</td>
		<td>DELETE</td>
		<td>Deletes an order. Only draft orders can be deleted.</td>
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
		<td>/public/v1/commerce/orders/{orderId}/subscriptions</td>
		<td>GET</td>
		<td>Lists subscriptions for the specified order.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{orderId}/subscriptions/{id}</td>
		<td>GET</td>
		<td>Gets an order subscription by id.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{orderId}/subscriptions/{id}/render</td>
		<td>GET</td>
		<td>Renders an order subscription template.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{orderId}/subscriptions</td>
		<td>POST</td>
		<td>Creates a new subscription for the order.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{orderId}/subscriptions/{id}</td>
		<td>PUT</td>
		<td>Updates an existing order subscription.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{orderId}/subscriptions/{id}</td>
		<td>DELETE</td>
		<td>Deletes an order subscription.</td>
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
		<td>/public/v1/commerce/agreements/{agreementId}/split</td>
		<td>GET</td>
		<td>Gets split billing allocations for an agreement.</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/agreements/{agreementId}/split</td>
		<td>POST</td>
		<td>Activates split billing for an agreement.</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/agreements/{agreementId}/split</td>
		<td>PUT</td>
		<td>Updates split billing allocations for an agreement.</td>
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
		<td>/public/v1/commerce/subscriptions/{subscriptionId}/split</td>
		<td>GET</td>
		<td>Gets split billing allocations for a subscription.</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/subscriptions/{subscriptionId}/split</td>
		<td>PUT</td>
		<td>Updates split billing allocations for a subscription.</td>
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
		<td>/public/v1/commerce/subscriptions</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/subscriptions/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/subscriptions/{id}/render</td>
		<td>GET</td>
		<td>Renders a subscription template.</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/subscriptions</td>
		<td>POST</td>
		<td>Creates a new subscription.</td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/subscriptions/{id}/terminate</td>
		<td>POST</td>
		<td>Terminates an existing subscription.</td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/subscriptions/{id}</td>
		<td>PUT</td>
		<td>Updates an existing subscription.</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>

