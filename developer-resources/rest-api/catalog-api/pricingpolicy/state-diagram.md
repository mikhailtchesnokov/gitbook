
## Diagram



```mermaid
stateDiagram-v2
    state "Active | Inactive" as Active_Inactive
    [*] --> Active : Create : Operations
    Active --> Inactive : Disable : Operations
    Inactive --> Active : Activate : Operations
    Active_Inactive --> Deleted : Delete : Operations
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
      <td>Policy is active and its yield cap is observed during Order pricing. A Pricing Policy is created directly in this state.</td>
      <td>Yes</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Inactive</td>
      <td>Policy has been disabled. Yield cap is no longer observed on newly-priced Order lines.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Deleted</td>
      <td>Policy has been soft-deleted. Remains fully retrievable via the API including in standard list responses.</td>
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
      <th>To State</th>
      <th>Endpoint / Verb</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>T1</td>
      <td>Active</td>
      <td>`POST` (base collection endpoint)</td>
    </tr>
    <tr>
      <td>T2</td>
      <td>Active</td>
      <td>`activate` (`POST .../activate`)</td>
    </tr>
    <tr>
      <td>T3</td>
      <td>Inactive</td>
      <td>`disable` (`POST .../disable`)</td>
    </tr>
    <tr>
      <td>T4a</td>
      <td>Deleted</td>
      <td>`DELETE`</td>
    </tr>
    <tr>
      <td>T4b</td>
      <td>Deleted</td>
      <td>`DELETE`</td>
    </tr>
  </tbody>
</table>

