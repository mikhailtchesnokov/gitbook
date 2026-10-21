
## State diagram



```mermaid
stateDiagram-v2
```






<table>
  <thead>
    <tr>

      <th>State</th>

      <th>Description</th>

      <th>Initial State?</th>

      <th>Terminal State?</th>

    </tr>
  </thead>
  <tbody>

    <tr>

      <td>Invited</td>

      <td>The membership exists and an invitation has been issued to the User, but the User has not yet accepted. The invitation carries a time-limited code (see BR-007). The User does not yet have active access through this membership.</td>

      <td>Yes (via invite)</td>

      <td>No</td>

    </tr>

    <tr>

      <td>Active</td>

      <td>The invitation has been accepted, or the membership was created directly as Active by Operations. The User has working access to the Account, subject to their Group permissions.</td>

      <td>Yes (Operations direct-add)</td>

      <td>No</td>

    </tr>

    <tr>

      <td>InvitationExpired</td>

      <td>The invitation lapsed without being accepted within its validity window (BR-007). The User cannot accept from the lapsed invitation; a new invitation must be issued to return the membership to Invited.</td>

      <td>No</td>

      <td>No</td>

    </tr>

    <tr>

      <td>Deleted</td>

      <td>The membership has been removed. The User loses access to the Account through this membership.</td>

      <td>No</td>

      <td>Yes</td>

    </tr>

  </tbody>
</table>

