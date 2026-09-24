# System API

You can also perform additional operations, including:

*  Get a list of tasks

*  Create a task

*  Retrieve a task by ID

*  Update a task

*  Get a task result

*  Get task logs

*  Create a task log

*  Transition a task to Processing

*  Transition a task to Rescheduled

*  Transition a task to Queued

*  Transition a task to Completed

*  Transition a task to Failed


## Before you start

Review the shared API docs before you work with currency resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)


## Core concepts

The System API is built around the following core resources:

*  **Task**  - The Task represents the state of an asynchronous, usually long running operation.

*  **TaskLog**  - 


## Browse collections

The API is organized into collections, each containing a set of operations. Access to these operations varies by role, depending on whether you are a `client`, `vendor`, or `operations` user.&#x20;

See the following sections to determine which roles are authorized to perform specific operations within each collection:

### Tasks

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
		<td><a href="tasks/get-system-tasks-448.md">/public/v1/system/tasks</a></td>
		<td>GET</td>
		<td>Get a list of tasks</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="tasks/get-system-tasks-449.md">/public/v1/system/tasks/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a task by ID</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="tasks/get-system-tasks-450.md">/public/v1/system/tasks/{id}/result</a></td>
		<td>GET</td>
		<td>Get a task result</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="tasks/get-system-tasks-451.md">/public/v1/system/tasks/{id}/logs</a></td>
		<td>GET</td>
		<td>Get task logs</td>
		<td>vendor,ops</td>
	</tr>
	<tr>
		<td><a href="tasks/post-system-tasks-448.md">/public/v1/system/tasks</a></td>
		<td>POST</td>
		<td>Create a task</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="tasks/post-system-tasks-451.md">/public/v1/system/tasks/{id}/logs</a></td>
		<td>POST</td>
		<td>Create a task log</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="tasks/post-system-tasks-452.md">/public/v1/system/tasks/{id}/execute</a></td>
		<td>POST</td>
		<td>Transition a task to Processing</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="tasks/post-system-tasks-453.md">/public/v1/system/tasks/{id}/reschedule</a></td>
		<td>POST</td>
		<td>Transition a task to Rescheduled</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="tasks/post-system-tasks-454.md">/public/v1/system/tasks/{id}/queue</a></td>
		<td>POST</td>
		<td>Transition a task to Queued</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="tasks/post-system-tasks-455.md">/public/v1/system/tasks/{id}/complete</a></td>
		<td>POST</td>
		<td>Transition a task to Completed</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="tasks/post-system-tasks-456.md">/public/v1/system/tasks/{id}/fail</a></td>
		<td>POST</td>
		<td>Transition a task to Failed</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="tasks/put-system-tasks-449.md">/public/v1/system/tasks/{id}</a></td>
		<td>PUT</td>
		<td>Update a task</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>

