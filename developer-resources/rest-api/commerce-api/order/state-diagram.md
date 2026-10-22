
The Marketplace Platform provides three distinct user interfaces, namely the Client Portal, Vendor Portal, and Operations Portal. This topic describes how the account object transitions through different lifecycle states within the platform.

{% hint style="info" %}
The diagrams show different transitions depending on whether the account is a Client/Partner or a Vendor, but the underlying statuses are the same.
{% endhint %}




## Diagram

```mermaid
stateDiagram-v2
    Draft --> Draft : Update Order : Client, Operations
    Draft --> Quoted : Quote Order : Client
    Draft --> Quoted : Operations updates a Draft Order : Operations
    Draft --> Processing : Place Order : Client
    Draft --> Deleted : Delete Order : Client, Vendor, Operations
    Quoted --> Processing : Place Order : Client
    Quoted --> Deleted : Delete Order : Client, Vendor, Operations
    Processing --> Completed : Complete Order : Vendor
    Processing --> Failed : Fail Order : Vendor, Operations
    Processing --> Querying : Move to Querying : Vendor
    Querying --> Processing : Return to Processing : Client, Vendor, Operations
    Querying --> Failed : Fail Order : Operations
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
      <td>Draft</td>
      <td>The Order has been created and saved but not yet placed. The Client can edit ordering parameters. The Order has not yet been submitted for fulfilment.</td>
      <td>Yes</td>
      <td>—</td>
    </tr>
    <tr>
      <td>Quoted</td>
      <td>The Order has been marked as ready for Client placement. Functionally equivalent to Draft except that no parameter values can be edited. Signals to the Client that the Order is ready to be placed. Draft → Quoted is a one-way transition.</td>
      <td>Yes</td>
      <td>—</td>
    </tr>
    <tr>
      <td>Processing</td>
      <td>The Order has been placed by the Client and is being fulfilled by the Vendor. The Vendor can update ordering and fulfilment parameters and transition the Order to Querying, Completed, or Failed.</td>
      <td>Yes</td>
      <td>—</td>
    </tr>
    <tr>
      <td>Querying</td>
      <td>The Order has been paused by the Vendor pending Client action — either correction of invalid parameter values or completion of an external task. The Client can update ordering parameters. The Order must return to Processing before it can be Completed. It can be Failed directly, but only by Operations.</td>
      <td>—</td>
      <td>—</td>
    </tr>
    <tr>
      <td>Completed</td>
      <td>The Order has been successfully fulfilled. All Lines have been mapped to a Subscription or Asset. Terminal state — no outbound transitions.</td>
      <td>—</td>
      <td>Yes</td>
    </tr>
    <tr>
      <td>Failed</td>
      <td>The Order could not be fulfilled. A `statusNotes` object is present explaining the reason for failure. A new Order must be created to retry. Terminal state — no outbound transitions.</td>
      <td>—</td>
      <td>Yes</td>
    </tr>
    <tr>
      <td>Deleted</td>
      <td>The Order has been soft-deleted — it moves to Deleted status and remains retrievable via the API including in standard list responses. Only reachable from Draft or Quoted. Terminal state — no outbound transitions. Deviates from Platform Invariant 7 — see Section 8.</td>
      <td>—</td>
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
      <td>Draft</td>
      <td>Create Order</td>
      <td>`POST` (base collection endpoint)</td>
      <td>Client</td>
    </tr>
    <tr>
      <td>—</td>
      <td>Quoted</td>
      <td>Create Order as Quoted</td>
      <td>`POST` (base collection endpoint)</td>
      <td>Client</td>
    </tr>
    <tr>
      <td>—</td>
      <td>Processing</td>
      <td>Create and place Order</td>
      <td>`POST` (base collection endpoint)</td>
      <td>Client</td>
    </tr>
    <tr>
      <td>Draft</td>
      <td>Draft</td>
      <td>Update Order</td>
      <td>`PUT` (`/{id}`)</td>
      <td>Client, Operations</td>
    </tr>
    <tr>
      <td>Draft</td>
      <td>Quoted</td>
      <td>Quote Order (two mechanisms)</td>
      <td>`/quote` (`POST`, Client) or `PUT` `/{id}` (Operations)</td>
      <td>Client, Operations</td>
    </tr>
    <tr>
      <td>Draft</td>
      <td>Processing</td>
      <td>Place Order</td>
      <td>`/process` (`POST`)</td>
      <td>Client</td>
    </tr>
    <tr>
      <td>Draft</td>
      <td>Deleted</td>
      <td>Delete Order</td>
      <td>`DELETE` (`/{id}`)</td>
      <td>Client, Vendor, Operations</td>
    </tr>
    <tr>
      <td>Quoted</td>
      <td>Processing</td>
      <td>Place Order</td>
      <td>`/process` (`POST`)</td>
      <td>Client</td>
    </tr>
    <tr>
      <td>Quoted</td>
      <td>Deleted</td>
      <td>Delete Order</td>
      <td>`DELETE` (`/{id}`)</td>
      <td>Client, Vendor, Operations</td>
    </tr>
    <tr>
      <td>Processing</td>
      <td>Completed</td>
      <td>Complete Order</td>
      <td>`/complete` (`POST`)</td>
      <td>Vendor</td>
    </tr>
    <tr>
      <td>Processing</td>
      <td>Failed</td>
      <td>Fail Order</td>
      <td>`/fail` (`POST`)</td>
      <td>Vendor, Operations</td>
    </tr>
    <tr>
      <td>Processing</td>
      <td>Querying</td>
      <td>Move to Querying</td>
      <td>`/query` (`POST`)</td>
      <td>Vendor</td>
    </tr>
    <tr>
      <td>Querying</td>
      <td>Processing</td>
      <td>Return to Processing</td>
      <td>`/process` (`POST`)</td>
      <td>Client, Vendor, Operations</td>
    </tr>
    <tr>
      <td>Querying</td>
      <td>Failed</td>
      <td>Fail Order</td>
      <td>`/fail` (`POST`)</td>
      <td>Operations</td>
    </tr>
  </tbody>
</table>

