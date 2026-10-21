
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
      <td>Active</td>
      <td>Create</td>
      <td>`POST` (base collection endpoint)</td>
      <td>Operations</td>
      <td>Valid `externalIds`; any supplied [[Account]] must share the tenant&#39;s `pyraTenantId`; an `SLM`/`Virtual` tenant may not map into a multi-account Pyra Tenant</td>
      <td>Initial status is set from the create payload; a tenant registered as enabled starts Active. See BR-002, BR-003, BR-004.</td>
    </tr>
    <tr>
      <td>T2</td>
      <td>—</td>
      <td>Disabled</td>
      <td>Create</td>
      <td>`POST` (base collection endpoint)</td>
      <td>Operations</td>
      <td>Same as T1</td>
      <td>Initial status Disabled when the tenant is registered in a disabled state.</td>
    </tr>
    <tr>
      <td>T3</td>
      <td>Active</td>
      <td>Disabled</td>
      <td>Disable</td>
      <td>`PUT` (status field write, no dedicated endpoint)</td>
      <td>Operations</td>
      <td>None</td>
      <td>Reflects a disable in consumption management, or a direct status write.</td>
    </tr>
    <tr>
      <td>T4</td>
      <td>Disabled</td>
      <td>Active</td>
      <td>Enable</td>
      <td>`PUT` (status field write, no dedicated endpoint)</td>
      <td>Operations</td>
      <td>None</td>
      <td>Reflects an enable in consumption management, or a direct status write.</td>
    </tr>
    <tr>
      <td>T5</td>
      <td>Active</td>
      <td>Deleted</td>
      <td>Delete</td>
      <td>`DELETE`</td>
      <td>Operations</td>
      <td>None</td>
      <td>Soft-delete — sets status to Deleted; the record is no longer retrievable via the API. Cannot be reached by a `PUT` status write (see BR-008).</td>
    </tr>
    <tr>
      <td>T6</td>
      <td>Disabled</td>
      <td>Deleted</td>
      <td>Delete</td>
      <td>`DELETE`</td>
      <td>Operations</td>
      <td>None</td>
      <td>Soft-delete — as T5.</td>
    </tr>
  </tbody>
</table>

