
## State diagram



```mermaid
stateDiagram-v2
    [*] --> Active : Create : Actor w/ Access Management
    Active --> Disabled : Disable
    Disabled --> Active : Enable
    Active --> Deleted : Delete
    Disabled --> Deleted : Delete
```






| State | Description | Initial State? | Terminal State? |
| --- | --- | --- | --- |

| Active | The token can authenticate to the platform and exercise its permission set. This is the state every token is created in. | Yes | No |

| Disabled | The token is administratively suspended. It is retained with all its configuration but can no longer authenticate. Reached via Disable; left via Enable. | No | No |

| Deleted | The token has been deleted — a soft-delete: its status is set to `Deleted` and the record is retained, but it can no longer authenticate. It remains retrievable by Operations (holding Platform Account Management) but is removed from Vendor and Client API visibility. Reached from `Active` or `Disabled`; no transition out. | No | Yes |


