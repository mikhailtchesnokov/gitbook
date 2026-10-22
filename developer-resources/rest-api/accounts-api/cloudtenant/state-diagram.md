
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
      <td>Active</td>
      <td>The tenant is enabled for cloud-spend management. Mirrors the enabled state of the mapped consumption-management tenant.</td>
      <td>Yes</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Disabled</td>
      <td>The tenant is disabled for cloud-spend management. Mirrors the disabled state of the mapped consumption-management tenant.</td>
      <td>Yes</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Deleted</td>
      <td>The tenant has been removed. It is no longer retrievable via the API (see BR-009 and Section 8).</td>
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
      <td>Disabled</td>
      <td>`POST` (base collection endpoint)</td>
    </tr>
    <tr>
      <td>T3</td>
      <td>Disabled</td>
      <td>`PUT` (status field write, no dedicated endpoint)</td>
    </tr>
    <tr>
      <td>T4</td>
      <td>Active</td>
      <td>`PUT` (status field write, no dedicated endpoint)</td>
    </tr>
    <tr>
      <td>T5</td>
      <td>Deleted</td>
      <td>`DELETE`</td>
    </tr>
    <tr>
      <td>T6</td>
      <td>Deleted</td>
      <td>`DELETE`</td>
    </tr>
  </tbody>
</table>

