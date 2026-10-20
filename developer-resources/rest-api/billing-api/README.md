# Billing API

The **Billing API** provides **REST** endpoints for managing resources within the **billing** business domain of the SoftwareOne Marketplace. 

The API supports the following business objects:

*  **Charge**  - represents a charge in the billing system

*  **CreditMemo**  - represents a credit memo in the billing system

*  **CreditMemoAttachment**  - represents an attachment associated with a credit memo in the billing system

*  **CustomLedger**  - represents a custom ledger in the billing system

*  **CustomLedgerAttachment**  - represents an attachment associated with a custom ledger in the billing system

*  **Invoice**  - represents an invoice entity in the billing system

*  **InvoiceAttachment**  - represents an attachment associated with an invoice in the billing system

*  **Journal**  - represents a journal entry in the billing system

*  **JournalAttachment**  - represents an attachment associated with a journal in the billing system

*  **JournalCharge**  - represents a charge associated with a journal in the billing system

*  **Ledger**  - represents a ledger in the billing system

*  **LedgerAttachment**  - represents an attachment associated with a ledger in the billing system

*  **Override**  - represents a manual override in the billing system, allowing specific adjustments to billing processing

*  **Statement**  - represents a billing statement in the system, containing details about transactions, pricing, and associated entities

*  **StatementAttachment**  - represents an attachment associated with a billing statement in the system

Use the API to retrieve and manage these resources. Depending on the resource, available operations include creating, updating, and deleting records.
The full list of available operations is provided below.


## Before you start

Review the shared API docs before you work with **billing** resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)

## Browse collections

The API is organized into collections, each containing a set of operations. Access to these operations varies by role, depending on whether you are a `client`, `vendor`, or `operations` user.&#x20;

See the following sections to determine which roles are authorized to perform specific operations within each collection:

### Charge

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
		<td><a href="charge/get-billing-customledgercharges-009.md">/public/v1/billing/custom-ledgers/{customLedgerId}/charges/{id}</a></td>
		<td>GET</td>
		<td>Retrieves a specific charge by its ID</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="charge/get-billing-journalcharges-010.md">/public/v1/billing/journals/{journalId}/charges/{id}</a></td>
		<td>GET</td>
		<td>Retrieves a specific charge by its ID</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="charge/get-billing-ledgercharges-014.md">/public/v1/billing/ledgers/{ledgerId}/charges/{id}</a></td>
		<td>GET</td>
		<td>Retrieves a specific charge by its ID</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="charge/get-billing-statementcharges-015.md">/public/v1/billing/statements/{statementId}/charges/{id}</a></td>
		<td>GET</td>
		<td>Retrieves a specific charge by its ID</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="charge/post-billing-journalcharges-011.md">/public/v1/billing/journals/{journalId}/charges/{id}/match</a></td>
		<td>POST</td>
		<td>Matches a charge to a subscription</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="charge/post-billing-journalcharges-012.md">/public/v1/billing/journals/{journalId}/charges/{id}/ignore</a></td>
		<td>POST</td>
		<td>Ignores a charge</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="charge/post-billing-journalcharges-013.md">/public/v1/billing/journals/{journalId}/charges/{id}/reset</a></td>
		<td>POST</td>
		<td>Resets a charge</td>
		<td>vendor,ops</td>
	</tr>
<tbody>
</table>



### Creditmemo

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
		<td><a href="creditmemo/get-billing-creditmemos-006.md">/public/v1/billing/credit-memos/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="creditmemo/post-billing-creditmemos-005.md">/public/v1/billing/credit-memos</a></td>
		<td>POST</td>
		<td>Creates new credit memos</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Creditmemoattachment

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
		<td><a href="creditmemoattachment/get-billing-creditmemoattachments-003.md">/public/v1/billing/credit-memos/{creditMemoId}/attachments/{id}</a></td>
		<td>GET</td>
		<td>Retrieves a specific credit memo attachment by its ID</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="creditmemoattachment/post-billing-creditmemoattachments-004.md">/public/v1/billing/credit-memos/{creditMemoId}/attachments</a></td>
		<td>POST</td>
		<td>Creates a new credit memo attachment</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="creditmemoattachment/put-billing-creditmemoattachments-003.md">/public/v1/billing/credit-memos/{creditMemoId}/attachments/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing credit memo attachment</td>
		<td>client,ops</td>
	</tr>
<tbody>
</table>



### Customledger

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
		<td><a href="customledger/get-billing-customledgers-017.md">/public/v1/billing/custom-ledgers/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="customledger/post-billing-customledgers-016.md">/public/v1/billing/custom-ledgers</a></td>
		<td>POST</td>
		<td>Creates a new custom ledger</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="customledger/post-billing-customledgers-018.md">/public/v1/billing/custom-ledgers/{id}/upload</a></td>
		<td>POST</td>
		<td>Uploads a file for a specific custom ledger</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="customledger/post-billing-customledgers-019.md">/public/v1/billing/custom-ledgers/{id}/accept</a></td>
		<td>POST</td>
		<td>Accepts a custom ledger</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="customledger/post-billing-customledgers-020.md">/public/v1/billing/custom-ledgers/{id}/queue</a></td>
		<td>POST</td>
		<td>Queues a custom ledger for ERP integration</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="customledger/put-billing-customledgers-017.md">/public/v1/billing/custom-ledgers/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing custom ledger</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Customledgerattachment

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
		<td><a href="customledgerattachment/get-billing-customledgerattachments-007.md">/public/v1/billing/custom-ledgers/{customLedgerId}/attachments/{id}</a></td>
		<td>GET</td>
		<td>Retrieves a specific custom ledger attachment by its ID</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="customledgerattachment/post-billing-customledgerattachments-008.md">/public/v1/billing/custom-ledgers/{customLedgerId}/attachments</a></td>
		<td>POST</td>
		<td>Creates a new custom ledger attachment</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="customledgerattachment/put-billing-customledgerattachments-007.md">/public/v1/billing/custom-ledgers/{customLedgerId}/attachments/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing custom ledger attachment</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Invoice

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
		<td><a href="invoice/get-billing-invoices-023.md">/public/v1/billing/invoices/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Invoiceattachment

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
		<td><a href="invoiceattachment/get-billing-invoiceattachments-021.md">/public/v1/billing/invoices/{invoiceId}/attachments/{id}</a></td>
		<td>GET</td>
		<td>Retrieves a specific invoice attachment by its ID</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="invoiceattachment/post-billing-invoiceattachments-022.md">/public/v1/billing/invoices/{invoiceId}/attachments</a></td>
		<td>POST</td>
		<td>Creates a new invoice attachment</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="invoiceattachment/put-billing-invoiceattachments-021.md">/public/v1/billing/invoices/{invoiceId}/attachments/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing invoice attachment</td>
		<td>client,ops</td>
	</tr>
<tbody>
</table>



### Journal

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
		<td><a href="journal/get-billing-journals-027.md">/public/v1/billing/journals/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="journal/post-billing-journals-026.md">/public/v1/billing/journals</a></td>
		<td>POST</td>
		<td>Creates a new journal</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journal/post-billing-journals-028.md">/public/v1/billing/journals/{id}/upload</a></td>
		<td>POST</td>
		<td>Uploads a journal file</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journal/post-billing-journals-029.md">/public/v1/billing/journals/{id}/regenerate</a></td>
		<td>POST</td>
		<td>Regenerates a journal</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journal/post-billing-journals-030.md">/public/v1/billing/journals/{id}/submit</a></td>
		<td>POST</td>
		<td>Submits a journal for processing</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journal/post-billing-journals-031.md">/public/v1/billing/journals/{id}/enquiry</a></td>
		<td>POST</td>
		<td>Enquires the journal</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journal/post-billing-journals-032.md">/public/v1/billing/journals/{id}/accept</a></td>
		<td>POST</td>
		<td>Accepts a journal</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journal/post-billing-journals-033.md">/public/v1/billing/journals/{id}/reset</a></td>
		<td>POST</td>
		<td>Resets a journal</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journal/post-billing-journals-034.md">/public/v1/billing/journals/{id}/recalculate</a></td>
		<td>POST</td>
		<td>Recalculates a journal</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journal/put-billing-journals-027.md">/public/v1/billing/journals/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing journal</td>
		<td>vendor,ops</td>
	</tr>
<tbody>
</table>



### Journalattachment

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
		<td><a href="journalattachment/get-billing-journalattachments-024.md">/public/v1/billing/journals/{journalId}/attachments/{id}</a></td>
		<td>GET</td>
		<td>Retrieves a specific journal attachment by its ID</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journalattachment/post-billing-journalattachments-025.md">/public/v1/billing/journals/{journalId}/attachments</a></td>
		<td>POST</td>
		<td>Creates a new journal attachment</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journalattachment/put-billing-journalattachments-024.md">/public/v1/billing/journals/{journalId}/attachments/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing journal attachment</td>
		<td>vendor,ops</td>
	</tr>
<tbody>
</table>



### Journalcharge

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
		<td><a href="journalcharge/post-billing-journalcharges-011.md">/public/v1/billing/journals/{journalId}/charges/{id}/match</a></td>
		<td>POST</td>
		<td>Matches a charge to a subscription</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journalcharge/post-billing-journalcharges-012.md">/public/v1/billing/journals/{journalId}/charges/{id}/ignore</a></td>
		<td>POST</td>
		<td>Ignores a charge</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="journalcharge/post-billing-journalcharges-013.md">/public/v1/billing/journals/{journalId}/charges/{id}/reset</a></td>
		<td>POST</td>
		<td>Resets a charge</td>
		<td>vendor,ops</td>
	</tr>
<tbody>
</table>



### Ledger

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
		<td><a href="ledger/get-billing-ledgers-037.md">/public/v1/billing/ledgers/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="ledger/post-billing-ledgers-038.md">/public/v1/billing/ledgers/{id}/recalculate</a></td>
		<td>POST</td>
		<td>Recalculates a ledger</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="ledger/post-billing-ledgers-039.md">/public/v1/billing/ledgers/{id}/accept</a></td>
		<td>POST</td>
		<td>Accepts a ledger</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="ledger/post-billing-ledgers-040.md">/public/v1/billing/ledgers/{id}/queue</a></td>
		<td>POST</td>
		<td>Queues a ledger for ERP integration</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="ledger/put-billing-ledgers-037.md">/public/v1/billing/ledgers/{id}</a></td>
		<td>PUT</td>
		<td>Updates a ledger</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Ledgerattachment

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
		<td><a href="ledgerattachment/get-billing-ledgerattachments-035.md">/public/v1/billing/ledgers/{ledgerId}/attachments/{id}</a></td>
		<td>GET</td>
		<td>Retrieves a specific ledger attachment by its ID</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="ledgerattachment/post-billing-ledgerattachments-036.md">/public/v1/billing/ledgers/{ledgerId}/attachments</a></td>
		<td>POST</td>
		<td>Creates a new ledger attachment</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="ledgerattachment/put-billing-ledgerattachments-035.md">/public/v1/billing/ledgers/{ledgerId}/attachments/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing ledger attachment</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Override

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
		<td><a href="override/get-billing-manualoverrides-042.md">/public/v1/billing/manual-overrides/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="override/post-billing-manualoverrides-041.md">/public/v1/billing/manual-overrides</a></td>
		<td>POST</td>
		<td>Creates a new manual override</td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="override/put-billing-manualoverrides-042.md">/public/v1/billing/manual-overrides/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing manual override</td>
		<td>ops</td>
	</tr>
<tbody>
</table>



### Statement

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
		<td><a href="statement/get-billing-statements-046.md">/public/v1/billing/statements/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="statement/post-billing-statements-045.md">/public/v1/billing/statements</a></td>
		<td>POST</td>
		<td>Creates a new statement</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statement/post-billing-statements-047.md">/public/v1/billing/statements/{id}/cancel</a></td>
		<td>POST</td>
		<td>Cancels a statement</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statement/post-billing-statements-048.md">/public/v1/billing/statements/{id}/error</a></td>
		<td>POST</td>
		<td>Marks a statement as error</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statement/post-billing-statements-049.md">/public/v1/billing/statements/{id}/issue</a></td>
		<td>POST</td>
		<td>Issues a statement</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statement/post-billing-statements-050.md">/public/v1/billing/statements/{id}/pending</a></td>
		<td>POST</td>
		<td>Sets statement to pending</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statement/post-billing-statements-051.md">/public/v1/billing/statements/{id}/queue</a></td>
		<td>POST</td>
		<td>Queues a statement</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statement/post-billing-statements-052.md">/public/v1/billing/statements/{id}/retry</a></td>
		<td>POST</td>
		<td>Retries a failed statement</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statement/post-billing-statements-053.md">/public/v1/billing/statements/{id}/recalculate</a></td>
		<td>POST</td>
		<td>Recalculates a statement</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statement/post-billing-statements-054.md">/public/v1/billing/statements/{id}/children</a></td>
		<td>POST</td>
		<td>Adds a child statement to a consolidated parent statement</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statement/put-billing-statements-046.md">/public/v1/billing/statements/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing statement</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statement/delete-billing-statements-055.md">/public/v1/billing/statements/{id}/children/{childId}</a></td>
		<td>DELETE</td>
		<td>Removes a child statement from a consolidated parent statement</td>
		<td>client,ops</td>
	</tr>
<tbody>
</table>



### Statementattachment

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
		<td><a href="statementattachment/get-billing-statementattachments-043.md">/public/v1/billing/statements/{statementId}/attachments/{id}</a></td>
		<td>GET</td>
		<td>Retrieves a specific statement attachment by its ID</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statementattachment/post-billing-statementattachments-044.md">/public/v1/billing/statements/{statementId}/attachments</a></td>
		<td>POST</td>
		<td>Creates a new statement attachment</td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="statementattachment/put-billing-statementattachments-043.md">/public/v1/billing/statements/{statementId}/attachments/{id}</a></td>
		<td>PUT</td>
		<td>Updates an existing statement attachment</td>
		<td>client,ops</td>
	</tr>
<tbody>
</table>

