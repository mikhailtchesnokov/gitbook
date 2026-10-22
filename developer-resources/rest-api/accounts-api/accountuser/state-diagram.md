
The Marketplace Platform provides three distinct user interfaces, namely the Client Portal, Vendor Portal, and Operations Portal. This topic describes how the account object transitions through different lifecycle states within the platform.

{% hint style="info" %}
The diagrams show different transitions depending on whether the account is a Client/Partner or a Vendor, but the underlying statuses are the same.
{% endhint %}




## Diagram

```mermaid
stateDiagram-v2
```






## States

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






## Transitions

<table>
  <thead>
    <tr>
      <th>From State</th>
      <th>To State</th>
      <th>Action</th>
      <th>Endpoint / Verb</th>
      <th>Actor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>—</td>
      <td>Invited</td>
      <td>Invite User to Account</td>
      <td>`POST /v1/accounts/accounts/{accountId}/users`</td>
      <td>Vendor, Operations, Client (own Account)</td>
    </tr>
    <tr>
      <td>—</td>
      <td>Active</td>
      <td>Add existing User to Account</td>
      <td>`POST /v1/accounts/accounts/{accountId}/users`</td>
      <td>Operations</td>
    </tr>
    <tr>
      <td>Invited</td>
      <td>Active</td>
      <td>Accept invitation</td>
      <td>`POST .../{userId}/accept-invite`</td>
      <td>The invited User (self)</td>
    </tr>
    <tr>
      <td>Invited</td>
      <td>Invited</td>
      <td>Resend invitation</td>
      <td>`POST .../{userId}/resend-invite`</td>
      <td>Vendor, Operations, Client (own Account)</td>
    </tr>
    <tr>
      <td>Invited</td>
      <td>InvitationExpired</td>
      <td>Expire invitation</td>
      <td>No dedicated endpoint (system-initiated status write)</td>
      <td>System (Preamble Invariant 2)</td>
    </tr>
    <tr>
      <td>Invited</td>
      <td>Deleted</td>
      <td>Delete membership</td>
      <td>`DELETE .../{userId}`</td>
      <td>Vendor, Operations, Client (own Account)</td>
    </tr>
    <tr>
      <td>InvitationExpired</td>
      <td>Invited</td>
      <td>Send new invitation</td>
      <td>`POST .../{userId}/send-new-invite`</td>
      <td>Vendor, Operations, Client (own Account)</td>
    </tr>
    <tr>
      <td>InvitationExpired</td>
      <td>Deleted</td>
      <td>Delete membership</td>
      <td>`DELETE .../{userId}`</td>
      <td>Vendor, Operations, Client (own Account)</td>
    </tr>
    <tr>
      <td>Active</td>
      <td>Deleted</td>
      <td>Delete membership</td>
      <td>`DELETE .../{userId}`</td>
      <td>Vendor, Operations, Client (own Account)</td>
    </tr>
  </tbody>
</table>

