
## Diagram



```mermaid
stateDiagram-v2
    Enabled --> Disabled : disable : Vendor, Operations
    Disabled --> Enabled : enable : Vendor, Operations
    Enabled --> Deleted : DELETE /{id} : Vendor, Operations
    Disabled --> Deleted : DELETE /{id} : Vendor, Operations
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
      <td>Enabled</td>
      <td>Webhook is active. The platform will call the configured endpoint when matching events occur.</td>
      <td>Yes</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Disabled</td>
      <td>Webhook is inactive. The platform will not call the endpoint. Events are not queued.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Deleted</td>
      <td>Webhook has been soft-deleted. No longer visible via the API in any context.</td>
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
      <td>Enabled</td>
      <td>`POST` (base collection endpoint)</td>
    </tr>
    <tr>
      <td>T2</td>
      <td>Disabled</td>
      <td>`disable` (`POST .../{id}/disable`)</td>
    </tr>
    <tr>
      <td>T3</td>
      <td>Enabled</td>
      <td>`enable` (`POST .../{id}/enable`)</td>
    </tr>
    <tr>
      <td>T4</td>
      <td>Deleted</td>
      <td>`DELETE /{id}`</td>
    </tr>
    <tr>
      <td>T5</td>
      <td>Deleted</td>
      <td>`DELETE /{id}`</td>
    </tr>
  </tbody>
</table>

