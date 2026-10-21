
## State diagram



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






| State | Description | Initial State? | Terminal State? |
| --- | --- | --- | --- |

| Draft | The Order has been created and saved but not yet placed. The Client can edit ordering parameters. The Order has not yet been submitted for fulfilment. | Yes | — |

| Quoted | The Order has been marked as ready for Client placement. Functionally equivalent to Draft except that no parameter values can be edited. Signals to the Client that the Order is ready to be placed. Draft → Quoted is a one-way transition. | Yes | — |

| Processing | The Order has been placed by the Client and is being fulfilled by the Vendor. The Vendor can update ordering and fulfilment parameters and transition the Order to Querying, Completed, or Failed. | Yes | — |

| Querying | The Order has been paused by the Vendor pending Client action — either correction of invalid parameter values or completion of an external task. The Client can update ordering parameters. The Order must return to Processing before it can be Completed. It can be Failed directly, but only by Operations. | — | — |

| Completed | The Order has been successfully fulfilled. All Lines have been mapped to a Subscription or Asset. Terminal state — no outbound transitions. | — | Yes |

| Failed | The Order could not be fulfilled. A `statusNotes` object is present explaining the reason for failure. A new Order must be created to retry. Terminal state — no outbound transitions. | — | Yes |

| Deleted | The Order has been soft-deleted — it moves to Deleted status and remains retrievable via the API including in standard list responses. Only reachable from Draft or Quoted. Terminal state — no outbound transitions. Deviates from Platform Invariant 7 — see Section 8. | — | Yes |


