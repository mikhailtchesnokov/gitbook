
## State diagram



```mermaid
stateDiagram-v2
    %% Creation (status derived from Account + ERP identifiers):
    [*] --> Unassigned : Create, no Account
    [*] --> Enabled : Create, Account, no ERP IDs
    [*] --> Active : Create, Account + ERP IDs
    %% Action-driven transitions:
    Unassigned --> Active : Assign Account (→ Enabled if no ERP IDs)
    Active --> Unassigned : Unassign Account
    Disabled --> Unassigned : Unassign Account
    Mismatch --> Unassigned : Unassign Account
    Enabled --> Active : Activate
    Active --> Disabled : Disable
    Enabled --> Disabled : Disable
    Disabled --> Active : Enable (re-derived: Active / Enabled / Unassigned)
    Unassigned --> Deleted : Delete, soft
    Enabled --> Deleted : Delete, soft
    Active --> Deleted : Delete, soft
    Disabled --> Deleted : Delete, soft
    Mismatch --> Deleted : Delete, soft
    Conflict --> Deleted : Delete, soft
    Deleted --> [*]
    %% Error overlays (automatic, not action-driven — see 3.1 note and Section 7.2):
    Unassigned --> Conflict : errors
    Conflict --> Unassigned : errors cleared
    Active --> Mismatch : errors
    Mismatch --> Active : errors cleared
    Disabled --> Mismatch : errors
    Mismatch --> Disabled : errors cleared
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
      <td>Unassigned</td>
      <td>The Buyer is not linked to any [[Account]].</td>
      <td>Yes (when created without an Account)</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Enabled</td>
      <td>The Buyer is linked to an [[Account]] but has no ERP identifiers of its own yet — it is not ERP-activated and cannot be synchronised with the ERP.</td>
      <td>Yes (when created with an Account but no ERP IDs)</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Active</td>
      <td>The Buyer is linked to an [[Account]] and carries its ERP identifiers — fully reconciled and operational.</td>
      <td>Yes (when created with an Account and ERP IDs)</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Disabled</td>
      <td>The Buyer has been manually disabled from Active or Enabled.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Deleted</td>
      <td>The Buyer has been soft-deleted. Remains retrievable to Operations; excluded from Vendor/Client row-scoped queries.</td>
      <td>No</td>
      <td>Yes</td>
    </tr>
    <tr>
      <td>Conflict</td>
      <td>Overlay state: an Unassigned Buyer that also has reconciliation errors. Returns to Unassigned when the errors clear.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Mismatch</td>
      <td>Overlay state: an Active or Disabled Buyer that also has reconciliation errors. Returns to its pre-error status when the errors clear.</td>
      <td>No</td>
      <td>No</td>
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
      <td>T1a</td>
      <td>—</td>
      <td>Unassigned</td>
      <td>Create Buyer</td>
      <td>`POST /v1/accounts/buyers`</td>
      <td>Operations</td>
      <td>`name` and `address` valid; no Account supplied</td>
      <td>Initial status is derived — see BR-004.</td>
    </tr>
    <tr>
      <td>T1b</td>
      <td>—</td>
      <td>Enabled</td>
      <td>Create Buyer</td>
      <td>`POST /v1/accounts/buyers`</td>
      <td>Operations</td>
      <td>Account supplied, no ERP identifiers</td>
      <td>—</td>
    </tr>
    <tr>
      <td>T1c</td>
      <td>—</td>
      <td>Active</td>
      <td>Create Buyer</td>
      <td>`POST /v1/accounts/buyers`</td>
      <td>Operations</td>
      <td>Account and ERP identifiers supplied</td>
      <td>—</td>
    </tr>
    <tr>
      <td>T2a</td>
      <td>Active</td>
      <td>Disabled</td>
      <td>Disable Buyer</td>
      <td>`POST /v1/accounts/buyers/{id}/disable`</td>
      <td>Operations, Client (own Account)</td>
      <td>—</td>
      <td>—</td>
    </tr>
    <tr>
      <td>T2b</td>
      <td>Enabled</td>
      <td>Disabled</td>
      <td>Disable Buyer</td>
      <td>`POST /v1/accounts/buyers/{id}/disable`</td>
      <td>Operations, Client (own Account)</td>
      <td>—</td>
      <td>—</td>
    </tr>
    <tr>
      <td>T3</td>
      <td>Disabled</td>
      <td>Active</td>
      <td>Enable Buyer</td>
      <td>`POST /v1/accounts/buyers/{id}/enable`</td>
      <td>Operations, Client (own Account)</td>
      <td>—</td>
      <td>Target status is re-derived — Active, or Enabled if the Buyer has no ERP identifiers, or Unassigned if it has no Account (BR-004).</td>
    </tr>
    <tr>
      <td>T4</td>
      <td>Enabled</td>
      <td>Active</td>
      <td>Activate Buyer</td>
      <td>`POST /v1/accounts/buyers/{id}/activate`</td>
      <td>Operations</td>
      <td>ERP company-contact and customer identifiers supplied and validated; Buyer has no pre-existing ERP identifiers</td>
      <td>Sets the Buyer&#39;s ERP identifiers.</td>
    </tr>
    <tr>
      <td>T5</td>
      <td>Unassigned</td>
      <td>Active</td>
      <td>Assign Account</td>
      <td>`PUT /v1/accounts/buyers/{id}` (Account added)</td>
      <td>Operations</td>
      <td>Target is a Client [[Account]]; Buyer&#39;s `accountExternalId` (CDG) matches the Account&#39;s ERP identifier</td>
      <td>Resulting status re-derived — Enabled instead if the Buyer has no ERP identifiers (BR-004, BR-008).</td>
    </tr>
    <tr>
      <td>T6</td>
      <td>Active</td>
      <td>Unassigned</td>
      <td>Unassign Account</td>
      <td>`PUT /v1/accounts/buyers/{id}` (Account removed)</td>
      <td>Operations</td>
      <td>No attached Licensee, no split-billing [[Agreement]], no certificates — see BR-011</td>
      <td>Also permitted from Disabled and Mismatch.</td>
    </tr>
    <tr>
      <td>T7</td>
      <td>Active</td>
      <td>Deleted</td>
      <td>Delete Buyer</td>
      <td>`DELETE /v1/accounts/buyers/{id}`</td>
      <td>Operations</td>
      <td>No non-deleted Licensee attached — see BR-013</td>
      <td>Soft-delete; permitted from any non-Deleted status.</td>
    </tr>
  </tbody>
</table>

