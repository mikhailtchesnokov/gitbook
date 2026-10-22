
## Diagram



```mermaid
stateDiagram-v2
    [*] --> Active : created during Buyer sync : Platform
    Active --> Blocked : Block : Operations
    Blocked --> Active : Unblock : Operations
    Active --> Disabled : Seller Disabled : Platform
    Blocked --> Disabled : Seller Disabled : Platform
    Disabled --> Active : Seller no longer Disabled : Platform — restores prior status)
    Disabled --> Blocked : Seller no longer Disabled : Platform — restores prior status)
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
      <td>Active</td>
      <td>The link is operational.</td>
      <td>Yes</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Blocked</td>
      <td>The link has been blocked — in practice because the customer is blocked in the ERP. Set via the Block action; reversible via Unblock.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Disabled</td>
      <td>System-controlled: set automatically when the linked [[Seller]] is Disabled, and reversed when the Seller is no longer Disabled. Cannot be changed by user actions while in this state.</td>
      <td>No</td>
      <td>No</td>
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
      <td>Active</td>
      <td>Create (ERP-sync reconciliation)</td>
      <td>(no endpoint — created during [[Buyer]] synchronisation)</td>
      <td>Platform</td>
    </tr>
    <tr>
      <td>Active</td>
      <td>Blocked</td>
      <td>Block link</td>
      <td>`POST /v1/accounts/erp-links/{id}/block`</td>
      <td>Operations</td>
    </tr>
    <tr>
      <td>Blocked</td>
      <td>Active</td>
      <td>Unblock link</td>
      <td>`POST /v1/accounts/erp-links/{id}/unblock`</td>
      <td>Operations</td>
    </tr>
    <tr>
      <td>Active</td>
      <td>Disabled</td>
      <td>Disable link (Seller Disabled)</td>
      <td>(no endpoint — system, at [[Buyer]] synchronisation)</td>
      <td>Platform</td>
    </tr>
    <tr>
      <td>Blocked</td>
      <td>Disabled</td>
      <td>Disable link (Seller Disabled)</td>
      <td>(no endpoint — system, at [[Buyer]] synchronisation)</td>
      <td>Platform</td>
    </tr>
    <tr>
      <td>Disabled</td>
      <td>Active</td>
      <td>Enable link (Seller no longer Disabled)</td>
      <td>(no endpoint — system, at [[Buyer]] synchronisation)</td>
      <td>Platform</td>
    </tr>
    <tr>
      <td>Disabled</td>
      <td>Blocked</td>
      <td>Enable link (Seller no longer Disabled)</td>
      <td>(no endpoint — system, at [[Buyer]] synchronisation)</td>
      <td>Platform</td>
    </tr>
  </tbody>
</table>

