
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
      <th>ID</th>
      <th>To State</th>
      <th>Endpoint / Verb</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>T1</td>
      <td>Active</td>
      <td>(no endpoint — created during [[Buyer]] synchronisation)</td>
    </tr>
    <tr>
      <td>T2</td>
      <td>Blocked</td>
      <td>`POST /v1/accounts/erp-links/{id}/block`</td>
    </tr>
    <tr>
      <td>T3</td>
      <td>Active</td>
      <td>`POST /v1/accounts/erp-links/{id}/unblock`</td>
    </tr>
    <tr>
      <td>T4a</td>
      <td>Disabled</td>
      <td>(no endpoint — system, at [[Buyer]] synchronisation)</td>
    </tr>
    <tr>
      <td>T4b</td>
      <td>Disabled</td>
      <td>(no endpoint — system, at [[Buyer]] synchronisation)</td>
    </tr>
    <tr>
      <td>T5a</td>
      <td>Active</td>
      <td>(no endpoint — system, at [[Buyer]] synchronisation)</td>
    </tr>
    <tr>
      <td>T5b</td>
      <td>Blocked</td>
      <td>(no endpoint — system, at [[Buyer]] synchronisation)</td>
    </tr>
  </tbody>
</table>

