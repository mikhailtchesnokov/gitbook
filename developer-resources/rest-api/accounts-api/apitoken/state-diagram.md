
## State diagram



```mermaid
stateDiagram-v2
    [*] --> Active : Create : Actor w/ Access Management
    Active --> Disabled : Disable
    Disabled --> Active : Enable
    Active --> Deleted : Delete
    Disabled --> Deleted : Delete
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
      <td>The token can authenticate to the platform and exercise its permission set. This is the state every token is created in.</td>
      <td>Yes</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Disabled</td>
      <td>The token is administratively suspended. It is retained with all its configuration but can no longer authenticate. Reached via Disable; left via Enable.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Deleted</td>
      <td>The token has been deleted — a soft-delete: its status is set to `Deleted` and the record is retained, but it can no longer authenticate. It remains retrievable by Operations (holding Platform Account Management) but is removed from Vendor and Client API visibility. Reached from `Active` or `Disabled`; no transition out.</td>
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
      <td>Actor with Access Management permission in the target Account</td>
      <td>Account exists; token name valid</td>
      <td>Created directly in `Active`; the token secret is generated and returned in this response (BR-005).</td>
    </tr>
    <tr>
      <td>T2</td>
      <td>Active</td>
      <td>Disabled</td>
      <td>Disable</td>
      <td>`disable`</td>
      <td>Actor with the applicable administration permission (BR-004)</td>
      <td>Token is `Active`</td>
      <td>Suspends authentication without discarding configuration. Reversible via T3.</td>
    </tr>
    <tr>
      <td>T3</td>
      <td>Disabled</td>
      <td>Active</td>
      <td>Enable</td>
      <td>`enable`</td>
      <td>Actor with the applicable administration permission (BR-004)</td>
      <td>Token is `Disabled`</td>
      <td>Restores authentication.</td>
    </tr>
    <tr>
      <td>T4</td>
      <td>Active</td>
      <td>Deleted</td>
      <td>Delete</td>
      <td>`DELETE` (`/{id}`, returns 204)</td>
      <td>Actor with the applicable administration permission (BR-004)</td>
      <td>None</td>
      <td>Soft-delete: status set to `Deleted`, record retained and still Operations-retrievable; removed from Vendor/Client visibility (BR-009). Not reversible; secret not regenerable (BR-005).</td>
    </tr>
    <tr>
      <td>T5</td>
      <td>Disabled</td>
      <td>Deleted</td>
      <td>Delete</td>
      <td>`DELETE` (`/{id}`, returns 204)</td>
      <td>Actor with the applicable administration permission (BR-004)</td>
      <td>None</td>
      <td>As T4, from `Disabled`.</td>
    </tr>
  </tbody>
</table>

