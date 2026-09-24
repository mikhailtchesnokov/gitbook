# Helpdesk API

You can also perform additional operations, including:

*  List all answers for a chat

*  Create a new answer from a published form

*  Retrieve an answer by ID

*  Update answer parameter values

*  Soft-delete an answer

*  Validates answer parameter values

*  Submit an answer for review

*  Accept the answer and lock all parameters

*  Request changes from the reporter

*  Get a list of chats

*  Create a new Chat

*  Retrieve a chat by ID

*  Update an existing Chat

*  Get a download redirect for a chat icon

*  Get a list of chat attachments

*  Add attachments to an existing chat entry

*  Retrieve a chat attachment by ID

*  Update a chat attachment data

*  Delete a chat attachment by ID

*  Get a list of chat participants

*  Add new chat participants

*  Get a chat participant

*  Update an existing participant.

*  Remove a participant from the chat

*  Get a list of feedbacks

*  Create a new feedback entry

*  Retrieve a feedback by ID

*  Update an existing feedback

*  Delete feedback by ID

*  Update feedback review status

*  Get attachments for a feedback entry

*  Add attachments to an existing feedback entry

*  Get attachment for a feedback entry

*  Update a feedback attachment

*  Delete a feedback attachment by ID

*  Get a download redirect for a feedback attachment

*  List all parameters in a form

*  Retrieve a parameter within a form by ID

*  Get a list of forms

*  Create a new Form

*  Retrieve a form by ID

*  Update an existing form

*  Delete a Form

*  Publish a Form

*  Unpublish a Form

*  Get a list of chat links

*  Create a new Link

*  Update a chat link

*  Delete a chat link by ID

*  Get a list of messages for a chat

*  Create a new message in a chat

*  Retrieve a message by ID

*  Update an existing message

*  Delete a message by ID

*  List parameters in a parameter group

*  Add parameter to a parameter group

*  Retrieve a parameter within parameter group by ID

*  Update parameter display order within a group

*  Remove parameter from a parameter group

*  List parameter groups in a form

*  Add parameter group to a form

*  Retrieve a parameter group within a form by ID

*  Update parameter group display order within a form

*  Remove parameter group from a form

*  Create a new parameter definition.

*  Updates existing parameter definition.

*  Deletes existing parameter definition.

*  Create a new parameter group

*  Update an existing parameter group

*  Delete an existing parameter group

*  List forms linked to a parameter group

*  Retrieve a form linked to a parameter group by ID

*  Get a list of queues

*  Create a new queue

*  Retrieve a queue by ID

*  Update an existing queue

*  Delete an existing queue

*  Activate a queue

*  Disable a queue

*  Get a queue icon

*  Get all parameters of a queue

*  Add a parameter to a queue

*  Get a single queue parameter

*  Update a queue parameter

*  Remove a parameter from a queue

*  Creates a new support case.

*  Update an existing support case

*  Sets a support case to Mpt.Helpdesk.Models.Cases.SupportCaseStatus.Querying status.

*  Sets a support case to Mpt.Helpdesk.Models.Cases.SupportCaseStatus.Processing status.

*  Sets a support case to Mpt.Helpdesk.Models.Cases.SupportCaseStatus.Completed status.


## Before you start

Review the shared API docs before you work with currency resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)


## Core concepts

The Helpdesk API is built around the following core resources:

*  **Answer**  - A form submission within a chat, containing parameter values filled by participants

*  **Chat**  - 

*  **ChatAttachment**  - 

*  **ChatParticipant**  - 

*  **Feedback**  - 

*  **FeedbackAttachment**  - 

*  **Form**  - 

*  **ChatLink**  - 

*  **ChatMessage**  - 

*  **Queue**  - 

*  **SupportCase**  - 


## Browse collections

The API is organized into collections, each containing a set of operations. Access to these operations varies by role, depending on whether you are a `client`, `vendor`, or `operations` user.&#x20;

See the following sections to determine which roles are authorized to perform specific operations within each collection:

### Answer

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/answers</a></td>
		<td>GET</td>
		<td>List all answers for a chat</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/answers/{id}</a></td>
		<td>GET</td>
		<td>Retrieve an answer by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/answers</a></td>
		<td>POST</td>
		<td>Create a new answer from a published form</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/answers/{id}/validate</a></td>
		<td>POST</td>
		<td>Validates answer parameter values</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/answers/{id}/submit</a></td>
		<td>POST</td>
		<td>Submit an answer for review</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/answers/{id}/accept</a></td>
		<td>POST</td>
		<td>Accept the answer and lock all parameters</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/answers/{id}/query</a></td>
		<td>POST</td>
		<td>Request changes from the reporter</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/answers/{id}</a></td>
		<td>PUT</td>
		<td>Update answer parameter values</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/answers/{id}</a></td>
		<td>DELETE</td>
		<td>Soft-delete an answer</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Chat

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats</a></td>
		<td>GET</td>
		<td>Get a list of chats</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a chat by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{id}/icon</a></td>
		<td>GET</td>
		<td>Get a download redirect for a chat icon</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats</a></td>
		<td>POST</td>
		<td>Create a new Chat</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{id}</a></td>
		<td>PUT</td>
		<td>Update an existing Chat</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Chatattachment

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/attachments</a></td>
		<td>GET</td>
		<td>Get a list of chat attachments</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/attachments/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a chat attachment by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/attachments</a></td>
		<td>POST</td>
		<td>Add attachments to an existing chat entry</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/attachments/{id}</a></td>
		<td>PUT</td>
		<td>Update a chat attachment data</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/attachments/{id}</a></td>
		<td>DELETE</td>
		<td>Delete a chat attachment by ID</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Chatparticipant

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/participants</a></td>
		<td>GET</td>
		<td>Get a list of chat participants</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/participants/{id}</a></td>
		<td>GET</td>
		<td>Get a chat participant</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/participants</a></td>
		<td>POST</td>
		<td>Add new chat participants</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/participants/{id}</a></td>
		<td>PUT</td>
		<td>Update an existing participant</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/participants/{id}</a></td>
		<td>DELETE</td>
		<td>Remove a participant from the chat</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Feedback

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/feedback</a></td>
		<td>GET</td>
		<td>Get a list of feedbacks</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/feedback/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a feedback by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/feedback</a></td>
		<td>POST</td>
		<td>Create a new feedback entry</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/feedback/{id}/review</a></td>
		<td>POST</td>
		<td>Update feedback review status</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/feedback/{id}</a></td>
		<td>PUT</td>
		<td>Update an existing feedback</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/feedback/{id}</a></td>
		<td>DELETE</td>
		<td>Delete feedback by ID</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Feedbackattachment

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/feedback/{feedbackId}/attachments</a></td>
		<td>GET</td>
		<td>Get attachments for a feedback entry</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/feedback/{feedbackId}/attachments/{attachmentId}</a></td>
		<td>GET</td>
		<td>Get attachment for a feedback entry</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/feedback/{feedbackId}/attachments/{attachmentId}/download</a></td>
		<td>GET</td>
		<td>Get a download redirect for a feedback attachment</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/feedback/{feedbackId}/attachments</a></td>
		<td>POST</td>
		<td>Add attachments to an existing feedback entry</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/feedback/{feedbackId}/attachments/{attachmentId}</a></td>
		<td>PUT</td>
		<td>Update a feedback attachment</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/feedback/{feedbackId}/attachments/{attachmentId}</a></td>
		<td>DELETE</td>
		<td>Delete a feedback attachment by ID</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Formparameters

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/forms/{formId}/parameters</a></td>
		<td>GET</td>
		<td>List all parameters in a form</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/forms/{formId}/parameters/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a parameter within a form by ID</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### Forms

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/forms</a></td>
		<td>GET</td>
		<td>Get a list of forms</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/forms/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a form by ID</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/forms</a></td>
		<td>POST</td>
		<td>Create a new Form</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/forms/{id}/publish</a></td>
		<td>POST</td>
		<td>Publish a Form</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/forms/{id}/unpublish</a></td>
		<td>POST</td>
		<td>Unpublish a Form</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/forms/{id}</a></td>
		<td>PUT</td>
		<td>Update an existing form</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/forms/{id}</a></td>
		<td>DELETE</td>
		<td>Delete a Form</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### Link

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/links</a></td>
		<td>GET</td>
		<td>Get a list of chat links</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/links</a></td>
		<td>POST</td>
		<td>Create a new Link</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/links/{id}</a></td>
		<td>PUT</td>
		<td>Update a chat link</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/links/{id}</a></td>
		<td>DELETE</td>
		<td>Delete a chat link by ID</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Message

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/messages</a></td>
		<td>GET</td>
		<td>Get a list of messages for a chat</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/messages/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a message by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/messages</a></td>
		<td>POST</td>
		<td>Create a new message in a chat</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/messages/{id}</a></td>
		<td>PUT</td>
		<td>Update an existing message</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/chats/{chatId}/messages/{id}</a></td>
		<td>DELETE</td>
		<td>Delete a message by ID</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Orderedparameterdefinition

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/parameter-groups/{groupId}/parameters</a></td>
		<td>GET</td>
		<td>List parameters in a parameter group</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/parameter-groups/{groupId}/parameters/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a parameter within parameter group by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/parameter-groups/{groupId}/parameters</a></td>
		<td>POST</td>
		<td>Add parameter to a parameter group</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/parameter-groups/{groupId}/parameters/{id}</a></td>
		<td>PUT</td>
		<td>Update parameter display order within a group</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/parameter-groups/{groupId}/parameters/{id}</a></td>
		<td>DELETE</td>
		<td>Remove parameter from a parameter group</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### Orderedparametergroup

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/forms/{formId}/parameter-groups</a></td>
		<td>GET</td>
		<td>List parameter groups in a form</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/forms/{formId}/parameter-groups/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a parameter group within a form by ID</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/forms/{formId}/parameter-groups</a></td>
		<td>POST</td>
		<td>Add parameter group to a form</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/forms/{formId}/parameter-groups/{id}</a></td>
		<td>PUT</td>
		<td>Update parameter group display order within a form</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/forms/{formId}/parameter-groups/{id}</a></td>
		<td>DELETE</td>
		<td>Remove parameter group from a form</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### Parameter

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/parameters</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/parameters/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/parameters</a></td>
		<td>POST</td>
		<td>Create a new parameter definition</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/parameters/{id}</a></td>
		<td>PUT</td>
		<td>Updates existing parameter definition</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/parameters/{id}</a></td>
		<td>DELETE</td>
		<td>Deletes existing parameter definition</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### Parametergroup

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/parameter-groups</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/parameter-groups/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/parameter-groups</a></td>
		<td>POST</td>
		<td>Create a new parameter group</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/parameter-groups/{id}</a></td>
		<td>PUT</td>
		<td>Update an existing parameter group</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/parameter-groups/{id}</a></td>
		<td>DELETE</td>
		<td>Delete an existing parameter group</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### Parametergroupform

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/parameter-groups/{parameterGroupId}/forms</a></td>
		<td>GET</td>
		<td>List forms linked to a parameter group</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/parameter-groups/{parameterGroupId}/forms/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a form linked to a parameter group by ID</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### Queue

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/queues</a></td>
		<td>GET</td>
		<td>Get a list of queues</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/queues/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a queue by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/queues/{id}/icon</a></td>
		<td>GET</td>
		<td>Get a queue icon</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/queues</a></td>
		<td>POST</td>
		<td>Create a new queue</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/queues/{id}/activate</a></td>
		<td>POST</td>
		<td>Activate a queue</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/queues/{id}/disable</a></td>
		<td>POST</td>
		<td>Disable a queue</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/queues/{id}</a></td>
		<td>PUT</td>
		<td>Update an existing queue</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/queues/{id}</a></td>
		<td>DELETE</td>
		<td>Delete an existing queue</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### Queueparameter

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/queues/{queueId}/parameters</a></td>
		<td>GET</td>
		<td>Get all parameters of a queue</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/queues/{queueId}/parameters/{parameterId}</a></td>
		<td>GET</td>
		<td>Get a single queue parameter</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/queues/{queueId}/parameters</a></td>
		<td>POST</td>
		<td>Add a parameter to a queue</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/queues/{queueId}/parameters/{parameterId}</a></td>
		<td>PUT</td>
		<td>Update a queue parameter</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/queues/{queueId}/parameters/{parameterId}</a></td>
		<td>DELETE</td>
		<td>Remove a parameter from a queue</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### Supportcases

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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/cases</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/cases/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/cases</a></td>
		<td>POST</td>
		<td>Creates a new support case</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/cases/{id}/query</a></td>
		<td>POST</td>
		<td>Sets a support case to Mpt.Helpdesk.Models.Cases.SupportCaseStatus.Querying status</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/cases/{id}/process</a></td>
		<td>POST</td>
		<td>Sets a support case to Mpt.Helpdesk.Models.Cases.SupportCaseStatus.Processing status</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/cases/{id}/complete</a></td>
		<td>POST</td>
		<td>Sets a support case to Mpt.Helpdesk.Models.Cases.SupportCaseStatus.Completed status</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/helpdesk/cases/{id}</a></td>
		<td>PUT</td>
		<td>Update an existing support case</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>

