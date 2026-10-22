
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
      <th>ID</th>
      <th>To State</th>
      <th>Endpoint / Verb</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>T1</td>
      <td>Draft</td>
      <td>`POST` (base collection endpoint)</td>
    </tr>
    <tr>
      <td>T2</td>
      <td>Quoted</td>
      <td>`POST` (base collection endpoint)</td>
    </tr>
    <tr>
      <td>T3</td>
      <td>Processing</td>
      <td>`POST` (base collection endpoint)</td>
    </tr>
    <tr>
      <td>T4</td>
      <td>Draft</td>
      <td>`PUT` (`/{id}`)</td>
    </tr>
    <tr>
      <td>T5</td>
      <td>Quoted</td>
      <td>`/quote` (`POST`, Client) or `PUT` `/{id}` (Operations)</td>
    </tr>
    <tr>
      <td>T6</td>
      <td>Processing</td>
      <td>`/process` (`POST`)</td>
    </tr>
    <tr>
      <td>T7</td>
      <td>Deleted</td>
      <td>`DELETE` (`/{id}`)</td>
    </tr>
    <tr>
      <td>T8</td>
      <td>Processing</td>
      <td>`/process` (`POST`)</td>
    </tr>
    <tr>
      <td>T9</td>
      <td>Deleted</td>
      <td>`DELETE` (`/{id}`)</td>
    </tr>
    <tr>
      <td>T10</td>
      <td>Completed</td>
      <td>`/complete` (`POST`)</td>
    </tr>
    <tr>
      <td>T11</td>
      <td>Failed</td>
      <td>`/fail` (`POST`)</td>
    </tr>
    <tr>
      <td>T12</td>
      <td>Querying</td>
      <td>`/query` (`POST`)</td>
    </tr>
    <tr>
      <td>T13</td>
      <td>Processing</td>
      <td>`/process` (`POST`)</td>
    </tr>
    <tr>
      <td>T14</td>
      <td>Failed</td>
      <td>`/fail` (`POST`)</td>
    </tr>
  </tbody>
</table>

