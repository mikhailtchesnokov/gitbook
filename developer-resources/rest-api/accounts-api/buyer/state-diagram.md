
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

