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
		<td>/public/v1/billing/analytics</td>
		<td>Get</td>
		<td>Retrieves aggregated billing analytics data.</td>
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



### CreditMemos

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
		<td>/public/v1/billing/credit-memos/{creditMemoId}/attachments/{id}</td>
		<td>Get</td>
		<td>Retrieves a specific credit memo attachment by its ID.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/credit-memos/{creditMemoId}/attachments/{id}</td>
		<td>Put</td>
		<td>Updates an existing credit memo attachment.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/credit-memos/{creditMemoId}/attachments/{id}</td>
		<td>Delete</td>
		<td>Deletes an individual credit memo attachment.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/credit-memos/{creditMemoId}/attachments</td>
		<td>Get</td>
		<td>Retrieves a list of credit memo attachments.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/credit-memos/{creditMemoId}/attachments</td>
		<td>Post</td>
		<td>Creates a new credit memo attachment.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/credit-memos</td>
		<td>Post</td>
		<td>Creates new credit memos.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/credit-memos</td>
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
		<td>/public/v1/billing/credit-memos/{id}</td>
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
<tbody>
</table>



### CustomLedgers

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
		<td>/public/v1/billing/custom-ledgers/{customLedgerId}/attachments/{id}</td>
		<td>Get</td>
		<td>Retrieves a specific custom ledger attachment by its ID.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/custom-ledgers/{customLedgerId}/attachments/{id}</td>
		<td>Put</td>
		<td>Updates an existing custom ledger attachment.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/custom-ledgers/{customLedgerId}/attachments/{id}</td>
		<td>Delete</td>
		<td>Deletes a custom ledger attachment.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/custom-ledgers/{customLedgerId}/attachments</td>
		<td>Get</td>
		<td>Retrieves a list of custom ledger attachments.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/custom-ledgers/{customLedgerId}/attachments</td>
		<td>Post</td>
		<td>Creates a new custom ledger attachment.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/custom-ledgers/{customLedgerId}/charges/{id}</td>
		<td>Get</td>
		<td>Retrieves a specific charge by its ID.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/custom-ledgers/{customLedgerId}/charges</td>
		<td>Get</td>
		<td>Retrieves a list of charges for a specific custom ledger.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/custom-ledgers</td>
		<td>Post</td>
		<td>Creates a new custom ledger.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/custom-ledgers</td>
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
		<td>/public/v1/billing/custom-ledgers/{id}</td>
		<td>Put</td>
		<td>Updates an existing custom ledger.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/custom-ledgers/{id}</td>
		<td>Delete</td>
		<td>Deletes a custom ledger by ID.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/custom-ledgers/{id}</td>
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
		<td>/public/v1/billing/custom-ledgers/{id}/upload</td>
		<td>Post</td>
		<td>Uploads a file for a specific custom ledger.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/custom-ledgers/{id}/accept</td>
		<td>Post</td>
		<td>Accepts a custom ledger.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/custom-ledgers/{id}/queue</td>
		<td>Post</td>
		<td>Queues a custom ledger for ERP integration.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
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
		<td>/public/v1/billing/invoices/{invoiceId}/attachments/{id}</td>
		<td>Get</td>
		<td>Retrieves a specific invoice attachment by its ID.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/invoices/{invoiceId}/attachments/{id}</td>
		<td>Put</td>
		<td>Updates an existing invoice attachment.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/invoices/{invoiceId}/attachments/{id}</td>
		<td>Delete</td>
		<td>Deletes an invoice attachment.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/invoices/{invoiceId}/attachments</td>
		<td>Get</td>
		<td>Retrieves a list of invoice attachments.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/invoices/{invoiceId}/attachments</td>
		<td>Post</td>
		<td>Creates a new invoice attachment.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/invoices</td>
		<td>Post</td>
		<td>Creates new invoices.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/invoices</td>
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
		<td>/public/v1/billing/invoices/{id}</td>
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
		<td>/public/v1/billing/journals/{journalId}/attachments/{id}</td>
		<td>Get</td>
		<td>Retrieves a specific journal attachment by its ID.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/journals/{journalId}/attachments/{id}</td>
		<td>Put</td>
		<td>Updates an existing journal attachment.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/journals/{journalId}/attachments/{id}</td>
		<td>Delete</td>
		<td>Deletes a journal attachment.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/journals/{journalId}/attachments</td>
		<td>Get</td>
		<td>Retrieves a list of journal attachments.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/journals/{journalId}/attachments</td>
		<td>Post</td>
		<td>Creates a new journal attachment.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/journals/{journalId}/charges/{id}</td>
		<td>Get</td>
		<td>Retrieves a specific charge by its ID.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/journals/{journalId}/charges</td>
		<td>Get</td>
		<td>Retrieves a list of charges for a specific journal.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/journals/{journalId}/charges/{id}/match</td>
		<td>Post</td>
		<td>Matches a charge to a subscription.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/journals/{journalId}/charges/{id}/ignore</td>
		<td>Post</td>
		<td>Ignores a charge.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/journals/{journalId}/charges/{id}/reset</td>
		<td>Post</td>
		<td>Resets a charge.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/journals</td>
		<td>Post</td>
		<td>Creates a new journal.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/journals</td>
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
		<td>/public/v1/billing/journals/{id}</td>
		<td>Put</td>
		<td>Updates an existing journal.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/journals/{id}</td>
		<td>Delete</td>
		<td>Deletes the specified journal.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/journals/{id}</td>
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
		<td>/public/v1/billing/journals/{id}/upload</td>
		<td>Post</td>
		<td>Uploads a journal file.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/journals/{id}/regenerate</td>
		<td>Post</td>
		<td>Regenerates a journal.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/journals/{id}/submit</td>
		<td>Post</td>
		<td>Submits a journal for processing.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/journals/{id}/enquiry</td>
		<td>Post</td>
		<td>Enquires the journal.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/journals/{id}/accept</td>
		<td>Post</td>
		<td>Accepts a journal.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/journals/{id}/reset</td>
		<td>Post</td>
		<td>Resets a journal.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/journals/{id}/recalculate</td>
		<td>Post</td>
		<td>Recalculates a journal.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/journals/{journalId}/sellers</td>
		<td>Get</td>
		<td>Retrieves a list of sellers for a specific journal.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
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
		<td>/public/v1/billing/ledgers/{ledgerId}/attachments/{id}</td>
		<td>Get</td>
		<td>Retrieves a specific ledger attachment by its ID.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/ledgers/{ledgerId}/attachments/{id}</td>
		<td>Put</td>
		<td>Updates an existing ledger attachment.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/ledgers/{ledgerId}/attachments/{id}</td>
		<td>Delete</td>
		<td>Deletes a ledger attachment.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/ledgers/{ledgerId}/attachments</td>
		<td>Get</td>
		<td>Retrieves a list of ledger attachments.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/ledgers/{ledgerId}/attachments</td>
		<td>Post</td>
		<td>Creates a new ledger attachment.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/ledgers/{ledgerId}/charges/{id}</td>
		<td>Get</td>
		<td>Retrieves a specific charge by its ID.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/ledgers/{ledgerId}/charges</td>
		<td>Get</td>
		<td>Retrieves a list of charges for a specific ledger.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/ledgers/{id}</td>
		<td>Put</td>
		<td>Updates a ledger.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/ledgers/{id}</td>
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
		<td>/public/v1/billing/ledgers/{id}/recalculate</td>
		<td>Post</td>
		<td>Recalculates a ledger.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/ledgers/{id}/accept</td>
		<td>Post</td>
		<td>Accepts a ledger.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/ledgers/{id}/queue</td>
		<td>Post</td>
		<td>Queues a ledger for ERP integration.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/ledgers</td>
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
<tbody>
</table>



### ManualOverrides

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
		<td>/public/v1/billing/manual-overrides</td>
		<td>Post</td>
		<td>Creates a new manual override.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/manual-overrides</td>
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
		<td>/public/v1/billing/manual-overrides/{id}</td>
		<td>Put</td>
		<td>Updates an existing manual override.</td>
		<td>
			<ul>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/manual-overrides/{id}</td>
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
		<td>/public/v1/billing/statements/{statementId}/attachments/{id}</td>
		<td>Get</td>
		<td>Retrieves a specific statement attachment by its ID.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/statements/{statementId}/attachments/{id}</td>
		<td>Put</td>
		<td>Updates an existing statement attachment.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/statements/{statementId}/attachments/{id}</td>
		<td>Delete</td>
		<td>Deletes a statement attachment.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/statements/{statementId}/attachments</td>
		<td>Get</td>
		<td>Retrieves a list of statement attachments.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/statements/{statementId}/attachments</td>
		<td>Post</td>
		<td>Creates a new statement attachment.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/statements/{statementId}/charges/{id}</td>
		<td>Get</td>
		<td>Retrieves a specific charge by its ID.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/statements/{statementId}/charges</td>
		<td>Get</td>
		<td>Retrieves a list of charges for a specific statement.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/statements</td>
		<td>Post</td>
		<td>Creates a new statement.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/statements</td>
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
		<td>/public/v1/billing/statements/{id}</td>
		<td>Put</td>
		<td>Updates an existing statement.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/statements/{id}</td>
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
		<td>/public/v1/billing/statements/{id}/cancel</td>
		<td>Post</td>
		<td>Cancels a statement.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/statements/{id}/error</td>
		<td>Post</td>
		<td>Marks a statement as error.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/statements/{id}/issue</td>
		<td>Post</td>
		<td>Issues a statement.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/statements/{id}/pending</td>
		<td>Post</td>
		<td>Sets statement to pending.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/statements/{id}/queue</td>
		<td>Post</td>
		<td>Queues a statement.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/statements/{id}/retry</td>
		<td>Post</td>
		<td>Retries a failed statement.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/statements/{id}/recalculate</td>
		<td>Post</td>
		<td>Recalculates a statement.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/statements/{id}/children</td>
		<td>Post</td>
		<td>Adds a child statement to a consolidated parent statement.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/billing/statements/{id}/children/{childId}</td>
		<td>Delete</td>
		<td>Removes a child statement from a consolidated parent statement.</td>
		<td>
			<ul>
				  <li>Client</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>

