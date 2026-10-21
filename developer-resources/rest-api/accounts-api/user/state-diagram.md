
## State diagram



```mermaid
stateDiagram-v2
    [*] --> New : Create identity
    New --> Invited : invited
    Invited --> Active : membership activated
    InvitationExpired --> Disabled
    Disabled --> Active : re-added
    Disabled --> Invited : re-added
    Invited --> Blocked : Block | (Delete, from Disabled only)
    InvitationExpired --> Blocked : Block | (Delete, from Disabled only)
    Active --> Blocked : Block | (Delete, from Disabled only)
    Disabled --> Blocked : Block | (Delete, from Disabled only)
    Blocked --> Active : Unblock: recalculated
    Blocked --> Invited : Unblock: recalculated
    Blocked --> InvitationExpired : Unblock: recalculated
    Blocked --> Disabled : Unblock: recalculated
```






| State | Description | Initial State? | Terminal State? |
| --- | --- | --- | --- |

| New | Transient initial state the instant a global identity is created, before any Account membership has been recorded against it. Not observed via the API in practice — creation immediately attaches the first membership and recalculates the status. | Yes | No |

| Invited | The User's highest-priority Account membership is a pending invitation. The person has been invited into at least one Account but has not yet accepted/activated anywhere with higher priority. | No | No |

| InvitationExpired | The User's highest-priority Account membership is an expired invitation, with no active or still-pending membership taking precedence. | No | No |

| Active | The User has at least one active Account membership. This is the normal operating state. | No | No |

| Blocked | The User has been administratively blocked. This overrides the membership-derived status and prevents the person from authenticating to the platform. Reached only via the Block action; left only via Unblock. | No | No |

| Disabled | The User has no active or pending Account memberships (all memberships removed, deleted, or never activated). The identity persists but is dormant. This is the only state from which the identity may be deleted. | No | No |

| Deleted | The identity has been deleted — a soft-delete: status is set to `Deleted` and the record is retained. A `Deleted` User remains retrievable by Operations (by ID) but is excluded from Vendor and Client reads. Reached only from `Disabled`; no transition out. | No | Yes |


