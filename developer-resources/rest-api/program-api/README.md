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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/certificates</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/certificates/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/certificates/{id}/render</a></td>
		<td>GET</td>
		<td>Renders certificate template</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/certificates</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/certificates/{id}/terminate</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/certificates/{id}</a></td>
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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/enrollments</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/enrollments/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/enrollments/{id}/render</a></td>
		<td>GET</td>
		<td>Renders enrollment template</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/enrollments</a></td>
		<td>POST</td>
		<td></td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/enrollments/{id}/validate</a></td>
		<td>POST</td>
		<td></td>
		<td>client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/enrollments/{id}/query</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/enrollments/{id}/process</a></td>
		<td>POST</td>
		<td></td>
		<td>client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/enrollments/{id}/complete</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/enrollments/{id}/submit</a></td>
		<td>POST</td>
		<td></td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/enrollments/{id}/fail</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/enrollments/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/enrollments/{id}</a></td>
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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/enrollments/{enrollmentId}/attachments/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/enrollments/{enrollmentId}/attachments</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/enrollments/{enrollmentId}/attachments</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/enrollments/{enrollmentId}/attachments/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/enrollments/{enrollmentId}/attachments/{id}</a></td>
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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/documents/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/documents</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/documents</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/documents/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/documents/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/documents/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/documents/{id}</a></td>
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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/media/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/media</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/media/{id}/image</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/media</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/media/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/media/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/media/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/media/{id}</a></td>
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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/parameter-groups</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/parameter-groups/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/parameter-groups</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/parameter-groups/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/parameter-groups/{id}</a></td>
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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/parameters</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/parameters/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/parameters</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/parameters/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/parameters/{id}</a></td>
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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{id}/icon</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{id}/settings</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{id}</a></td>
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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/templates</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/templates/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/templates</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/templates/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/templates/{id}</a></td>
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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/terms</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/terms/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/terms</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/terms/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/terms/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/terms/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/terms/{id}</a></td>
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
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="currencies/get-exchange-currencies-092.md">/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants/{id}</a></td>
		<td>DELETE</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>

