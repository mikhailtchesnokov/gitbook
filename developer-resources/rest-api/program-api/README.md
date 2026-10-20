# Program API

The **Program API** provides **REST** endpoints for managing resources within the **program** business domain of the SoftwareOne Marketplace. 

The API supports the following business objects:

*  **Certificate**  - 

*  **Enrollment**  - 

*  **EnrollmentAttachment**  - 

*  **Program**  - 

*  **ProgramDocument**  - 

*  **ProgramMedia**  - 

*  **ProgramParameterDefinition**  - 

*  **ProgramParameterGroup**  - 

*  **ProgramTemplate**  - 

*  **ProgramTermsAndConditions**  - 

*  **ProgramTermsAndConditionsVariant**  - 

Use the API to retrieve and manage these resources. Depending on the resource, available operations include creating, updating, and deleting records.
The full list of available operations is provided below.


## Before you start

Review the shared API docs before you work with **program** resources.

* [Authentication](../)
* [URL structure](../../api-usage-and-reference/url-structure.md)
* [Error handling](../../api-usage-and-reference/errors-handling.md)

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
		<td><a href="certificate/get-program-certificate-353.md">/public/v1/program/certificates</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="certificate/get-program-certificate-355.md">/public/v1/program/certificates/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="certificate/post-program-certificate-353.md">/public/v1/program/certificates</a></td>
		<td>POST</td>
		<td></td>
		<td>ops</td>
	</tr>
	<tr>
		<td><a href="certificate/post-program-certificate-354.md">/public/v1/program/certificates/{id}/terminate</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="certificate/put-program-certificate-355.md">/public/v1/program/certificates/{id}</a></td>
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
		<td><a href="enrollment/get-program-enrollment-356.md">/public/v1/program/enrollments</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="enrollment/get-program-enrollment-358.md">/public/v1/program/enrollments/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="enrollment/post-program-enrollment-356.md">/public/v1/program/enrollments</a></td>
		<td>POST</td>
		<td></td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="enrollment/post-program-enrollment-357.md">/public/v1/program/enrollments/{id}/validate</a></td>
		<td>POST</td>
		<td></td>
		<td>client,vendor</td>
	</tr>
	<tr>
		<td><a href="enrollment/post-program-enrollment-359.md">/public/v1/program/enrollments/{id}/query</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="enrollment/post-program-enrollment-360.md">/public/v1/program/enrollments/{id}/process</a></td>
		<td>POST</td>
		<td></td>
		<td>client,vendor</td>
	</tr>
	<tr>
		<td><a href="enrollment/post-program-enrollment-361.md">/public/v1/program/enrollments/{id}/complete</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="enrollment/post-program-enrollment-362.md">/public/v1/program/enrollments/{id}/submit</a></td>
		<td>POST</td>
		<td></td>
		<td>client,ops</td>
	</tr>
	<tr>
		<td><a href="enrollment/post-program-enrollment-363.md">/public/v1/program/enrollments/{id}/fail</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="enrollment/put-program-enrollment-358.md">/public/v1/program/enrollments/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>client,vendor</td>
	</tr>
<tbody>
</table>



### EnrollmentAttachment

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
		<td><a href="enrollmentattachment/get-program-enrollmentattachments-364.md">/public/v1/program/enrollments/{enrollmentId}/attachments/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="enrollmentattachment/get-program-enrollmentattachments-365.md">/public/v1/program/enrollments/{enrollmentId}/attachments</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="enrollmentattachment/post-program-enrollmentattachments-365.md">/public/v1/program/enrollments/{enrollmentId}/attachments</a></td>
		<td>POST</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="enrollmentattachment/put-program-enrollmentattachments-364.md">/public/v1/program/enrollments/{enrollmentId}/attachments/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
<tbody>
</table>



### Program

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
		<td><a href="program/get-program-programs-378.md">/public/v1/program/programs</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="program/get-program-programs-379.md">/public/v1/program/programs/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="program/post-program-programs-378.md">/public/v1/program/programs</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="program/post-program-programs-381.md">/public/v1/program/programs/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="program/post-program-programs-382.md">/public/v1/program/programs/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="program/put-program-programs-379.md">/public/v1/program/programs/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="program/put-program-programs-380.md">/public/v1/program/programs/{id}/settings</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### ProgramDocument

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
		<td><a href="programdocument/get-program-programdocuments-366.md">/public/v1/program/programs/{programId}/documents/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programdocument/get-program-programdocuments-367.md">/public/v1/program/programs/{programId}/documents</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programdocument/post-program-programdocuments-367.md">/public/v1/program/programs/{programId}/documents</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programdocument/post-program-programdocuments-368.md">/public/v1/program/programs/{programId}/documents/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programdocument/post-program-programdocuments-369.md">/public/v1/program/programs/{programId}/documents/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programdocument/put-program-programdocuments-366.md">/public/v1/program/programs/{programId}/documents/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### ProgramMedia

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
		<td><a href="programmedia/get-program-programmedia-370.md">/public/v1/program/programs/{programId}/media/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programmedia/get-program-programmedia-371.md">/public/v1/program/programs/{programId}/media</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programmedia/post-program-programmedia-371.md">/public/v1/program/programs/{programId}/media</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programmedia/post-program-programmedia-372.md">/public/v1/program/programs/{programId}/media/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programmedia/post-program-programmedia-373.md">/public/v1/program/programs/{programId}/media/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programmedia/put-program-programmedia-370.md">/public/v1/program/programs/{programId}/media/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### ProgramParameterDefinition

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
		<td><a href="programparameterdefinition/get-program-programparameters-376.md">/public/v1/program/programs/{programId}/parameters</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programparameterdefinition/get-program-programparameters-377.md">/public/v1/program/programs/{programId}/parameters/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programparameterdefinition/post-program-programparameters-376.md">/public/v1/program/programs/{programId}/parameters</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programparameterdefinition/put-program-programparameters-377.md">/public/v1/program/programs/{programId}/parameters/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### ProgramParameterGroup

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
		<td><a href="programparametergroup/get-program-programparametergroups-374.md">/public/v1/program/programs/{programId}/parameter-groups</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programparametergroup/get-program-programparametergroups-375.md">/public/v1/program/programs/{programId}/parameter-groups/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programparametergroup/post-program-programparametergroups-374.md">/public/v1/program/programs/{programId}/parameter-groups</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programparametergroup/put-program-programparametergroups-375.md">/public/v1/program/programs/{programId}/parameter-groups/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### ProgramTemplate

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
		<td><a href="programtemplate/get-program-programtemplates-383.md">/public/v1/program/programs/{programId}/templates</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programtemplate/get-program-programtemplates-384.md">/public/v1/program/programs/{programId}/templates/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programtemplate/post-program-programtemplates-383.md">/public/v1/program/programs/{programId}/templates</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programtemplate/put-program-programtemplates-384.md">/public/v1/program/programs/{programId}/templates/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### ProgramTermsAndConditions

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
		<td><a href="programtermsandconditions/get-program-programtermsandconditions-385.md">/public/v1/program/programs/{programId}/terms</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programtermsandconditions/get-program-programtermsandconditions-386.md">/public/v1/program/programs/{programId}/terms/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programtermsandconditions/post-program-programtermsandconditions-385.md">/public/v1/program/programs/{programId}/terms</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programtermsandconditions/post-program-programtermsandconditions-387.md">/public/v1/program/programs/{programId}/terms/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programtermsandconditions/post-program-programtermsandconditions-388.md">/public/v1/program/programs/{programId}/terms/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programtermsandconditions/put-program-programtermsandconditions-386.md">/public/v1/program/programs/{programId}/terms/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>



### ProgramTermsAndConditionsVariant

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
		<td><a href="programtermsandconditionsvariant/get-program-programtermsandconditionsvariant-389.md">/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programtermsandconditionsvariant/get-program-programtermsandconditionsvariant-390.md">/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants/{id}</a></td>
		<td>GET</td>
		<td></td>
		<td>ops,client,vendor</td>
	</tr>
	<tr>
		<td><a href="programtermsandconditionsvariant/post-program-programtermsandconditionsvariant-389.md">/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programtermsandconditionsvariant/post-program-programtermsandconditionsvariant-391.md">/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants/{id}/publish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programtermsandconditionsvariant/post-program-programtermsandconditionsvariant-392.md">/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants/{id}/unpublish</a></td>
		<td>POST</td>
		<td></td>
		<td>vendor</td>
	</tr>
	<tr>
		<td><a href="programtermsandconditionsvariant/put-program-programtermsandconditionsvariant-390.md">/public/v1/program/programs/{programId}/terms/{programTermsAndConditionsId}/variants/{id}</a></td>
		<td>PUT</td>
		<td></td>
		<td>vendor</td>
	</tr>
<tbody>
</table>

