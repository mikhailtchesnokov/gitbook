# Billing API

You can also perform additional operations, including:

*  Retrieves aggregated billing analytics data.

*  Retrieves a specific credit memo attachment by its ID.

*  Updates an existing credit memo attachment.

*  Deletes an individual credit memo attachment.

*  Retrieves a list of credit memo attachments.

*  Creates a new credit memo attachment.

*  Creates new credit memos.

*  Retrieves a specific custom ledger attachment by its ID.

*  Updates an existing custom ledger attachment.

*  Deletes a custom ledger attachment.

*  Retrieves a list of custom ledger attachments.

*  Creates a new custom ledger attachment.

*  Retrieves a specific charge by its ID.

*  Retrieves a list of charges for a specific custom ledger.

*  Creates a new custom ledger.

*  Updates an existing custom ledger.

*  Deletes a custom ledger by ID.

*  Uploads a file for a specific custom ledger.

*  Accepts a custom ledger.

*  Queues a custom ledger for ERP integration.

*  Retrieves a specific invoice attachment by its ID.

*  Updates an existing invoice attachment.

*  Deletes an invoice attachment.

*  Retrieves a list of invoice attachments.

*  Creates a new invoice attachment.

*  Creates new invoices.

*  Retrieves a specific journal attachment by its ID.

*  Updates an existing journal attachment.

*  Deletes a journal attachment.

*  Retrieves a list of journal attachments.

*  Creates a new journal attachment.

*  Retrieves a specific charge by its ID.

*  Retrieves a list of charges for a specific journal.

*  Matches a charge to a subscription.

*  Ignores a charge.

*  Resets a charge.

*  Creates a new journal.

*  Updates an existing journal.

*  Deletes the specified journal.

*  Uploads a journal file.

*  Regenerates a journal.

*  Submits a journal for processing.

*  Enquires the journal.

*  Accepts a journal.

*  Resets a journal.

*  Recalculates a journal.

*  Retrieves a list of sellers for a specific journal.

*  Retrieves a specific ledger attachment by its ID.

*  Updates an existing ledger attachment.

*  Deletes a ledger attachment.

*  Retrieves a list of ledger attachments.

*  Creates a new ledger attachment.

*  Retrieves a specific charge by its ID.

*  Retrieves a list of charges for a specific ledger.

*  Updates a ledger.

*  Recalculates a ledger.

*  Accepts a ledger.

*  Queues a ledger for ERP integration.

*  Creates a new manual override.

*  Updates an existing manual override.

*  Retrieves a specific statement attachment by its ID.

*  Updates an existing statement attachment.

*  Deletes a statement attachment.

*  Retrieves a list of statement attachments.

*  Creates a new statement attachment.

*  Retrieves a specific charge by its ID.

*  Retrieves a list of charges for a specific statement.

*  Creates a new statement.

*  Updates an existing statement.

*  Cancels a statement.

*  Marks a statement as error.

*  Issues a statement.

*  Sets statement to pending.

*  Queues a statement.

*  Retries a failed statement.

*  Recalculates a statement.

*  Adds a child statement to a consolidated parent statement.

*  Removes a child statement from a consolidated parent statement.


## Before you start

Review the shared API docs before you work with currency resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)


## Core concepts

The Billing API is built around the following core resources:

*  **CreditMemoAttachment**  - Represents an attachment associated with a credit memo in the billing system.

*  **CreditMemo**  - Represents a credit memo in the billing system.

*  **CustomLedgerAttachment**  - Represents an attachment associated with a custom ledger in the billing system.

*  **CustomLedger**  - Represents a custom ledger in the billing system.

*  **InvoiceAttachment**  - Represents an attachment associated with an invoice in the billing system.

*  **Invoice**  - Represents an invoice entity in the billing system.

*  **JournalAttachment**  - Represents an attachment associated with a journal in the billing system.

*  **Journal**  - Represents a journal entry in the billing system.

*  **LedgerAttachment**  - Represents an attachment associated with a ledger in the billing system.

*  **Ledger**  - Represents a ledger in the billing system.

*  **StatementAttachment**  - Represents an attachment associated with a billing statement in the system.

*  **Statement**  - Represents a billing statement in the system, containing details about transactions, pricing, and associated entities.


## Browse collections

The API is organized into collections, each containing a set of operations. Access to these operations varies by role, depending on whether you are a `client`, `vendor`, or `operations` user.&#x20;

See the following sections to determine which roles are authorized to perform specific operations within each collection:

### Analytics

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
		<td><a href="analytics/get-billing-analytics-004.md">/public/v1/billing/analytics</a></td>
		<td>GET</td>
		<td>Retrieves aggregated billing analytics data</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Creditmemoattachments

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
		<td><a href="creditmemoattachments/get-billing-creditmemoattachments-005.md">/public/v1/billing/credit-memos/{creditMemoId}/attachments/{id}</a></td>
		<td>GET</td>
		<td>Retrieves a specific credit memo attachment by its ID</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="creditmemoattachments/get-billing-creditmemoattachments-006.md">/public/v1/billing/credit-memos/{creditMemoId}/attachments</a></td>
		<td>GET</td>
		<td>Retrieves a list of credit memo attachments</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="creditmemoattachments/post-billing-creditmemoattachments-006.md">/public/v1/billing/credit-memos/{creditMemoId}/attachments</a></td>
		<td>POST</td>
		<td>Creates a new credit memo attachment</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="creditmemoattachments/put-billing-creditmemoattachments-005.md">/public/v1/billing/credit-memos/{creditMemoId}/attachments/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing credit memo attachment</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="creditmemoattachments/delete-billing-creditmemoattachments-005.md">/public/v1/billing/credit-memos/{creditMemoId}/attachments/{id}</a></td>
		<td>DELETE</td>
		<td>Deletes an individual credit memo attachment</td>
		<td>client,ops</td>
	</tr>
<tbody>
</table>



### Creditmemos

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
		<td><a href="creditmemos/get-billing-creditmemos-007.md">/public/v1/billing/credit-memos</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="creditmemos/get-billing-creditmemos-008.md">/public/v1/billing/credit-memos/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="creditmemos/post-billing-creditmemos-007.md">/public/v1/billing/credit-memos</a></td>
		<td>POST</td>
		<td>Creates new credit memos</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Customledgerattachments

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
		<td><a href="customledgerattachments/get-billing-customledgerattachments-009.md">/public/v1/billing/custom-ledgers/{customLedgerId}/attachments/{id}</a></td>
		<td>GET</td>
		<td>Retrieves a specific custom ledger attachment by its ID</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="customledgerattachments/get-billing-customledgerattachments-010.md">/public/v1/billing/custom-ledgers/{customLedgerId}/attachments</a></td>
		<td>GET</td>
		<td>Retrieves a list of custom ledger attachments</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="customledgerattachments/post-billing-customledgerattachments-010.md">/public/v1/billing/custom-ledgers/{customLedgerId}/attachments</a></td>
		<td>POST</td>
		<td>Creates a new custom ledger attachment</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="customledgerattachments/put-billing-customledgerattachments-009.md">/public/v1/billing/custom-ledgers/{customLedgerId}/attachments/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing custom ledger attachment</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="customledgerattachments/delete-billing-customledgerattachments-009.md">/public/v1/billing/custom-ledgers/{customLedgerId}/attachments/{id}</a></td>
		<td>DELETE</td>
		<td>Deletes a custom ledger attachment</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Customledgercharges

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
		<td><a href="customledgercharges/get-billing-customledgercharges-011.md">/public/v1/billing/custom-ledgers/{customLedgerId}/charges/{id}</a></td>
		<td>GET</td>
		<td>Retrieves a specific charge by its ID</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="customledgercharges/get-billing-customledgercharges-012.md">/public/v1/billing/custom-ledgers/{customLedgerId}/charges</a></td>
		<td>GET</td>
		<td>Retrieves a list of charges for a specific custom ledger</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Customledgers

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
		<td><a href="customledgers/get-billing-customledgers-013.md">/public/v1/billing/custom-ledgers</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="customledgers/get-billing-customledgers-014.md">/public/v1/billing/custom-ledgers/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="customledgers/post-billing-customledgers-013.md">/public/v1/billing/custom-ledgers</a></td>
		<td>POST</td>
		<td>Creates a new custom ledger</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="customledgers/post-billing-customledgers-015.md">/public/v1/billing/custom-ledgers/{id}/upload</a></td>
		<td>POST</td>
		<td>Uploads a file for a specific custom ledger</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="customledgers/post-billing-customledgers-016.md">/public/v1/billing/custom-ledgers/{id}/accept</a></td>
		<td>POST</td>
		<td>Accepts a custom ledger</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="customledgers/post-billing-customledgers-017.md">/public/v1/billing/custom-ledgers/{id}/queue</a></td>
		<td>POST</td>
		<td>Queues a custom ledger for ERP integration</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="customledgers/put-billing-customledgers-014.md">/public/v1/billing/custom-ledgers/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing custom ledger</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="customledgers/delete-billing-customledgers-014.md">/public/v1/billing/custom-ledgers/{id}</a></td>
		<td>DELETE</td>
		<td>Deletes a custom ledger by ID</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Invoiceattachments

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
		<td><a href="invoiceattachments/get-billing-invoiceattachments-018.md">/public/v1/billing/invoices/{invoiceId}/attachments/{id}</a></td>
		<td>GET</td>
		<td>Retrieves a specific invoice attachment by its ID</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="invoiceattachments/get-billing-invoiceattachments-019.md">/public/v1/billing/invoices/{invoiceId}/attachments</a></td>
		<td>GET</td>
		<td>Retrieves a list of invoice attachments</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="invoiceattachments/post-billing-invoiceattachments-019.md">/public/v1/billing/invoices/{invoiceId}/attachments</a></td>
		<td>POST</td>
		<td>Creates a new invoice attachment</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="invoiceattachments/put-billing-invoiceattachments-018.md">/public/v1/billing/invoices/{invoiceId}/attachments/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing invoice attachment</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="invoiceattachments/delete-billing-invoiceattachments-018.md">/public/v1/billing/invoices/{invoiceId}/attachments/{id}</a></td>
		<td>DELETE</td>
		<td>Deletes an invoice attachment</td>
		<td>client,ops</td>
	</tr>
<tbody>
</table>



### Invoices

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
		<td><a href="invoices/get-billing-invoices-020.md">/public/v1/billing/invoices</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="invoices/get-billing-invoices-021.md">/public/v1/billing/invoices/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="invoices/post-billing-invoices-020.md">/public/v1/billing/invoices</a></td>
		<td>POST</td>
		<td>Creates new invoices</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Journalattachments

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
		<td><a href="journalattachments/get-billing-journalattachments-022.md">/public/v1/billing/journals/{journalId}/attachments/{id}</a></td>
		<td>GET</td>
		<td>Retrieves a specific journal attachment by its ID</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journalattachments/get-billing-journalattachments-023.md">/public/v1/billing/journals/{journalId}/attachments</a></td>
		<td>GET</td>
		<td>Retrieves a list of journal attachments</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journalattachments/post-billing-journalattachments-023.md">/public/v1/billing/journals/{journalId}/attachments</a></td>
		<td>POST</td>
		<td>Creates a new journal attachment</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journalattachments/put-billing-journalattachments-022.md">/public/v1/billing/journals/{journalId}/attachments/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing journal attachment</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journalattachments/delete-billing-journalattachments-022.md">/public/v1/billing/journals/{journalId}/attachments/{id}</a></td>
		<td>DELETE</td>
		<td>Deletes a journal attachment</td>
		<td>vendor,ops</td>
	</tr>
<tbody>
</table>



### Journalcharges

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
		<td><a href="journalcharges/get-billing-journalcharges-024.md">/public/v1/billing/journals/{journalId}/charges/{id}</a></td>
		<td>GET</td>
		<td>Retrieves a specific charge by its ID</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journalcharges/get-billing-journalcharges-025.md">/public/v1/billing/journals/{journalId}/charges</a></td>
		<td>GET</td>
		<td>Retrieves a list of charges for a specific journal</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journalcharges/post-billing-journalcharges-026.md">/public/v1/billing/journals/{journalId}/charges/{id}/match</a></td>
		<td>POST</td>
		<td>Matches a charge to a subscription</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journalcharges/post-billing-journalcharges-027.md">/public/v1/billing/journals/{journalId}/charges/{id}/ignore</a></td>
		<td>POST</td>
		<td>Ignores a charge</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journalcharges/post-billing-journalcharges-028.md">/public/v1/billing/journals/{journalId}/charges/{id}/reset</a></td>
		<td>POST</td>
		<td>Resets a charge</td>
		<td>vendor,ops</td>
	</tr>
<tbody>
</table>



### Journals

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
		<td><a href="journals/get-billing-journals-029.md">/public/v1/billing/journals</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="journals/get-billing-journals-030.md">/public/v1/billing/journals/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="journals/post-billing-journals-029.md">/public/v1/billing/journals</a></td>
		<td>POST</td>
		<td>Creates a new journal</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journals/post-billing-journals-031.md">/public/v1/billing/journals/{id}/upload</a></td>
		<td>POST</td>
		<td>Uploads a journal file</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journals/post-billing-journals-032.md">/public/v1/billing/journals/{id}/regenerate</a></td>
		<td>POST</td>
		<td>Regenerates a journal</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journals/post-billing-journals-033.md">/public/v1/billing/journals/{id}/submit</a></td>
		<td>POST</td>
		<td>Submits a journal for processing</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journals/post-billing-journals-034.md">/public/v1/billing/journals/{id}/enquiry</a></td>
		<td>POST</td>
		<td>Enquires the journal</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journals/post-billing-journals-035.md">/public/v1/billing/journals/{id}/accept</a></td>
		<td>POST</td>
		<td>Accepts a journal</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journals/post-billing-journals-036.md">/public/v1/billing/journals/{id}/reset</a></td>
		<td>POST</td>
		<td>Resets a journal</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journals/post-billing-journals-037.md">/public/v1/billing/journals/{id}/recalculate</a></td>
		<td>POST</td>
		<td>Recalculates a journal</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journals/put-billing-journals-030.md">/public/v1/billing/journals/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing journal</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journals/delete-billing-journals-030.md">/public/v1/billing/journals/{id}</a></td>
		<td>DELETE</td>
		<td>Deletes the specified journal</td>
		<td>vendor,ops</td>
	</tr>
<tbody>
</table>



### Journalsellers

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
		<td><a href="journalsellers/get-billing-journalsellers-038.md">/public/v1/billing/journals/{journalId}/sellers</a></td>
		<td>GET</td>
		<td>Retrieves a list of sellers for a specific journal</td>
		<td>vendor,ops</td>
	</tr>
<tbody>
</table>



### Ledgerattachments

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
		<td><a href="ledgerattachments/get-billing-ledgerattachments-039.md">/public/v1/billing/ledgers/{ledgerId}/attachments/{id}</a></td>
		<td>GET</td>
		<td>Retrieves a specific ledger attachment by its ID</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="ledgerattachments/get-billing-ledgerattachments-040.md">/public/v1/billing/ledgers/{ledgerId}/attachments</a></td>
		<td>GET</td>
		<td>Retrieves a list of ledger attachments</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="ledgerattachments/post-billing-ledgerattachments-040.md">/public/v1/billing/ledgers/{ledgerId}/attachments</a></td>
		<td>POST</td>
		<td>Creates a new ledger attachment</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="ledgerattachments/put-billing-ledgerattachments-039.md">/public/v1/billing/ledgers/{ledgerId}/attachments/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing ledger attachment</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="ledgerattachments/delete-billing-ledgerattachments-039.md">/public/v1/billing/ledgers/{ledgerId}/attachments/{id}</a></td>
		<td>DELETE</td>
		<td>Deletes a ledger attachment</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Ledgercharges

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
		<td><a href="ledgercharges/get-billing-ledgercharges-041.md">/public/v1/billing/ledgers/{ledgerId}/charges/{id}</a></td>
		<td>GET</td>
		<td>Retrieves a specific charge by its ID</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="ledgercharges/get-billing-ledgercharges-042.md">/public/v1/billing/ledgers/{ledgerId}/charges</a></td>
		<td>GET</td>
		<td>Retrieves a list of charges for a specific ledger</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Ledgers

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
		<td><a href="ledgers/get-billing-ledgers-043.md">/public/v1/billing/ledgers/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="ledgers/get-billing-ledgers-047.md">/public/v1/billing/ledgers</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="ledgers/post-billing-ledgers-044.md">/public/v1/billing/ledgers/{id}/recalculate</a></td>
		<td>POST</td>
		<td>Recalculates a ledger</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="ledgers/post-billing-ledgers-045.md">/public/v1/billing/ledgers/{id}/accept</a></td>
		<td>POST</td>
		<td>Accepts a ledger</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="ledgers/post-billing-ledgers-046.md">/public/v1/billing/ledgers/{id}/queue</a></td>
		<td>POST</td>
		<td>Queues a ledger for ERP integration</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="ledgers/put-billing-ledgers-043.md">/public/v1/billing/ledgers/{id}</a></td>
		<td>PUT</td>
		<td>Updates a ledger</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Manualoverrides

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
		<td><a href="manualoverrides/get-billing-manualoverrides-048.md">/public/v1/billing/manual-overrides</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="manualoverrides/get-billing-manualoverrides-049.md">/public/v1/billing/manual-overrides/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="manualoverrides/post-billing-manualoverrides-048.md">/public/v1/billing/manual-overrides</a></td>
		<td>POST</td>
		<td>Creates a new manual override</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="manualoverrides/put-billing-manualoverrides-049.md">/public/v1/billing/manual-overrides/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing manual override</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Statementattachments

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
		<td><a href="statementattachments/get-billing-statementattachments-050.md">/public/v1/billing/statements/{statementId}/attachments/{id}</a></td>
		<td>GET</td>
		<td>Retrieves a specific statement attachment by its ID</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statementattachments/get-billing-statementattachments-051.md">/public/v1/billing/statements/{statementId}/attachments</a></td>
		<td>GET</td>
		<td>Retrieves a list of statement attachments</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statementattachments/post-billing-statementattachments-051.md">/public/v1/billing/statements/{statementId}/attachments</a></td>
		<td>POST</td>
		<td>Creates a new statement attachment</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statementattachments/put-billing-statementattachments-050.md">/public/v1/billing/statements/{statementId}/attachments/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing statement attachment</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statementattachments/delete-billing-statementattachments-050.md">/public/v1/billing/statements/{statementId}/attachments/{id}</a></td>
		<td>DELETE</td>
		<td>Deletes a statement attachment</td>
		<td>client,ops</td>
	</tr>
<tbody>
</table>



### Statementcharges

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
		<td><a href="statementcharges/get-billing-statementcharges-052.md">/public/v1/billing/statements/{statementId}/charges/{id}</a></td>
		<td>GET</td>
		<td>Retrieves a specific charge by its ID</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statementcharges/get-billing-statementcharges-053.md">/public/v1/billing/statements/{statementId}/charges</a></td>
		<td>GET</td>
		<td>Retrieves a list of charges for a specific statement</td>
		<td>client,ops</td>
	</tr>
<tbody>
</table>



### Statements

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
		<td><a href="statements/get-billing-statements-054.md">/public/v1/billing/statements</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="statements/get-billing-statements-055.md">/public/v1/billing/statements/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="statements/post-billing-statements-054.md">/public/v1/billing/statements</a></td>
		<td>POST</td>
		<td>Creates a new statement</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statements/post-billing-statements-056.md">/public/v1/billing/statements/{id}/cancel</a></td>
		<td>POST</td>
		<td>Cancels a statement</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statements/post-billing-statements-057.md">/public/v1/billing/statements/{id}/error</a></td>
		<td>POST</td>
		<td>Marks a statement as error</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statements/post-billing-statements-058.md">/public/v1/billing/statements/{id}/issue</a></td>
		<td>POST</td>
		<td>Issues a statement</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statements/post-billing-statements-059.md">/public/v1/billing/statements/{id}/pending</a></td>
		<td>POST</td>
		<td>Sets statement to pending</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statements/post-billing-statements-060.md">/public/v1/billing/statements/{id}/queue</a></td>
		<td>POST</td>
		<td>Queues a statement</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statements/post-billing-statements-061.md">/public/v1/billing/statements/{id}/retry</a></td>
		<td>POST</td>
		<td>Retries a failed statement</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statements/post-billing-statements-062.md">/public/v1/billing/statements/{id}/recalculate</a></td>
		<td>POST</td>
		<td>Recalculates a statement</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statements/post-billing-statements-063.md">/public/v1/billing/statements/{id}/children</a></td>
		<td>POST</td>
		<td>Adds a child statement to a consolidated parent statement</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statements/put-billing-statements-055.md">/public/v1/billing/statements/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing statement</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statements/delete-billing-statements-064.md">/public/v1/billing/statements/{id}/children/{childId}</a></td>
		<td>DELETE</td>
		<td>Removes a child statement from a consolidated parent statement</td>
		<td>client,ops</td>
	</tr>
<tbody>
</table>

