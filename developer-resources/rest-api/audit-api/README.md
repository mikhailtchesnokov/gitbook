# Audit API

You can also perform additional operations, including:

*  Gets a list of audit event types.

*  Retrieves an audit event type by ID.

*  Updates an event type.

*  Creates a new audit record.

*  Gets a list of audit records.

*  Retrieves an audit record by ID.


## Before you start

Review the shared API docs before you work with currency resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)


## Core concepts

The Audit API is built around the following core resources:


## Browse collections

The API is organized into collections, each containing a set of operations. Access to these operations varies by role, depending on whether you are a `client`, `vendor`, or `operations` user.&#x20;

See the following sections to determine which roles are authorized to perform specific operations within each collection:

### Auditeventtypes

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
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/audit/event-types</a></td>
		<td>GET</td>
		<td>Gets a list of audit event types</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/audit/event-types/{id}</a></td>
		<td>GET</td>
		<td>Retrieves an audit event type by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/audit/event-types/{id}</a></td>
		<td>PUT</td>
		<td>Updates an event type</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Auditrecords

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
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/audit/records</a></td>
		<td>GET</td>
		<td>Gets a list of audit records</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/audit/records/{id}</a></td>
		<td>GET</td>
		<td>Retrieves an audit record by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="../currencies/get-exchange-currencies-092.md">/public/v1/audit/records</a></td>
		<td>POST</td>
		<td>Creates a new audit record</td>
		<td>vendor,ops</td>
	</tr>
<tbody>
</table>

