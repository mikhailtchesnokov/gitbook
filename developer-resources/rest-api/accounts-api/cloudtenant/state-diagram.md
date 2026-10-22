
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
      <td>Create</td>
      <td>`POST` (base collection endpoint)</td>
      <td>Operations</td>
    </tr>
    <tr>
      <td>—</td>
      <td>Disabled</td>
      <td>Create</td>
      <td>`POST` (base collection endpoint)</td>
      <td>Operations</td>
    </tr>
    <tr>
      <td>Active</td>
      <td>Disabled</td>
      <td>Disable</td>
      <td>`PUT` (status field write, no dedicated endpoint)</td>
      <td>Operations</td>
    </tr>
    <tr>
      <td>Disabled</td>
      <td>Active</td>
      <td>Enable</td>
      <td>`PUT` (status field write, no dedicated endpoint)</td>
      <td>Operations</td>
    </tr>
    <tr>
      <td>Active</td>
      <td>Deleted</td>
      <td>Delete</td>
      <td>`DELETE`</td>
      <td>Operations</td>
    </tr>
    <tr>
      <td>Disabled</td>
      <td>Deleted</td>
      <td>Delete</td>
      <td>`DELETE`</td>
      <td>Operations</td>
    </tr>
  </tbody>
</table>

