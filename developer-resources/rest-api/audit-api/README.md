# Audit API

The **Audit API** provides **REST** endpoints for managing resources within the **audit** business domain of the SoftwareOne Marketplace. 

The API supports the following business objects:

*  **AuditEventType**  - 

*  **AuditRecord**  - 

Use the API to retrieve and manage these resources. Depending on the resource, available operations include creating, updating, and deleting records.
The full list of available operations is provided below.


## Before you start

Review the shared API docs before you work with **audit** resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)

## Browse collections

The API is organized into collections, each containing a set of operations. Access to these operations varies by role, depending on whether you are a `client`, `vendor`, or `operations` user.&#x20;

See the following sections to determine which roles are authorized to perform specific operations within each collection:

### Auditeventtype

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
		<td><a href="auditeventtype/get-audit-auditeventtypes-000.md">/public/v1/audit/event-types/{id}</a></td>
		<td>GET</td>
		<td>Retrieves an audit event type by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="auditeventtype/put-audit-auditeventtypes-000.md">/public/v1/audit/event-types/{id}</a></td>
		<td>PUT</td>
		<td>Updates an event type</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Auditrecord

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
		<td><a href="auditrecord/get-audit-auditrecords-002.md">/public/v1/audit/records/{id}</a></td>
		<td>GET</td>
		<td>Retrieves an audit record by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="auditrecord/post-audit-auditrecords-001.md">/public/v1/audit/records</a></td>
		<td>POST</td>
		<td>Creates a new audit record</td>
		<td>vendor,ops</td>
	</tr>
<tbody>
</table>

