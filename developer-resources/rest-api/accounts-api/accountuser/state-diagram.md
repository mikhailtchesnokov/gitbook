
## State diagram



```mermaid
stateDiagram-v2
```






| State | Description | Initial State? | Terminal State? |
| --- | --- | --- | --- |

| Invited | The membership exists and an invitation has been issued to the User, but the User has not yet accepted. The invitation carries a time-limited code (see BR-007). The User does not yet have active access through this membership. | Yes (via invite) | No |

| Active | The invitation has been accepted, or the membership was created directly as Active by Operations. The User has working access to the Account, subject to their Group permissions. | Yes (Operations direct-add) | No |

| InvitationExpired | The invitation lapsed without being accepted within its validity window (BR-007). The User cannot accept from the lapsed invitation; a new invitation must be issued to return the membership to Invited. | No | No |

| Deleted | The membership has been removed. The User loses access to the Account through this membership. | No | Yes |


