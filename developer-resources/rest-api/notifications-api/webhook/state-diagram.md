
## State diagram



```mermaid
stateDiagram-v2
    Enabled --> Disabled : disable : Vendor, Operations
    Disabled --> Enabled : enable : Vendor, Operations
    Enabled --> Deleted : DELETE /{id} : Vendor, Operations
    Disabled --> Deleted : DELETE /{id} : Vendor, Operations
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

