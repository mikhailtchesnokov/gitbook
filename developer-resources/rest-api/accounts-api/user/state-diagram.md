
## Diagram



```mermaid
stateDiagram-v2
    [*] --> New : Create identity
    New --> Invited : invited
    Invited --> Active : membership activated
    InvitationExpired --> Disabled
    Disabled --> Active : re-added
    Disabled --> Invited : re-added
    Invited --> Blocked : Block | (Delete, from Disabled only)
    InvitationExpired --> Blocked : Block | (Delete, from Disabled only)
    Active --> Blocked : Block | (Delete, from Disabled only)
    Disabled --> Blocked : Block | (Delete, from Disabled only)
    Blocked --> Active : Unblock: recalculated
    Blocked --> Invited : Unblock: recalculated
    Blocked --> InvitationExpired : Unblock: recalculated
    Blocked --> Disabled : Unblock: recalculated
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
      <td>New</td>
      <td>Transient initial state the instant a global identity is created, before any Account membership has been recorded against it. Not observed via the API in practice — creation immediately attaches the first membership and recalculates the status.</td>
      <td>Yes</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Invited</td>
      <td>The User&#39;s highest-priority Account membership is a pending invitation. The person has been invited into at least one Account but has not yet accepted/activated anywhere with higher priority.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>InvitationExpired</td>
      <td>The User&#39;s highest-priority Account membership is an expired invitation, with no active or still-pending membership taking precedence.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Active</td>
      <td>The User has at least one active Account membership. This is the normal operating state.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Blocked</td>
      <td>The User has been administratively blocked. This overrides the membership-derived status and prevents the person from authenticating to the platform. Reached only via the Block action; left only via Unblock.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Disabled</td>
      <td>The User has no active or pending Account memberships (all memberships removed, deleted, or never activated). The identity persists but is dormant. This is the only state from which the identity may be deleted.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Deleted</td>
      <td>The identity has been deleted — a soft-delete: status is set to `Deleted` and the record is retained. A `Deleted` User remains retrievable by Operations (by ID) but is excluded from Vendor and Client reads. Reached only from `Disabled`; no transition out.</td>
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
      <td>New</td>
      <td>Create identity</td>
      <td>`POST /v1/accounts/{accountId}/users` (Account User invite — no dedicated global-User create endpoint)</td>
      <td>Actor with administration permission in the Account</td>
    </tr>
    <tr>
      <td>New</td>
      <td>Invited</td>
      <td>Invitation issued</td>
      <td>No dedicated User endpoint — recalculated from Account membership creation</td>
      <td>Actor with administration permission in the Account</td>
    </tr>
    <tr>
      <td>Invited</td>
      <td>Active</td>
      <td>Membership activated</td>
      <td>No dedicated User endpoint — recalculated from Account membership change</td>
      <td>System (membership context)</td>
    </tr>
    <tr>
      <td>Invited</td>
      <td>InvitationExpired</td>
      <td>Invitation expires</td>
      <td>No dedicated User endpoint — recalculated from Account membership change</td>
      <td>System (membership context)</td>
    </tr>
    <tr>
      <td>InvitationExpired</td>
      <td>Invited</td>
      <td>Re-invited</td>
      <td>No dedicated User endpoint — recalculated from Account membership change</td>
      <td>Actor with administration permission in the Account</td>
    </tr>
    <tr>
      <td>Active</td>
      <td>Invited</td>
      <td>Membership recalculated to invitation</td>
      <td>No dedicated User endpoint — recalculated from Account membership change</td>
      <td>System (membership context)</td>
    </tr>
    <tr>
      <td>Active</td>
      <td>InvitationExpired</td>
      <td>Membership recalculated to expired invitation</td>
      <td>No dedicated User endpoint — recalculated from Account membership change</td>
      <td>System (membership context)</td>
    </tr>
    <tr>
      <td>Active</td>
      <td>Disabled</td>
      <td>Last active/pending membership removed</td>
      <td>No dedicated User endpoint — recalculated from Account membership change</td>
      <td>Actor with administration permission in the Account</td>
    </tr>
    <tr>
      <td>Disabled</td>
      <td>Active</td>
      <td>Re-added to an Account</td>
      <td>No dedicated User endpoint — recalculated from Account membership change</td>
      <td>Actor with administration permission in the Account</td>
    </tr>
    <tr>
      <td>Disabled</td>
      <td>Invited</td>
      <td>Re-invited to an Account</td>
      <td>No dedicated User endpoint — recalculated from Account membership change</td>
      <td>Actor with administration permission in the Account</td>
    </tr>
    <tr>
      <td>Invited</td>
      <td>Blocked</td>
      <td>Block</td>
      <td>`POST /v1/accounts/users/{uniqueFilter}/block`</td>
      <td>Actor with Platform Account Management permission</td>
    </tr>
    <tr>
      <td>InvitationExpired</td>
      <td>Blocked</td>
      <td>Block</td>
      <td>`POST /v1/accounts/users/{uniqueFilter}/block`</td>
      <td>Actor with Platform Account Management permission</td>
    </tr>
    <tr>
      <td>Active</td>
      <td>Blocked</td>
      <td>Block</td>
      <td>`POST /v1/accounts/users/{uniqueFilter}/block`</td>
      <td>Actor with Platform Account Management permission</td>
    </tr>
    <tr>
      <td>Disabled</td>
      <td>Blocked</td>
      <td>Block</td>
      <td>`POST /v1/accounts/users/{uniqueFilter}/block`</td>
      <td>Actor with Platform Account Management permission</td>
    </tr>
    <tr>
      <td>Blocked</td>
      <td>Active</td>
      <td>Unblock</td>
      <td>`POST /v1/accounts/users/{uniqueFilter}/unblock`</td>
      <td>Actor with Platform Account Management permission</td>
    </tr>
    <tr>
      <td>Blocked</td>
      <td>Invited</td>
      <td>Unblock</td>
      <td>`POST /v1/accounts/users/{uniqueFilter}/unblock`</td>
      <td>Actor with Platform Account Management permission</td>
    </tr>
    <tr>
      <td>Blocked</td>
      <td>InvitationExpired</td>
      <td>Unblock</td>
      <td>`POST /v1/accounts/users/{uniqueFilter}/unblock`</td>
      <td>Actor with Platform Account Management permission</td>
    </tr>
    <tr>
      <td>Blocked</td>
      <td>Disabled</td>
      <td>Unblock</td>
      <td>`POST /v1/accounts/users/{uniqueFilter}/unblock`</td>
      <td>Actor with Platform Account Management permission</td>
    </tr>
    <tr>
      <td>Disabled</td>
      <td>Deleted</td>
      <td>Delete identity</td>
      <td>`DELETE /v1/accounts/users/{uniqueFilter}` (returns 204)</td>
      <td>Actor with Platform Account Management permission</td>
    </tr>
  </tbody>
</table>

