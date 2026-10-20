# Helpdesk API

The **Helpdesk API** provides **REST** endpoints for managing resources within the **helpdesk** business domain of the SoftwareOne Marketplace. 

The API supports the following business objects:

*  **Answer**  - a form submission within a chat, containing parameter values filled by participants

*  **Chat**  - 

*  **ChatAttachment**  - 

*  **ChatLink**  - 

*  **ChatMessage**  - 

*  **ChatParticipant**  - 

*  **Feedback**  - 

*  **FeedbackAttachment**  - 

*  **Form**  - 

*  **HelpdeskParameterDefinition**  - parameter definition in the helpdesk system

*  **HelpdeskParameterGroup**  - 

*  **OrderedParameterDefinition**  - ordered parameter definition within a parameter group

*  **OrderedParameterGroup**  - ordered parameter group within a form

*  **ParameterGroupForm**  - a form associated with a parameter group

*  **Queue**  - 

*  **QueueParameter**  - represents a parameter definition associated with a queue, including its display order within the queue

*  **SupportCase**  - 

Use the API to retrieve and manage these resources. Depending on the resource, available operations include creating, updating, and deleting records.
The full list of available operations is provided below.


## Before you start

Review the shared API docs before you work with **helpdesk** resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)

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
		<td><a href="answer/get-helpdesk-answer-133.md">/public/v1/helpdesk/chats/{chatId}/answers</a></td>
		<td>GET</td>
		<td>List all answers for a chat</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="answer/get-helpdesk-answer-134.md">/public/v1/helpdesk/chats/{chatId}/answers/{id}</a></td>
		<td>GET</td>
		<td>Retrieve an answer by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="answer/post-helpdesk-answer-133.md">/public/v1/helpdesk/chats/{chatId}/answers</a></td>
		<td>POST</td>
		<td>Create a new answer from a published form</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="answer/post-helpdesk-answer-135.md">/public/v1/helpdesk/chats/{chatId}/answers/{id}/validate</a></td>
		<td>POST</td>
		<td>Validates answer parameter values</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="answer/post-helpdesk-answer-136.md">/public/v1/helpdesk/chats/{chatId}/answers/{id}/submit</a></td>
		<td>POST</td>
		<td>Submit an answer for review</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="answer/post-helpdesk-answer-137.md">/public/v1/helpdesk/chats/{chatId}/answers/{id}/accept</a></td>
		<td>POST</td>
		<td>Accept the answer and lock all parameters</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="answer/post-helpdesk-answer-138.md">/public/v1/helpdesk/chats/{chatId}/answers/{id}/query</a></td>
		<td>POST</td>
		<td>Request changes from the reporter</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="answer/put-helpdesk-answer-134.md">/public/v1/helpdesk/chats/{chatId}/answers/{id}</a></td>
		<td>PUT</td>
		<td>Update answer parameter values</td>
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
		<td><a href="chat/get-helpdesk-chat-139.md">/public/v1/helpdesk/chats</a></td>
		<td>GET</td>
		<td>Get a list of chats</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="chat/get-helpdesk-chat-140.md">/public/v1/helpdesk/chats/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a chat by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="chat/post-helpdesk-chat-139.md">/public/v1/helpdesk/chats</a></td>
		<td>POST</td>
		<td>Create a new Chat</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="chat/put-helpdesk-chat-140.md">/public/v1/helpdesk/chats/{id}</a></td>
		<td>PUT</td>
		<td>Update an existing Chat</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### ChatAttachment

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
		<td><a href="chatattachment/get-helpdesk-chatattachment-141.md">/public/v1/helpdesk/chats/{chatId}/attachments</a></td>
		<td>GET</td>
		<td>Get a list of chat attachments</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="chatattachment/get-helpdesk-chatattachment-142.md">/public/v1/helpdesk/chats/{chatId}/attachments/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a chat attachment by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="chatattachment/post-helpdesk-chatattachment-141.md">/public/v1/helpdesk/chats/{chatId}/attachments</a></td>
		<td>POST</td>
		<td>Add attachments to an existing chat entry</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="chatattachment/put-helpdesk-chatattachment-142.md">/public/v1/helpdesk/chats/{chatId}/attachments/{id}</a></td>
		<td>PUT</td>
		<td>Update a chat attachment data</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### ChatLink

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
		<td><a href="chatlink/get-helpdesk-link-158.md">/public/v1/helpdesk/chats/{chatId}/links</a></td>
		<td>GET</td>
		<td>Get a list of chat links</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="chatlink/post-helpdesk-link-158.md">/public/v1/helpdesk/chats/{chatId}/links</a></td>
		<td>POST</td>
		<td>Create a new Link</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="chatlink/put-helpdesk-link-159.md">/public/v1/helpdesk/chats/{chatId}/links/{id}</a></td>
		<td>PUT</td>
		<td>Update a chat link</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### ChatMessage

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
		<td><a href="chatmessage/get-helpdesk-message-160.md">/public/v1/helpdesk/chats/{chatId}/messages</a></td>
		<td>GET</td>
		<td>Get a list of messages for a chat</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="chatmessage/get-helpdesk-message-161.md">/public/v1/helpdesk/chats/{chatId}/messages/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a message by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="chatmessage/post-helpdesk-message-160.md">/public/v1/helpdesk/chats/{chatId}/messages</a></td>
		<td>POST</td>
		<td>Create a new message in a chat</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="chatmessage/put-helpdesk-message-161.md">/public/v1/helpdesk/chats/{chatId}/messages/{id}</a></td>
		<td>PUT</td>
		<td>Update an existing message</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### ChatParticipant

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
		<td><a href="chatparticipant/get-helpdesk-chatparticipant-143.md">/public/v1/helpdesk/chats/{chatId}/participants</a></td>
		<td>GET</td>
		<td>Get a list of chat participants</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="chatparticipant/get-helpdesk-chatparticipant-144.md">/public/v1/helpdesk/chats/{chatId}/participants/{id}</a></td>
		<td>GET</td>
		<td>Get a chat participant</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="chatparticipant/put-helpdesk-chatparticipant-144.md">/public/v1/helpdesk/chats/{chatId}/participants/{id}</a></td>
		<td>PUT</td>
		<td>Update an existing participant</td>
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
		<td><a href="feedback/get-helpdesk-feedback-145.md">/public/v1/helpdesk/feedback</a></td>
		<td>GET</td>
		<td>Get a list of feedbacks</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="feedback/get-helpdesk-feedback-146.md">/public/v1/helpdesk/feedback/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a feedback by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="feedback/post-helpdesk-feedback-145.md">/public/v1/helpdesk/feedback</a></td>
		<td>POST</td>
		<td>Create a new feedback entry</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="feedback/post-helpdesk-feedback-147.md">/public/v1/helpdesk/feedback/{id}/review</a></td>
		<td>POST</td>
		<td>Update feedback review status</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="feedback/put-helpdesk-feedback-146.md">/public/v1/helpdesk/feedback/{id}</a></td>
		<td>PUT</td>
		<td>Update an existing feedback</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### FeedbackAttachment

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
		<td><a href="feedbackattachment/get-helpdesk-feedbackattachment-148.md">/public/v1/helpdesk/feedback/{feedbackId}/attachments</a></td>
		<td>GET</td>
		<td>Get attachments for a feedback entry</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="feedbackattachment/get-helpdesk-feedbackattachment-149.md">/public/v1/helpdesk/feedback/{feedbackId}/attachments/{attachmentId}</a></td>
		<td>GET</td>
		<td>Get attachment for a feedback entry</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="feedbackattachment/post-helpdesk-feedbackattachment-148.md">/public/v1/helpdesk/feedback/{feedbackId}/attachments</a></td>
		<td>POST</td>
		<td>Add attachments to an existing feedback entry</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="feedbackattachment/put-helpdesk-feedbackattachment-149.md">/public/v1/helpdesk/feedback/{feedbackId}/attachments/{attachmentId}</a></td>
		<td>PUT</td>
		<td>Update a feedback attachment</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Form

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
		<td><a href="form/get-helpdesk-forms-154.md">/public/v1/helpdesk/forms</a></td>
		<td>GET</td>
		<td>Get a list of forms</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="form/get-helpdesk-forms-155.md">/public/v1/helpdesk/forms/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a form by ID</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="form/post-helpdesk-forms-154.md">/public/v1/helpdesk/forms</a></td>
		<td>POST</td>
		<td>Create a new Form</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="form/post-helpdesk-forms-156.md">/public/v1/helpdesk/forms/{id}/publish</a></td>
		<td>POST</td>
		<td>Publish a Form</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="form/post-helpdesk-forms-157.md">/public/v1/helpdesk/forms/{id}/unpublish</a></td>
		<td>POST</td>
		<td>Unpublish a Form</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="form/put-helpdesk-forms-155.md">/public/v1/helpdesk/forms/{id}</a></td>
		<td>PUT</td>
		<td>Update an existing form</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### HelpdeskParameterDefinition

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
		<td><a href="helpdeskparameterdefinition/get-helpdesk-parameter-164.md">/public/v1/helpdesk/parameters</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="helpdeskparameterdefinition/get-helpdesk-parameter-165.md">/public/v1/helpdesk/parameters/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="helpdeskparameterdefinition/post-helpdesk-parameter-164.md">/public/v1/helpdesk/parameters</a></td>
		<td>POST</td>
		<td>Create a new parameter definition</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="helpdeskparameterdefinition/put-helpdesk-parameter-165.md">/public/v1/helpdesk/parameters/{id}</a></td>
		<td>PUT</td>
		<td>Updates existing parameter definition</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### HelpdeskParameterGroup

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
		<td><a href="helpdeskparametergroup/get-helpdesk-parametergroup-166.md">/public/v1/helpdesk/parameter-groups</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="helpdeskparametergroup/get-helpdesk-parametergroup-167.md">/public/v1/helpdesk/parameter-groups/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="helpdeskparametergroup/post-helpdesk-parametergroup-166.md">/public/v1/helpdesk/parameter-groups</a></td>
		<td>POST</td>
		<td>Create a new parameter group</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="helpdeskparametergroup/put-helpdesk-parametergroup-167.md">/public/v1/helpdesk/parameter-groups/{id}</a></td>
		<td>PUT</td>
		<td>Update an existing parameter group</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### OrderedParameterDefinition

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
		<td><a href="orderedparameterdefinition/get-helpdesk-formparameters-150.md">/public/v1/helpdesk/forms/{formId}/parameters</a></td>
		<td>GET</td>
		<td>List all parameters in a form</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="orderedparameterdefinition/get-helpdesk-formparameters-151.md">/public/v1/helpdesk/forms/{formId}/parameters/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a parameter within a form by ID</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="orderedparameterdefinition/get-helpdesk-orderedparameterdefinition-152.md">/public/v1/helpdesk/parameter-groups/{groupId}/parameters</a></td>
		<td>GET</td>
		<td>List parameters in a parameter group</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="orderedparameterdefinition/get-helpdesk-orderedparameterdefinition-153.md">/public/v1/helpdesk/parameter-groups/{groupId}/parameters/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a parameter within parameter group by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="orderedparameterdefinition/post-helpdesk-orderedparameterdefinition-152.md">/public/v1/helpdesk/parameter-groups/{groupId}/parameters</a></td>
		<td>POST</td>
		<td>Add parameter to a parameter group</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="orderedparameterdefinition/put-helpdesk-orderedparameterdefinition-153.md">/public/v1/helpdesk/parameter-groups/{groupId}/parameters/{id}</a></td>
		<td>PUT</td>
		<td>Update parameter display order within a group</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### OrderedParameterGroup

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
		<td><a href="orderedparametergroup/get-helpdesk-orderedparametergroup-162.md">/public/v1/helpdesk/forms/{formId}/parameter-groups</a></td>
		<td>GET</td>
		<td>List parameter groups in a form</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="orderedparametergroup/get-helpdesk-orderedparametergroup-163.md">/public/v1/helpdesk/forms/{formId}/parameter-groups/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a parameter group within a form by ID</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="orderedparametergroup/post-helpdesk-orderedparametergroup-162.md">/public/v1/helpdesk/forms/{formId}/parameter-groups</a></td>
		<td>POST</td>
		<td>Add parameter group to a form</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="orderedparametergroup/put-helpdesk-orderedparametergroup-163.md">/public/v1/helpdesk/forms/{formId}/parameter-groups/{id}</a></td>
		<td>PUT</td>
		<td>Update parameter group display order within a form</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### ParameterGroupForm

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
		<td><a href="parametergroupform/get-helpdesk-parametergroupform-168.md">/public/v1/helpdesk/parameter-groups/{parameterGroupId}/forms</a></td>
		<td>GET</td>
		<td>List forms linked to a parameter group</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="parametergroupform/get-helpdesk-parametergroupform-169.md">/public/v1/helpdesk/parameter-groups/{parameterGroupId}/forms/{id}</a></td>
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
		<td><a href="queue/get-helpdesk-queue-170.md">/public/v1/helpdesk/queues</a></td>
		<td>GET</td>
		<td>Get a list of queues</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="queue/get-helpdesk-queue-171.md">/public/v1/helpdesk/queues/{id}</a></td>
		<td>GET</td>
		<td>Retrieve a queue by ID</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="queue/post-helpdesk-queue-170.md">/public/v1/helpdesk/queues</a></td>
		<td>POST</td>
		<td>Create a new queue</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="queue/post-helpdesk-queue-172.md">/public/v1/helpdesk/queues/{id}/activate</a></td>
		<td>POST</td>
		<td>Activate a queue</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="queue/post-helpdesk-queue-173.md">/public/v1/helpdesk/queues/{id}/disable</a></td>
		<td>POST</td>
		<td>Disable a queue</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="queue/put-helpdesk-queue-171.md">/public/v1/helpdesk/queues/{id}</a></td>
		<td>PUT</td>
		<td>Update an existing queue</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### QueueParameter

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
		<td><a href="queueparameter/get-helpdesk-queueparameter-174.md">/public/v1/helpdesk/queues/{queueId}/parameters</a></td>
		<td>GET</td>
		<td>Get all parameters of a queue</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="queueparameter/get-helpdesk-queueparameter-175.md">/public/v1/helpdesk/queues/{queueId}/parameters/{parameterId}</a></td>
		<td>GET</td>
		<td>Get a single queue parameter</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="queueparameter/post-helpdesk-queueparameter-174.md">/public/v1/helpdesk/queues/{queueId}/parameters</a></td>
		<td>POST</td>
		<td>Add a parameter to a queue</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="queueparameter/put-helpdesk-queueparameter-175.md">/public/v1/helpdesk/queues/{queueId}/parameters/{parameterId}</a></td>
		<td>PUT</td>
		<td>Update a queue parameter</td>
		<td>vendor,client,ops</td>
	</tr>
<tbody>
</table>



### SupportCase

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
		<td><a href="supportcase/get-helpdesk-supportcases-176.md">/public/v1/helpdesk/cases</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="supportcase/get-helpdesk-supportcases-177.md">/public/v1/helpdesk/cases/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="supportcase/post-helpdesk-supportcases-176.md">/public/v1/helpdesk/cases</a></td>
		<td>POST</td>
		<td>Creates a new support case</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="supportcase/post-helpdesk-supportcases-178.md">/public/v1/helpdesk/cases/{id}/query</a></td>
		<td>POST</td>
		<td>Sets a support case to Mpt.Helpdesk.Models.Cases.SupportCaseStatus.Querying status</td>
		<td>vendor,client,ops</td>
	</tr>
	<tr>
		<td><a href="supportcase/post-helpdesk-supportcases-179.md">/public/v1/helpdesk/cases/{id}/process</a></td>
		<td>POST</td>
		<td>Sets a support case to Mpt.Helpdesk.Models.Cases.SupportCaseStatus.Processing status</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="supportcase/post-helpdesk-supportcases-180.md">/public/v1/helpdesk/cases/{id}/complete</a></td>
		<td>POST</td>
		<td>Sets a support case to Mpt.Helpdesk.Models.Cases.SupportCaseStatus.Completed status</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="supportcase/put-helpdesk-supportcases-177.md">/public/v1/helpdesk/cases/{id}</a></td>
		<td>PUT</td>
		<td>Update an existing support case</td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>

