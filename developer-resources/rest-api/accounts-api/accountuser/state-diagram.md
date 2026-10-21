
## State diagram



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
      <th>ID</th>
      <th>From State</th>
      <th>To State</th>
      <th>Action</th>
      <th>Endpoint / Verb</th>
      <th>Actor</th>
      <th>Precondition</th>
      <th>Notes</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>T1</td>
      <td>—</td>
      <td>Invited</td>
      <td>Invite User to Account</td>
      <td>`POST /v1/accounts/accounts/{accountId}/users`</td>
      <td>Vendor, Operations, Client (own Account)</td>
      <td>At least one Group supplied; no `invitation.status` of `Active` on the request</td>
      <td>An invitation is issued. If the User identity does not yet exist it is created (see Accounts: User).</td>
    </tr>
    <tr>
      <td>T2</td>
      <td>—</td>
      <td>Active</td>
      <td>Add existing User to Account</td>
      <td>`POST /v1/accounts/accounts/{accountId}/users`</td>
      <td>Operations</td>
      <td>Request carries `invitation.status` = `Active`; the User identity already exists</td>
      <td>Operations-only (BR-004). No invitation is sent — the membership is Active immediately.</td>
    </tr>
    <tr>
      <td>T3</td>
      <td>Invited</td>
      <td>Active</td>
      <td>Accept invitation</td>
      <td>`POST .../{userId}/accept-invite`</td>
      <td>The invited User (self)</td>
      <td>Invitation not expired</td>
      <td>Performed by the invited User, not an administrator (BR-005). Firing accept-invite on an already-Active membership is a no-op.</td>
    </tr>
    <tr>
      <td>T4</td>
      <td>Invited</td>
      <td>Invited</td>
      <td>Resend invitation</td>
      <td>`POST .../{userId}/resend-invite`</td>
      <td>Vendor, Operations, Client (own Account)</td>
      <td>Membership is Invited</td>
      <td>Re-entry. Renews the invitation and extends its expiry (BR-007).</td>
    </tr>
    <tr>
      <td>T5</td>
      <td>Invited</td>
      <td>InvitationExpired</td>
      <td>Expire invitation</td>
      <td>No dedicated endpoint (system-initiated status write)</td>
      <td>System (Preamble Invariant 2)</td>
      <td>Invitation past its expiry instant</td>
      <td>Executed by a platform background process, not an Actor-invoked endpoint.</td>
    </tr>
    <tr>
      <td>T6</td>
      <td>Invited</td>
      <td>Deleted</td>
      <td>Delete membership</td>
      <td>`DELETE .../{userId}`</td>
      <td>Vendor, Operations, Client (own Account)</td>
      <td>Actor is not deleting own membership (BR-006)</td>
      <td>Permanently removed — no longer retrievable via the API.</td>
    </tr>
    <tr>
      <td>T7</td>
      <td>InvitationExpired</td>
      <td>Invited</td>
      <td>Send new invitation</td>
      <td>`POST .../{userId}/send-new-invite`</td>
      <td>Vendor, Operations, Client (own Account)</td>
      <td>Membership is InvitationExpired</td>
      <td>Regenerates the invitation, returning it to Invited with a fresh expiry (BR-007).</td>
    </tr>
    <tr>
      <td>T8</td>
      <td>InvitationExpired</td>
      <td>Deleted</td>
      <td>Delete membership</td>
      <td>`DELETE .../{userId}`</td>
      <td>Vendor, Operations, Client (own Account)</td>
      <td>Actor is not deleting own membership (BR-006)</td>
      <td>Permanently removed — no longer retrievable via the API.</td>
    </tr>
    <tr>
      <td>T9</td>
      <td>Active</td>
      <td>Deleted</td>
      <td>Delete membership</td>
      <td>`DELETE .../{userId}`</td>
      <td>Vendor, Operations, Client (own Account)</td>
      <td>Actor is not deleting own membership (BR-006)</td>
      <td>Permanently removed — no longer retrievable via the API. Revokes the User&#39;s access to the Account and propagates the removal to integrated downstream identity/ERP systems (see Section 7.2).</td>
    </tr>
  </tbody>
</table>

