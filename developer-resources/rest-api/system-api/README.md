# System API

The **System API** provides **REST** endpoints for managing resources within the **system** business domain of the SoftwareOne Marketplace. 

The API supports the following business objects:

*  **Task**  - the task represents the state of an asynchronous, usually long running operation

*  **TaskLog**  - 

Use the API to retrieve and manage these resources. Depending on the resource, available operations include creating, updating, and deleting records.
The full list of available operations is provided below.


## Before you start

Review the shared API docs before you work with **system** resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)

## Browse collections

The API is organized into collections, each containing a set of operations. Access to these operations varies by role, depending on whether you are a `client`, `vendor`, or `operations` user.&#x20;

See the following sections to determine which roles are authorized to perform specific operations within each collection:

### Task

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
		<td><a href="task/get-system-tasks-378.md">/public/v1/system/tasks/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a task by ID</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="task/post-system-tasks-377.md">/public/v1/system/tasks</a></td>
		<td>POST</td>
		<td>Create a task</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="task/post-system-tasks-379.md">/public/v1/system/tasks/{id}/execute</a></td>
		<td>POST</td>
		<td>Transition a task to Processing</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="task/post-system-tasks-380.md">/public/v1/system/tasks/{id}/reschedule</a></td>
		<td>POST</td>
		<td>Transition a task to Rescheduled</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="task/post-system-tasks-381.md">/public/v1/system/tasks/{id}/queue</a></td>
		<td>POST</td>
		<td>Transition a task to Queued</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="task/post-system-tasks-382.md">/public/v1/system/tasks/{id}/complete</a></td>
		<td>POST</td>
		<td>Transition a task to Completed</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="task/post-system-tasks-383.md">/public/v1/system/tasks/{id}/fail</a></td>
		<td>POST</td>
		<td>Transition a task to Failed</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="task/put-system-tasks-378.md">/public/v1/system/tasks/{id}</a></td>
		<td>PUT</td>
		<td>Update a task</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### Tasklog

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
		<td><a href="tasklog/post-system-tasks-384.md">/public/v1/system/tasks/{id}/logs</a></td>
		<td>POST</td>
		<td>Create a task log</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>

