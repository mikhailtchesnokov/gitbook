
## State diagram



```mermaid
stateDiagram-v2
    Active --> Terminated : Vendor terminates directly : Vendor
```






| State | Description | Initial State? | Terminal State? |
| --- | --- | --- | --- |

| Draft | The Asset exists only within the scope of a Processing Order as an OrderAsset. It is a temporary representation created by the Vendor during Order Processing. Accessible via `/orders/{id}/assets`. The Draft state is not visible on the live Asset — the live Asset is created directly in Active status when the Order completes. | — | — |

| Active | The Asset is live. The Vendor owns and maintains it. There is no renewal service — Active is the permanent state for a live Asset unless the Vendor terminates it. | — | — |

| Terminated | The Asset has been permanently ended by direct Vendor action via the terminate action. Terminal state — no outbound transitions. | — | — |


