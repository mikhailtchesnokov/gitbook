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
		<td><a href="certificate/get-program-certificate-383.md">/public/v1/program/certificates</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="certificate/get-program-certificate-385.md">/public/v1/program/certificates/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="certificate/get-program-certificate-386.md">/public/v1/program/certificates/{id}/render</a></td>
		<td>GET</td>
		<td>Renders certificate template</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="certificate/post-program-certificate-383.md">/public/v1/program/certificates</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="certificate/post-program-certificate-384.md">/public/v1/program/certificates/{id}/terminate</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="certificate/put-program-certificate-385.md">/public/v1/program/certificates/{id}</a></td>
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
		<td><a href="enrollment/get-program-enrollment-387.md">/public/v1/program/enrollments</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="enrollment/get-program-enrollment-389.md">/public/v1/program/enrollments/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="enrollment/get-program-enrollment-395.md">/public/v1/program/enrollments/{id}/render</a></td>
		<td>GET</td>
		<td>Renders enrollment template</td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="enrollment/post-program-enrollment-387.md">/public/v1/program/enrollments</a></td>
		<td>POST</td>
		<td></td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="enrollment/post-program-enrollment-388.md">/public/v1/program/enrollments/{id}/validate</a></td>
		<td>POST</td>
		<td></td>
		<td>client,vendor</td>
	</tr>
	<tr>
		<td><a href="enrollment/post-program-enrollment-390.md">/public/v1/program/enrollments/{id}/query</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="enrollment/post-program-enrollment-391.md">/public/v1/program/enrollments/{id}/process</a></td>
		<td>POST</td>
		<td></td>
		<td>client,vendor</td>
	</tr>
	<tr>
		<td><a href="enrollment/post-program-enrollment-392.md">/public/v1/program/enrollments/{id}/complete</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="enrollment/post-program-enrollment-393.md">/public/v1/program/enrollments/{id}/submit</a></td>
		<td>POST</td>
		<td></td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="enrollment/post-program-enrollment-394.md">/public/v1/program/enrollments/{id}/fail</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="enrollment/put-program-enrollment-389.md">/public/v1/program/enrollments/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>client,vendor</td>
	</tr>
	<tr>
		<td><a href="enrollment/delete-program-enrollment-389.md">/public/v1/program/enrollments/{id}</a></td>
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
		<td><a href="enrollmentattachments/get-program-enrollmentattachments-396.md">/public/v1/program/enrollments/{enrollmentId}/attachments/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="enrollmentattachments/get-program-enrollmentattachments-397.md">/public/v1/program/enrollments/{enrollmentId}/attachments</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="enrollmentattachments/post-program-enrollmentattachments-397.md">/public/v1/program/enrollments/{enrollmentId}/attachments</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="enrollmentattachments/put-program-enrollmentattachments-396.md">/public/v1/program/enrollments/{enrollmentId}/attachments/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="enrollmentattachments/delete-program-enrollmentattachments-396.md">/public/v1/program/enrollments/{enrollmentId}/attachments/{id}</a></td>
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
		<td><a href="programdocuments/get-program-programdocuments-398.md">/public/v1/program/programs/{programId}/documents/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programdocuments/get-program-programdocuments-399.md">/public/v1/program/programs/{programId}/documents</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programdocuments/post-program-programdocuments-399.md">/public/v1/program/programs/{programId}/documents</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programdocuments/post-program-programdocuments-400.md">/public/v1/program/programs/{programId}/documents/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programdocuments/post-program-programdocuments-401.md">/public/v1/program/programs/{programId}/documents/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programdocuments/put-program-programdocuments-398.md">/public/v1/program/programs/{programId}/documents/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programdocuments/delete-program-programdocuments-398.md">/public/v1/program/programs/{programId}/documents/{id}</a></td>
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
		<td><a href="programmedia/get-program-programmedia-402.md">/public/v1/program/programs/{programId}/media/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programmedia/get-program-programmedia-403.md">/public/v1/program/programs/{programId}/media</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programmedia/get-program-programmedia-406.md">/public/v1/program/programs/{programId}/media/{id}/image</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programmedia/post-program-programmedia-403.md">/public/v1/program/programs/{programId}/media</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programmedia/post-program-programmedia-404.md">/public/v1/program/programs/{programId}/media/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programmedia/post-program-programmedia-405.md">/public/v1/program/programs/{programId}/media/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programmedia/put-program-programmedia-402.md">/public/v1/program/programs/{programId}/media/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programmedia/delete-program-programmedia-402.md">/public/v1/program/programs/{programId}/media/{id}</a></td>
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
		<td><a href="programparametergroups/get-program-programparametergroups-407.md">/public/v1/program/programs/{programId}/parameter-groups</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programparametergroups/get-program-programparametergroups-408.md">/public/v1/program/programs/{programId}/parameter-groups/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programparametergroups/post-program-programparametergroups-407.md">/public/v1/program/programs/{programId}/parameter-groups</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programparametergroups/put-program-programparametergroups-408.md">/public/v1/program/programs/{programId}/parameter-groups/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programparametergroups/delete-program-programparametergroups-408.md">/public/v1/program/programs/{programId}/parameter-groups/{id}</a></td>
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
		<td><a href="programparameters/get-program-programparameters-409.md">/public/v1/program/programs/{programId}/parameters</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programparameters/get-program-programparameters-410.md">/public/v1/program/programs/{programId}/parameters/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programparameters/post-program-programparameters-409.md">/public/v1/program/programs/{programId}/parameters</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programparameters/put-program-programparameters-410.md">/public/v1/program/programs/{programId}/parameters/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programparameters/delete-program-programparameters-410.md">/public/v1/program/programs/{programId}/parameters/{id}</a></td>
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
		<td><a href="programs/get-program-programs-411.md">/public/v1/program/programs</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programs/get-program-programs-412.md">/public/v1/program/programs/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programs/get-program-programs-416.md">/public/v1/program/programs/{id}/icon</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programs/post-program-programs-411.md">/public/v1/program/programs</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programs/post-program-programs-414.md">/public/v1/program/programs/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programs/post-program-programs-415.md">/public/v1/program/programs/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programs/put-program-programs-412.md">/public/v1/program/programs/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programs/put-program-programs-413.md">/public/v1/program/programs/{id}/settings</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programs/delete-program-programs-412.md">/public/v1/program/programs/{id}</a></td>
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
		<td><a href="programtemplates/get-program-programtemplates-417.md">/public/v1/program/programs/{programId}/templates</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programtemplates/get-program-programtemplates-418.md">/public/v1/program/programs/{programId}/templates/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programtemplates/post-program-programtemplates-417.md">/public/v1/program/programs/{programId}/templates</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programtemplates/put-program-programtemplates-418.md">/public/v1/program/programs/{programId}/templates/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programtemplates/delete-program-programtemplates-418.md">/public/v1/program/programs/{programId}/templates/{id}</a></td>
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
		<td><a href="programtermsandconditions/get-program-programtermsandconditions-419.md">/public/v1/program/programs/{programId}/terms</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programtermsandconditions/get-program-programtermsandconditions-420.md">/public/v1/program/programs/{programId}/terms/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programtermsandconditions/post-program-programtermsandconditions-419.md">/public/v1/program/programs/{programId}/terms</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programtermsandconditions/post-program-programtermsandconditions-421.md">/public/v1/program/programs/{programId}/terms/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programtermsandconditions/post-program-programtermsandconditions-422.md">/public/v1/program/programs/{programId}/terms/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programtermsandconditions/put-program-programtermsandconditions-420.md">/public/v1/program/programs/{programId}/terms/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programtermsandconditions/delete-program-programtermsandconditions-420.md">/public/v1/program/programs/{programId}/terms/{id}</a></td>
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
		<td><a href="programtermsandconditionsvariant/get-program-programtermsandconditionsvariant-423.md">/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programtermsandconditionsvariant/get-program-programtermsandconditionsvariant-424.md">/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programtermsandconditionsvariant/post-program-programtermsandconditionsvariant-423.md">/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programtermsandconditionsvariant/post-program-programtermsandconditionsvariant-425.md">/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programtermsandconditionsvariant/post-program-programtermsandconditionsvariant-426.md">/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programtermsandconditionsvariant/put-program-programtermsandconditionsvariant-424.md">/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programtermsandconditionsvariant/delete-program-programtermsandconditionsvariant-424.md">/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants/{id}</a></td>
		<td>DELETE</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>

