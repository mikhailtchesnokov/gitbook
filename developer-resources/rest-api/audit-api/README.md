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
		<td>/public/v1/audit/event-types</td>
		<td>Get</td>
		<td>Gets a list of audit event types.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/audit/event-types/{id}</td>
		<td>Get</td>
		<td>Retrieves an audit event type by ID.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/audit/event-types/{id}</td>
		<td>Put</td>
		<td>Updates an event type.</td>
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
		<td>/public/v1/audit/records</td>
		<td>Get</td>
		<td>Gets a list of audit records.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/audit/records/{id}</td>
		<td>Get</td>
		<td>Retrieves an audit record by ID.</td>
		<td>
			<ul>
				  <li>Operations</li>
				  <li>Client</li>
				  <li>Vendor</li>
			</ul>		
		</td>
	</tr>
	<tr>
		<td>/public/v1/audit/records</td>
		<td>Post</td>
		<td>Creates a new audit record.</td>
		<td>
			<ul>
				  <li>Vendor</li>
				  <li>Operations</li>
			</ul>		
		</td>
	</tr>
<tbody>
</table>

