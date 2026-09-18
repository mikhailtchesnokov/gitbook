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
		<td>/public/v1/commerce/agreements</td>
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
		<td>/public/v1/commerce/agreements/{id}</td>
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
		<td>/public/v1/commerce/agreements</td>
		<td>Post</td>
		<td>Creates a new agreement.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/agreements/{id}</td>
		<td>Put</td>
		<td>Updates an existing agreement.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>



### Commerceagreementattachment

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
		<td>Get</td>
		<td>Lists attachments for the specified agreement.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/agreements/{agreementId}/attachments/{id}</td>
		<td>Get</td>
		<td>Gets an attachment by id or redirects to its download.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/agreements/{agreementId}/attachments</td>
		<td>Post</td>
		<td>Creates a new attachment for an agreement.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/agreements/{agreementId}/attachments/{id}</td>
		<td>Put</td>
		<td>Updates an existing agreement attachment.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/agreements/{agreementId}/attachments/{id}</td>
		<td>Delete</td>
		<td>Deletes an agreement attachment.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
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
		<td>/public/v1/commerce/assets</td>
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
		<td>/public/v1/commerce/assets/{id}</td>
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
		<td>/public/v1/commerce/assets</td>
		<td>Post</td>
		<td>Creates a new asset.</td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/assets/{id}/terminate</td>
		<td>Post</td>
		<td>Terminates an existing asset.</td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/assets/{id}</td>
		<td>Put</td>
		<td>Updates an existing asset.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
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
		<td>/public/v1/commerce/orders</td>
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
		<td>/public/v1/commerce/orders/{id}</td>
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
		<td>/public/v1/commerce/orders</td>
		<td>Post</td>
		<td>Creates a new order for an agreement or creates a purchase order with a new agreement.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{id}/process</td>
		<td>Post</td>
		<td>Places an order and sets its status to processing.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{id}/query</td>
		<td>Post</td>
		<td>Query's an order, returning it to the client for updates.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{id}/complete</td>
		<td>Post</td>
		<td>Completes an order and updates the related agreement.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{id}/quote</td>
		<td>Post</td>
		<td>Quotes an order.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{id}/fail</td>
		<td>Post</td>
		<td>Fails an order and sets its status to failed.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{id}/validate</td>
		<td>Post</td>
		<td>Validates an order by invoking the vendor connector validation workflow.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{id}</td>
		<td>Put</td>
		<td>Updates an order. Immutable fields such as state and agreement assignment cannot be changed.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{id}</td>
		<td>Delete</td>
		<td>Deletes an order. Only draft orders can be deleted.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
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
		<td>/public/v1/commerce/orders/{orderId}/subscriptions</td>
		<td>Get</td>
		<td>Lists subscriptions for the specified order.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{orderId}/subscriptions/{id}</td>
		<td>Get</td>
		<td>Gets an order subscription by id.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/subscriptions</td>
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
		<td>/public/v1/commerce/subscriptions/{id}</td>
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
		<td>/public/v1/commerce/orders/{orderId}/subscriptions</td>
		<td>Post</td>
		<td>Creates a new subscription for the order.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/subscriptions</td>
		<td>Post</td>
		<td>Creates a new subscription.</td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/subscriptions/{id}/terminate</td>
		<td>Post</td>
		<td>Terminates an existing subscription.</td>
		<td>
			<ul>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{orderId}/subscriptions/{id}</td>
		<td>Put</td>
		<td>Updates an existing order subscription.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/subscriptions/{id}</td>
		<td>Put</td>
		<td>Updates an existing subscription.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/orders/{orderId}/subscriptions/{id}</td>
		<td>Delete</td>
		<td>Deletes an order subscription.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
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
		<td>Get</td>
		<td>Gets split billing allocations for an agreement.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/agreements/{agreementId}/split</td>
		<td>Post</td>
		<td>Activates split billing for an agreement.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/agreements/{agreementId}/split</td>
		<td>Put</td>
		<td>Updates split billing allocations for an agreement.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
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
		<td>Get</td>
		<td>Gets split billing allocations for a subscription.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/commerce/subscriptions/{subscriptionId}/split</td>
		<td>Put</td>
		<td>Updates split billing allocations for a subscription.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>

