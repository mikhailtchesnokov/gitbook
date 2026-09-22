# Program API

You can also perform additional operations, including:

*  Renders certificate template

*  Renders enrollment template


## Before you start

Review the shared API docs before you work with currency resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)


## Core concepts

The Program API is built around the following core resources:

*  **Certificate**  - 

*  **Enrollment**  - 

*  **EnrollmentAttachment**  - 

*  **ProgramDocument**  - 

*  **ProgramMedia**  - 

*  **ProgramParameterGroup**  - 

*  **ProgramParameterDefinition**  - 

*  **Program**  - 

*  **ProgramTemplate**  - 

*  **ProgramTermsAndConditions**  - 

*  **ProgramTermsAndConditionsVariant**  - 


## Browse collections

The API is organized into collections, each containing a set of operations. Access to these operations varies by role, depending on whether you are a `client`, `vendor`, or `operations` user.&#x20;

See the following sections to determine which roles are authorized to perform specific operations within each collection:

### Certificate

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
		<td>/public/v1/program/certificates</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/certificates/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/certificates/{id}/render</td>
		<td>GET</td>
		<td>Renders certificate template</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/certificates</td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td>/public/v1/program/certificates/{id}/terminate</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/certificates/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Enrollment

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
		<td>/public/v1/program/enrollments</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/enrollments/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/enrollments/{id}/render</td>
		<td>GET</td>
		<td>Renders enrollment template</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/enrollments</td>
		<td>POST</td>
		<td></td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/program/enrollments/{id}/validate</td>
		<td>POST</td>
		<td></td>
		<td>client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/enrollments/{id}/query</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/enrollments/{id}/process</td>
		<td>POST</td>
		<td></td>
		<td>client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/enrollments/{id}/complete</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/enrollments/{id}/submit</td>
		<td>POST</td>
		<td></td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td>/public/v1/program/enrollments/{id}/fail</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/enrollments/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/enrollments/{id}</td>
		<td>DELETE</td>
		<td></td>
		<td>client,ops</td>
	</tr>
<tbody>
</table>



### Enrollmentattachments

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
		<td>/public/v1/program/enrollments/{enrollmentId}/attachments/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/enrollments/{enrollmentId}/attachments</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/enrollments/{enrollmentId}/attachments</td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/enrollments/{enrollmentId}/attachments/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/enrollments/{enrollmentId}/attachments/{id}</td>
		<td>DELETE</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Programdocuments

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
		<td>/public/v1/program/programs/{programId}/documents/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/documents</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/documents</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/documents/{id}/publish</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/documents/{id}/unpublish</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/documents/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/documents/{id}</td>
		<td>DELETE</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### Programmedia

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
		<td>/public/v1/program/programs/{programId}/media/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/media</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/media/{id}/image</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/media</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/media/{id}/publish</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/media/{id}/unpublish</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/media/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/media/{id}</td>
		<td>DELETE</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### Programparametergroups

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
		<td>/public/v1/program/programs/{programId}/parameter-groups</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/parameter-groups/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/parameter-groups</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/parameter-groups/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/parameter-groups/{id}</td>
		<td>DELETE</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### Programparameters

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
		<td>/public/v1/program/programs/{programId}/parameters</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/parameters/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/parameters</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/parameters/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/parameters/{id}</td>
		<td>DELETE</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### Programs

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
		<td>/public/v1/program/programs</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{id}/icon</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{id}/publish</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{id}/unpublish</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{id}/settings</td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{id}</td>
		<td>DELETE</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### Programtemplates

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
		<td>/public/v1/program/programs/{programId}/templates</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/templates/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/templates</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/templates/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/templates/{id}</td>
		<td>DELETE</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### Programtermsandconditions

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
		<td>/public/v1/program/programs/{programId}/terms</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/terms/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/terms</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/terms/{id}/publish</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/terms/{id}/unpublish</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/terms/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/terms/{id}</td>
		<td>DELETE</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### Programtermsandconditionsvariant

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
		<td>/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants/{id}</td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants/{id}/publish</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants/{id}/unpublish</td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants/{id}</td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td>/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants/{id}</td>
		<td>DELETE</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>

